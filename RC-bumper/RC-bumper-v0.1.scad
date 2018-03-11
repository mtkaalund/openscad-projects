use <RC-lamp.scad>

translate([-9.7-50, 18/2+15/2 ,0]) lampe();
translate([-50+3-0.8, 72/2, 2]) rotate([90,0,0]) cylinder(d=8,h=72/2);
translate([-50-23, 40/2+1.5, 2]) rotate([90,0,0]) cylinder(d=7,h=40/2+1.5);

translate([-50-23-1, 40/2-1, 2]) rotate([90,0,128]) cylinder(d=7,h=32);

// 73 streagte