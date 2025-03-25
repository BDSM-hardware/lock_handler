#include <iostream>

#ifdef is_netlist
#include "../Synth/lock_handler.netlist.cpp"
#define p_A__hard p_A__hard__inv
#define p_B__hard p_B__hard__inv
#define p_C__hard p_C__hard__inv
#define p_D__hard p_D__hard__inv
#else
#include "../Synth/lock_handler.behavior.cpp"
#endif

using namespace std;

/** @brief Verify the lock_handler component
 *
 * This software uses the post synthesis export from Yosys (CXXRTL).
 * It applies the checking rules.
 *
 * @param TODO at compile time get the netlist or the behavior design
 *
 * @return 0 or 1. In case of at least one error, one should check the debug in the standard output.
 *
 * @details
 * The component lock_handler is a pure combinatorial.
 * Then the rules can be performed independently and in the order one wants.
 * The impossible cases may be skipped.
 */
void dummyFunctions(void){}

template<class ... inputSignal >
constexpr void SetInputs(unsigned long theVal,inputSignal ... theInputs)
{
  ([&]
  {
	// Loop on all the input,
	//   even if the Val does not have any '1' any more, there are inputs to set to false
	if ( theVal % 2 == 1 )
	  theInputs.get().value<1>::set<bool>(true);
	else
	  theInputs.get().value<1>::set<bool>(false);
	
	[[maybe_unused]] const string inputType = typeid(theInputs.get()).name();
	
	//	  cout <<inputType << "   ";
	
	theVal /= 2;
  }(),...);
  
  if( theVal != 0 )
	cerr << "Internal error, there are inputs not connected" << endl;
};

template<class ... outputSignal>
constexpr void GetOutputs(unsigned long&theVal,outputSignal ... theOutputs)
{
  theVal = 0;
  unsigned long theBit = 1;

  ([&]
  {
	if (theOutputs.value<1>::get<bool>() )
	  theVal += theBit;
	theBit *= 2;

	[[maybe_unused]] const string inputType = typeid(theOutputs).name();

	// cout <<inputType << "   ";
  }(),...);
}


int main()
{
#ifdef is_netlist
  cxxrtl_design::p_lock__handler__netlist top;
#else
  cxxrtl_design::p_lock__handler__behavior top;
#endif
  int global_return = 0;

  top.step();


  /// The rule 1 checks the ring button (active low) generates an active high output.
  /// It should be independent to all the rest of signals.
  /// Despite other rules, this rule checks all possible states,
  ///   regardless they are reachable or not.
  /// A test, for all possible other inputs, checks the outputs are the same regardless
  ///   the ring is on or off.
  /// This might introduce restrictions by false positives
  ///   however, the ring is not included in all other tests.
  {
	cout << "Rule 1, checking if ring input is active, the ring output is on regardless all other inputs..." <<endl;
	/// Loop on the cases, see bellow
	unsigned long ind_in;
	unsigned long ind_out, ind_test, ind_others_run, ind_others_last; // ind_debug;
	unsigned long OK_count_ring=0, NOK_count_ring=0;
	unsigned long OK_count_others=0, NOK_count_others=0;

	// 8 cases locked, disabled and ready
	// 4 channels with 4 hard and soft cases 
	const unsigned long N_cases = 2*2*2*4*4*4*4;

	for( ind_in = 0; ind_in < N_cases; ind_in++)
	  {
		SetInputs(ind_in,
				  ref(top.p_A__soft), ref(top.p_A__hard),
				  ref(top.p_B__soft), ref(top.p_B__hard),
				  ref(top.p_C__soft), ref(top.p_C__hard),
				  ref(top.p_D__soft), ref(top.p_D__hard),
				  ref(top.p_LP__in__locked),
				  ref(top.p_LP__in__disabled),
				  ref(top.p_LP__in__ready)
				  );
		for( ind_test = 0; ind_test < 2; ind_test++ )
		  {
			SetInputs(ind_test, ref(top.p_E__ring));
			top.step();

			GetOutputs( ind_out, top.p_N__E__ring );
			//			cout << ind_in << "  " << ind_debug << "  " << ind_test << "   " << ind_out << "        ";  

			// The input is active low, the output is active high
			if ( ( 1 - ind_out ) == ind_test )
			  OK_count_ring += 1;
			else
			  NOK_count_ring += 1;
			
			ind_others_last = ind_others_run;
			GetOutputs( ind_others_run,
						top.p_LP__out__pulldown__not__ready,
						top.p_N__disabled,
						top.p_N__all__ready,
						top.p_N__locked,
						top.p_N__A__ready, top.p_N__A__not__ready,
						top.p_N__B__ready, top.p_N__B__not__ready,
						top.p_N__C__ready, top.p_N__C__not__ready,
						top.p_N__D__ready, top.p_N__D__not__ready);

			if ( ind_test == 1 )
			  {
				if ( ind_others_last == ind_others_run )
				  OK_count_others += 1;
				else
				  NOK_count_others += 1;
			  }
		  }
	  }
	if ( NOK_count_ring > 0 ||
		 NOK_count_others > 0 ||
		 ( OK_count_ring + NOK_count_ring ) != 2*N_cases ||
		 ( OK_count_others + NOK_count_others ) != N_cases )
	  global_return = 1;

	cout << "Ring: " << OK_count_ring << " good, " << NOK_count_ring << " BAD / " << 2*N_cases << "." << endl;
	cout << "Others: " << OK_count_others << " good, " << NOK_count_others << " BAD / " << N_cases << "." << endl;
  }

  /// The rule 2 checks the disable light on the disable led and shutdown everything else
  /// Once more, the rule check all the possible states, without the ring button state,
  ///   regardless they are reachable or not.
  /// A test, for all possible other inputs, checks the outputs are the same.
  /// This might introduce restrictions by false positives
  ///   however, the ring is not included in all other tests.
  {
	cout << endl << "Rule 2, check the disable, light on the disable led and shut down everything else" << endl;

	/// Loop on the cases, see bellow
	unsigned long ind_in;
	unsigned long ind_disabled;
	unsigned long ind_others;
	unsigned long OK_count_disabled=0, NOK_count_disabled=0;
	unsigned long OK_count_others=0, NOK_count_others=0;

	// 4 cases locked and ready
	// 4 channels with 4 hard and soft cases 
	const unsigned long N_cases = 4*4*4*4*4;

	// We don't care the ring

	// the input of disabled is active low
	SetInputs(0, ref(top.p_LP__in__disabled));
	for( ind_in = 0; ind_in < (2*2*4*4*4*4); ind_in++)
	  {
		SetInputs(ind_in,
				  ref(top.p_A__soft),ref(top.p_A__hard),
				  ref(top.p_B__soft),ref(top.p_B__hard),
				  ref(top.p_C__soft),ref(top.p_C__hard),
				  ref(top.p_D__soft),ref(top.p_D__hard),
				  ref(top.p_LP__in__locked),
				  ref(top.p_LP__in__ready)
				  );
		top.step();
			
		GetOutputs( ind_disabled,top.p_N__disabled);

		GetOutputs( ind_others,
					top.p_LP__out__pulldown__not__ready,
					top.p_N__locked,
					top.p_N__A__ready,top.p_N__A__not__ready,
					top.p_N__B__ready,top.p_N__B__not__ready,
					top.p_N__C__ready,top.p_N__C__not__ready,
					top.p_N__D__ready,top.p_N__D__not__ready);

		if ( ind_others == 0 )
		  OK_count_others += 1;
		else
		  cout << ind_in << " " << ind_others<< "      "; 
		// The output is active high
		if ( ind_disabled == 1 )
		  OK_count_disabled += 1;
		else
		  NOK_count_disabled += 1;
	  }
	if ( NOK_count_disabled > 0 ||
		 NOK_count_others > 0  ||
		 ( OK_count_disabled + NOK_count_disabled ) != N_cases ||
		 ( OK_count_others + NOK_count_others ) != N_cases )
	  global_return = 1;

	cout << "Disabled: " << OK_count_disabled << " good, " << NOK_count_disabled << " BAD / ";
	cout << N_cases << "." << endl;
	cout << "Others: " << OK_count_others << " good, " << NOK_count_others << " BAD / ";
	cout << N_cases << "." << endl;
  }

  /// The rule 3 checks the lock light on the lock led and some other behavior
  /// This time, only the possible states are checked.
  /// The hard detection implies always the soft detection.
  /// When it is locked, only the soft is listened. They should all remain at high state
  /// The other signals are not listened or already tested in other cases.
  /// The LP__in__ready should remain low if the conditions above are met.
  {
	cout << endl << "Rule 3, check the locked, light on the locked led and handle the pull-down" << endl;

	/// Loop on the cases, see bellow
	unsigned long ind_in;
	unsigned long ind_out_should_1, ind_out_should_0;
	unsigned long OK_count_should_0=0, NOK_count_should_0=0;
	unsigned long OK_count_should_1=0, NOK_count_should_1=0;

	// 4 channels with 2 hard or 2 soft cases
	const unsigned long N_cases = 2*2*2*2;

	// We don't care the ring

	/// Set the already tested
	SetInputs(1, ref(top.p_LP__in__disabled));

	// the input of locked is active high and the ready is high when locked is high
	SetInputs(3,
			  ref(top.p_LP__in__locked),
			  ref(top.p_LP__in__ready));
	
	/// Step 1 Check it remains locked with all the softs on
	for( ind_in = 0; ind_in < N_cases ; ind_in++ )
	  {
	 	// We don't care the ring

		SetInputs(0x0f,
				  ref(top.p_A__soft),
				  ref(top.p_B__soft),
				  ref(top.p_C__soft),
				  ref(top.p_D__soft)
				  );
		SetInputs(ind_in,
				  ref(top.p_A__hard),
				  ref(top.p_B__hard),
				  ref(top.p_C__hard),
				  ref(top.p_D__hard)
				  );
		top.step();
		
		GetOutputs( ind_out_should_0,
					top.p_LP__out__pulldown__not__ready,
					top.p_N__A__ready,top.p_N__A__not__ready,
					top.p_N__B__ready,top.p_N__B__not__ready,
					top.p_N__C__ready,top.p_N__C__not__ready,
					top.p_N__D__ready,top.p_N__D__not__ready);
		GetOutputs( ind_out_should_1,
					top.p_N__locked);


		if ( ind_out_should_1 == 1 )
		  OK_count_should_1 += 1;
		else
		  NOK_count_should_1 += 1;
		if ( ind_out_should_0 == 0 )
		  OK_count_should_0 += 1;
		else
		  NOK_count_should_0 += 1;
	  }
	if ( NOK_count_should_0 > 0 || NOK_count_should_1 > 0 )
	  global_return = 1;


	cout << "Step 1 all the detections soft are on: ";
	cout << "Locked led on: " << OK_count_should_1 << " good, ";
	cout << NOK_count_should_1 << " BAD / " << N_cases << "." << endl;
	
	cout << "All led ready, not ready and the out pull-down off: " << OK_count_should_0 << " good, ";
	cout << NOK_count_should_0 << " BAD / " << N_cases << "." << endl;

	/// Step 2 Check there is a pull down request if one or more of the softs are off
	unsigned long ind_hard;
	OK_count_should_1=0, NOK_count_should_1=0;
	
	// We don't care the ring
	// Disable, locked and ready are alerady set to 1 above.

	// The loop excludes the all one (0x0f) because it dooes not belong to this case
	for( ind_in = 0; ind_in < ( N_cases - 1 ) ; ind_in++ )
		for ( ind_hard = 0 ; ind_hard < N_cases ; ind_hard++ )
		  {
			SetInputs(ind_in,
					  ref(top.p_A__soft),
					  ref(top.p_B__soft),
					  ref(top.p_C__soft),
					  ref(top.p_D__soft)
					  );
			SetInputs(ind_hard,
					  ref(top.p_A__hard),
					  ref(top.p_B__hard),
					  ref(top.p_C__hard),
					  ref(top.p_D__hard)
					  );
			top.step();
		
			GetOutputs( ind_out_should_1,
						top.p_LP__out__pulldown__not__ready);
			// We don't test [ABCD]__ready nor locked
			//   as the locked is going to off.
			// Indeed, the pull-down is going to reset the ready
			//   which is going to reset the locked.
			// Since the [ABCD] are led, we don't care about the transition.

			// For the same reason, we don't care what the transition of locked output
			//   as it is, in general, a relay 

		if ( ind_out_should_1 == 1 )
		  OK_count_should_1 += 1;
		else
		  NOK_count_should_1 += 1;
	  }
	if ( NOK_count_should_0 > 0 )
	  global_return = 1;

	cout << "Step 2 one or more of the detections soft are off: ";
	cout << "Pull down on: " << OK_count_should_1 << " good, " << NOK_count_should_1 << " BAD / ";
	cout << N_cases * ( N_cases - 1 ) << "." << endl;
	
  }
  {
	cout << endl << "Rule 4, check the all ready on, light on the locked led and handle the pull-down" << endl;

	/// Loop on the cases, see bellow
	unsigned long ind_in;
	unsigned long ind_out_should_1, ind_out_should_0;
	unsigned long OK_count_should_0=0, NOK_count_should_0=0;
	unsigned long OK_count_should_1=0, NOK_count_should_1=0;

	// 4 channels with 2 hard or 2 soft cases
	const unsigned long N_cases = 2*2*2*2;

	// We don't care the ring

	// Set the already tested signals
	SetInputs(1,
			  ref(top.p_LP__in__disabled));
	SetInputs(0,
			  ref(top.p_LP__in__locked));

	SetInputs(1,
			  ref(top.p_LP__in__ready));


  }

  if( global_return == 0 )
	cout << "All checks successfull" << endl;
  else
	cout << "At least one check is BAD" << endl;

  return global_return;
}
