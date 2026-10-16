v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 350 -300 {}
N 453.9874220131452 -250 453.9874220131452 -200 {lab=gnd}
N 453.9874220131452 -200 633.9874220131452 -200 {lab=gnd}
N 633.9874220131452 -280 633.9874220131452 -250 {lab=gnd}
N 633.9874220131452 -250 633.9874220131452 -200 {lab=gnd}
N 493.9874220131452 -280 593.9874220131452 -280 {lab=vin}
N 453.9874220131452 -360 453.9874220131452 -310 {lab=vin}
N 453.9874220131452 -330 513.9874220131452 -330 {lab=vin}
N 513.9874220131452 -330 513.9874220131452 -280 {lab=vin}
N 453.9874220131452 -280 453.9874220131452 -250 {lab=gnd}
N 633.9874220131452 -330 633.9874220131452 -310 {lab=vdd}
N 633.9874220131452 -420 633.9874220131452 -330 {lab=vdd}
N 540 -200 550 -170 {lab=gnd}
N 630 -420 640 -420 {lab=vdd}
N 450 -360 460 -360 {lab=vin}
C {sky130_fd_pr/nfet_01v8.sym} 473.9874220131452 -280 0 1 {name=M1
W=20
L=4
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 613.9874220131452 -280 0 0 {name=M2
W=40
L=4
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {ipin.sym} 450 -360 0 0 {name=p1 lab=vin}
C {opin.sym} 640 -420 0 0 {name=p2 lab=vdd}
C {iopin.sym} 550 -170 0 0 {name=p3 lab=gnd}
