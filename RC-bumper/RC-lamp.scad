$fn = 100;

module linse() {
    intersection() {
        difference() {
            union() {
                sphere(d = 50);
                intersection() {        
                    translate([-3,-25,0]) cube([0.5,50,50]);
                    sphere(d = 50.4);
                }
                intersection() {        
                    translate([2,-25,0]) cube([0.5,50,50]);
                    sphere(d = 50.4);
                }
                intersection() {        
                    rotate([0,0,90]) translate([2,-25,0]) cube([0.5,50,50]);
                    sphere(d = 50.4);
                }
                intersection() {        
                    rotate([0,0,90]) translate([-3,-25,0]) cube([0.5,50,50]);
                    sphere(d = 50.4);
                }
            }
            sphere(d = 49.4);
            
        }
        cylinder(d = 14, h = 100);
    }
}

module holder() {
   difference() {
        cube([4, 10, 5]);
        translate([-1,1,-2.5]) cube([4, 8, 7]);
    }
}

module lampe() {
    translate([11/2, -5, 0]) holder();
    
    difference() {
        cylinder(d = 14.6, h = 5);
        translate([0,0,-1]) cylinder(d = 13.6 , h = 7);
        translate([11/2-1,-4,-2.5]) cube([4, 8, 7]);
    }
    translate([0,0,-19.2]) linse();
    
}
