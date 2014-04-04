spindleSize			= [25.50, 109.37, 27];
mountSize			= [30,4,30];
screwHoleSeparation	= 20;
screwHoleInset		= (mountSize[0] - screwHoleSeparation)/2;
screwHoleDepth		= mountSize[1] + 1;
screwHoleRadius		= 1.7;

union(){
	translate([-1,0,0])
		scale([0.8,1,0.8]) 
			import ("Spool Holder for Replicator 2 90x30mm - cutoff centered.stl");
	translate([0,0,0])
		difference(){
			cube(mountSize,center=true);
			for( x=[-1,1], z=[-1,1]){
				translate([x * (mountSize[0]/2 - screwHoleInset), 0, z * (mountSize[2]/2 - screwHoleInset)])
					rotate([90,0,0])
						#cylinder(h=screwHoleDepth,r=screwHoleRadius,center=true,$fn=60);
			}
		}
}