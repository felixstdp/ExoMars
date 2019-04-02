translate([-145,65.5,0])rotate([0,0,90])rearbogie();
translate([-145,-65.5,0])rotate([0,0,-90])rearbogie();
frontbogie();

translate([15,112,-45])rotate([0,-90,0])wheelbracket();
translate([-91,112,-45])rotate([0,-90,0])wheelbracket();
translate([-191,112,-45])rotate([0,-90,0])wheelbracket();

translate([7,-112,-45])rotate([0,-90,180])wheelbracket();
translate([-99,-112,-45])rotate([0,-90,180])wheelbracket();
translate([-199,-112,-45])rotate([0,-90,180])wheelbracket();


module frontbogie(){
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
}

module rearbogie(){
translate([16.5,50,0])servo_bracket();
translate([16.5,-50,0])servo_bracket();

translate([0,0,12])
difference(){
union(){
translate([4,0,-8])cube([8,80,8],center=true);
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
}

module wheelbracket(){
bracket();
translate([-7,-7,4])rotate([0,90,90])clamp();

module bracket(){
$fn=60;
difference(){
union(){
translate([32,-26,4])rotate([0,90,0])
cylinder(d=24,h=8);
translate([32,-16,0])cube([8,20,8]);
translate([0,0,0])cube([36,8,8]);    
translate([36,4,0])rotate([0,0,-90])
cylinder(d=8,h=8);    
}

translate([30,-26,4])rotate([0,90,0])
cylinder(d=7.5,h=10);
translate([36,-10,4])rotate([-90,0,0])
cylinder(d=2.7,h=25);
translate([36,6,4])rotate([-90,0,0])
cylinder(d=5.5,h=10);

}
}
}

module clamp(){
difference(){
translate([-7,-10.5,0])
cube([14,21,15]);
difference(){
    cylinder(d=13,h=25,$fn=60);
    translate([6.5,0,12])cube([2,12,25],center=true);
    translate([-6.5,0,12])cube([2,12,25],center=true);
}
translate([-1,0,0])cube([2,22,25]);
//translate([-9,-8,14.5])rotate([0,90,0])
//cylinder(d=2.2,h=21,$fn=12);
translate([-9,8,7.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);

}
}
