use <Round-Anything/polyround.scad>

bladePathPoints=[
  [6,53,0],
  [14,0,2.7],
  [27.5,90,2.7],
  [40,-20,3],
  [80-27.5,90,2.7],
  [80-14,0,2.7],
  [80-6,53,0]
];
module footprint(){
  difference() {
    translate([40,40]) circle(d=80);
    polygon(polyRound(beamChain(bladePathPoints,offset1=1, offset2=-1),20));
  }
}
linear_extrude(1) footprint();