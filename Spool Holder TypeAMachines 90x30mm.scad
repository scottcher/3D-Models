mountSize			= [40,4,40];
screwHoleSeparation	= 25;
screwHoleInset		= (mountSize[0] - 25)/2;
screwHoleDepth		= mountSize[1] + 1;
screwHoleRadius		= 1.7;

union(){
	translate([-2,0,6])
		import ("Spool Holder for Replicator 2 90x30mm - cutoff.stl");
	translate([0,-mountSize[1]/2,mountSize[2]/2])
		difference(){
			cube(mountSize,center=true);
			for( x=[-1,1], z=[-1,1]){
				translate([x * (mountSize[0]/2 - screwHoleInset), 0, z * (mountSize[2]/2 - screwHoleInset)])
					rotate([90,0,0])
						#cylinder(h=screwHoleDepth,r=screwHoleRadius,center=true,$fn=60);
			}
		}
}