use <Round-Anything/polyround.scad>

bladePathPoints=[
  [-34,  11, 0 ],
  [-26, -40, 3 ],
  [-11.5,52,2.7],
  [0,   -62, 3 ],
  [11.5 ,52,2.7],
  [26,  -40, 3 ],
  [34,   11, 0 ]
];
module footprint(){
  polygon(polyRound(beamChain(
    bladePathPoints, offset1=1, offset2=-1), 20));
}

$fa = 1;

difference() {
  union() {
  linear_extrude(1.2) difference() {
    circle(d=84); footprint();
  }
  linear_extrude(10) difference() {
    circle(d=82); footprint();
  }
  }
linear_extrude(5) circle(d=80);
linear_extrude(8.4) intersection() {
  circle(d=80); union() {
    offset(2) footprint();
    square([80,15],center=true);
  }
}
}