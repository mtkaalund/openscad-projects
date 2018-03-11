
module napkin_circle(height = 25) {
    linear_extrude(height = height, twist = 200) 
    difference() {
        circle(d = 38);
        circle(d = 35);
    }
}

module napkin_hexagon( height = 25 ) {
    
    linear_extrude(height = height, twist = 150 ) difference() {
        circle(d = 38, $fn=6);
        circle(d = 35, $fn=6);
    }
}

module napkin_cylinder( height = 25 ) {
    difference() {
        cylinder(d = 38, h = 5, $fn = 19 );
        translate([0,0,-1])cylinder(d = 34, h = 5 +2);
    }
    translate([0,0,5]) difference() {
        cylinder(d = 38, h = 5, $fn = 9 );
        translate([0,0,-1])cylinder(d = 34, h = 5 +2);
    }
    translate([0,0,10]) difference() {
        cylinder(d = 38, h = 5, $fn = 19 );
        translate([0,0,-1])cylinder(d = 34, h = 5 +2);
    }
    translate([0,0,15]) difference() {
        cylinder(d = 38, h = 5, $fn = 9 );
        translate([0,0,-1])cylinder(d = 34, h = 5 +2);
    }
    translate([0,0,20]) difference() {
        cylinder(d = 38, h = 5, $fn = 19 );
        translate([0,0,-1])cylinder(d = 34, h = 5 +2);
    }
}

napkin_circle();
//napkin_cylinder();
//napkin_hexagon();