v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 640 -280 640 -200 {lab=0}
N 520 -280 600 -280 {lab=#net1}
N 460 -330 460 -310 {lab=#net1}
N 460 -330 520 -330 {lab=#net1}
N 520 -330 520 -280 {lab=#net1}
N 550 -200 550 -180 {lab=0}
N 270 -420 270 -330 {lab=#net2}
N 270 -200 460 -200 {lab=0}
N 270 -270 270 -200 {lab=0}
N 780 -270 780 -200 {lab=0}
N 640 -200 780 -200 {lab=0}
N 270 -420 460 -420 {lab=#net2}
N 460 -280 460 -200 {lab=0}
N 640 -420 780 -420 {lab=#net3}
N 780 -420 780 -330 {lab=#net3}
N 460 -360 470 -360 {lab=#net1}
N 550 -200 640 -200 {lab=0}
N 460 -200 550 -200 {lab=0}
N 460 -360 460 -330 {lab=#net1}
N 500 -280 520 -280 {lab=#net1}
N 640 -420 640 -310 {lab=#net3}
C {sky130_fd_pr/nfet_01v8.sym} 480 -280 0 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 620 -280 0 0 {name=M2
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
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {gnd.sym} 550 -180 0 0 {name=l2 lab=0}
C {isource.sym} 460 -390 0 0 {name=Iref value=10u}
C {vsource.sym} 270 -300 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 780 -300 0 0 {name=V2 value=1.8 savecurrent=false}
C {sky130_fd_pr/corner.sym} 20 -560 0 0 {name=CORNER only_toplevel=true corner=tt}
C {launcher.sym} 910 -280 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/current_mirror_schematic.raw "
}
C {lab_show.sym} 440 -420 0 0 {name=l4}
C {lab_show.sym} 460 -330 0 0 {name=l5}
C {lab_show.sym} 460 -220 0 0 {name=l8}
C {lab_show.sym} 780 -220 0 0 {name=l10}
C {lab_show.sym} 270 -230 0 0 {name=l11}
C {code_shown.sym} 170 -550 0 0 {name=s2 only_toplevel=false value=".control
op
dc V2 0 1.8 0.01
set color0=white
plot -i(V2)
write current_mirror_schematic.raw
.endc
"}
