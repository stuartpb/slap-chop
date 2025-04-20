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
  difference() {
    circle(d=85);
    polygon(polyRound(beamChain(
      bladePathPoints, offset1=1, offset2=-1), 20));
  }
}
linear_extrude(1.2) footprint();