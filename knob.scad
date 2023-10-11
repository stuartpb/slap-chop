knob_height = 31;
knob_diam = 60;
inner_diam = 55.25;
well_depth = 16;
well_diam = 8;
well_wall_width = 2;

cone_top_d = 12;
cone_base_d = 40;

support_cyl_t = .4;

sphere_center_z = knob_diam/2-knob_height;
over = 1;

$fs = 1;
$fa = 1;

difference() {
  translate([0,0,sphere_center_z]) sphere(d=knob_diam);
  
  // translate([0,0,knob_diam/2-knob_height])
  // // Make top solid (alternative to well walls)
  // scale([1,1,(inner_diam-2*well_depth)/inner_diam])
  //   sphere(d=inner_diam);
  
  cylinder(h = knob_height - well_depth, d1 = cone_base_d, d2=cone_top_d);
  
  // Well carveout
  translate([0,0,sphere_center_z+inner_diam/2-well_depth-over])
    cylinder(h=well_depth+over, d=well_diam);
  
  translate([-knob_diam,-knob_diam,-knob_diam]) cube([2*knob_diam,2*knob_diam,knob_diam]);
}

difference() {
  cylinder(h = knob_height - well_depth, d = well_diam+2*support_cyl_t);
  cylinder(h = knob_height - well_depth, d = well_diam);
}
