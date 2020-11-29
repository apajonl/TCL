#console show

# todo
# Fridrich 0/62207 done
# avg of all: 0.00 done
# ZBLL/COLL 0/7775 done
# avg of all: 0.00 done
# Average F/ZB/COLL : 0.00 done
# read write delete the line to log
# menu option train my x bad times
# Stackmat at times ?
# countdown timer done
set version "1.9.1"
set counterf 0
set counterzb 0
set checkf 0
set checkzb 0
#set ::onetwo 1

if {[file exists ll-scramble.txt]} {
    set totallinesfridrich -1
    set file [open ll-scramble.txt r]
    while {![eof $file]} {
	set line [gets $file]
	lappend fridrich $line
	incr totallinesfridrich
    }
    close $file
}

if {[file exists zb-scramble.txt]} {
    set totallineszb -1
    set file [open zb-scramble.txt r]
    while {![eof $file]} {
	set line [gets $file]
	lappend zbll $line
	incr totallineszb
    }
    close $file
}

proc averagef {} {
    global checkf avgf counterf avgf2 averagef fridrichlog
    set counterf 0
    set avgf2 ""
    set checkf 0
    set averagef 0
    set fridrichlog ""
    if {[file exists ll-scramble.log]} {
	set file [open ll-scramble.log r]
	while {![eof $file]} {
	    set line [gets $file]
	    lappend fridrichlog $line
	    set avgf [split $line :]
	    set avgf [lindex $avgf 1]
	    set avgf [string trim "[lindex $avgf 0]" "{}"]
	    if {$checkf == 0} {
		set avgf2 "$avgf"
		set checkf 1
	    } else {
		set avgf2 "$avgf $avgf2"
		set checkf 2
	    }
	    
	    incr counterf
	}
	close $file
	incr counterf -1
	if {($checkf == 2)} {
	    set avgf [expr [join $avgf2 " + "]]
	    set averagef [expr $avgf / $counterf]
	}
    } else {
	set avgf 0
    }
}

proc averagezb {} {
    global checkzb avgzb counterzb avgzb2 averagezb zblllog
    set counterzb 0
    set avgzb2 ""
    set checkzb 0
    set averagezb 0
    set zblllog ""
    if {[file exists zb-scramble.log]} {
	set file [open zb-scramble.log r]
	while {![eof $file]} {
	    set line [gets $file]
	    lappend zblllog $line
	    set avgzb [split $line :]
	    set avgzb [lindex $avgzb 1]
	    set avgzb [string trim "[lindex $avgzb 0]" "{}"]
	    if {$checkzb == 0} {
		set avgzb2 $avgzb
		set checkzb 1
	    } else {
		set avgzb2 "$avgzb $avgzb2"
		set checkzb 2
	    }
	    
	    incr counterzb
	}
	close $file
	incr counterzb -1
	if {($checkzb == 2)} {
	    set avgzb [join $avgzb2 " + "]
	    set averagezb [expr $avgzb / $counterzb]
	} 
	
    } else {
	set avgzb 0
    }
}

proc cubeimage {} {
    global stickers imagecube polygons state
    #// fill colors F 
    #set polygons(12) [$imagecube create poly 21 100 136 119 141 194 31 168 -fill white -outline "black"] 
    #set polygons(22) [$imagecube create poly 136 119 141 194 185 133 183 66 -fill white -outline "black"] 
    #// fill color FL
    set polygons(18) [$imagecube create poly 21 100 15 62 54 68 59 106 -fill white -outline "black"] 
    #// fill color FM
    set polygons(19) [$imagecube create poly 59 106  54 68 93 72 97 113 -fill white -outline "black"] 
    #// fill color FR
    set polygons(20) [$imagecube create poly 93 72 97 113 136 119 134 78 -fill white -outline "black"] 
    set polygons(21) [$imagecube create poly 26 136 21 100 59 106 62 143 -fill white -outline "black"]
    set polygons(22) [$imagecube create poly 62 143 59 106 97 113 100 151 -fill white -outline "black"]
    set polygons(23) [$imagecube create poly 97 113 100 151 138 158 136 119 -fill white -outline "black"]
    set polygons(24) [$imagecube create poly 26 136 62 143  65 176 31 168 -fill white -outline "black"]
    set polygons(25) [$imagecube create poly 65 176 62 143 100 151 103 185 -fill white -outline "black"]
    set polygons(26) [$imagecube create poly 100 151 103 185 141 194 138 158 -fill white -outline "black"]

    #// fill color RL
    set polygons(27) [$imagecube create poly 136 119 134 78 151 60 154 100 -fill white -outline "black"] 
    #// fill color RS
    set polygons(28) [$imagecube create poly 151 60 154 100 169 81 168 43 -fill white -outline "black"] 
    #// fill color RR
    set polygons(29) [$imagecube create poly 169 82 168 43 183 28 183 66 -fill white -outline "black"] 
    #//fill color R
    set polygons(30) [$imagecube create poly 138 158 136 119 154 100 156 138 -fill white -outline "black"]
    set polygons(31) [$imagecube create poly 169 82 154 100 156 138 170 119 -fill white -outline "black"]
    set polygons(32) [$imagecube create poly 169 82 170 119 185 102 184 66 -fill white -outline "black"]
    set polygons(33) [$imagecube create poly 138 158 156 138 158 171 141 194 -fill white -outline "black"]
    set polygons(34) [$imagecube create poly 158 171 156 138 170 119 172 151 -fill white -outline "black"]
    set polygons(35) [$imagecube create poly 172 151 170 119 185 102 185 133 -fill white -outline "black"]

    #// fill U layer UBL
    set polygons(0) [$imagecube create poly 60 29 78 16 108 19 91 33 -fill white -outline "black"]
    #// fill U layer UBM
    set polygons(1) [$imagecube create poly 144 23 108 19 91 33 128 38 -fill white -outline "black"] 
    #// fill U layer UBR
    set polygons(2) [$imagecube create poly 144 23 128 38 168 43 183 28 -fill white -outline "black"] 
    #// fill U layer USL
    set polygons(3) [$imagecube create poly 39 45 60 29 91 33 73 49 -fill white -outline "black"] 
    #// fill U layer USM
    set polygons(4) [$imagecube create poly 129 38 91 33 73 49 110 55 -fill white -outline "black"] 
    #// fill U layer USR
    set polygons(5) [$imagecube create poly 129 38 110 55 151 60 168 43 -fill white -outline "black"] 

    #// fill U layer UFL
    set polygons(6) [$imagecube create poly 15 62 39 45 73 49 54 68 -fill white -outline "black"] 
    #// fill U layer UFM
    set polygons(7) [$imagecube create poly 54 68 73 49 110 55 93 72 -fill white -outline "black"] 
    #// fill U layer UFR
    set polygons(8) [$imagecube create poly 93 72 110 55 151 60 134 78 -fill white -outline "black"]
}

set turns {
    {{38 29 20 11} {37 28 19 10} {36 27 18 9} {0 2 8 6} {1 5 7 3}}
    {{17 26 35 44} {16 25 34 43} {15 24 33 42} {45 47 53 51} {46 50 52 48}}
    {{53 26 8 36} {50 23 5 39} {47 20 2 42} {27 29 35 33} {28 32 34 30}}
    {{38 6 24 51} {41 3 21 48} {44 0 18 45} {9 11 17 15} {10 14 16 12}}
    {{6 27 47 17} {7 30 46 14} {8 33 45 11} {18 20 26 24} {19 23 25 21}}
    {{15 53 29 0} {12 52 32 1} {9 51 35 2} {36 38 44 42} {37 41 43 39}}
}

proc lreverse { l } {
    set l2 {}
    for { set i [expr [llength $l]-1] } { $i >= 0 } { incr i -1 } {
	lappend l2 [lindex $l $i]
    }
    #set l2 [lreplace $l2 0 0]
    return $l2
}

proc turn { state face } {
    global turns

    set facenum [string first $face "UDRLFB"]
    set table1 [lindex $turns $facenum]
    for { set i 0 } { $i < 5 } { incr i } {
	set table2 [lindex $table1 $i]
	set i3 [lindex $state [lindex $table2 3]]
	for { set j 2 } { $j >= 0 } { incr j -1 } {
	    set k [lindex $table2 [expr $j + 1]]
	    set state [lreplace $state $k $k [lindex $state [lindex $table2 $j]]]
	}
	set k [lindex $table2 0]
	set state [lreplace $state $k $k $i3]
    }
    return $state
}

proc turnstr { state str } {
    for { set i 0 } { $i < [string length $str] } { incr i } {
	set char [string index $str $i]
	if { [string equal $char "'"] } {
	    set state [turn $state $prevchar]
	    set state [turn $state $prevchar]
	} elseif { [string equal $char "2"] } {
	    set state [turn $state $prevchar]
	} elseif { ![string equal $char " "] } {
	    set state [turn $state $char]
	    set prevchar $char
	}
    }
    return $state
}

proc cubestate {} {
    global imagecube polygons state cubescheme 

    foreach poly [array names polygons] {
	$imagecube itemconfig $polygons($poly) -fill [lindex $cubescheme [expr [lindex $state $poly]/9]]
    }
}

proc scramble {} {    
    global scramble onetwo randscramble totallineszb totallinesfridrich fridrich piccube
    global imagecube stickers zbll zblllog fridrichlog counterf counterzb avgf avgzb state initstate
    
    
    if {$::onetwo == 1} { 
	set randscramble [expr int(rand()*$totallinesfridrich)]
	set scramble [lindex $fridrich $randscramble]
        .yourbest configure -text "" 
    } elseif {$::onetwo == 2} {     
	set randscramble [expr int(rand()*$totallineszb)]
	set scramble [lindex $zbll $randscramble]
        .yourbest configure -text ""
    } elseif {$::onetwo == 3} {
	if {![file exists ll-scramble.log]} {
	    .scramble configure -text "There are no scrambles saved yet!!!"
	    return 0
	}
        averagef  
	set randscramble [expr int(rand()*$counterf)]
	set scramble [lindex $fridrichlog $randscramble]    
	set scramble [split $scramble :]
	.scramble configure -text "[lindex $scramble 2]"
	.yourbest configure -text "Your last time with this scramble: [lindex $scramble 1]"
	focus .buttons.start
       if {($piccube == 1)} {
        set state [turnstr $initstate [lindex $scramble 2]]
        cubestate
       }
	return 0
    } else {
	if {![file exists zb-scramble.log]} {
	    .scramble configure -text "There are no scrambles saved yet!!!"
	    return 0
	}
        averagezb
	set randscramble [expr int(rand()*$counterzb)]
	set scramble [lindex $zblllog $randscramble]  
	set scramble [split $scramble :]
	.scramble configure -text "[lindex $scramble 2]"
	.yourbest configure -text "Your last time with this scramble: [lindex $scramble 1]"
	focus .buttons.start
       if {($piccube == 1)} {
        set state [turnstr $initstate [lindex $scramble 2]]
        cubestate
       }
	return 0
    }
   if {($piccube == 1)} {
    set state [turnstr $initstate $scramble]
    cubestate
   }
    .scramble configure -text "$scramble"
    #.yourbest configure -text "Your last time with this scramble: n/a"
    focus .buttons.start
}

proc countdown {} {
 global starttime mytime mycountdowntime
 #if {( $mytime == "10" )} {
    .clock configure -font {Courier 20} -textvariable mytime
    for { set mytime $mycountdowntime } { $mytime != 0 } { incr mytime -1 } {
        update
        after 1000
    }
   #}
 
 set starttime [clock clicks]
 updatetimer
}

proc updatetimer1 {} {
    global starttime mytime  
    set t [expr [clock clicks] - $starttime]
    set secs [expr $t / 1000000]
    set t [expr $t % 1000000]
    set hund [format "%02d" [expr $t / 10000]]
    set mytime $secs.$hund
    .clock configure -text $mytime
}

proc updatetimer {} {
    updatetimer1
    after 100 updatetimer
}

proc start {} {
    global starttime mytime mycountdowntime
    set state [.buttons.start cget -text]
    if {[string equal $state "start"]} {
        set mytime $mycountdowntime
	.buttons.start configure -text "stop"
        countdown
	#after 100 updatetimer
	focus .buttons.start
	#set starttime [clock clicks]
    } else {
        #set countdown 10
	updatetimer1
	after cancel updatetimer
	.buttons.start configure -text "start"
	focus .buttons.accept
    }
}

proc accept {} {
    global times mytime leader average dsession scramble randscramble counterf counterzb totallinesfridrich totallineszb fridrichlog zblllog avgf avgzb averagezb averagef
    if { $leader } {
	focus .buttons.scramble
    } else {
	focus .buttons.start
    }
    lappend times $mytime
    if {[llength $times] > 12} {
	set times [lreplace $times 0 0]
    }
    set minno -1
    set maxno -1
    if {[llength $times] > 2} {
	set minno 0
	set maxno 0
	set min [lindex $times $minno]
	set max [lindex $times $maxno]
	for { set i 1 } { $i < [llength $times] } { incr i } {
	    if {[lindex $times $i] < $min} {
		set min [lindex $times $i]
		set minno $i
	    }
	    if {[lindex $times $i] > $max} {
		set max [lindex $times $i]
		set maxno $i
	    }
	}
    }
    set times2 {}
    set total 0
    set count 0
    for { set i 0 } { $i < [llength $times] } { incr i } {
	if { $i == $minno || $i == $maxno } {
	    lappend times2 "([lindex $times $i])"
	} else {
	    lappend times2 [lindex $times $i]
	    set total [expr $total + [lindex $times $i]]
	    incr count
	}
    }
    set average [format "%.2f" [expr $total / $count]]

    #set scramble [string trim "[lindex $scramble 0]" "{}"]

    if {($::onetwo == 1) || ($::onetwo == 3)} { 
    
     averagef
     if {($::onetwo == 1)} {
	    set file [open ll-scramble.log a]
	} 
     if {($::onetwo == 3)} {
	    set file [open ll-scramble.log r]
	    set scramble [string trim "[lindex $scramble 0]" "{}"]
	} 
     incr counterf
     
     set avgf [expr $avgf + $mytime]
    
     set avgf [expr ($avgf) / $counterf]
     
    
     set avgf2 [format "%.2f" $avgf]
     .stats.donefavg configure -text "avg: $avgf2"
     .stats.donef configure -text "Fridrich $counterf/$totallinesfridrich"
     lappend fridrichlog $randscramble:$mytime:$scramble
    
    } else {
      averagezb
      if {($::onetwo == 2)} {
	    set file [open zb-scramble.log a]
	} 
      if {($::onetwo == 4)} {
	    set file [open zb-scramble.log r]
	    set scramble [string trim "[lindex $scramble 0]" "{}"]
	} 
      incr counterzb
      set avgzb [expr $avgzb + $mytime]
      set avgzb [expr ($avgzb) / $counterzb]
      
      set avgzb2 [format "%.2f" $avgzb]
      .stats.donezbavg configure -text "avg: $avgzb2"
      .stats.donezb configure -text "ZBLL/COLL $counterf/$totallinesfridrich"
      lappend zblllog $randscramble:$mytime:$scramble
     
    }
   
    if {($avgzb == "0.00")} {
      .stats.avgofall configure -text "Average F/ZBLL/COLL : [format "%.2f" $avgf]"
     } elseif {($avgf == "0.00")} {
      .stats.avgofall configure -text "Average F/ZBLL/COLL : [format "%.2f" $avgzb]"
     } else {
      set avgf [format "%.2f" [expr ($avgf + $avgzb) / 2]]
      .stats.avgofall configure -text "Average F/ZBLL/COLL : $avgf"
    }
    
    #if {($::onetwo == 1) || ($::onetwo == 2)} { 
	#set scramble $randscramble
    #}
    
    #temp sollution :(
    if {($::onetwo == 1) || ($::onetwo == 2)} {
     foreach line $file {
       if {$line != ""} {       
         puts $file $randscramble:$mytime:$scramble 
       }
      }   
     close $file
    }

    if {($::onetwo == 3) || ($::onetwo == 4)} {
     while {![eof $file]} {
       set line [gets $file]
       set getline [split $line :]
       puts "[lindex $getline 0]=$scramble"
       if {[lindex $getline 0] == $scramble} { 
         #puts "we got a match [lindex $getline 0]=$scramble:$mytime:[lindex $getline 2]"
         lappend datalist $scramble:$mytime:[lindex $getline 2]
        } else {
         if {$line != ""} {
            lappend datalist $line
         } 
        }
       }
     close $file
    
    if {($::onetwo == 3)} { 
	set file [open ll-scramble.log w]
    } 
    if {($::onetwo == 4)} { 
	set file [open zb-scramble.log w]
    }
     foreach line $datalist {   
   	if {$line != ""} {       
    	    puts $file $line
    	}
     }
     close $file
    }
    
    .times configure -text "$times2"
    .average configure -text "Average: $average"
    .clock configure -text "0.00"
    incr dsession
    .donesession configure -text "Done this session: $dsession"    
}

proc discard {} {
    global leader
    if { $leader } {
	focus .buttons.scramble
        .clock configure -text "0.00"
    } else {
	focus .buttons.start
        .clock configure -text "0.00"
    }
}

proc timerinit {} {
    global version times leader imagemain average dsession randscramble scramble mycountdowntime piccube
    global imagecube counterf counterzb totallinesfridrich totallineszb stickers state initstate cubescheme
    set scramble "U2 U2"
    set myPic2 [image create photo -data $imagemain]
    label .pic -image $myPic2 
    
    set ::onetwo "1"
    labelframe .train -text "Select training"
    radiobutton .train.one   -value 1 -text "Fridrich"   -variable onetwo -command { puts $::onetwo }
    radiobutton .train.two   -value 2 -text "ZBLL/COLL"   -variable onetwo -command { puts $::onetwo }
    radiobutton .train.three   -value 3 -text "Fridrich records"   -variable onetwo -command { puts $::onetwo }
    radiobutton .train.four   -value 4 -text "ZBLL/COLL records"   -variable onetwo -command { puts $::onetwo }
    pack .train .train.one .train.three .train.two .train.four -anchor w -padx 5 -pady 2
    
    set ::leader "1"
    set ::mycountdowntime "15"
    set ::piccube "1"
    set cubescheme { yellow red green orange blue white }

    labelframe .stats -text "Stats"
    label .stats.donef -text "Fridrich $counterf/$totallinesfridrich" 
    label .stats.donefavg -text "avg: 0.00" 
    label .stats.donezb -text "ZBLL/COLL $counterzb/$totallineszb"
    label .stats.donezbavg -text "avg: 0.00"
    label .stats.avgofall -text "Average F/ZB/COLL : 0.00"
    pack .stats .stats.donef .stats.donefavg .stats.donezb .stats.donezbavg .stats.avgofall -anchor w -padx 10 -pady 1    
    
    label .clock -text "0.00" -font {Courier 20}
    label .scramble -text "Have fun and alot of practice with LL-trainer v$version" -font {Courier 15}
    
    set times {}
    set dsession 0
    label .donesession -text "Done this session: 0"
    #label .yourbest -text "Your last time with this scramble: n/a"
    label .yourbest -text ""

    frame .buttons
    
    foreach c { scramble start accept discard } {
	button .buttons.$c -text $c -command $c
	pack .buttons.$c -side left
    }
    set imagecube [canvas .imagecube -width 200 -height 200]
    pack $imagecube
    set initstate {}
    set state $initstate
    for {set i 0} {$i < 54} {incr i} {
	lappend initstate $i
    }
    set state $initstate
    cubeimage
    cubestate

    menubutton .mb -text Configure -menu .mb.menu
    pack .mb -padx 10 -pady 10

    set m [menu .mb.menu -tearoff 0]
    $m add cascade -label "Spacebar control" -menu $m.sub1
    set m2 [menu $m.sub1 -tearoff 0]    
    $m2 add radio -label "Start Accept Scramble" -variable leader -value 1
    $m2 add radio -label "Start Accept Start" -variable leader -value 0
    $m add cascade -label "Countdown" -menu $m.sub3
    set m5 [menu $m.sub3 -tearoff 0]    
    $m5 add radio -label " 0 sec" -variable mycountdowntime -value 0
    $m5 add radio -label " 3 sec" -variable mycountdowntime -value 3
    $m5 add radio -label " 5 sec" -variable mycountdowntime -value 5
    $m5 add radio -label "10 sec" -variable mycountdowntime -value 10
    $m5 add radio -label "15 sec" -variable mycountdowntime -value 15

    $m add cascade -label "Show scramble" -menu $m.sub4
    set m6 [menu $m.sub4 -tearoff 0]    
    $m6 add radio -label "On" -variable piccube -value 1
    $m6 add radio -label "Off" -variable piccube -value 0

    $m add cascade -label "Color scheme" -menu $m.sub2
    set m3 [menu $m.sub2 -tearoff 0]
    $m3 add cascade -label "BOY" -menu $m.sub2.sub3
    $m3 add cascade -label "Japanese" -menu $m.sub2.sub4
    set m4 [menu $m.sub2.sub3 -tearoff 0]    
    $m4 add radio -label "U yellow" -variable cubescheme -value { yellow red green orange blue white }
    $m4 add radio -label "U White" -variable cubescheme -value { white orange green red blue yellow }
    $m4 add radio -label "U blue" -variable cubescheme -value { blue yellow orange white red green }
    $m4 add radio -label "U green" -variable cubescheme -value { green white orange yellow red blue }
    $m4 add radio -label "U orange" -variable cubescheme -value { orange yellow green white blue red }
    $m4 add radio -label "U red" -variable cubescheme -value { red white green yellow blue orange }


    set m5 [menu $m.sub2.sub4 -tearoff 0]
    $m5 add radio -label "U blue" -variable cubescheme -value { blue red green orange yellow white }
    $m5 add radio -label "U green" -variable cubescheme -value { green white orange blue red yellow }
    $m5 add radio -label "U red" -variable cubescheme -value { red white green blue yellow orange }
    $m5 add radio -label "U orange" -variable cubescheme -value { orange blue green white yellow red }
    $m5 add radio -label "U white" -variable cubescheme -value { white yellow orange green red blue }
    $m5 add radio -label "U yellow" -variable cubescheme -value { yellow blue orange white red green }
    $m add separator    
    $m add command -label About -command About
    
    label .times -text "$times" -width 100
    label .average -text "Average: 0.00" -font {Courier 15}
    grid .mb -row 0 -column 0 -sticky nw
    grid .pic -row 1 -column 0 -sticky nw
    grid .train -row 1 -column 0 -sticky n
    grid .stats -row 1 -column 0 -sticky ne
    grid .imagecube -row 2 -column 0 -sticky n
    grid .clock -row 3 -column 0 -sticky n
    grid .yourbest -row 4 -column 0 -sticky n
    grid .scramble -row 5 -column 0 -sticky n
    grid .average -row 6 -column 0 -sticky n
    grid .times -row 7 -column 0 -sticky n
    grid .buttons -row 8 -column 0 -sticky n
    grid .donesession -row 8 -column 0 -sticky ne
    
    

    if { $leader } {
	focus .buttons.scramble
    } else {
	focus .buttons.start
    }
}




set imagemain "R0lGODlhyAB6APcAAAIFAAgICA0NCBAQEBUVEBgYGBghGCEYGCEhGCEhISEp\
ISkhISkpISkpKSkxLTExKTExMTE5MTE5OTk1MTk5OUJCOUJCQilKlDFKlDlK\
lClKnDFKnDFSnDlSnDlanDlapUdHQkpKSkpSSlJOSlJSUkZanEddpVJenFpS\
UlpaUlpaWlphimhlY2RmfahkgNdLT+chIechKecpIecpKecxKecxMec5Mec5\
OeREP+RKR+dSTudaUudaWudjWudjY+drZzmcQmtza3Nza3N4cDyfR0KcSkSl\
TFusYpyMa71zY96EQtCBWtbWY97WY9bWa97eQud7MeeMTudza+eUa+eca+fW\
Y+feQt7eSuHhT97iWufhVOfnWt7eY+ThZefnY+fna3t4dW12n2J2r3WKuIiF\
hp+MgJmFkoePuoi1iJ+omKmpn6rBm5CcwZilyqvEr6mzzed3c9udlsTHhbi4\
sL+7ubzAzOe1tc7KzNvjkdHev9Tezt7ezszR3dfa4ODj2OHh6+9zKe97Ke97\
Me+EMe+EOe+EQu+MQu+MSu9aUu+UUu9aWu9jWu+UWu+lWu9jY+9rY+9ra+9z\
a+9zc+97c+97e++Ee++EhO+MhO+UY++Ua++cY++gZ++la++MjO+WkfOcnO+l\
e++1be+te/Czie+lnPOloPO9lPGvp++9nPPGnO/be+/pke/vjO/vlO/vnO/v\
pfSyr/O5te/Bufe9ue/OrffOrfPOtfHIv+/WufHTw/Peve/vsff3se/vvff3\
vefvxvfGxvTQy+/exvzW0/fexu/ezvfezu/e1vfe1v/e1u/e3vfe3v/e3u/n\
zvfnzufn1u/n1ufn3u/n3v/n3ufn5+/n5//n5+fn7+/n7+/vxu/vzufv1u/v\
1vfv1ufv3u/v3vf3xvf3zvf31u/33vfv3vf33vf/1v/73ufv5+/v5+/35/fv\
5/f35//v5///5+/v7/fv7/f37/f/7//v7//37///7+fv9+/v9+/39/f39//3\
9///9/f3//f////3/////yH+FUNyZWF0ZWQgd2l0aCBUaGUgR0lNUAAsAAAA\
AMgAegAACP4AvwkcSLCgwYMIEypcyLChw4cQI0qcSLGixYsYM2rcyLGjx48g\
Q4ocSbKkyZMoU6pcybKly5cwY8qcSbOmzZs4c+rcybOnz59AgwodSrSo0aNI\
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\
ys8TAQEAADs=
"

proc About {} {
    global version
    set imageme "R0lGODlhfgCOAPcAAAAAAAAGCAQJBA0IBgAYAAoSCAYeCBAcBAQMGBAQEBAY\
EBAhEAgYGBAQGAoUHwgZLBgRDBghDBAnDBApGBgpABgpCB4aDigdDBghGBAh\
IRgQIRQbKhghIRghLR8fHSseHRkyBB4xFSM2DSFCEBApISkpGBgpISA3Ghgp\
KSEpISEpKSExISkpJSkxISExKSE5JTI1EjIzISkxKUIxITEpKTExKTktKUIt\
KS1GEDZKGjlCITlPISs8KTk8KTtGKTlUKRAmNhkqPiEhOSEpNSUtNSkxMSUp\
QiE1RikxOTEuNikxQjExQik5MSk9OSk1SjExSjE5MTE5OTsvMzw5M0I5OTE5\
Qjk5QjE5SjFCMTlCMUJCMTFCOTFGOT1EOTlPOUJKQiE1Uik5UilCUilCWjE5\
UjE5WjFCSjFCUjk8TDlCUkJCSkJCUjFCXjlCWjlCY0JCWjlKTjFKWkJKTjlK\
WjlSWkJKWjFKYzFSYzlKYzlSY0JKYzFSazlKazlSa0JKazlac0o3KkpEQUdS\
LkpKRkJaIEJXNkpSOUNVRUpSSkhOVEpSWkJSY0pKY0pSY0JSa0pSa1Y0KVVK\
NEtaLVZWOVZGQlJWQlNQSlJPW2c1LWdGOWJUNmNQSXdAOnVSSoRMRZBMSUdj\
J0llOVRlNVpxNk9gSlpkQ1JwR190QlRgTlNfWkJaa1JgaWNeSmNeXl5zSl5v\
W3FeUGtxTnJkX3NwZGmCSm2DU3F8YXOJYoRgUo5fUpVfWKFhXIpvXaBuXX+Q\
XpmDYkJSc0pSc0Jac0pac0dgdU5fe1Jjc1Jje1Joe11od1ZphlprjHFtdpZt\
a6dta61za2p4fX6GdIuEdYmddZx9b6h7bpuIepqifFZzjGV5j3N/kJWbjXKD\
oYmTo5inop2wwbN3b7CAc6+Kd7GMgr17c7mLgsOHf8yOhbOZjMOZjcyYjdeW\
kL2iltqflrm5mNuqnLu1p9itpMC8udi7tOurp+q3sd/Btu/Bt8XSu9reyPDL\
w+/bztjj5vHx4vzl4vv58ywAAAAAfgCOAAAI/gALpIDCAkMKDAoKyFCgAKFB\
DAlYdIFCMYWMFQoWYHDBEQOTFC5SrPDS4gCBLD5I8dBxiBQWAxIkTPDipYAJ\
L1hSFHCBwaGJFCBdqHDBhOOWKhyzrOAB5VAWRF0wvMqiAAuGFS1qtBBwoEBP\
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\
KKRMSTvh0tW06SdPnDJhwpRpxlWjmDrlqlYN3bt49vaBXRdOXKccknaMcjeK\
1o8dp0RNw5fvlrtpvqbdumaq0I9Qgmq58qXjRyx3rrLAaOHjQAgYPG4VKnVr\
MC1ThGiNMiVKpQ8d/jF0aDEUMxKgQIa+zJKGzto8eOzYUWvmCddtWUOTZupk\
O9cuXb125YrKCRPSrFo92e7lrKe7e/forTu3q1cuTaPWXjuVI22sUnmn1ZqW\
mC6+HJ1v3fLF3p2oh6hckRLkBcYPHaamxSqUsFYoUU7hTLtTBClEEB98EEQL\
Bim5YRZSXpGGFViaiY2dbZqpDZdMbrjgQ0iOS8o2XZx55rqopuKkt1w0dIYa\
Z3qpJpx0wJrnnnrOWYecT37JDgZaaqFFFCIlcQUfgvZzhbBCTjGFPVfYu2bK\
WnbwxYcKDvjBlUpICW+yQvbbZhpTQAnlP4ZcEaUSQSqZxAdDImFlFlts/pll\
m330oSYedqwZhxpdOLkhxBCnOgoTTjzp5RlywkGRkxU70cVFZ8IpJxxzymkn\
HnfiqYcectahxxNxZjiFEF9wIESSVQWJBR+9YmFvmmlyGMGXUAT0xZ18BLqG\
Fnx2IGUHESrIoRCNrgmlEFe8qRUwEG7pTocEC/FhkkoMKcUQSqbppx9v7LGH\
z3niQYcaXjpBtJOpeOukE6kw8SQXcMox55xwdFkO3hV9a4acc9RZRx12wIpn\
nlHJoWcXcTSJ5SRVifRFlGt6ncYWV3TwJiFCahkFFFoIIWSgaQjpFYcccPAi\
hxNCiaUWU0IQJIRjf1CpkBxsvgiGltpkhZVK/nrIp59/8uGpGnXiMZcaXHJh\
qhldeNEFF3j59cSZcs4JOJwTdcmFuOV02QUcc9ZZ55112FG63Ho8+eRecXgJ\
EhRRRjlFLhHycYc9bwghQAdXctihJFFOGsUXkQfyJQcePgrFlUJG8EECH0jR\
gQdBWtDBoRB8gEEQHmCQSUFWSqlkm36Q1FvscM6JJx1rqKEGHA2bprq4FXUB\
R2B11DlHHHCccaaZXprahdF71WlneYPpuYfHZ9pJ5xdfYvHlJF9OwQEHgtzx\
ToBbpvHByFpu2exuUXy5pq3Fd/jhFld+EMEHHhjfyIcINiLFlh98KIQHasEp\
BjFgkyHyAQ+JxKIT/unQxb2Uhg5xWKoaU+uNJ7ayFd2dY3nt6N05yiE84T1D\
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\
QAAAOw=="

    toplevel .about
    message .about.msg -justify left -text "LL-trainer V$version\nBy Alexander Ooms & David Barr\nPractice tool for Last Layer\n\nStarted: Jan-2006\nRelease: 17-April-2006
                                                  \nWe hope this tool will improve your Last Layer times. Happy cubing to all."
    set imageme [image create photo -data $imageme]
    label .about.picture -image $imageme 
    pack .about.msg .about.picture
}

bind . <Key> {
 lappend egg2 %K
 if {("%K" == "space")} { set egg2 "" }
 if {("%K" == "Tab")} { set egg2 "" }
 if {("%K" == "Delete")} { set egg2 "" }
 if {$egg2 == "e r n o"} {   
  erno
  set egg2 "" 
 }
 if {$egg2 == "a l e x"} {   
  set cubescheme { yellow blue red green orange white }  
  set egg2 "" 
 }
 puts $egg2
}

proc erno {} {
 set imageerno "R0lGODlhYQB7APcAAAAAAIAAAACAAICAAAAAgIAAgACAgICAgMDAwP8AAAD/\
AP//AAAA//8A/wD//////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\
AAAAMwAAZgAAmQAAzAAA/wAzAAAzMwAzZgAzmQAzzAAz/wBmAABmMwBmZgBm\
mQBmzABm/wCZAACZMwCZZgCZmQCZzACZ/wDMAADMMwDMZgDMmQDMzADM/wD/\
AAD/MwD/ZgD/mQD/zAD//zMAADMAMzMAZjMAmTMAzDMA/zMzADMzMzMzZjMz\
mTMzzDMz/zNmADNmMzNmZjNmmTNmzDNm/zOZADOZMzOZZjOZmTOZzDOZ/zPM\
ADPMMzPMZjPMmTPMzDPM/zP/ADP/MzP/ZjP/mTP/zDP//2YAAGYAM2YAZmYA\
mWYAzGYA/2YzAGYzM2YzZmYzmWYzzGYz/2ZmAGZmM2ZmZmZmmWZmzGZm/2aZ\
AGaZM2aZZmaZmWaZzGaZ/2bMAGbMM2bMZmbMmWbMzGbM/2b/AGb/M2b/Zmb/\
mWb/zGb//5kAAJkAM5kAZpkAmZkAzJkA/5kzAJkzM5kzZpkzmZkzzJkz/5lm\
AJlmM5lmZplmmZlmzJlm/5mZAJmZM5mZZpmZmZmZzJmZ/5nMAJnMM5nMZpnM\
mZnMzJnM/5n/AJn/M5n/Zpn/mZn/zJn//8wAAMwAM8wAZswAmcwAzMwA/8wz\
AMwzM8wzZswzmcwzzMwz/8xmAMxmM8xmZsxmmcxmzMxm/8yZAMyZM8yZZsyZ\
mcyZzMyZ/8zMAMzMM8zMZszMmczMzMzM/8z/AMz/M8z/Zsz/mcz/zMz///8A\
AP8AM/8AZv8Amf8AzP8A//8zAP8zM/8zZv8zmf8zzP8z//9mAP9mM/9mZv9m\
mf9mzP9m//+ZAP+ZM/+ZZv+Zmf+ZzP+Z///MAP/MM//MZv/Mmf/MzP/M////\
AP//M///Zv//mf//zP///yH5BAEAABAALAAAAABhAHsAAAj/AA0VEmgoTEFY\
hgQWejElxRSGU7RQ0RJRC0WKVF5k3MhQY0eOWj52tGix0MAtBAcaimUIlslC\
sVSlJPjHpMItNgvBwvmnoCGUJ7e8eIGCKJWJFiNGfEHxoVORT6MydDj1ocSS\
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\
P/vpHhAAOw=="

 toplevel .erno
 set imageme [image create photo -data $imageerno]
 label .erno.picture -image $imageme 
 message .erno.egg -justify center -text "The Cube is an imitation of life itself \nor even an improvement on life. \nThe problems of puzzles are very near the problems of life, our whole life is solving puzzles.\n If you are hungry, you have to find something to eat. But everyday problems are very mixed\nthey're not clear. \nThe Cube's problem depends just on you. \nYou can solve it independently. \nBut to find happiness in life, you're not independent. \nThat's the only big difference.
\n\n\[Ernö Rubik\]"
 pack .erno.picture .erno.egg
}

proc averagefzb {} {
    global averagezb averagef avgf avgzb
    averagef
    averagezb
    if {($avgzb == "")} {
	set averagef [format "%.2f" $averagef]
	.stats.avgofall configure -text "Average F/ZB/COLL : $averagef"
    } elseif {($avgf == "")} {
	set averagezb [format "%.2f" $averagezb]
	.stats.avgofall configure -text "Average F/ZB/COLL : $averagezb"
    } else {
	set avgf [expr ($averagef + $averagezb) / 2]
	set avgf [format "%.2f" $avgf]
	.stats.avgofall configure -text "Average F/ZB/COLL : $avgf"
    }

}

averagef
averagezb

#set stickers "yyoyygybbbyrrrrrrryyygggggg"
#set stickers [split $stickers {}]
#set stickers [string map {y yellow r red b blue g green o orange x grey w white} $stickers]

timerinit

if {!($avgf == 0)} {
    set avgf [expr ($avgf) / $counterf]
    set avgf [format "%.2f" $avgf]
    .stats.donefavg configure -text "avg: $avgf"

}
if {!($avgzb == 0)} {
    set avgzb [expr ($avgzb) / $counterzb]
    set avgzb [format "%.2f" $avgzb]
    .stats.donezbavg configure -text "avg: $avgzb"
    
}








