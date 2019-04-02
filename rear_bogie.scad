$fn=30;

translate([16.5,80,0])servo_bracket();
translate([16.5,-80,0])servo_bracket();

rotate([0,90,0])
difference(){
cylinder(d=15,h=12.5);
translate([0,0,-1])cylinder(d=5.5,h=14);
}

translate([4,0,4])cube([8,140,8],center=true);

module servo_bracket(){
difference(){
union(){
translate([1,0,2.5])cube([35,23,5],center=true);
translate([0,11.5,3])
rotate([90,0,0])linear_extrude(height=23)
polygon([[-16.5,0],[18.5,2],[-16.5,8]]);
translate([13.75,0,0])cylinder(d=8,h=2,$fn=60);
}
cube([23.4,12.4,50],center=true);
translate([13.75,0,-1])cylinder(d=2.2,h=50,$fn=30);
translate([-13.75,0,-1])cylinder(d=2.2,h=50,$fn=30);
translate([10,0,0])cylinder(d=6,h=12,$fn=60);
}
}
