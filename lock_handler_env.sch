v 20201216 2
C 40000 40000 0 0 0 title-bordered-A3.sym
C 42600 42200 1 0 0 io-1.sym
{
T 43600 42300 5 10 1 1 0 0 1
net=ready_chain:1
T 42800 42800 5 10 0 0 0 0 1
device=none
T 43500 42300 5 10 0 1 0 1 1
value=IO
}
C 42600 41400 1 0 0 io-1.sym
{
T 43700 41400 5 10 1 1 0 0 1
net=lock_chain:1
T 42800 42000 5 10 0 0 0 0 1
device=none
T 43500 41500 5 10 0 1 0 1 1
value=IO
}
N 41400 41900 43600 41900 4
N 43600 41900 43600 41100 4
N 43600 41100 41400 41100 4
C 43500 40800 1 0 0 gnd-1.sym
N 42600 41500 41400 41500 4
N 42600 42300 41400 42300 4
C 41200 47900 1 0 0 input-2.sym
{
T 41100 47900 5 10 1 1 0 0 1
net=A_soft:1
T 41800 48600 5 10 0 0 0 0 1
device=none
T 41700 48000 5 10 0 1 0 7 1
value=INPUT
}
C 41200 46500 1 0 0 input-2.sym
{
T 41000 46500 5 10 1 1 0 0 1
net=A_hard:1
T 41800 47200 5 10 0 0 0 0 1
device=none
T 41700 46600 5 10 0 1 0 7 1
value=INPUT
}
C 41200 50700 1 0 0 input-2.sym
{
T 41800 51400 5 10 0 0 0 0 1
device=none
T 41700 50800 5 10 0 1 0 7 1
value=INPUT
T 41000 50700 5 10 1 1 0 0 1
net=B_soft:1
}
C 41200 49300 1 0 0 input-2.sym
{
T 41800 50000 5 10 0 0 0 0 1
device=none
T 41700 49400 5 10 0 1 0 7 1
value=INPUT
T 41000 49300 5 10 1 1 0 0 1
net=B_hard:1
}
C 41400 40700 1 0 1 connector6-2.sym
{
T 40700 43600 5 10 1 1 0 0 1
refdes=CONN_CHAIN_NEXT
T 41100 43550 5 10 0 0 0 6 1
device=CONNECTOR_6
T 41100 43750 5 10 0 0 0 6 1
footprint=SIP6N
}
C 44200 43000 1 0 0 io-1.sym
{
T 44100 43300 5 10 1 1 0 0 1
net=ring_chain:1
T 44400 43600 5 10 0 0 0 0 1
device=none
T 45100 43100 5 10 0 1 0 1 1
value=IO
}
N 41400 42700 42400 42700 4
N 42400 42700 42400 41900 4
C 45600 42400 1 270 0 capacitor-1.sym
{
T 46300 42200 5 10 0 0 270 0 1
device=CAPACITOR
T 45700 41400 5 10 1 1 90 0 1
refdes=C204
T 46500 42200 5 10 0 0 270 0 1
symversion=0.1
T 45600 42400 5 10 0 1 0 0 1
tolerance=20%
T 45600 42400 5 10 0 1 0 0 1
footprint=2.54
T 45700 42200 5 10 1 1 90 0 1
value=2.2uF
T 45600 41000 5 10 1 1 0 0 1
comment=MLCC
}
C 46200 42400 1 270 0 capacitor-1.sym
{
T 46900 42200 5 10 0 0 270 0 1
device=CAPACITOR
T 46300 41400 5 10 1 1 90 0 1
refdes=C205
T 47100 42200 5 10 0 0 270 0 1
symversion=0.1
T 46200 42400 5 10 0 1 0 0 1
tolerance=20%
T 46200 42400 5 10 0 1 0 0 1
footprint=2.54
T 46300 42200 5 10 1 1 90 0 1
value=2.2uF
T 46200 41000 5 10 1 1 0 0 1
comment=MLCC
}
C 46800 42400 1 270 0 capacitor-1.sym
{
T 47500 42200 5 10 0 0 270 0 1
device=CAPACITOR
T 46900 41400 5 10 1 1 90 0 1
refdes=C206
T 47700 42200 5 10 0 0 270 0 1
symversion=0.1
T 46800 42400 5 10 0 1 0 0 1
tolerance=20%
T 46800 42400 5 10 0 1 0 0 1
footprint=2.54
T 46900 42200 5 10 1 1 90 0 1
value=2.2uF
T 46800 41000 5 10 1 1 0 0 1
comment=MLCC
}
C 45100 41200 1 0 0 gnd-1.sym
C 45700 41200 1 0 0 gnd-1.sym
C 46300 41200 1 0 0 gnd-1.sym
C 46900 41200 1 0 0 gnd-1.sym
C 45000 42400 1 0 0 vcc-1.sym
C 45600 42400 1 0 0 vcc-1.sym
C 46200 42400 1 0 0 vcc-1.sym
C 46800 42400 1 0 0 vcc-1.sym
C 45000 42400 1 270 0 capacitor-1.sym
{
T 45700 42200 5 10 0 0 270 0 1
device=CAPACITOR
T 45100 41400 5 10 1 1 90 0 1
refdes=C203
T 45900 42200 5 10 0 0 270 0 1
symversion=0.1
T 45000 42400 5 10 0 1 0 0 1
tolerance=20%
T 45000 42400 5 10 0 1 0 0 1
footprint=2.54
T 45100 42200 5 10 1 1 90 0 1
value=2.2uF
T 44900 41000 5 10 1 1 0 0 1
comment=MLCC
}
C 43800 45800 1 180 0 resistorpack5-1.sym
{
T 43700 44400 5 10 0 0 180 0 1
device=RESISTORPACK_5
T 42600 45300 5 10 1 1 180 0 1
refdes=R228
T 42300 44900 5 10 1 1 0 0 1
value=4.7K
T 42800 44500 5 10 1 1 0 0 1
comment=Elec detec. only
T 43800 45800 5 10 0 1 0 0 1
tolerance=10%, diff. 10%
}
C 43900 50700 1 0 0 resistor-2.sym
{
T 44300 51050 5 10 0 0 0 0 1
device=RESISTOR
T 43800 51000 5 10 1 1 0 0 1
refdes=R220
T 43300 50500 5 10 1 1 0 0 1
comment=Switch detec. only
T 44500 51000 5 10 1 1 0 0 1
value=22.1
T 43900 50700 5 10 0 1 0 0 1
footprint=500mil
T 43900 50700 5 10 0 1 0 0 1
tolerance=10%
}
C 43900 49300 1 0 0 resistor-2.sym
{
T 44300 49650 5 10 0 0 0 0 1
device=RESISTOR
T 43800 49600 5 10 1 1 0 0 1
refdes=R221
T 43900 49300 5 10 0 1 0 0 1
footprint=500mil
T 44500 49600 5 10 1 1 0 0 1
value=22.1
T 43300 49100 5 10 1 1 0 0 1
comment=Switch detec. only
T 43900 49300 5 10 0 1 0 0 1
tolerance=10%
}
C 43900 46500 1 0 0 resistor-2.sym
{
T 44300 46850 5 10 0 0 0 0 1
device=RESISTOR
T 43800 46800 5 10 1 1 0 0 1
refdes=R223
T 43900 46500 5 10 0 1 0 0 1
footprint=500mil
T 44500 46800 5 10 1 1 0 0 1
value=22.1
T 43300 46300 5 10 1 1 0 0 1
comment=Switch detec. only
T 43900 46500 5 10 0 1 0 0 1
tolerance=10%
}
C 43900 47900 1 0 0 resistor-2.sym
{
T 44300 48250 5 10 0 0 0 0 1
device=RESISTOR
T 43800 48200 5 10 1 1 0 0 1
refdes=R222
T 43900 47900 5 10 0 1 0 0 1
footprint=500mil
T 44500 48200 5 10 1 1 0 0 1
value=22.1
T 43300 47700 5 10 1 1 0 0 1
comment=Switch detec. only
T 43900 47900 5 10 0 1 0 0 1
tolerance=10%
}
C 45600 50700 1 0 0 resistor-2.sym
{
T 46000 51050 5 10 0 0 0 0 1
device=RESISTOR
T 45600 51000 5 10 1 1 0 0 1
refdes=R224
T 45600 50700 5 10 0 1 0 0 1
footprint=500mil
T 46200 51000 5 10 1 1 0 0 1
value=22.1
T 45700 50500 5 10 0 1 0 0 1
comment=/
T 45600 50700 5 10 0 1 0 0 1
tolerance=10%
}
C 45600 49300 1 0 0 resistor-2.sym
{
T 46000 49650 5 10 0 0 0 0 1
device=RESISTOR
T 45600 49600 5 10 1 1 0 0 1
refdes=R225
T 45600 49300 5 10 0 1 0 0 1
footprint=500mil
T 46200 49600 5 10 1 1 0 0 1
value=22.1
T 45700 49100 5 10 0 1 0 0 1
comment=/
T 45600 49300 5 10 0 1 0 0 1
tolerance=10%
}
C 45600 47900 1 0 0 resistor-2.sym
{
T 46000 48250 5 10 0 0 0 0 1
device=RESISTOR
T 45600 48200 5 10 1 1 0 0 1
refdes=R226
T 45600 47900 5 10 0 1 0 0 1
footprint=500mil
T 46200 48200 5 10 1 1 0 0 1
value=22.1
T 45600 47700 5 10 0 1 0 0 1
comment=/
T 45600 47900 5 10 0 1 0 0 1
tolerance=10%
}
C 45600 46500 1 0 0 resistor-2.sym
{
T 46000 46850 5 10 0 0 0 0 1
device=RESISTOR
T 45600 46800 5 10 1 1 0 0 1
refdes=R227
T 45600 46500 5 10 0 1 0 0 1
footprint=500mil
T 46200 46800 5 10 1 1 0 0 1
value=22.1
T 45600 46300 5 10 0 1 0 0 1
comment=/
T 45600 46500 5 10 0 1 0 0 1
tolerance=10%
}
C 45200 50800 1 270 0 capacitor-1.sym
{
T 45900 50600 5 10 0 0 270 0 1
device=CAPACITOR
T 45300 49800 5 10 1 1 90 0 1
refdes=C209
T 46100 50600 5 10 0 0 270 0 1
symversion=0.1
T 45200 50800 5 10 0 1 0 0 1
footprint=2.54
T 45200 50800 5 10 0 1 0 0 1
tolerance=10%
T 45100 49700 5 10 1 1 90 0 1
value=2.2uF or 1nF
T 45200 50800 5 10 0 1 0 0 1
comment=/
}
C 45200 49400 1 270 0 capacitor-1.sym
{
T 45900 49200 5 10 0 0 270 0 1
device=CAPACITOR
T 45300 48400 5 10 1 1 90 0 1
refdes=C210
T 46100 49200 5 10 0 0 270 0 1
symversion=0.1
T 45200 49400 5 10 0 1 0 0 1
tolerance=10%
T 45100 48300 5 10 1 1 90 0 1
value=2.2uF or 1nF
T 45200 49400 5 10 0 1 0 0 1
comment=/
T 45200 49400 5 10 0 1 0 0 1
footprint=2.54
}
C 45200 48000 1 270 0 capacitor-1.sym
{
T 45900 47800 5 10 0 0 270 0 1
device=CAPACITOR
T 45300 47000 5 10 1 1 90 0 1
refdes=C211
T 46100 47800 5 10 0 0 270 0 1
symversion=0.1
T 45200 48000 5 10 0 1 0 0 1
tolerance=10%
T 45100 46900 5 10 1 1 90 0 1
value=2.2uF or 1nF
T 45200 48000 5 10 0 1 0 0 1
comment=/
T 45200 48000 5 10 0 1 0 0 1
footprint=2.54
}
C 45200 46600 1 270 0 capacitor-1.sym
{
T 45900 46400 5 10 0 0 270 0 1
device=CAPACITOR
T 45300 45500 5 10 1 1 90 0 1
refdes=C212
T 46100 46400 5 10 0 0 270 0 1
symversion=0.1
T 45200 46600 5 10 0 1 0 0 1
tolerance=10%
T 45100 45500 5 10 1 1 90 0 1
value=2.2uF or 1nF
T 45200 46600 5 10 0 1 0 0 1
comment=/
T 45200 46600 5 10 0 1 0 0 1
footprint=2.54
}
C 42600 43300 1 0 0 resistor-2.sym
{
T 43000 43650 5 10 0 0 0 0 1
device=RESISTOR
T 42700 43600 5 10 1 1 0 0 1
refdes=R233
T 43300 43600 5 10 1 1 0 0 1
value=10K
T 42600 43300 5 10 0 1 0 0 1
footprint=500mil
T 42600 43300 5 10 0 1 0 0 1
tolerance=10%
T 42600 43300 5 10 0 1 0 0 1
comment=/
}
C 43600 43400 1 0 0 vcc-1.sym
N 44200 43100 41400 43100 4
N 42600 43400 42600 43100 4
N 43500 43400 43800 43400 4
C 52800 47400 1 0 0 input-2.sym
{
T 52800 47600 5 10 1 1 0 0 1
net=lock_cmd:1
T 53400 48100 5 10 0 0 0 0 1
device=none
T 53300 47500 5 10 0 1 0 7 1
value=IO
}
C 53400 48400 1 0 0 resistor-2.sym
{
T 53800 48750 5 10 0 0 0 0 1
device=RESISTOR
T 53400 48700 5 10 1 1 0 0 1
refdes=R218
T 54000 48700 5 10 1 1 0 0 1
value=1.15K
T 53400 48400 5 10 0 1 0 0 1
footprint=500mil
T 53400 48400 5 10 0 1 0 0 1
tolerance=10%
T 53400 48400 5 10 0 1 0 0 1
comment=/
}
C 54300 47600 1 0 0 darlington_NPN-1.sym
{
T 55700 48700 5 10 0 0 0 0 1
device=darlington, NPN
T 55700 48300 5 10 0 0 0 0 1
footprint=TO92
T 54800 47770 5 10 1 1 0 0 1
refdes=Q201
T 54300 47600 5 10 1 1 0 0 1
value=TIP120
T 54300 47600 5 10 0 1 0 0 1
comment=Or equiv. BCE darlington Vce twice the lock voltage
T 54300 47600 5 10 0 1 0 0 1
tolerance=/
}
C 55200 47300 1 0 0 gnd-1.sym
N 42600 50800 43900 50800 4
N 45600 50800 44800 50800 4
N 45600 49400 44800 49400 4
N 45600 48000 44800 48000 4
N 45600 46600 44800 46600 4
C 45300 49600 1 0 0 gnd-1.sym
C 45300 48200 1 0 0 gnd-1.sym
C 45300 46800 1 0 0 gnd-1.sym
C 45300 45400 1 0 0 gnd-1.sym
C 47700 46200 1 180 0 resistorpack5-1.sym
{
T 47600 44800 5 10 0 0 180 0 1
device=RESISTORPACK_5
T 46500 45900 5 10 1 1 180 0 1
refdes=R229
T 46200 45500 5 10 1 1 0 0 1
value=4.7K
T 46800 44900 5 10 1 1 0 0 1
comment=NC Switch detec. only
T 47700 46200 5 10 0 1 0 0 1
tolerance=10%, diff. 10%
}
C 44900 50400 1 180 0 diode-1.sym
{
T 44500 49800 5 10 0 0 180 0 1
device=DIODE
T 43500 50400 5 10 1 1 180 0 1
refdes=D201
T 44900 50000 5 10 1 1 180 0 1
comment=Elec detec. only
T 44900 50400 5 10 0 1 180 0 1
footprint=300mil
T 44200 50400 5 10 1 1 180 0 1
value=1N4148
T 44900 50400 5 10 0 1 0 0 1
tolerance=/
}
C 44900 49000 1 180 0 diode-1.sym
{
T 44500 48400 5 10 0 0 180 0 1
device=DIODE
T 43500 49000 5 10 1 1 180 0 1
refdes=D202
T 44200 49000 5 10 1 1 180 0 1
value=1N4148
T 44900 49000 5 10 0 1 180 0 1
footprint=300mil
T 44900 48600 5 10 1 1 180 0 1
comment=Elec detec. only
T 44900 49000 5 10 0 1 0 0 1
tolerance=/
}
C 44900 47600 1 180 0 diode-1.sym
{
T 44500 47000 5 10 0 0 180 0 1
device=DIODE
T 43500 47600 5 10 1 1 180 0 1
refdes=D203
T 44900 47600 5 10 0 1 180 0 1
footprint=300mil
T 44200 47600 5 10 1 1 180 0 1
value=1N4148
T 44900 47200 5 10 1 1 180 0 1
comment=Elec detec. only
T 44900 47600 5 10 0 1 0 0 1
tolerance=/
}
C 44900 46200 1 180 0 diode-1.sym
{
T 44500 45600 5 10 0 0 180 0 1
device=DIODE
T 43500 46200 5 10 1 1 180 0 1
refdes=D204
T 44900 46200 5 10 0 1 180 0 1
footprint=300mil
T 44200 46200 5 10 1 1 180 0 1
value=1N4148
T 45100 45800 5 10 1 1 180 0 1
comment=Elec detec. only
T 44900 46200 5 10 0 1 0 0 1
tolerance=/
}
N 42800 45800 42800 46600 4
N 42600 46600 43900 46600 4
N 42600 48000 43900 48000 4
N 43100 45800 43100 48000 4
N 43400 45800 43400 49400 4
N 42600 49400 43900 49400 4
N 43700 45800 43700 50800 4
N 47600 46200 47600 49900 4
N 47600 47600 50000 47600 4
N 47300 46200 47300 48000 4
N 46500 48000 50000 48000 4
N 47000 46200 47000 48400 4
N 46500 48400 50000 48400 4
N 46700 46200 46700 50800 4
N 46700 48800 50000 48800 4
N 46500 48400 46500 49400 4
N 46500 50800 47600 50800 4
N 46500 46600 47600 46600 4
C 46000 45100 1 0 0 vcc-1.sym
C 42200 44400 1 0 0 gnd-1.sym
C 49900 46900 1 0 0 gnd-1.sym
C 55300 50000 1 180 0 diode-1.sym
{
T 54900 49400 5 10 0 0 180 0 1
device=DIODE
T 54700 50200 5 10 1 1 180 0 1
refdes=D200
T 55300 50000 5 10 0 0 0 0 1
comment=/
T 55300 50000 5 10 1 1 0 0 1
value=BA158
T 55300 50000 5 10 0 1 0 0 1
footprint=300mil
}
C 53500 49700 1 0 0 resistor-2.sym
{
T 53900 50050 5 10 0 0 0 0 1
device=RESISTOR
T 53200 50000 5 10 1 1 0 0 1
refdes=R219
T 52900 49500 5 10 1 1 0 0 1
comment=value half the lock device resistance
T 53800 50000 5 10 1 1 0 0 1
value=1K
T 53500 49700 5 10 0 1 0 0 1
footprint=500mil
T 53500 49700 5 10 0 1 0 0 1
tolerance=10%
}
N 44000 50200 43700 50200 4
N 44900 50200 44900 50800 4
N 44000 48800 43400 48800 4
N 44900 48800 44900 49400 4
N 44000 47400 43100 47400 4
N 44900 47400 44900 48000 4
N 44900 46000 44900 46600 4
N 44000 46000 42800 46000 4
C 53500 44600 1 0 0 lm7806-1.sym
{
T 55100 45900 5 10 0 0 0 0 1
device=7806
T 54900 45600 5 10 1 1 0 6 1
refdes=Q202
T 53500 44600 5 10 0 1 0 0 1
footprint=TO220
T 53000 44700 5 10 1 1 0 0 1
comment=7805 or 7806
T 53500 44600 5 10 1 1 0 0 1
value=7806
T 53500 44600 5 10 0 1 0 0 1
tolerance=/
}
C 54900 46200 1 0 0 vcc-1.sym
C 54800 46200 1 180 0 diode-1.sym
{
T 54400 45600 5 10 0 0 180 0 1
device=DIODE
T 54100 46200 5 10 1 1 180 0 1
refdes=D205
T 54600 46100 5 10 1 1 0 0 1
value=BA158
T 54800 46200 5 10 0 1 0 0 1
footprint=300mil
T 54800 46200 5 10 0 1 0 0 1
tolerance=/
T 54800 46200 5 10 0 1 0 0 1
comment=/
}
N 55100 44100 55100 46200 4
N 54800 46000 55100 46000 4
N 51600 46000 53200 46000 4
N 53200 45200 53500 45200 4
C 54200 44300 1 0 0 gnd-1.sym
C 47400 42400 1 270 0 capacitor-1.sym
{
T 48100 42200 5 10 0 0 270 0 1
device=CAPACITOR
T 48300 42200 5 10 0 0 270 0 1
symversion=0.1
T 47400 42400 5 10 0 1 0 0 1
tolerance=20%
T 47500 41400 5 10 1 1 90 0 1
refdes=C207
T 47400 42400 5 10 0 1 0 0 1
footprint=2.54
T 47500 42200 5 10 1 1 90 0 1
value=2.2uF
T 47400 41000 5 10 1 1 0 0 1
comment=MLCC
}
C 48000 42400 1 270 0 capacitor-1.sym
{
T 48700 42200 5 10 0 0 270 0 1
device=CAPACITOR
T 48900 42200 5 10 0 0 270 0 1
symversion=0.1
T 48000 42400 5 10 0 1 0 0 1
tolerance=20%
T 48100 41400 5 10 1 1 90 0 1
refdes=C208
T 48000 42400 5 10 0 1 0 0 1
footprint=2.54
T 48100 42200 5 10 1 1 90 0 1
value=2.2uF
T 48000 41000 5 10 1 1 0 0 1
comment=MLCC
}
C 47500 41200 1 0 0 gnd-1.sym
C 48100 41200 1 0 0 gnd-1.sym
C 47400 42400 1 0 0 vcc-1.sym
C 48000 42400 1 0 0 vcc-1.sym
C 52000 42100 1 0 0 connector8-2.sym
{
T 53800 45800 5 10 1 1 0 6 1
refdes=CONN_POWER_NEXT
T 52300 45750 5 10 0 0 0 0 1
device=CONNECTOR_8
T 52300 45950 5 10 0 0 0 0 1
footprint=SIP8N
}
C 51400 42100 1 0 1 connector8-2.sym
{
T 50200 45800 5 10 1 1 0 0 1
refdes=CONN_POWER
T 51100 45750 5 10 0 0 0 6 1
device=CONNECTOR_8
T 51100 45950 5 10 0 0 0 6 1
footprint=SIP8N
}
N 51400 45300 52000 45300 4
N 51400 44900 52000 44900 4
N 51400 44500 52000 44500 4
N 51400 44100 52000 44100 4
N 51400 43700 52000 43700 4
N 51400 43300 52000 43300 4
N 51400 42900 52000 42900 4
N 51400 42500 52000 42500 4
C 51700 42000 1 0 0 gnd-1.sym
N 51800 42300 51800 42500 4
N 51800 42500 51800 43300 4
N 51800 43300 51800 44100 4
N 51800 44100 51800 44900 4
N 51600 42900 51600 43700 4
N 51600 43700 51600 44500 4
N 51600 44500 51600 45300 4
N 51600 45300 51600 46000 4
C 52900 48600 1 0 1 connector3-2.sym
{
T 52200 50300 5 10 1 1 0 0 1
refdes=CONN_OUTPUT
T 52600 50250 5 10 0 0 0 6 1
device=CONNECTOR_3
T 52600 50450 5 10 0 0 0 6 1
footprint=SIP3N
}
N 53400 48000 53400 48500 4
N 54200 47500 54200 48000 4
N 54200 48000 53400 48000 4
N 55300 49800 55300 49300 4
N 52900 49800 53500 49800 4
N 52900 49400 55300 49400 4
C 52800 48400 1 0 0 gnd-1.sym
N 52900 49000 52900 48700 4
N 53200 49800 53200 44100 4
C 53000 44100 1 270 0 capacitor-4.sym
{
T 54100 43900 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 53500 43900 5 10 1 1 270 0 1
refdes=C213
T 53700 43900 5 10 0 0 270 0 1
symversion=0.1
T 53000 44100 5 10 0 0 0 0 1
tolerance=20%
}
C 54900 44100 1 270 0 capacitor-4.sym
{
T 56000 43900 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 55400 43900 5 10 1 1 270 0 1
refdes=C214
T 55600 43900 5 10 0 0 270 0 1
symversion=0.1
T 54900 44100 5 10 0 0 0 0 1
tolerance=20%
}
C 53100 42900 1 0 0 gnd-1.sym
C 55000 42900 1 0 0 gnd-1.sym
N 53200 46000 53900 46000 4
C 47600 50900 1 270 0 resistorpack5-1.sym
{
T 49000 50800 5 10 0 0 270 0 1
device=RESISTORPACK_5
T 47600 51000 5 10 1 1 0 0 1
refdes=R230
T 47600 50900 5 10 0 0 0 0 1
tolerance=10%, diff. 10%
T 46800 49600 5 10 1 1 0 0 1
comment=NO Switch detec. only
T 48500 51000 5 10 1 1 0 0 1
value=10K
}
N 47600 50500 47000 50500 4
N 47000 50500 47000 48400 4
N 47600 50200 47300 50200 4
N 47300 50200 47300 48000 4
C 48600 49100 1 0 0 gnd-1.sym
C 49300 49600 1 90 0 resistor-2.sym
{
T 48950 50000 5 10 0 0 90 0 1
device=RESISTOR
T 49000 49800 5 10 1 1 90 0 1
refdes=R231
T 49200 50600 5 10 1 1 0 0 1
comment=NO Switch detec. only
T 49300 49600 5 10 0 1 0 0 1
tolerance=10%
}
C 49800 49600 1 90 0 resistor-2.sym
{
T 49450 50000 5 10 0 0 90 0 1
device=RESISTOR
T 49500 49800 5 10 1 1 90 0 1
refdes=R232
T 49800 49600 5 10 0 1 0 0 1
tolerance=10%
T 49200 50900 5 10 1 1 0 0 1
comment=NO Switch detec. only
}
C 50000 46800 1 0 0 connector7-2.sym
{
T 50600 46500 5 10 1 1 0 6 1
refdes=CONN_AB_HARDSOFT
T 50300 50050 5 10 0 0 0 0 1
device=CONNECTOR_7
T 50300 50250 5 10 0 0 0 0 1
footprint=SIP7N
}
N 49700 49600 50000 49600 4
N 49200 49600 49200 49200 4
N 49200 49200 50000 49200 4
N 49200 50500 51400 50500 4
C 51200 50500 1 0 0 vcc-1.sym
C 51600 46800 1 0 1 connector7-2.sym
{
T 50900 46500 5 10 1 1 0 0 1
refdes=CONN_AB_POWER
T 51300 50050 5 10 0 0 0 6 1
device=CONNECTOR_7
T 51300 50250 5 10 0 0 0 6 1
footprint=SIP7N
T 51600 46800 5 10 0 1 0 0 1
tolerance=/
T 50900 46200 5 10 1 1 0 0 1
comment=Elec detec. only
}
C 51600 49100 1 0 0 nc-right-1.sym
{
T 51700 49600 5 10 0 0 0 0 1
value=NoConnection
T 51700 49800 5 10 0 0 0 0 1
device=DRC_Directive
}
N 53200 49800 53200 50500 4
N 51600 50500 53200 50500 4
N 51600 50500 51600 49600 4
N 51600 48800 51600 48400 4
N 51600 48000 51600 47200 4
C 51800 48400 1 0 0 vcc-1.sym
N 51600 48400 52000 48400 4
C 51500 46900 1 0 0 gnd-1.sym
