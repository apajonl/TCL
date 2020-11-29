#!/usr/bin/tclsh

console show

label .st -text "Scrambler V2.0" -font {arial 15} -width 80 -height 4
pack .st

foreach { b c } {2x2 2 3x3 3 4x4 4 5x5 5 6x6 6 7x7 7} {
  puts "$b $c"
  button .$b -text $b -width 10 -command "scramble $c"
  pack .$b -side left
}

proc scramble { size } {
    # pick the right length for various size cubes
    set length [lindex { 0 0 25 25 40 60 80 100 } $size]
    set slicenames {
	{ }
	{ { L R } { F B } { U D } }
	{ { L l r R } { F f b B } { U u d D } }
        { { L l 3l 3r r R } { F f 3f 3b b B } { U u 3u 3d d D } }
    }
    # this scrambler doesn't pick slice turns for central slice of odd size cubes
    set slices [expr $size - $size % 2]
    set alg {}
    #puts "slices: $slices"
    while { $length } {
	set ok 1
	set axis [expr int(rand()*3)]
	set slice [expr int(rand()*$slices)]
	set times [expr int(rand()*3)+1]
	set try [list $axis $slice $times]
	set testalg $alg
	lappend testalg $try
	#puts "evalutating $testalg"
	# search for a group of turns at the end that have the same axis
	set j [expr [llength $testalg]-1]
	for { set i $j } { $i >= 0 } { incr i -1 } {
	    if {[lindex [lindex $testalg $i] 0] != $axis } {
		incr i 1
		break
	    }
	}
	if { $i < 0 } {
	    incr i
	}
	#puts "turns $i to $j are same axis"
	set numturns [expr $j - $i + 1]
	# we don't want to turn every slice of an axis because this can be duplicated using a shorter sequence
	if { $numturns == $size } {
	    set ok 0
	    continue
	}
	for { set k 0 } { $k < $slices } { incr k } {
	    set counts($k) 0
	    set positions($k) 0
	}
	for { set k 0 } { $k < 4 } { incr k } {
	    set counts2($k) 0
	}
	for { set k $i } { $k <= $j } { incr k } {
	    set slice [lindex [lindex $testalg $k] 1]
	    if { $counts($slice) } {
		#puts "duplicate slice move"
		set ok 0
	    } else {
		incr counts($slice)
	    }
	    set positions($slice) [lindex [lindex $testalg $k] 2]
	}
	# make sure that for three slice turns to a 4x4x4, they are all different # of times
	for { set k 0 } { $k < $slices } { incr k } {
 	    set x $positions($k)
	    # reverse direction of opposite sides when we are checking # of rotations
 	    if { $k >= [expr $size / 2] } {
 		set x [expr (4-$x)%4]
 	    }
	    incr counts2($x)
	    if { $size == 4 && $numturns == 3 && $counts2($x) > 1 } {
		set ok 0
	    }
	}
	if { $ok } {
#           # this is kind of rare, and I was looking at it while debugging
# 	    if { $size == 4 && $numturns == 3 } {
# 		puts "4x4x4 with 3 slices"
# 	    }
	    set alg $testalg
	    incr length -1
	}
    }
    #puts $alg
    set algstr ""
    # convert list of numbers into alphabetic notation
    for { set i 0 } { $i < [llength $alg] } { incr i } {
	if { $i } {
	    append algstr " "
	}
	set axis [lindex [lindex $alg $i] 0]
	set slice [lindex [lindex $alg $i] 1]
	set times [lindex [lindex $alg $i] 2]
	append algstr "[lindex [lindex [lindex $slicenames [expr $size/2]] $axis] $slice]"
	append algstr [lindex { 0 "" 2 "'" } $times]
    }
    #return $algstr
    puts $algstr
    .st configure -text "$algstr" -wrap 800
}



#puts "2x2x2: [scramble 2]"
#puts "3x3x3: [scramble 3]"
#puts "4x4x4: [scramble 4]"
#puts "5x5x5: [scramble 5]"
#puts "6x6x6: [scramble 6]"
#puts "7x7x7: [scramble 7]"

