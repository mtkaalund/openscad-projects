$fn = 10;

module flance() {
difference(){
minkowski(){
    square([13.5 - 2.5,23.9 - 2.5/2]);
    circle(d=2.5);
}

translate([(13.5-2.5)/2, 3.1 + 3.1/2,0]) circle(d = 3.1);
}
}

module flance_lower_connection() {
linear_extrude(height=3.1) union() {
    difference() {  
        minkowski() {
            square([7.2-2.5, 8.3 - 2.5]);
            circle(d=2.5);
        }

        translate([ (7.2-2.5)/2, (8.3 - 2.5/2) -3.1/2 -2,0]) circle(d=3.1);
        }
    }
}


module bottom_connection() {
linear_extrude(height=2)
union() {
flance();
translate([13.5+6.2 - 2.5/2, 0, 0]) flance();
translate([11.5, 23.9 - 12 -0.5, 0]) square([6.2, 12]);
}
translate([12.4, 23.9 - 10.4 ,2.5/2]) rotate([90,0,0]) flance_lower_connection();
}


module half_lower_slide() {
translate([9.4/2+1.6, 0.5,0])
minkowski(){
hull() {
square([6.5,0.5]);
translate([0,5-0.5,0]) square([4.5,0.5]);;
}
circle(d=1);
}
translate([9.4/2+1.,0,0]) square([2,6]);

square([9.4/2,6]);
}

linear_extrude(height=3) difference() {
square([22,9.4]);
translate([-0.05,-0.05,0]) half_lower_slide();
}


translate([-30/2,-14,3])bottom_connection();