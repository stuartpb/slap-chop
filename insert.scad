use <Round-Anything/polyround.scad>

bladePathPoints=[
  [-34,  11, 0 ],
  [-26, -40, 3 ],
  [-11.5,51,2.7],
  [0,   -61, 3 ],
  [11.5 ,51,2.7],
  [26,  -40, 3 ],
  [34,   11, 0 ]
];
module footprint(){
  difference() {
    circle(d=80);
    polygon(polyRound(beamChain(
      bladePathPoints, offset1=1, offset2=-1), 20));
  }
}
linear_extrude(1) footprint();