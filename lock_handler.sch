v 20201216 2
C 40000 40000 0 0 0 title-bordered-A3.sym
C 42300 46400 1 0 0 io-1.sym
{
T 43300 46500 5 10 1 1 0 0 1
net=ready_chain:1
T 42500 47000 5 10 0 0 0 0 1
device=none
T 43200 46500 5 10 0 1 0 1 1
value=IO
}
C 42300 45600 1 0 0 io-1.sym
{
T 43400 45600 5 10 1 1 0 0 1
net=lock_chain:1
T 42500 46200 5 10 0 0 0 0 1
device=none
T 43200 45700 5 10 0 1 0 1 1
value=IO
}
N 41100 46100 43300 46100 4
N 43300 46100 43300 45300 4
N 43300 45300 41100 45300 4
C 43200 45000 1 0 0 gnd-1.sym
N 42300 45700 41100 45700 4
N 42300 46500 41100 46500 4
C 42300 44300 1 0 0 resistor-2.sym
{
T 42700 44650 5 10 0 0 0 0 1
device=RESISTOR
T 42300 44600 5 10 1 1 0 0 1
refdes=R204
T 42900 44600 5 10 1 1 0 0 1
value=10K
T 42300 44300 5 10 0 1 0 0 1
footprint=500mil
T 42300 44300 5 10 1 1 0 0 1
tolerance=10%
T 42300 44300 5 10 1 1 0 0 1
comment=/
}
C 44200 44300 1 0 0 resistor-2.sym
{
T 44600 44650 5 10 0 0 0 0 1
device=RESISTOR
T 44100 44600 5 10 1 1 0 0 1
refdes=R207
T 44700 44600 5 10 1 1 0 0 1
value=22.1
T 44200 44300 5 10 0 1 0 0 1
footprint=500mil
T 44200 44300 5 10 1 1 0 0 1
tolerance=20%
T 44200 44300 5 10 1 1 0 0 1
comment=/
}
C 40800 44300 1 0 0 resistor-2.sym
{
T 41200 44650 5 10 0 0 0 0 1
device=RESISTOR
T 40800 44600 5 10 1 1 0 0 1
refdes=R200
T 41400 44600 5 10 1 1 0 0 1
value=4.7K
T 40800 44300 5 10 0 1 0 0 1
footprint=500mil
T 40800 44300 5 10 1 1 0 0 1
tolerance=10%
T 40800 44300 5 10 1 1 0 0 1
comment=/
}
C 40800 43300 1 0 0 resistor-2.sym
{
T 41200 43650 5 10 0 0 0 0 1
device=RESISTOR
T 40800 43600 5 10 1 1 0 0 1
refdes=R201
T 41400 43600 5 10 1 1 0 0 1
value=348K
T 40800 43300 5 10 0 1 0 0 1
footprint=500mil
T 40800 43300 5 10 1 1 0 0 1
tolerance=10%
T 40800 43300 5 10 1 1 0 0 1
comment=/
}
C 43200 43300 1 270 0 capacitor-1.sym
{
T 43900 43100 5 10 0 0 270 0 1
device=CAPACITOR
T 43300 42200 5 10 1 1 90 0 1
refdes=C200
T 44100 43100 5 10 1 1 270 0 1
symversion=0.1
T 43300 43000 5 10 1 1 90 0 1
value=2.2uF
T 43200 43300 5 10 0 1 180 0 1
footprint=2.54
T 43200 43300 5 10 0 0 180 0 1
tolerance=20%
T 43200 43300 5 10 0 1 0 0 1
comment=/
}
N 40500 44400 40500 42700 4
N 41700 44400 42300 44400 4
N 42100 45700 42100 43400 4
N 41900 46500 41900 44400 4
N 42300 43400 41700 43400 4
C 43300 42100 1 0 0 gnd-1.sym
N 43200 44400 44200 44400 4
C 42300 43300 1 0 0 resistor-2.sym
{
T 42700 43650 5 10 0 0 0 0 1
device=RESISTOR
T 42300 43600 5 10 1 1 0 0 1
refdes=R205
T 42900 43600 5 10 1 1 0 0 1
value=10K
T 42300 43300 5 10 0 1 0 0 1
footprint=500mil
T 42300 43300 5 10 1 1 0 0 1
tolerance=10%
T 42300 43300 5 10 1 1 0 0 1
comment=/
}
N 43400 44400 43400 43300 4
C 43900 43400 1 270 0 capacitor-1.sym
{
T 44600 43200 5 10 0 0 270 0 1
device=CAPACITOR
T 44000 42400 5 10 1 1 90 0 1
refdes=C201
T 44800 43200 5 10 1 1 270 0 1
symversion=0.1
T 44000 43000 5 10 1 1 90 0 1
value=2.2uF
T 43900 43400 5 10 0 1 180 0 1
footprint=2.54
T 43900 43400 5 10 0 0 180 0 1
tolerance=20%
T 43900 43400 5 10 0 1 0 0 1
comment=/
}
C 44100 43300 1 0 0 resistor-2.sym
{
T 44500 43650 5 10 0 0 0 0 1
device=RESISTOR
T 44100 43600 5 10 1 1 0 0 1
refdes=R208
T 44700 43600 5 10 1 1 0 0 1
value=22.1
T 44100 43300 5 10 0 1 0 0 1
footprint=500mil
T 44100 43300 5 10 1 1 0 0 1
tolerance=20%
T 44100 43300 5 10 1 1 0 0 1
comment=/
}
N 43200 43400 44100 43400 4
C 44000 42100 1 0 0 gnd-1.sym
C 40300 44400 1 0 0 vcc-1.sym
N 40500 44400 40800 44400 4
C 45200 43700 1 0 0 74132-1.sym
{
T 45500 44800 5 10 0 0 0 0 1
device=74132
T 45500 44600 5 10 1 1 0 0 1
refdes=U200
T 45500 46200 5 10 0 0 0 0 1
footprint=DIP14
T 45200 43700 5 10 0 0 0 0 1
slot=1
T 45200 43700 5 10 1 1 0 0 1
value=74HC132
T 45200 43700 5 10 1 1 0 0 1
comment=/
T 45200 43700 5 10 1 1 0 0 1
tolerance=/
}
C 45200 42300 1 0 0 74132-1.sym
{
T 45500 43400 5 10 0 0 0 0 1
device=74132
T 45500 43200 5 10 1 1 0 0 1
refdes=U200
T 45500 44800 5 10 0 0 0 0 1
footprint=DIP14
T 45200 42300 5 10 0 0 0 0 1
slot=2
T 45200 42300 5 10 1 1 0 0 1
value=74HC132
T 45200 42300 5 10 1 1 0 0 1
comment=/
T 45200 42300 5 10 1 1 0 0 1
tolerance=/
}
N 45200 43000 45200 43400 4
{
T 45150 43100 5 10 0 0 90 0 1
netname=LP_in_locked
}
C 52500 45000 1 0 0 led-1.sym
{
T 53300 45600 5 10 0 0 0 0 1
device=LED
T 53300 45400 5 10 1 1 0 0 1
refdes=LED6
T 53300 45800 5 10 1 1 0 0 1
symversion=0.1
T 52500 45000 5 10 0 1 0 0 1
value=C503B-ACN
T 52500 45000 5 10 0 1 0 0 1
footprint=5.08
T 52500 45000 5 10 1 1 0 0 1
comment=amber
T 52500 45000 5 10 1 1 0 0 1
tolerance=/
}
C 51600 43400 1 0 0 led-1.sym
{
T 52400 44000 5 10 0 0 0 0 1
device=LED
T 52400 43800 5 10 1 1 0 0 1
refdes=LED7
T 52400 44200 5 10 1 1 0 0 1
symversion=0.1
T 51600 43400 5 10 0 1 0 0 1
value=C503B-RCN
T 51600 43400 5 10 0 1 0 0 1
footprint=5.08
T 51600 43400 5 10 1 1 0 0 1
comment=red
T 51600 43400 5 10 1 1 0 0 1
tolerance=/
}
C 52500 43400 1 0 0 led-1.sym
{
T 53300 44000 5 10 0 0 0 0 1
device=LED
T 53300 43800 5 10 1 1 0 0 1
refdes=LED8
T 53300 44200 5 10 1 1 0 0 1
symversion=0.1
T 52500 43400 5 10 0 1 0 0 1
value=C503B-RCN
T 52500 43400 5 10 0 1 0 0 1
footprint=5.08
T 52500 43400 5 10 1 1 0 0 1
comment=red
T 52500 43400 5 10 1 1 0 0 1
tolerance=/
}
C 52500 47300 1 0 0 led-1.sym
{
T 53300 47900 5 10 0 0 0 0 1
device=LED
T 52900 48100 5 10 1 1 0 0 1
refdes=LED4
T 53300 48100 5 10 1 1 0 0 1
symversion=0.1
T 52500 47300 5 10 0 1 0 0 1
value=C503B-GCN
T 52500 47300 5 10 0 1 0 0 1
footprint=5.08
T 52500 47300 5 10 1 1 0 0 1
comment=green
T 52500 47300 5 10 1 1 0 0 1
tolerance=/
}
C 52500 42300 1 0 0 led-1.sym
{
T 53300 42900 5 10 0 0 0 0 1
device=LED
T 53300 42700 5 10 1 1 0 0 1
refdes=LED1
T 53300 43100 5 10 1 1 0 0 1
symversion=0.1
T 52500 42300 5 10 0 1 0 0 1
value=C503B-BCN
T 52500 42300 5 10 0 1 0 0 1
footprint=5.08
T 52500 42300 5 10 1 1 0 0 1
comment=bleue
T 52500 42300 5 10 1 1 0 0 1
tolerance=/
}
C 40800 42600 1 0 0 resistor-2.sym
{
T 41200 42950 5 10 0 0 0 0 1
device=RESISTOR
T 40800 42900 5 10 1 1 0 0 1
refdes=R202
T 41400 42900 5 10 1 1 0 0 1
value=4.7K
T 40800 42600 5 10 0 1 0 0 1
footprint=500mil
T 40800 42600 5 10 1 1 0 0 1
tolerance=10%
T 40800 42600 5 10 1 1 0 0 1
comment=/
}
C 41700 41600 1 0 0 resistor-2.sym
{
T 42100 41950 5 10 0 0 0 0 1
device=RESISTOR
T 41700 41900 5 10 1 1 0 0 1
refdes=R206
T 42300 41900 5 10 1 1 0 0 1
value=22.1
T 41700 41600 5 10 0 1 0 0 1
footprint=500mil
T 41700 41600 5 10 1 1 0 0 1
tolerance=20%
T 41700 41600 5 10 1 1 0 0 1
comment=/
}
C 43900 41600 1 270 0 capacitor-1.sym
{
T 44600 41400 5 10 0 0 270 0 1
device=CAPACITOR
T 44800 41400 5 10 1 1 270 0 1
symversion=0.1
T 43900 40600 5 10 1 1 90 0 1
refdes=C202
T 43900 41200 5 10 1 1 90 0 1
value=2.2uF
T 43900 41600 5 10 0 1 180 0 1
footprint=2.54
T 43900 41600 5 10 0 0 180 0 1
tolerance=20%
T 43900 41600 5 10 0 1 0 0 1
comment=/
}
C 44200 41600 1 0 0 resistor-2.sym
{
T 44600 41950 5 10 0 0 0 0 1
device=RESISTOR
T 44100 41900 5 10 1 1 0 0 1
refdes=R209
T 44800 41900 5 10 1 1 0 0 1
value=22.1
T 44200 41600 5 10 0 1 0 0 1
footprint=500mil
T 44200 41600 5 10 1 1 0 0 1
tolerance=10%
T 44200 41600 5 10 1 1 0 0 1
comment=/
}
N 42600 41700 44200 41700 4
N 44100 41700 44100 41600 4
C 44000 40400 1 0 0 gnd-1.sym
N 40500 42700 40800 42700 4
C 45200 41000 1 0 0 74132-1.sym
{
T 45500 42100 5 10 0 0 0 0 1
device=74132
T 45500 43500 5 10 0 0 0 0 1
footprint=DIP14
T 45200 41000 5 10 0 0 0 0 1
slot=3
T 45500 41300 5 10 1 1 0 0 1
refdes=U200
T 45200 41000 5 10 1 1 0 0 1
value=74HC132
T 45200 41000 5 10 1 1 0 0 1
comment=/
T 45200 41000 5 10 1 1 0 0 1
tolerance=/
}
C 45700 45000 1 0 1 npn-1.sym
{
T 45100 45500 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 45100 46000 5 10 1 1 90 6 1
refdes=Q200
T 45700 45000 5 10 0 1 0 0 1
footprint=TO92
T 45100 44800 5 10 1 1 90 0 1
value=2N3904
T 45700 45000 5 10 1 1 0 0 1
tolerance=Or equiv. CBE
T 45700 45000 5 10 1 1 0 0 1
comment=/
}
C 42300 44800 1 0 0 resistor-2.sym
{
T 42700 45150 5 10 0 0 0 0 1
device=RESISTOR
T 42400 45100 5 10 1 1 0 0 1
refdes=R203
T 42900 45100 5 10 1 1 0 0 1
value=47.5
T 42300 44800 5 10 0 1 0 0 1
footprint=500mil
T 42300 44800 5 10 1 1 0 0 1
tolerance=20%
T 42300 44800 5 10 1 1 0 0 1
comment=/
}
C 45100 44700 1 0 0 gnd-1.sym
N 43200 44900 44600 44900 4
N 45200 46000 44600 46000 4
N 44600 46000 44600 44900 4
C 45700 45400 1 0 0 resistor-2.sym
{
T 46100 45750 5 10 0 0 0 0 1
device=RESISTOR
T 45700 45700 5 10 1 1 0 0 1
refdes=R210
T 46200 45700 5 10 1 1 0 0 1
value=10K
T 45700 45400 5 10 0 1 0 0 1
footprint=500mil
T 45700 45400 5 10 1 1 0 0 1
tolerance=20%
T 45700 45400 5 10 1 1 0 0 1
comment=/
}
N 42300 44900 41900 44900 4
C 51600 45100 1 0 0 resistor-2.sym
{
T 52000 45450 5 10 0 0 0 0 1
device=RESISTOR
T 51600 45400 5 10 1 1 0 0 1
refdes=R215
T 52200 45400 5 10 1 1 0 0 1
value=1.15K
T 51600 45100 5 10 0 1 0 0 1
footprint=500mil
T 51600 45100 5 10 1 1 0 0 1
tolerance=10%, R211 to R217 diff 1%
T 51600 45100 5 10 1 1 0 0 1
comment=/
}
C 40700 43100 1 0 0 gnd-1.sym
T 52600 44800 9 12 1 0 0 0 1
Amber
C 53300 44900 1 0 0 gnd-1.sym
C 49000 43100 1 0 0 7402-1.sym
{
T 49600 44000 5 10 0 0 0 0 1
device=7402
T 49300 44000 5 10 1 1 0 0 1
refdes=U202
T 49600 45400 5 10 0 0 0 0 1
footprint=DIP14
T 49000 43100 5 10 0 1 0 0 1
slot=1
T 49000 43100 5 10 1 1 0 0 1
value=74HC02
T 49000 43100 5 10 1 1 0 0 1
comment=/
T 49000 43100 5 10 1 1 0 0 1
tolerance=/
}
C 50700 43500 1 0 0 resistor-2.sym
{
T 51100 43850 5 10 0 0 0 0 1
device=RESISTOR
T 50800 43800 5 10 1 1 0 0 1
refdes=R216
T 51400 43800 5 10 1 1 0 0 1
value=1.15K
T 50700 43500 5 10 0 1 0 0 1
footprint=500mil
T 50700 43500 5 10 1 1 0 0 1
tolerance=10%, R211 to R217 diff 1%
T 50700 43500 5 10 1 1 0 0 1
comment=/
}
T 52300 43300 9 12 1 0 0 0 1
Red
T 53200 43300 9 12 1 0 0 0 1
Red
N 50700 44200 50700 43600 4
T 52200 44600 9 12 1 0 0 0 1
Chain ready
T 52500 43100 9 12 1 0 0 0 1
Locked
C 53300 43300 1 0 0 gnd-1.sym
C 53300 42200 1 0 0 gnd-1.sym
T 52500 42100 9 12 1 0 0 0 1
Bleu
T 52200 41900 9 12 1 0 0 0 1
Disabled
C 51600 42400 1 0 0 resistor-2.sym
{
T 52000 42750 5 10 0 0 0 0 1
device=RESISTOR
T 51600 42700 5 10 1 1 0 0 1
refdes=R217
T 52200 42700 5 10 1 1 0 0 1
value=1.15K
T 51600 42400 5 10 0 1 0 0 1
footprint=500mil
T 51600 42400 5 10 1 1 0 0 1
tolerance=10%, R211 to R217 diff 1%
T 51600 42400 5 10 1 1 0 0 1
comment=/
}
C 49900 42000 1 0 0 7402-1.sym
{
T 50500 42900 5 10 0 0 0 0 1
device=7402
T 50200 42900 5 10 1 1 0 0 1
refdes=U202
T 50500 44300 5 10 0 0 0 0 1
footprint=DIP14
T 49900 42000 5 10 0 1 0 0 1
slot=2
T 49900 42000 5 10 1 1 0 0 1
value=74HC02
T 49900 42000 5 10 1 1 0 0 1
comment=/
T 49900 42000 5 10 1 1 0 0 1
tolerance=/
}
N 49900 42300 49900 42700 4
N 46600 46400 46600 45500 4
{
T 46550 46300 5 10 0 0 90 6 1
netname=LP_out_pulldown_not_ready
}
N 45600 46400 46600 46400 4
C 46500 43700 1 0 0 7404-1.sym
{
T 47100 44600 5 10 0 0 0 0 1
device=7404
T 46800 44600 5 10 1 1 0 0 1
refdes=U201
T 47100 47200 5 10 0 0 0 0 1
footprint=DIP14
T 46500 43700 5 10 0 1 0 0 1
slot=6
T 46500 43700 5 10 1 1 0 0 1
value=74HC04
T 46500 43700 5 10 1 1 0 0 1
comment=/
T 46500 43700 5 10 1 1 0 0 1
tolerance=/
}
C 46500 41000 1 0 0 7404-1.sym
{
T 47100 41900 5 10 0 0 0 0 1
device=7404
T 46800 41900 5 10 1 1 0 0 1
refdes=U201
T 47100 44500 5 10 0 0 0 0 1
footprint=DIP14
T 46500 41000 5 10 0 1 0 0 1
slot=4
T 46500 41000 5 10 1 1 0 0 1
value=74HC04
T 46500 41000 5 10 1 1 0 0 1
comment=/
T 46500 41000 5 10 1 1 0 0 1
tolerance=/
}
N 49900 42500 48400 42500 4
N 46500 41500 46500 42000 4
N 46500 42000 48200 42000 4
{
T 46600 42050 5 10 0 0 0 0 1
netname=N_in_disabled
}
N 47600 41500 48400 41500 4
{
T 47700 41550 5 10 0 0 0 0 1
netname=N_in_not_disabled
}
N 48400 41500 48400 48500 4
N 48200 42000 48200 49200 4
N 46500 42800 46500 43500 4
N 46500 43500 47800 43500 4
{
T 46600 43550 5 10 0 0 0 0 1
netname=N_in_not_locked
}
N 47800 43500 47800 45200 4
N 47600 44200 47600 45600 4
{
T 47550 44300 5 10 0 0 90 0 1
netname=N_in_ready
}
N 46500 44200 46500 44900 4
N 46500 44900 47400 44900 4
{
T 46600 44950 5 10 0 0 0 0 1
netname=N_in_not_ready
}
N 47400 44900 47400 48900 4
N 49000 43400 48200 43400 4
N 49000 43800 47800 43800 4
C 50100 44700 1 0 0 7404-1.sym
{
T 50700 45600 5 10 0 0 0 0 1
device=7404
T 50300 45500 5 10 1 1 0 0 1
refdes=U201
T 50700 48200 5 10 0 0 0 0 1
footprint=DIP14
T 50100 44700 5 10 0 1 0 0 1
slot=3
T 50100 44700 5 10 1 1 0 0 1
value=74HC04
T 50100 44700 5 10 1 1 0 0 1
comment=/
T 50100 44700 5 10 1 1 0 0 1
tolerance=/
}
C 48800 44700 1 0 0 7410-1.sym
{
T 49400 45600 5 10 0 0 0 0 1
device=7410
T 49200 45600 5 10 1 1 0 0 1
refdes=U204
T 49400 46800 5 10 0 0 0 0 1
footprint=DIP14
T 48800 44700 5 10 0 1 0 0 1
slot=3
T 48800 44700 5 10 1 1 0 0 1
value=74HC10
T 48800 44700 5 10 1 1 0 0 1
comment=/
T 48800 44700 5 10 1 1 0 0 1
tolerance=/
}
N 48800 44800 48400 44800 4
N 48800 45600 47600 45600 4
N 48800 45200 47800 45200 4
C 52500 46200 1 0 0 led-1.sym
{
T 53300 46800 5 10 0 0 0 0 1
device=LED
T 53300 47000 5 10 1 1 0 0 1
symversion=0.1
T 53300 46600 5 10 1 1 0 0 1
refdes=LED5
T 52500 46200 5 10 0 1 0 0 1
value=C503B-ACN
T 52500 46200 5 10 0 1 0 0 1
footprint=5.08
T 52500 46200 5 10 1 1 0 0 1
comment=amber
T 52500 46200 5 10 1 1 0 0 1
tolerance=/
}
C 51600 46300 1 0 0 resistor-2.sym
{
T 52000 46650 5 10 0 0 0 0 1
device=RESISTOR
T 51600 46600 5 10 1 1 0 0 1
refdes=R214
T 52200 46600 5 10 1 1 0 0 1
value=1.15K
T 51600 46300 5 10 0 1 0 0 1
footprint=500mil
T 51600 46300 5 10 1 1 0 0 1
tolerance=10%, R211 to R217 diff 1%
T 51600 46300 5 10 1 1 0 0 1
comment=/
}
C 53300 46100 1 0 0 gnd-1.sym
C 50100 45900 1 0 0 7404-1.sym
{
T 50700 46800 5 10 0 0 0 0 1
device=7404
T 50700 49400 5 10 0 0 0 0 1
footprint=DIP14
T 50400 46800 5 10 1 1 0 0 1
refdes=U205
T 50100 45900 5 10 0 1 0 0 1
slot=4
T 50100 45900 5 10 1 1 0 0 1
value=74HC04
T 50100 45900 5 10 1 1 0 0 1
comment=/
T 50100 45900 5 10 1 1 0 0 1
tolerance=/
}
C 48800 45900 1 0 0 7410-1.sym
{
T 49400 46800 5 10 0 0 0 0 1
device=7410
T 49400 48000 5 10 0 0 0 0 1
footprint=DIP14
T 49200 46800 5 10 1 1 0 0 1
refdes=U204
T 48800 45900 5 10 0 1 0 0 1
slot=2
T 48800 45900 5 10 1 1 0 0 1
value=74HC10
T 48800 45900 5 10 1 1 0 0 1
comment=/
T 48800 45900 5 10 1 1 0 0 1
tolerance=/
}
T 52600 46000 9 12 1 0 0 0 1
Amber
N 48400 46000 48800 46000 4
N 47400 46400 48800 46400 4
T 52500 45800 9 12 1 0 0 0 1
A ready
C 47200 47400 1 180 0 7402-1.sym
{
T 46600 46500 5 10 0 0 180 0 1
device=7402
T 46900 46500 5 10 1 1 180 0 1
refdes=U202
T 46600 45100 5 10 0 0 180 0 1
footprint=DIP14
T 47200 47400 5 10 0 1 0 0 1
slot=4
T 47200 47400 5 10 1 1 0 0 1
value=74HC02
T 47200 47400 5 10 1 1 0 0 1
comment=/
T 47200 47400 5 10 1 1 0 0 1
tolerance=/
}
N 47200 46700 48200 46700 4
N 47200 47100 48800 47100 4
N 48800 47100 48800 46800 4
C 53300 47200 1 0 0 gnd-1.sym
C 51600 47400 1 0 0 resistor-2.sym
{
T 52000 47750 5 10 0 0 0 0 1
device=RESISTOR
T 51600 47700 5 10 1 1 0 0 1
refdes=R213
T 52200 47700 5 10 1 1 0 0 1
value=1.15K
T 51600 47400 5 10 0 1 0 0 1
footprint=500mil
T 51600 47400 5 10 1 1 0 0 1
tolerance=10%, R211 to R217 diff 1%
T 51600 47400 5 10 1 1 0 0 1
comment=/
}
C 50100 47000 1 0 0 7404-1.sym
{
T 50700 47900 5 10 0 0 0 0 1
device=7404
T 50400 47900 5 10 1 1 0 0 1
refdes=U205
T 50700 50500 5 10 0 0 0 0 1
footprint=DIP14
T 50100 47000 5 10 0 1 0 0 1
slot=5
T 50100 47000 5 10 1 1 0 0 1
value=74HC04
T 50100 47000 5 10 1 1 0 0 1
comment=/
T 50100 47000 5 10 1 1 0 0 1
tolerance=/
}
C 49000 47000 1 0 0 7404-1.sym
{
T 49600 47900 5 10 0 0 0 0 1
device=7404
T 49300 47900 5 10 1 1 0 0 1
refdes=U205
T 49600 50500 5 10 0 0 0 0 1
footprint=DIP14
T 49000 47000 5 10 0 1 0 0 1
slot=6
T 49000 47000 5 10 1 1 0 0 1
value=74HC04
T 49000 47000 5 10 1 1 0 0 1
comment=/
T 49000 47000 5 10 1 1 0 0 1
tolerance=/
}
N 49000 47500 45900 47500 4
N 45900 47500 45900 46900 4
N 47100 48200 50100 48200 4
N 50100 48200 50100 47500 4
C 52500 49800 1 0 0 led-1.sym
{
T 53300 50400 5 10 0 0 0 0 1
device=LED
T 53300 50600 5 10 1 1 0 0 1
symversion=0.1
T 52900 50600 5 10 1 1 0 0 1
refdes=LED2
T 52500 49800 5 10 0 1 0 0 1
value=C503B-GCN
T 52500 49800 5 10 0 1 0 0 1
footprint=5.08
T 52500 49800 5 10 1 1 0 0 1
comment=green
T 52500 49800 5 10 1 1 0 0 1
tolerance=/
}
C 52500 48700 1 0 0 led-1.sym
{
T 53300 49300 5 10 0 0 0 0 1
device=LED
T 53300 49500 5 10 1 1 0 0 1
symversion=0.1
T 53300 49100 5 10 1 1 0 0 1
refdes=LED3
T 52500 48700 5 10 0 1 0 0 1
value=C503B-ACN
T 52500 48700 5 10 0 1 0 0 1
footprint=5.08
T 52500 48700 5 10 1 1 0 0 1
comment=amber
T 52500 48700 5 10 1 1 0 0 1
tolerance=/
}
C 51600 48800 1 0 0 resistor-2.sym
{
T 52000 49150 5 10 0 0 0 0 1
device=RESISTOR
T 51600 49100 5 10 1 1 0 0 1
refdes=R212
T 52200 49100 5 10 1 1 0 0 1
value=1.15K
T 51600 48800 5 10 0 1 0 0 1
footprint=500mil
T 51600 48800 5 10 1 1 0 0 1
tolerance=10%, R211 to R217 diff 1%
T 51600 48800 5 10 1 1 0 0 1
comment=/
}
C 53300 48600 1 0 0 gnd-1.sym
C 50100 48400 1 0 0 7404-1.sym
{
T 50700 49300 5 10 0 0 0 0 1
device=7404
T 50700 51900 5 10 0 0 0 0 1
footprint=DIP14
T 50400 49300 5 10 1 1 0 0 1
refdes=U205
T 50100 48400 5 10 0 1 0 0 1
slot=3
T 50100 48400 5 10 1 1 0 0 1
value=74HC04
T 50100 48400 5 10 1 1 0 0 1
comment=/
T 50100 48400 5 10 1 1 0 0 1
tolerance=/
}
C 48800 48400 1 0 0 7410-1.sym
{
T 49400 49300 5 10 0 0 0 0 1
device=7410
T 49400 50500 5 10 0 0 0 0 1
footprint=DIP14
T 49200 49300 5 10 1 1 0 0 1
refdes=U204
T 48800 48400 5 10 0 1 0 0 1
slot=1
T 48800 48400 5 10 1 1 0 0 1
value=74HC10
T 48800 48400 5 10 1 1 0 0 1
comment=/
T 48800 48400 5 10 1 1 0 0 1
tolerance=/
}
N 48400 48500 48800 48500 4
N 47400 48900 48800 48900 4
C 47200 49900 1 180 0 7402-1.sym
{
T 46600 49000 5 10 0 0 180 0 1
device=7402
T 46600 47600 5 10 0 0 180 0 1
footprint=DIP14
T 46900 49000 5 10 1 1 180 0 1
refdes=U202
T 47200 49900 5 10 0 1 0 0 1
slot=3
T 47200 49900 5 10 1 1 0 0 1
value=74HC02
T 47200 49900 5 10 1 1 0 0 1
comment=/
T 47200 49900 5 10 1 1 0 0 1
tolerance=/
}
N 47200 49200 48200 49200 4
N 47200 49600 48800 49600 4
N 48800 49600 48800 49300 4
C 53300 49700 1 0 0 gnd-1.sym
C 51600 49900 1 0 0 resistor-2.sym
{
T 52000 50250 5 10 0 0 0 0 1
device=RESISTOR
T 51600 50200 5 10 1 1 0 0 1
refdes=R211
T 52200 50200 5 10 1 1 0 0 1
value=1.15K
T 51600 49900 5 10 0 1 0 0 1
footprint=500mil
T 51600 49900 5 10 1 1 0 0 1
tolerance=10%, R211 to R217 diff 1%
T 51600 49900 5 10 1 1 0 0 1
comment=/
}
C 50100 49500 1 0 0 7404-1.sym
{
T 50700 50400 5 10 0 0 0 0 1
device=7404
T 50700 53000 5 10 0 0 0 0 1
footprint=DIP14
T 50400 50400 5 10 1 1 0 0 1
refdes=U205
T 50100 49500 5 10 0 1 0 0 1
slot=2
T 50100 49500 5 10 1 1 0 0 1
value=74HC04
T 50100 49500 5 10 1 1 0 0 1
comment=/
T 50100 49500 5 10 1 1 0 0 1
tolerance=/
}
C 49000 49500 1 0 0 7404-1.sym
{
T 49600 50400 5 10 0 0 0 0 1
device=7404
T 49600 53000 5 10 0 0 0 0 1
footprint=DIP14
T 49300 50400 5 10 1 1 0 0 1
refdes=U205
T 49000 49500 5 10 0 1 0 0 1
slot=1
T 49000 49500 5 10 1 1 0 0 1
value=74HC04
T 49000 49500 5 10 1 1 0 0 1
comment=/
T 49000 49500 5 10 1 1 0 0 1
tolerance=/
}
N 49000 50000 45900 50000 4
N 45900 50000 45900 49400 4
N 45600 50700 50100 50700 4
N 50100 50700 50100 50000 4
T 52600 48500 9 12 1 0 0 0 1
Amber
N 45600 48400 45800 48400 4
N 45600 48900 45600 50700 4
T 52500 48300 9 12 1 0 0 0 1
B ready
T 52300 46900 9 12 1 0 0 0 1
A NOT ready
T 52600 47100 9 12 1 0 0 0 1
Green
T 52600 49600 9 12 1 0 0 0 1
Green
T 52300 49400 9 12 1 0 0 0 1
B NOT ready
N 45600 48400 45600 46400 4
C 40500 48600 1 0 0 input-2.sym
{
T 40500 48800 5 10 1 1 0 0 1
net=A_soft:1
T 41100 49300 5 10 0 0 0 0 1
device=none
T 41000 48700 5 10 0 1 0 7 1
value=INPUT
}
C 40500 47900 1 0 0 input-2.sym
{
T 40500 48100 5 10 1 1 0 0 1
net=A_hard:1
T 41100 48600 5 10 0 0 0 0 1
device=none
T 41000 48000 5 10 0 1 0 7 1
value=INPUT
}
C 42300 47300 1 0 0 7402-1.sym
{
T 42900 48200 5 10 0 0 0 0 1
device=7402
T 43100 48200 5 10 1 1 0 0 1
refdes=U203
T 42900 49600 5 10 0 0 0 0 1
footprint=DIP14
T 42300 47300 5 10 0 1 0 0 1
slot=2
T 42300 47300 5 10 1 1 0 0 1
value=74HC02
T 42300 47300 5 10 1 1 0 0 1
comment=/
T 42300 47300 5 10 1 1 0 0 1
tolerance=/
}
N 45600 48900 47100 48900 4
N 47100 48900 47100 48600 4
C 46500 42300 1 0 0 7404-1.sym
{
T 47100 43200 5 10 0 0 0 0 1
device=7404
T 46800 43200 5 10 1 1 0 0 1
refdes=U201
T 47100 45800 5 10 0 0 0 0 1
footprint=DIP14
T 46500 42300 5 10 0 1 0 0 1
slot=5
T 46500 42300 5 10 1 1 0 0 1
value=74HC04
T 46500 42300 5 10 1 1 0 0 1
comment=/
T 46500 42300 5 10 1 1 0 0 1
tolerance=/
}
N 47600 42800 48000 42800 4
{
T 47700 42850 5 10 0 0 0 0 1
netname=N_in_locked
}
N 48000 42800 48000 46000 4
N 48000 46000 45700 46000 4
N 42100 47100 44600 47100 4
N 44600 47100 44600 46200 4
N 44600 46200 45700 46200 4
N 45700 46200 45700 46000 4
C 42300 48200 1 0 0 7404-1.sym
{
T 42900 49100 5 10 0 0 0 0 1
device=7404
T 43100 49000 5 10 1 1 0 0 1
refdes=U201
T 42900 51700 5 10 0 0 0 0 1
footprint=DIP14
T 42300 48200 5 10 1 1 0 0 1
value=74HC04
T 42300 48200 5 10 1 1 0 0 1
comment=/
T 42300 48200 5 10 1 1 0 0 1
tolerance=/
}
C 43600 47500 1 0 0 7402-1.sym
{
T 44200 48400 5 10 0 0 0 0 1
device=7402
T 43900 48400 5 10 1 1 0 0 1
refdes=U203
T 44200 49800 5 10 0 0 0 0 1
footprint=DIP14
T 43600 47500 5 10 0 1 0 0 1
slot=3
T 43600 47500 5 10 1 1 0 0 1
value=74HC02
T 43600 47500 5 10 1 1 0 0 1
comment=/
T 43600 47500 5 10 1 1 0 0 1
tolerance=/
}
N 43400 48700 43600 48700 4
N 43600 48700 43600 48200 4
N 47200 47100 47200 47700 4
N 44900 47700 47200 47700 4
{
T 45000 47750 5 10 0 0 0 0 1
netname=N_local_A_ready
}
N 44900 47700 44900 48000 4
N 42300 47600 42100 47600 4
N 42100 49400 42100 47100 4
N 41900 48700 42300 48700 4
N 41900 48000 42300 48000 4
C 40500 50400 1 0 0 input-2.sym
{
T 41100 51100 5 10 0 0 0 0 1
device=none
T 41000 50500 5 10 0 1 0 7 1
value=INPUT
T 40500 50600 5 10 1 1 0 0 1
net=B_soft:1
}
C 40500 49700 1 0 0 input-2.sym
{
T 41100 50400 5 10 0 0 0 0 1
device=none
T 41000 49800 5 10 0 1 0 7 1
value=INPUT
T 40500 49900 5 10 1 1 0 0 1
net=B_hard:1
}
C 42300 49100 1 0 0 7402-1.sym
{
T 42900 50000 5 10 0 0 0 0 1
device=7402
T 42900 51400 5 10 0 0 0 0 1
footprint=DIP14
T 43000 50000 5 10 1 1 0 0 1
refdes=U203
T 42300 49100 5 10 0 1 0 0 1
slot=1
T 42300 49100 5 10 1 1 0 0 1
value=74HC02
T 42300 49100 5 10 1 1 0 0 1
comment=/
T 42300 49100 5 10 1 1 0 0 1
tolerance=/
}
C 42300 50000 1 0 0 7404-1.sym
{
T 42900 50900 5 10 0 0 0 0 1
device=7404
T 42900 53500 5 10 0 0 0 0 1
footprint=DIP14
T 42900 50900 5 10 1 1 0 0 1
refdes=U201
T 42300 50000 5 10 0 1 0 0 1
slot=2
T 42300 50000 5 10 1 1 0 0 1
value=74HC04
T 42300 50000 5 10 1 1 0 0 1
comment=/
T 42300 50000 5 10 1 1 0 0 1
tolerance=/
}
C 43600 49300 1 0 0 7402-1.sym
{
T 44200 50200 5 10 0 0 0 0 1
device=7402
T 44200 51600 5 10 0 0 0 0 1
footprint=DIP14
T 43900 50200 5 10 1 1 0 0 1
refdes=U203
T 43600 49300 5 10 0 1 0 0 1
slot=4
T 43600 49300 5 10 1 1 0 0 1
value=74HC02
T 43600 49300 5 10 1 1 0 0 1
comment=/
T 43600 49300 5 10 1 1 0 0 1
tolerance=/
}
N 43400 50500 43600 50500 4
N 43600 50500 43600 50000 4
N 44900 49800 44900 50200 4
N 42300 49400 42100 49400 4
N 41900 50500 42300 50500 4
N 41900 49800 42300 49800 4
N 44900 50200 47200 50200 4
{
T 45000 50250 5 10 0 0 0 0 1
netname=N_local_B_ready
}
N 47200 50200 47200 49600 4
C 47100 48900 1 180 0 74132-1.sym
{
T 46800 47800 5 10 0 0 180 0 1
device=74132
T 46800 48000 5 10 1 1 180 0 1
refdes=U200
T 46800 46400 5 10 0 0 180 0 1
footprint=DIP14
T 47100 48900 5 10 0 1 0 0 1
slot=4
T 47100 48900 5 10 1 1 0 0 1
value=74HC132
T 47100 48900 5 10 1 1 0 0 1
comment=/
T 47100 48900 5 10 1 1 0 0 1
tolerance=/
}
C 41700 40900 1 0 1 connector2-2.sym
{
T 41000 42200 5 10 1 1 0 0 1
refdes=CONN_DISABLE
T 41400 42150 5 10 0 0 0 6 1
device=CONNECTOR_2
T 41400 42350 5 10 0 0 0 6 1
footprint=SIP2N
}
C 41600 41000 1 0 0 gnd-1.sym
N 51600 45200 51200 45200 4
{
T 51500 45250 5 10 0 0 0 6 1
netname=N_all_ready
}
N 51600 42500 51200 42500 4
{
T 51500 42550 5 10 0 0 0 6 1
netname=N_disabled
}
N 51600 46400 51200 46400 4
{
T 51500 46450 5 10 0 0 0 6 1
netname=N_A_ready
}
N 51600 47500 51200 47500 4
{
T 51500 47550 5 10 0 0 0 6 1
netname=N_A_not_ready
}
N 51600 48900 51200 48900 4
{
T 51500 48950 5 10 0 0 0 6 1
netname=N_B_ready
}
N 51600 50000 51200 50000 4
{
T 51500 50050 5 10 0 0 0 6 1
netname=N_B_not_ready
}
N 50700 43600 50300 43600 4
{
T 50600 43650 5 10 0 0 0 6 1
netname=N_locked
}
N 45100 44400 45200 44400 4
{
T 45200 44450 5 10 0 0 0 0 1
netname=LP_in_ready
}
N 45000 43400 45200 43400 4
N 45100 41700 45200 41700 4
{
T 45200 41750 5 10 0 0 0 0 1
netname=LP_in_disabled
}
C 45000 44000 1 0 0 vcc-1.sym
C 45000 42600 1 0 0 vcc-1.sym
C 45000 41300 1 0 0 vcc-1.sym
N 41700 42700 41700 41700 4
C 41100 44900 1 0 1 connector6-2.sym
{
T 40400 47800 5 10 1 1 0 0 1
refdes=CONN_CHAIN
T 40800 47750 5 10 0 0 0 6 1
device=CONNECTOR_6
T 40800 47950 5 10 0 0 0 6 1
footprint=SIP6N
}
C 41100 47200 1 0 0 io-1.sym
{
T 41000 47500 5 10 1 1 0 0 1
net=ring_chain:1
T 41300 47800 5 10 0 0 0 0 1
device=none
T 42000 47300 5 10 0 1 0 1 1
value=IO
}
N 41100 46900 42100 46900 4
N 42100 46900 42100 46100 4
C 50700 44100 1 0 0 output-2.sym
{
T 51600 44300 5 10 1 1 0 0 1
net=lock_cmd:1
T 50900 44800 5 10 0 0 0 0 1
device=none
T 51600 44200 5 10 0 1 0 1 1
value=IO
}
N 44100 42500 44100 42400 4
