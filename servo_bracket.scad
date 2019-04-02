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
