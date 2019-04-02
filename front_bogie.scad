translate([11.5,82,0])rotate([0,0,90])
servo_bracket();
translate([11.5,-82,0])rotate([0,0,-90])
servo_bracket();

translate([0,0,12])
difference(){
union(){
translate([4,0,-8])cube([8,140,8],center=true);
translate([0,-12,-12])cube([12.5,24,12]);    
rotate([0,90,0])cylinder(d=24,h=12.5,$fn=60);
}
rotate([0,90,0])cylinder(d=5.5,h=14,$fn=20);
}


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
translate([13.75,0,-1])cylinder(d=2.2,h=50,$fn=20);
translate([-13.75,0,-1])cylinder(d=2.2,h=50,$fn=20);
translate([10,0,0])cylinder(d=6,h=12,$fn=40);
}
}
