#!/usr/bin/tclsh

#####################################
# https://www.speedsolving.com/threads/cfop-a-tool-to-practice-cross-to-transition-to-f2l.52731/ 
# This the forum topic about the cross trainer but the links are not working any more. Here i have tried 
# to get the trainer back from the archives.
# https://web.archive.org/web/20180801014617/https://christianvaughngames.com/C2F2L/
# The first trainer was made by Net13 and later anupdate by Christian.
# [CFOP] A tool to practice cross and transition to F2L
# How to use:
# Go here: http://net13.net/Cube/Cross/[1]

wm attributes . -topmost 1
wm resizable . 0 0

label .st -text "Cross Trainer V1.0" -font {arial 15} -width 50 -height 2

frame .buttoncross
foreach { b c } {"cross 1" 1 "cross 2" 2 "cross 3" 3 "cross 4" 4 "cross 5" 5 "cross 6" 6 "cross 7" 7 "cross 8" 8} {
  button .buttoncross.$b -text $b -width 10 -command "scramble $c"
  pack .buttoncross.$b -padx 10
 }

 label .clock -text "0.00" -font {Courier 20} -height 1
 
 set times {}

 frame .buttons 
 foreach c { start accept discard reset} {
   button .buttons.$c -text $c -width 10 -command $c
   pack .buttons.$c -side left
 }

 label .times -text "$times" -width 55 -height 2
 label .average -text "Average: 0.00" -font {Courier 15}

 grid .buttoncross .st -sticky nsew
 grid ^ .clock -sticky nsew
 grid ^ .average -sticky nsew
 grid ^ .times -sticky nsew
 grid ^ .buttons


proc scramble { moves } {
global moves2
foreach { b } {"cross 1" "cross 2" "cross 3" "cross 4" "cross 5" "cross 6" "cross 7" "cross 8"} {
  .buttoncross.$b configure -background grey85
 }

set moves2 $moves
    if {$moves == 1} {
	set b "cross 1"
	.buttoncross.$b configure -background green
	set scramble {
	{ "B2 U' B2 D2 L' D' R2 B' R2 U' F' R2 D2 F D2 F' L2 U2 F D2 F'" }
{ "U' L2 B2 D F2 L2 U2 L2 R2 F2 L2 F' R2 U B2 D2 B' D' L2 B' D2" }
{ "R2 F2 R2 B L2 F U2 F U2 B L2 R' U' B' U D B2 R F2 D2 F'" }
{ "D2 B L2 B' D2 B D2 R2 B L2 B2 R' B' U2 D F' U2 R D' B" }
{ "R D R' D2 L2 B U B R2 L2 D F2 L2 F2 D2 U' R2 B2 U2" }
{ "D B' L B R2 D' R' B2 L' D B2 D' U L2 D' L2 B2 D' F2 R2" }
{ "F2 U2 L U2 L' B2 R F2 L R D2 F R2 F D B L D2 R2 U2 D2" }
{ "F2 U B2 D B2 D' F2 U2 R2 B2 R2 B' U' D' B L B2 U2 D L2 R" }
{ "F B R2 D2 F' R2 F' D2 R2 B D2 R' U L' U F2 L' U' L2 D'" }
{ "R2 B D2 L2 D2 B2 D2 B' R2 B2 D' L' D2 B2 L' D' L2 R' U2 F" }
{ "B R2 F' R2 F' L2 D2 F' U2 F2 U2 L U2 R2 D B U' L D' L" }
{ "F2 L2 F2 D2 R2 D' F2 D B2 D F2 L' U2 D2 F2 L2 B' L2 U R F" }
{ "L U2 L' F2 R' D2 F2 B2 R D B2 R' B L2 F U' B L2 B'" }
{ "B U R U R2 F2 R' D' R F L2 F2 U' L2 U' R2 U' R2 L2 U' R2" }
{ "L2 F2 U' R2 D2 R2 U2 B2 R2 F2 D B' R U L B' R F' L' D B'" }
{ "F2 R2 U' F2 U' D' F2 R2 B2 L2 D B' L2 U' F2 L' B' L' D F' B'" }
{ "B2 R' F2 U2 L U2 R' U2 R F2 U' R' U' R U' F L2 U2 B2" }
{ "F R2 U' L U B2 L' U L U2 B2 R2 B2 L2 D2 F' L2 B' R2" }
{ "F2 R D2 U F' U B D2 B R2 B2 U2 R' L2 B2 L D2 B2 D2 F2" }
{ "R2 U' F2 D B2 D B2 D2 R2 D L2 F' U R' U2 B2 D' L F2 U2 L'" }
{ "D' R2 U D L2 F2 D F2 D' R B L2 F D2 B D' L U" }
{ "R2 D L2 U2 D R2 U2 L2 F2 L2 D L' U' R' D' R' F B2 U D2 R2" }
{ "L' B2 R' U2 B2 L R D2 L D2 F2 U L' D B L' D B D' L'" }
{ "F L2 U2 D2 F L2 U2 B D2 F2 L2 U' B' U2 D' R' F2 U F2 B' D'" }
{ "B2 D2 L2 B' U2 D2 R2 B R2 F B L D2 B' R' F2 B R B2" }
{ "F' U L2 U B R2 B2 R' D' U2 F2 L' B2 R2 U2 L' B2 L F2 R2" }
{ "F' U2 L2 B' D2 F' R2 B D2 B2 L2 D' B' R U2 B2 L U2 D' R'" }
{ "U2 L2 F U2 R2 U2 B' D2 B2 U2 R2 U' D' R' D' L2 U R2 B' R2 B'" }
{ "U2 L2 B2 D2 B R2 F2 R2 U2 F' U2 D' L' U F2 B' U' D' L2" }
{ "U2 R' U2 F2 D2 F2 R U2 D2 L2 B2 U L' F' L2 U L' F U L'" }
{ "R' B D' R2 L D B2 R2 L B' R2 B2 L2 F R2 F U2 B L2 U2" }
{ "F2 L2 D' B2 U' R2 F2 R2 D F2 U' L' U' L F' U' R' D R' U' D2" }
{ "D2 B2 U' F2 U F2 L2 D2 R2 U R2 F L U' R U' L' F' D2 F2 B2" }
{ "D' R' F D L' D' L' F D2 L2 F2 U2 L2 F2 R D2 L F2 L'" }
{ "D' R D' U2 R D2 B L2 D' L2 U2 L2 F2 L2 F2 D2 F' R2 L2 F2" }
{ "U L2 U2 B2 L2 U L2 F2 L2 D F' U' F2 R U2 F2 U2 R2 U' B D2" }
{ "B2 L2 R2 B2 U' B2 U L2 F2 B2 D' R D' R D2 B' L' U' R' F2 R'" }
{ "L2 B2 U2 L2 D' L2 D' F2 L2 R2 U2 L' F' B2 R U' B2 R2 F U2 D2" }
{ "U2 D2 R F2 B2 R B2 D2 B2 U2 R2 U' R2 F U' R2 F' U' B2 U2 B2" }
{ "D2 L2 U2 R F2 U2 F' L2 D R2 B' U2 B' L2 F' L2 F2 D2 L2 U2" }
{ "F' U2 R2 B U2 F2 D2 L2 R2 B L2 U' B U R B U2 L2 B' D R" }
{ "L2 U2 F2 U' R2 F2 U' F2 L U2 D' R2 F' D R F U F" }
{ "R2 B2 U B2 U2 D' F2 D B2 R2 D' F' B' D F U2 R' U F' L' F2" }
{ "B2 R2 D2 L2 U F2 D2 R2 F2 R2 D' F' L2 D B R B' U F' L F'" }
{ "D2 F2 U2 L D2 L' F2 L2 B2 L R2 U' R' D F' L2 D F2 L B2 L" }
{ "D U2 F R L' F' R D F' D B D2 B' D2 B F2 R2 L2 D2 R2 F" }
{ "D' R' F' U2 B' U F' R F L2 D2 F2 D B2 D R2 U B2 L2 U'" }
{ "R2 B2 L2 U2 F2 B2 U' F2 U' D2 L R2 B' L B' L U2 F R' D" }
{ "U2 F' B' L2 R2 B2 U2 R2 F' L2 B' R' D B2 R D' R2 B2 R2 U2 B'" }
{ "F2 L F2 L2 F2 U2 R U2 L2 B2 D2 B L' U B2 U' B D2 F2 L" }
{ "F2 R2 U2 L F2 B2 U2 R' B2 L D2 B' U2 L F2 L' B' D" }
{ "F2 U R2 D' B U R' U2 B L2 B2 D2 R2 U L2 D' U' R2 F2 D2" }
{ "R2 U2 L2 R' B2 L D2 F2 B2 D2 R U' L D2 B' U R' F2 R' U2" }
{ "D2 L2 D R2 D B2 U B2 L2 B2 L2 B U' F D2 L U D2 F' L' B" }
{ "R2 F2 D' F2 B2 D' R2 U D L2 U2 B' L U' D F U2 B2 R2 D' R" }
{ "U2 R2 U2 D2 B D2 F' L2 F R2 D2 L D L2 B L' R' U F2 U L'" }
{ "U2 F2 B2 U B2 U L2 R2 B2 R2 U' F' L U' R2 F2 U' L' B L R" }
{ "L' D2 U' R2 L F R' U' R B D U' F2 R2 U2 L2 D R2 D F2 L2" }
{ "F2 U F2 L2 B2 D2 R2 D' R2 F2 U R' B R B2 U L F2 D R D'" }
{ "L2 F' L2 D F' R' D U2 R' F' D2 F R2 F2 D2 U2 B' U2 R2 B'" }
{ "R B' L2 B2 U F2 R' B2 U F U' B2 D U2 B2 L2 B2 F2 U R2" }
{ "B L2 B' R2 F' R2 B D2 B2 L2 U2 D L R' D F L F L D2 B2" }
{ "L2 D R' D L' F L' B' U B' D2 B R2 U2 R2 F' L2 D2 R2 B" }
{ "L D2 R' B2 U2 B2 R B2 R' D2 L' F' U R2 D L D F L2 U'" }
{ "U2 L2 B2 D' B2 D' R2 B2 U2 L2 R F' U2 L2 D L2 B U2 F'" }
{ "F2 D2 F2 R2 D2 R2 B' R2 F L2 F U' R F U' F' U' L2 D2 F2" }
{ "D' B2 D2 B2 R2 B2 D2 R2 D R2 D' R B2 R2 D' R2 U' D2 B' U D" }
{ "R' B2 R L' B' R2 B D2 U2 L' D2 B2 F2 R2 U2 B2 L U2" }
{ "R D' L D2 L' B D' B' R L2 B2 R B2 R B2 L' B2 D2 L2" }
{ "F' D U2 B' R F2 D' F R D2 F R2 B2 R2 D U L2 F2 D' U2 R2" }
{ "L' D B R F' R D R D' L2 U2 F L2 B' U2 F' R2 F2 D2 L2" }
{ "F' R' B' L2 D' B R2 L2 F L' B2 U2 L2 F2 U L2 D R2 F2 L2 U" }
{ "F2 U2 B2 U2 B' D2 R2 B' R2 D2 B2 R' D B' D2 R' F' R2 B' D2" }
{ "F2 D2 L2 R2 F D2 R2 F2 L2 D2 B' R' F' R U F2 U F' L' D B" }
{ "R2 L2 U F' D' R' U' R' L' F2 U R2 U B2 L2 U2 F2 R2 D' L2" }
{ "R2 U2 F D2 F2 D2 F U2 F' D2 F L' D' L2 R2 D B2 R' B2 D" }
{ "B2 D2 R2 B' R2 U2 F' R2 B' U2 B2 D' F2 D L' D F' U' R' F R2" }
{ "F2 D' R2 U' F2 D R2 B2 L2 U2 F B R F D' B2 U F U' R2 D'" }
{ "F U R2 L D U' L' B U2 B F2 L' D2 L' F2 R' D2 R' F2 L' D2" }
{ "F D L B D F2 D U R' U L2 B L2 D2 R2 L2 F2 U2 F' D2 U2" }
{ "D2 F' R2 B L2 B2 D2 F' L2 U2 B L' B' D2 B2 L2 D F D2 R2" }
{ "R' F' R F R' D U F U' R' L2 B2 F2 D B2 U' R2 F2 L2 B2 D2" }
{ "R' U2 L' U2 D2 L2 B2 R' B2 U2 L2 D' L2 R D' F L2 F' U' B2" }
{ "L2 F2 U B2 R2 D' F2 U B2 D' L2 R B2 U' R2 U D F U2 B' L2" }
{ "L2 D2 R2 B2 U F2 R2 D' B2 R2 F2 B U D2 L' B R2 D' B L' B2" }
{ "L B' D2 L B2 D B U2 L B2 F2 R2 U' F2 R2 F2 D' R2 F2 U" }
{ "D2 F U2 L' F2 R2 U F' L B' D2 R2 B L2 D2 R2 B' L2 B F'" }
{ "R2 U D F2 U' D2 B2 D2 F' B' L U B' R2 U2 L' B D R" }
{ "B D2 L2 F' R2 F2 D2 R2 F B U2 L' D F2 R2 F U2 R F L2 R2" }
{ "F2 R2 U' L2 F2 L2 B2 U D2 F2 U' L F2 B' R D' B' L2 U' D'" }
{ "U F2 R2 D R2 U B2 U2 D' B2 D R' F L' U' B2 L' D F' R' D'" }
{ "L2 U2 F2 U2 F2 L2 B U2 D2 B' U2 D L2 F L2 D B'" }
{ "R2 B2 R2 B L2 U2 B' L2 R2 U2 F R' B2 L B2 U B2 L2 F2 L'" }
{ "B2 U2 L2 F U2 L2 B2 L D' F2 U2 B2 F2 R B2 R' L D2 B2 R2" }
{ "F' U2 F U2 B D2 R2 F' B2 R2 D' B' D2 F' L R D' L' R' F2" }
{ "F2 U2 R2 D L2 D2 B2 R2 F2 D2 R2 B U B R B R D" }
{ "B2 L' U2 L D2 B2 D2 F2 D2 L2 R B' L' R' D2 B' D' B' R2 D' R'" }
{ "B R2 B' D2 B L2 B' U2 B L2 D F2 U2 L R2 B L' R2 U2" }
{ "R' D2 L D' B U F2 L2 D R F2 R' U2 F2 R' U2 L' U2 L2 U2" }
{ "U2 R2 U2 R2 F2 R2 U' R2 U' B2 U B U2 B D L D2 L2 F2 U'" }
{ "U' R' B2 F L U R2 D2 B L B2 D2 B2 D2 B2 R L U2 L B2" }
{ "L2 U2 R' F2 L' D2 R' D2 R2 U2 D' B2 D' R F2 B' R U2 R B'" }
{ "B2 D F2 B2 D F2 D2 L2 R2 D2 F' R2 F' R U R' D2 F L U2 B2" }
{ "B2 D2 L2 D2 B' D2 B2 L2 B U2 D2 L' D2 L B2 U' L D L2 U" }
{ "R' D' R' F' R L' B U2 R' B' L2 F' D2 L2 F U2 F' L2 B' D2" }
{ "L2 F D2 F R2 B' D2 R2 D2 F B R U B2 U R F L2" }
{ "R B' R' B2 D2 L B' D' R F R2 D2 F' D2 F U2 B F' D2 U2" }
{ "D2 R U2 L' F2 R2 B2 U2 F2 L' D2 B' U' B' D' L' D L' B' U'" }
{ "L2 D' L' B' L' D' B' F L B' U2 L2 U2 B' F' U2 L2 F2 U2 F'" }
{ "U2 R2 D2 F B R2 D2 F U2 B' L R2 B' R2 F' D' L D' L' B'" }
{ "L2 U2 B2 L' B2 L' F2 U2 R' F2 R2 U' B U F R' U2 R' B D2 F" }
{ "F2 R2 B R2 B' U2 B L2 D2 L2 R B D' B U2 D2 R2 D' L" }
{ "R F D R2 B F D2 B R L2 U2 F2 R2 D' F2 L2 D B2 L2 D'" }
{ "B2 L2 U R2 U2 D2 R2 F2 D F2 D' F' R' D R' F L2 U' R2 U2" }
{ "L2 D2 L2 D L2 D' R2 F2 D2 F2 D R D2 F U' F' B2 R2 U D" }
{ "B' L B' U B2 L2 D' R B2 L U' B2 R2 L2 D L2 B2 U L2 B2 F2" }
{ "R B R' L D R' L F' L2 B' U' B2 L2 D' L2 D B2 D2 R2 U R2" }
{ "B2 L2 D2 L2 R2 U' F2 D2 F2 D' B' D2 B L B2 L' U D B2" }
{ "B R' F2 D2 U2 R L2 U F' R U2 F2 R' L' B2 U2 L' U2 L' U2" }
{ "B R2 B L2 R2 F2 L2 B' U2 D2 L2 U' R F' U B2 U2 B2 D2 R2" }
{ "D2 B' L2 B L2 F L2 U2 F' B2 L2 D B' U2 D2 L U B2" }
{ "F' D' R2 B' R L2 F U2 R' B L2 U2 L2 B' U2 L2 F' R2 L2 F2" }
{ "D2 L U2 L F2 D2 F2 L2 U2 R' F2 U' F2 B2 R' B' D2 B D" }
{ "U2 L2 B R2 B2 D2 R2 B U2 R2 F2 D' L2 U R2 F' L' D L2 B2" }
{ "F' L2 F' D2 F U2 D2 F R2 B U2 R B2 U' F' D' B2 U' D2 R2" }
{ "D2 L F R' B R D L' F D2 B2 R' D2 L' U2 L' B2 R D2" }
{ "F2 D L2 U D2 L2 F2 L2 F2 R' D B L' R D' L' B L' U'" }
{ "L2 D B2 U L2 R2 U' B2 U' B2 D' F D' R2 F' R F' R' U2 F' B2" }
{ "B L2 U2 F U2 F' R2 U2 L2 F2 R2 D' B R F' B2 D' B2 R' F' D2" }
{ "B R2 U2 F R2 D2 B2 L2 R2 F' B' L' D2 R U2 D L D F' R2 B2" }
{ "R2 U D R2 D B2 R2 D2 L2 D' L2 B D F2 R2 D' B' D2 F' R'" }
{ "L' D' U2 B' R' B' D F2 R B2 U' L2 U L2 D R2 L2 B2 F2 U'" }
{ "D B2 D2 F2 U F2 L2 U L2 U R' B' D L' U B R2 F2 D B2" }
{ "B2 R2 D2 F2 L2 D2 F R2 F' L2 B2 L' R F' L' D F R' U B D'" }
{ "D B2 R2 U D B2 L2 U L2 D L2 F' D L2 R F2 D L' R' D' L'" }
{ "F2 L2 F' D2 F U B U' R2 U2 R2 D2 R B2 L D2 U2 L2 D2" }
{ "U2 L R U2 D2 R' B2 R2 F2 B2 U2 B' U' L2 U R2 U2 R F2" }
{ "D2 R2 U L2 F2 L2 U' L2 R2 U F2 B' U L' U' B' U' L' D R' D2" }
{ "L2 U2 R2 B D2 B' D2 F2 U2 R2 U2 L F2 D2 L D2 R' D' L U2" }
{ "R D2 F2 R U2 B2 R' U2 L F2 L' D' L2 R' F L2 F R2 F2" }
{ "U2 F' U2 B R2 D2 B U2 F2 L2 F2 D R2 D' R F U D2 F U' D2" }
{ "B2 U2 F R2 F L2 F2 L2 D2 L2 R' D B U L2 R2 F2 L' U'" }
{ "F2 U' F2 D' L2 B2 L2 U' F2 B2 D' F U B' D' B L D' B L' D2" }
{ "R2 U2 L2 D' L2 B2 R2 D' L2 U F2 B L B2 L' D2 R' B' D2 R2" }
{ "F' L2 F U' R U2 B D' B2 L' U2 B2 L B2 L' B2 R2 B2 D2" }
{ "R2 D' F2 U L2 U' D2 F2 U R2 F' D' B' U2 F2 U R' F R' F'" }
{ "F2 U B2 L2 F2 L2 B2 U D' B' L D L' U D' B2 R U' B2" }
{ "D2 L F2 B2 L' D2 R' F2 U2 D2 R' B L2 F2 D' R' B2 L R' B" }
{ "L2 F2 U2 B2 U2 D2 R' F2 L2 U2 R D F' R U' R' D L2 F2 B'" }
{ "U F2 U F2 R2 B2 D L2 U2 L2 D' L F R U' D' R F B' U2 D'" }
{ "U2 L B2 D2 L U2 F2 U2 F2 R B2 U' D' L F L B2 R2 U D'" }
{ "R2 U F2 U' B2 D2 F2 L2 D2 B2 D' R' D R2 F' D F2 D2 F'" }
{ "F' L2 U2 B D2 F2 L2 D2 B' D2 F' L' R2 U D2 R U' D L' F' B'" }
{ "F2 R2 U2 B2 R2 B' U2 L2 B' U2 B L' F2 D R D2 L2 D' L2 R' D" }
{ "F L' F' D' L' F2 L B2 R D' L2 D2 F2 U' B2 F2 U' F2 D' B2" }
{ "B2 L D2 F2 U2 D2 B2 R U2 R B2 U' B' L2 F' D' F B' U D2 R'" }
{ "F' R D' L2 F L F R L' D' L2 F2 D R2 L2 F2 D R2 D F2" }
{ "F' D2 F' U2 R2 F' L2 B2 D2 B' D2 R' D2 F' L U F' B' U2 B' R2" }
{ "R U R2 U B D B2 R2 F' R' B2 D L2 D L2 B2 D2 L2 D B2 D" }
{ "B D2 U2 R D' R D F U' R' D' L2 F2 U' B2 D2 B2 R2 U L2 D" }
{ "U2 B2 L2 B2 L' D2 L' F2 R' F2 R D' F' B D F R' B' U2 D" }
{ "U2 B2 R F2 R2 F2 B2 D2 R' F2 R F L2 F2 U D2 B L2 U R2" }
{ "D2 F2 R2 B2 L2 U' L2 D2 L2 F2 U2 L U' D R U B' L' B L D" }
{ "B2 D2 L2 R D2 L' U2 R' B2 U2 D2 B' D' B' D' R' D2 B U2" }
{ "R' L' D F2 R2 U2 L' F2 R B L2 U2 F R2 F D2 U2 B R2 B'" }
{ "U L2 B2 D L2 U B2 U L2 D L D2 R' U L F B' D' B' U' R'" }
{ "R2 U' F2 U B2 L2 D' L2 D R2 F2 R F U2 L' U L D L2 U R'" }
{ "B2 L' U2 L F2 L F2 B2 L U2 B2 U' D' R B U' L' R2 F' U' F" }
{ "D F2 D' B2 R2 B2 D2 B2 U' L2 F2 B U F2 L R' D' R' U' F' D2" }
{ "U B2 L2 D' L2 B2 D L2 U2 F2 D' F' U' B D R U2 L' F2 U B2" }
{ "F2 R2 F2 D2 R' F2 L' U2 L' U2 F2 D B2 D' L2 B U' D2 L2" }
{ "L' D' F2 D2 R F L' B2 F' L2 U2 L' D2 L' F2 L U2 L2 F2" }
{ "U' R2 U2 R2 F2 B2 U F2 U F2 L' D B2 L2 D2 F' D R' D2 F'" }
{ "B R2 U2 F2 R2 B U2 F' B2 R2 B' R B2 R F' U2 L B' D' B D'" }
{ "D' L2 B2 R2 U L2 U' D' F2 D' R F L D B' U2 F' R U' L' F" }
{ "F2 L2 B2 U' F2 R2 D R2 U' F2 D L' U D2 B' D B' D L R'" }
{ "D' B2 D2 L2 U R2 D' R2 B2 L2 B2 R' D R' U R B' U2 L2 F2 D2" }
{ "L F2 B2 L' D2 L' F2 U2 F2 D2 L2 D' R D' F L B2 U2 R2" }
{ "B2 U' B2 U' L2 R2 D2 L2 B2 R2 D' B D' L U2 B2 D B R2 B' U" }
{ "D B2 D L2 B D' L D L' F2 D R2 L2 D' F2 U L2 B2 D2 R2" }
{ "U' L2 D L2 F2 R2 F2 B2 U B2 U B L' B2 D2 B' D F2 B2 D' B" }
{ "U2 B L2 D2 R2 B D2 B' D2 B D L' U2 R' D L2 F' R2 D2" }
{ "B' D2 U' L2 U L' F' D' F R2 U2 R2 B2 R B2 F2 D2 L U2 L" }
{ "D2 R2 B U2 F' R2 D2 B' L2 U2 D2 L D2 L' B R D R' U2 F" }
{ "B2 U2 L2 B2 U2 L2 D' B2 D F2 R D' R' U2 R' B D' L U B2" }
{ "B' L2 B R2 B' U2 L2 U2 B' R2 U L U2 F U2 R' U R' U2 B2" }
{ "D' F2 D' F2 U2 L2 U B2 R2 B2 D' B' D2 R' B' R' U D' F' U" }
{ "L2 B R' D' U2 B' R2 B D L2 F R2 L2 B' U2 F2 L2 B R2 B'" }
{ "D F2 D F2 D2 R2 D R2 D' L2 D2 B R2 F B2 U' L B2 D R' B'" }
{ "D2 B2 D2 L F2 L' R' U2 B2 R U2 D' F2 D' B2 R F2 D R" }
{ "U R2 D' F2 U F2 D' L2 U' F2 D' B' L' U' R2 F' U2 L U' B2 D'" }
{ "F2 U L2 B2 R2 D' F2 D' R2 F2 R D2 F L2 R U B2 R2 F' L'" }
{ "R2 D B2 U D2 F2 R2 F2 B2 U B2 L' F' L F2 L2 U' B R2 B2 D2" }
{ "L2 B' U2 F D2 F' B2 R2 F2 U2 R' D L2 B U' L' D2 L' D B'" }
{ "F2 R2 B U2 L2 F R2 B2 R2 U2 R2 D F' L' F2 U' D' F' U L2" }
{ "D2 L2 B D2 B2 L2 D2 F2 R2 D2 B' R B R2 U' R' B2 L2 F" }
{ "D2 R' B2 U' L D B' D' U R' F' D2 B' R2 D2 R2 B2 L2 U2 B' U2" }
{ "U' L2 F2 U L2 F2 D2 F2 D L2 U L' F R2 D' L F' L U L2 B" }
{ "F2 D L2 B2 U L2 D L2 U B2 U2 R' B L' B D' L' R U" }
{ "B R D2 F2 R U' B L2 U' R2 L2 D2 B' U2 B2 L2 F2 L2 B U2" }
{ "U2 R2 U2 F' B D2 L2 B' L2 R2 F' D R B2 L D2 F' U D L2 F'" }
{ "R2 F U F2 R2 D U2 R U F U' F2 R2 B2 U2 F2 U' R2 D' L2 F2" }
{ "U R2 B2 L2 F2 U2 L2 B2 U2 D' R2 B' L2 R2 D' L2 R' D' R B2" }
{ "R2 D' L2 R2 D' B2 D' F2 R2 D' R2 F' L2 F2 R' U' R B' U R2 D2" }
{ "F' D' L' F2 D F' L' U2 R' B L2 B2 L2 B2 U2 F' L2 F' D2" }
{ "L' R' B2 U2 L B2 R D2 B2 L F2 B' D F' D2 B' R F D' L2" }
{ "L2 R2 F2 U L2 U D' R2 F2 U R' F' D B' U' B2 U F' U2 L'" }
{ "D2 R B2 R F2 L' R' D2 R2 U' F' U2 R D2 R U' F2 L D2" }
{ "F' B' L2 F D2 B U2 R2 B R2 U2 L' B' R2 D' B D' F' U2 D2" }
{ "B2 U2 F2 R2 D2 L' B2 R2 F2 D2 B2 U B D2 R' U L2 B2 U2 R' B2" }
{ "U2 L2 U' L2 F2 U' B2 R2 U2 L2 U' F' U' L2 F' R U F U' L2 B2" }
{ "L2 B' U2 D2 R2 B D2 L2 F2 U2 F' R D2 R2 B D L2 F L2 F'" }
{ "L2 F2 R2 U2 F2 B2 D' F2 U' R2 D2 L U D2 F' B2 U' D2 F' D R'" }
{ "D2 F' L2 U2 F U2 B U2 D2 R2 B' U' L' D2 R' U F2 U D2 R2 U" }
{ "F2 L2 F2 L' D2 L F2 D2 L' B2 U2 F' U2 B2 U B' U' D F D" }
{ "R2 F2 R2 B2 U D2 B2 L2 D' R2 F' U2 R B2 R' U' B' L2 B' D'" }
{ "D2 R2 F2 B2 U F2 R2 F2 D' R2 D' L' U2 B' D B2 U' L B U2" }
{ "U2 B' R2 B L2 B' U2 D2 R2 U2 D' B2 R B' U' B U' D2 R2" }
{ "L D' F2 U' B2 R F2 D B R2 F2 L2 F2 L2 D2 L2 D' B2 U F2" }
{ "D2 B2 U L2 D' R2 F2 D L2 B2 U' L' B' D' B L' D2 R' D' R2" }
{ "F2 U' R2 B2 D' R2 B2 U F2 D2 L2 R' F' D F U' R' F U' L2 U" }
{ "L2 F2 U' B2 D2 R2 B2 L2 D2 R2 U2 L U R2 U2 B2 D' L' D F' U" }
{ "R' B2 D' U' B U B D L2 U2 L2 D2 B2 R F2 U2 B2 U2" }
{ "U2 B2 R2 F2 B2 R2 D L2 D2 F2 L2 F' R2 U' L' R2 U B2 R' U R'" }
{ "L F2 U2 L B2 R U2 L B2 U2 R2 B' U' L2 F R' U2 F L D L'" }
{ "R' F L' D2 R2 U L B' R2 U2 R2 F2 L2 D' B2 D2 L2 B2 U'" }
{ "F2 D2 R2 U' L2 F2 U2 F2 R2 F2 U R B' D' F L2 F' U' F2 B2 D'" }
{ "F2 U' F2 L2 F2 D' F2 D' R2 B2 R U2 L' D R D2 B' L' R2 U' L'" }
{ "B2 U F2 L2 D' L2 U R2 B2 R2 D2 F' D' L' U2 R2 B' D' R2 B' R2" }
{ "U' R' B2 R' F2 D2 F' U F' R U2 F2 L2 B2 D R2 U B2 L2 B2 D2" }
{ "U2 L' B' F2 D' B F' L' D' L D F2 D L2 D' B2 U' F2 U B2 L2" }
{ "U R2 F2 R2 F2 U' B2 L2 B2 R2 F' R' F2 D L2 D2 F' D L2 D2" }
{ "D B2 R B' D2 L' U2 F L' D2 F' R2 F R2 D2 L2 D2 B' R2 F" }
{ "U2 R2 F2 U2 D R2 B2 R2 D' L2 B2 R' B' U' D2 L B U B L" }
{ "L2 F L2 B2 D2 F' U2 F' U2 B' U2 L' U D2 L' D2 F' L' U B L" }
{ "R2 F2 D' B2 D2 F2 D F2 L2 D2 F2 R U2 L F' U2 L B L B D2" }
{ "B' L D2 F R2 F' L' D2 R2 F D2 U2 B2 U B2 L2 U R2 D2 B2 D2" }
{ "F D2 L2 F L2 B' D2 B R2 F2 D2 R' F2 R2 U F U L2 B D'" }
{ "D' B2 L2 U2 F2 D F2 D F2 D' B2 L B2 R' U R2 B' U D' R2 F2" }
{ "D2 F L2 F L2 B2 D2 B' R2 U2 D' L F' L' F2 B' U L2 D2 B'" }
{ "B2 D2 L F2 L2 R' B2 U2 D2 L2 U' B L D' B U L' U R" }
{ "L' F2 L U2 R B2 R2 U2 R2 U2 F2 D L D B' D2 R2 B U' D L2" }
{ "F U2 B L2 U2 D2 R2 B' U2 B2 D' F' R F2 L2 D2 R' F U2 R" }
{ "B2 D2 R' F2 L' B2 L2 U2 B2 L' B' U B R F R F L2 B2 D" }
{ "U2 L2 R2 B U2 B' U2 D2 F2 B' L F2 R B' R B L' B2" }
{ "U2 L2 B2 D' B2 D F2 L2 F2 R2 U' R F' B2 U L F' U D' L2 F" }
{ "U' F2 L2 U F2 L2 D L2 D L2 R D L' U2 L2 F R2 D L U'" }
{ "U' B2 U F2 D' B2 R2 U R2 U' D' B R' D2 L' D' R' F U' L R2" }
{ "R2 B2 R2 F2 U2 F2 D' R2 U D L2 R' D' L2 R2 D' L' B U R2 B'" }
{ "R2 D F L U L' D U2 F' U2 B2 R2 D2 B2 F2 D' B2 D R2 U2" }
{ "U F2 D R2 F2 B2 U2 B2 D R2 D2 B' D' B2 R' F2 D2 R U' B' R" }
{ "F2 L2 U2 F2 D F2 U' L2 F2 L2 F' L U' R2 D' L' U2 B2 D B' R'" }
{ "R2 U2 B' U2 B' D2 L2 F' U2 B L2 D' B2 R' F R F R F2 R' B2" }
{ "B2 U R2 F2 D2 L2 D' R2 D2 R2 B2 L' F' R2 F2 D R2 U' F' L2 B2" }
{ "L2 D' R L2 F' U2 R' D' L2 B2 F U2 F D2 B R2 F' U2" }
{ "D2 L2 R2 D' R2 B2 U2 D2 R2 F2 L B' L2 B U' B' D2 B2 D2 F D'" }
{ "R2 U2 F2 R2 U' D L2 U R2 B2 D' F' D L' B' D B' L' F' B2 U2" }
{ "U D B2 D' F2 D L2 F2 D2 R2 B' D R B' U B' L' D F2 L'" }
{ "R2 U F2 L2 D2 B2 D' F2 B2 D2 R' B L2 R F L D2 B2 U' L'" }
{ "D2 R2 D2 L2 R2 F' D2 F' U2 D2 B2 R D2 R2 B' L' D' B' U2 D2 R" }
{ "F' D R' F2 D L2 B2 U F' U2 B2 L B2 R2 D2 R' U2 L D2 B2" }
{ "L2 U2 D' B2 U2 F2 L2 U' R2 B2 D' L' U2 L2 U' R2 F' D' F2 L B" }
{ "L D2 L B2 L' F2 L' B2 L' B2 L2 F' D' F' B' D L' F B2" }
{ "B' L2 D L2 D R' L' D R' F L2 D2 L2 D2 F2 D2 B' L2 B' L2" }
{ "R2 U2 L2 F2 R2 F R2 F' D2 F' L2 U L F U B U B' D' R2 B" }
{ "F' D2 B L2 D2 B2 L2 D2 R2 B2 D' L F' L' F' U' D F B" }
{ "R' D B U' R D B2 D' L F2 U2 B2 L2 B2 L2 U F2 U F2 D'" }
{ "B F2 R' B2 L' D L2 B D' L F2 R U2 R' B2 D2 R U2 F2 R" }
{ "B2 U2 L2 D2 B2 R2 B D2 R2 F D2 R F2 U R' U D' B2 R2 U B2" }
{ "D2 R' F2 D2 R F2 U2 D2 R' U' L' F2 B' L' R2 D' B D2" }
{ "B2 R F2 L F2 L2 U2 F2 R' U2 R2 F' B' U' R B U2 F' U F2 B2" }
{ "L2 D2 L U2 R' F2 U2 R D2 R D2 F' B D R' F2 B2 U' R' B R" }
{ "R2 D' F2 R2 U L2 D2 R2 U2 B2 U L D F L2 F' L U L2 B" }
{ "F2 D2 L2 R2 D L2 D' F2 U2 B2 D2 B' L F' U F L U2 F' D2" }
{ "U2 R' D2 L D2 L U2 B2 U2 L U2 D F' L U L F U' D2 B'" }
{ "U2 F2 R2 D2 L' U2 F2 U2 D2 L' R' U F2 B L R2 D' B2 U2 F'" }
{ "B2 R2 U2 D2 R B2 L2 U2 R2 D2 F U' L2 B' R2 D R' U2 B'" }
{ "U2 D R2 B2 U2 B2 U R2 B2 D L R U F' R' U' D2 R U'" }
{ "R' F2 D2 L' U2 L' D2 B2 U2 B2 R U' F2 L' F' B' D F R2 B' D" }
{ "F2 B2 D F2 D2 L2 F2 D2 R2 D B' D' B' D' R F2 U R' U2 B2" }
{ "R2 B2 R2 D' B2 U B2 U2 D' F2 D2 F' U2 R B' U' L2 B' D B'" }
{ "D2 L B2 L' B2 L2 F2 U B' D2 L2 F2 D U2 F2 U R2 U B2 L2" }
{ "D2 R2 F2 U' B2 D' L2 F2 D' R2 U2 R D R' F' D' L F' D L2 D'" }
{ "F D2 F' D2 B2 U2 R2 F' D2 B2 R2 U L' D' F R2 U' R' U L2 F'" }
{ "B L B2 F R2 D F' L' D B L2 U2 L2 B' L2 B' R2 B2 R2 L2" }
{ "F2 B2 D' L2 B2 U2 B2 U' R2 B2 D B' L U2 R F2 R U2 D' L D2" }
{ "U' L2 D' B2 D F2 R2 U2 F2 U' D' F' L U2 F' B U' B L U2 R'" }
{ "R' U2 R2 D B2 L' F' U F D2 R U2 R L F2 L' D2 L D2" }
{ "U F2 R2 B2 R2 U' B2 U2 D2 R2 B2 L' U' B2 R' F R' F U2 D" }
{ "L2 F2 D' L2 F2 D' L2 U2 R2 U' R' B2 L2 D2 F' R D F R B" }
{ "B2 U2 R F2 R' F2 B2 L D2 L R' U F2 L F' B2 U' F' L2 F2 R" }
{ "R2 U B2 U' L2 D' L2 D R2 U' F' L2 F D' F2 L' D L2 U2 B2" }
{ "F L D' B R2 U B' L2 F' R' D2 L U2 B2 L2 D2 U2 R' D2 F2" }
{ "D2 B2 U2 R U2 R' F2 U2 L' D2 L2 B' L2 F2 R B2 D' R' U2" }
{ "D2 F R' U' R B2 U F2 D L2 B R2 D2 B' L2 F2 D2 L2 B D2" }
{ "L2 U' F2 U' R2 U' F2 D2 B2 D2 F' U2 B' U L R' U F2 U' R" }
{ "U2 F D2 B' L2 F' U2 D2 R2 F' R' F' D R' F D2 R D B' D2" }
{ "D F2 R2 L' B2 U' R' F' R' B2 L' B2 R2 D2 B2 L D2 B2 R'" }
{ "F2 D' F' D' F' L' F L F' R2 D2 U2 R B2 L U2 F2 U2 L U2" }
{ "B L2 F2 B D2 L2 R2 F' B2 L2 B2 R U D2 B' L R F' B' L B'" }
{ "U2 F2 B2 U' F2 L2 U F2 D2 F2 U L' F' U F2 B2 D F U2 F2 R'" }
{ "D2 F U2 B R2 B' U2 F R2 D2 F2 U' F D R2 F2 L' U2 D' L U" }
{ "L2 R2 B2 U B2 L2 D' B2 D B2 D R U F L2 U2 D' B U B2" }
{ "U2 L2 U2 R2 F2 U' B2 D L2 D' R2 F' D F L' R' B L' D B' R2" }
{ "R U2 B2 L' R' U2 L U2 D2 B2 R' F U' R2 B2 U2 R D B' D2 R2" }
{ "L2 U F2 U2 L2 U F2 B2 D' R2 U B' R U2 R2 U' R2 D F2" }
{ "R2 F2 U2 B D2 L2 F' R2 U2 F R' B2 D2 R D R U2 R' D" }
{ "B2 R2 D2 L2 U2 F' R2 D2 F' D2 F2 L' B' D B2 L2 R F2 U L" }
{ "B' F2 R2 U F' U' F L2 U' R B2 L2 D2 U2 B2 R F2 R' U2 R'" }
{ "B L D R' L D' L2 D R' B D2 L2 F2 R2 U2 F' D2 B' D2 B" }
{ "D R2 U' F2 U' L2 B2 D B2 D2 R2 B U L2 R U' L2 D2 B' U' D2" }
{ "L' B2 F L' F D B2 F2 D F2 R2 F' L2 U2 B' U2 B' U2 R2 L2" }
{ "F2 L2 F' R2 D F2 L B2 U B F R2 B U2 F2 D2 B L2 U2 B" }
{ "F2 U B2 D B2 D B2 D2 B2 D' B2 L' F' L' R2 F L' D2 F2 B' L2" }
{ "L2 F2 U2 F' D2 F' D2 L2 B' D2 B' U F2 U' R2 F L D L2 F'" }
{ "F2 L2 F2 R2 D' R2 B2 D B2 U2 D' L' R2 D2 B U B U' F2 B2 D'" }
{ "F2 B' L2 U2 F' R2 B' L2 D2 B' U2 L' B2 U B' U' B2 U2 R2 F2 B2" }
{ "B2 U B2 D' F' D2 B2 F' R B2 F2 D B2 F2 L2 D R2 F2 D' B2" }
{ "D2 B2 R' D' L B' D R B2 D2 R2 D2 L' F2 R' L2 F2 L2" }
{ "U2 D' F2 R2 B2 R2 U L2 D' R2 D' L' U F L D' B' D L' B2" }
{ "B2 U2 L F2 U2 L D2 L U2 F2 U2 D B' D' L2 D' B2 R' B' U" }
{ "F2 R2 U2 L2 D2 B U2 F' R2 D' L' F D2 L R' D2 F2 R' D'" }
{ "L2 D2 L2 B2 D F2 D F2 D' R' D R B' R' D B2 U2 D' R" }
{ "D2 B R' D U' B L' U R' U F2 D' L2 U' R2 L2 D' B2 U L2" }
{ "L2 U2 B2 U2 F R2 B' L2 R2 F' B2 D' L F2 D L' D B2 L F2" }
{ "B2 L' F2 L B2 R U2 R' F2 B2 D2 B D' F L F' B L' D' F" }
{ "D F2 U2 D R2 F2 B2 R2 B2 U2 R2 B' L R D R' U2 R' U' R' D2" }
{ "F2 U2 L2 F U2 R2 D2 B' D2 B L2 U R' F R' U L2 F B2 D" }
{ "U R2 D' R2 F R' L2 D U' R' B2 L2 B D2 U2 B' L2 D2 U2 F L2" }
{ "F2 L' D' F L2 U2 F2 U' R' U2 B2 U' F2 D R2 L2 D R2 B2 U2" }
{ "U2 L2 F2 U2 L' U2 R' F2 U2 L' R2 F' B D R B' L2 D' L2 F R2" }
{ "R2 U F2 U2 D' B2 R2 F2 B2 D' R2 B' R2 D' L' B2 L' R' U2 D'" }
{ "F' L' B' D' B F' D' F' L' D2 B L2 B' L2 D2 R2 B' R2 F2 L2" }
{ "U2 B' R2 U2 R2 F' B2 D2 B U2 D2 L U D2 L' R' B U2 L' F2 B" }
{ "F2 D2 L2 D2 R' U2 L' U2 R D2 L F D R D L F2 B D2 B'" }
{ "F2 U2 L2 B2 D2 L B2 D2 F2 R F' L F' R' U L' D' L B2" }
{ "B F D2 L2 F' R2 F U' F' R' B2 F2 D2 F2 L B2 D2 R' U2 B2" }
{ "R2 F' D R D2 L' B' D B F2 R' D2 F2 R' L2 F2 D2 F2 D2 L'" }
{ "D2 B' R' F2 R' U L D2 F' U' B2 U2 F2 D B2 F2 R2 U' R2" }
{ "F' L2 R2 U2 D2 F2 U2 F' U2 D2 B2 U' R2 D L' D F' D2 L2 D2" }
{ "D2 F' L2 R2 B' R2 F R2 F2 B' D' L U2 B2 U' B' D B' R2 F2" }
{ "R2 U B2 D R2 U2 D' F2 R2 B2 D' L' F R2 U' B R' D' R2 D' R" }
{ "R2 U B2 R2 D B2 R2 U2 L2 U B2 L R2 U D B' U' L2 U' D' L" }
{ "D2 B2 F2 L U2 L U' F R L2 B L2 B2 R2 U2 B' L2 B R2 B'" }
{ "B' L F R2 B L2 F' R' D B2 R2 B2 F2 L D2 F2 U2 R' B2" }
{ "B2 U2 F' U2 B' R2 U2 B2 U2 B R2 D' B2 D' F' D B D2 B L'" }
{ "D2 B L2 U R' F2 U L2 D F' U2 F2 L2 D2 R2 D2 F R2 F' L2" }
{ "L2 F' D2 R2 F D2 F2 R2 D2 F2 R2 D' F B D' R' U' R' B' R2 F2" }
{ "R' B2 U' L' D' R' L2 D' R' B F' D2 B2 L2 F' D2 R2 B' R2 D2" }
{ "B D2 R2 F L2 R2 D2 F B2 R2 B2 U' F' U' L' F' R2 F' D2" }
{ "D B R L2 U B2 U' R' B L2 B' F2 D2 F' U2 L2 D2 U2 F2" }
{ "F' L' B2 U L2 U B U2 L D2 B L2 D2 B' L2 B F2 L2 F L2" }
{ "F2 L B2 R D2 R2 U2 D2 L' B2 R2 F' B D R2 B' L' D2 R' F2 L2" }
{ "D2 B D L2 U2 F2 R' F U2 F2 U2 L B2 R2 L' D2 R B2 U2" }
{ "B2 U2 F D2 B2 U2 R2 B2 L2 D2 B U' B D2 F2 B R B' L' R" }
{ "F2 B2 L D2 B2 D2 L D2 R2 U R2 B' U' R2 U' R' F2 R'" }
{ "L2 F2 L2 B D2 F' L2 U2 F2 U2 L' D L' B U' L' U' F' U2 D" }
{ "R U2 L2 D' U2 L' F' U' F' R' F2 R2 B2 L2 D F2 D2 B2 D U2 R2" }
{ "U2 L U L U' B2 D' L' F' U L2 D R2 L2 B2 D2 F2 D' R2 U2" }
{ "F2 R2 D2 L B2 L' R' D2 B2 D2 B' L D2 L' D2 F B' D'" }
{ "D' B2 R2 D' B2 D' R2 D R2 B2 D' B' U2 L2 U' R' U' L D' L' D'" }
{ "L2 U2 F' L2 F' U2 D2 F2 B' R2 F D R F L D L2 D2 R2" }
{ "B2 R' D2 R' U2 F2 B2 L2 D2 F2 R B U R2 B2 R2 U' B L D2 B2" }
{ "L2 U' F2 B2 U2 B2 D' F2 B2 U2 L2 R' D2 R B' L U R' D R2" }
{ "D' B' D F' R' B' D F R' D2 B U2 F' U2 B R2 B' D2" }
{ "F2 U' L2 F2 U L2 U R2 D' R2 D' R U2 D B' R2 D2 R2 U B R" }
{ "F2 R2 U L2 U2 R2 D F2 B2 D' F2 R F2 U R' D' F' D F2" }
{ "U F2 R2 D F2 U' L2 D2 F2 L2 R2 B U D R2 F' L' D' F' L F" }
{ "D2 B' D2 B2 L B' R' D U2 R L2 B2 D2 B2 D2 L D2 F2 D2" }
{ "L2 B' U2 R2 F U2 F' L2 R2 U2 B' R F D' R' U L B2 L D B" }
{ "R2 D2 L D2 L B2 L U2 D2 B2 U L U F R2 B2 L2 R U2" }
{ "B2 R2 U R2 B2 U B2 R2 U2 D' B2 L' B2 R D' L' B R D' B' L'" }
{ "D B2 R2 D' B2 D R2 D' F2 R2 B D F' L D2 B2 L2 U' R2 D L" }
{ "R U L2 F D2 R2 F' D F R2 D U R2 B2 D2 R2 U' L2 D F2" }
{ "U' F2 U2 R2 U2 B2 D' F2 B2 L2 D' B' R' F2 U L2 D F2 L R2 D2" }
{ "F2 L' F2 B2 R' B2 D2 L' B2 R' U' B' L F' R2 D' F' L' B'" }
{ "U2 R2 F' L2 F' R2 F2 U2 D2 R2 D R U2 D' F2 L2 D F U2 D2" }
{ "L2 B' D2 B' D2 R2 D2 F2 R2 B' L2 R' U2 F' D2 B D2 L' B D F'" }
{ "R F' L2 F' R B' U F U R2 F' R2 L2 U2 R2 F' U2 R2 B'" }
{ "L' F2 L' R2 B2 R' U2 D2 R' D2 B2 U' F' U D' F L F2 B' D" }
{ "D L2 F' D2 U L B L' U' F' R2 L2 B' U2 R2 U2 F' R2 B R2" }
{ "U L' F D L D R L2 F R L2 F2 R2 F2 R2 D2 R2 F U2 L2 D2" }
{ "B2 R2 U' D L2 R2 D' B2 D' B2 R2 B D' R U' L B' U2 L2 F L2" }
{ "F' R U' F L2 U2 F D' R F L2 B R2 L2 B' F2 L2 D2 B' D2" }
{ "B' R2 F2 U2 L2 B R2 F U2 B2 L2 R' B2 U' B2 D2 L' R2 F L' F" }
{ "R2 F2 L U2 F2 L' F2 L' R' F2 D2 B L2 B' L' R' D' L' B D" }
{ "R2 B' D' F D2 F L' U' L F2 D U B2 F2 D L2 D F2 D' R2" }
{ "U2 B D2 F L2 B' R2 F U2 B R2 U' D2 R F2 U B' L' U2" }
{ "R2 B' D2 B2 D2 B D2 R2 F' L2 U' B2 D' R2 U' L D L F' L D'" }
{ "F2 U L2 U2 D' R2 F2 U2 B2 D' F2 B D2 L F2 U R2 U2 D F' D2" }
{ "B D' L2 U F R2 L2 B' R L2 U' R2 D B2 L2 U' F2 D2 B2 D" }
{ "D' R2 D2 F2 L2 F2 L2 R2 U F2 U L D2 L' U2 R2 F D' F' D'" }
{ "U2 L U2 D2 L2 B2 R D2 L2 U2 D2 B U' F2 R U' B' R F' U2 L" }
{ "R2 D2 B2 U' R2 F2 B2 D L2 U' D2 F' L2 F R F2 D' R2 D2 B' D2" }
{ "B2 R2 U' B2 U2 B2 D B2 D' F2 R' F U L' D R' U2 R F L2 B" }
{ "F R' B2 L2 F2 D2 U' L U' R2 B U2 L2 B' R2 L2 D2 B' R2 B'" }
{ "L D2 R U2 R' D2 R' U2 R D2 L' F D L U B' D L2 U' L" }
{ "B2 R' F2 U2 R' B2 D2 L' B2 L F2 D' B' U D' L' B' D2 R F2" }
{ "B2 D2 F2 L' R2 F2 B2 U2 L' B2 L U' L D' B' D2 B2 U2 L2 R2" }
{ "U R2 B2 U L D2 B' D L U2 R2 U2 F' R2 B2 D2 R2 D2 B" }
{ "R L2 D2 R2 D' B F2 U F2 R B2 D' B2 D2 F2 R2 U2 F2 R2 D' B2" }
{ "U L2 B' U B' R D U' B U L2 U' R2 L2 F2 D' L2 U2 L2 F2" }
{ "D2 F2 U D2 R2 U R2 F2 D L2 F2 R' D B L' B2 R U' D' L' F2" }
{ "U2 B' U2 F2 U L' U' B U' R L2 D2 L2 D' U2 B2 F2 R2 D R2 L2" }
{ "U B2 U R2 U' D2 L2 D2 L2 F2 D' F' B' D B2 L U' D F' R D2" }
{ "U2 B D2 B L F2 U R U' R2 D R2 U' L2 D R2 L2 D R2" }
{ "R2 F2 D B2 L2 F2 U2 L2 D F2 U2 L' D2 B U L' D' B U F D" }
{ "D' L2 D F2 B2 D' F2 L2 D2 B2 L2 F R2 U' R' F' D F2 R2 B D" }
{ "U2 F2 R U2 R D2 R D2 L2 D2 F' B D B' U F2 U F'" }
{ "U2 B2 R F2 L2 D2 F2 L2 U2 F2 R' U L2 B L' U2 F U' B D'" }
{ "D' B2 U' R2 D2 R2 D L2 D2 L2 D R' D B' D B R2 U2 B2 U' D" }
{ "D2 F2 L2 B2 D' L2 U D' R2 F2 B' D L R' D' L R' D2 F' L2" }
{ "U2 F2 B2 L2 R2 D' F2 U' D2 L2 D2 F' L2 U L' U L' F' U' L D'" }
{ "B2 D' L2 U R2 D2 F2 D F2 D2 F' R D R' F2 U2 D F" }
{ "R' B L' F2 D B L' B D' U2 F2 R2 U2 L U2 L' F2 L' F2 R2" }
{ "F2 D L2 R2 U L2 F2 U D B2 R2 B L R2 B R2 U2 F' B U' B'" }
{ "F' U2 L2 B' L2 R2 B2 D2 L2 B' L' U F D F R' F2 U L R2" }
{ "U' F2 B2 U' R2 U L2 F2 U R2 F D2 F' U F' L R D L' D2 R" }
{ "R2 B2 U2 F' D2 F R2 F2 U2 D2 L2 U F' B2 U' R2 D B L2" }
{ "B' F2 L' U2 F D2 F D' L' U2 B' R2 B2 F' U2 F U2 R2 L2 B" }
{ "U' B2 U2 F2 U L2 U' B2 R2 F2 D2 R' B' U2 R2 F2 R2 B' L2 B'" }
{ "U F2 D F2 D2 L2 R2 D' B2 D' R2 F' D F2 R2 U2 B' D' L D' L2" }
{ "D R' U R2 L' U F D' L' F2 U' L2 U' B2 U F2 U' B2 R2" }
{ "D2 R2 F2 R2 F2 R B2 D2 R2 U2 R' D' F' R D' R F' U2 B2 R' D'" }
{ "R' F2 U2 L' F2 L2 B2 L U2 F2 L D L' F U2 F' B2 U2 R'" }
{ "U2 B2 U R2 U F2 U' F2 U B2 D2 L R2 D2 F2 B U' B' L U2 B2" }
{ "R B2 R F U' L B' L2 U F R2 D2 L2 F L2 B R2 B D2 F2" }
{ "D U2 R B D' U B F R D F2 R2 D2 R2 L2 F' L2 U2 F2 D2 B" }
{ "B2 L B L B' F R F2 R U B2 L2 F' D2 F R2 U2 B2 L2 U2 F" }
{ "L2 R2 F' B L2 B' R2 D2 B L2 B' L' U' F' D' F D F R U D" }
{ "D' R2 B2 L2 F2 U L2 F2 B2 U R2 F R2 D2 B R D R' B' U' D" }
{ "R2 U B2 D L2 U' R2 F2 D' F2 U L' U' L' D2 F' R2 D2 F2 R2" }
{ "D' R2 D' F2 U' R2 F2 U' B2 D R2 B' D' B2 L D L' D B2 U B'" }
{ "L2 F2 D2 F' L2 R2 F R' D' L2 D' L' F2 R' B' L'" }
{ "D L2 U B2 D' B2 U2 L2 B2 U' D' L' B' U2 R2 F2 D R2 F R2" }
{ "R' D2 L' B' L2 B D' R' F L F2 L' D2 L2 B2 D2 R F2 R U2" }
{ "R D R' B' L B' D' L' D R' F2 L2 F2 D2 R' F2 D2 L B2 U2" }
{ "B' L2 F' L2 D B R2 D2 R L2 B2 D2 B2 F2 U F2 D' F2 U F2" }
{ "F2 D F2 U2 D F2 R2 U L2 U' R2 B U D2 L R2 U' D2 F2 U2 D'" }
{ "R2 B L2 F D2 B' R2 D2 R2 B R2 U' D2 L F2 L' U L2 B D'" }
{ "L F2 L' D U2 B D R' F' D2 B2 L B2 R' F2 R L D2 B2 L" }
{ "R U R2 L' F' D' F' L U F' D' L2 B2 U R2 B2 U B2 R2 B2 D'" }
{ "F' R2 D2 F2 R2 D2 F2 L2 F' R2 F D' F U B L' D B L2 D L" }
{ "U2 F2 B2 D' B2 D' L2 R2 U2 R2 F2 L' R2 F B2 L' F L' R F2" }
{ "R2 F' L2 U2 B' U2 B2 L2 U2 R2 B L' B D2 R2 F' L R' F' D' R'" }
{ "B2 R' B2 L' F2 R' D2 F2 L' F2 R' D' L F D B2 U' B2 L2 D R2" }
{ "B U2 F U2 L2 U2 D2 F U2 R2 F2 U' L D2 L2 B2 R U2 D L2 B'" }
{ "R U' R' B D' B2 L' B2 R' F2 R2 D' B2 D F2 D L2 D L2 U" }
{ "B2 U' L2 D L2 D' F2 D2 F2 B2 D R' F' L U D L U2 B2 D' B2" }
{ "L2 F2 R2 B2 D L2 F2 D F2 U D2 R' D' F' D R' F' L' D L2 D" }
{ "B2 L2 U' R2 U R2 D L2 F2 U L' D' F D' L D F2 R' F D2" }
{ "R2 D2 B2 L2 F2 U' R2 D B2 U D F D2 F2 R2 B' L' B2 D' L R'" }
{ "F' R2 B L2 F U2 L2 B2 R2 B2 D' R' B L2 U' L2 D R F' B'" }
{ "U F2 D2 R2 B2 D' L2 U L2 D L2 R' U R F U L2 B2 R2 D'" }
{ "B2 L2 F2 R2 U2 B2 R2 U2 B2 U' R2 B' L' D' L2 U' B2 D2 B2 D'" }
{ "R2 F2 L2 F' L2 R2 F2 D2 B' U2 R' B2 L D F U' F U' L' B'" }
{ "U F2 B2 D' L2 F2 U' D' F2 U' R2 B R' D' F L2 B2 U2 D' L F" }
{ "R2 U' L2 D' R2 D2 B2 R2 D2 F2 D2 F D B R B' R2 U B L2 B'" }
{ "F R2 U R U' B U R' F' U2 R2 U L2 D' R2 L2 B2 R2 L2 U'" }
{ "R2 U' R2 F2 D2 L2 D B2 R2 D' B' D F B' R' F U' R2 D R" }
{ "F' L' F D2 R' U2 L D' R B U2 F' R2 U2 B2 L2 D2 F' L2 F" }
{ "B2 D R' U' B2 U R' B U F' R2 B2 U' L2 B2 D2 F2 D' L2 U2 L2" }
{ "L2 R2 U D R2 U L2 U' R2 U' D' B D L2 D' B' L2 B' L R2" }
{ "R F2 R' U2 R' U2 D2 B2 R F2 R' B U' F2 L2 U D2 F L2 B L2" }
{ "U2 F D2 R2 F U2 R2 D2 F U2 D2 R B2 D' R' F' D L' D' R2 D'" }
{ "U' R' D R' D U R2 L' F' D F2 U2 R2 U L2 D' F2 U' R2 B2" }
{ "L2 F2 L2 U' R2 U' D2 R2 U2 R2 B2 L' U2 L F' U2 F B2 L2 R2 D" }
{ "D' L2 D L2 F2 R2 U' R2 B2 D2 B2 R U' F' U' F U2 F' L2 D2" }
{ "U' F2 D2 B2 R2 D' F2 B2 U D L2 R D L' F2 L R2 B D2 B'" }
{ "U2 F2 D L2 B2 R2 F2 D' F2 D2 R2 B D' B2 L' F2 L' U2 L R D'" }
{ "D R' B F U2 F' D2 U2 R' F2 U2 R2 L2 D' L2 B2 D' L2 B2 D'" }
{ "L2 R2 U D2 L2 F2 B2 U' F2 U2 R2 F U2 D2 F' D L2 B2 L U2 R2" }
{ "U2 L2 U' F2 R2 B2 L2 D' B2 L2 D2 F U' F U' R B2 L R D'" }
{ "L2 U B2 U' F2 L2 F2 U D' F' D F R F' D2 R' F D" }
{ "D2 B R2 D' U R F2 D2 U B2 U2 L2 B F2 L2 D2 F' D2 R2 F'" }
{ "L F2 R2 D2 F2 R2 B2 L F2 U2 F2 B R' B' L2 R U F2 B D' R" }
{ "F D2 F U2 F D2 B' U2 B U2 F D' B D' L' R2 B2 D2 L D' R'" }
{ "U2 L2 R2 F2 D' R2 F2 D B2 R2 U B L F2 U' L' U L2 B R D" }
{ "U' R2 D2 F2 U' F2 R2 D R2 D F B' U L F' U' F D B2 D'" }
{ "L2 U' D B2 L2 B2 D F2 B' R2 U' D' F' L' F' D' F U'" }
{ "F D B2 F' D R F' D' R D2 U2 B' F' D2 B2 F D2 L2 U2" }
{ "L' D2 R U2 F2 U2 L' D2 B2 L' U2 F' L2 F D F' U2 B' U B'" }
{ "U2 D2 B R2 F' L2 B' U2 B' D2 F' R B' U L2 F R2 F' B' R" }
{ "U' L2 R2 B2 D R2 U F2 L2 F2 D2 L' R2 U B L' R B U F2 R'" }
{ "U2 L2 U2 L2 D' B2 U' F2 B2 D2 F' D' L R2 D' F2 U2 R U' D" }
{ "D R' U' R2 F' D2 R L2 B L2 B2 L2 U' F2 L2 U R2 F2 L2 U" }
{ "L2 B' U2 F R2 U2 F2 R2 F2 R2 D' B U' D2 F' U L U D B" }
{ "L D' R2 F2 L' F' L F D2 R' F2 U2 L' U2 L D2 L2 F2 R'" }
{ "D2 B2 D2 F2 U L2 U2 F2 L2 F2 D B L2 R' B2 U2 F D' L U' B" }
{ "F2 U2 D F2 D F2 L2 U2 D' L2 R2 F' L D' F' U L U D' F2 R" }
{ "B2 L' F' R L D' F2 L' D L' B2 R' D2 R B2 R' B2 F2 D2 L2" }
{ "F L2 B D2 F' B' D2 L2 B' D2 B' R U D' B2 R' B2 R U2 L U" }
{ "B' U2 R2 F B U2 B' U2 L2 D2 B2 R' U' F' D B' L' F2 D L B'" }
{ "D2 L F2 L2 U2 F2 D2 B2 D2 L U2 F' R' B' R2 U L2 F' R D2" }
{ "R2 D2 R U2 L' U2 L2 U2 R' D2 R' D' F2 L F' R2 F2 U2 D2 L'" }
{ "B' D R L2 F' U2 R U' F L' D R2 U2 R2 D F2 L2 F2 U L2 U" }
{ "D' B2 D2 F2 R2 F2 D B2 D' R2 B2 R' B' D' R2 B2 U' L2 D2 B D" }
{ "D R2 U2 L2 D' R2 D2 R2 D L2 D2 B D' B' D' R' D2 R' U2 F' D'" }
{ "U F D' R2 D2 U' B' D B2 R' B2 L D2 L' F2 R' B2 F2 D2" }
{ "R2 F2 B2 R2 U L2 R2 U L2 D' F2 L' F' U' L2 F2 D' F' L' U' R2" }
{ "F2 L2 U2 B2 D2 R2 F' D2 F U2 L U2 D' B U R' U2 B' U' L" }
{ "F U2 L2 B U2 R2 U2 R2 B L2 F2 L' U' F2 D' L B' D R2 D" }
{ "L2 F2 D2 L2 U R2 D2 B2 U2 B2 R2 B' U' F D F' B' L U' F' U2" }
{ "D R2 D F2 R2 D2 B2 U' R2 D2 R' D' F U2 L2 D' F' U2 F'" }
{ "F2 R2 U2 R2 U R2 D R2 D F2 U R F U' F' D F' U F' L2 R2" }
{ "R2 U R2 U D L2 U2 L2 F2 L2 B2 R' F2 U' L2 R' B' R B' L2" }
{ "U F2 D2 L2 D R2 U F2 B2 U F' L2 U' B R D R U' L2 F'" }
{ "F U2 R2 B D2 F L2 B L2 U2 F U R2 U' L' U2 F2 D2 R D'" }
{ "D2 F U2 R2 F' D2 F L2 B' R2 B' D R' F U2 F' B' U' F2 D'" }
{ "D2 L2 U2 F2 B' U2 B' U2 L2 D2 F L' R2 B2 L D F B2 L B" }
{ "F2 D2 F D2 R2 U2 L B2 U' F R2 D2 U' R2 B2 D' R2 U' R2 U B2" }
{ "L2 B2 R2 U' R2 B2 U L2 U' B2 D' B' R F2 U' L' D' F' U L' R'" }
{ "D2 L2 F2 U2 R2 B2 U F2 U' B2 D2 F L2 D' R2 U L' D' L2 B R2" }
{ "U' L2 D F2 L2 B2 U' R2 U' R2 D' F' B U L' U2 L' R2 D2 F'" }
{ "U' B2 U D L2 B2 D B2 U' F2 D' F L' B2 L' B2 U L' F' U F" }
{ "R2 F D2 F' L2 B2 L2 B' L2 R2 B2 L F2 B R' U B' U2 L F2 B'" }
{ "B2 U' R2 F2 B2 U2 B2 U' B2 L2 D B' U L R2 D L U2 R2 F L'" }
{ "D L2 U2 L2 F2 L2 U' B2 U' L2 D2 B' D R2 U' B' R2 D' L F2 D'" }
{ "B D R2 U R2 L2 F' U2 R D2 U R2 U' L2 B2 D2 R2 F2 U' F2" }
{ "F2 R2 D2 R2 F' D2 B' D2 L2 D2 B' R B U2 F2 L B L2 R D'" }
{ "F' D' L' B L' B' L B D2 F2 R2 D2 B2 L2 B U2 R2 L2" }
{ "R2 D F2 D' B2 R2 U B2 D R B2 D' B D L' B U' F2 B2" }
{ "B2 U D' L2 D2 R2 F2 U' L2 D2 F' R' B2 U D2 F2 D F L" }
{ "R2 F2 U F2 U2 R2 U' D2 B2 U L2 B' R2 B' L2 U2 L2 D L U' D2" }
{ "D2 R' B2 L B D L B' R' B L2 B R2 L2 U2 F' D2 F' R2 F2" }
{ "D R2 B2 F' R D2 R2 F R' D B2 F2 D2 U2 L2 F' U2 F' U2 B2 L2" }
{ "U2 R2 B' L2 U2 L2 B D2 B R2 F2 R' U2 D B U' L2 F2 D' R2 D'" }
{ "L' D L2 D' L' U R B D' B' L' B2 D2 B2 D2 R2 B2 U2 R' U2 R2" }
{ "U2 B2 R D2 L' U2 L R B2 L D2 B' R2 U F2 R F' L2 F" }
{ "F2 D U L' B' D B L' U B R2 D2 U2 B2 L2 U2 F' U2 B' D2" }
{ "R2 B2 U' B2 L2 D2 R2 U L2 B2 D' F' D' R D2 R D B U2 D" }
{ "L2 D B2 L2 D' B2 L2 U F2 B2 U L U B L' U2 F B R' F R'" }
{ "U2 F2 L2 B2 L2 B2 D B2 D B2 D' F L' B2 U2 R' B' D2 R D' R'" }
{ "F2 U2 D' R2 F2 U F2 U2 B2 L2 R' D2 R B2 D' R' B' U2 F2 L2" }
{ "D2 B R2 U2 L2 R2 B R2 B' L2 F2 U' F' R U' D' R2 D2 R' B' R2" }
{ "L2 D R2 F2 D2 R2 U' L2 D2 B2 L' F' L D' F2 U2 D2 R D' R'" }
{ "B2 L2 D2 F2 B2 D' L2 F2 U F2 D' L D2 L U2 L B' D' B L R'" }
{ "L2 U2 F2 R2 D2 L D2 L' U2 L F2 D B' L2 D' L2 F2 B' D2 B" }
{ "B2 U L2 U L2 R2 D B2 R2 F2 U' F' B2 D2 L B' R2 U' L' R2" }
{ "F2 U' F2 B2 D' B2 L2 R2 B2 D' B2 R' B' L2 R' B R B L' D L'" }
{ "B2 D2 F' D2 L2 F L2 F' L2 U2 B R' D' F2 B2 L' U L D' F B2" }
{ "U F2 R2 B2 R2 U' L2 U2 R2 B2 D' F R' U B2 U' F2 D2 L U' B'" }
{ "F2 L2 U' B2 U' R2 D2 R2 B2 U' B R B2 R B U' D B' L R2" }
{ "D2 F' L2 B D2 F' L2 U2 F' U2 F2 R U D2 F2 U L' R' D' F D'" }
{ "F2 U2 F2 B2 L' U2 R' D2 L2 F2 R B L D L B2 R' D' B' R" }
{ "B2 U2 L2 U D2 R2 F2 D R2 B2 L2 R U' F' B D F B U' L' R" }
{ "U' B2 D' L2 F2 L2 U2 R2 B2 D' F' U' D2 L F2 U' R2 F B U2" }
{ "L2 U' L2 R2 F2 R2 D' L2 U' R2 U R' U' R U' F' U2 L2 B D' B" }
{ "R2 F' R2 B' R2 U2 F R2 U2 R2 B2 L' F2 U R B2 D2 B2 U' L B2" }
{ "R2 B2 L' F2 B2 L2 R' B2 U2 B2 R' U F D F' L' U' F R F" }
{ "D2 L2 D' B2 R2 U' B2 R2 D2 L2 D' R B2 R' U L' F L F' U2 B2" }
{ "D2 L U' B F2 U R B F D R2 U2 B2 R2 B F2 R2 F R2 L2 B2" }
{ "L' U2 L2 F2 R' F2 L' F2 L B2 R' F U L' B2 L' U2 R2 B' L" }
{ "U R2 U L2 B2 U' L2 R2 U' D2 R' U2 F R2 D2 F2 U B L2 D'" }
{ "D F2 R2 D F2 L2 F2 B2 U' B2 D L' D2 L U2 D F' L2 D' F' B'" }
{ "F2 R2 U2 F2 L2 B2 U' B2 U' F U' F2 B2 U L' U2 R2 D2" }
{ "D2 R2 B2 D2 B2 D L2 U B2 L2 D2 R D' B L' B U' R B' U L" }
{ "R2 B L2 D2 F' D2 R2 F B U2 B R' F2 D B' R' D' R U2 B L'" }
{ "F' U2 B' U2 D2 B2 R2 D2 F' U2 F' L U2 B' D' F B' R F2 B2" }
{ "L2 B2 R2 U2 B2 R2 D2 F2 U L2 U' R' D' F R' D2 B R' F2 D B'" }
{ "B2 R D B' R' U' B' D F2 L' D L2 B2 L2 D' B2 L2 U F2 D R2" }
{ "B2 D L2 D' L2 F2 R2 D' R2 U D F U' F R B D' L2 B2 R F2" }
{ "U F2 D F2 D' F2 R2 B2 R2 B2 D F R U' R2 B' R' D B2 L2" }
{ "D F2 U2 L2 U2 R2 D R2 B2 D R2 B' D B2 D B' U L' R2 U' D" }
{ "R2 F' L2 D2 F L2 F2 L2 D2 F' U2 L' D2 L' D L U D' B2 U" }
{ "B2 U' R2 D L2 B2 R2 U2 F2 U D2 L R B L D' L2 B U2 D L2" }
{ "B' L2 B2 U2 F' R2 B L2 D2 B U R' F' U' B' R' F2 B R'" }
{ "L2 D R2 U D2 F2 U' L2 D' F2 D' L' D R U2 L B D' B2 R" }
{ "U2 R2 D2 R2 F D2 F U2 F2 U2 B R B U2 L2 F R2 U F B2 R2" }
{ "B D2 B R2 D' B R U2 R D F2 L2 U2 L2 D' B2 R2 D R2 D" }
{ "D2 F' D' L U B2 R' L B' R D2 R2 B2 L2 B2 R2 B2 U' F2 D2 F2" }
{ "U2 R2 U' B2 D' B2 D R2 D R2 B2 R U D F' U' B' U' B' L B2" }
{ "B2 D' L2 D' R2 F2 U2 B2 U2 R2 B2 L' D2 F2 L' B' D' L2 F B2" }
{ "F2 R' F2 L' D2 B2 R F2 U2 F2 L2 F' R' U B2 D' R D2 F D'" }
{ "U2 L2 U' B2 D2 R2 B2 R2 F2 U' L2 R D B L D' L B L2 B' R" }
{ "U2 R2 F2 D2 R2 U L2 B2 U2 F2 D F B' R' F2 U' B2 D' L' D' B2" }
{ "L' F2 R' B2 U2 R U2 L D2 B2 R' B' U' F R U2 L2 F' R2 B' R'" }
{ "U2 D' B2 L2 F2 L2 D B2 D L2 B2 L D2 F' L B2 U2 B' D' B" }
{ "B2 U2 R2 B2 U2 D L2 D' R2 F2 U' L' U F L2 U2 R2 D F2 B2 D'" }
{ "R D F' L' D' R' D' B' L B2 U2 F2 U2 R2 B F U2 B' R2 B'" }
{ "L2 B L2 F R2 D2 L2 B' R2 B2 L2 D R2 U2 R' F2 L' F2 D' R2 D2" }
{ "R2 U' B2 U B2 D L2 U R2 D2 B' U B L D2 L F L2 D' R2" }
{ "R' U2 L F2 B2 L' D2 L U2 F2 B L' R D2 L2 D' L' B' R' D'" }
{ "U' L2 U' B2 L2 R2 D' B2 D' B2 U2 B' U2 R' B R2 B2 R' F' U F'" }
{ "B2 F U' R2 F2 U F2 D2 L' U B2 R2 D' F2 R2 U' L2 D2 B2 U" }
{ "L2 D' F2 D2 B2 D' L2 U' B2 U' F U' F R2 F' D' L U' F R2" }
{ "F2 U F2 D' R2 U R2 F2 U L2 D' R' F' D F2 D' F' R2 D R2" }
{ "L2 F2 U2 R' F2 D2 R2 D2 R F2 R B R2 U2 F D R2 F R2 B" }
{ "U' L2 B' R2 L2 U F D' R2 F' D2 F' U2 L2 B D2 B2 L2 B" }
{ "R2 D F2 U D2 F2 D' B2 R2 D' L2 B L' B2 L' R2 F2 D B2 U2" }
{ "L2 F2 B2 U2 F2 U' L2 R2 D' L2 F2 B D B2 L' R2 U D B U R2" }
{ "F2 L' B2 U2 D2 L' R2 F2 L D2 L2 U D' F R F B2 U D F'" }
{ "B2 U2 B2 U R2 F2 R2 U' B2 R2 U L' U B' D' L2 R D2 L2 R' B'" }
{ "L' F' L' F2 L' F2 D2 L D L' B2 R' U2 R2 D2 R F2 R' U2 R'" }
{ "L F' L2 D' U2 R2 L B' L F2 U B2 D' U F2 D' L2 B2 R2 D2" }
{ "U2 F R2 U2 L2 B' R2 B L2 B' L' B' R2 U L D R B2 L' U'" }
{ "B2 U' R2 B' D2 B F2 R' F2 D B2 R2 B2 U F2 U R2 D2 R2" }
{ "R' B L D2 B L' B2 D B' R D2 R2 U2 R' F2 L2 U2 L F2 R'" }
{ "U2 D2 L D2 R' B2 R' U2 L D2 R' F' L2 D2 F' U F2 U' R2 D'" }
{ "B2 R2 D L2 R2 U' F2 U B2 R2 U F' U' L' U B2 R2 U' L' B" }
{ "D2 L2 F2 L D R2 L' U2 B' U R2 U2 F2 D' B2 L2 F2 D F2 D'" }
{ "B2 R2 F2 U L2 U R2 D2 F2 R2 D B' U D2 F B' D' R' U2 B' U'" }
{ "B2 R D R2 F' D F' U2 L' U2 F D2 B2 U2 L2 U2 B D2 B' R2" }
{ "D' F2 R2 D' F2 B2 D' B2 L2 D2 F2 R D' L2 D' R U2 B' U R" }
{ "B U2 R2 U2 B U2 F L2 F R2 D2 R D2 B2 R F2 D' L F2 D'" }
{ "B' D2 L2 U2 B' U2 B2 D2 F' D2 B U R U' L B L' B' D2 F2 D'" }
{ "F' D B D' F2 R2 B' U2 L' B U2 F R2 F D2 B R2 F2 R2 B'" }
{ "R' B2 U F R2 D' U B D' B L F2 L2 B2 L U2 R D2 R' D2 L2" }
{ "U L2 B U' B F' R D U' R' U2 R' D2 B2 L D2 L' U2 L' B2" }
{ "U2 F2 L2 D2 F' R2 D2 F U2 B' L2 D R2 B L' U F2 R U' L' B2" }
{ "F' B' U2 R2 B U2 B' D2 F L2 U2 L' F D' F2 D2 F' D2 L U" }
{ "U2 F2 L2 U' R2 U2 F2 D F2 L2 D2 B' R2 D L2 U2 F2 L' D' R2 U" }
{ "L2 U2 L2 D' L2 F2 U' F2 L2 F2 U L' F2 R' U' F' U' D' R2 F2 D'" }
{ "U2 R' U2 D2 R F2 U2 R2 B2 R2 F D' R' F D2 L B L' B'" }
{ "B' L' B2 F' D' F2 L2 F U2 R2 L U2 B2 F2 L' D2 R B2 L2" }
{ "D' L D' B' D2 B' L' B D B2 D2 R2 B2 L2 D2 B D2 R2 L2 B'" }
{ "R2 U2 B2 R2 D2 L' B2 D2 R2 U2 L F R2 B' L2 F2 D B D F" }
{ "F2 D B2 L2 D' F' D' R L2 D2 R B2 R2 D2 L' B2 L' B2" }
{ "L2 B' D2 L2 B' D2 B' U2 F U2 B2 L' R' B' R' B' L' D' B' R2 D" }
{ "U R2 F2 L2 R2 U' B2 D' F2 U' D' B' D' B2 L2 R' U R2 F R" }
{ "U L2 B2 L2 U R2 D L2 B2 D' F L' R2 D F2 U R D2 L B'" }
{ "B' U2 L2 U2 F2 R2 B' L2 U2 L2 F D' L' D L U2 D F2 B' U2 D" }
{ "F2 U2 F2 R2 D F2 L2 U' F2 U2 F' L2 D' R2 U B' D2 L' B U" }
{ "D2 B2 U2 L' U2 B2 R' D2 F2 B2 L2 B' R2 D F2 R D' R U B'" }
{ "B2 L2 D' F2 U' D2 L2 U' F2 D R' D2 B2 U F L R2 U L' B2" }
{ "F2 R' F2 U2 R' F2 L B2 L' U F2 B D' L B L2 R" }
{ "L2 F2 D' B2 D2 R2 D B2 L2 D F2 L F2 U D2 L D2 B2 D' F'" }
{ "U F2 L2 R2 U R2 D F2 D' L2 B2 L' D F' R' U' F D R' B L'" }
{ "R2 U2 L2 D B2 U2 D L2 D' R2 B2 R' F' D2 B' R' F U F R D" }
{ "B2 D2 L2 D R2 B2 L' B U' B2 U B2 U' L2 U F2 L2 U R2" }
{ "B2 D' B2 U B2 D2 R2 D F2 D L2 F' U' R' U' B2 L2 F2 U' B' R'" }
{ "L2 F2 D' R2 F2 L2 B2 U' B2 D2 R' D2 B R2 B' D F' D' R F" }
{ "F2 D2 L2 U' R2 D' F2 U' B2 U' L2 B' D L' B' U D B' R' D' R'" }
{ "D R' U2 B L D' R' L' B2 D2 B' U2 L2 D2 B' U2 B L2 F2" }
{ "F2 B2 L2 D B2 U2 D' L2 R2 B2 R2 B R B' R F R D2 R2 D'" }
{ "U2 F L2 R2 U2 F U2 D2 L2 F' L2 R U D2 L' D2 B L2 D' R B'" }
{ "F' L' F' L' B R' U' B' U2 R2 L D2 B2 R' B2 U2 F2 D2 R'" }
{ "F' D2 F' R2 B' U' L2 B' D U2 B2 L2 B2 R B2 F2 U2 B2 L'" }
{ "R2 B2 L2 D R2 D L2 F2 L2 D2 B R' F L U2 F' U2 F D' R' F'" }
{ "L D2 F2 U2 D2 L' B2 L2 B2 R B2 D L U2 F D2 R' F2 R D' F'" }
{ "B2 R2 F U2 F2 L2 U2 D2 B R2 F' L D L2 U' L' R2 B L2 R2 D2" }
{ "D2 L2 B2 U2 B2 U L2 B2 D L2 B U' R U2 L2 F D2 B2 D' R2" }
{ "F2 B R2 U2 F2 D2 R2 D2 B' R2 D L' D' L U' F U L2" }
{ "U F2 L2 D2 F2 L2 U B2 R2 D2 F' U L' F D' L' F' B L'" }
{ "B' U' B' D2 L' U2 R2 D L2 F D2 F2 U2 B' U2 B' R2 F' L2" }
{ "D B2 L2 F2 D' F2 D R B2 U2 B U2 R2 D2 F' R2 B2 U2 B2" }
{ "D' R2 U L2 D2 R2 U R2 B2 U2 D2 R' B' L2 U' B' D' R2 U B2 D'" }
{ "F' U2 L2 F D2 F' L2 B2 D2 B' D2 R' B2 R F D L' F' L2 B'" }
{ "U2 D2 F' R2 U2 L2 R2 B R2 F2 U2 L F2 B2 L' D' R B' D' B L'" }
{ "L2 D2 L' U2 R' B2 D2 L' D2 L2 R' D F2 B D L' B R2 U' F2 R'" }
{ "R2 B2 D' F2 U B2 L2 D' F2 L2 U L' R' F' L' D' R' F' U2 R'" }
{ "D2 F2 B' U2 B L2 F' R2 F' B2 U2 R' U F2 L2 F' R' B U2 B" }
{ "R2 U F R D' R L2 F' U B D U' B2 R2 U2 R2 F2 D2 B2 U' F2" }
{ "R2 B' R2 D2 F D2 F2 U2 F' D2 B' U R2 F L' D F' L' R U D'" }
{ "B2 L2 F U2 L2 U2 R2 B' U2 F' L2 R' F2 R' F B2 D' F' U' R" }
{ "U2 L B2 U2 B2 D2 R2 B2 D2 B2 D2 B D B' R F2 D' R U' D' R" }
{ "D' R2 B2 R2 U' F2 R2 B2 R2 U2 D' B' D' F2 R B2 U' D2 B2 D F" }
{ "R2 B U2 R2 F' B' L2 D2 F' L2 D' F U2 R' D2 R D' B U' D" }
{ "L2 U2 L' U2 L D2 L' R2 F2 D2 R2 F' L' D2 B2 L2 U L U' R2 F2" }
{ "B2 L B' L2 D' R F' L D2 R' B' R2 B2 D2 R2 D2 F L2 F2 U2 R2" }
{ "U2 B2 R B2 L B2 U2 D2 L2 D2 B2 U' F2 R2 F U' R2 B2 D2 B R'" }
{ "R2 U2 F2 D B2 R2 U F2 D' F2 D R' D2 L D F2 D' F2 L2 B' R" }
{ "R L D L' B' F2 U2 L B R' U2 R B2 R2 D2 B2 R U2" }
{ "B2 R2 F2 D F2 U R2 U' F2 D2 L2 F L2 B D' R B D2 B2 R F'" }
{ "F U R2 L D2 B2 D' B D L2 D L2 D F2 U F2 U' B2 D'" }
{ "F U L U L' D2 B2 R' B' L2 D2 L F2 L' U2 R' F2 R2 U2 L'" }
{ "D2 R' U2 D2 R2 U2 L' F2 B2 R2 U2 F D R2 U' R' U B2 D' R' B2" }
{ "F' L2 B' L2 D2 L2 F' R2 B2 L2 B2 R D B2 L R D2 L' F D2 B" }
{ "U2 D' L2 U2 R2 D' F2 B2 L2 B2 U2 R B' U' D' L' B2 L' D F" }
{ "F2 L2 U2 R2 U' B2 D2 B2 U' R2 D' F D2 L' U2 R' F' L U' L B'" }
{ "L2 B2 L' D2 L D2 L' F2 U2 L F2 D R B' U B' U2 L2 D'" }
{ "R2 U2 L2 R U2 F2 L U2 F2 L' D L' D L' B L B R'" }
{ "L2 B' U2 B R2 B D2 B' D2 F2 L B U' B L2 F L U2 B2 D" }
{ "F2 D2 F' D2 F U2 L2 U2 B' R2 B U' L2 D' F' U2 D F' L' D' L2" }
{ "D' L2 U L2 R2 U2 L2 U L2 F2 D F D2 L2 U' R' U B2 D2 B2" }
{ "D' R' F2 L D' F2 U2 R U R2 D2 B U2 F2 L2 U2 F R2 U2 B" }
{ "B2 L2 D2 B2 D F2 D' F2 B2 R2 D2 L D' F2 L' F D2 F B' U2 R2" }
{ "R2 D2 F D U2 R F2 R L' B R2 F2 U' R2 U L2 F2 D' F2 U' F2" }
{ "F2 D R2 L B2 D' U L' D' U2 B2 L2 D2 B L2 F' L2 U2 B F2" }
{ "D2 R2 B U' L2 U' F L' D' U L B2 R' F2 U2 B2 F2 R B2 L' D2" }
{ "L F2 R F2 L2 D2 L' U2 B2 R B2 U' F D F U' L R' D'" }
{ "D2 L2 D' F2 D2 R2 D R2 U' F2 L2 F U2 R2 U R U' B2 L2 R" }
{ "R2 F' L2 D2 F B2 U2 D2 R2 B' U2 D' R F U L2 U L F D" }
{ "U2 F2 D F2 D F2 B2 D2 B2 R2 U' L' B2 U' B R U F2 L' D2" }
{ "R2 F2 D' R2 D2 B2 R2 U D2 B2 D' F U2 D R U' D L R2 U' L" }
{ "L2 U' B2 U' F2 U' R2 U L2 F2 D' B D2 L2 R' U R2 F2 U F' L" }
{ "D2 R2 U2 D R2 B2 U F2 R2 B2 U2 R U' L B2 D' L D' B U" }
{ "L' D2 L2 B D' F' R B2 F2 L B' R2 B R2 L2 F' L2 F D2 F' U2" }
{ "D' B2 U' R2 F2 U B R2 L B2 D B2 L2 D' F2 D L2 U B2 D" }
{ "B R2 F U2 L2 B' U2 F2 D2 B' L2 D R2 D' L2 D2 F B R D" }
{ "R F' L2 D B' L B R U B2 U F2 L2 D B2 D2 R2 L2 U" }
{ "B2 U2 B' L2 F' D2 R2 D2 B L2 F' D' R B2 D2 L2 R B' L2 B2" }
{ "U R2 U' L2 D2 B2 L2 D B2 L2 D F L U D2 R' U' R U2 F' R'" }
{ "R' D2 F2 L2 F2 L' F2 D2 F2 B2 L U L' U B' R B2 L' B" }
{ "F2 U' R2 B2 U F2 D' F2 B2 L2 R' U' F' U' L2 F' R' B2 U' D2" }
{ "U2 R U2 L B2 L2 D2 B2 D2 B2 R B' U' F' L2 U' F2 U2 B L R2" }
{ "D' R2 F2 U D2 B2 D F2 B2 R2 B2 L' D' L2 D R2 B U R' B' U2" }
{ "R2 D' F2 D' F2 L2 F2 B2 D' R2 D' B U' D2 L' D' L' B D' B" }
{ "L R F2 U2 R D2 R' U2 B2 U2 D2 B' R2 D F2 R2 B' U' F2 L'" }
{ "F D L' B2 D' R2 D2 B U' R L2 U2 R2 F2 U2 F2 U2 R2 D F2 R2" }
{ "B2 R2 B2 D L F2 R' F' R2 D R2 F' D2 B' L2 F D2 U2 L2 U2 F'" }
{ "B' D2 R2 B R2 B' R2 D2 F' R2 F' U' F' U2 D' F' L B U' F2 B" }
{ "U2 D2 R2 F' B' R2 U2 B' D2 B' L' D F' D2 L U2 R D' F R'" }
{ "B' U2 B' D2 F2 R2 B U2 B R2 B' L B L F B L F L2 U2" }
{ "U L2 U F2 R B2 L2 U L B D2 B2 D2 L2 U2 L2 B L2 D2 U2" }
{ "B' R D2 B L' B' R2 D B' R L2 B2 L2 B' L2 F D2 B L2 D2 B2" }
{ "B2 U F2 R2 D2 L2 U' D R2 F2 D B' L F' B2 U' F D2 L' R' D'" }
{ "D F2 U' R2 F2 U R2 D B2 D' L2 R D L' U B R U' F2 L'" }
{ "D' L' D R F D' B2 U F' L' F2 R2 F2 U2 R' U2 B2 R' D2 R2" }
{ "U B2 U B2 U F2 B2 U' F2 D2 L2 B D' R U2 R' D2 B' U' R2 B2" }
{ "D2 F2 R2 F2 R2 D L2 D2 R2 D' L2 B U2 D' R F' B' D2 F' R2" }
{ "D' R2 F2 U2 R2 F2 B2 D' F2 R2 D2 F R2 D' F2 L' F2 D' B U' R2" }
{ "L2 D2 L2 F2 L2 R2 B D2 F2 D2 B' D L2 R F' L B2 U F2 L B2" }
{ "U' L F L' D' F2 R F' R' F2 D2 U2 F' L2 F R2 L2 D2 F R2" }
{ "R2 D' L2 U F2 B2 D L2 D' L D' L2 F' U' F' D' L' F2 R" }
{ "R' L2 B' R2 D F2 R B U' B U2 L2 B D2 F2 R2 B L2 D2 B" }
{ "U R2 U' L2 F2 D R2 B2 L2 D' L2 R' U2 L' B' U B2 R D2 B2 D2" }
{ "U2 L R2 B2 R U2 L2 R B2 R' B2 U' R F' R' U D2 L2 F2 D2" }
{ "B2 R2 D U R U F D' L' B2 U B2 D' U' R2 D B2 U' R2" }
{ "U' B2 R' B2 R' D' R' U' B U2 R2 F2 D2 L D2 L' D2 R' D2" }
{ "R2 B U2 F2 B D2 F L2 F2 R2 F' D' B' D2 L' U' B2 U L2 R' F2" }
{ "F2 R2 U2 R2 D' F2 R2 B2 R2 U L2 R' D L2 U2 R2 B L2 D' F U'" }
{ "R2 D2 F D2 R2 F' L2 F2 U2 L2 F L' D L' U2 B U2 L2 D2 R2" }
{ "B' L2 F R2 U2 F2 L2 F R2 F B' U L R2 B2 L2 U' F2 D L' B2" }
{ "B' R2 B U2 R2 F' B2 D2 L2 B' U2 D B L2 F D' R B2 U L F2" }
{ "L2 B' R2 F D2 F2 L2 U2 B D2 R2 U L F2 R2 D B2 U2 R' F" }
{ "B2 U2 L2 B2 U2 R2 B' U2 B R2 F' R D2 L F2 B D L' D2 B' D" }
{ "B2 L' F2 L2 U2 L U2 R U2 F2 D2 B D' R2 D' L' R' B2 D' L" }
{ "U' B2 D F2 U L2 R2 U' F2 R2 D' B' D' R B U2 L2 U2 B U'" }
{ "F2 R' D2 R F2 D2 B2 R U2 L' U2 D' F D R B' R2 F2 D2" }
{ "R2 D2 F2 L2 B L2 F D2 B2 U2 B' U' D' F' L F' D L' U' F' B2" }
{ "U' R D R' U L2 U2 R' L2 D2 B U2 B2 D2 R2 D2 R2 B2 L2" }
{ "R2 U2 L' U' F D2 R' D F2 R' U2 L2 U2 R F2 D2 U2 L B2" }
{ "U2 B2 U R2 D' L2 U D2 B2 D F2 B' D2 B R B D B' R2 B2" }
{ "L2 B' L2 R2 B2 L2 F' L2 B' R2 F2 U D' B' D2 L' U' B' D B2 L2" }
{ "B2 D2 F R2 F' R2 U2 B' L2 D2 F R F' B2 L F' D' R2 U2 L' U'" }
{ "U2 F2 R2 F D2 L2 U2 B' D2 L2 D2 L D L' D2 L2 R2 D L' D" }
{ "L2 F2 D R2 U F2 D' F2 D2 L2 B2 L B2 U' F D B' L2 F D" }
{ "F' D2 L2 D2 L2 F' L2 F' B2 R2 F' U' L' U' F R' F2 R' F2 B2" }
{ "B R2 F' D2 F U2 B D2 F U2 B' D' R' D L2 B' L F' L F' R2" }
{ "F2 L2 R2 D2 L2 D' F2 B2 D F2 D' B D' L B2 U' R2 B' R' F2" }
{ "F' L2 U2 B L2 B R2 F B2 R2 B2 R F U' D' F' B2 L' U B L" }
{ "R' F2 U2 L' F2 R' D2 B2 L' D2 L2 B' D2 L F2 B L' F D F D2" }
{ "U2 F2 D' R2 F2 L2 F2 U2 B2 U F' U F' L2 U2 D2 B L' B" }
{ "L2 U2 F' D2 F B2 U2 F' U2 R D' R2 F D2 L U' D' L' F' R'" }
{ "D2 R D' F U L F2 U' F R D2 B2 L2 U' F2 D2 B2 L2 D' F2 L2" }
{ "U2 F2 U' B2 D L2 B2 L2 R2 U' F2 R B2 D2 F' L F' B2 R2 U2 L'" }
{ "B2 R B2 D2 L2 F2 U2 R' D2 L2 D2 B L U2 F2 L2 D R D L2 D" }
{ "R2 U2 L' B2 U F' D2 B R' D' R2 D2 L2 F D2 F L2 B R2 U2 F" }
{ "R L2 D F2 R B2 D B' F U' F2 U2 R2 F D2 B' D2 L2 B D2 B'" }
{ "U2 B2 D2 F2 B L2 D2 B2 U2 F' U2 R F U2 L B2 U' F' L R B'" }
{ "R2 F2 L2 U2 D F2 L2 U2 B2 R2 U2 R' D R2 U B U2 L2 D' F2" }
{ "F' U2 B2 L2 F D2 F2 R2 B' D2 F R' U2 L2 B D2 F' D F R" }
{ "L2 R2 D2 B2 R2 U' F2 U' L2 U2 R2 F L D2 F' D' L2 D' L' R2" }
{ "F2 D' B2 R2 D R2 U2 D' R2 D' B2 L U B R2 B2 D' L' U' L'" }
{ "L2 U2 B' L2 F' D2 B' U2 B U2 L2 U' F' U2 F B2 L2 B R' F D" }
{ "L2 B2 D2 R2 U2 L2 F' L2 R2 B2 R2 U' B R B' U2 F U' F' B' R" }
{ "D' R2 U' L2 D R2 U' R2 U' R2 U' R F' U2 F B L2 D' F' L2 B" }
{ "U2 R2 U2 F2 B' U2 B R2 F D2 R B' L2 U' B' U' F' U' L B2 D" }
{ "D2 R' D2 L F2 B2 R' B2 L' D2 L' U F U L B U R2 F U" }
{ "L2 U2 L2 B L2 R2 U2 B' L2 B D F U2 R' B D' R U2 F D2" }
{ "L R2 D2 L' F2 L' R D2 F' R' D2 R F2 U B2 U R'" }
{ "B2 U2 F2 U2 L R U2 B2 L' U2 L F D B R' F2 B R' D B L'" }
{ "F' R2 D2 F2 D R D' B R' F' U2 F2 D2 U2 F' R2 D2 B' R2 F" }
{ "B2 L' B2 L B2 L2 D2 R' U' L2 B U2 B' U' L D2 R" }
{ "R2 B2 U2 B2 R U2 R2 D2 R B2 L' U R U2 L2 F U' F2 D' F R" }
{ "D' R2 D' B2 D2 F2 D B2 D' R2 D' B L2 F L2 R B' R B D F" }
{ "R2 B2 D' F2 D R2 F2 U F2 D B2 R' D2 L R B D' R U' F2" }
{ "D L2 F2 L2 D B2 U2 D' L2 D2 L' B' D' B' D' L2 U D' L D'" }
{ "R B U' L' D' B U R D B2 L2 U2 B2 R2 B R2 D2 F' D2 L2" }
{ "R2 B2 D2 L' D2 L' R B2 L D2 R' F L U2 D' L B D2 L U2" }
{ "L2 F2 U' B2 D F2 U' F2 U2 F2 D B' L' D B2 R' D' B2 L B'" }
{ "D B' R' U R F D U R' D2 U B2 R2 D L2 D2 U' B2 R2 F2" }
{ "F2 U B2 L2 D' R2 D' F2 U D R' U D' B D' R' D' B' R'" }
{ "D U R' B2 D R' B R' D R F2 U' F2 D2 B2 U B2 L2 D' B2 U2" }
{ "L D2 L' B2 F R F2 R B D' B2 R2 B2 U B2 U B2 F2 U' F2" }
{ "L2 F U2 F2 R2 B R2 D2 B' U2 D2 R' F2 U' L B D2 F L' F2 R2" }
{ "R2 D2 F2 D2 L U2 L R' D2 R2 B2 D B L2 U R' F D F' R' B2" }
{ "F2 U2 F2 L2 F2 U' R2 B2 D2 R2 D' F L B2 L2 U2 D' R B' R2 U2" }
{ "L2 B2 L2 D2 B2 D F2 R2 B2 R2 D L B2 L F U' R U L2 U' R" }
{ "F2 L2 U' L2 R2 U' D' F2 D L2 B2 L F' D B2 U F R' F2 L'" }
{ "R2 B D2 U' R' B2 D B F2 L F2 U R2 L2 D' L2 F2 U' B2 L2 D2" }
{ "D' B2 D2 B' U' R' D F2 L B2 R2 B2 F' R2 D2 F' R2 L2 F'" }
{ "D B2 R' B2 L2 D' U2 R D F L2 U2 L2 B' U2 F' L2 U2 L2 B2" }
{ "D2 F L2 D2 F L2 U2 F2 L2 U2 B L U2 R' U D2 B2 D F' D2 R'" }
{ "B2 D' F2 B2 U D2 L2 F2 B2 U' D' L' D B L' U' D L' B U'" }
{ "U2 D2 L R2 F2 L' F2 D2 L' F2 R F' D2 R U' B' R B' R2 U'" }
{ "F2 D2 B D2 L2 R2 B' R2 B' U2 B2 D' F' L' B2 U L2 B2 L U2 D2" }
{ "F' U2 B2 U2 R2 B2 D2 B' L2 B2 L' U' D' R2 D' B2 D' L' F' R" }
{ "F2 U L2 U2 L2 D B2 U' B2 R2 D F D2 L' D2 L U' D R' F2 U2" }
{ "R2 U2 B U2 D2 R2 D2 F R2 D2 B2 R B2 U' D' F' R F D' B2 U" }
{ "F2 R2 F2 D' F2 U' L2 U' D R2 D2 F' L' U B2 D2 F D L F' D2" }
{ "B2 L2 R2 B2 U' B2 D' R2 B2 R2 U B U R' F2 B' R' B2 U' B2 D'" }
{ "L2 B U2 B D2 R2 D2 B2 R2 B' U' R F' R' F' D B L' R2 U2" }
{ "U' R2 F2 U' R2 U F2 U2 R2 F2 D F' L U' R B2 D2 L' R F'" }
{ "R2 U' R2 U' L2 U' B2 U2 R2 B2 D F' U L' D L' U2 L' U2 D2 L2" }
{ "B2 L F' D2 F' L B' L D2 L2 D2 B F2 U2 F' R2 F2 U2 L2" }
{ "L2 B2 R U2 F2 R' D2 R B2 R U2 B U D F2 L' F D R2 U' B2" }
{ "L2 D B2 D' B2 R2 D' F2 D B2 U' L F D2 F' U L2 B U' D2" }
{ "U2 B' L2 B D' R L' U F' R2 U L2 D' B2 U2 B2 L2 F2 R2 D2" }
{ "F2 L2 F R2 B2 D2 B' D2 B L2 B' L F U' F' R B U' D B" }
{ "R2 D2 L2 F' L2 F R2 B' L2 U2 D' B L' R D R' B' L" }
{ "U2 F2 U2 L D2 B2 L' B2 U2 L2 U' F' R2 D' R2 U2 D' B2 U" }
{ "F2 L D2 F R2 U L F L' D B2 D2 B R2 L2 B D2 B' L2 D2 B'" }
{ "B2 L2 U R2 U R2 U2 B2 D' L2 D' F U2 L2 R2 B D2 L' U2 R' D'" }
{ "D R2 U R2 B2 R2 D B2 U2 L2 R2 F D2 B' U F' D L U' B2" }
{ "L B2 R L' F U L' F2 U' B U2 F D2 B F' U2 L2 B' U2 L2" }
{ "D2 F2 D R2 U2 L2 R2 U B2 L2 B R' F2 R F D2 R2 F U'" }
{ "D' L2 F2 D' R2 D' F2 R2 B2 L2 R2 B' R2 U' D' F2 R U' R' F" }
{ "R2 D2 F2 R2 B2 R' U2 R' B2 D2 B2 U' R' D' B R2 D' B' U' L2" }
{ "R2 U' D R2 F2 U B2 U2 L' U L' D2 F U2 D L2 F2 R" }
{ "F2 R' U2 L B2 U2 R' B2 D2 B' D' L2 U F L R D' L" }
{ "D2 F2 D' F L' U2 L B D' U2 R2 B2 L2 F2 U2 R2 F2 L U2 F2" }
{ "F L2 F2 R2 F2 U2 R2 B2 D2 R2 U' L F' U2 D R' B2 U F" }
{ "L' B U B2 L2 B' U2 B2 D R2 F2 L2 B2 U2 F2 U2 L' B2 R' D2" }
{ "R' L2 B' L' B' F2 U2 B U F2 R2 L' D2 B2 R2 D2 U2 F2 L U2" }
{ "U2 B F R' F2 R2 D F2 R L2 F2 L2 D2 L2 U2 B' L2 U2 L2 B2" }
{ "D2 R2 D' R2 D' L2 D' R2 F2 D2 L' U D' F L U2 R2 U R2 D" }
{ "L2 D R2 U B2 L2 R2 B2 U B2 L' F' L R2 F2 D' B U' F2 R'" }
{ "R' F' R' F U' B2 U' B D' L2 D2 U2 B R2 U2 F2 L2 F U2 F2" }
{ "L2 U F2 U2 D' F2 D L2 F2 L2 B D F2 U R U2 B D B' U2" }
{ "F L2 B' R2 U2 F' R2 D2 B' D2 F2 D F' L' F D' F L2 D2 B" }
{ "L2 D' B2 D F2 B2 L2 U' F2 B2 D R' F' R' D F2 U' D2 F2 D'" }
{ "B R L D F L' D' F R' B U2 L2 B F2 L2 U2 R2 U2 B' R2" }
{ "L' U2 R' D2 L F2 R' D2 B2 U2 L2 D' L2 D' B L' U D B' R2 B2" }
{ "R2 F2 D2 L2 U2 R' B2 D2 F2 D' R' D' F2 L' U2 B L' B" }
{ "L B' D L U' R2 F R2 U2 R U2 R2 B2 F2 D B2 R2 L2 U F2 D2" }
{ "B2 U2 L2 D2 L' D2 B2 L2 F2 B2 L' F D' F2 U D B U B R' B" }
{ "L2 U F2 U' D2 L2 D R2 F2 R2 U2 B L2 U' B U' D L' D' L" }
{ "F2 R2 F2 U' D2 R2 D B2 U2 D L2 F U L2 U B U' B' L' U2 F'" }
{ "F D2 L D' U2 B2 U2 L' F' R2 F2 R L' B2 R' F2 U2 B2 R2 D2" }
{ "B U2 F2 L2 F' R2 U2 D2 B U2 B' U' B2 R' U2 L2 R' F2 D2 F'" }
{ "U2 B2 D2 B U2 F L2 B' R2 U2 B2 L' R D L' D B D2 R D'" }
{ "B' D U2 B' R L' U F R' L2 B R2 F' L2 B' R2 B' U2 F'" }
{ "L2 F2 B2 U R2 U2 F2 B2 D' L2 D2 F L F' L' D' R' U' F B2" }
{ "L2 F2 U2 R2 F' R2 F' B2 D2 L2 U' L D2 L' R U' D2 L' F' R2" }
{ "F L2 R2 D2 B D2 F' D2 B2 R2 B' L' F' U R' U' L' U2 F' R" }
{ "R B2 R2 F2 L' F2 R' U2 R U2 R' D' F R2 U' D' L F' R2" }
{ "U2 L' F D2 F2 U L2 B L D2 B2 U B2 R2 U B2 D R2 B2 U'" }
{ "R L' B L2 U R U2 L2 B' D F2 D2 B2 U B2 L2 B2 R2 B2" }
{ "R' L2 D L D B2 D' B' L2 B F2 D F2 L2 D2 U' F2 D U2 F2 L2" }
{ "D2 B U2 B' R2 B' L2 B' R2 F2 D' L' D L2 F2 B2 D B' U2" }
{ "B2 D2 B2 L2 D' R2 U' L2 U R2 U2 F' R2 D R' U2 R B L2 B' D2" }
{ "R' U2 B2 U2 L' D2 L' D2 F2 R D2 B R U' F' U' F' B2 D B" }
{ "B2 R2 B2 L2 D R2 U2 L2 D R2 U' B U D2 F R U2 L' D' B' R" }
{ "B2 D2 B R2 F R2 B' L2 R2 F2 U2 R U B' U2 F' U2 L2 D B' R'" }
{ "U' F2 R2 B2 L2 U R2 D' L2 D L2 F U' F R2 U L' B2 U B'" }
{ "B2 L2 F2 D' F2 U F2 L2 U' R2 D L R2 D L' U R' B U' L2" }
{ "L' D2 L' B2 R2 U2 F2 D2 B2 L' D2 B' U' F2 B' L2 D R D2 F2" }
{ "R2 L' B F U' F2 L2 B U' F L D2 F2 L U2 R' D2 L U2 B2 U2" }
{ "L2 U2 F2 U' R2 U F2 L2 R2 B2 L2 F' R2 B2 R' F U' B U2 F U" }
{ "U2 B2 R2 F2 D' F2 D2 F2 R2 D L B L' U2 R U F2 D L' D2" }
{ "R2 F' R' U B D B F2 L F' U' R2 U R2 U2 B2 R2 U' R2 F2" }
{ "L2 F' U2 D2 B2 U2 B' U2 L2 F' U2 D' R2 D' B2 L U' L R2 F B" }
{ "D2 B2 D2 L' D2 L' B2 U2 B2 R' U2 F' R F' B' L2 B D' R' D'" }
{ "B2 L2 U L2 D R2 U2 B2 L2 U' F2 L' B2 R' B D' B2 U' L2 F B" }
{ "R B2 F L2 U' B' F2 R' D2 B F' D2 U2 B' D2 B' L2 F R2" }
{ "D2 F' L2 U' R' F R' U' R B' D2 F' D2 B' L2 D2 R2 B'" }
{ "L2 D R2 U2 L2 U' B2 D' F2 R2 D' L F2 R2 D R' U F U F' R'" }
{ "R2 B2 D F2 D' L2 F2 D' B2 D B2 R' F2 D' B' U' B D2 R'" }
{ "D B2 F' R2 F R B2 L D U2 R D2 R' U2 R2 F2 L F2 D2 L'" }
{ "U' B2 U2 B2 D' R2 D L2 F2 U' R2 F U2 L' R U F2 R' F B2 D'" }
{ "R2 B2 R2 U2 D L2 F2 D F2 D F2 B' D' R' D2 R' D' F2 R2 U R" }
{ "L2 R2 D' R2 U2 F2 D' B2 L2 U F D2 R' F2 R B2 L2 R' B2 D2" }
{ "U L2 U' R2 D L2 F2 U' F2 U' R2 F' U2 L2 D' R B' R2 F' R'" }
{ "F2 D2 R2 U2 R2 B R2 D2 F' R2 B' D' L2 D' F' U' R' U' F R' B'" }
{ "L2 R2 B2 U2 B R2 D2 L2 R2 B2 D2 R' B R' F L R' B2 R2 D' L" }
{ "L2 B2 R' F2 U2 R' D2 B2 R' D2 B L U2 L2 D' B' R' F' L' R' B2" }
{ "U2 L' U2 F2 D2 B2 L' D2 R' D2 L' F R' F2 R2 U' R2 U' L2 B2" }
{ "L' D2 B2 R B U' L' D' B' U' R2 U2 L2 D' L2 D' B2 U2 F2 D" }
{ "R2 F U F U2 R D2 U R' D F2 U F2 U2 B2 D' R2 D' R2 D2" }
{ "R B2 D2 R U2 R' U2 B2 L2 D2 R2 B' U' L' B' U D' L B R D" }
{ "F D2 R2 F' U2 L2 B' R2 F U2 F2 R' F R' B2 L D' L' U2 B" }
{ "D L2 D U L U' B' R2 D L' D U2 F2 L2 B2 L2 D' B2 D2 F2 U" }
{ "B2 U2 F2 D2 B L2 R2 D2 F' U2 B U' R2 F2 L' D L' D B2" }
{ "D' L2 D2 F2 R2 D' B2 U' L2 R2 D F' R D' R2 U F' U2 R'" }
{ "R2 D2 F2 B2 L' F2 R D2 L D2 F2 U B' D' B L2 R2 U' B" }
{ "F D2 F R2 B2 R2 B D2 L2 R2 U2 D' L F2 D R B' U' L2 D B'" }
{ "L2 D2 F2 L B2 R2 B2 D2 F2 L D2 F' L' U2 F2 D' R' D' B2 R2" }
{ "R2 D' L2 R2 D' L2 U B2 U' D2 B R' D2 B' D B D' R2 D'" }
{ "B R D F2 D B2 D' U2 L' B' R2 B L2 F' D2 F' L2 B2 D2 R2" }
{ "R' U2 L' D2 L' F2 R F2 R' B2 R' U F2 D2 R B' D R2 B2 U" }
{ "B2 R2 U B2 D' R2 F2 R2 F2 D2 L2 F' D B' R' F2 R D2 B R" }
{ "F2 R2 D' L2 F2 B2 U2 L2 D L2 U R' D2 R' B L2 B L2 B' R2" }
{ "D F2 D' R2 D B2 U2 F2 B2 R2 D B U' D B L' D' B U2 B' R2" }
{ "L' F' R' F2 U L' D' F U' R2 B2 U' L2 B2 U2 B2 D2 B2 R2" }
{ "L2 B2 L2 B2 U2 D2 B' L2 R2 D2 B2 U' L' U' B2 L2 U F' L B2" }
{ "D2 F' U2 F2 D2 F B U2 R2 B' U' L U2 R2 F2 D' L B U B'" }
{ "B' U' B2 U2 F' R' B D' B' R' B2 R2 D2 B2 D2 U2 R' B2 F2 L'" }
{ "U2 R2 D2 B2 U2 B2 L2 B2 R2 D L2 F R D' L2 R' D R' F2 L2 U2" }
{ "F' B' L2 F L2 U2 F D2 R2 U2 R2 U L' B U R2 U2 F U2 D" }
{ "R D R B' U' F2 L' B L B2 R2 L2 D2 R2 L2 B2 D' F2 U2 L2" }
{ "B2 F' D R2 B' D2 F D R D' F2 R2 D2 U B2 D2 L2 D R2" }
{ "U' L2 U2 R2 F2 D L2 R2 U2 F2 U2 L' U' R F B R F D' B' R" }
{ "U' L2 R2 U B2 D' R2 B2 D2 R2 D2 R' F D B R' D2 R' F D' B'" }
{ "L' B L' B' L B' D F' D L2 F L2 U2 R2 U2 B' D2 F L2 B2" }
{ "R B2 D B' L' U2 L F' D B2 D2 R2 U2 B2 R U2 R' L' U2" }
{ "R2 B2 U2 L' U2 D2 B2 L F2 D2 L' F L2 R' B2 R F' D2 R" }
{ "D2 B' U2 L2 B L2 D2 L2 F' R2 F2 U' F2 D2 B U L' U2 B2 U2 L'" }
{ "U2 F R2 U2 B D2 F' D2 L2 F2 D2 L B2 L F B2 D L2 D" }
{ "F R2 U2 F2 R2 B' D2 F' B2 U2 R2 D R U B' L2 F2 D' B U" }
{ "U' R2 F2 R2 D' L2 B2 U' B2 R2 B' U F2 L2 R' U F L R D" }
{ "B2 R2 U L2 B2 D' R2 B2 U' L2 U2 B' R U' D F2 R2 B' L2 D2 L" }
{ "F2 L2 R U2 R B2 R2 U2 B2 R2 U' R2 B' U2 R U' D2 B2 R2 F'" }
{ "L' D2 L' D2 R U2 D2 F2 U2 D2 R2 U L U' L' B' U' D R B'" }
{ "U' R2 F2 U B2 D F2 D R2 U L2 F L2 B L2 U' L' B2 R2 U B'" }
{ "B D2 L2 U2 B D2 B R2 F U2 B2 R F2 L' F U F2 U L R'" }
{ "F' D' L2 U2 F2 D B U2 L B2 R2 B2 D' F2 D' B2 D' L2" }
{ "R2 F2 U' B2 D' R2 D2 R2 U2 L' D' L U' R B' D2 B R2 D2" }
{ "B2 D F2 D L2 B2 U' L2 R2 F2 L2 R U' D' F' L' F' B2 L U' D'" }
{ "R2 F U2 L2 B2 R2 F2 U2 B' L2 D2 R B' R F2 L2 D' L2 B' L D2" }
{ "D2 R2 F' U2 B2 R2 F' U2 L2 R2 F2 D B U2 R B2 D R' F2 R' D" }
{ "U2 R2 B' L2 F L2 F2 R2 U2 L2 D2 L D F' U B U2 L U2 B" }
{ "F' R2 D' R U2 B' F2 R2 U R2 B' D2 F' L2 U2 L2 U2 B2 L2 F2" }
{ "L2 R2 F2 D F2 B2 D B2 D' B2 D F' D F2 D' L F L2 D' F' R2" }
{ "D R U' F' R2 F L' F L' F' R2 B2 R2 D' U2 B2 R2 F2 R2 U B2" }
{ "B R2 F D2 F U2 L2 F' L2 B' L2 R D R B R' U2 D B D B" }
{ "L2 B2 U' L2 U' R2 U F2 U L2 U' L B U D2 B D' L' R'" }
{ "U2 F2 L2 D L2 R2 F2 D' L2 B2 D' R D' B2 U2 R B' L' B L D" }
{ "D' F2 D2 R2 D L2 D L2 R2 U' L2 B' U' D L U B U' D2 L2" }
{ "F2 D' L2 D2 B2 U' R2 D' L2 D F2 B' R' U F D2 B' D2 R F D" }
{ "R2 U R2 D L2 U F2 B2 D' L2 D' F D' F B U2 R D2 F D' R'" }
{ "D' R2 D L2 F2 B2 U F2 B2 L2 R' B2 R B' R' D' R D B2" }
{ "B' D2 B R2 B2 L2 F R2 B R2 B2 L B U' B' U2 B2 R' F' U2 R'" }
{ "B2 L2 F2 R2 D' L2 R2 U' D R' B D R2 D' B' R2 B2 L2 R" }
{ "D' L2 B2 L2 U R2 U' B2 D B2 D' B D' L F B' L2 D' B' D' F'" }
{ "U2 B L2 F' U2 R2 U2 L2 F2 L2 D2 L F U2 F R2 F2 L D' B' D'" }
{ "B2 L F2 B2 U2 L U2 F2 L F2 R2 U' F2 R' D2 F' D2 B U F R2" }
{ "B2 L2 F2 D' B2 U' F2 U L2 F2 D F L2 B2 D' F2 L D2 F2 L2 F" }
{ "R2 U2 F2 B R2 F' R2 U2 L2 B R2 U' R D F2 R U F U' D2 R" }
{ "L2 U B2 R2 D F2 D2 L2 D2 L2 D2 R' B2 U D F D B' D2 B' D'" }
{ "D2 L B' D U2 F2 L B' U' R2 D2 B2 F2 D2 R F2 L U2 F2 U2" }
{ "F R2 U2 B U2 L2 F' L2 R2 U2 B' L U B' D B U R' F2 R2 F2" }
{ "L2 F' U F D' L' U' F' U B2 F2 R2 U' F2 D B2 R2 L2" }
{ "U' R D R D F2 D U' B' F2 D F2 D' B2 U2 R2 F2 U' F2 U'" }
{ "L F2 R F2 B2 R2 D2 L' D2 R2 F2 B D R2 F U' F2 U2 R2 F2 L'" }
{ "B2 D L2 B2 U D R2 B2 U' R2 B R2 B L' B2 D L' U2 R2 U2" }
{ "F R2 D2 B' D2 F R2 F R2 U2 F2 U' D' B' R2 U' L R2 F2 B U'" }
{ "D R2 U L2 B2 U2 F2 B2 D' B2 D' F' L2 D2 F' U' R B R U'" }
{ "D2 F B2 U2 B D2 R2 B2 U2 R2 B' L U2 B' R F' R D' F R" }
{ "U' F2 L2 B2 U' F2 D2 B2 D' L2 D R B' L2 B' L2 F2 B' U L' F2" }
{ "R2 U2 B R2 U2 F' L2 D2 R2 D2 F D' L U B' U B R2 D B' R2" }
{ "D2 L2 B2 R2 F2 R2 U2 F' U2 B2 R2 D' F2 R B2 R U2 L U F' B'" }
{ "L2 B' U B' R2 U F D R' D L2 B2 F2 U' R2 B2 L2 D F2 U2" }
{ "R2 F2 L' F2 L D2 L B2 L' U2 R' U B' U' D2 B2 D2 L' F2 B" }
{ "L2 R2 U2 D2 B L2 U2 D2 B2 D R D' F B L' B' R' B2" }
{ "L2 U2 B U2 F' U2 D2 B2 L2 R2 U2 D B2 R2 B L2 U2 L D L B" }
{ "L2 U F' R' D L' F2 D' L' B' D2 U F2 U' R2 B2 F2 U L2 D' L2" }
{ "B2 D2 L' U2 L B2 D2 R D2 L' R' U' R B L' B' U' D2 L B2" }
{ "B2 L' F2 D2 L D2 F2 B2 D2 R2 U' R' D' B' D' R' B R2" }
{ "R2 U2 L2 F2 U2 R2 F B2 R2 F2 L' U R B' R B D2 F' D L F2" }
{ "D' U2 F' L2 U B D U2 F R2 B' L2 B' U2 B2 L2 U2" }
{ "D2 R2 B D2 F' D2 R2 F2 U2 B' U2 D R' B2 L B2 U2 L' R' F R2" }
{ "F L2 D2 B R2 B2 L2 U2 L2 R F' L2 B' R' B2 D F R D" }
{ "U2 B R2 F' R2 B' D2 R2 B2 L2 F L' F2 D F' L U L R F B2" }
{ "U' L2 R2 B2 D L2 B2 D L2 F2 D2 R' U L' F' U D B' R' B R'" }
{ "R U2 D2 F2 L2 R' D2 F2 U2 D2 R B D2 B2 D R' U2 R2 U2 R2" }
{ "R2 F' U2 F L2 U2 F D2 F2 L2 F U L2 F B' L B L2 U L" }
{ "R D2 F' R2 L B' L' B D R D2 U2 R D2 R2 U2 F2 L' D2" }
{ "U2 L2 F2 B' R2 D2 R2 U2 F' U2 R2 D' L2 D L' F2 R2 F B L2 B" }
{ "U F2 R2 B2 U R2 U2 L2 F2 L2 D' R B' R U' B2 R' D' R2 B2 L" }
{ "B2 U2 B' U2 L2 F2 R2 B L2 D2 F2 R D' B2 D L2 F' U L2 D' F2" }
{ "F2 D' F2 U' B2 D2 B2 D' R2 B2 L U F B' D F B' R' D" }
{ "D F2 R' B2 F U' R2 B U B' R2 F' U2 L2 B2 R2 F2 D2 L2 D2" }
{ "U2 B2 R2 B2 D2 B2 U' B2 U' R2 U F' U2 L2 D' R' B2 U D F U'" }
{ "L2 U F2 U' F2 L2 F2 U D' F2 D' F' U' B2 R B2 U' B2 U L' D'" }
{ "B2 R2 U2 L2 D L2 D B2 R2 B2 D' R' U2 L' U2 D' L2 B' R2 F' D'" }
{ "U L D B2 L F2 D B2 U L2 D2 U2 B2 U2 B' U2 F2 L2 F D2" }
{ "F2 B R2 D2 L2 D2 B' L2 B L2 F D F' B D2 B2 U' R B' R" }
{ "D' B2 U2 L2 B2 U' L2 D' B2 U R2 B D2 B' D2 L' F D2 F L2 D'" }
{ "U2 R2 D' B2 D R2 U' D' F2 U2 D' B' U D' R' F D F D2 L R2" }
{ "F' U2 D2 F U2 B' U2 D2 R2 F' B L' U F' D' B2 U' L' D' L' R'" }
{ "U2 L2 R2 F2 R2 B' R2 B' L2 R2 F' D B' D F' R' D R U2" }
{ "U2 F2 D' B2 R2 U' L2 U L2 D2 F2 R U' D2 B' U' F2 L' F' R2 U2" }
{ "U2 B2 R2 D' B2 L2 D' F2 R2 U' B U B D L F2 U F2 D" }
{ "F2 R2 U B2 L2 R2 U' B2 R2 D' L2 R U2 D' B D' L' U B2 D R" }
{ "D' L2 U' B2 U' B2 R2 U B2 U2 F2 L U' R B2 R2 F2 L' B D2 B" }
{ "U' L2 U B2 R2 U' R2 F2 U' F2 D' L' R2 B' R' U F D' B' R D2" }
{ "L B2 D2 B2 R D2 F2 D2 B2 R F' D L2 D2 L' D2 F' U2 F" }
{ "R D' B R D2 B' R F2 R D U' L2 D' F2 L2 F2 U R2 B2 F2" }
{ "F R D2 R2 B U' R' D' B L D2 B2 D L2 U2 R2 D L2 U B2 U" }
{ "D' R' L B' D L2 D2 F L D2 B2 F D2 F' R2 B' L2 F R2 L2" }
{ "U2 F2 U2 F2 D R2 U2 D' F2 D2 B2 R U2 F U B2 D L D' R' D'" }
{ "F2 U2 L2 F2 R2 F2 U' R2 U2 F2 D B R' D R U' B L B2 U R" }
{ "L2 F2 R2 F2 D L2 F2 D F2 L2 U2 L' D' F B R F' R' F2 L2 D" }
{ "U' R' B' D' U' F D2 B' L' D F U2 L2 F' R2 B L2 U2 B2 D2 U2" }
{ "F2 B2 U F2 B2 R2 D B2 D' B2 U' B' L U' L R U' R F2 D' B2" }
{ "U2 R' D2 R D2 L2 R' F2 B2 U' F R' F' D2 F2 R2 B2" }
{ "B U2 F' R2 U2 R2 F2 R2 F2 B' L' U B U2 F U' R2 U2 L2" }
{ "D' F2 D L2 D2 R2 U B2 D' B2 D' B' U D' L' D' R' U2 L R'" }
{ "U L B2 L D U2 R D F R2 F2 D2 U2 B' R2 D2 B U2 L2" }
{ "D2 R2 F' D2 R2 B R2 D2 B U2 B U' B D2 R B' U' B D2 F" }
{ "U F2 B2 U2 F2 L2 B2 R2 D' B2 D2 L' U F2 L2 U' F D2 R' F2 L'" }
{ "D2 F R2 F2 D2 R2 B D2 F R2 F D' F2 D2 B2 L B' L F' B2" }
{ "B R' B2 L' D F2 U R2 L F' R2 F' R2 F2 R2 U2 F2 L2 U2 F'" }
{ "F2 R2 F2 U F2 L2 R2 U2 D' R2 F2 L' F2 L D2 B L2 U F2 D2 B" }
{ "R D2 R' F2 R U2 F2 B2 L' R' B2 D L2 B U F2 U D' F2 R" }
{ "L2 B2 R F2 D2 L U2 B2 L' R' D2 B' U R2 B2 L' F' L' D B" }
{ "L2 R2 F2 D F2 B2 D2 R2 B2 U L2 R' F R2 U' D' R D B' L2 B'" }
{ "R' D R U' B' L2 U B' D' L2 D2 F' D2 B F2 U2 L2 F R2 F2" }

	}
    }
if {$moves == 2} {
	set b "cross 2"
	.buttoncross.$b configure -background green
	set scramble {
{ "R2 D2 L2 R2 F' U2 R2 U2 R2 F' B R F2 D' R' F' D F B' R'" }
{ "R2 F D2 B' U2 L2 F D2 B L2 U2 R' F B2 D' F D2 R' B2 D" }
{ "R2 D' F2 L2 U' R2 D' F2 L2 B2 D F U D' F B2 L B' D B2 U2" }
{ "B' D2 B' L2 F' R2 U2 D2 F2 R2 B' L' D2 B U' L' D' L2 F2 U'" }
{ "U2 F' D2 B' U2 F2 L2 U2 B' L2 R U2 B' U B D' R2 B2 U2" }
{ "L F' D' F2 R2 F U' R2 B L2 D' U' F2 L2 U' B2 L2 F2 D2 R2" }
{ "L2 D R2 D R2 D' B2 L2 U' R2 U2 B D B2 D2 R' U D2 L' F' U" }
{ "L2 U B' L D' B2 R B2 L' U' B F R2 U2 F2 R2 B' D2 F' D2" }
{ "U D2 F2 D' R2 U R2 F2 L2 F2 R2 F' L' D L D2 R F' D F' D'" }
{ "B2 L2 D2 R' D2 L D2 L F2 U2 R' F D' B U2 D2 R2 D' R' F" }
{ "L2 U F2 B2 U F2 U D' B2 L2 D' F' D R' U2 B D L2 R U2 F2" }
{ "F2 U' B2 R2 U' R2 F2 U2 F2 R2 D' R' D2 B R B' L' B D' B' D'" }
{ "R2 F L2 F' U2 R2 B U2 D2 B D2 R' B' R2 U B U' B' U L F2" }
{ "L' F2 R' F2 R' U2 L2 D2 F2 L U2 B' L' B2 R2 D2 B2 D' L R" }
{ "B' U2 B' R2 F' R2 B D2 F U2 B2 R D R' D' F' B' L D2 B' D2" }
{ "R U' R U2 R L U' R' F' D2 F2 D' L2 D' R2 F2 D L2 B2 U'" }
{ "R' F D' L D' R' U' R' D' B U2 L2 B2 L2 B2 U' L2 D' R2 U' R2" }
{ "L2 D2 R2 U2 B' U2 D2 F B D2 L D R' F L F U2 L' U D'" }
{ "D2 B' D2 U2 R B2 D L B R D' B2 R2 U' R2 D L2 U F2 D B2" }
{ "U2 B2 D2 B L2 R2 B' U2 B D2 B U L' U' R2 B2 D' L' U2 B' D2" }
{ "B U2 F B2 R2 B L2 U2 B L2 U2 R U2 R2 F R F R2 D L' D'" }
{ "L U L' D F' L' D' U' L F' D2 R2 D2 U2 B' L2 B' U2 R2" }
{ "L2 R2 F2 D' L2 D R2 U B2 U F2 R F2 U2 L2 D F D F2 U' B'" }
{ "L' B2 R' D' R2 F U2 F U L2 D2 B2 R2 U2 F D2 B D2 L2 F'" }
{ "L2 B D2 F B2 U2 B L2 F D2 L2 U F L D' F' L2 D2 F' L'" }
{ "D' L' B' L2 F D' B' L' F' L' B2 D2 R2 L B2 D2 R U2 L2" }
{ "L2 U2 L2 F2 U F2 D F2 L2 F2 U L' D2 F L D L2 D' B' U2 D'" }
{ "R' U2 R' U2 B2 R' D2 L2 R' U' B' D' L' F' B L F L'" }
{ "D R' D B' R2 B2 F' D B2 R' B L2 U2 B' F2 R2 D2 F R2 U2 B" }
{ "F2 D2 F2 U' D2 L2 F2 B2 U2 F2 D R' B' U R' F2 L2 R B R'" }
{ "D2 L' U2 R' B2 D2 R2 U2 R2 D2 B2 U' F' R' F D F2 R' U2 L2" }
{ "D L2 R2 D' F2 D B2 U' B2 D' L2 R' B' D2 B L D R F L' D2" }
{ "U2 L2 U' R2 D R2 D' F2 R2 B2 L2 B D F' L B U B L' U' L" }
{ "L2 R2 F' L2 R2 F2 L2 F D2 R2 U2 L D L2 B2 R F' B2 R2 F D" }
{ "F' U2 F' L2 F2 U2 F U2 B' U2 L2 D' F' R2 F R2 U2 L' U2 D' R" }
{ "B U2 B D2 F' L2 F L2 B U2 B R' D B2 U R' F' D R' D2 F2" }
{ "U R2 U R2 U L2 B2 R2 F2 D B2 L B' D2 B D R D2 B2 R' D2" }
{ "U2 F2 U2 R F2 R B2 L F2 D2 R' D B L' F2 D2 B' D R U B'" }
{ "U2 R F2 U2 L' B2 D2 R2 U2 B2 L2 F L' F2 R2 U2 B2 D' B R" }
{ "B2 U2 F2 B2 L' D2 F2 D2 R' B2 R' U' B' L2 F B' R2 U2 D' L R2" }
{ "B2 R2 B2 D' L2 D B2 L2 D B2 L' F' L2 F' U' D R' D B' U2" }
{ "L2 U2 R2 U2 R2 F2 U2 R U2 R U D L' D F D B L2 D F' D" }
{ "U2 F L2 R2 F2 L2 D2 F' D2 R2 B2 U' L' U' B D R2 F' B R B" }
{ "B2 U' B2 R2 U' F2 D R2 U' F2 D2 F' U' L' B2 L' F2 R' F2 D F" }
{ "U R2 D2 F2 L2 F2 D R2 D' L2 D R B D2 L2 B2 L2 D2 B' D" }
{ "L2 U2 R U2 R' B2 U2 B2 R F2 R F R D' R' U B2 L F D2 F2" }
{ "F' R2 F B2 L2 F D2 B L2 U2 L2 R U L2 U D2 L R U2 F" }
{ "R2 B' F' R' F' U2 F D' F L D2 R2 U' B2 L2 D' B2 F2 U' F2 U2" }
{ "D2 B U2 L2 F2 B' U2 F' L2 F' B2 R B' U' B' U F R' U2 L' B2" }
{ "L' D L2 F2 D' U2 B R' L2 F2 U F2 D R2 D' R2 U B2 U" }
{ "L2 R2 B' L2 B2 R2 B L2 U2 D2 F' D B2 D' F' U' L U2 R' D R'" }
{ "D F' R' U' B' L2 D' L' F2 L' B2 D2 L2 D R2 F2 D' B2 D' R2 D" }
{ "U2 F2 D B D B' U2 B R F2 U2 R' B2 D2 R U2 L' B2 R'" }
{ "B' D2 L B L' F L2 D' R' D R2 L2 U F2 L2 U' R2 D' R2 D" }
{ "U2 B2 D' L2 U R2 U' R2 B2 U L' F' U' R B2 R F' L2 U' R2 D2" }
{ "B2 R2 F2 B' L2 F' L2 U2 B2 U2 R2 D' L' D' L F2 B2 D' B2 U2" }
{ "F L D L' U2 L2 B R2 B R2 L D2 B2 L F2 R B2 F2 U2 R'" }
{ "D' F2 R D F L' U F' D L2 D' R2 D2 L2 U R2 D R2 L2" }
{ "B2 D2 L2 R2 D2 F L2 F' R2 D2 F' R U2 L' F D' B' L' D2 L2 F2" }
{ "F2 R2 D' F2 D2 L2 F2 U B2 U L2 B U2 D R U2 D2 B U2 R F'" }
{ "L2 D L2 R2 D R2 D L2 F2 U2 B R F D B2 R F D2 B R" }
{ "F' B2 L2 F L2 D2 B L2 D2 L2 B2 D L' B R' B' R U B D" }
{ "L D' F D' R2 D R F R' D' U2 F2 D' R2 L2 U R2 D" }
{ "F2 L' D2 L' F2 B2 L' D2 F2 D2 R2 U F' B' U' R U2 R B'" }
{ "D' R2 U2 F2 L2 U F2 D L2 D2 R2 F L2 B' D L D' R2 U B R'" }
{ "B2 R' F2 L2 R U2 R' F2 D2 B2 R2 B' L2 B L F2 D B L' D'" }
{ "F2 U2 R2 B2 U2 R F2 R' B2 D2 R D' R' B' D' L' R' B2 D2 F2" }
{ "F2 R L2 U' R2 B2 F U' F U2 L' D2 R2 D2 L' B2 U2 B2 L F2" }
{ "L2 F2 B2 D' B2 L2 U L2 F2 U' D F U D2 L' D2 F2 U2 D2 R" }
{ "R2 D2 B U2 F' D2 B2 R2 F D2 B' U B' R' D' B2 L' D2 L' R' U'" }
{ "D2 B2 R D R U2 F U' R D2 B2 L2 B2 L2 U' B2 D2 R2 U' L2" }
{ "U B2 U' R2 D F2 U2 F2 D2 L2 D' B' U2 L' D' L' R U2 D2 B2 U'" }
{ "B2 D' B2 D B2 R2 U2 B2 R2 U' B R2 B' U D' F' U2 F' R D" }
{ "L2 F D L D2 R' B2 D2 U L' U2 B2 R L' B2 D2 B2 L D2 B2" }
{ "R U' R2 B D' L2 U2 R' U B' R2 F' L2 U2 B2 D2 U2 L2 D2 F'" }
{ "U2 D L2 R2 F2 U2 R2 D2 L2 D' F2 L' F2 U R D2 R U2 F' B2 D2" }
{ "R2 F' D2 R2 B' U2 B2 D2 F' L2 U2 L B' R2 U' F' U F L F2" }
{ "F D' U' F2 U L' B' D' F' R L2 B2 R D2 R2 D2 B2 D2 R'" }
{ "F2 L' R' F2 U2 D2 L' D2 B2 D2 L2 B U' D F2 L U2 R2 F2 D' F'" }
{ "B' L2 F L' D F D2 F' R U B2 R2 F2 D2 R F2 L U2 R2 B2 R'" }
{ "D F2 U L2 R2 D' R2 B2 R2 U F2 R U2 F' L' F' L' D' L D2" }
{ "D2 B' D2 R2 B' D2 B2 U2 F' U2 B L D' R2 B' R' D' B L' R' D2" }
{ "R2 F2 U2 L2 D2 L2 R2 D R2 F2 D' F' U R' B' U2 B' D R F2 L2" }
{ "F2 D R2 U B2 D R2 B2 L2 R2 U B U' F B' U' R D B R' D" }
{ "D2 B' R2 F' R2 U2 B2 U2 B' R2 B U D' F' L F' R2 U B R2" }
{ "F D2 R2 F L2 B2 L2 B' R2 U2 L2 D R' U2 D' B' R' U2 D2 B' L2" }
{ "D2 R U2 R F2 L B2 R2 U2 F2 R B' R' U2 R' D' R2 F' L2 R' D2" }
{ "D2 R2 F L' U F' L D F' U' R2 D' L2 U F2 U' R2 L2 F2 D'" }
{ "F2 U R2 D L2 R2 D' R2 U' R2 D2 F D' B2 L' D F2 L2 U2 D' B" }
{ "D' F2 D2 F2 B2 R2 F2 D F2 R2 D' F' B2 R' D2 R' D' B2 D F2 U'" }
{ "F2 U F2 B2 R2 U2 F2 D' R2 F2 D F L F L D2 F' U B U' L2" }
{ "R2 U2 B2 R2 U2 B2 U B2 L2 B2 U' L B U R2 B2 L' F' B U R" }
{ "R2 B2 R D2 F2 U2 L2 D F' R2 L2 D U2 F2 D2 F2 R2 U B2 D2" }
{ "L2 F' R F2 D' B2 F U2 R' D' B2 D' F2 D B2 D' B2 U F2 D" }
{ "L2 F2 U2 L2 B2 U' B2 L2 U' L2 F2 L' R' D' R' U' F' U D' L D'" }
{ "F R' B2 U F L F' R U2 L D2 L2 D' U L2 B2 U B2 L2 B2" }
{ "B2 R2 F2 U2 F2 U D2 F2 U B2 D' L' U' D R B2 L2 F' U' R' D" }
{ "R2 B D2 F R2 B' U2 D2 L2 D2 B L' D' L2 D' B L' U2 B L' R'" }
{ "L2 D' R2 U D2 F2 D L2 B2 R2 D B' L' F U2 D F L D' L2" }
{ "D F2 L U' B D2 R D2 B' U R2 L2 B2 D2 U' R2 U2 B2 L2 F2" }
{ "U2 L2 U B2 U' F2 U' B2 R2 B2 D2 R F' R' F U F' D' F' L' D'" }
{ "B2 L2 U' F2 B2 U' B2 L2 F2 L2 R2 B' D R D' L2 F U' B2 L2 U'" }
{ "F R2 D2 B D2 B' R2 F2 R2 F2 D2 R U' B' R' B U' B L2 U'" }
{ "R B F L' B2 U R2 L' U2 B' F2 L' D2 B2 R2 D2 L' U2 B2 R'" }
{ "B2 U' B2 L2 U' F2 B2 U' L2 U F2 B U F U' F' D2 R U' L' U2" }
{ "L2 U2 F2 U' F2 R2 D L2 U' F2 B' L' R2 B2 U B2 L' R' D2 R'" }
{ "U2 F2 D B2 D2 R2 B2 R2 U F2 D2 L' D2 B2 U' F D' F B' U B2" }
{ "L2 D' R2 B2 D F2 R2 B2 R2 U2 D' L' U' B2 U L' B' U' L' D'" }
{ "R' B2 R' D2 B2 U2 D2 B2 D2 R2 U' R D B' R' D' F2 R' U'" }
{ "B2 U' L2 D B2 R2 D F2 D2 B2 L2 F R2 F L B L U' D2 F'" }
{ "B2 R2 B2 D' F2 R2 U' R2 U L2 B' L2 B' U L U' R2 B2 U L2" }
{ "F2 U2 F2 U' F2 U' R2 F2 B2 U' D2 B' R' B D F' R D2 R F U" }
{ "F2 U' F2 D' L2 R2 U' B2 U' D2 B' L' F2 D' L2 U' L2 U B" }
{ "U2 F2 L' R' B2 L' F2 L F2 R' U2 D B' D' F2 U' R' D' B2 R U2" }
{ "U F' D' F R2 U2 B' D' B R' D2 L2 D2 R' D2 U2 B2 L' B2 L'" }
{ "B' D L' U R B2 U R B U2 B2 D2 U2 B R2 U2 F L2 F" }
{ "B' U2 L B' L' D F D' R L2 B2 F2 U2 L' D2 U2 F2 R F2" }
{ "B2 U L2 D' F2 B2 U R2 B2 R2 U2 L' B' D' B2 D' B2 L2 R U' B'" }
{ "U D' R2 F2 U2 R2 F2 D' F2 D' F2 B' L2 U' L D B U' F B' L'" }
{ "L' R2 F2 B2 R' F2 R' B2 U2 R2 D R2 F B' U' F2 D' F B R" }
{ "L U2 R F2 L F2 B2 D2 F2 R D2 B D B L' D' F B U2 B2" }
{ "D2 L2 U' R2 U' L2 U L2 F2 B2 D' R' B L F' U F' B R U D2" }
{ "F2 B2 L2 U' B2 L2 U L2 D' R2 F2 L' B2 D F' L' B2 R' D2 L' D'" }
{ "B2 U L2 D L2 U B2 D2 F2 B2 D2 R' D B2 D B R B2 U2 D'" }
{ "B2 L2 B2 U R2 F2 U' L2 D' R2 D B U R D2 F' D' F' R' F2 R" }
{ "R2 B D2 B' U' R2 L D' L D2 L2 D' U R2 U R2 B2 D2 F2 U" }
{ "R2 U' B' L D' L F2 R2 B2 L2 D2 B R2 B2 L2 U2 F'" }
{ "U' F2 U L2 D2 F2 U L2 B2 U L' R2 F2 L' B' D2 B2 L R D'" }
{ "L2 U2 R' F2 U2 R U2 D2 B2 L D R' F' D L2 F2 U' B' U R" }
{ "F2 U2 F U2 D2 B2 L2 B' L2 F L2 U B2 L U' L R D2 R' B2" }
{ "L F2 U2 F2 B2 R' U2 L F2 L' R2 F' B2 L2 U' F' D R D' B2 U2" }
{ "B2 R2 B2 U' L2 U R2 B2 U' D2 L2 F' D B2 R2 D' R2 U' R F U'" }
{ "U' L2 U' L2 R2 U F2 U F2 U2 D2 B' L U' D B D2 B L' F R" }
{ "R B2 D' F D' F2 D' L2 B L B2 R' D2 F2 U2 B2 D2 R' B2" }
{ "R2 D B2 U B2 L2 U B2 L2 U' R F' B R2 F D2 F' D F D" }
{ "D2 L' U2 D2 F2 L' U2 L2 D2 B2 D2 B R' D' F2 R B' U' R2 D" }
{ "D' L2 U2 D' L2 B2 U' R2 D' L2 R2 B L2 F' L B U2 B' R2 U' B2" }
{ "F2 U2 L' U2 D2 R2 D2 L' B2 U2 F2 D' F2 R' D2 F U' R' D2 F" }
{ "F' L2 F' D2 B D2 B' D2 F' R2 F' L' F D' L2 B D' L2 F U D'" }
{ "D2 R F2 R D2 R F2 R' D2 L D2 F U' F' U' B2 L' D' L' R U" }
{ "F' R2 D2 F D2 R2 B2 U2 B R2 B' L' U2 D2 B R2 F' U' B R F" }
{ "D' L2 U' D2 R2 D2 L2 B2 L2 R2 D L' R2 D L F' R2 U D2 L D" }
{ "L2 U2 L2 B2 D L2 U' L2 R2 F2 D' R D' L2 B' U' D2 F' L2 B' D2" }
{ "D2 F2 D2 B2 L2 D' F2 L2 D' B2 U R D2 F U B' U' F D B' R'" }
{ "L2 B U2 L2 B2 R' B D R2 B D2 B2 R2 D F2 R2 B2 D L2 U2 L2" }
{ "U2 L2 F2 L2 B2 R2 F L2 U2 B' L2 D R U' F' B D F2 R2 B" }
{ "F2 D' U' F2 U' B' D B2 L F2 D R2 D L2 B2 U2 L2 D F2 U" }
{ "F2 R2 F2 L B2 L' D2 L2 U2 R' F2 B' L' R2 U2 R F R' D'" }
{ "D2 R L D F2 D F' D' R' B2 U2 B2 D2 L2 B D2 B' F R2 D2" }
{ "D L2 U F2 B2 U F2 R2 D' F2 D2 L' B' U L' D' F' B R2 U2 B" }
{ "B' D2 L B2 D' B2 R B2 L B R' D2 F2 U2 R' B2 R L F2 U2" }
{ "D2 L2 D2 F2 U R2 D' F2 R2 U L D L R2 D L2 F B D' F' D2" }
{ "R2 B' R2 D2 F' D2 B R2 U2 F2 R2 U L U' B2 R D F2 L2 U R'" }
{ "U B2 U' F2 U' L2 U' B2 L2 F2 U' F L' U L' D2 F' R2 B2 D' B2" }
{ "R2 U2 F2 L2 D' F2 D' B2 R2 D L2 B' R' U2 L U B D' B2 L B2" }
{ "R2 U' F2 D F2 D L2 D L2 R2 D L D' R' F2 R B2 L2 D B' D'" }
{ "D R2 U2 F2 L2 U' B2 U' L2 U' R2 B R2 F' L' U B R2 F D2" }
{ "R B2 R B2 L2 F2 U2 R F2 R U2 B R D L2 F D B U' F U'" }
{ "D2 F2 R2 D R2 D2 L2 F2 R2 D F2 L R2 D' R2 U' B' L2 D F B" }
{ "L' B R2 B U F' D2 U2 L B2 D2 L2 F2 D2 F2 U2 L2 D F2 L2" }
{ "L' F' D2 L D2 F' R D R2 L2 B U2 L2 D2 F' D2 B2" }
{ "B2 D B2 F' R2 U B R D' R D2 B' D2 B2 F D2 L2 B' L2 B" }
{ "D2 R2 F2 B D2 F R2 F' U2 L2 B R' U' B R F U' D L D'" }
{ "F' R D' L' D L' F2 R' B2 U2 L2 U2 B D2 B' D2 L2 B' F2" }
{ "F' D2 B2 L2 F' D2 F L2 U2 R2 B R F2 D R' F2 B' U L2 R' U'" }
{ "F D' F R2 U2 L U' R2 F D' F2 D2 R2 U' B2 D' L2 F2 U'" }
{ "D2 B2 U L2 R2 B2 D R2 U F2 B D B2 R F' B' R2 U' B R'" }
{ "L' D2 L2 B2 R F2 D2 F2 B2 L2 F2 D' L B R F' L2 F2 L F' D" }
{ "F2 D2 F' R2 D2 B' U2 L2 R2 F' R2 U' L F2 D L2 F' U' R' F R2" }
{ "R2 F2 B2 R U2 R B2 L2 U2 D2 F2 B U2 L D B D' R U2 R'" }
{ "F2 D' L2 U R2 U' F2 U2 D B2 L2 B U L' D' L2 D' B' L2 B' L2" }
{ "F L2 F D2 B U2 B R2 F U2 B2 L D' F2 B' L2 F' D2 L' D2 B" }
{ "L2 R2 U' F2 B2 U' L2 U R2 B2 R U D2 R' D F' D2 L' D' L' U" }
{ "B2 D2 R2 U2 B' R2 F2 L2 B U2 F2 L' U L2 U B' U' B2 U L' B" }
{ "D2 L B U2 B D B' U' L U2 B2 R B2 R2 L' B2 U2 B2" }
{ "F2 D' F2 U2 B2 U' L2 U2 L2 R2 D' R U B2 R D' R' F' U2 B' U'" }
{ "F2 R F2 R2 D2 B2 U2 L' F2 D' L' D2 F2 D2 R F D R'" }
{ "B2 L2 D R2 U B2 L2 U2 B2 U' D' F L2 D' R2 D B' L' U L2" }
{ "R2 D2 F2 U2 R2 D2 B' D2 B' R2 B' U' F2 L U' L' F' R2 D2 L" }
{ "D' B D2 R2 B' R L D' B2 L' D2 F D2 U2 B R2 D2 F U2 R2 F'" }
{ "U' B2 L2 D' L2 U L2 R2 B2 L2 D F' D2 B' R2 F R D' B' R" }
{ "D2 F' R D2 F L U2 L2 D' L2 B2 F' D2 L2 B' F2 U2 R2 U2 L2" }
{ "L2 B2 R2 U' D2 F2 U L2 R2 U2 F2 R F2 U R2 B L' B2 L' R2 F" }
{ "D2 R' U2 R' D2 B2 R2 F2 R U2 L D B2 L2 U F' U' F U' D" }
{ "D2 R2 B R2 U2 D2 B D2 F2 B2 D2 R F B' U' R' B' U' D2 F' L" }
{ "D2 B2 D' R2 U2 F2 D' R2 D R2 D2 F U2 F L' U F2 D F D R2" }
{ "U2 F L2 B2 L2 U2 R2 B U2 F' B2 D L2 U2 R' D' R F B2 D2 B2" }
{ "D R2 U L2 U2 F' D2 R' U F D' B2 D R2 F2 L2 F2 R2 U F2 U'" }
{ "D2 F L2 F D2 B' L2 D2 L2 U2 B R U' B' L2 R' B' D2 R2 U'" }
{ "F R2 F' U2 R2 F L2 U2 L2 B2 R' D F2 R B D2 R' U' L2" }
{ "L2 B' D2 B L2 R2 D2 B D2 F2 B' D L' D F2 B D2 B L' U2 R'" }
{ "R' B2 R' B2 U2 R' F2 B2 R' F2 U' F R F' L' R B2 L2 D" }
{ "B2 D L2 B2 R2 F2 R2 U' D2 B2 D L U2 R D' R2 D2 F L B2 U2" }
{ "F' D2 R U' R' L D B2 D2 B' R' F2 U2 R2 F2 L D2 U2 R' U2 R" }
{ "L2 B2 D' F2 U' F2 B2 L2 U2 R2 U' R F' U D F2 L2 R' U L' U2" }
{ "L2 D2 B2 U' R2 D' R2 B2 D B2 D' R F2 L' D2 R' F D' F U2" }
{ "D' R2 F2 D' R2 U F2 D' B2 U R' U2 D' F' L' D2 L2 U D L" }
{ "L' R2 F2 B2 R' F2 L2 F2 D2 F2 L F' L2 B2 D' F2 L U2 B' U2" }
{ "R2 D F2 U B2 U' B2 L2 U2 F2 D2 F D2 F' U' L D' F' U R D'" }
{ "F' L2 U2 B L2 B' D2 L2 D2 L2 B U F L2 B2 D F2 L2 R' U2" }
{ "L2 D L2 D' B2 U' B2 U L2 U' R2 F' L' B D B R U' R F' L'" }
{ "L2 D' F2 D F2 D' R2 U' D2 F' L' D B R2 B R' U' D" }
{ "L D2 R' F2 U2 R' D2 L2 F2 R D' F' D' B2 U2 L' U' F' U'" }
{ "F2 R F2 L2 D2 L U2 F2 R2 F2 R' F U' L' F U' D2 L' B' D F2" }
{ "L2 D2 R2 L' B R' B D B U L2 U' F2 D R2 B2 U' L2 F2 D2" }
{ "U F2 U' R2 D' L2 U B2 U' R2 D B' L2 D' B' R U D F2 L2 U2" }
{ "U2 L2 F2 L2 R2 D F2 D' B2 U2 B2 L' F D2 B L2 F B2 D2 L' D2" }
{ "U2 F' L2 F2 L2 R2 F' U2 D2 F L' F L B U' F' U F'" }
{ "B U2 D2 B' D2 B' L2 R2 F L2 B2 R' D2 R' U D L2 D' B' D' B'" }
{ "L F2 L' U2 L B2 L2 B2 D2 R' D2 B D B2 L U2 D R2 B2" }
{ "U2 F2 R2 F2 B2 D2 R2 U D2 R2 D2 F U D L' U2 R' U2 F' U' F2" }
{ "B2 L B D' R B D2 L B' L2 D2 R' U2 R' D2 R2 D2 F2 R' D2" }
{ "D2 U2 L2 B' R2 F U' R2 L' D2 L2 D2 B U2 F2 U2 F' D2 F'" }
{ "B' R2 F' R2 B' R2 D2 B U2 R2 D2 R D F2 D2 L D' B2 U F' U'" }
{ "B R' D F' R D R2 D2 F' U L2 F2 U' B2 D' L2 U R2 L2 D" }
{ "U F2 D' B2 R2 U D2 F2 R2 D R2 B D' L U L' F2 D2 R2 U' L'" }
{ "F2 U B2 L2 R2 U F2 L2 B2 U2 R2 F D R' U' R' B' R2 F2 L2 B2" }
{ "F2 R2 F2 B2 U2 D B2 U2 F2 R2 U' F U R' F U F2 B2 R U F'" }
{ "L' B2 R B2 R' U2 L' U2 D2 R2 D L F' R D F' D2 L2 D2 L" }
{ "F2 U F2 U' L2 U R2 D2 L2 F2 D L F B2 U' R D' B U' R U" }
{ "R2 F D2 F R2 B L2 U2 L2 F' L B' L' D2 B' U L D'" }
{ "F2 U B2 R2 F2 D' F2 L2 U L2 D' F' R2 U' L2 D' B L' R2 D' F'" }
{ "F2 R2 D L2 U2 B2 D' L2 F2 R2 U2 F R2 D' F L' U B U" }
{ "L2 B R2 B F2 R' U F2 D2 F2 R2 U2 R' D2 F2 R' F2 D2" }
{ "D2 L2 F2 D' L2 R2 B2 D L2 R2 D L B L F' U D L' F' D R2" }
{ "L2 U2 R2 B2 L F2 R2 U2 L' B2 R' F D2 F R2 F D L U2 R2" }
{ "L2 R2 B R2 F B2 L2 F L2 R2 F' U' D2 B L' U L B2 R2 B" }
{ "F2 D2 F' B2 U2 L2 U2 L2 F U2 F U' B U2 B' L' U D' L' B' D" }
{ "R2 B2 U' L2 F2 U' D2 F2 U' L2 D L' U B2 U R B D B2 R2" }
{ "B D2 U' L2 B2 F L U' F' D2 L2 U' B2 D2 F2 R2 D L2 U' B2" }
{ "L F2 B2 R U2 R2 F2 D2 R2 D2 B' L D L' B' L R D R2 B'" }
{ "U2 L2 U F2 R2 B2 D R2 D R2 D R F2 B2 R' F B2 U L D L2" }
{ "L' F' D2 R' U L2 B U R L2 B' L2 U2 B' U2 F2 D2 L2 B F" }
{ "U' R2 B2 R2 D2 L2 U2 D' B2 R2 D L' D2 B2 R' U D2 L' D' B'" }
{ "R2 D' F2 D2 F2 L2 D' R2 U2 L2 D F' D L2 B2 U2 L D' F' B2 R'" }
{ "F2 D2 L2 R2 F D2 F' D2 R2 F D2 L' F' U2 R2 B' U2 D F2 L" }
{ "L2 B2 L2 U F2 L2 R2 D F2 D2 L2 B U2 F' D R B' U' B' U2 B2" }
{ "B2 D2 U2 R' U F' L' D' F' D2 U' R2 U L2 D L2 U B2 F2 L2" }
{ "R2 U2 F2 R2 U D2 B2 D L2 R2 B' U' D B2 R' F R' F' U2" }
{ "B' R2 D2 B R2 D2 B R2 F L2 U2 D' L' B2 D F2 U' B2 R D2 B2" }
{ "B' U2 B2 L2 F L2 F' D2 F U2 R2 D' F B R D B' R2 U F2" }
{ "F2 U B F U' F R' B' L' F2 U' B2 L2 U' R2 U L2 B2 F2 U'" }
{ "D F2 D' R2 U2 F2 U2 B2 R2 D F' U F2 R F' D2 F' L' U B2" }
{ "U' B D' R2 F L B2 L U' B R2 B' D2 R2 U2 R2 F2 U2 F' L2" }
{ "U F2 L2 U' L2 F2 D2 R2 F2 D R2 F' U' F U D2 L D L R'" }
{ "F2 R2 U F U L2 B' U2 R L2 B2 L2 D2 B' D2" }
{ "L2 U' F2 U2 L2 U F2 U2 F2 D' L U' B2 U' B D' B' L' U' B2 R'" }
{ "B' D2 R2 U2 R2 F U2 D2 B U2 B R U L2 F R2 U' L2 U' L' U" }
{ "R2 B' R2 U2 L2 R2 F' D2 R2 F' U2 D B2 L' B2 D' L2 R' F' R F'" }
{ "L' D2 B' D B2 R' U' F2 U R2 B' D2 F U2 R2 U2 F2 R2 F' D2" }
{ "R2 D' R2 B2 U' F2 U L2 U L2 U B' D' F B L' R2 B L' D' F'" }
{ "U2 F2 U' D2 L2 D2 L2 F2 D' B2 D' B U D B R' D' R' F' D R" }
{ "B2 R2 D L2 F2 L2 F2 R2 U' F2 U2 L' B2 L' U' R' B2 U F2" }
{ "B2 D2 L2 B' U2 B' D2 R2 U2 R2 F2 U' L2 U R2 F' B L D F' B" }
{ "F D L' F U2 F D2 L2 U' R2 F U2 B2 D2 B' R2 B' L2 F D2" }
{ "U2 R2 F2 L2 R' D2 R D2 B2 R2 D2 F' U2 B2 R2 F' L D B U'" }
{ "F D2 U L U2 B' D' B U' B2 F D2 L2 B2 D2 B' R2 D2 B" }
{ "L2 D' R2 D L2 R2 B2 U R2 D2 F2 L B U' B R' B2 L' D' R F'" }
{ "B R2 D2 F D2 F' R2 U2 F2 U2 B D F R2 B U F' U R D' B2" }
{ "D F2 D' F' L' B' D L D F L2 F D2 F L2 F D2 B R2 L2" }
{ "D2 B' L2 F R2 B' L2 F2 R2 U2 B2 L' F L B' D' F D2 L B" }
{ "R2 U' R2 D F2 R2 U2 L2 U R' F' U2 D' L2 F' U D' R'" }
{ "D2 F2 L2 F2 L2 D2 R2 D R2 D' L B2 U' B' U L2 F2 R2 F2" }
{ "F2 R' B2 R2 D2 R' U2 L B2 L2 R2 F' L' U R' U2 R U' F' R2" }
{ "D' F2 D' B2 L2 R2 B2 D' R2 F2 U F' D R' F R2 D R' U2 B" }
{ "U' L2 U' L2 U' R2 D' L2 U B2 U2 B' R D' F' U' F B2 U2 L F'" }
{ "U' B2 U L2 U' F2 R2 U2 F2 L2 U2 L' U2 L' D F R F B L2 B" }
{ "R B' F' D2 F2 D F' U2 F' L U R2 F2 R2 D' F2 U' R2 U2 L2 D2" }
{ "L2 B2 U2 B' U2 B' L2 F2 U2 B U2 L D L2 R' D' R' F' B R2 B2" }
{ "U2 F2 D2 B R2 B' D2 F' R2 F' R2 D R D' F B' D' R2 D' R2 B2" }
{ "F2 U2 R F2 B2 R2 B2 L' D2 L U2 B L D B L F' D F2 U D'" }
{ "B2 U F U' R' D' B2 U F' L2 D2 U2 B2 L F2 R U2 R F2 L" }
{ "R2 B2 U R2 U' L2 D L2 R2 B2 D2 L U B D B R2 F2 R" }
{ "B2 D2 L2 F' R2 B' D2 R2 B' L2 B2 R F R' D' B D' F D B2" }
{ "B' L' D B' R' D' L B D U2 R' F2 L U2 L' U2 F2 L2 U2 B2" }
{ "U2 L2 U' B2 D L2 R2 U' F R2 B' L R F' B2 U2 L D' R'" }
{ "D2 L B D B U R D2 U' F' U2 R2 F2 U2 F' R2 U2 B' R2 B" }
{ "F2 R U2 R F2 R B2 U2 F2 B2 L2 U R2 B2 D' L' U B' U R" }
{ "L B2 R2 F2 U2 L R2 B2 L U2 B2 U D F' U B' L D' B' L" }
{ "D' R L2 B2 D L' B' U' L' F2 L2 F L2 F' D2 U2 F' U2 B' D2" }
{ "B D2 F' D2 R2 B' U2 L2 B' R2 U2 R' U B2 D' F' U' D' R D R'" }
{ "B2 D R2 D2 U' B R D2 R L2 U R2 U' F2 U F2 U' L2 F2 U" }
{ "U' F2 L2 R2 U2 L2 D' R2 U F2 R2 B L2 B R F' B2 R B' D2 R2" }
{ "F2 R D2 L' F' U2 R F U L' U2 L2 D2 U2 F L2 U2 B U2 B F2" }
{ "F2 L' U2 B2 L B2 L' F2 R F2 B2 D R2 U2 B R U L D R2 U2" }
{ "B' U' L B2 D F' U' B' F D2 B2 L2 D L2 U R2 D U2 B2 L2" }
{ "F' B2 U2 B R2 B2 D2 L2 U2 B L F2 D F2 L F U' L R' D2" }
{ "D' R2 U B2 R2 U' L2 D2 R2 U2 D' L U' F R2 U' R2 B2 L D' B2" }
{ "F2 U B2 R' B2 R2 D B2 R2 F2 D2 L U2 R' U2 L B2 F2" }
{ "F2 U L2 D' B D2 U2 R B U2 F2 R' U2 R F2 L2 B2 F2 D2 L'" }
{ "R2 D2 B D2 L2 D2 F' B' R2 B U2 D R' D2 R D2 B' D R2 D2" }
{ "L' D' B L2 B2 D' L2 B' R' D B2 R' F2 D2 L2 D2 R' U2 L F2 R'" }
{ "B2 U2 L2 R2 F' D2 F' U2 L2 F B U F' L2 B2 L R D B2 L2 D'" }
{ "R2 D2 B L2 F' R2 B' L2 F' R2 B D' R U' B D' B' L' B2 R U" }
{ "B2 L2 U' L2 D' B2 U B2 L2 B2 R U2 F L' D' L' F R U2 R" }
{ "B L2 F' U2 B' U2 B R2 F2 B' U2 D' L D L2 F' L' F' R2 F2" }
{ "U2 R2 D2 B2 U' B2 U' R2 F2 R2 F2 L' F U L' B' L' F2 L' F2 D" }
{ "U F2 D L2 R2 F2 D B2 D L2 U2 F' L D' B D2 L' B2 U L F" }
{ "R' D2 B2 R' F2 L D2 F2 B2 L2 U2 D R' B D' F2 B U R F2" }
{ "B2 R2 U F2 D L2 R2 B2 L2 D R2 B R U L' U2 L' U R2 D R2" }
{ "U2 D F2 U' F2 R2 U' L2 F2 D B2 R F2 U2 D L' R' F' D' F' U2" }
{ "F2 B2 D L2 F2 D' B2 U' B2 R2 D2 B U2 L2 B2 R' B2 D L2 F' R2" }
{ "B2 L' B2 R' B2 R D2 B2 L' B2 D R2 B D' L2 U F2 R' U" }
{ "F2 L2 U' B2 D L2 U' F2 R2 D' B2 L U' D B' U F2 R2 D' L2" }
{ "D2 B L2 U2 B D2 B' D2 B2 L2 D2 R' D' F R' D F2 D F D'" }
{ "F2 L2 F' L2 D2 B' L2 D2 B' U2 F' U R' U D2 L2 U2 F2 R' B" }
{ "B' L2 U2 F' L2 B' D2 R2 B' U2 F2 U' F D L' D' L2 D2 F' D2" }
{ "F' U2 B2 D2 B D2 B' R2 B R2 B' U R B2 R2 U2 D' F' U' F2 D2" }
{ "R2 U2 B' R2 B' L2 U2 F L2 B L2 U B R' U2 R' F U B' D2" }
{ "L2 F2 R2 F' L2 D F R L B2 L2 B2 U B2 D' B2 L2 D U L2" }
{ "U2 B2 D F2 D F2 L2 D2 L2 B2 U' R' B2 L U2 L2 U' F D R U" }
{ "B2 D' L2 D R2 F2 U B2 D' R2 B' R2 B R' F2 L R' U' L' F B" }
{ "L2 D2 F2 L2 B2 D2 L D2 L B2 R2 B R' F R' D' F D' R D" }
{ "F2 U' F2 R2 F2 R2 D' L2 D2 L2 D2 F' L' D' B2 L F' D' F' L2" }
{ "D L D' U F2 U' R B D' L2 B' U2 F R2 F2 U2 F' D2 L2 F'" }
{ "F' U2 B2 L2 B D2 L2 F D2 L2 F' D R D' B2 U2 B' D B D L'" }
{ "U2 R2 F2 D L2 U B2 R2 F2 L2 F B' U L' U R2 F U R' D' R" }
{ "D' L2 D B2 D' B2 L2 F2 D2 R2 D2 R' D B' D' R' F2 B D' F D'" }
{ "B' U' B' F D' B' D' L B L2 D2 L2 D R2 D B2 F2 R2 U' B2" }
{ "B2 R U2 L' D2 R' B2 R2 U2 R' D2 F R' U R2 B2 D F D L U" }
{ "U2 F2 R' F2 U2 D2 L D2 L B2 D2 B' L' B2 L' D2 B2 U F' D' F'" }
{ "D2 R2 F' L2 B' U2 L2 B L2 D2 F2 R D F2 L U2 B' U2 L2 U' B" }
{ "L' U2 R2 B2 R' U2 L' U2 L B2 L' D' F' U2 L2 U B' R D' B2 U'" }
{ "F2 D L2 U2 L2 F2 U' F2 L2 F2 U F' B' U' B R D R U' F2" }
{ "L2 U2 F2 U L2 D' F2 L2 D L2 U' L R' D' F' U F' L U L'" }
{ "L2 U' B2 U2 D' F2 R2 F2 L2 D' L2 B L D2 F U2 B2 L2 D' F R'" }
{ "B2 D2 F2 R' B2 R D2 L' R2 U2 L B R2 F' D B' D2 R B R2" }
{ "U' D' F2 U2 R2 B2 R2 B2 R2 D' R2 B R U' B' U2 F2 D B D B'" }
{ "R' B2 L U2 B2 R U2 L F2 D2 R2 U B R2 B D2 L D' F' U R2" }
{ "L2 R2 U2 R2 U' B2 D2 R2 D R2 U' F U2 L' B D2 B2 D' B2 L' U'" }
{ "F L2 R2 B L2 B R2 D2 B D2 F2 L U2 D' B R' F2 R B' L2 F'" }
{ "B2 U2 L' D' R' L D B' R2 F L2 U F2 U B2 L2 B2 D' B2 R2 U2" }
{ "F U' R' L U R2 U2 B' D' L B2 F2 R2 F2 D' L2 D2 F2 D' R2 D'" }
{ "L2 B2 U2 R' F2 B2 R U2 R2 U2 F2 U' R2 F' R' U' B' U2 R2 F L2" }
{ "F2 D2 L2 R2 U' R2 U L2 B2 D' B' D B' R U2 B2 L D L2" }
{ "L B2 R U2 R U2 D2 L' U2 F2 L' B L D2 L2 U D2 B D B R'" }
{ "U2 B2 R2 B2 L2 R2 D' R2 U F2 D' L F2 D2 B D' L2 B2 L U2" }
{ "F2 L' F' L F' L' D B2 L2 D2 B2 R' L2 B2 R D2" }
{ "D' L2 B2 R2 U2 F' L' B2 U2 F' L2 B' D2 B' R2 D2 U2 R2" }
{ "U B2 U2 B2 U B2 L2 F2 D2 F2 D L U' L2 B D B L' R2 B2 R2" }
{ "D2 L2 U2 F L2 B U2 R2 U2 B D2 R B' L2 D' L U2 L U' L2 B2" }
{ "R2 U2 R2 D' L2 F2 D L2 U' F2 U L B D' B2 U2 L2 U F2 B" }
{ "D2 R2 D R B2 L B2 D' L F R2 U2 B2 U' R2 U' L2 D B2 R2 F2" }
{ "U' L2 D L2 R2 F2 R2 U R2 U F2 L R' D' F2 R F2 L U B' R2" }
{ "R2 U2 L' U2 L U2 R' D2 L' D2 L2 F L B2 D F' R' D' L" }
{ "D B2 D L' F D2 L D B' F L2 U B2 L2 B2 L2 D2 L2 D L2 B2" }
{ "R2 D2 R' U2 R2 F2 R D2 F2 L R' U' B D2 L' F' L F2 B' U' R'" }
{ "B' R B R L2 B F2 R U' L2 B' L2 B' D2 F' U2 R2 F' L2 B2" }
{ "B2 U2 L2 R2 B' L2 F U2 B' L2 F2 D' R2 B2 U R2 B L U2 D' R2" }
{ "B L2 U2 L2 R2 B2 D2 R2 B U2 L' D' L F2 B2 U2 F' U' D2 R'" }
{ "L2 F2 U' R2 D' R2 D2 B2 D' B2 D' L' F2 D R2 F' L2 U' R' B' D2" }
{ "B2 L D2 F2 U2 L2 R' B2 L' U2 R' U L2 B2 R' F' L2 B' L' F2" }
{ "B2 U L2 D' F2 D F2 R2 U B2 U2 L D2 F' L2 F U B' D2 L" }
{ "L2 F2 L2 U' L2 R2 U F2 D L2 D2 L B' R F2 L2 F L' U2 L2 D'" }
{ "D' F2 U L2 U' B2 D B2 D F2 U' F' R D F U R' B' R2 D R'" }
{ "F2 R2 B' U2 F2 B' L2 B' U2 B L2 U' F' U2 L2 R' D2 R' D2" }
{ "B2 U2 B' R2 F' R2 F2 L2 R2 U2 F' D B2 D L' F2 U' F L R B2" }
{ "F2 R2 D R2 F2 B2 D2 F2 D' L2 U' F' D2 F R2 F' L' F' D L F2" }
{ "U2 B2 R2 U' L2 R2 U' L2 R2 F2 U' F' R F2 B' L F' B2 D2 B' R2" }
{ "B2 U' L2 F2 B2 U R2 D B2 D2 L U2 F R' U2 D2 L2 D L' D2" }
{ "B' D B' D B2 D B2 L' F' D2 F R2 F D2 F' U2 F2 D2 U2" }
{ "D' F' D2 L' U' R F2 U L' F U2 R2 D L2 B2 L2 D R2 U R2 D" }
{ "U2 D L2 D F2 D F2 D R2 B2 U' R' U' F' L2 U2 R B2 L R2 F'" }
{ "U' B D U F' L2 F D' R U' F2 D' B2 U' R2 B2 U' L2 D2 F2" }
{ "B2 U B2 L2 R2 U' F2 U2 R2 U2 R2 F' B R' B2 U L U' D' L R" }
{ "R2 U B2 D F2 U' R2 U' F2 D2 L D' B U L2 U L R2 F2 R2" }
{ "D2 R2 B2 U2 B2 R2 D L2 D2 B' L D L2 F B' L R' B2 L D'" }
{ "D2 L2 F2 L2 F2 U' D2 L2 R2 B2 R2 B' U R F2 L' U2 L U' B' L2" }
{ "D' B' D' R2 U L' U L F' D B2 R2 D2 U' R2 L2 B2 D B2 U" }
{ "R U2 L2 R F2 L' B2 U2 B2 L' F2 D' R' U' F R U' R U D F" }
{ "D' B2 U2 L' B2 D' F' D' U2 R' U' L2 B2 U B2 D2 R2 L2 B2 U B2" }
{ "D' R' L2 D R L2 D U' F' L2 U' B2 D' R2 F2 L2 U B2 D2 L2" }
{ "U2 D2 F R2 F2 U2 B' R2 B D2 B R D L R D2 L2 B U R2 F'" }
{ "D' B2 D L2 U R2 D' B2 L2 D2 F2 B' D' B R F R2 U' B D2" }
{ "D2 B2 R2 L D U2 R U R2 F2 U B2 L2 B2 R2 B2" }
{ "L2 F U2 F2 R2 F L2 D2 B R F' D2 F' R2 F2 U' L' U" }
{ "L2 F' B2 R2 D2 F' D2 F2 U2 F' U2 R' D' R B R2 U' L F' D L" }
{ "D' F' L2 F U2 R' U2 B' L2 D R2 F2 L2 D U2 L2 D' B2 R2" }
{ "U B2 D' L2 D' F2 D R2 B2 R2 U F D' B2 L2 U' F2 R B2 U' B'" }
{ "U2 L' D F U F L D' F' L2 U F2 R2 F2 D' L2 U' B2 F2 U2" }
{ "L2 U R2 U2 B2 D' L2 R2 U R2 D' B' U R' D' L B2 R D2 L R'" }
{ "F2 R U2 D2 L F2 D2 L2 B2 D F2 D' L U2 F2 D F B' D B'" }
{ "U' R2 U' F2 U F2 U' R2 D L2 D2 B U2 R U' B' L2 B' D2" }
{ "D2 F2 R2 B2 L2 U2 B R2 F D2 F R' U' L2 B2 R2 D L F' R2 D2" }
{ "L' D2 R' D2 L' U2 B2 U2 R B2 R2 B' U B2 L' B2 R2 B' L' U" }
{ "U D2 R2 F2 D F2 U' B2 U' F2 B2 L' F' B L R2 B L R' U' R" }
{ "D2 B2 L2 F2 R2 U F2 R2 D L2 B2 L R2 U' D L' D' F2 U B" }
{ "D2 L2 U L2 R2 U' L2 D2 R2 D L D' F' D2 B L2 U' B2 L B" }
{ "D2 F2 U2 B' D2 F L' D' F' R2 F2 D' R2 D2 L2 B2 F2 D R2 U'" }
{ "D F2 R2 D2 R2 D' B2 U' B2 L2 D' R' D2 R' D R2 B D R2 U R2" }
{ "U2 F2 B2 D' R2 U' L2 D R2 U D' F' U' B2 L2 D R' B2 L2 U F" }
{ "D F2 B2 U F2 L2 B2 U2 D' R2 D L' D' B' U R2 B U' B L2 U'" }
{ "R2 F2 U2 R2 B R2 B' L2 D2 B' U' D F2 U R' F2 B' U' B U' L'" }
{ "D2 F U F2 R' U' F2 L D R2 D R2 D2 L2 U' L2 D L2" }
{ "U F2 B2 U' L2 D' L2 D2 L2 B2 L2 B' R' D2 L F L' F R B' L2" }
{ "F2 R F2 L D2 R F2 U2 B2 L2 B2 U' F2 B' R2 D L' U R2 U" }
{ "R D2 R' B2 R' U2 B2 L' U2 D2 R' F R2 D B D' R' D' R U' R2" }
{ "D2 F2 U2 D2 L2 U2 L' U2 L D2 R U' L' R2 U D2 F R' D' B2" }
{ "F2 L2 R2 D' L2 U' L2 D B2 R2 U2 R' D2 F' U F' U2 R U F2 U2" }
{ "L2 R2 D' R2 F2 D' L2 U F2 U2 F D2 L F' D' L2 D2 L' B2 U D'" }
{ "U2 L2 B' L' D2 L' B2 D R D2 F D2 L2 B2 F D2 L2 F2 R2 F2" }
{ "B2 R2 U' R2 U2 F2 R2 D F2 R2 D2 F U' L2 R2 D L D2 B2 D" }
{ "B2 D R2 D2 L2 U F2 D L2 F2 R' D F' L2 U F' R' U D B'" }
{ "B L D' B' F2 U F U2 F' R F2 L2 F2 D2 R2 D R2 L2 B2 R2 D2" }
{ "F2 D F2 L2 U2 R2 U L2 R2 B2 D2 B L B L2 B2 D L2 B2 L2" }
{ "R2 D2 L2 B D2 B2 R2 B2 R2 U2 B D' F2 B R' U D F2 D B'" }
{ "U R2 D' F2 L2 R2 D B2 L2 D2 F2 L' D2 B U F2 B' U2 L' U2 R2" }
{ "F2 U' B2 U F2 B2 U' D2 L2 U' F2 L' R D F2 D' R' F U2 R D'" }
{ "U2 L2 B R2 D2 R2 F' L2 B' U2 F' R' U2 F R2 F L' R2 D' F B2" }
{ "L2 B2 D F2 U' L2 U' R2 D2 B2 U F L B2 L' B D2 B U D R2" }
{ "D2 L2 D U2 F2 L B' U' B U' R2 B2 U' L2 D2 F2 R2 L2 U B2" }
{ "F U2 B2 U2 R2 U2 F' B' D2 F' L R' U' F' U2 L2 F' R U2 F'" }
{ "D2 R2 U2 D2 R' U2 D2 R' U2 L' D2 F' D R2 U' B' U' D' R B2" }
{ "R2 D2 F2 D' F2 U B' U2 B R L2 B2 D2 R' B2 R U2 L' F2 L2" }
{ "U' F2 B2 R2 F2 D L2 D F2 U' L2 B U2 B' U F2 B R' U F' B" }
{ "R' D' B' U2 F' R2 D L D B' R2 B' D2 R2 L2 F' D2 B L2 F'" }
{ "B R' U2 B R U2 R D' B F2 L2 U F2 D B2 D B2 F2 R2 D2" }
{ "F2 L2 D B2 U2 D' R2 F2 U' L2 F L' F' L' U L2 B' U' D' B2" }
{ "F' L2 F' U2 F2 L2 D2 F' R2 B D2 L D' L D' F' L' D L2 B'" }
{ "F2 L2 B R2 D2 L2 F' L2 U2 F L' U2 R U D2 F' U2 F' B D" }
{ "D2 R2 B' D2 F L2 D2 F' U2 D2 B U' F' L F' D' L' R U L2" }
{ "R2 U B2 U' L2 F2 D R2 U' F2 D L' F' L F' R' U2 L D' L2 F2" }
{ "L2 D2 L' F2 R B2 R2 B2 R F2 U2 F L B' D' L D B U2 L' R" }
{ "R2 B2 U2 L F2 L U2 L2 B2 U2 L' U' B R U R2 U2 L' R'" }
{ "L' U F' D B D' R2 D2 F R D' B2 D' B2 U2 L2 F2 D B2 L2 B2" }
{ "B2 L2 U B2 U R2 U D2 R2 F2 B2 L' U' L R F' U B' U B' R'" }
{ "R2 B' L2 F' R2 B R2 U2 R2 D2 R2 U L2 U B' L' F' U2 L R B'" }
{ "U2 B2 D R2 D B2 R2 B2 D2 R2 D2 L' U2 F B' D B' R2 B2 R F" }
{ "R2 F2 U L2 U' L2 B2 D' L2 U L2 B' R' D R' F U' L' F R' D" }
{ "F2 R2 U2 B2 U2 F2 R2 D' L2 F2 D L' B U' R' F2 R' U2 D R" }
{ "L2 U2 F2 L2 F2 U' F2 D L2 U2 F D2 F' D F2 R U D2 R D2" }
{ "F' U' F2 D2 F' R L' F L D F2 U' L2 B2 F2 D2 L2 U' B2 L2" }
{ "F2 D L2 D2 F2 D F2 D' B2 U D' R' U B' D2 F' U' B2 D' L2 R" }
{ "R' U2 R2 U2 F2 R2 D2 F2 L B2 U2 D B' D2 L D B' R D2 B' R" }
{ "U2 F2 D R2 U2 F2 U' B2 D F2 D B U L R' U D R' U' L F" }
{ "D L2 U2 L2 F2 L2 D L2 U' D2 R U' L2 D L2 R' U' B L2" }
{ "D2 R2 U2 L B2 U2 D2 R2 D2 R' U2 F U' B2 D2 F' L R2 U' F B" }
{ "D U2 B2 F R U R D F R2 B2 L2 D2 U' B2 D' R2 U2 L2 U" }
{ "R B2 D2 F2 D2 L2 R U2 R B2 L' B L2 U B2 D2 F' R U R F2" }
{ "R2 B R' F R D U2 R' D F2 R2 F2 L F2 D2 L U2 L2 D2 F2" }
{ "D' B2 R' L2 B' R2 F' U R F U2 F2 U2 B2 L2 D2 L2 B L2 U2" }
{ "L' D' L U B2 L2 D' L B' L2 U L2 U' B2 U2 R2 L2 F2 D F2" }
{ "R2 U2 B R2 B' D2 R2 D2 B2 L2 B2 L R2 B' R D R' D B2 L'" }
{ "R2 B' L2 U2 F B2 D2 R2 F2 R2 F' L F2 L F' R' F2 R' B2" }
{ "F D2 R2 F' D2 R2 D2 L2 F2 U2 B D' R U2 R2 D' L2 F2 R2 B'" }
{ "R' D' U2 B' D2 U B' R' U R2 F2 R U2 L' U2 B2 R' D2 F2 L" }
{ "D2 L2 U2 B R2 F' L2 F D2 B' U2 D' F' D L D L2 U' F' R2" }
{ "L2 F2 D2 L2 F B2 U2 R2 F U2 R2 U B2 D L D' F R' F L" }
{ "B2 R' F2 L2 D2 R' F2 D2 L D2 B2 D' R F U2 B' L' R2 B L U" }
{ "B2 U' L2 D L' D L F' D F2 U L2 U' R2 L2 F2 R2 F2" }
{ "L2 R2 D2 B' L2 D2 B' L2 B2 U2 B' L' R' B' L D' L2 R U2 D' R" }
{ "D2 B2 D2 B R2 D2 B' L2 U2 B2 D' L' D' F2 U' D2 F' L' D" }
{ "D F2 D' L2 R2 D' F2 D F2 D2 F R F2 B' R U' L' R' D' B2" }
{ "R U B' L2 B' D' L' F U' L2 B2 R D2 U2 F2 D2 L' F2 D2" }
{ "R L D' R F L D2 R' F' L' D2 B2 D' B2 D2 L2 U L2 D R2 F2" }
{ "F' R' F2 L' U L2 U L U2 F L2 B U2 B L2 B' U2 F2 R2" }
{ "U2 L F2 L' R' U2 L R2 F2 R' B' L' B' U' R2 D' F' L2 U F'" }
{ "B' L2 R2 U2 L2 B L2 B D2 R2 F' L' F D2 F' D L2 F L D B2" }
{ "U D L2 D F2 B2 R2 D' F2 L2 B2 L' F2 U' D F' U D B2" }
{ "D' R2 D L2 R2 D L2 U R2 F2 L2 B U' L U' F R D' L R F'" }
{ "U F' D2 L' U B R D F L D2 R2 U2 L F2 L F2 L2 F2" }
{ "B2 D2 L2 R2 F' B2 U2 F' U2 D2 B2 L U L U2 B U' B2 D' R2 B'" }
{ "B D2 F' D2 L2 B D2 R2 B2 U2 B2 R' F U' F2 D2 B' D2 L U' F'" }
{ "U2 F2 D2 F2 D2 L' F2 L' D2 L2 D2 B' D' L' U2 F U F U' D'" }
{ "U2 B2 L' B2 R F2 R B2 L B2 R2 B D F2 L' F2 B L D B'" }
{ "U2 F B D2 L2 D2 F U2 L2 B2 R' U2 F L U' L D2 F' D F'" }
{ "B2 U' D' F2 D R2 F2 U R2 D2 B2 L' U B2 D B R' U F2 D' R'" }
{ "R2 F2 R' F2 D2 L' U2 R' F2 U2 L B D' L D L' D' R' B' D2" }
{ "L2 B2 U2 F2 U L2 U L2 R2 F2 L B2 R2 U B' D B' U2 R2 F' D" }
{ "U B2 U' R2 U B2 L2 U2 B2 D' R' F D L U L' D2 F2 R2 B" }
{ "L' D' B R' B2 D U2 B2 R B F2 R2 D' R2 L2 U' R2 D' U2 L2 U2" }
{ "F2 D2 R2 F2 R' F2 R' B2 L R F' R' U' D2 L2 D2 F' R2 U" }
{ "F2 U2 L2 B2 L F2 D2 L' R2 F2 D2 B D L2 D L2 B R2 F2" }
{ "F2 R2 U' B2 L2 D' F2 U2 L2 U B2 L' U' F D' R2 F2 D2 F U D2" }
{ "B' D' L2 U' F' U2 B' D' B2 R' D2 F2 U2 F2 L' D2 R' B2 U2" }
{ "F U2 L2 U2 R2 B L2 U2 F' D2 F' U L' U' R F2 R B2 D L2 D'" }
{ "U2 F B2 L2 B' D2 R2 D2 B2 R2 D2 L' U' L' R2 F2 L B D2 L' F" }
{ "R2 F2 R2 B2 R2 D L2 D R2 U D2 B' U' B' L B2 R' B2 U' F2" }
{ "F B2 L2 B U2 D2 R2 U2 B' R2 F2 U F2 R2 U' L' D' F R2 U' F2" }
{ "F2 U R2 D' F2 D B2 R2 D2 B2 U2 R U' B L F2 U2 R F2 D' B2" }
{ "U2 R F2 U2 B2 L2 U2 R2 U2 B2 R2 D B L2 D' L D2 B' D' R" }
{ "F D2 B2 D2 B' U2 D2 R2 B R2 D2 L' F' D' B' L2 B' D2 L' U2 F'" }
{ "U2 F2 R2 F2 L2 U' L2 B2 R2 B2 D F U2 R2 D F R' U D2 F2" }
{ "F' D F L2 F' R D2 L' F' L B2 R' U2 F2 U2 L' B2 D2 L F2" }
{ "U' L2 R2 F2 U F2 U R2 B2 R2 B D' B2 R' B' D' B2 L2 B U'" }
{ "B2 D R2 U2 R2 D L2 R2 D R2 D2 F' D2 F' B2 L' D L2 U R' D2" }
{ "D2 L2 D' R2 F2 D F2 D' F2 D' L D B2 D' R2 F2 U' R2 F" }
{ "D' B2 D2 F2 D' L2 U' L2 B2 L2 U2 F' D' L U2 B R2 B' U' L' F" }
{ "R2 F2 U2 L2 F2 D' F2 D' B2 L2 R' F' B2 D2 F U F2 R2 U2 D'" }
{ "L' B' R D R2 D2 L' B D R' D2 U2 F2 L B2 F2 U2 B2 L" }
{ "F2 U' B2 L2 D2 B2 U' B2 D' F2 B U R' U R2 U' R2 B' D'" }
{ "U' L2 B2 D L2 U' L2 R2 D' F2 U' R' F2 U R U' R' D' B U' L" }
{ "R2 F L2 D2 B' U2 D2 F' U2 D2 F2 L' F2 L' B2 D2 R' U' B' R2" }
{ "L' U' B U R' D' U R D' B L2 B R2 B U2 F' D2 U2 R2 F" }
{ "U B2 U L2 D R2 D F2 L2 D F2 L F' R2 D' B U' F' B2 R2 B'" }
{ "F2 R2 D' R2 F2 U F2 L2 U2 L2 F' L' U B2 R U' D L' F D'" }
{ "R2 F2 D' F2 U2 R2 F2 R2 D F2 D' B R2 B R' U2 R' F2 L2 U' D'" }
{ "R' B2 U2 B2 R D2 F2 B2 L D2 R' D' R U D2 B' U' B D B2" }
{ "B2 U2 R' F2 L B2 R U2 D2 B2 R' U R' U' F' U' F' B2 R2 D2" }
{ "D2 B2 L U2 L' F2 R U2 L U2 R F R' B2 L' D L' U L'" }
{ "L2 U2 B L2 D2 B D2 F D2 R2 F' L F D' L B U' L' D2 L R'" }
{ "D2 B2 L B2 L2 D2 B2 L2 D2 L' R' B' D' F L' B2 D2 B' L U L2" }
{ "L2 F2 L B2 R2 F2 U2 L' D2 F2 U2 D R2 D R2 F' R F D2 R'" }
{ "B2 F L2 D' B F2 U' F D' L B2 R2 B2 U' F2 D2 U' B2 D B2 L2" }
{ "U2 L2 B2 R B2 L' B2 R2 U2 B2 R2 F' U F L2 F B2 R F R2 U'" }
{ "L2 D2 R2 U2 B2 U D2 B2 D' F2 B2 L' R' F' L U2 F D L' F' U" }
{ "L2 B2 D' L2 R2 U2 B2 D' F2 L2 R2 B U R' F R U L2 D F R'" }
{ "R' F2 D2 R B' R2 B' D L' B2 D2 B L2 D2 L2 U2 B R2 F' L2" }
{ "R2 D R L D F' R2 F' R' F2 U' R2 F2 U' B2 L2 D' R2 D' U2" }
{ "F2 U2 B2 R U2 R D2 L2 B2 L R2 B D' L' B2 D2 F' R F2 B'" }
{ "L2 D R2 F2 B2 D2 B2 U L2 D L2 B' R' F2 L' R U L' D' F2 D2" }
{ "U2 B2 R F2 R' B2 R' B2 U2 L' B2 U' D' R' U2 F R2 B' U L2 R2" }
{ "F2 R' D2 L' U2 B2 R' U' F L2 D' L' U B' U' F2 U" }
{ "F2 U2 B2 L2 R2 U L2 D L2 F2 D2 B D' R2 B L B2 D' R2 B' R" }
{ "R2 D2 B2 L2 U F2 U R2 U' R2 B R2 B U' R2 D2 L' F B D2" }
{ "B2 U R2 F2 L2 D' R2 D L2 F2 D B' D B R' B D R D" }
{ "R2 D2 R2 U' B2 U2 B2 L2 D F2 L2 B' U2 L' U L D' R B2 U2 D'" }
{ "D2 R2 D2 R2 D R U2 L B D' U2 L2 D2 L2 F U2 F2 R2 F2 L2 B'" }
{ "R2 B2 D2 R2 U R2 U' B2 L2 U2 R' F2 D2 B' D' L' B U" }
{ "F2 U L2 D L2 R2 U L2 D L2 D R F L2 U F' D2 R F L' D2" }
{ "F' U2 R2 B2 R2 D2 B L2 U2 B2 D2 L D R B2 D2 R' U B2 L' F" }
{ "D' L2 F2 R U B2 L D F R2 D' R2 B2 D2 U' R2 L2 U' B2 U2" }
{ "F' U2 L2 U2 D2 R2 F B2 R2 F' R' U2 D' F L2 D' F' L F' L2" }
{ "U2 B2 D2 R2 D2 R2 F L2 D2 B D' L' D L R2 B2 D F D2" }
{ "R F L B2 U F' U2 B2 R F L2 D2 B2 D2 R' B2 L F2 L D2 L" }
{ "D2 B2 R' U2 D2 L' B2 L D2 R' D2 F U F B' D2 R B' U2 R2" }
{ "F U F L' U2 R2 U R2 F' D' L2 U' L2 U2 L2 F2 L2 D F2 D'" }
{ "D2 R' B R2 D' R B D2 U2 R' U2 B R2 F' R2 F' U2 B F2 D2" }
{ "D' L' D2 F2 R2 U2 F' U F L' D2 L2 F2 L F2 D2 B2 U2 R" }
{ "B2 D2 R' B2 L R2 B2 L U2 R2 B2 D R D R' F' R2 U L2 B R'" }
{ "D2 F2 D' L2 U' B2 D' L2 U2 L2 F U2 L U B2 R U' R U" }
{ "D2 B2 D' F2 U L2 D' R2 D' B2 L2 B' L2 D2 L' R2 U' L2 D' F" }
{ "F2 B2 D R2 F2 U F2 D2 F2 D' B2 R' B' L' F R2 D F' U F2 U2" }
{ "R B2 F D2 U' F2 R' D' L2 B R2 B2 U2 R2 F2 D' L2 D' L2 D R2" }
{ "F2 D2 R' F2 U2 R' U2 L' B2 D2 R2 U F2 B2 D' L F R2 B D' R" }
{ "L F' D2 B' D' L' B L F L' B2 R D2 F2 U2 L' D2 L2 F2 R'" }
{ "D L2 B R U' F L2 F D B2 D2 R F2 U2 B2 L' F2 U2 R' D2" }
{ "U2 R2 D R2 B2 U' B2 U L2 D F2 L U D2 B' R2 D' B' D L2 D2" }
{ "U' F2 D' R2 F2 U' F2 U2 D' L2 R2 B' L2 D' L2 B U' L' D B" }
{ "L2 B2 R2 U B2 U L2 F2 R2 F2 U L U R2 U' B' U' F D2 B L" }
{ "R2 F2 D2 L' F2 B2 L U2 L' B2 R D' R2 B U' R2 F B2 D' B" }
{ "L U2 F2 U2 B2 L' F2 B2 U2 L' B2 U' L B' R2 D' R' B U B2" }
{ "B2 D L2 B U' L' F2 R' D' F2 D2 B2 L B2 L' U2 R2 L' U2 B2" }
{ "L' F L B' D R B R' B U2 R' F2 R U2 B2 L' D2 R B2 R'" }
{ "L2 D2 R2 U' L2 F2 L2 D R2 D2 B2 R B' U2 D B' U' R' D' F D" }
{ "U' L2 F2 D' F2 R2 U2 B2 R2 U' D B' L' F2 D2 R2 D L U D'" }
{ "L2 D2 L2 U' L2 D' R2 F2 U R2 D' R' D B' U' B' R D L D' B'" }
{ "L2 R2 B L2 B U2 D2 F L2 B R' D2 L' U R' D' R2 B R' F2 B" }
{ "L' B2 D2 R' D2 B2 L2 F2 D2 R U2 B' D B' D B' D2 B L' D'" }
{ "F2 D' B2 U2 B2 L2 R2 U' L2 F2 D' B' R' U D' F U R' U' R B'" }
{ "D2 R2 U2 F U2 F U2 D2 B2 L2 U L F2 B L2 D F U R2 D2" }
{ "B2 U B2 U R2 F2 R2 B2 D' F2 L' U2 F U' D L' B L2 B U" }
{ "F' D R L2 B2 F' U' R' F U2 B2 L B2 L' D2 R' B2 L F2" }
{ "B2 R2 B R' D R L2 B' U' B2 R2 U2 L' U2 L' U2 L2 B2 D2 U2" }
{ "R F2 U R2 U2 R' D2 R' D' B' L2 B2 R2 D2 F' R2 B F R2 L2" }
{ "U2 B2 U2 F' D2 F' D2 L2 B' U2 R2 U L' R2 U B R D L' R F'" }
{ "R2 F2 D L2 D R2 U' B2 U F2 B2 R' D L' B D L' U2 D' F2 D" }
{ "L2 R2 B2 D' F2 U2 R2 U B2 R2 D' L R' U' L' F2 L' B' L' D B2" }
{ "R2 U2 L B2 R F2 R2 D2 B2 D2 R' U B' R F2 B' R2 F2 D' R U2" }
{ "R2 B2 D' F2 L2 D2 L2 R2 D' F2 R2 F' D2 R2 B R F2 D' R' U2 L'" }
{ "R F' D' R2 B L2 B' R L2 D2 U2 F' R2 F L2 U2 F R2" }
{ "L2 F2 R2 D B2 U R2 F2 U2 F B2 U2 R U' B2 L D'" }
{ "B' U2 R2 F R2 U2 B' D2 F' B' D2 R' D' R2 D2 F D2 R' D' R2" }
{ "D2 B U2 L2 U R' D' R' F D' L2 D R2 D L2 U F2 D R2 F2" }
{ "D' L2 U L2 F2 D' B2 U' L2 D2 F2 R U' F2 B' R' U R U L' D" }
{ "U R2 U' F2 D' L2 R2 D' F2 L2 U L' D L2 F' R' F L' D' B2 R'" }
{ "B2 D' L2 D2 L2 B2 L2 D L2 F2 U' L U' R B' L F' U B L F2" }
{ "U2 B D2 F' U2 B' D2 F2 B' R2 B' L R' U' L F R' B2 L F2 D2" }
{ "B D' U2 R D2 R D' R D' R2 D2 B2 L2 B' R2 L2 B' U2 F2 D2" }
{ "F2 L2 F2 B2 D R2 D' B2 U2 R2 D' L D' F B' R2 F L2 U2 F2 D2" }
{ "F D' L' F L2 D' L' F2 U L' F2 U2 R2 B2 U2 L' F2 D2 L'" }
{ "B' D2 F' R2 B' R2 F' L2 B' R2 F L U L F' D R' D' F B2" }
{ "F2 R' U2 L2 B2 L F2 R B2 R2 B2 U F2 L D' B U' D2 B L' B'" }
{ "B L B' U2 F2 R' U F D U2 R B2 D2 L2 U2 F2 L' D2 U2 L'" }
{ "U' L2 U2 B2 L2 D2 R2 U2 L' U R' F2 L U B' R2 D2 B2" }
{ "L2 D2 F2 L2 R2 U' L2 U' F2 U D' R F2 U R' B R F' D B' U" }
{ "D2 B2 R2 D B2 L2 F2 U2 F2 D2 R2 B' U' R D' R U' D' R F2 U'" }
{ "L2 U2 D R2 U2 L2 B2 D' B2 L2 B2 L' U' D2 F' U2 F' U2 L2 B' D2" }
{ "U2 R2 D2 R2 B U2 B' D2 B' R2 U2 L' U2 L F U' B' U R B'" }
{ "B R' U2 B' D' L2 B D' R' B D2 U2 R2 B2 R2 B' L2 F2 U2 F'" }
{ "R2 B2 F' L' F' L D B2 R U2 R2 U L2 B2 U' R2 B2 L2 B2 U" }
{ "D2 R2 D' R2 D' B2 D F2 L2 U F2 L R2 D' L R F' R' D2 R'" }
{ "D2 R D' R B2 F2 D' B U' R U2 B2 L2 B2 L' D2 R D2 F2 L'" }
{ "L' B2 U2 R B2 R U2 L2 B2 R U2 F R U F L U2 D R B D2" }
{ "L2 F D2 R2 F' D2 L2 B D2 F2 L2 D' B2 L U' L' U F L R2 B2" }
{ "U R2 F2 D2 B2 U' L2 D B2 R2 F2 R' B L2 U D2 R2 B2 U' B2 D'" }
{ "L2 D' L2 B2 R2 F2 D F2 D' B2 L2 F R' D' B2 R B2 L F2 R'" }
{ "U L2 D2 R2 F2 D R2 D' L2 F2 U2 F U2 D' B L U' D' F' L' D" }
{ "D' B2 D L2 U L2 R2 D B2 D' B2 L' R2 D L' U B R2 D2 R2" }
{ "R2 U2 L2 D2 R2 B2 L2 B' D2 F' B U' D' R' F U2 B2 L F' U F'" }
{ "R2 B U2 L2 B' D2 R2 F' L2 U2 D2 R' U' B2 R' U' F B U' F' R2" }
{ "D2 B' U2 B L2 F' U2 B L2 R2 B2 D' F D2 B' D F2 R D2 F U2" }
{ "D2 R F2 D2 B2 D2 R' B2 L' F2 L' U R2 D2 B' D2 B' U L2 R'" }
{ "L2 R2 D2 R2 F U2 D2 F' U2 B' R2 U F D' L U' F' L B2 U2" }
{ "D2 L2 F2 R' U2 L R2 F2 B2 U2 F2 D R F R' F' B2 D2 L F2 R2" }
{ "L2 F D2 F' B' R2 D2 B U2 B' D' L2 B D F' L' U D F2 B" }
{ "R2 F2 L F2 R' F2 U2 L' U2 B2 L' F' U L U L R2 D B D" }
{ "B2 R2 U2 D2 R B2 R2 D2 R' F2 R' B L' B2 L D B2 L' B" }
{ "D2 L2 B2 D' B2 L2 U R2 B2 D R U' R' D2 L' D' F2 B U' F2" }
{ "B U2 F' R2 B U2 L2 R2 B' U2 F2 L B' L' F2 D R2 F D' B2" }
{ "B2 R' U2 L F2 U2 R2 F2 L' F2 R F U L' U F R2 B' U F2" }
{ "D2 F2 L2 B2 U' B2 R2 U D2 L2 B2 L' B L2 R U' R D' L2 F' B'" }
{ "D B2 D2 B2 R2 D' L2 B2 L2 B2 R2 B D L' R2 B2 L2 R' D2 R" }
{ "F2 R2 U F2 D' F2 L2 D2 B2 R2 U F L' R2 B U2 R2 F' B U' D2" }
{ "D2 R2 D F2 D L2 B2 D2 R2 B2 D F L' D' L F2 L D' L'" }
{ "R D R' B R' B' D R D2 L2 F2 U L2 D L2 U2 R2 U F2" }
{ "R2 B2 D F2 U' R2 F2 L2 R2 D F2 R B2 L F' D' F U' L R U2" }
{ "R2 L' F' R D B2 U F' R L2 B2 F R2 D2 R2 U2 B2 R2 U2" }
{ "B2 R' U2 D2 F2 L B2 L B2 L2 R2 F' D2 L U2 L2 D' L' D2 R2" }
{ "R2 F' L2 R2 F2 L2 B' R2 B' U2 B2 R' U' R' D F L2 D2 L2 B L'" }
{ "R2 F' U2 R2 B2 U2 B U2 D2 R2 F2 U' B L F' L B2 R2 F R2" }
{ "D B2 U D L2 F2 U' F2 D R2 B' U B2 R' D' R2 F' D2 F D'" }
{ "R' D U2 L' B D' L2 U2 R' L2 B2 F U2 B2 F R2 F U2 R2 B'" }
{ "B' L2 F U2 L2 B D2 L2 F L2 D2 L R' D' L' F' U2 L2 B2 D'" }
{ "R2 U' R2 D' L2 D' F2 D B2 U' L D R' B2 R F D L U'" }
{ "B' U2 R2 U2 D2 F D2 F L2 B R2 U F2 B D R' D' B L B R2" }
{ "R' B2 L2 R' D2 L F2 B2 D2 F2 D2 B' U2 B' U L' B D2 B U' R2" }
{ "F' L2 U2 D2 B U2 F L2 F2 D2 L2 R U D F' U2 R F' R2 F R" }
{ "B2 D2 F2 D2 R2 B R2 U2 F D2 B2 R D L2 R U2 F B U R2 B" }
{ "F2 B2 U' R2 D' B2 R2 D F2 B D2 L U B2 L' F L U' R D'" }
{ "R L D' L B' L' B' U2 L' D2 U2 B2 R2 F L2 B R2 U2 R2 F2" }
{ "R' D U2 R U' F' U' L' F' R' B2 L2 B2 L D2 B2 U2 R2 B2" }
{ "F2 B' U2 L2 F2 U2 L2 F' L2 U2 B' U' F B2 U L R2 D B2 R' U'" }
{ "F L2 R2 B' L2 D2 F2 L2 F R2 B2 R F2 R' F B' R' U F U L" }
{ "L' U2 B' R U B2 R D L2 U' B L2 B' L2 F2 D2 B U2 B U2 R2" }
{ "L2 R2 B2 D' F2 R2 U F2 R2 U B2 R B D B' D2 R2 F R' U2 L2" }
{ "U R2 U' D2 L2 U' R2 D' F2 U B2 R' D' R D2 F B U B' R2 U" }
{ "R' F2 U B' L' D' F L2 B' R2 B2 D F2 D F2 D' F2 R2 U' B2" }
{ "U F R2 U' B R U' B' F2 L B U2 F' U2 F' D2 L2 B2 U2 R2" }
{ "D2 F2 D' B2 D2 R2 B2 D' R2 F2 R2 B' R2 F R2 D' L B D' L2 U" }
{ "F2 L F2 U2 B2 U2 B2 R2 U2 R D2 B R B' U B D' L B2 R'" }
{ "U2 B' D2 B D2 B2 U2 L2 B2 L2 B R' F' D R' U2 D2 F' L2 B' U2" }
{ "R2 B2 U' B2 U B2 D' L2 B2 U L2 R' U' L' D' B' D2 L' B' U' R2" }
{ "D2 R2 F' R2 F U2 B L2 U2 B D2 L F2 B L' D F2 U B2 U B" }
{ "B' U' L D' U' B' R2 B' D R2 U' L2 U' R2 B2 F2 U' B2 R2" }
{ "B' F D' L D' R' F2 R' D2 U B2 U2 B R2 B D2 B R2 F U2 B" }
{ "L' B' L B' R2 L' B L D2 U2 B' R2 L2 B2 R2 D2 B U2 B" }
{ "B D2 R2 B F' R B L U' F2 D2 B2 L' D2 R2 D2 B2 L F2 R" }
{ "B2 R' B' L' B2 L2 D R L F2 R2 D2 U R2 D' R2 B2 U'" }
{ "F2 U F2 D B2 U' F2 D' B2 L2 U L B2 R' D' R F' L2 R2 B' D" }
{ "U2 L2 R2 B R2 U2 L2 U2 R2 B2 D' R U2 F2 L2 F2 D' L2 R2 B'" }
{ "U2 L2 D2 B2 L' D2 R' B2 R2 D2 F2 U F' R U' R2 B2 D F' L" }
{ "B' R B2 L2 B D2 R2 L' D B L2 F2 D2 L2 B R2 D2 L2 F2" }
{ "R2 U' D' F2 B2 L2 U L2 D2 F2 B2 R' U2 L R' U R B L2 U' F'" }
{ "L2 F2 L2 F R2 U2 F' L2 B' L2 F2 R D B L B L D L2 B'" }
{ "B2 D2 B2 D F2 D2 B2 L2 U2 L2 U2 F' U F U D2 R2 B L' B2 D" }
{ "B2 L2 R2 D R2 F2 L2 B2 U' R2 U B D' F2 R B2 D' B2 D' B' R2" }
{ "D2 B' U2 B2 R2 D2 R2 U2 F U2 B2 U' F2 L R2 D F' U2 L2 R2" }
{ "B2 U2 F2 R2 B2 U F2 L2 U' F2 L2 F U2 R' B2 U2 D2 R' D2" }
{ "R2 U F2 R2 U2 B2 R2 U' L2 B2 U B U' L D' B' U' F2 B D' B" }
{ "L2 D R2 D' F2 U2 F2 L2 D2 L2 R' B L' B' D2 L' U R D F'" }
{ "B' U B2 R L2 U R U F' D' F2 U' L2 B2 U B2 U' F2 R2 L2" }
{ "U' L2 U R2 B2 L2 D2 R2 U' D2 B2 L' D B2 U B L2 F D' B2 L'" }
{ "D B2 U D L2 U F2 B2 D R2 B D2 F R B' D' B' U' B R" }
{ "D2 L2 U2 F D2 R2 B2 D2 B' L2 F' R B L' R B L' F R2 U2 D'" }
{ "R' B2 D R B2 D' B U' B' D B' L2 B U2 R2 L2 B L2 F' R2 U2" }
{ "U2 F D' U' F' R' D2 B2 F D2 B2 R F2 R2 F2 L' D2 L' B2 L2" }
{ "B R' D2 R2 D L2 F' R2 U R D2 F2 L' U2 F2 R2 U2 B2 R'" }
{ "D2 F2 U' F2 D B2 D2 R2 B2 L2 U' F' L2 B2 U2 D2 F' L B" }
{ "L2 B R2 F' U2 F2 U2 L2 F' B R2 U' D' B' U' D2 L U B2 D2 B'" }
{ "L' D2 R' D2 R U2 R' F2 D2 B2 D2 B U L2 U2 D' L' R2 B2 L' B" }
{ "U' D' F2 B2 U R2 D F2 B2 D2 L' B' U R2 D2 B L' U2 B2" }
{ "D R2 F2 D' R' U' B D U R' L2 D2 B2 U' R2 D' B2 L2 U' R2 L2" }
{ "L2 D R2 U2 F2 U R2 D B2 D R2 F' R' B' R B' R' F' U2 L D2" }
{ "D' L2 D' B2 D' L' U' R2 F' D2 U' R2 F2 L2 B2 D' R2 D' B2 D'" }
{ "U2 F2 U R2 U D2 B2 R2 F2 R2 F2 B' U' B D' R' B' D' L2 U D'" }
{ "F2 U B' R' D' R D2 R2 L' D2 R2 L2 D2 F D2 B2 R2 B U2 B'" }
{ "U R2 U' F2 L2 U2 R2 U' F2 R2 D L' R2 B D B' D2 L2 B2 D2 B" }
{ "R2 U2 D B2 D L2 R2 B2 L2 R2 D' L' U' F B2 L B2 U' F' R2 F'" }
{ "F2 D2 L2 B D2 F L2 F2 U2 F2 U2 R F2 R' B R D R U2 L'" }
{ "R U2 F2 U2 F2 D2 L2 R' D2 R' B2 U' R F' D L' F' L' U R' B2" }
{ "R F L F' D R2 B R2 D' U2 R L' U2 B2 R2 L D2 B2 L D2" }
{ "U' D2 B2 D2 F2 B2 D' B2 L2 B2 R' U2 B' L2 U D2 L B R" }
{ "B2 D R2 F2 U B2 U2 R2 F2 L2 D2 F R' U2 B U' R F' B D'" }
{ "L' B2 R2 U2 F2 U2 L D2 F2 L' R B' R' B2 U R U F2 R2 D" }
{ "D2 L2 B' R2 U2 D2 B2 U2 B U2 B' U L' F2 R D' B' U' R2 U' R'" }
{ "R2 D R2 F2 U' R2 U F2 U2 F2 R2 F D R' U2 D2 R2 B' D' B'" }
{ "L2 U2 F' D2 F L2 U2 D2 F' U2 F' U F2 U2 F U2 L' F' R2 F B2" }
{ "U2 L2 B2 R2 F2 B2 D' L2 F2 R2 B2 R B R2 B' U2 L' U B2 U'" }
{ "U L2 D L2 U R2 D' R2 F2 U' F2 B' U' R F R' F L2 R2" }
{ "B2 U' R2 D L2 B2 R2 B2 D' R2 D2 R' D' R D' B L' D' L B' U'" }
{ "B' U2 B U2 L2 D2 F' U2 L2 B R2 U R D2 L' U2 D' F' U2 L2 R2" }
{ "D B U2 F' D' R' B2 L' U R2 B2 R' L B2 L' D2 L F2 D2 U2" }
{ "U' L2 U' F2 D L2 F2 B2 D B2 U' F' U' D R2 F' U2 L' U B" }
{ "L2 D R2 U' B2 D F2 R2 D L2 D' R U2 R F U' R' D R' U2 D'" }
{ "D F R L' U L U2 F R' D' F2 D F2 D B2 U F2 D R2 L2" }
{ "L2 R' D2 L' D2 R' B2 D2 F2 B2 L2 D' B U' B2 R' B' L2 R D'" }
{ "F2 D2 F2 U2 L' R2 D2 B2 L2 U2 F2 B D' R2 D' B' L' D' F2 R'" }
{ "F2 R2 B2 D2 F2 D' R2 U L2 F2 B2 L' D' F2 D' F2 L2 D' R2" }
{ "L' D' L' B R F' R2 U' R F2 U2 F2 L2 B R2 F L2 B2 R2" }
{ "R2 B2 U2 F2 R2 U L2 U' D2 F2 R2 B L' U2 F' L' R' F L2 D2" }
{ "R2 U2 R2 D R2 B2 U2 D B2 U F2 B' R2 F' U D' B2 L U2 D L2" }
{ "D' L2 R2 F2 D' R2 U' F2 U2 D' L U B R2 B' U D B2 U R'" }
{ "L2 R2 B2 R2 B L2 F' L2 F' U2 F' D F2 B2 L' F2 L D' B D2 R2" }
{ "B' R L2 F2 L' U B' R' B' R2 D2 B2 D2 R' U2 R' L2 D2 R2 D2" }
{ "D2 B2 U2 L2 U2 L B2 L' R2 D2 F' D' F D' R F' D' F' B" }
{ "B' R2 F R2 F2 L2 B R2 B' L2 R2 D' R2 F L U2 L F' R2 F'" }
{ "B' U2 F' R2 F' L2 R2 U2 F' D2 F2 U F' L D' F' U2 R2 B R2" }
{ "R D B2 R' U F' R2 U L' F2 D2 B2 R2 D2 R2 F2 D R2 D' R2" }
{ "F2 D F2 U R2 U F2 D' L2 R2 F U D2 B U L R2 F' L" }
{ "U2 D' B2 U' R2 U' L2 B2 R2 F2 U B' R U R D' L' U R B2 R'" }
{ "U B2 D' F2 L2 R2 D B2 U2 F2 R2 B' D' B2 U2 F' U L2 D2 R' D'" }
{ "L2 U B2 U' F2 U F2 L2 D2 L2 D L U L2 R U F2 B U D" }
{ "D2 B' F2 D L' F D2 B2 D L' F2 L2 D2 F2 U2 B2 U L2 U L2 F2" }
{ "L2 R2 U' F2 U' R2 F2 L2 B2 D2 F L B U2 L F L2 D2 B R'" }
{ "B' R B R2 B' R' D F D2 B2 F2 D2 R B2 U2 R' B2 R' D2" }
{ "U2 B' D2 B U2 L' D' U2 B' F2 U' L2 U B2 U' R2 L2 U F2 U2" }
{ "D2 L2 D2 B U2 F B D2 R2 B' R2 D R' B D B' R2 U' D R' D" }
{ "B' D R2 L' D' F' D2 F' R D R2 F2 R2 D' L2 U' L2 U' F2 L2" }
{ "D2 U2 B R' D2 R L B D2 L2 U L2 F2 D' B2 L2 F2 D2 F2" }
{ "R2 F2 D2 B2 U L D' F L B2 D2 F2 D B2 R2 B2 F2 D R2" }
{ "R2 D2 R2 D R' U R2 U' B R2 D U2 F2 U2 F2 R2 U B2 R2 B2" }
{ "R2 F2 D2 B2 D L2 F2 D' B2 L2 U' L R U' L D' R2 U L' D" }
{ "B2 R2 B2 R D2 B2 U2 R' B2 L' R U' F U' D2 F2 R' B2 D2 R2 B'" }
{ "U2 B2 L2 B2 D' B2 D F2 D' R2 U2 F L' D' B2 L F' U2 F' R2" }
{ "D2 L2 D' B2 L2 D' R2 U L2 D L2 B D2 L' U' D2 L' F U2 B" }
{ "L2 D' B2 U2 L2 F2 R2 D2 R2 D' F D R' U2 L D L' D B2" }
{ "D2 L2 F2 D F2 D' L2 D' B2 U2 B2 R' U R2 B L2 R2 D F B' D2" }
{ "R D R B' L2 D L2 D F2 D2 L2 B' D2 U2 F' D2 B' U2 B'" }
{ "D2 L2 F' R2 F' D2 L2 U2 B2 L U' F2 U L' R2 U' F' R D' R'" }
{ "D2 F' D2 B U2 F L2 B' U2 R2 F U F U L F' R2 D2 F' L2" }
{ "R2 D R' U F2 D' B F D' B' R2 L2 U2 R B2 D2 U2 R D2 F2 L2" }
{ "B2 R U' L2 U B2 L' D' L' U F2 L2 B2 R2 D2 L2 D2 F' R2 U2 L2" }
{ "F2 R2 U L2 D2 F2 D2 R2 D' B2 D' F' D2 F2 U2 R U' R' B R2 D'" }
{ "F U2 B L2 B L2 B2 U2 B' D2 B2 L D' L R2 B2 U F2 L2 R2" }
{ "R' B' U' F2 L' D2 R2 F' D' B D2 L2 F D2 B' U2 R2 F D2 B" }
{ "B2 U' F2 L2 U D2 L2 U' R2 F2 L2 F U' L U2 D' R2 B R' F2 R'" }
{ "B2 D R2 U' L2 R2 D' R2 F2 U' B' U L' F2 U' B' R' U' F2 L'" }
{ "R' U2 R' B2 L F2 U2 R F2 U2 B2 D' R D2 F' U' R' F' U' R2 D" }
{ "F2 R' B2 L' U2 D2 L2 U2 R F2 R D' B L' B2 D' L' B' U2 F' D'" }
{ "B2 U' L2 D F2 D' F2 D2 L2 B2 U2 B D L U' B U2 D L' B D" }
{ "R2 D F2 R' U2 L' U' R F D2 U2 L D2 B2 R D2 L F2 R' F2" }
{ "D2 L2 D2 B D2 R2 B U2 F' L2 B D L2 R B2 U F R' B L'" }
{ "U' L' B' U2 L2 D' R2 F R B2 R2 D L2 F2 R2 B2 D2 U L2 U2" }
{ "B2 F U' F L D2 U B F' L2 F2 D' B2 D2 R2 U' L2 U' R2 D2" }
{ "U2 F R2 F2 L2 F' U2 R2 F' D2 L U F' R' F U' B2 L D2" }
{ "B2 R2 B2 U D F2 D' L2 R2 B2 U B U' L D2 L U' F2 R2 F' L" }
{ "R2 D' B2 R2 B2 D F2 D F2 U2 R2 B' D' L' U D2 R U2 F' B2 U" }
{ "R2 B2 R2 U L2 B2 D' L2 U2 B2 U2 R U' R U2 F' U' R' B2 D L" }
{ "U2 F' L2 B' U2 F2 U2 B2 R2 U2 B L' U R2 B L D2 L R2 F' B2" }
{ "L2 U2 B2 L2 D' B2 L2 D' L2 D2 B2 R D F D2 B U2 L2 F R2" }
{ "F2 R2 F L2 B L2 U2 F2 U2 L' U R2 B2 D R' U2 B' U2 L" }
{ "B2 R2 U' L2 B2 D F2 U L2 D' F U F' U' L U L2 R2 B' D2" }
{ "F2 D2 F2 R2 F2 L2 U L2 U L2 U R' U L2 D2 F' L' F' R2 D2" }
{ "D' R2 D2 F2 L2 D' F2 D F2 R2 D F' R B' U' D2 F2 D F' B R" }
{ "F2 U R2 U F2 B2 U2 R2 D R2 F D L2 U' L' U' B2 L' U' D" }
{ "B2 U2 F2 D2 L2 F2 B L2 R2 D2 R2 U' B' U' D F D' L B' L B" }
{ "D' R2 U2 L2 D' B2 L2 U' F2 D L' B' D' L B' U' F2 D" }
{ "U2 F2 L2 U F2 U L2 U2 R2 D' B2 L F' L D2 F D F' R" }
{ "F D' B2 F2 R L2 F' L' U' B2 D2 R' D2 L' D2 R' D2 U2 L U2" }
{ "U2 F2 L2 F' L2 B L2 F2 L2 U2 B2 L U D' L B D' B2 U' B'" }
{ "U F2 L2 D L2 F2 L2 U' R2 F2 D2 F' D' L U D B L' D2 L'" }
{ "R2 B' D2 B L2 R2 U2 D2 B' L2 B U' F U' D2 L F2 D L D' R'" }
{ "B2 L2 F' L2 B2 U2 L2 R2 F D2 L2 U' L R2 U' B D' B L2 D F" }
{ "R' D' F' R' D2 R2 L2 B2 F' R L2 B2 D2 F2 U2 L' D2 L B2 L" }
{ "D2 L2 F2 D2 B R2 B' L2 D2 B L2 D F' L D' F2 B2 R F D' F" }
{ "U B2 R B U2 L D B2 F' D2 L2 D2 R D2 R' U2 F2 U2 L F2" }
{ "F2 L F2 L2 F2 R' B2 U2 B2 D2 L' U' F' D R D2 F R2 U2 D'" }
{ "F2 B2 D2 L' U2 F2 R2 B2 R' U2 R2 D R2 D' L R2 F L2 F' B2" }
{ "F2 B2 U L2 R2 D B2 U' L2 F2 L2 F' R' B' U2 B' L U' B2 R D2" }
{ "B2 L2 B U2 B' U2 D2 F2 U2 B' L2 D' R U B2 R' B2 D' F2 R B'" }
{ "U' B2 D L2 R2 F2 D' L2 U2 F2 D R U F2 B D R2 B D2 R' U'" }
{ "U B' L2 U2 F' U R D' R' L2 D2 L2 U2 B R2 B2 U2 L2 F2 U2" }
{ "B D2 F2 L2 B L2 F R2 D2 F2 U' R' B2 U' L U2 B' R2 B' R' B2" }
{ "U2 F2 L2 D2 F2 R U2 B2 R U2 R' U R F L R' D' L' D'" }
{ "D' L2 U' F2 R2 F2 U L2 D2 R2 B' R' D' F' D R' F U2 D' B2 D" }
{ "B L' U' B D U2 F' D2 R B2 R2 L2 F' L2 F D2 R2 D2 R2 F'" }
{ "F2 U2 F2 R' B2 R2 F2 D2 B2 U2 R' F' L2 R' D' L2 D F L U2" }
{ "D F' U2 R B2 R U' R2 B' R2 U F2 D R2 B2 U2 R2 B2 U R2" }
{ "F2 U2 D2 L' F2 L F2 U2 D2 L2 F2 D L' U D B' D B2 D' F2" }
{ "R' D2 L U2 L U2 B2 U2 R U2 R' B' L U2 R' D' L' F' U2 F'" }
{ "L2 F2 D' L2 B2 D2 B2 R2 D' R2 D2 R D F' B' R' D2 F' D' F2 R" }
{ "U' D' F2 U' F2 R2 D L2 F2 U2 F' L' F D F' R2 D2 F2 U2 R'" }
{ "D' L2 B2 D' F2 B2 U' R2 F2 U' D L' F' B2 L2 U2 R' B' R U' D'" }
{ "U2 L2 U2 F2 D2 L B2 D2 L' D B2 D2 R' F2 B' R U' L2 R'" }
{ "D2 L D R D2 F2 R U' B' R2 B2 U F2 R2 D' U2 L2 U F2 U2" }
{ "L2 B2 D R2 B2 D2 R2 D' F2 U2 L' U D2 L2 D F2 R' F' D R' B'" }
{ "F2 R2 U L2 U' F2 D B2 L2 U2 R2 B L2 F U R' U2 D L' B U" }
{ "B2 U2 D2 R U2 L F2 U2 D2 B2 L2 F' L R2 U' F B U' L' B2" }
{ "R2 B2 U2 R' D2 B2 U2 F2 L F2 D2 B U F U L' F' L D2 B" }
{ "F2 U R2 D2 F2 U2 B2 D' B2 R2 D2 L' B D L R2 D' L' B L U" }
{ "U2 R2 U' F2 U' R2 F2 B2 D R2 D' L' U R B D L' U2 L F R2" }
{ "F' B2 R2 D2 B' U2 B2 R2 U2 L2 F' D R2 D R2 F' U R' U' D2 B'" }
{ "R F L U F' D' R2 D' B' L2 F2 D2 L' U2 R' D2 R' F2 L" }
{ "D R2 F2 L2 F2 U L2 B2 L2 R2 F' R' B' L2 D' R U2 D2 F' U D2" }
{ "U' L2 F2 D' F2 D L2 F2 U' L2 R2 F' B2 U R' U2 L2 F R' B2" }
{ "D2 L F2 R' U2 B2 U2 F2 R2 F2 R U' D2 F' U' L' R' B2 U" }
{ "U F2 U B2 D2 B2 L2 D L2 B2 U R D' B' L B' R B' D L'" }
{ "B' L2 F R F U2 R' D' B U B2 F U2 B' R2 L2 F U2 L2 B U2" }
{ "R' L D L U' F2 U' B' R' D2 L2 D2 B2 R U2 F2 R2 F2" }
{ "R' F2 U' R2 L F2 R B R2 B2 F2 D R2 U2 F2 D' R2 L2 U'" }
{ "U2 B2 U2 R2 B2 L B2 D2 L2 U2 F' D' F' L D' B' D F L2 B'" }
{ "D F2 D2 F D2 L' B' L2 B' L U R2 D L2 U2 R2 F2 D L2 F2 U" }
{ "R2 D R U2 B D U B U F2 D2 L' B2 L D2 L2 F2 U2 R' B2" }
{ "U2 R2 D2 B2 U2 R F2 D2 B2 R B2 D' F' R F2 R2 F D2 F2 D'" }
{ "R2 U' B2 D' L2 B2 R2 D' R2 D L2 B' R B' D2 R' B' D R' D' R2" }
{ "R B2 D2 L' F2 R' U2 R2 D2 F2 U2 B D2 R2 F L' R2 F2 D' B2" }
{ "F' R2 U2 B' U2 D2 R2 F U2 L2 U2 D R' D2 R' D' R'" }
{ "R2 B L2 F2 B D2 R2 U2 L2 D2 B2 U R' F2 D2 B2 D' L' B R2 F" }
{ "F2 L2 U2 D B2 U' L2 F2 B2 R2 U R' U' D' B D' L B2 D L" }
{ "U B2 R2 U' R2 D2 L2 B2 U' R2 D' B' R2 B2 L R' U' L R' B2 R" }
{ "B2 F' R' F2 U L2 F U R F2 U2 R U2 B2 D2 B2 R2 B2 R2" }
{ "D2 L' B2 R U2 B2 L2 D2 F2 B2 R' F' D' R D' B' D R F2 B2" }
{ "L2 F2 U R2 B2 D' B2 L2 R2 U' L B U2 F2 R D F' D2 F2 D2" }
{ "L' F2 D2 L B2 U2 D2 R U2 R U' F D2 L2 B2 L U2 D B D" }
{ "R2 B2 U' F2 D2 B2 D' F2 D2 L2 U' L' F R' F' U2 B' D B R2" }
{ "F2 D' B2 D2 F2 D L2 F2 D2 F2 D2 R U F R U' L' R2 D2 B' D2" }
{ "U2 R2 B2 U B2 L2 U B2 D' L2 D L U D L F' R2 U R' F D" }
{ "R2 B2 U2 F' D2 F L2 R2 B D2 B' U' F2 B' R D' B' L2 U F U2" }
{ "B2 D2 F' D2 L2 B2 L2 B2 U2 B2 U2 D' F' D' R2 F' R' U2 D F" }
{ "F2 R2 D' B2 U' R2 F2 U2 R2 B2 D' R' B D2 R2 D2 B L U2" }
{ "D2 L2 F' R2 F2 B' L2 B L2 U2 F L U F2 R2 D L B' D2 R'" }
{ "D' L' F' R' U' B' F2 U' L F D B2 D U2 B2 U' B2 U' R2 B2 U2" }
{ "L2 D' B2 U' D2 B2 D F2 R2 F2 L2 B R' B' R' F' U' R D' B2 R" }
{ "F' L2 D2 F' L2 D2 F' L2 F L2 B' L' D L' R' F2 L U2 D2 L'" }
{ "D2 F2 R2 U2 R U2 F2 U2 L' R' U2 D' L D R' B' D L' D' B'" }
{ "F2 R2 D2 B2 U F2 R2 U' L2 F2 D2 R D2 B D B2 U2 F D' F' D'" }
{ "F2 B2 D R2 U' L2 B2 U' B2 L2 U' F' U2 F2 U F2 B R' U F2 D2" }
{ "R U2 L' B D L2 B' R2 F L B2 U2 F' U2 B' U2 R2 L2 F' U2 B" }
{ "U2 B2 U2 R F2 U2 R2 D2 L2 B2 L2 U' L' B' U' D L' F2 D' R" }
{ "L2 R2 U2 L2 B' D2 F B' D2 B' L2 U L' U B2 U' R U2 L' R" }
{ "L2 U' B2 R2 U R2 D' B2 D R2 D' R' U' L' F U R' F' U2 L B2" }
{ "R2 U2 R2 F2 D L2 F2 D F2 U' F' U L2 F2 B' D R2 B'" }
{ "D2 L' D R' B2 R' U' F D B D2 L2 D2 F2 L2 F L2 B L2 F" }
{ "U' R2 F2 R2 U B2 D' R2 D2 L2 R2 B U' R D' R D' L B' D' B" }
{ "D2 F' B' R2 B' R2 D2 R2 D2 F R2 D' R' U R F' D F U L2" }
{ "F L2 U2 F L2 F R2 F U2 F' U2 D B U D2 R U' D' B2 L" }
{ "F2 D2 F2 L2 D' L2 F2 D' F2 D2 B2 R' B2 R F' U2 B D2 R2 B D'" }
{ "F2 U R2 F2 U2 D R2 U' B2 D B2 R' D2 B' R2 D2 R2 U' R2 B D" }
{ "L B2 U2 L U2 R F2 R B2 L2 R' B' L' D2 L' R B' L2 R' D' B" }
{ "L2 F' L2 B' D2 F B2 D2 R2 B' U2 L B2 R' U2 D' R' U' D2 F' R2" }
{ "B' U' B' L' D' F2 U B R F2 D2 L' F2 U2 L' D2 L B2 L" }
{ "U R2 U' L2 R2 U' B2 U' D2 B2 D2 L F R2 F2 L' U2 L2 D2 F'" }
{ "B D2 B2 U2 F' U2 F' L2 B' L2 B2 L' B' D' L D R' D R F2 B" }
{ "B R2 F D2 U' F2 U' F R F D2 F' L2 B D2 U2 L2 U2 B'" }
{ "U2 L' U2 D2 L D2 R F2 U2 B2 R2 F' U' R2 B' U2 B2 R' F2 R2 U'" }
{ "R2 F2 U2 B2 U' R2 U D2 L2 U2 B2 R' D2 R' D R2 B2 D F' D'" }
{ "R2 B2 L2 D R2 U B2 D2 L2 F2 D' R U' R F' B2 D' F R' F2" }
{ "L' U' R2 U2 R2 D L' U R B F2 U R2 D2 U' F2 R2 B2 F2 D'" }
{ "U2 F2 B2 L2 U' B2 U F2 D' R2 U' L' U' F' D' L2 D' R D L2" }
{ "U F2 B2 U2 F2 L2 R2 D' L2 U' R B' L' R' F' L' R2 F B D'" }
{ "F2 D B2 L' U' R2 U' L' B2 F' D2 L2 B R2 B' F2 R2 L2 D2" }
{ "L U2 F2 D2 R' F2 L' R F2 D2 R2 U L F' U' B' D' L2 B2 U F'" }
{ "B R D2 F' R2 D' R B F U2 R' L D2 R D2 F2 U2 F2 R F2" }
{ "F2 D F2 U' L2 F2 L2 U' L2 R2 U' L' U D L' R' B R2 U D' R'" }
{ "L U2 R2 U2 D2 L' B2 U2 R' B2 R' B' U2 D' L' F2 L' F2 D' F'" }
{ "U F2 D R2 D' B2 D' B2 L2 U' R B R B U B2 D2 B R2 D" }
{ "F U2 B' L2 F' U2 B' R2 F2 R2 B2 D' R D' R B D2 R B D2" }
{ "B2 D2 U' L' D2 U' L' F' L' B2 D2 L2 F2 U' F2 L2 U2 L2 U R2" }
{ "B2 U2 F2 D B2 R2 U' L2 R2 D' B2 L U D' L2 F2 L' B D' L2" }
{ "R2 F2 U' L2 U F2 U2 B2 U' F2 D2 F' L' R2 U D B D2 L' U F2" }
{ "D2 B D2 R2 B U2 F2 U2 F' D2 F' R U2 L' D B' U2 L' D' R' U2" }
{ "F U2 L F U2 B' D F' D' L F2 R2 D2 F2 R U2 F2 R' L2 B2" }
{ "L2 B2 U F2 R2 B2 L2 R2 D' L2 D2 L' U' F D F' U2 B2 D' L2" }
{ "D2 R2 U2 F' D2 B L2 R2 F' D' R' F L2 B' U L2 U2 R2" }
{ "F2 B2 U R2 D2 L2 U' R2 D F2 U L' D2 F U B U L' D L' B'" }
{ "D' R' B' R2 F2 R D2 U F' L B2 U' R2 B2 U B2 F2 L2 B2 D2" }
{ "R' F2 L2 D' L' D' L' B' U R2 U2 F U2 L2 B2 U2 B' F' R2 B" }
{ "D' R2 D' B2 U' L2 D B2 U L2 D2 R D2 R D' B R U2 D2 R' U'" }
{ "F2 R B' D2 F2 R2 B2 D R' D2 R' U2 F2 D2 F2 L' B2 U2 R'" }
{ "L2 R2 F2 L2 D B2 U' B2 R2 U2 D2 F U D2 F2 R2 D2 F L U2 D'" }
{ "D L2 B2 L2 D' R2 F2 U' B2 U' D' B' L U' L F2 U' D' B U2" }
{ "L2 R2 F R2 F D2 F U2 L2 F2 U B2 R' D2 B2 L R2 U2 B'" }
{ "L2 D R2 D' R2 D' B2 U' L2 B2 D F U' L' B' R2 U' F L' B'" }
{ "L2 D' F2 U' R2 U' L2 D2 F2 R2 D B' D B L F2 D' B D' L2" }
{ "D2 B2 U2 R2 F2 D2 L2 B' R2 F' U2 L F' U2 R' D' B2 D' R' U D" }
{ "U2 R2 F2 U2 D2 R B2 L D2 F2 R2 D L' D' R2 U F B2 U' R' U" }
{ "R F2 R' D2 F2 B2 L U2 R B2 R U' D L F' D2 R2 U L2 R2 B'" }
{ "B2 L2 B' R2 F U2 L2 B U2 L2 U2 L' F2 R' D' R2 U' R D2 F L" }
{ "L2 U2 B2 R B2 L2 F2 R B2 R B2 U' R2 B U' F2 L2 U R2 U'" }
{ "F' D2 L2 D2 F' B D2 B L2 D2 B' R U2 D2 B2 D' F L D B U" }
{ "F' D' R B D2 U' B D2 L D' R2 F2 D2 F' L2 B' R2 U2 L2 F L2" }
{ "D2 R2 U2 R2 F L2 B2 D2 B R2 F2 U' B' L2 F R2 U D' L' R2" }
{ "R2 U' R2 D2 B2 R2 U' F2 D B2 D2 F' B2 L' F' U2 B R D R'" }
{ "D R2 U B2 L2 U' R2 U B2 L2 D R' D2 F' R' D R' F B2 R B" }
{ "R2 U L2 D L2 U2 R2 U' F2 D' F2 L D' L2 U2 D B2 L' F U R'" }
{ "D2 B2 U2 F' U2 F D2 B U2 B' R2 D' R B2 L F2 U' R F' L' D'" }
{ "L D L B' L2 D2 F D' U2 F2 D2 L2 B L2 D2 F' U2 L2 F'" }
{ "L2 B' R2 B2 D2 R2 B' U2 D2 B U2 R' B' U' F2 B D' F' U F U2" }
{ "L2 F' D2 B L2 B2 D2 B' U2 B2 R2 U' B' L' D R F' U' F L R" }
{ "D' R2 B' F' R2 D B2 F U L' B2 R D2 B2 F2 D2 R B2 R" }
{ "B2 U2 R2 U B2 D L2 F2 U F2 U' B' D B L' D' L U2 F2 D2" }
{ "L2 U2 D2 L' U2 B2 L' U2 R F2 R' D R' U D B' U L' R2 D2" }
{ "D' F2 D' L2 R2 D2 L2 D' L2 F2 U B R2 F' B2 R2 U2 D L U' F2" }
{ "R2 D2 R2 F D2 L2 B' U2 F2 L2 B D L' F2 D' L R2 D2 F' R D'" }
{ "D2 L2 F2 R F2 D2 F2 L U2 R F2 U' F R2 D F' L' F U2 F B" }
{ "F2 U L2 U F2 L2 F2 R2 B2 U' D2 B D' L R2 D' F2 B' L2 B2 R2" }
{ "R2 U2 D' R2 U' L2 B2 U L2 D' F2 R U R D2 B' R2 D' F" }
{ "R2 B2 L' U' L2 F2 U F L' U2 R2 D2 B' D2 U2 B U2 F D2 F" }
{ "U F2 R2 U' L2 R2 F2 U2 L2 U2 D2 B' L U' D L' U' F R' B2 D'" }
{ "F2 L2 U2 D' L2 F2 U F2 R2 B2 D R' F2 U R F2 R' D R2 B' R2" }
{ "L2 D F2 L2 U B2 U' R2 D F2 D' L R' D' F' R' F B' D L2 B" }
{ "F' U2 D2 R2 D2 F' U2 B' L2 B' R2 U' L B' L' R2 D R2 U F'" }
{ "F' R2 B2 U2 B' L2 B2 U2 L2 U2 L2 D F U' R2 D L F' U' F U" }
{ "R2 F2 U2 D2 F' L2 F' R2 F' U2 B' D' L U' R' U D' L F U2" }
{ "R2 D2 L' U2 R' F2 U2 F2 D2 B2 L F U B2 U2 D F2 R U F R2" }
{ "B' R2 B' L2 U2 F D2 B' R2 F' B' U' L' U L' F D' F U2 B" }
{ "L2 R2 U F2 D L2 F2 B2 U' D' B2 L' D F2 D' L D' F' D" }
{ "B2 D2 L2 F L2 F' R2 B' L2 F L2 D' L' D2 L F2 D' R D2 R B" }
{ "U' B2 U' L' U' F L U2 B' U2 R' B2 L2 B2 U2 R' U2 R2 U2 B2" }
{ "B2 D2 U' L' F2 D F U L B2 D2 L2 B R2 B2 D2 U2 L2 F R2" }
{ "F2 D2 R' D2 B2 L2 F2 R' B2 D2 L' F L2 R F' U2 L' B' L' D'" }
{ "R2 D R2 U' B2 U' R2 U' F2 L2 D2 B R' D L2 F2 L' D' R' U2" }
{ "D L2 D2 L2 B2 U R2 D2 B2 R2 D B' L' F' U' F L D B' U' R" }
{ "U R2 D2 L2 U L2 B2 U2 D R2 F2 B' L2 U F' D' L' F2 D L' D2" }
{ "D L2 D L2 B2 R2 F2 R2 U2 F2 U F L2 U B2 L F' U' R2 F U2" }
{ "B2 D F2 D2 R2 D' L2 R2 U R2 F2 R' B L2 B R B' L U' L' D2" }
{ "U R2 U F2 U' D2 L2 F2 D2 F2 D' F' D B2 U L D F' L' D B2" }
{ "U2 R2 D2 L' U2 R2 F2 D2 L' U2 L2 D B2 L D2 L' B' D' R B" }
{ "L2 D2 R2 B D2 B R2 U2 B' D2 F2 R D L2 D' B2 L' D L' D' B'" }
{ "R2 U' F2 D' R2 U' R2 U2 F2 L2 R2 B U R2 F2 L2 R' U L2 D" }
{ "L' U2 R F2 L' U2 L F2 B2 L' U B R F B U D' R F L U2" }
{ "F2 U2 L2 F R2 B' L2 U2 D2 F L2 U F U R F D F' U' B2 L" }
{ "F2 D2 B2 D2 F R2 F D2 B2 D' R' F U' D2 R' B2 D2 L B2" }
{ "L' R' B2 R D2 R' D2 B2 U2 R2 U2 D' R2 U' B R2 U F D' R" }
{ "F2 L U' B L2 F' D2 L F U' F2 D2 L2 D R2 B2 L2 B2 D' L2" }
{ "B2 L2 R2 U' R2 U2 B2 R2 B2 D2 B' R F2 U L' D L D2 R' D" }
{ "B2 D2 F2 R2 D2 B L2 D2 R2 D2 L F' L2 U2 D' B' R2 D F' R' D'" }
{ "U2 D2 L2 B' L2 B D2 F L2 F B2 L F2 B' L U' L2 U' D R'" }
{ "F2 B2 D2 R2 U' R2 D' F2 L2 D' B2 R' U' B' R F R F' R' F2" }
{ "L D F U B' U' L2 F' R' F2 L2 U2 B2 L B2 L2 D2 B2 L'" }
{ "L D R2 L2 D2 B2 U2 B2 F' R L2 U2 F2 D' B2 D' B2 F2 D' L2 F2" }
{ "R2 U2 L2 F R2 F R2 D2 L2 U2 F2 R U2 F2 D' L F' U' F2 L U'" }
{ "L2 B' R2 B2 R2 F2 D2 F L2 D2 F D' F' L D L F' D B U2 B" }
{ "B2 U2 R2 D' R2 B2 L2 U2 D' F' D R' F2 U' L' D2 L' B' D2" }
{ "R2 U2 R2 B2 U2 D' F2 D' L2 F2 B2 L' B' D B L U2 L2 R' U2 B'" }
{ "U2 D2 F' L2 F' B2 U2 F' D2 L2 R2 U' B U R2 B' L' U B2" }
{ "F2 D2 F2 B2 D' F2 L2 U' L2 R2 F2 B D2 L' B' L B U' F' D' R2" }
{ "R' B' R2 U' L2 U' F D2 L F' D2 B D2 R2 U2 B' R2 U2" }
{ "F' U2 L' D U2 F2 R' D F' L2 B2 L2 D R2 F2 D' B2 U F2 L2" }
{ "L2 D2 L2 D' B2 L2 R2 U' R2 D2 R' F2 U L2 R' F' B2 U' R' D" }
{ "R2 F' D2 L2 R2 B' U2 B R2 B2 L2 R B2 R F' D R D F' L' F2" }
{ "B R2 F L2 D2 R2 B' U2 F R2 F' D L2 R2 F2 D' B2 U' L' D" }
{ "D' F2 B2 U' B2 L2 U2 R2 B2 U' B2 L R2 U' F2 D' R D2 B' U D'" }
{ "D' R2 F2 U' L2 B2 U2 L2 U' F2 U2 L' U2 F R2 D' F B L R' U2" }
{ "R2 D R B2 R2 B2 D2 R D' R2 D2 R2 U2 F U2 R2 B L2 B2 L2" }
{ "F' L2 F' R2 F2 L2 F R2 U2 B2 U2 D F' R' B2 R2 B2 U2 D' L" }
{ "L2 B2 D' F2 R2 D' F2 R2 D' B2 D2 R' U2 D L2 R' F' U D2" }
{ "F2 L' D' U' R2 F R' F' U2 L2 B D2 R2 D2 B D2 B' R2" }
{ "F' D2 F D2 F2 D2 L2 F' R2 F' L2 U' R' B2 D R B R2 U' B' D" }
{ "B2 R2 B' R2 F U2 L2 F L2 F2 D2 L' B L2 F2 U2 B D' F' D" }
{ "R' L D R L' B2 D' B2 D' B2 R2 B2 L2 F' R2 B D2 F' L2 F2" }
{ "B2 R2 F' U2 B D2 F' U2 L' U R' F' B' U2 F' L' D" }
{ "R2 F2 L2 U2 L D2 R' B2 R F' D2 L' B R2 B D' L' B'" }
{ "U F2 R2 D R2 U2 B2 U' B2 D2 R2 B' D' B2 L2 R' U2 F2" }
{ "B' D2 L F D' F R U R' F2 R2 D' F2 D' R2 D L2 F2 R2 D" }
{ "U2 R2 F R2 D2 F' D2 R2 D2 F B L' R' U' R U2 L' D2 F' B2" }
{ "B2 F' R U2 B D' B2 F2 L' U2 F' U2 R2 L2 B2 U2 F' D2 F2 L2" }
{ "U B2 L2 U2 D' R2 D B2 R2 F2 U' F R D' L B2 D R F U B2" }
{ "R2 F2 U' F2 D L2 U2 D' R2 D2 F2 R D' F2 U F' U R' D2 B2" }
{ "R2 U' R2 B2 D' L2 D B2 D B2 D2 R' F' B D' F U R B2 U2 D" }
{ "L2 U R2 D' F2 D B2 D R2 D2 L B U F U2 F B D' L B" }
{ "B F D' U2 F' D' R2 B2 L D2 F L2 F R2 B' F' L2 U2 L2 D2" }
{ "B2 R2 U2 B2 R' F2 B2 U2 R B2 L2 D F' R' D' F' L B R2 B'" }
{ "L R' B2 L' U2 L U2 D2 R' D2 F' L' F2 D' L D B' R F2 D'" }
{ "R2 F2 D2 F2 U2 B U2 B D2 R2 B2 D L' B' U D2 L' R D2 B" }
{ "R F' D2 F R2 F U2 F' D B R2 D2 F2 U2 B2 D2 F D2 L2 B2" }
{ "F' D2 F' D2 B2 R2 D2 B L2 U2 F2 L' R' B' U' F' L2 F U' L' R'" }
{ "F2 U R2 B2 L2 B2 D B2 U B2 U' R' B2 D F2 U' B' L2 B' R' D" }
{ "B' U2 B' U2 B D2 F' U2 D2 L2 U L B' D' B' R' U R' B' L'" }
{ "B2 L2 U' R2 U2 B2 D' R2 B2 R F' L' F U F U2 B2 R2" }
{ "F2 R2 F' U2 B D2 F2 R2 U2 F' U2 L U F2 B2 U2 L' R2 U2 B' D2" }
{ "D F2 D' L2 D F2 D F2 D' B2 R2 B U D2 R2 F' U2 R' B D B'" }
{ "R' D' R F' D' U2 F2 L B' D2 U2 F2 L' B2 L2 D2 B2 L2 B2 R" }
{ "D2 B2 U' D2 R2 U L2 B2 D' R2 F R2 U2 R F' D2 B2 D' F2" }
{ "F2 U2 B2 D' L2 B2 L2 R2 U B2 R2 B' R' U2 B' U D F' L' F' D2" }
{ "B' U2 F' L2 U2 B' L2 B L2 D2 B L' D' F2 R F2 R' D L D" }
{ "L2 R2 F L2 R2 B D2 B2 R2 B R2 D F' D L D' B L D' L2" }
{ "D2 L' U2 L D2 B2 L' D2 R2 B2 U2 F' B D' B D R F2 D' L R'" }
{ "L2 D U B' D2 U R' D' B R' L2 F2 R2 D2 R' B2 U2 L D2 U2" }
{ "D L2 D' L2 U' B2 L2 R2 U2 D R2 F' D2 F' U2 L R2 U' F2 R2 D'" }
{ "R' D2 B2 R F2 D2 F2 L' D2 L' F2 D L U2 B' R U' R D2 B2" }
{ "U2 L' D2 L2 D2 R U2 B2 U2 B2 R2 D L F' U' F' R' D' F' B2" }
{ "D U2 R F D' B2 L' U' L' D2 R2 L2 B2 R2 B U2 R2 L2 F2 L2" }
{ "R2 U L' U B' R2 U' L' B2 U2 R2 U L2 B2 D2 U' F2 U" }
{ "R2 D2 R2 D2 B2 L2 B2 D' L2 D' L2 F' L B2 U R U F2 L' R" }
{ "B' L2 F2 L U L' B2 D R2 U2 L F2 R D2 B2 L2 B2 L D2" }
{ "F2 B L2 R2 D2 F R2 F R2 B' L2 R' U2 F L2 B2 D' R D' R" }
{ "L2 F' D2 F' B2 L2 F R2 U2 L2 F L' U2 B' U2 F' B2 U' L' F B" }
{ "D2 F' B D2 B' R2 D2 R2 D2 F2 R' U D' L2 F L' D R D R' D2" }
{ "R' B2 U2 L' F2 U2 R D2 L R D' L' F2 R2 D' F' R2 U L2 R B" }
{ "U L2 F2 L2 D2 F2 B2 D' B2 D2 F2 B U L U2 L F2 R2 F2 R" }
{ "D' B2 R2 F2 U F2 U2 B2 L2 R2 U L F' R2 F' B2 R U' R' F2" }
{ "F U2 B2 L U B D' U' B F2 L2 D' F2 L2 U F2 D' L2 F2" }
{ "D F R F' D2 R F' U' B' D' R' U2 B2 D2 R2 D2 R F2 L B2 R2" }
{ "F2 L2 F2 R B2 R' U2 R D2 B2 R' U' F' L' U2 B2 L' D' F' U' F" }
{ "D2 L2 F2 L2 D2 F2 U2 D' F2 R2 D2 R U' F2 D R B L2 U D' R" }
{ "U2 F' D2 F2 U2 B' D2 B' L2 F R2 U F' U2 R2 F' B' L' B' D" }
{ "U R2 U' D2 L2 B2 L2 D' R2 B2 D2 R' F D' F' R D' R' U2 D2" }
{ "B2 U2 D' R2 D L2 B2 U L2 D2 B' D B2 L U2 D B2 R' B2 D2" }
{ "R2 D F2 L2 B2 D R2 U L2 F2 U2 L U B U2 B2 R' F2 B' D'" }
{ "U2 B L U2 F' R F U2 B D' B2 L2 B2 R2 U B2 D' R2 F2 R2" }
{ "D2 B D2 F U2 D2 F D2 B U2 B' R' D2 B U2 R2 U F2 R'" }
{ "D2 R D2 L U2 D2 L' U2 L' F2 R B U B2 U' B2 R B' L" }
{ "U R U2 F L F' R' D' B2 R D2 R' B2 F2 R' D2 L' B2" }
{ "F2 R2 U2 D2 B' U2 B2 U2 D2 B' L R2 U' R D2 L' U' R2 U2 F2" }
{ "B2 L2 B2 U2 D2 R' U2 R' F2 D2 B D2 B U' L2 F' R U' B2 R'" }
{ "L2 B R2 B' D2 B2 U2 L2 F' U2 B D' L' B D2 L' U2 D R' D2" }
{ "U L2 U2 B' F2 D' R2 D' F' L' F2 R2 L B2 L' B2 D2 F2 L' B2" }
{ "F' D2 L2 U2 L2 B R2 B2 U2 D2 B' U L2 U' F D2 L F D2 L U2" }
	}
}
if {$moves == 3} {
	set b "cross 3"
	.buttoncross.$b configure -background green
	set scramble {
{ "R L2 F2 D R' B R2 B D L2 D B2 L2 U F2 U B2 R2 L2" }
{ "L U2 F2 U2 F2 L' D2 L' U2 R B L' B L2 F' D' L' R' U' R'" }
{ "D' L D2 F L D' B R' F' D2 B2 D2 F2 D2 L2 B' R2 B2 D2" }
{ "F' U2 B D2 B2 R2 B' D2 B R' F U2 L2 D2 L D' R U2 D2" }
{ "B L2 U2 L2 R2 B' L2 F' L2 D2 L' F' U' F' L U2 L' U2 R2" }
{ "D2 F2 L2 F2 B2 U2 L U2 D2 F2 L' D' L2 B2 R2 F' R F' R2 D2 R2" }
{ "B2 U' R2 U L2 D' L2 B2 L2 D2 F2 L' F2 B L R U' R D2 F' D'" }
{ "B R2 B2 R2 D2 F D2 R2 F U2 B2 D' B' D L' F D2 L' F2 D'" }
{ "R2 L' D L2 B U' B D' F2 L' F2 R2 B2 L2 U L2 D2 U' F2 L2 U2" }
{ "F2 D' R2 D2 L2 F2 R2 F2 R2 U' D2 L' B' U R2 U2 R' B L D R'" }
{ "R D2 B2 L' D2 F2 U2 L' F2 L2 U2 F B' U' R B R B D' L2 U2" }
{ "F' U2 D2 R2 U2 F2 U2 B' L2 R2 B' L B U' L U L B U' B'" }
{ "R F2 D2 L R2 U2 R B2 U2 D2 B' D2 R' D L' U2 F' D2 F" }
{ "D2 L2 B2 L2 U F2 U' R2 F2 L2 F2 L' F U2 F R' D' B L2 R' D" }
{ "L2 U B R D' R' B' D2 B L2 B2 F2 R B2 L2 D2 F2 U2 B2 D2" }
{ "U' L U' R' D' U' B L' U' L D B2 U' L2 F2 D B2 F2 R2 B2 D2" }
{ "L' F2 L U2 D2 L' R' F2 U2 R' F2 D L' B2 U F U F' U2 R" }
{ "D' B2 F' L2 F2 R' D2 F U B2 D2 F D2 F R2 B' F2 R2 F R2" }
{ "U2 F2 D' L2 U R2 U' L2 U' L2 B2 R B2 U' B R2 U L' U2 L" }
{ "U2 F U2 L2 B L2 F D2 L2 B' R2 D B2 U D2 B D L U L'" }
{ "R2 B2 U2 B R2 U2 R2 B2 U2 D2 R F D F2 D' R F D B' U'" }
{ "L' F2 U2 R' B2 D2 F2 R' D2 L' R2 B' L2 R2 B' D L' F2 D B2" }
{ "L B' F' R2 B2 U' F' U2 L B' L2 B D2 F' U2 B L2 B'" }
{ "D R F' L' D' L' B R2 F2 R F2 D2 U2 R2 F U2 F D2 U2 F' U2" }
{ "U2 R' B2 R B2 U2 L' D2 F2 B2 L F' L F2 U' F' U' B2 L2" }
{ "U2 D2 B D2 B L2 R2 F' L2 F2 B' R' U F D2 F' L B2 L F U'" }
{ "D2 L2 R2 F2 U' F2 U L2 D2 L2 D2 B U2 R D R B L U2 R2 D'" }
{ "B' R2 B2 U2 D2 R2 B' D2 B R2 B2 L' U F2 B2 R2 D B U2 L' R2" }
{ "F2 U2 B2 L2 F2 L2 B2 U F2 B2 L2 F U F L' D' B L2 B R U" }
{ "U2 F2 R2 D' L2 U2 L2 F2 D2 B2 D2 R D' F B' U F R F D2 F" }
{ "U L2 D2 L2 B2 D' B2 R2 F2 D' B U' L' U F2 L' B L' B L2" }
{ "R2 B2 L' D R' D' F D' B' U' B2 U2 L2 U R2 F2 D B2 U' L2" }
{ "D2 U2 F' U' R' B' U' F L' B F L2 U2 F L2 B' R2 L2 F2 R2" }
{ "R2 F2 B2 R2 D L2 U2 D R2 U' F2 R' B D L U' R2 D2 L' B" }
{ "U2 L R2 D2 L2 R D2 F2 D2 F2 R' F D F U2 R U' L U2 B2 R'" }
{ "F U2 R2 B' U2 R2 U2 R2 B' R2 B' D' L2 U2 F2 R' B D' B L2" }
{ "B2 R2 U L2 B2 D' R2 F2 U2 D L' D' B2 U' R2 B U2 R2 B2 L'" }
{ "U2 L2 D2 L D2 L F2 R D2 L F' D2 B2 U L' D F' U2 B' R2" }
{ "U2 D2 R' B2 L' R U2 B2 U2 L D2 B D' F' L2 B' L2 U2 B2 R2" }
{ "U2 B D2 F' U2 F' B2 L2 F' L2 D' B2 L U' L R' U' F' R B" }
{ "F2 L2 U2 B2 U B2 D' L2 U2 B2 U R U2 R' U' F' D2 B R2 D2" }
{ "R L F2 R B D L2 D' R B D' U L2 D R2 B2 R2 U' R2 D' B2" }
{ "B2 R2 B2 D L2 D F2 R2 D L2 B2 L' U' B D B2 L U' F L R" }
{ "R D2 F2 R D2 L U2 L2 U2 R F L R2 U L' U2 F' R' D' B'" }
{ "U' F D R' L2 B2 F D' L' D' R2 D' B2 D' B2 R2 U B2 D B2" }
{ "U R2 U' R2 D R2 B2 D' B2 U' F' B' U' L2 F R B' U F2 U" }
{ "B2 U2 D L2 D L2 B2 D F2 B2 R2 F R' D2 R D2 B' U R U L2" }
{ "F2 U B2 U D' F2 U' L2 R2 D' B2 R' U' R' B' L2 U2 R2 F L D" }
{ "B L2 R2 F D2 B2 R2 B2 R2 B' U L U' L2 F' D' R U L" }
{ "D L2 B2 R2 B2 D B2 D R2 B2 U R' F2 D' F U' R U R' U'" }
{ "L' B' D L B F' L2 B' D' U2 L2 U2 F' L2 U2 B U2 F2 D2 R2" }
{ "R F2 U2 D2 L U2 R U2 L2 B2 L' D' B' U' R2 F' D F' R' U' L2" }
{ "B2 D2 R L B' L U' B' D' U2 R2 L2 B R2 F' D2 R2 B D2 B" }
{ "R' L2 B' R F2 R2 U' B' D R' B2 U2 L D2 U2 F2 R' U2 B2 R2" }
{ "R2 B2 D2 B U2 F R2 B' D2 B2 L' D2 L2 F' R F2 U2 F U'" }
{ "L2 B' F2 D L2 B R' L' D' B D2 F2 L2 B' L2 F D2 R2 B' L2" }
{ "D2 B2 D2 L2 R2 B R2 D2 F L2 F' L' F2 B' D2 L U2 B2 D' R F2" }
{ "B' R2 F D2 L2 R2 F L2 B' U2 R2 D' B' R D F2 U' B R F2 B2" }
{ "R' U2 L' D2 R2 B2 D2 L' B2 R' F2 D B2 R B' U2 R' D F B2" }
{ "U2 F2 B2 L2 U2 F2 D L2 D' L2 D' B' D' R D B2 R2 D' L2 B2" }
{ "D' B2 U' F2 U2 F2 R2 D' B2 D F2 R U2 F2 B' L2 B U F' D2 L'" }
{ "L' F2 U2 R2 B2 L2 B2 U2 D2 R2 F' U D2 L B' L2 U2 F' U'" }
{ "R2 D F2 D2 F2 L2 B2 U' F2 U D2 L U F B' D' L2 F2 B2 U B2" }
{ "L' B2 L' D2 L' F2 L' F2 R D F2 U F' B' U' R2 B' U" }
{ "B2 U' L2 U' D2 B2 U' L2 D' B2 D' B' L U' R U D2 F' R2 B2 U2" }
{ "L2 R2 U F2 D' R2 D L2 F2 R2 D' L' F R' U2 L' D2 R F2 B' D'" }
{ "F2 D' F2 U B2 L2 D2 F2 R2 B2 D B' D' F B' R B D2 R B D'" }
{ "D2 L2 R2 U' D' R2 U' L2 R2 D2 L' F2 B2 D' F' L2 D2 F U' D'" }
{ "D' F2 L2 F2 D F2 D' B2 D2 L2 U B R D' L' U' L' D B R" }
{ "L2 B U' F D' B' U L' B' R' D2 R L' U2 L B2 D2 B2 L' F2" }
{ "R2 L2 F' L2 U L2 U' R2 F' U2 B2 L B2 L' F2 L2 D2 L B2 L'" }
{ "D' B' R B2 D2 U2 F L D U2 R B2 F2 R' L' F2 L D2 U2 L2" }
{ "U' B2 D' L2 R2 U L2 D2 R2 U L2 F R' F' R' B U2 R' D2 R D'" }
{ "D2 L2 U2 D2 B2 L2 F' R2 F' D2 F U' F2 U L2 F L' D2 F2 B'" }
{ "L2 F2 L2 B' L B' F2 U2 L B2 D' L2 U B2 L2 U2 R2 B2 U2" }
{ "F2 D2 F2 R2 D' B2 U R2 B2 U R2 B' U L B' L' D F' D' R2 B2" }
{ "B D2 L2 B D2 F2 D2 L2 F' L2 U2 R D2 L F D2 R' F L' U' B2" }
{ "U R2 D' L2 U D2 B2 R2 D2 L2 F2 B' L U R D' L' F' R' F D2" }
{ "U L2 B2 U2 L2 D' B2 U' B2 L' U2 B' L B' R' U F' R B2" }
{ "U2 R D' B D' F L2 B L' U2 B U2 L2 F L2 U2 L2 D2 B" }
{ "U2 B' U2 F' B D2 R2 B' R2 B D' F' B2 L' D R' D2 L U2 L' F'" }
{ "L' U2 B' U' B' U' F L B2 D' F2 D2 R U2 L F2 L2 F2 D2 B2 R'" }
{ "D' L2 B2 L2 R2 D' B2 R2 U2 B2 U R D L B' L2 U F B2 R'" }
{ "R2 F2 D B2 L2 U' D' B2 L2 F2 R2 F' L' F2 D2 B L2 D L' U' D" }
{ "U' D' R2 F2 R2 U' D' L2 D R2 B' R D F2 B2 R D2 B' D2 B'" }
{ "F2 B' U2 L2 R2 B L2 R2 D2 R2 D' F2 B2 L2 D2 R' D F R' B'" }
{ "B2 U' F2 U' L2 B2 R2 U' B2 D' R2 F D' L2 R' F' D' F' R2 D2" }
{ "B2 R2 D' L' D F2 L' U2 B' U' B2 D B2 F2 D B2 R2 B2 D2 U'" }
{ "D2 B2 R2 B U2 R2 B R2 B' U2 B L R2 F2 D' R2 B' L2 U' R2 F'" }
{ "L2 D' F2 D2 L2 U' D2 L2 F2 D2 R' D' L B R' D2 F U L' D" }
{ "D L2 F2 D F2 L2 R2 D F2 L2 F2 R' F' D' F' L' B' U2 F2 L' D" }
{ "F2 U L2 U2 B2 L2 R2 D R2 F2 D2 F' L2 R2 D' F' B L' B R2 B" }
{ "F2 B2 R2 U R2 D B2 U B2 R2 D B R' B' D L F' L2 U2 B' D2" }
{ "D' R2 U2 L2 B2 R2 F2 D' R2 F2 U F L2 R' B R U L2 F' R D2" }
{ "R2 U2 R2 U' R2 F2 U2 R2 B2 D2 B2 L D' R' F2 U B L D R F2" }
{ "U' L2 D' R2 F2 R2 U2 R2 U' R2 B2 L' B' L' F2 B' L U B2 R' U" }
{ "D' R D' F2 R D2 L' F2 R F' R U2 R' D2 F2 D2 R F2 U2 F2 L2" }
{ "U B2 L2 D2 L2 D R2 B2 D R2 D R' U L2 D2 B' L R2 U' L' D'" }
{ "U' B2 D2 F2 R2 U F2 U' B2 U2 R2 F' R' B2 D B2 U' L R U D2" }
{ "D' B2 L2 D' R2 U F2 D R2 D' B2 R U' R' B2 L' R2 B' D' B" }
{ "R2 B D R L2 F R2 L D' L2 B2 L F2 L B2 R2 F2 D2 R' U2" }
{ "D2 B2 U2 F2 R2 D2 L2 R2 D' L2 D R F2 R D' B R' U' L B'" }
{ "D2 B2 L' B2 L F2 R' F2 B2 U2 R F' R2 U L' R2 F U' B2 D F2" }
{ "U R2 U R2 B2 U' F2 U2 F2 D B2 L F2 R' D F R' F L F B'" }
{ "B D2 R2 B U2 F' D2 R2 B U2 B' U R2 B L' F2 L' D' L2 B2" }
{ "R2 B R2 D2 F D2 F U2 D2 R2 F' R' U2 L2 F B2 L' D' R' U' D" }
{ "D B2 D' L2 B2 R2 D L2 U' R2 D' F' D' B2 L2 R' F L' U' F R'" }
{ "U2 B D2 R2 B2 L2 F U2 L2 B' L' U B D2 B' L2 F R' D2 B'" }
{ "U2 B2 R2 F2 L2 B2 U' D2 L2 D L2 B' D B' U F2 B' L B2 D' B'" }
{ "R2 D2 L' F2 L B2 U2 L F2 R D' R2 F' D2 L D2 F' U'" }
{ "F2 R2 F' D2 R2 U2 B L2 B2 R2 B2 L' D R' D L2 D' L' U2 B L" }
{ "R2 F2 B2 U B2 D L2 F2 U B2 U' B' D2 R' F' U2 D F2 U B' U2" }
{ "F2 L2 F2 U B2 D2 F2 R2 B2 U' D' R' F' R' F2 U B L2 U2 F'" }
{ "D2 R2 D2 B L2 F2 U2 F B2 D2 B2 L' B D2 F2 B' D F2 U B" }
{ "D2 R' U2 F2 D2 F2 R' U2 L2 U2 R' U R' F' B2 L' U' F' R' D" }
{ "F B2 U2 F2 R2 D2 L2 F R2 D2 F' D' R' U' L2 R2 U2 F L2 F2 D'" }
{ "U2 B D2 R2 F D2 L2 F L2 U2 L' B' L2 D L2 B' D' F2 D' R" }
{ "L2 U2 L2 F2 R U2 D2 L2 B' U2 D R D' F2 B' R U2" }
{ "R2 F2 R D2 R' B2 U2 F2 D2 R' U2 D' F2 L2 F' U2 L U' L' B2 R" }
{ "L B2 L2 R F2 R2 U2 R B2 U2 R' B D R2 F' U' B R U B R" }
{ "D2 F2 B2 U F2 B2 D' B2 R2 U2 F2 B' D R U2 B' L R' D2 F' D'" }
{ "B' D U' F' R U2 R' L2 B F2 D2 L2 B2 R2 B2 U2 R2 L B2 F2" }
{ "B2 U' R2 D' F2 D F2 B2 D B2 R' B R F L' R' B U2 L' U D2" }
{ "R2 F R2 B' L2 F2 B' R2 D2 R2 U' B2 R2 F' U2 D L U2 D R'" }
{ "F2 R2 B L B U' B2 L' B D2 R2 L2 U2 B' L2 F2 D2 F'" }
{ "L D R L2 D2 L D' R' F D2 B' L2 F' U2 B' L2 F' U2 L2" }
{ "F2 L F2 R' B2 R' B2 R F2 D2 L' F' L2 D' F' L' F2 D B2 L2" }
{ "U2 L2 D' B2 D' L2 B2 D2 B2 D' L2 B' L2 U2 R' U F' L U L' D2" }
{ "F2 L' D2 R B2 R2 D2 L U2 F2 B2 U' L2 R2 F' U F2 D R F" }
{ "U' L2 D U R U2 L' F2 D' U2 B' D2 U2 R2 B' D2 R2 F2 L2 B" }
{ "L B2 R D2 F2 R2 B2 R B2 R' B2 D' L2 B' R2 U' L' D2 F U' F" }
{ "D' R U F' D' B2 D2 L U' R B2 U' R2 D2 L2 B2 D B2 U' R2 L2" }
{ "B2 D B2 D F2 U' R2 F2 D' B2 D L D F D2 R F' R2 F L2 F2" }
{ "B2 U2 R2 D2 B' U2 F' R2 F' L2 B2 R' D2 L' F' R B' R2 D F B" }
{ "U' L2 D' F2 U R2 B2 R2 D2 F2 L2 R' U D B' D' L B2 D2 L2 D" }
{ "U2 F2 R2 F2 D' B2 U2 F2 U' B2 U' F D2 R' F R' F2 R U2 L' D" }
{ "U L2 B2 U2 D' F2 L2 R2 D' F2 L D2 L2 U' R' F B2 D B U2 L" }
{ "F2 B2 L B2 L' F2 U2 B2 R' B2 D2 B L R B D2 B U2 D' R'" }
{ "L' D2 L' U2 L' B2 U2 L' U2 D2 R' F' D' R' B' R D' F' U2 F'" }
{ "F2 R U2 R F2 D F' L2 D B2 D2 F U2 F' U2 F U2 R2 L2 B2" }
{ "R2 L B2 D' B D' B R D B' R D2 L2 F2 R' D2 R D2 U2 L' B2" }
{ "F2 R2 B2 U2 L B2 U2 R U2 B2 R' F L' D' B2 L U' R2 B' D" }
{ "U2 B2 L2 D' B2 D' R2 U2 B2 L2 B2 L' D' R B' L' B' R2 D' R2 B2" }
{ "L' B2 U R L2 D2 U' B R L2 D2 B2 F' U2 F' L2 D2 U2 B' F2" }
{ "F U2 F B R2 D2 R2 F L2 R2 D F2 R' B L2 U2 F' D L" }
{ "D2 L' F2 U2 D2 L D2 F2 R' F2 L2 F' U' L B' R' F R' B2 L" }
{ "D' F2 D F2 R2 B2 L2 U L2 D2 R' U' D2 L' B D' R' U2 F2 D" }
{ "U2 L2 U' F2 D' F2 R2 B2 D2 F2 D L' B2 L F' U F D' R B L2" }
{ "R' L F2 U' R B2 F D F' D B2 D B2 F2 U B2 U L2 B2 U" }
{ "D' L2 U2 R2 D' F2 L2 U B2 D' L2 B R' B R F2 B U2 D' R" }
{ "D' B' R2 U' L' U B D2 B' F2 R2 U R2 L2 B2 D' R2 D U2 L2" }
{ "F2 D2 L2 U2 F R2 F L2 D2 B' D' L' D L U2 D R' F2 D' R" }
{ "F' L2 F L2 U2 B L2 U2 D2 F2 R2 U L' D F' U' R' D' F' D R'" }
{ "D F D F D R L B L' U B2 R D2 B2 L D2 L U2 R' B2 D2" }
{ "R2 F D2 B R2 B2 L2 F' R2 U2 B2 L U B U' F2 U2 F2 D2" }
{ "D2 R2 B' U2 D2 R2 F D2 B' R2 B' L U' F' U2 L2 R U2 R2 F' U" }
{ "B2 R U2 R' D2 R' D2 R U2 D2 R' B' L2 U' D L2 B' L F D2" }
{ "U B' D R2 U2 L U' F D B2 D2 B2 R B2 R2 L' F2 R' U2 R'" }
{ "L' D2 L B' R U F2 R B2 D' B2 L2 D2 L2 F2 L2 D' B2 U'" }
{ "D L2 R2 D B2 D' R2 D R2 B2 L F L2 F' R U B' R' F R2 F" }
{ "B2 U2 B' R2 B' L2 D2 F' R2 B' L2 D L2 U B' R U' D' L'" }
{ "L U F' U2 F L' B' D B' R2 D2 R' D2 L2 F2 R F2 L' B2" }
{ "L2 F2 R' B2 U2 L F2 R2 F2 L F2 D' F U' B' D L U F B" }
{ "B U2 R' D' L2 U2 B R' U' F D2 L2 D2 B' D2 B' L2 B U2 R2" }
{ "L2 R2 B2 D' R2 F2 D' R2 B2 U D' F D' F U' B' L' B2 D L D2" }
{ "D' R D2 F' D U F' R2 D R L2 B2 R2 U2 L2 U' B2 D L2 F2 D2" }
{ "L2 B2 U2 B L2 R2 U2 B2 L2 F' B2 L' D' F' D' F B' R' D' R U" }
{ "R2 B2 U' F2 R2 U' L2 D2 R2 D2 L2 R' F2 U2 R B' D2 L2 B R2" }
{ "L2 R2 D B2 L2 U2 F2 R2 U2 R2 B2 R' D B2 L' U2 B' U2 R B'" }
{ "D' F2 D2 F2 U L2 D R2 B2 R2 D2 L U F2 U R2 D' L' F D2 L2" }
{ "B' D' R2 L' B L' U' L2 U R' B2 R2 L B2 F2 R U2 L F2 L" }
{ "R2 U2 L U2 F2 R2 F2 R' B2 L D2 F' B' R F D2 L2 D' L B U" }
{ "L2 B2 D' B2 L2 D2 R2 U2 F2 R2 D R' B' D2 L U R2 F U R2 B2" }
{ "R2 U L2 B2 L2 U' D2 L2 D R2 F2 B' D B2 D' R F2 D' R2 B' U2" }
{ "U2 L B' L D B' R2 D' U2 F' D B2 U' B2 L2 U L2 U2 B2 U2 F2" }
{ "D' L2 D2 R2 U' B2 L2 R2 D' R2 U L D B2 R2 D2 F2 L' U B D'" }
{ "L2 D2 B R2 D2 F' R2 U2 D2 F2 D2 R D B' U L F2 U2 D R D2" }
{ "F L2 B' D2 F' L2 B L2 R2 B2 R B2 R U2 B' L B D' L" }
{ "B2 R2 F2 B2 U' L2 D' F2 L2 U2 D' F' L' B2 D L U' L B2 L2 D2" }
{ "D' F' D B F2 D' B' R F L B2 D2 R' B2 R2 F2 R U2 F2 U2" }
{ "U L2 B2 U B2 D' F2 U' L2 R2 D' R B' L2 R B2 U2 B D' L2 F" }
{ "R B D U F2 U' R2 U R' D' L2 D B2 L2 U F2 D2 B2 D' L2" }
{ "L' D2 R U2 F2 L R2 U2 D2 F2 U2 D' R2 D R2 D B D' F' B2" }
{ "F' D2 B U2 D2 R2 F U2 B2 U2 R F' L B2 R' D' L' D R2" }
{ "F2 B2 L' B2 D2 R2 F2 R' U2 L U2 D F2 R' U' D2 F R2 F" }
{ "F2 R2 F' R B2 R U2 B R2 D2 B L2 B' U2 B2 L2" }
{ "F2 B2 D F2 B2 D' B2 U' D2 L2 B2 L U2 F' L B2 R F D F D" }
{ "U2 R F2 U2 R2 F2 L U2 L' B2 R2 B' R2 F R2 B2 D L' F' L'" }
{ "L' D B D' B' U2 R' U' B' D2 F2 D2 L2 B2 R D2 L D2 U2 R" }
{ "F' U2 L2 U2 D2 B2 L2 F R2 B' U R2 B' L2 D' R U2 B' U" }
{ "F' D' U' L2 F D2 R2 B' L D2 F2 D2 R2 U2 F' U2 B' D2 B L2" }
{ "B2 L2 F2 D2 L R2 U2 B2 D2 R' D2 F' U' B2 R' U' D2 L F' U2 F2" }
{ "B2 R' F2 L D2 L' F2 L2 U2 R2 U2 F' L2 B' L R' D L B R' U2" }
{ "F2 D2 R2 D2 B2 R2 B U2 B2 R2 B L' U2 F' U' F' L R U R2 B'" }
{ "D2 B2 R2 U2 R U2 R F2 U2 L B' U' B' U2 L' B' D2 B'" }
{ "L2 U2 D2 F2 L2 B' U2 L2 R2 F2 B D B2 L F2 B L F2 B' D' R" }
{ "U2 R2 B2 D' B2 D2 F2 D B2 L2 D' R' U2 D F L2 B' U' R B2 D" }
{ "F2 D F2 U' L2 U2 L2 F2 L2 D' F2 B' D F2 R U' B' L F' D' F'" }
{ "L2 U' F2 R2 F2 D' F2 L2 U' R2 U L U' B2 R' U2 R2 B L B2 L'" }
{ "U2 R2 U2 R2 D B2 U' B2 L2 D' F2 R U' D F' R' D' B2 D F' R" }
{ "F2 L U2 R' F2 R U2 R B2 U2 R' U F L2 D2 B L' R' D2 F'" }
{ "R U2 R' U2 R2 F2 R B2 U2 R B2 D' L' R' F2 U' D2 R U F'" }
{ "R' B2 D2 L' U2 F2 L2 U2 D2 B2 L' F' R U B2 R2 D R F2" }
{ "L2 U2 B2 D R2 B2 U' R2 B2 D' B' U' L2 D2 F2 R2 F R B2 U'" }
{ "U2 F2 D2 L2 B U2 L2 B' D2 F' U2 R' F U' L U' R2 F L' U2 B" }
{ "U' F2 D L2 U2 F2 R2 B2 L2 D' F2 B R2 F' L' D' R2 U2 L' R U" }
{ "D' R2 U L2 R2 B2 D L2 U' B2 U2 L' R B' U' D B U2 B" }
{ "L' U2 F2 U' L' B' U' L U2 F U2 F2 U F2 U' R2 D' L2 U' R2 D'" }
{ "R' B2 D2 R' U2 L U2 F2 R B2 L2 F' B2 L2 D' F2 R B' R2 F" }
{ "U R2 B2 U' F2 B2 L2 U2 D' R2 D L U L' U2 L F2 B U2 L' D'" }
{ "R2 F L2 R2 U2 R2 F' R2 F' U2 B' D B' R' U L2 R D' F" }
{ "D' L2 U2 F U' B' U' L D' B2 L2 F U2 L2 B2 R2 L2 B' D2 U2" }
{ "L2 F L2 F' R2 F D2 B R2 F U2 D B2 U B D2 R B2 U L" }
{ "D' F2 L2 F2 L2 D L2 B2 D2 F2 U2 R D2 B' L2 R2 U F L U2 L" }
{ "L2 U D2 B2 D F2 R2 B2 U' B2 U' B' L2 U' F L2 U D B L' B" }
{ "B2 L U' L' F D2 L' D2 U R L' U2 L' B2 F2 L' D2 B2 L' B2" }
{ "D' F2 U' L2 D L2 F2 U R2 D2 B R U R2 B2 L B2 R' F L' U'" }
{ "D F2 R2 B2 L2 B2 U D2 L2 R2 F2 B' U2 B L B' D2 B2 D L' B'" }
{ "B D' L' F' D2 R U2 L' U B2 D2 F' D2 R2 U2 L2 F D2 F D2" }
{ "U2 R' U2 L U2 R2 D2 L2 B2 D2 R2 F' D F' D L D' R" }
{ "B' U2 R2 U2 D2 F' D2 F2 U2 F D2 R B' L2 F2 B2 D' L' U' L F'" }
{ "D' B2 U R2 B2 R2 U B2 D L' B R' U B' L2 D' L F' D2 R" }
{ "R' F2 B2 R F2 L R F2 R U R2 B' U' B2 U2 B R2 U" }
{ "F2 R' U2 D2 R B2 R U2 R' F2 L2 B D' L U L2 B' R' U' L2 U" }
{ "F2 U B2 L2 F2 D' B2 U2 F2 D' F2 R D2 R' D' B2 L2 R B' L2 D'" }
{ "D L2 B2 R2 U' F2 B2 L2 U' B2 U2 L' U' D L2 F D2 B U' B' D" }
{ "F D2 B' U2 B R2 B L2 B2 D2 B U L F2 L R D' R' B2 U2" }
{ "D B2 U F2 L F D U2 B' R2 B2 U2 B2 D2 B2 R2 D' F2 D' B2" }
{ "D2 B' L2 U2 B' D2 F2 L2 R2 F' D2 R' B2 L B2 U2 R D L' U D" }
{ "D B L' U R D2 U' L2 B' D2 F2 L' F2 L' D2 R' B2 R2 D2 R'" }
{ "B' L F' R2 U' F' D2 R' F' L2 F' D2 B2 R2 U2 B R2 B' L2" }
{ "F2 U2 L2 R2 B2 U2 R2 F R2 F' B' R F' L U2 R2 D L' B' L2 R'" }
{ "F2 D2 R2 D B2 L2 F2 R2 U2 B2 R B2 L' U' D L' B R2 U' L' D" }
{ "F2 B2 R2 U R2 D' L2 F2 D2 F2 D R U2 D B2 L' B D B2 D2" }
{ "U2 D' B2 D L2 U R2 U' F2 B2 R2 F B R' F U' D B2 L D" }
{ "L2 D2 L2 U' D2 L2 D F2 D R2 B2 L D' B2 U2 L U2 B' L' R U2" }
{ "F' R D2 U2 F2 U2 L2 U B R2 F2 R2 L' U2 F2 L' U2 R D2 L2" }
{ "U D R2 F2 D B2 D' L2 U F2 B2 L B D L' U' F R2 U2 R' D" }
{ "D L2 B2 U' L2 B2 U D2 F2 D R2 B D R' U B' R2 U2 D' R' D" }
{ "F L2 F' L2 U2 L2 U2 B R2 D2 F2 R' U L' U2 L2 U R' B' U" }
{ "B2 L' F2 U2 F2 L U2 B2 L B2 R2 B' D' L D L U2 F L2 B" }
{ "F R2 F' R2 B' U2 L2 D2 F B' L' B2 U2 R' B2 D' B2 D' B2" }
{ "D B2 R2 F2 D B2 U' L2 D B2 D' F R D' B2 U2 B' D2 L' B' L2" }
{ "F2 U2 R D' B U2 F U B F2 R U2 R2 D2 L' U2 R U2 B2 R'" }
{ "U' F2 L2 U' F2 L2 F2 D B2 D L2 F' R' D' B' U' D' R' B' L U'" }
{ "F2 U2 D2 F U2 F L2 D2 L2 F' B2 L D L2 F' R U F U2 D" }
{ "R2 F2 L2 D L2 U2 L2 B2 D F2 L' F' U R2 B2 U2 D2" }
{ "D2 F' U2 B' D2 F2 R2 U2 B' U2 L2 U' R2 D2 L F D R' F2 B2 L2" }
{ "R' F2 L D2 R' F2 L D2 L' R2 U2 D' R' U2 B2 U2 F L' U' L' R'" }
{ "B' D L U' F' D' B' D B' R2 F D2 B L2 F2 D2 F' U2 L2" }
{ "L2 D2 R B2 L2 B2 R B2 L' D2 R B' L2 B' R' U R2 D2 F' U' R" }
{ "R2 D B2 U F2 R2 D2 F2 R2 B2 D2 R F2 B2 U F R D F D' L2" }
{ "B2 R2 D B2 U F2 R2 D' R2 U D F' U2 R D B2 L D L' B' D'" }
{ "L2 F2 D F2 B2 L2 U B2 U2 R2 U B D B' D2 B D L' U2 F2 R" }
{ "R B2 L B F2 D2 B2 D R2 F R2 D F2 D B2 R2 U' R2 D L2 D2" }
{ "R2 U2 B2 R2 U R2 D' F2 U' R2 D' F U2 L' F' B2 R F' U D' R" }
{ "D2 L2 B R' B F2 L F U B D2 F D2 B2 F' L2 B' R2 U2 L2" }
{ "U2 L2 D R2 D B2 L2 F2 B2 D2 F2 L F B2 R D2 F2 R' U' B2 D2" }
{ "D' F2 D' R2 F2 U' L2 U R2 B2 U2 R' D' L F2 B L' F D2 B U" }
{ "B' L D2 B L D2 R' D R' L2 B2 L2 B U2 B2 L2 F R2 B2 U2" }
{ "R2 B U2 B' L2 F' D2 R2 F2 B' U L D2 L F' U2 L B R' D" }
{ "L2 B2 U2 F D2 B' U2 F' R2 B2 U2 D R B' D' F2 L2 D' R' F' R'" }
{ "R2 F2 B' R2 B' L2 R2 U2 R2 D2 B' R D L' R U2 L U B U2 B2" }
{ "L2 U2 F2 U B2 U F2 U2 F2 L2 U B D2 R D' R2 D R B' D R'" }
{ "L2 B2 D' L2 U' F2 U' R2 D2 F2 D2 F' R2 B' R U' L' R U B R" }
{ "L2 B2 D' B2 L2 D2 F2 B2 D B2 D L' D' L2 F2 D R2 B R2 F' D'" }
{ "D B2 U' F2 B2 D F2 L2 U2 B2 D L' F U2 R2 D' F' U' L' D B2" }
{ "F D2 B U2 R2 F L2 F2 D2 F2 B' L' F' U R' U' B2 L F U' L'" }
{ "D' B' L D2 B' L B2 L2 D R L2 F2 U2 R' F2 L B2 L" }
{ "L2 D R' L U F' D2 F' U L B2 R' B2 R2 D2 U2 R' U2 B2 L" }
{ "L2 B2 D2 F2 D F2 U F2 B2 U F2 B' D2 F L U2 F2 R2 F R'" }
{ "L2 U2 B U2 D2 F B2 D2 B' L2 D2 L B2 D' L F2 B' R F2 U R'" }
{ "B2 R2 D' B2 U' D2 R2 D R2 F2 B D' B L' U' D B D' B2 D'" }
{ "R2 F D2 F D2 B' U2 B' D2 R2 F2 D R' U L2 D R2 F L2 B' L" }
{ "R B2 L U2 D2 L2 F2 R' U2 D2 F2 B U' B2 U2 F2 L B2 R D" }
{ "U R2 F2 U B2 U' L2 F2 D' B2 D' F B' R' F U2 L R' U L'" }
{ "L2 R2 D2 B2 L2 D F2 D L2 D F' L R2 B U' L' F U2 D' L'" }
{ "L B2 L2 B2 R D2 B2 L' D2 L2 B2 D' B U B R' F2 R' U2 L2 U'" }
{ "B2 R2 D2 F U2 D2 R2 U2 F' B2 L2 U' D2 F L' B' D' B' L2 R' D2" }
{ "D R2 U' L2 D R2 U' B2 L2 D' R2 F B2 U F2 U2 F R2 U R' B2" }
{ "F' L2 B U2 F2 R2 U2 L2 B2 L2 B2 U' B U' D B' U' R' B2 D2" }
{ "F2 D' F2 U' F2 R2 U' R2 B2 U' D2 L' F L2 U L' D B2 D2 L' R2" }
{ "R2 D B2 U2 R2 U F2 R2 F2 B2 D F' D B D B U F2 R' B2 D" }
{ "F U2 R2 D2 F R2 B D2 F D2 B' U' L2 U' L B2 D' R2 U B' U" }
{ "F2 B2 U2 B2 D' F2 D L2 U F2 D2 L' D' R2 D B' R2 U2 R' U2" }
{ "R2 U2 B L B L' D' F2 R2 L F2 D F2 D R2 U' L2 U' B2 U2" }
{ "U2 L2 R B2 U2 L U2 D2 R' D2 L' F R F' R' U L2 U2 F' B2" }
{ "B2 R2 B' L U B' D L' D U2 R2 D2 F2 R2 U2 R' U2 L' D2 R2" }
{ "U2 F2 L2 U2 L F2 U2 L' R' F2 R2 F L' D2 L D L' D2 F' D'" }
{ "U R2 U2 D R2 B2 D' L2 B2 R2 B R2 U' D' F2 L' B L' R2 D" }
{ "B2 R2 F2 U' F2 D L2 U' D' B' U2 F L' R B' U D' R' F' R" }
{ "B2 L F2 B2 L' D2 B2 R2 D2 B2 R' F' U' L F U2 L' F' B2 L" }
{ "F' L' D R B2 U2 L B' R D2 R2 B2 F L2 F D2 L2 B D2 L2" }
{ "D' F2 R' U F' D2 U' F' U' L B2 D U F2 L2 D B2 F2 R2 D2 L2" }
{ "U B2 U' F2 R2 D2 R2 B2 L2 F2 U' R U' F2 U F R U F' R2 U2" }
{ "U' F2 U' D2 B2 U B2 L2 D2 B2 L2 B L' D L' R' U' F' R' F' B2" }
{ "B2 U' L2 U R2 B2 L2 R2 D2 L2 U R' U' D' R' F U2 F' B2" }
{ "D' L2 U' L2 D F2 R2 D F2 L2 U2 L D B2 U' F' B U R2 D B'" }
{ "B' R2 B' U2 B' U2 R2 F L2 B D F L2 U B D' L U' F2 R D2" }
{ "D' B' F D L' F2 L2 D U2 F L2 U2 R2 B' L2 U2 F L2 D2" }
{ "U2 R2 F' R2 U2 F R2 B D2 L2 B U F U2 L' B' U D' R U D" }
{ "B2 U' D' L2 D R2 B2 R2 F2 U' R2 F U' D F B U F' D2 L'" }
{ "B2 R2 U2 F2 L2 R' B2 L F2 D2 R D L2 R' B R2 F' U' B L B2" }
{ "B' R2 U2 B U2 R2 D2 B' U2 F' B' D F' L R' B' L2 F2 L B'" }
{ "B' D F D' L' B2 L' B L U' F2 U L2 B2 L2 B2 D2 L2 D2" }
{ "U' L2 D2 B2 D F2 U' R2 B2 D2 B2 L' U B2 L D B' U D' B' L'" }
{ "U' F L2 D2 L' F' U2 L2 D' B2 L' D2 L' B2 L2 U2 B2 R U2 L'" }
{ "F2 U2 D2 L' R' U2 R' F2 R B2 L F' L2 U' R B2 L2 R2 U" }
{ "L2 D' R2 F2 D' L2 U B2 U' L2 U' R' B2 R2 F U D2 L2 B' L F" }
{ "F' B U2 R2 F L2 F R2 B' L2 B L U B D' L' R F' U' R2 U2" }
{ "F' L2 B R2 D2 F U2 L2 F D2 B' D R' D L' R2 U2 B' D' L B" }
{ "R2 D F2 R2 U2 R2 D' B2 U2 F2 L2 R D2 R B U' R2 D' R2 F2" }
{ "D2 U F' R' D' F U R D' F' L2 D B2 F2 D R2 F2 U F2 L2 D2" }
{ "R2 U2 L2 F' D2 F' L2 U2 B' D2 B L R2 B' R' U F' U' L D2 R'" }
{ "B2 R2 B L2 F U2 L2 B U2 B2 D2 L B' L2 U' D L U' F L2 F2" }
{ "D2 R2 F2 U2 F L2 R2 B' L2 F' B' L B' L F' B U R2 U2 F' B2" }
{ "L2 D F2 D' B2 L2 U' B2 D' B2 D F' R' U' B' R2 D' B D' L' B" }
{ "U' D' F2 U' L2 R2 D' R2 F2 D R' B' U2 R U2 B2 L' F2 L' U" }
{ "D' R2 B' D2 U' R B2 R' U2 R' D' F2 U L2 F2 D L2 B2 D B2 U" }
{ "F2 R2 D L2 U F2 U2 R2 U' L2 F2 L' F R U2 F U2 L U' D' B'" }
{ "B' D2 B' U2 L2 R2 F D2 F' D2 B' U' D2 L' R' U' L2 F' U' R' D" }
{ "U' F2 D' L2 U2 D F2 D' L2 D R' B U' L D L' U B D R2" }
{ "L2 D2 F2 L' B2 L2 D2 L U2 B2 R' D B' D' F' R2 U2 F' D'" }
{ "D2 R2 U F2 R2 U' F2 B2 U B2 U2 L D R2 U B L' F' B2 R F" }
{ "D' B2 L' D2 L2 B D' R2 U F2 U2 R2 B' L2 U2 B U2 B2 F R2" }
{ "B2 D' R2 D' F2 L2 F2 U L2 D R D L' F' D' F2 L R B' R" }
{ "D' R2 F2 L2 D' B2 R2 D2 L2 U' D2 B' U2 L' U' L' F2 U D' R D2" }
{ "R2 U D2 B2 U B2 L2 D2 R' D' R2 B2 D' R2 U2 B R2" }
{ "B2 R2 D' B2 L2 U F2 B2 U2 L2 B2 L D L' U' R2 B' U' L2 F D2" }
{ "R' D R2 B' L2 B' U' F2 L' U B2 L2 U2 F2 L2 B2 U B2 F2 D'" }
{ "L2 B2 U' R2 F2 U2 D B2 R2 U' L F2 D' L' F' D2 F' B U L' R2" }
{ "F' L2 B2 L2 D2 B R2 D2 B R2 F' R' F R2 F U2 D' B' L2 U'" }
{ "R' U2 B2 R' U2 B2 L' B2 U2 L B' U D2 L2 D B' R F2 D' R2" }
{ "F2 L2 R F2 R2 B2 U2 L2 D2 B2 R D' F' D' F' D F' B U R' D" }
{ "R F2 L B2 L D2 L' U2 B2 R2 U' R' D F' D R2 U2 B' D'" }
{ "F2 L2 F2 R2 U R2 F2 U2 D' B2 D2 B' R U2 R F' U F D' F2 B'" }
{ "U L2 U2 L2 F2 D' B2 D' L2 D' F' U L' F2 U R2 B2 U B'" }
{ "F2 D F2 D R2 F2 R2 U L2 U' L2 F L2 R2 F2 U2 L R2 B L' R2" }
{ "L2 D2 F R2 F L2 U2 F2 D2 R2 B' R' U' B' R' B' R2 U D2 B" }
{ "U2 R' U2 L F2 L' U2 F2 L2 D2 F2 D R F' R' D L' F2 L' U2" }
{ "U L2 D' B2 L2 B2 R2 U B2 R2 U R U' R U' F' D' B2 U' B2 R'" }
{ "L2 D2 F' U2 L2 B R2 B D2 B' D2 L' U2 F L' D' B R' B' D" }
{ "L2 D' F2 U' L2 R2 D' L2 D L2 U R' F2 R' D2 F R U' D' R B2" }
{ "F' U2 R2 F2 D2 L2 D2 L2 B2 D2 B L' B' D' F' L2 B2 L U' F' D2" }
{ "L B R2 B' U' B R D2 U2 B' D2 R2 F2 D L2 B2 U2 F2 D2 B2 D" }
{ "D' U' B U F D2 F R' D' B' D F2 L2 U R2 L2 U2 B2 U' L2" }
{ "B2 L2 F R2 U2 B L2 B R2 U2 L2 D L' B' R F2 L' F2 D' L2 B2" }
{ "L2 B' F' R L D' L2 B' L B2 U' B2 F2 D' B2 F2 L2 F2 D' U'" }
{ "L U' R' B2 R2 U R D L2 B2 D2 R2 B' D2 U2 L2 F' R2 B2" }
{ "D2 B D2 R' D L2 U R2 F' U2 F2 L U2 F2 L D2 F2 R" }
{ "F2 L2 D' L' D' U2 L D' B D2 B2 U2 B2 L2 D2 B2 D' R2 L2 D'" }
{ "U2 B2 L2 D2 B2 R2 D' F2 D L2 D F R2 D' L' D' F B U F L'" }
{ "L2 R2 B2 U2 D2 R2 D' F2 U F2 D' B L2 R' F D' L' D2 F B' R" }
{ "U2 B2 D2 B' L2 B' U2 F L2 B' L' B R U L D L' D' F L'" }
{ "L B2 L' B2 R2 D2 F2 L' U2 F2 D' L F2 U2 D' L' B U F2 L2" }
{ "F2 L U2 B2 R U2 L' D2 F2 L2 U2 B' R' F L' U' L' D' F D' R'" }
{ "F2 L U2 D2 F2 D2 R D2 R' B2 R U' B D2 R2 B' L R' D' R2 D2" }
{ "D' L2 U R2 D2 F2 R2 F2 L2 U2 D2 L' F2 B2 R' U' R U2 D' B" }
{ "D2 B2 R' F2 R U2 R2 B2 R2 D2 F2 U F2 L U2 F D' R B D' B" }
{ "U2 L2 D2 B2 L2 B' D2 R2 B' L2 D2 R' U' L2 B' L2 D' L B2 D F'" }
{ "B' L B D2 R' L U F2 R D2 U2 R B2 R2 F2 L B2 U2" }
{ "F' D U2 R' B' L2 B L' D' R2 D2 L2 F2 R2 U R2 D2 U" }
{ "L' F2 D' L D2 F2 L' B2 F' U2 F2 L2 D' B2 U' L2 D2 R2 D' R2" }
{ "B2 L2 D' L2 B2 R2 U L2 D F2 D L' B' R' U2 L' U L' U2 D R'" }
{ "D2 B R2 B' D2 B2 D2 B L2 U2 D' B U' B' L' U' L' R D2 F2" }
{ "D2 B2 D2 L2 R2 B U2 R2 U2 F2 L2 U R' D R B2 D2 F2 R' B2 D" }
{ "L F2 R F2 L U2 R B2 R2 B2 R' D F2 B U' R2 D' B' L' U D2" }
{ "B' R2 U2 R2 U2 R2 B' U2 B' U2 D2 L' B2 D' B2 U2 B L' U2 L" }
{ "D F R2 D2 B2 R' U' R' F2 D2 R2 U' R2 L2 B2 L2 D' L2 U'" }
{ "L2 U F2 D2 B2 R2 U F2 R2 U F2 L' B U' B' L2 F B' R2 B' D2" }
{ "R U2 B2 R' F2 R' F2 B2 L' U2 R2 D R B2 U2 F R2 U D R2" }
{ "U2 D' F2 U2 B2 R2 U' B2 D' L2 R2 B L' U2 L U2 F2 B2 L' B2 D'" }
{ "R2 F' U2 B L2 D2 F' D2 B2 L2 D2 L B' D F2 D' L R2 D2 L2 B2" }
{ "F' R2 U2 F' R2 U2 L2 R2 B R2 F' R' F U L' B2 D2 R2 F2 D2 R'" }
{ "U2 L D2 L B2 L B2 D2 L2 U2 D2 F' U' B2 R U B' D' F B2" }
{ "R' B2 D U' B' U2 F' L2 U' R' U F2 D L2 D R2 U B2 F2 D2 B2" }
{ "L2 F2 D2 R2 B2 D2 L2 F2 D2 R F' D F B R D R D2 R2" }
{ "U F L' B D B2 U2 L2 U' B' R2 F' D2 R2 D2 B2 L2 D2 F' R2" }
{ "F2 L2 F D2 L2 D2 F2 B' R2 D2 B' L' U' B' L2 R' B2 U' L R' U" }
{ "U2 R' F2 L' D2 R' F2 B2 R2 B2 L U' F' D L2 U' R' U' B L" }
{ "B2 L2 D' F2 R2 F2 U' R2 D2 B2 D2 F D R F U2 L' F D2 L R'" }
{ "B2 D2 L2 D L2 F2 U' L2 U' B2 D B U B L2 D2 R U L2 F' L2" }
{ "U' L2 B2 L2 U R2 F2 U L2 B2 R B2 U F U2 L' F R D' R2" }
{ "U2 B2 D' L2 B2 D' R2 B2 U L2 D2 R D F D R' B U' F B" }
{ "L2 D2 L2 F2 B U2 B' R2 B L2 B' U F2 U2 L2 B D' F' D2 B" }
{ "L2 B' L2 R2 D2 B' L2 B' U2 R2 B2 R B2 L' D' R U2 L' B2 R D2" }
{ "L2 D' R2 U' F2 U' F2 B2 R2 F2 U2 L' D F2 D B2 L2 F' L R2 B" }
{ "U2 D2 L B2 L U2 L2 U2 F2 L R2 U' B' U' F U F2 R2 D' L F'" }
{ "D' B2 D U' B2 L' F2 D' B' D U2 B2 U' L2 U L2 U' B2 L2 U2" }
{ "L2 R2 U F2 U2 D' B2 R2 D L2 R U' L2 R F2 B R F2 U R" }
{ "B2 D F2 L2 D R2 D' L2 U B2 D' F' L2 R D2 F R' F2 B' D'" }
{ "D2 B2 U' L2 D' L2 F2 R2 D2 R2 D L' F B R2 D L2 F U R B" }
{ "R' B U' B' U L' B2 F2 U L' F2 R' U2 L F2 R' D2 R' U2 F2" }
{ "L' B2 U2 F2 L2 D2 R F2 R B2 D' B2 L D B' D B2 L' R B'" }
{ "F L2 R2 F' U2 B2 L2 B' D2 B R F2 B L F2 L2 D B' D'" }
{ "R2 U2 B U2 L2 D2 B' R2 B' R2 D2 L B' L R2 U L' B U' L' B'" }
{ "L2 U' B' L U' R D2 L U F2 R2 U2 B F U2 R2 F L2 B2" }
{ "B' L2 F' B2 L2 U2 F' L2 B' D2 F U R U L2 R2 U2 R B2 D" }
{ "B2 U2 R2 D L2 U' L2 R2 D' L2 F2 B' R D R B' U' D R B2 D" }
{ "L2 F2 R2 U' B2 U D B2 U2 B2 L2 R' B L R' D2 L' B L B2 D" }
{ "B2 L2 B2 U' R2 F2 U' L2 B2 U2 R2 B R' F' L U F' B2 U2 D R'" }
{ "B2 U2 B2 R U2 D2 L U2 B2 L B2 D R2 F U2 L B U' L' F2 D'" }
{ "D2 L2 U R2 U' B2 D R2 F2 R2 F2 B L B D' L2 F' L2 D L2 D2" }
{ "U2 F2 B2 L' D2 L2 R D2 B2 R F2 B' U R2 D L B' L F' R' B'" }
{ "L2 D2 F' D2 B' U2 F L2 U2 F U2 D L D L' R U L2 R B2 D" }
{ "D' R' L2 F U' B' F U F' R' L B2 R B2 F2 L B2 L' B2 D2" }
{ "B2 U R2 U L2 D' R2 U' D2 L2 F' U2 L D2 L' D' B' U' L2" }
{ "R2 D2 F2 B2 U B2 D' F2 D' L2 U B U R' D' B U' B' D' B2" }
{ "R2 U2 D' B2 U' L2 U' B2 R2 F2 D2 L' U F L F2 L R' B' R2 U'" }
{ "R2 B' L2 F U2 F' D2 L2 B R2 F R D F2 L2 U' R2 U R B" }
{ "B' U2 F D2 F2 D2 B L2 U2 F' B' L B2 R' U R2 B' U' B L B" }
{ "R2 F2 L2 B2 D F2 R2 D' R2 U D2 L' B L R2 B' L2 B' R U" }
{ "D2 F2 R2 B' R2 U2 B' L2 D2 F U' R F' U' B R' U L' F' R'" }
{ "B' L2 F' R2 B L2 F U2 L2 U2 B2 R F B2 D' B' R' D B2 R' U2" }
{ "U2 L F2 B2 D2 R' U2 B2 L' B2 U B' D R2 U2 B' U2 R' U B'" }
{ "F2 R2 U R2 U2 R2 B2 U' B2 R2 F2 B U' L' U' L' D2 L' R' U B2" }
{ "R2 U2 B U2 B L2 U2 R2 D2 F2 U2 R' F R U F' D2 L' D L F'" }
{ "B2 R2 B L2 D2 B' D2 B2 U2 R2 D2 L B' U' B' D' F2 B R D2 R2" }
{ "D2 B' D2 F L2 F' U2 B2 U2 L2 F2 L B2 R U L' R2 B2 U' R2" }
{ "R2 U L2 B2 U2 R2 B2 U' D' L2 B2 L U2 D B' U2 L2 F R U2 B2" }
{ "R2 U2 R2 D2 F' R2 D2 F2 D2 F D2 L U2 B2 D L R' F D' B' D2" }
{ "B R2 D2 F R2 F U2 F2 B D2 R2 U F2 L B' U' L' B2 R2 B2 D" }
{ "B2 R' D' L2 B2 L2 B R' U B' F U2 L2 B D2 U2 L2 U2 F' L2" }
{ "L2 F2 D2 R2 B L2 B' D2 B L2 B U F U2 R2 U' F B L B U2" }
{ "U2 F2 D2 L2 F' U2 L2 F L2 R2 F2 U D2 R' F2 R' F' L2 D B'" }
{ "U2 D2 F L2 B R2 F2 U2 R2 F2 B' R' F L2 F B R D' R B' U'" }
{ "B' L' B U' B' R F2 L U F2 R' D2 U2 B2 L2 B2 R' D2 R2 D2" }
{ "U2 L' F2 U2 R U2 B2 L B2 U2 B R B L' F2 U F' U D' F" }
{ "F U2 F2 U2 F U2 D2 L2 D2 B' L B L2 F' R2 U L B2 U R2" }
{ "U F2 L B' L2 F' U R2 L U2 B' R2 B R2 B D2 F2 L2 B'" }
{ "R2 U L2 D' F2 U L2 D B2 L2 D' L' U R B D' R' F' R2 U F'" }
{ "D' R2 U2 F2 B2 U' F2 L2 D L2 D' F' R' U2 B2 L' B' D' B2 L' F'" }
{ "U L2 R2 U' B2 L2 D2 R2 U R2 U F B U L' F' D R2 D' R U2" }
{ "R2 U2 F2 R2 U R2 D B2 D F2 D L' D2 R2 B D2 L' B2 U' R' U2" }
{ "U2 B2 D2 L2 R2 F' B2 R2 U2 B' D' F2 D' R' F L B' U' B R'" }
{ "U2 R2 F2 U R2 F2 R2 D' L2 D F2 L D F D L2 D' F L2 D" }
{ "L' D2 L' U2 R U2 R U2 D2 B2 R2 D R' D2 R2 F U' F'" }
{ "U2 R' D2 F2 U2 B2 L D2 L B2 D2 B' R' D' R U' D F' L" }
{ "F2 B U2 F U2 L2 F U2 B L2 B' U B2 R F U' L' F2 B2 U' B" }
{ "B2 U F2 U D' R2 D B2 D2 L' F U2 B2 L2 R' U' B' D' L'" }
{ "R' D' L U' L2 B D' F' U' R F2 L2 F2 D2 F2 D' R2 U' B2 D2 B2" }
{ "D F L U L U' B' U F' U2 L2 U2 R2 D' R2 L2 D' L2 B2 U'" }
{ "U2 D2 B' L2 F' D2 B U2 F L2 R2 D B2 R2 D' L D' R D2 L" }
{ "R' D R' D2 L' B2 D2 B L' F2 L' D2 U2 B2 U2 R' U2 R' U2" }
{ "D2 B2 L2 B2 L2 U L2 F2 U' D' B2 L U' L U' D' R2 B2 L' F R'" }
{ "B R U2 F R' D2 U L' U' R D2 R' D2 R B2 R B2 L' F2 U2" }
{ "L2 D2 F2 L U2 F2 R' D2 R D2 L2 U' B' L B' R2 U' F2 L' U' D2" }
{ "U R2 B2 D B2 R2 U L2 B2 U' R' D' L B2 R2 D' L U F D2" }
{ "B U2 F R2 U2 B' U2 R2 U2 L2 F2 D' L R U' B' U2 L' F' D L'" }
{ "R' F' R D' R' B F D R2 D2 L' B2 R2 B2 U2 L U2 F2 R'" }
{ "L2 F2 B L2 D2 B L2 D2 B D2 R2 D' R' U L' F2 R' U' F2 R2 B2" }
{ "B2 L2 D' L2 D F2 L2 R2 U' R2 U R' F' R F U' B U D2 L D'" }
{ "R2 D L' F D2 R' U2 R D U2 R L2 D2 L F2 R2 D2 U2 L' D2" }
{ "D2 B' U2 D2 R2 F2 B R2 B2 D2 L2 D' L D F' L2 F U' L' U D2" }
{ "U' F2 D B2 D2 R2 D' F2 U' L2 R' U2 F' D' L' U' R' U2 B' U B2" }
{ "B2 D F2 U L2 F2 D' R2 F2 D F2 R' F' D' R F L2 D' L' R" }
{ "L2 B2 R D2 L' D2 R' B2 D2 F2 R' B' U L2 B' L' R' B2 L2 D2" }
{ "U2 B R2 F' L2 F2 R2 B' D2 B' D2 L D' R2 U2 F' R B2 L2 D' R" }
{ "B2 R2 F U2 D2 F' R2 B' D2 F' B' U' R' B' U2 L2 B' D2 L U D" }
{ "D2 B' L2 B2 D2 R2 B L2 D2 L2 B2 U R' D R2 F U2 B2 D F' U" }
{ "U2 D2 R' F2 R D2 L2 B2 R F2 R F' U' B R U' B' U R D2 F2" }
{ "D F2 D R2 D' L2 D R2 B2 D' L2 B' R2 F U' L' F' B2 R2 B2 U'" }
{ "B2 D2 L R D2 B2 R' F2 R' B2 L F' U B2 L B2 R2 F' B' R B2" }
{ "R2 U' F2 B2 D' L2 U' L2 D R2 D2 F' U F D' B2 L U R B2 R" }
{ "B2 L R D2 B2 L D2 R' F2 U2 F2 D' L' U' D2 L' D2 L' F' U" }
{ "F2 R D2 L F2 B2 D2 R B2 L R' D F R' D' B' U R F D L2" }
{ "R' B2 D2 F' D2 B' R2 D' F' R L' D2 R' D2 U2 L' B2 L2 F2" }
{ "F2 D' R' L B R' B' D' L F2 R2 B2 F2 U2 L2 U B2 U L2 B2" }
{ "B' L2 B' L2 F2 B' D2 B U2 D2 F2 L' D' L' B2 L2 B2 D L B'" }
{ "R2 D' F2 D' F2 B2 L2 B2 D R2 D' L U F L B2 D' F' L' R2 U'" }
{ "L B' D2 F2 R2 D2 U F' R F2 L2 B F' L2 U2 L2 B D2 F R2" }
{ "R2 U2 F2 D R2 D F2 R2 D2 B2 U' L B2 R' U F2 L U F' R2" }
{ "L2 U' L2 B2 D' F2 R2 B2 L2 U2 L' D B2 L' R B' L2 F' L2" }
{ "D' R2 B2 U F2 D' F2 R2 D2 B2 D R B2 U' L' U2 R2 U F' L2" }
{ "D B2 D B2 D2 L F D F R2 L2 U2 B2 F' R2 L2 U2 R2 B'" }
{ "R B R2 D2 R' F2 L2 B' U' R2 B F2 D2 B L2 U2 R2 L2 F' D2" }
{ "D2 U' R D U' B2 U F L' D' L2 U' B2 R2 F2 R2 U' R2 B2 D'" }
{ "B' R2 B2 R' B' U L2 U B' L2 B2 D2 U' R2 U L2 U' F2 L2 F2" }
{ "U R2 U' L2 D R2 B2 L2 D' B2 D2 L D' B' U2 D L F2 L2 R2" }
{ "R2 U2 L2 B' D2 F L2 B2 R2 U2 F' U' R F L' U R' B R F U" }
{ "U' R' D F2 R L2 D2 B U' B2 U2 B' U2 L2 F' L2 B' R2 F' U2" }
{ "R' D2 R F' L' U' B R' B F2 D' R2 B2 R2 U R2 L2 D2 F2" }
{ "L2 U2 F U2 B2 R2 B L2 F' D2 F' U' R2 B2 D2 B U R F' R" }
{ "B2 L2 B2 R' F2 U2 L U2 R2 B2 R' U' L' F' L2 U B U2 B L2" }
{ "D' R L' U' F2 D2 F' R D' L' U2 B2 D2 F2 U F2 U' B2 D' F2 D2" }
{ "U2 L' R' D2 B2 L D2 L' F2 R' B2 D B' U R U R D2 F2 R D2" }
{ "L2 D R2 D' F2 B2 D2 L2 B2 U' F2 B U D' R' F2 B' U D' B D2" }
{ "D U2 F' D' R2 B' U' B R' F D2 B2 U2 L B2 R2 B2 R' D2 F2 R" }
{ "F2 D2 R2 U2 R2 F U2 D2 B L2 B' D L' B2 D R' F' B2 R F'" }
{ "L F2 R2 U2 R F2 R D2 R F2 R D' F2 B2 L' R2 B' D' L F' B2" }
{ "D2 F2 D' F2 U L2 F2 R2 F2 U' D' B R' F2 R' F2 B D2 B' U' D'" }
{ "R D' B R B F2 L2 F2 U2 L D R2 D' L2 D' L2 F2 D R2 U2 R2" }
{ "D' F' R' F L2 U' R2 U B D' F2 R2 U B2 R2 U2 L2 D U B2" }
{ "F' L2 F2 L2 D2 F D2 F2 D2 R2 U' F' R' U' D' R' U' F L R'" }
{ "D L2 B2 U2 R D' F U L2 F' R D2 B2 F2 R D2 R2 U2 F2 L F2" }
{ "L2 U R2 U' L2 F2 B2 D R2 U' F2 L' D2 R F' R2 F2 D' R2 F' D2" }
{ "U R B2 F L F' R' U' F2 R' D L2 U F2 D B2 F2 L2 D L2 D2" }
{ "F2 B' L2 U2 B' D2 B2 R2 U2 B2 D2 R' U F2 R F' L' U' R F' B2" }
{ "B' U2 B U2 F2 U2 R2 D2 L2 B' U' F' U' R' F U D B'" }
{ "R2 B2 U2 F2 R2 D L2 B2 D R2 D R U' B' U D R' B' U2 B D" }
{ "B2 D' R2 F2 R2 F2 U D F2 D L F' U2 L U' L U' L' F' D'" }
{ "D' R2 D2 R2 F2 U L2 D L2 R2 D' L D2 F2 U' B' D F U2 D2" }
{ "F2 L F2 L2 B' D L F2 L F D2 U2 B L2 F L2 D2 F2 R2 L2" }
{ "F2 L2 R2 U2 B' R2 B' L2 B' D2 L2 U' F' R U' R B2 D F U D" }
{ "U B2 L2 D2 L2 R2 U' L2 D' R' B L R2 F2 U F' U D2 F2 D" }
{ "D2 B' L2 U2 B R2 F L2 U2 R2 F D' R D2 B' U' B' D2 L B2 D" }
{ "B D2 B' L' U' B U' B D R2 U2 B2 R2 F' L2 B U2 B L2 D2" }
{ "U R2 U2 R2 D' L2 U B2 D B' R' D2 R F2 U2 F2 U' D' R" }
{ "B2 U L2 D B2 L2 B2 L2 B2 U R2 F' U2 D' L' B L2 F' U B D" }
{ "U2 F2 U F2 B2 U' L2 F2 U' R2 D2 R D' F R' F D2 B U' B' D'" }
{ "B2 D L' B2 D' L' U R D' R2 D2 B2 R2 F R2 F D2 R2 F' U2" }
{ "D F' L D2 B2 R' U' B2 R F D2 R2 U2 R2 B R2 B' L2 U2 F'" }
{ "B2 D R2 D F2 U' B2 U B2 D B R2 F L R2 D' L2 F2 D' B'" }
{ "B2 U' L2 U2 D' F2 B2 D' F2 B2 D' R B' D2 B2 U' B2 L2 F U' R2" }
{ "U2 L U2 L D2 L2 F2 R2 F2 L' B2 U F' R U' L2 D' L U R2 B'" }
{ "L2 D' B2 L2 R2 U' B2 L2 D' F2 R2 F' L D' B2 R' B' R2 U' R F" }
{ "R2 F2 U2 D' R2 U F2 R2 D' F2 D L' R2 U' L' F' R U R D'" }
{ "L' B2 R' F2 U2 B2 L2 B2 L R D F' R B2 R' U B2 L2 B" }
{ "L' U2 D2 R D2 R D2 F2 L' F2 L2 D' B' D2 L' U2 D L F2 B'" }
{ "U B2 R' D F' L2 F R' U' B' R2 B' L2 F' L2 B' D2 F2 D2 F" }
{ "L2 R2 U2 L2 D' F2 U L2 F2 U' B D2 F D' F2 D B2 L U2 R2" }
{ "L F2 L F2 D2 L' F2 R B2 R F2 U R U2 L2 B U' D' B' L'" }
{ "F2 U2 F2 R2 B2 L F2 D2 R' B2 U' D' B2 U' R' D' R2 B D'" }
{ "U2 R2 U2 R2 F2 D' F2 B2 L2 U' L2 F' R U' F R B2 L' D2 R'" }
{ "F2 U F2 B2 D B2 D' F2 D2 F2 D L' F2 L2 U2 B R U D" }
{ "R' L' B D' R F U F2 D' B D' L2 F2 U' R2 U2 R2 F2 U' L2 U" }
{ "R2 F2 U2 B2 R2 B' U2 D2 B L2 D2 L' R2 U2 B' U2 D F' D' F2" }
{ "F2 B2 U2 L2 U' D' B2 L2 U' R2 B' L2 R2 U B R2 F' R' D R" }
{ "F D2 B' R2 D2 F2 D2 F' B D2 L' F2 U D2 R F2 U2 R D'" }
{ "D' R' B2 D R2 F L2 U' B L' D2 L2 D2 F2 R' F2 U2 R' D2 L'" }
{ "B2 D2 L2 F2 D2 L2 B2 R2 D' B2 U' R' B R2 F D R2 B2 U2 F D2" }
{ "R2 D2 F2 D R2 D B2 L2 U2 F2 L' F D' F2 U L2 R2 B2 D' L' U2" }
{ "U B2 U' R2 U' F2 D' R2 B2 R2 D B' R' D' L2 R' F' D' F'" }
{ "B2 D B2 R2 U2 R2 U2 D L2 R2 D' R' D R U B D' B2 L F2" }
{ "B2 D' F2 R2 U' B2 U R2 F2 B2 D F' R' U' B' U B' D2 B' R D'" }
{ "D R' F2 R2 D' L B L' D F2 U' R2 U' L2 U' L2 U' R2 B2" }
{ "F2 L2 B2 R B2 L U2 B2 D2 B2 L2 U B' U L' R' B R B2" }
{ "B2 U2 F2 R2 D2 L D2 R' U2 F2 R F B2 U' F2 R D' F R2 F" }
{ "D B D' B' U2 R' B F2 R' U2 L2 U R2 L2 B2 D B2 R2 U" }
{ "F2 R2 F2 D2 R' U2 L' R2 B2 L' U2 F' D' R D B2 U R2 U R'" }
{ "U2 B2 U F2 D' R2 B2 U R2 U L2 F' D' R2 U2 F' L' B2 D' F D2" }
{ "F2 D2 B2 U R2 B2 D2 B2 D2 L2 D' F' L D2 F' R U' D' F' B2 R'" }
{ "D B D2 B2 D' F' L B L B D2 F R2 D2 L2 F R2 B' L2 D2" }
{ "U B2 R2 D2 B R2 L2 D2 L' B' U' R2 L2 B2 D B2 L2 F2 U' F2 U'" }
{ "D B2 R2 D' L2 D' F2 U D2 R2 F2 B R2 U F' L' R D2 L' F2" }
{ "D2 R2 D2 U' F2 L2 B R L2 D2 R2 U2 L2 U L2 U' B2 D2" }
{ "D B2 R L' B2 R L F L' F2 D' R2 B2 L2 B2 U' R2 B2 F2" }
{ "R2 F2 L F2 D2 R' F2 R' F2 R F2 D' R' U2 R2 F2 B' L2 F2 D' F'" }
{ "R' U2 D2 L B2 R' U2 R D2 F2 U2 B D2 R' B' U' F2 D2 R F2 R'" }
{ "D B2 D' L2 F2 U2 F2 D' B2 D2 F' D' L2 F2 D2 R' D' F R U'" }
{ "L2 F' U2 B R2 B' D2 B' U2 R2 B D L B2 L R' D' B R F B2" }
{ "B2 U2 B2 L F2 L R F2 U2 L' R2 F U' L U L U' B' D' F' D'" }
{ "F2 B2 D' B2 D' R2 D2 F2 L2 R2 U2 R' F U F' B2 L D' L2 R2 D'" }
{ "R2 B2 U D B2 U' R2 B2 D F2 R2 F D2 R2 B2 R U' B' D2 B'" }
{ "D' R D2 B2 U' L' U F' R' F' L2 U2 B' U2 R2 L2 B D2 R2 L2" }
{ "L2 F' U2 F2 L2 F U2 F' R2 D2 L U' L2 U' R2 D' L' D2 R F D'" }
{ "L U R' U' F2 R' F' L' F U B2 R2 L2 U2 L2 F2 L2 U' L2 U" }
{ "L2 F2 D' R2 B2 U L2 U2 D' F2 U2 L U B D' R' F2 R2 U' R' F2" }
{ "D F2 L2 D B2 L2 B2 D' B2 U F2 R B2 R' F D' F' L R U' D2" }
{ "B2 U' L2 D' F2 D' F2 B2 R2 D' B2 R U2 B' L2 B L B R2 F2 D'" }
{ "D2 B' D2 F D2 B' U2 L2 D2 R2 F2 R D' B2 D F2 R B' L' F' B2" }
{ "B D2 B' U2 L2 F2 B L2 B U2 L2 U' D' L2 F' R' U F' D' L2" }
{ "R2 F L2 U2 B D2 F' L2 R2 B U2 D L2 D B2 R F2 U L D R'" }
{ "B2 R D2 R2 D2 F2 R D2 L F2 U2 D R2 F R' U' L2 R2 F' R2 U2" }
{ "F2 U R2 U2 D F2 U B2 D' F2 L2 F' D2 L B2 L' U' R' D2 L2 U'" }
{ "B2 U2 F2 L2 U2 L2 B' R2 B D2 F U' B U' L D' F' D2 L' U' F'" }
{ "U' F2 D' F2 L2 D' R2 D L2 U' L' U' D2 L' F D L2 F2 U2 R2" }
{ "D2 F2 U2 L2 D2 F' U2 F B2 L2 B2 L B2 R' U2 F2 B D B' D2 R" }
{ "D2 B2 R' F2 U2 R2 U2 L2 R' U2 R2 U F B2 D L U' R F' U R" }
{ "U2 R2 B2 L' B2 R F2 D2 F2 D2 L2 U' F2 R' U' L2 D' F U' L2 R'" }
{ "U F L2 D U F2 U2 B2 R' F R2 D U B2 R2 D' B2 R2 F2 R2 D2" }
{ "F2 U R2 U L2 F2 L2 U' B2 R2 D2 F L B2 L2 F' U2 D' F R' U'" }
{ "F R' U2 F D2 B' D' L2 D B D2 U2 R2 B2 R2 F2 R2 D2 F' R2" }
{ "D2 F' B' L2 U2 L2 U2 F R2 F' L2 D' F2 B' R F2 U' D B U D'" }
{ "R2 U2 F2 R2 D2 F' L2 B L2 D2 F2 D' F' B2 L B' L' B' D2 L" }
{ "F R2 B U2 B L2 F U2 B L2 U' B' D2 L' R2 D2 B U' F2" }
{ "D' F' R2 D L U' F' R2 U' L B2 D2 R2 U' R2 U' R2 B2 U2 F2 R2" }
{ "D2 R2 D' B2 D L2 F2 D' L2 U D' F' U' R D' R2 F2 U' D' R2 D'" }
{ "F2 U D2 R2 D F2 B2 L2 D' L2 B2 L B' R2 B2 R' D' R U2 F' D'" }
{ "R2 B' L2 R2 U2 F L2 R2 B L2 B2 L U' L D' F' U' L2 B2 L" }
{ "L2 F2 R' F2 D2 R' B2 D2 R2 U2 R' D B' L' F B' D2 R' U R'" }
{ "B2 U' B2 L2 B2 D' L2 R2 D2 B2 D R' U L2 F' U2 F2 B L' D' B2" }
{ "D L2 B2 U F2 D L2 U' F2 R2 D F D' R2 F' B U L' B D2 B2" }
{ "U2 L2 D2 R2 F2 D' R2 D2 L2 F2 D' R B D2 R' D' F' D B' U" }
{ "R2 B R2 D2 B2 U2 R2 B U2 R2 F L' F' D F B U' L' F' U2" }
{ "B' F' U L2 U L B' F2 L U' B2 U L2 D L2 B2 R2 U R2" }
{ "D R2 D' B2 U L2 B2 D' R2 B2 D' F L' F' L2 F2 U L' R' B2 D" }
{ "R2 D' R2 U R2 D' L2 D' F2 L2 R2 F' U' L' R' B2 U2 R D L2 U" }
{ "R2 D L2 U L2 D F2 D2 B2 L2 D' F' D' L' D2 L2 F2 B D F L" }
{ "U2 F2 L2 D2 B2 U' F2 D' L2 B2 D2 B' U2 R U' F' L2 B' R2 F D2" }
{ "L2 F L2 F2 U2 F' L2 U2 F R2 B2 D B' D F D R' U' D' L' B2" }
{ "R2 D2 F2 U2 F D2 L2 B' L2 U2 D2 R' U' B2 L U2 F2 D2 F U" }
{ "F U2 R2 U2 B' R2 D2 B R2 B2 L2 R' F2 D' B' L2 U' F B U' F2" }
{ "R2 D2 F' U2 B U2 F' U2 L2 U2 B' D' R' F2 U' L2 U' L D2 B" }
{ "U2 F2 U' B2 U' F2 D' F2 L2 U L2 B' L' B' U' B' D2 R' B' U2 R'" }
{ "L2 D' R2 B2 U' F2 B2 U D2 B2 D2 L U F U F' R2 D L' R'" }
{ "U B2 D' B U' R2 L2 B' L D2 F2 D' R2 F2 L2 D2 F2 D' B2 R2" }
{ "D' L U' F' R F R' F R' B R2 B' R2 U2 B D2 U2 F2 R2 F'" }
{ "F2 L' B2 U2 D2 R U2 D2 L D2 R2 B L' U' B L2 R' F D2 L2 U'" }
{ "B2 R2 U' D2 R2 B2 U L2 F2 R2 D' B' L2 U L2 B R' F D F2 B'" }
{ "L2 F' U2 F' L2 F' R2 F2 R2 U2 R2 D L2 D' R B' R' U F L' R2" }
{ "F2 L2 F2 U2 L2 B2 U R2 D' R2 U L' R' D' B2 R D2 B L' R2 D2" }
{ "F2 D' R2 U' B2 U L2 R2 F2 U' D2 R D' L' R2 B2 U' B L2 B L" }
{ "F2 L2 F2 U2 L B2 L' F2 L2 F2 D2 F' D2 L U F' L2 R2 U2 R" }
{ "L2 R2 U F2 L2 D R2 U' L2 B2 D2 R' U B2 D' R2 F' R2 B' D' B2" }
{ "F2 L2 R2 D' R2 F2 L2 U L2 D2 R2 F' L' U' R2 D F U R2 U2 R2" }
{ "D R2 U' L2 U' F2 U L2 R2 D F' U' D' R2 F L2 R U2 D L' U2" }
{ "F2 L' D U2 R' D' B2 L U F2 L2 B2 D2 R2 U' L2 F2 D L2" }
{ "R2 D' F2 U B2 D2 F2 L2 D' B2 L2 R B2 D B R U2 R' D F' D" }
{ "U2 F2 B D2 B2 D2 R2 U2 F U2 B' L B' U' R2 U2 R2 F D2 R2" }
{ "D2 F U2 L2 F' U2 B L2 U2 B' D2 R' U B' U R F B' U2 R' D2" }
{ "F2 U F2 L2 B2 D' L2 R2 U B2 U2 L U2 F' B R B' L2 U' R B'" }
{ "D' R2 B2 U2 B2 U' F2 D' F2 D L2 R' D R' F2 B D F2 R2 B' D2" }
{ "L U' B' D R' D2 U' R B' R L D2 U2 R' B2 L B2 D2 R'" }
{ "R F' U' L2 F D B U' L D R2 D2 U2 B R2 B2 U2 B' D2 F2 D2" }
{ "L2 F2 D2 F2 U2 F R2 U2 R2 D2 B2 D' F L R U' L' R F D F2" }
{ "D L2 U F2 U B2 U2 D' B2 D' L' U F' D' F' R2 D2 L2 D F R'" }
{ "B2 L R2 B2 R F2 R' F2 R U2 R F' D R B2 L F' B D2 R2 D2" }
{ "U2 B' D2 F2 R2 B U2 B L2 D2 B U L2 D2 L D B' U2 L2 U" }
{ "L2 R2 U2 L2 D' R2 F2 U D2 F2 L2 R F D L2 R F2 L' D L' D2" }
{ "U2 F2 B2 U L2 D2 B2 D R2 F2 L2 F' R F2 U B' L U2 B L' R'" }
{ "B2 U2 D2 L2 F' R2 F D2 F U2 F D' L D' B' D R2 D F2 U2" }
{ "U' F2 R2 D' L2 D R2 U' B2 D2 R' F' B2 L2 F' U F R2 D F' B'" }
{ "R' U2 R' D2 U B R2 L2 D' F2 D2 R D2 B2 F2 R' D2 R' B2" }
{ "U2 F2 D2 B2 R2 U2 L2 D2 F' D2 F' D L' F2 U' B2 L2 R2 F' U2" }
{ "R2 B' L2 F2 R2 F' U2 L2 F' L2 F2 D L' F' L2 D L F' D' R2" }
{ "U F2 R' D' F2 L2 D2 U' F U2 B2 L' B2 U2 L F2 R2 B2 U2 F2" }
{ "D L B' D2 R' B2 U2 L B F2 L F2 L2 F2 U2 F2 L F2 L' B2" }
{ "U D2 R2 U F2 U2 B2 U2 D' R2 D' L' D' L' U2 L2 F' L2 B D L2" }
{ "R D2 F2 R F2 R' D2 R2 B2 D2 B' U B2 L2 D B L R2 U' F'" }
{ "R2 U2 B' U2 L2 B L2 U2 D2 F' B2 D F2 R2 B' U D2 L' F L F'" }
{ "B2 U' L2 U D' L2 F2 L2 D' R2 F2 B D R' B2 U L' B2 U B2 U2" }
{ "F2 D B F D R' L2 U R' F2 D L2 F2 D' F2 D2 L2 D R2 U2" }
{ "R2 U2 L2 B' U2 F R2 U2 F' D2 B D B U2 R D F D2 L2 R" }
{ "U2 L D2 R' D2 L B2 R B2 U2 R' B D' L2 U2 L2 F' D' L' R U2" }
{ "B2 U2 R2 U2 F R2 F L2 U2 R2 F R F2 L' R2 D F' R2 F2 L2 U" }
{ "L2 U2 R2 U F2 B2 U F2 D' R2 F2 L F B2 R' B U R B2 U R'" }
{ "L2 U2 R D2 R' U2 F2 D2 R2 F2 L2 D F' U2 B' U D R' D B'" }
{ "R2 B2 L2 U F2 U' R2 D2 R2 B2 D' F' U R' F D2 L' U B2 R' F" }
{ "L2 B D' U2 F2 D' B2 L U' R2 L2 B2 D2 F' D2 L2 F' D2 F' L2" }
{ "F2 D2 F L2 F L2 B2 R2 F L2 U' B U2 L2 B D' R' U' D" }
{ "L2 F2 D' B2 D2 R2 D' L2 D F2 U' F L2 F' L' R U F2 U2 F2 B" }
{ "F' U' R B2 U F L' F' D R2 B D2 R2 D2 B' U2 F' D2 R2 B2" }
{ "D L2 U' F2 R2 F2 L2 U' L2 D' B2 R' U' B L B2 R F2 R D'" }
{ "R F2 D2 R' U2 B2 R B2 U2 R2 D2 B' L' F2 D2 B L F2 U'" }
{ "U F2 D' U2 B U' R2 B' L' U2 R B2 D2 B2 F2 L' D2 L U2" }
{ "B R2 L B' U B' R2 L' U B2 R2 F2 L2 D2 F2 D2 R' F2 U2 F2" }
{ "D2 R2 U F2 B2 L2 U R2 B2 U' R2 F R D' F' U2 D2 R B' D' R'" }
{ "B U' B2 F' D' F' L U F2 U R2 F2 R2 D2 F U2 B2 D2 F U2 B2" }
{ "D L2 D2 B2 R2 F2 D2 B2 D' B2 U F B' D' L U D' L R2 B R" }
{ "F2 L2 U2 B D2 F' L2 B L2 B' L2 R' F' D2 F B2 R D F2 L" }
{ "F L2 R2 U2 F D2 B' L2 F2 R2 B2 L D2 B2 U B' U L2 F B2" }
{ "U2 F2 L2 U' L2 U F2 U' B2 U' F R D L2 R2 U F' D2 L' F'" }
{ "F' R U' B D F D U2 F' U B2 D L2 D' R2 L2 U' B2 F2 D2" }
{ "D B2 D' L2 B2 D' L2 D2 B2 L2 D2 L' B U F' B D F' U D L'" }
{ "L2 B2 U2 B D2 B2 L2 B' R2 B' D2 R' U2 L2 D2 F2 U2 D' L' D2" }
{ "L2 R2 F U2 D2 B' R2 F' R2 B2 U' R F B L2 U2 L' F L F" }
{ "R2 F2 D L2 R2 U F2 U' R2 U2 D' R B2 U F' R2 F D' F2 R U" }
{ "U' F2 L2 F2 B2 U L2 F2 D B2 U' L R B' D R' D2 R' D B'" }
{ "R' U2 L B L2 U B2 D R' U R2 B' R2 D2 B2 D2 U2 B L2 F'" }
{ "F2 R2 B2 D B2 D' L2 U' L2 U2 L R' U L2 D' B D R2 U B2" }
{ "F' D2 F' D2 R2 F2 R2 B2 R2 D2 F' U B L' D F U B' L' D2 B2" }
{ "R2 F2 R2 B2 R2 U2 L2 U2 B2 D L2 R' D2 R2 B R' F U F U' D'" }
{ "U L2 D B2 D R2 U F2 B2 L2 U2 L' B2 U2 R' U' R' D2 B' U B'" }
{ "U' D2 R2 D2 R2 B2 L2 U R2 U2 L2 F L2 D' L2 B L D2 B2 L2 B" }
{ "B2 D2 F2 D2 R2 U2 R2 F' L2 U2 F2 R' B' U L D' F' D' L2 U B2" }
{ "B D2 L2 D2 B' L2 R2 D2 B2 R2 B' D L F D' B' L2 D' F2 R" }
{ "D L2 R2 D L2 D' B2 U L2 D' L2 F' U' L' D' R2 B' U' R' F2 D'" }
{ "R2 U2 D2 F2 R' D2 L' B2 L' B2 D' L' D' F L R' F L" }
{ "F' L' U2 R B' D F2 U F D R2 B2 D2 B2 L2 F2 D' B2 U B2" }
{ "U2 F2 U' B D' R U B R' F2 U2 R2 U' L2 B2 U' R2 U2 B2 F2" }
{ "D2 F2 U' R2 F2 U F2 U L2 B2 D2 B R F2 R B D R2 D L' B" }
{ "F2 U' F2 U2 B2 D F2 B2 U' F2 D L D' F' R D L2 B' U F' D" }
{ "F U L B D' L U2 F' R' B2 D2 F2 U2 L2 U F2 D' B2 L2 U" }
{ "D2 F2 D2 R2 F' D2 B' L2 F R2 B D' B' U2 R2 U2 F2 L' B L' F'" }
{ "D2 B U2 F D2 B2 L2 B' L2 U2 L2 R U' D2 L' R2 D2 R B2 U" }
{ "L B' L D2 B' R2 U' L U2 B F2 D2 F2 U' F2 L2 D' R2 D F2" }
{ "U2 R2 B2 R2 D R2 U2 B2 R2 B2 D2 R' U2 F2 U' L' F2 R F' U D2" }
{ "F' D R' F2 L' F D' F' D F' D2 L2 D2 F' D2 B U2 L2 D2" }
{ "F2 L2 U' D2 L2 F2 U2 R2 B2 U2 R' D' B' R D2 B' R2 D R' F2" }
{ "F2 R2 B R2 B R2 U2 B2 D2 R2 U2 D' R' B2 U2 R' D2 L R2" }
{ "R2 U' F2 U F2 L2 D' F2 B2 L2 D2 L' D2 R' U L F D F2 D2 R2" }
{ "F2 L2 F2 L' U2 B2 U2 R D2 L' F2 B D F B L' F' D2 L B2 D2" }
{ "B2 L2 D2 R2 U2 B' R2 U2 D2 F L2 U F2 B' D2 R B' L2 R2 U'" }
{ "R' B2 L' B2 L2 U2 R F2 R' F2 R' D R' F U2 B2 U' B U' F' D2" }
{ "R B2 R B2 U2 L D2 R U2 B2 U2 D' B D2 F2 R' D' L2 F" }
{ "B2 D2 F2 L2 D B2 R2 D' B2 D B2 L' B' L2 F U2 F' D2 L2 D'" }
{ "L2 D2 F' U F2 U' R2 L' D' F R2 B D2 B' R2 U2 B' D2 U2" }
{ "D L D R' D B F' R' D' F' D2 F2 L2 F2 R2 U' B2 U' F2 U'" }
{ "U L2 F' R L D' U' F D' R F2 U R2 U2 F2 U' R2 U L2 F2 L2" }
{ "U2 D2 F B L2 B L2 D2 F' U2 B' U B' D' B2 R B2 D2 R D L" }
{ "B' L2 F2 L2 F D2 B' L2 R2 U2 L2 U' D2 F U2 F L2 D R U' B2" }
{ "B U2 R2 B' U2 R2 U2 L2 F D2 F2 L' D2 L' B2 U2 R U' L' F R2" }
{ "U B2 R2 F2 B2 U F2 U2 B2 R2 U F D' R2 F L2 R U R' B" }
{ "R2 B2 D2 R2 D' L2 D2 L2 R2 F2 B2 L U' L R U' B' L2 B' U2 R2" }
{ "R2 U' L2 D B2 R2 F2 U2 R2 D L2 B' R2 U L' F2 D' L2 B' R' B'" }
{ "L2 D R2 D' B2 U L2 D B2 U2 L2 F U' D' R F2 U L F2 B' D" }
{ "B2 R2 U F2 U' D2 R2 F2 U2 D2 B' L F2 D' L B2 U2 B R' B2" }
{ "R' F2 U R2 F L F2 U L B' L' B2 U' L2 B2 U' R2 B2 U L2 U2" }
{ "U2 F2 D' R2 D' F2 D B2 U2 R2 D' L' B2 D R' F L R D2 F2" }
{ "B' L' D' F L2 F R2 B L F L2 U F2 D U2 B2 R2 B2 D R2 D2" }
{ "R2 L D' L D R2 B2 U F2 D B2 U2 F R2 D2 F' D2 L2 B' R2 B2" }
{ "U' R2 D L2 F2 U L2 U2 B2 D' F2 B L2 F' D' R2 D' L' F2 B2 L" }
{ "R2 B2 U' B2 D2 B2 R2 B2 D' B2 D2 R' U D2 B R' B R F R F'" }
{ "F2 B2 D F2 U' B2 D B2 D2 L2 D F D' F2 L U B2 D F B2 U'" }
{ "B' F' L B U2 F2 U2 B R U F2 U' B2 D2 B2 D F2 D2 F2 L2" }
{ "R2 D' L2 D' F2 B2 R2 D F2 R2 F2 R' F2 L' U2 F U2 B' R' B2 D" }
{ "L U2 B2 L2 R B2 D2 R2 B2 U2 L D' L2 F2 L' U2 D2 B' L U'" }
{ "B2 L2 D2 B2 L D2 B2 D2 F2 L F' U B' U L D2 L2 F' U2 D'" }
{ "B D2 L2 B2 L2 D2 R2 B U2 D2 F D' R' U B D B' D' F2 B U" }
{ "B2 U' F' D' L' F' R2 U' F D' U' F2 R2 D' L2 B2 D' F2 D2 B2" }
{ "B2 L2 F2 U D2 B2 U L2 U2 D' F' R' F2 U' D B R' B' L2 F'" }
{ "U2 L2 R U2 L F2 B2 L2 D2 F2 U2 F L' U2 L U F R2 U D2 R2" }
{ "F2 U2 L2 D' B2 L2 B2 L2 D2 L2 U R U F' R2 U' B' R U F'" }
{ "R2 D B2 L2 U' R2 U R2 B2 L2 D' L' F B U2 F R' F U' R' D'" }
{ "D2 F' B2 L2 R2 B' L2 F2 L2 U2 B' R' U2 R D2 F' D' R U D'" }
{ "F D2 B' U2 R2 F D2 L2 B U2 F2 U' F U2 R U D2 F' R' F2" }
{ "L2 D2 F L2 F2 B' U2 B U2 R2 F D B R U2 R' U D' B' U2 D2" }
{ "R' D2 L2 R B2 L F2 U2 F2 U2 B2 U L' B2 U R' F' B2 R' F B'" }
{ "L2 U' R B D U2 B' R2 L' F' D2 U2 L2 F L2 F2 R2 U2 F U2" }
{ "U2 B2 D' L U2 F U2 F' D' R D2 B F D2 B R2 L2 D2 R2 U2 F'" }
{ "U B2 U' F2 U2 F2 D F2 B2 L2 F2 R' F U2 L2 U2 F' B' D' L R'" }
{ "D2 B L' F L D' U B2 R2 L D2 R2 U R2 D' L2 U2 F2 L2 D2 B2" }
{ "U' L2 B2 D F2 L2 D2 B2 U' L2 D2 F' D' F' D L' U2 F' B R' D2" }
{ "U2 F2 L2 B2 D F2 D2 L2 B2 L2 U L' U' L' R2 B U' R2 D R' D'" }
{ "U2 D2 B2 U2 B L2 B' R2 U2 F L2 R B D B U' B2 U' L2 B R" }
{ "F2 R2 D2 L' F2 U2 R' U2 L D2 R' F U D B' U2 D2 R2 B2 D2 F" }
{ "L' D B' R' U' R' F2 L B' U2 F2 R2 D B2 F2 U' L2 D2 F2 L2" }
{ "F' R F' R2 D R2 F2 R2 L F2 D R2 U2 R2 D' B2 D B2 D2" }
{ "U2 F2 L2 B2 U F2 D2 L2 R2 U' B2 R' F U D F R U2 L F' D2" }
{ "F2 R2 U2 L' B2 D2 R' D2 R' F2 R2 F' U2 B' D F' R U2 F2 R' F2" }
{ "L2 F2 U B2 U B2 L2 R2 U2 R F R D L U F2 L2 D L" }
{ "B2 L2 D B2 U F2 D' R2 F2 B2 U' F' L B D F L' D' R F" }
{ "B D2 L2 F D2 R2 F L2 B U2 R2 U B2 R' F2 U D' B' D2 F2" }
{ "R2 B R2 B' U2 F' U2 L2 F' R2 F' R D' R B' U D B2 D L D2" }
{ "D2 F U2 F L2 B' U2 B R2 B2 U2 L' B2 R' U2 B U' R B L' F'" }
{ "D' R2 U2 F2 D R2 F2 U L2 R2 D2 B' L2 D' L2 U' L' D' R F' R'" }
{ "B2 U2 R2 F2 D2 B2 U2 L' B2 L' D2 B D' L2 F L' D2 F L2 F" }
{ "B L B D' U2 R' B' L U' B' D2 R2 B2 R2 U2 B R2 D2 B2 F" }
{ "L2 F' U2 L2 B U2 B' L2 D2 F2 L2 D' F' U2 D' L D2 L' D L'" }
{ "D2 L U2 B2 L2 F2 L U2 D2 B2 R' F' U2 D' L D2 L' U2 F R2" }
{ "B2 L B2 D2 R2 D2 R' U2 L F2 R' F' B' U' F' L' R B2 R U2 D'" }
{ "U' R2 B2 D F2 U2 L2 R2 B2 R' F2 U R F L2 R' B2 L D'" }
{ "U L' B F' D2 R D F L2 D L2 F2 R2 D2 R U2 R' B2 F2 U2 L'" }
{ "F2 R F' L D' F' U F U' F2 U2 R' F2 R D2 R2 L D2 B2 D2" }
{ "D2 L2 F R2 D2 L2 U2 B' R2 F B L' F D L2 B L U D L'" }
{ "D R2 D2 L2 U R2 D F2 L2 D R D F R2 U D' B D2 B2 D'" }
{ "B2 D B F L' F' U' L' F L B2 R' D2 L' U2 L2 B2 L F2 L'" }
{ "D2 B U2 L2 B2 R2 D2 B L2 U2 B2 U B' U' L D' R' B2 U L2 F2" }
{ "F2 R2 F2 D2 R2 U2 B' R2 F' D2 L2 U' R2 B' L' D2 L' D L2 U" }
{ "F' U2 F' D2 R2 F' L2 F2 L2 D2 R2 D' R' F L' B2 U L D' L2 B2" }
{ "R F2 R2 D2 R F2 R' U2 R' F2 B L' R2 B D B' U2 D F2" }
{ "U2 B' L2 U2 D2 B' U2 L2 F2 R U' D2 L R' U B' R2" }
{ "D2 L2 R2 F' R2 B U2 B2 D2 F B R U B2 L2 U' F2 D' R D2" }
{ "R2 F U2 F' D2 B L2 F U2 B2 D L' F' L B2 L D2 B' D F2" }
{ "F2 B2 U' L2 U' F2 U2 B2 R2 B2 L2 B U2 D' F2 U F2 R' B' U' D'" }
{ "B' F' R F' U2 L U L B R' D U B2 F2 U2 R2 U' F2 R2 F2 U'" }
{ "U F2 L2 U' R2 B2 L2 U2 R2 U B2 L' F' B' L U D' F R2 D R2" }
{ "U2 B2 D2 F' D2 F L2 U2 L2 U2 B' R' D R D2 L2 U R F' L2 B'" }
{ "F2 R B2 U2 R' U2 F2 U2 L F2 R2 F' L U2 F2 U' L F2 B2 R U" }
{ "L2 R2 F2 U B2 D' F2 D2 R2 D' F2 B L R2 D' B' L2 U2 L F' R2" }
{ "U2 L2 B L2 F D2 F' U2 D2 F L2 D' L U' F R2 B R2 B D' B'" }
{ "B U2 B2 R2 U2 F B' D2 B2 U2 B2 R' F' L2 U' R' U' B' R2 D2 R" }
{ "D2 B2 R2 D2 B D2 R2 B L2 F2 U2 L' F2 U2 D F' L' D2 B' R B2" }
{ "F' L2 F2 L2 U' B D' R' B' D' U B2 R2 L2 U R2 L2 D B2" }
{ "D' F' R2 L F' R2 L2 D F2 L U' L2 F2 R2 L2 D2 U' B2 R2 U2" }
{ "F2 B2 D' F2 L2 U D B2 L2 U' D2 B' L R' D R F2 B U L' B" }
{ "U' D2 F2 R2 D2 R2 U' L2 D' F2 L' B' D2 R F' L2 B' L' R' U" }
{ "U2 L2 B2 L U2 L R D2 F2 D2 R U L' D L D2 F B' D R2 B" }
{ "U2 D2 L U2 D2 R D2 B2 R2 F2 D2 B' U' L2 U B L2 B L2 D2 R2" }
{ "D2 B D' B2 L' D2 B' D R2 F' D R2 U R2 B2 L2 B2 D' F2 R2 D'" }
{ "F2 L U2 D2 F2 D2 R2 B2 L B2 R2 U' R' U D' B D F L B2" }
{ "L2 B2 R2 U R2 U F2 U' D2 L2 D F D F R B' U2 R' U' F B" }
{ "L2 R2 U2 D' L2 B2 D L2 R2 D2 L2 R' D' R2 D L2 F D' F U' R" }
{ "R2 U' F2 D F2 U2 F2 D' F2 D' L2 R' U L B R U' D F' L'" }
{ "R2 B2 D2 B2 R' U2 L2 D2 L D2 B2 U' L' D B' U' R2 U2 F' R" }
{ "D R2 D2 R2 B2 U R2 B2 D' F2 R2 F R' U' F' D B2 U' L2 B' R'" }
{ "D' F2 U' L2 D L2 R2 F2 U F2 B R' F' D' R' F U L' R2" }
{ "L' U2 B2 F' R' B U L2 U F U2 F' D2 U2 R2 F D2 L2 F R2" }
{ "L2 D' B2 R2 B2 U2 B2 U2 D' R2 U B' L F2 U F' D' R D2 R F" }
{ "D2 B2 D' B2 U' L2 F2 B2 U2 D' L2 R D R2 F2 R' F D' F' B'" }
{ "B2 L2 R B2 R B2 U2 F2 R B2 R' B L2 B2 U2 D' B' L' U' R F" }
{ "R' B2 R' U2 D2 R2 U2 B2 L' F2 L2 D' B R D' R U F U' B2" }
{ "F2 L F R2 F' D' L2 U L' D' U' F2 L2 D L2 D F2 L2 U' R2" }
{ "F' D2 R2 B L2 B L2 R2 U2 D2 B L' F2 B2 U' D' F2 U' R' F2 B2" }
{ "U F2 D2 F2 R2 D F2 U L2 B2 D' B' U2 L F' U' L2 F' U D2 B" }
{ "R2 B R' B U R' D2 L' D' U2 B2 R L2 D2 R2 B2 D2 R' D2" }
{ "U2 F2 B2 D' R2 U' L2 U' D' L2 F2 R' B' D2 L2 D B' L2 U L2 F'" }
{ "B2 U' F2 L2 U' L2 B2 D2 F2 U2 B2 L U2 F' D B2 D' F2 D2 F'" }
{ "F2 U2 L' B2 L D2 L U2 L2 U2 D2 F D' R2 U F' B L F D'" }
{ "D2 R D U R2 L2 B2 F' D' B' L2 B R2 D2 F D2 L2 F2 L2" }
{ "F2 L2 F' R2 F' D2 L2 B' U2 D2 F' U' L' F U2 D' L B' U' F2" }
{ "L2 B' L2 U2 L2 B2 D2 F2 B' L2 F' R' U' R' F' U' R2 B' U B2 R2" }
{ "F2 L2 F U2 D2 F' D2 F L2 R2 B U' B' R B2 U D' L B2 R' D2" }
{ "F L2 B D2 F' B' R2 B' R2 D2 L2 R' F' B2 R2 F L' D' R' B R2" }
{ "B L2 B R2 F2 R2 D2 B L2 F L2 U D' L' D B' U B R'" }
{ "L2 B D2 F' L2 F' D2 B D2 F2 U2 D' B D2 F B' D R' F2 U' D2" }
{ "U F2 D R2 B2 R2 B2 U D L2 R F U' B D' F2 R' B2 U' L2 R2" }
{ "D F2 D' R2 B D U' R' B R2 F2 D' B2 D2 R2 B2 D F2 U'" }
{ "D B2 D F2 R2 D2 L2 U2 B2 D' L2 R' B L' R B2 D R2 F B' L'" }
{ "L2 U' F2 U' R2 B2 L2 F2 U2 R2 U2 R U' R' U B D R' F2 R'" }
{ "U2 L' U' R' U2 L' B L' U' R D R2 B2 U2 R2 F2 U B2" }
{ "R2 D R2 U B2 D2 R2 F2 R2 U' D' B U R U R2 B' R2 D R' U" }
{ "D2 R2 F L2 U2 B' L2 B2 R2 F2 D2 L' F' U R D2 L' D B U' D'" }
{ "L' B2 U' R L' U2 R' U2 F U2 B2 L2 D' R2 U2 R2 F2 U' B2 F2" }
{ "L2 F' R2 B L2 F D2 L2 U2 L2 B' R U2 R2 D R2 D L2 B' R2 B" }
{ "L2 B2 R U2 L' D2 F2 R' D2 R' D2 F R' F D' R F' R2 U' F'" }
{ "L2 D B2 U L2 D2 R2 B2 L2 R2 D B L2 B L R2 F L U' B'" }
{ "R2 B2 U2 L R2 F2 U2 R2 U2 L' F2 B L' B U L U2 D R D2" }
{ "L2 D2 F L2 D2 F' D2 B D2 L2 F D' B L F2 B' U2 R D2 F2 B" }
{ "L U2 B' L2 U2 L U' B' L' D L2 F2 D' F2 R2 U' F2 D F2 R2" }
{ "L U2 D2 L' D2 L' R' U2 B2 R U2 B R2 B U' F L R' U F2 L'" }
{ "B' R' D B' D B' F R' F' U2 L U2 R D2 F2 R' D2 R D2 U2" }
{ "B R2 F' L2 B' D2 B2 R2 D2 F' U2 R U' L2 U2 L' U' F2 U2 L' F'" }
{ "D' L2 D R' F2 R' F L' F' D' R2 U' B2 D L2 D2 L2 F2 D' F2" }
{ "B2 D' R2 F2 D R2 D' B2 D' L2 U2 B R' U R D' L F U' F2 B2" }
{ "D2 B R2 F B2 R2 U2 L2 D2 F' D2 L' D' F2 B' R2 U R' D2" }
{ "B2 R2 U2 R2 U' R2 B2 U F2 R' U' D' F' D' B D F B R2" }
{ "B2 D R2 D' F2 D2 L2 D' L2 R2 D' L' D F' U' D' L2 U2 B' L' D'" }
{ "U2 L2 U2 D2 B U2 B2 L2 F2 L B2 D L' U F B D' F' B'" }
{ "U R2 F2 D F2 U' B2 D' R2 U2 L2 R F' U' B2 D2 F' U' D B2 D2" }
{ "U' D' F2 L2 R2 U' L2 R2 D' F2 B2 R D F R F U2 F2 L U' D'" }
{ "D R2 L' D' B2 R2 U B U' R' F2 L2 U' B2 U L2 U' F2 D L2 D" }
{ "D2 B D' R' B2 F' R2 F' L D2 L2 B L2 U2 B R2 F2 D2 B L2" }
{ "R2 U L2 D B2 R2 D R2 F2 D' F2 L' F2 L F L2 F L2 U2" }
{ "B2 U2 L F2 R F2 L2 B2 L' U2 R2 B' D2 L D' R2 D B' R2" }
{ "D2 B' U2 F D2 R2 D2 F L2 D2 F2 U' B R B2 D B' L U F' D" }
{ "L2 B2 L2 B2 R2 U R2 U' B2 D' F2 L' B2 L2 R' B2 U' D2 L' F D" }
{ "B2 R U2 D2 R F2 R' F2 U2 F2 R' D R2 U2 F' U B' L' U' R2" }
{ "R' D2 B2 R F' U2 B2 D U2 B D2 F2 L' B2 D2 B2 U2 L B2 L' D2" }
{ "B' L' D L' D L B2 D B F2 D R2 F2 R2 D' B2 U2 R2 F2" }
{ "F U L F' L2 U' B2 R2 F' D' B2 D' L2 D' B2 D2 R2 U B2 F2" }
{ "B2 L2 F L2 U2 B D2 B' L2 D2 B2 U' F B R' U' R2 B' L2 U'" }
{ "B U' F R2 B U' B' F D B2 R' D2 R U2 L' D2 F2 U2 F2 R2" }
{ "R2 F' D2 B2 L F' R' F' R B2 L2 B2 U2 L2 F2 D' R2 B2 D2 U" }
{ "F2 U' R2 D2 B2 U B2 D' B2 U D' R' D L' R2 F L' U' R2 F' D2" }
{ "B2 U2 B D2 R2 B L2 B D2 R2 F2 U' L' B2 R D' B' R2" }
{ "B2 R F2 L' D2 R2 D2 R2 F2 R F' R D' R2 U' F L R B R' B'" }
{ "F2 U2 B L2 F B2 D2 F' R2 U2 R2 D' B2 U2 F L B' L' U' L R'" }
{ "D2 U R U2 R2 F' R2 D F2 U2 L2 B2 F' U2 R2 F L2 F D2" }
{ "B2 D2 B2 R2 D2 F' U2 D2 F' U2 F' R B D F U' D B' R' D2 B" }
{ "B2 F2 U' L U' B2 F' D R2 D2 R2 L2 B U2 L2 D2 B2 R2 F" }
{ "B F2 R2 L B2 L F' R' U' R2 L D2 R U2 B2 L' D2 R2 U2 L" }
{ "R B2 U' L B' D' U2 R' U' B2 R2 L D2 R' B2 D2 L B2 R'" }
{ "B2 D2 B R D2 U' B' U R B R2 F R2 F U2 F' D2 B U2 B2" }
{ "R2 B2 D2 L2 D' F2 U' F2 B2 L2 B2 L' F2 D' L2 R2 U2 L' F' U' L'" }
{ "L' B2 D2 B2 L' B2 R' F2 L' D' L' U' B2 L' F R2 B R D2" }
{ "U' D2 L2 D B2 L2 F2 R2 U2 D2 F' R F D L2 F2 R2 F' R D" }
{ "D2 B2 L2 B R2 F' R2 F2 R2 F B' U' B2 L' U B' L D F2 D' B2" }
{ "B' U2 B' L2 D2 L2 R2 D2 B' U2 B U L2 B D2 L' F2 D' L' U2 B" }
{ "D B' D2 B2 L' F2 R2 D F D2 F2 D' L2 D' U2 B2 R2 B2 L2 D'" }
{ "F2 U2 B2 L' F2 U2 R2 U2 R F2 R B' D' L' R2 F2 B D' R U D2" }
{ "D2 B2 R2 F2 B2 D B2 R2 D' F2 L2 B' D2 B L2 R' B2 R B2" }
{ "D2 F L2 F R2 D2 F R2 B2 D2 L2 U L' U R F' R2 D F U" }
{ "U' D' L2 U' R2 D2 F2 L2 B2 R2 D2 F D' L2 D B' U L R2 D' F2" }
{ "R2 U' B U2 L' U' F L' F' D2 F2 R2 L2 D2 U' F2 U' F2 R2 U" }
{ "D2 F2 D' B2 D' L2 F2 D R2 D2 B2 L D R2 F' L' F' U2 B D2" }
{ "F R2 F' U2 L2 R2 B D2 R2 F U' B2 R2 F B U L' U2 R D2" }
{ "R' F2 R D2 F' D R' B2 F R' F2 U' L2 U' B2 R2 L2 U' B2 F2 D'" }
{ "F' U B D' R2 D2 R U2 F' D' R B2 R2 U2 L B2 R' U2 R2 D2 R" }
{ "R2 D F2 L2 D L2 U2 L2 R2 D' L2 R' D' L F' R2 F D' L B' U" }
{ "F D' U' B' R' U' F' R D R L2 B D2 L2 D2 B2 R2 B2 L2 B2 L2" }
{ "U2 D' L2 D F2 D R2 D' R2 U' B2 L' D' L' B2 D2 B L' B R'" }
{ "L' D' B' R' D2 F2 R L' B D2 R2 F2 R2 D2 F2 L2 D' L2 D' F2" }
{ "F2 D' B2 R2 D' L2 U' F2 U2 L2 R D' F2 R2 U B D' B' U'" }
{ "B2 D' B2 U' D' L2 F2 D L2 D B2 R F2 R F' L U F' B2 U2 D'" }
{ "F2 L2 R2 F L2 F' U2 B2 U2 B R2 D' L2 F L B2 U2 R2 B U2 B'" }
{ "U2 D2 R2 B R2 F2 L2 F' U2 D2 F' R' B2 R' D F' B2 U F B2 L" }
{ "R' B D2 F2 U' F2 R B2 L' B2 U2 B2 L2 D' L2 D' R2 U' R2" }
{ "R2 D2 F U2 L2 R2 B2 L2 B U2 F2 L B2 R F' U2 F L' U2 B2" }
{ "R2 F R2 B2 U2 F' U2 B2 L2 R2 U' F' R U D' B2 R D2 R D" }
{ "U2 B2 L' D2 L' D2 B2 R F2 L D2 F' R2 D2 R D' F' D' L2 F2" }
{ "U2 L2 B2 L2 U' F2 U B2 D' B2 D F' D' F D' L2 U2 F' L' U'" }
{ "U F2 U' F2 R2 D' L2 F2 R2 U2 B2 L' U' F2 R2 F' U D L2 B' U'" }
{ "F2 L' F2 L' U2 F2 L' B2 R U2 R' F' R U' L' D B' L2 D F D'" }
{ "L B2 L D B2 L2 B L2 D' F2 U2 F2 U2 R D2 U2 L U2 L F2" }
{ "D' F2 B2 L2 R2 D F2 R2 U' R2 D' R U' B' D' F' U2 F2 U R B'" }
{ "F2 L2 F' R2 F R2 B L2 B2 U2 R2 D B' D2 L R B U B R' F2" }
{ "F' D2 F2 B' R2 F' U2 L2 U2 L2 D2 R' B' R B2 R2 D B' R' U' L'" }
{ "R' F2 B2 R2 D2 L B2 L' B2 R2 D' F2 D' L B L U2 L2" }
{ "F U2 B2 R2 F2 L2 D2 L2 B' U2 B U' R D F' R' F D' L U'" }
{ "F2 U2 F2 R' U2 L2 D2 R B2 D2 B2 D' F2 D L F D2 F2 D2 L'" }
{ "D' F R D2 F' L' F2 D L U R2 U' L2 D L2 B2 U' F2 U' B2" }
{ "L' D2 F2 L2 U2 F2 R D2 F2 L D2 B D R2 U' F2 R2 F' D2 L D2" }
{ "B' R U2 R' L D R' D' R' D2 F L2 F2 R2 D2 R2 B' R2 D2 U2" }
{ "R U F R' D R' F U L F2 U2 R2 F2 L2 D L2 U2 R2 F2 D2" }
{ "B2 U D R2 D' R2 B2 R2 B2 D2 L2 R' D2 F' D' F2 L' F' R2 F" }
{ "L2 D2 R2 U B2 L2 U' B2 L2 U2 R D2 B R2 U' D F2 L D2 F D'" }
{ "R2 F' D2 B R2 B2 R2 D2 B L2 R D' L2 R F L' F L F'" }
{ "R2 F2 U' L2 F2 U B2 D2 B2 U L2 F' U F' D L U B' U' L' F" }
{ "L' B' U2 R B2 D' L' F L2 B' R2 D F2 R2 L2 U2 L2 D' L2 F2 D" }
{ "R2 B2 L2 B L2 F' D2 L2 D2 R2 F U F2 B L U D' F R2 B'" }
{ "L2 B' L2 F2 U2 F U2 F' U2 D2 B' D' L2 D' L U B2 L R' D'" }
{ "F' L2 R2 F' L2 D2 B' L2 U2 F B2 D B L' F2 U' R2 D B2 R' U2" }
{ "L2 F U2 L' U2 L B D' U F U2 F2 R2 B2 F2 U' R2 L2 U2 B2 F2" }
{ "L2 D2 L2 D' F2 L2 U R2 U2 B2 D' R D' R' B L' B L U L D" }
{ "D2 B2 R U2 D2 L R2 D2 B2 R F2 U B' U' L2 D F2 U' R2" }
{ "U' B2 L2 R2 U F2 L2 B2 R2 U' D F R' F' R2 D' R U2 D2" }
{ "L2 U R2 D' R2 F2 U2 L2 D F2 U L U B' D2 B' D R' U2 R2 D'" }
{ "D U' R D' B2 L F2 D' F D2 R2 D2 U' R2 U2 F2 U F2 D'" }
{ "F R2 F' R2 F2 D2 B L2 U2 R2 B U R' F D R2 U' L2 B' U2 D'" }
{ "L2 U2 L2 R2 B' R2 B2 D2 F' B L B' L2 F2 L F2 D' R2 D2" }
{ "R2 F' D2 B' U2 B R2 F2 U2 L2 F' L F B2 L R2 B U2 B2 D F" }
{ "U2 F2 L2 D' F2 U' R2 U' F2 B2 D R U2 B L R2 B' D R2 U' L" }
{ "D' L2 F2 B2 U L2 R2 D' B2 D2 L2 F R B2 U D R' D' L2 D' F" }
{ "R2 U2 D2 L' U2 R' F2 L' D2 B2 R2 D F2 D F' L2 F' R F'" }
{ "U2 D R2 B2 U2 R2 B2 U B2 D' L2 R U' F' L' F' U2 D2 R2 D' L" }
{ "U2 F' R D2 U' F' U' R2 U' B F R2 F' U2 B' R2 B' L2 B' D2" }
{ "U2 F D' B2 L2 B' R L2 D B D2 R2 U2 B D2 U2 B' U2 B2 F'" }
{ "D2 R2 D2 R D2 L' F2 D2 R2 D2 F D2 B2 R F2 D' L2 D' L2 B" }
{ "F2 D2 L' F2 L2 U2 L2 U2 B2 D2 R' U' F2 D2 F U F' D2 F' D2" }
{ "F2 B2 L D2 F2 L B2 R' D2 L F2 D' R' D2 L' U F2 L F D2 L'" }
{ "B' U2 D2 B2 U2 B' R2 F2 B' U2 B' R D' B2 L B D R2 B'" }
{ "L2 D L2 U' B2 U F2 U2 F2 U2 D' L U2 F' L2 D' F' L2 F' D'" }
{ "B L2 U2 L2 F B R2 D2 F' U2 B' D R' D2 B L D' F D2 B'" }
{ "B2 U2 R U2 D2 F2 R D2 L' U2 R2 D L' F B2 U' L2 R' B U D2" }
{ "D2 F2 U' R2 U' R2 B2 U' R2 D2 L' B2 L' F2 D F' U2 R' D R2" }
{ "D' B U F' D' B' D' F L' B2 U2 L2 F L2 B2 D2 L2 D2 B2 U2" }
{ "U2 F2 R2 F2 D2 R2 D2 R2 D B2 D' R' D' L D2 B D B L' R" }
{ "R2 D R2 U B2 D B2 L2 B2 L2 B R' F' U2 F2 B' U2 R' B2 L' D'" }
{ "F' R2 U2 D2 F2 D2 L2 F' L2 R2 B2 D F2 R B2 U' B' D F B'" }
{ "R2 F' R2 B U2 R2 D2 R2 F' U2 B2 U' R' F2 R B2 L2 D' L2" }
{ "F' L2 F B2 L2 B L2 U2 B' U2 L2 U' R2 D2 L' D' R D2 R' U2" }
{ "R D' U2 R F L2 U2 R B2 L2 F' R2 D2 F2 L2 U2 F' R2 F" }
{ "R2 B D2 L2 B' R2 D2 B' D2 F2 L' U2 D' F' D2 L D' B' R' U'" }
{ "F R2 D2 L2 B R2 B2 U2 B U2 B U' L2 B' U2 D L U2 R F2 U" }
{ "F2 L2 U' D B2 D L2 B2 D R2 D' B' L U2 R2 B' L' U2 F' R' U'" }
{ "R F2 L' U2 F2 B2 L' D2 L F2 L F D' L2 B' U' B' L' F2 R2" }
{ "D B2 U' R2 F2 D F2 B2 U F2 R2 F' L F2 D L2 F2 U' R B' L2" }
{ "D B2 L2 U' B2 L2 B2 U F2 B2 D2 L' D' R2 U2 F' B2 U' B R2 F'" }
{ "L F2 R' U' F R' F' U B2 D2 L D2 R L2 F2 U2 F2 R F2" }
{ "R2 F D2 F2 R2 B2 D2 L2 B2 U2 L2 D' R B D' F B2 U L' U2 B2" }
{ "B2 D' R2 B2 U' B2 D B2 D2 L2 D2 L F2 D R' F' L' R2 U' D' R" }
{ "B2 U2 F2 L2 B' D2 B' L2 R2 D2 B' L D F' R2 U2 R' U L2 F U2" }
{ "L2 R2 U R2 U2 L2 U' D' B2 D' R' F' B2 D' L F R U' B' D' R2" }
{ "F2 R' F2 U2 D2 L' F2 D2 L R U2 B D' L B U' D2 F U2 D' F'" }
{ "B2 U2 L' R2 B2 L' U2 F2 D2 L R' F' D R2 D' B2 D' L2 F' B2 U2" }
{ "B' L2 U B2 D' B' U' R U' R2 F' R2 L2 F L2 D2 L2 D2 B2 L2" }
{ "D2 F2 U' F2 R2 F2 B2 R2 U F2 U' B' L U R' D' B2 R' B U F2" }
{ "F2 L2 U F2 D2 B2 L2 R2 D' F2 D2 L' U' B' L2 D2 R2 U R2 B2" }
{ "D2 B D2 L2 D2 L2 F2 B L2 F' B' L' R' B' U2 D B R B2 D' B'" }
{ "D2 U F2 D L2 B2 F' U R F2 L2 D U2 R2 D2 L2 B2 U B2 R2" }
{ "D F2 R2 B2 D2 R2 D R2 D B2 D' R' B' U' B' R2 D L' U' R' U'" }
{ "L2 D' F2 L2 D B2 R2 D' B2 L2 D' L U2 R' D' B2 D' R B' U" }
{ "L2 D2 B' D2 R2 F2 D2 R2 D2 B' L2 U R B' D L' R2 D2 B' L' U2" }
{ "D' F' D2 F R D' L' B2 R' B L2 F2 D2 R2 L2 F D2 B' U2 B'" }
{ "B2 L2 B' U2 F L2 R2 B L2 U2 L' U B2 D' F U D2 L' F' B'" }
{ "L B' L' B L F' R F D2 R' B2 D2 L D2 L' U2 L' B2 D2" }
{ "B' U' L2 F2 D' L' U' B R' D2 L2 U R2 D B2 U' R2 B2 U2 F2" }
{ "L2 D F2 U2 F2 L2 F2 U' L2 R F U2 F U R' U' F2 U" }
{ "L2 B2 D2 B2 U L2 D L2 B2 R2 D2 B' D' B L' D F2 L2 F' L'" }
{ "U' B' F2 D' L2 F D2 U' L U' B2 U L2 U2 R2 U B2 U2 F2 U" }
{ "L2 U2 R2 B U2 B L2 F' L2 U2 F2 L' B' L' F2 U D' B L2 F R" }
{ "R2 U D B2 D F2 R2 D R2 D L2 R' U L U' R F D F R2 U2" }
{ "F2 U2 R F2 R B2 L' U2 L2 B2 R2 F' L' U D R2 B U L2 D' B2" }
{ "B2 L F2 R2 U2 L2 R' D2 F2 B2 D' B D L' D' B L' U R'" }
{ "D2 B' L2 U2 R2 F D2 F2 U2 D2 F U' L' D L' U R' F U' B'" }
{ "R2 F' L2 D2 F2 U2 B R2 U2 F D2 R' F2 U' R2 D' L' U2 R F2 U'" }
{ "B2 R2 D2 F L2 R2 F B2 L2 B' U2 R' B U D' B' R F B2 U' B" }
{ "D' L2 F' R2 B F2 D U2 F' R B2 D2 F2 D2 R2 D L2 U' B2 L2 D2" }
{ "F2 R2 U2 L2 F D2 F' B2 R2 B' L2 R' U D' L' B2 L' B' R' U2 B'" }
{ "D2 R B2 U2 F R' U L' B' D' F2 L B2 R2 L' F2 R2 B2 L' B2 U2" }
{ "U2 F2 R2 D2 L2 U2 B' U2 R2 B' D2 R' D R' B' L' F' L2 D2 F" }
{ "R F' U B' R' L2 F' U B' L2 B2 U2 F2 D2 R2 L' F2 R L B2" }
{ "U2 R' B2 U2 L' D2 B2 R F2 B2 L' B' U2 D2 L' U2 D' L' B" }
{ "D B2 R2 U2 F2 D' F2 D2 F2 R2 D F' L F2 U' F2 U R2 D F2" }
{ "B2 U2 F2 L2 F2 L2 R2 U' R2 D R2 B' L2 U' D R U2 R' F'" }
{ "D B2 F D L2 F D2 L F2 D' U2 F2 D2 L2 U' R2 D2 R2 L2" }
{ "B2 D2 F2 D R2 U F2 B2 U' D' B2 R U D B' U' D2 L D2 B2 U2" }
{ "L2 D R2 D F2 D L2 R2 U B2 D B' U2 D2 R2 F' B2 R' D2 B2" }
{ "U2 F2 R' B' L2 D B' U' F2 L2 D2 L2 U2 B U2 F' D2 B' U2" }
{ "F L2 U2 F D2 L2 B2 D2 F' L2 U2 L' D' B R D2 R' U2 R2 D'" }
{ "R2 F2 L2 R2 U D2 F2 L2 R2 D B' D R B L' U' D B L R2" }
{ "D2 F' D2 F2 L2 B R2 F' L2 R2 D2 L' F2 D2 B2 D L' U2 F' R' D" }
{ "D2 B2 R2 U2 R' B2 U2 B2 L' R2 U2 D L' B D' R D L2 U2" }
{ "U' B2 U' L2 F2 R2 U' L2 U L2 D F D F2 B2 R U' D L2 B2 D" }
{ "F2 D' F2 R2 D2 L2 D' B2 U2 B2 U2 R D' B2 U B U2 L2 F'" }
{ "L2 R2 U2 D2 F2 L2 F' L2 B' R2 F L' B' D2 L2 D' F D L2 F2" }
{ "B' U2 F' R2 F' L2 D2 F' D2 F2 D F R' U' R2 F2 L B U' B" }
{ "F2 D2 L2 D2 B' R2 F' D2 B2 U2 B R B L B2 D2 R' U B U D2" }
{ "U' R2 D' L2 U L2 D' F2 D' F2 R2 B L F U2 R2 D F B2 L' F2" }
{ "B' D B2 L2 D2 B' R' B D' R2 B' R2 F' U2 F D2 B' U2 F" }
{ "D2 L F2 U2 D2 R U2 L2 B2 L2 F2 B' L F2 R2 B2 L' U' F' B" }
{ "D' F2 D2 F2 D L2 R2 B2 U' L2 D2 B' U L2 B U' B' D2 L' U'" }
{ "F' L2 D2 F2 U2 F' D2 F' L2 D2 B2 L F2 B2 U' R' F' L' R' D F" }
{ "U2 D B2 R2 F2 B2 D' B2 R2 B2 D L U B D' F2 L B' D2 B D" }
{ "D B2 D L2 U' L2 D' F2 B2 U2 L2 R' D L2 B U2 L' D' B' D2 B2" }
{ "D2 R2 B2 R2 B R2 D2 B' R2 F' B2 U D2 F' L' R' D' L2 F2 U'" }
{ "R2 D2 F2 R2 B U2 B U2 L2 D2 B2 R' F' B L D L' B2 L2 F' L2" }
{ "D2 B' U2 F' D2 F U2 R2 B' D2 R2 U L2 R2 F R F L2 R D" }
{ "L2 B2 U2 D2 L2 F U2 B U2 L2 R2 D F' L2 D2 F' R U2 F2 L'" }
{ "F2 L2 R2 B R2 F2 L2 U2 F' L2 B' L' U2 F' R D B' U L2 F R" }
{ "F2 U2 F2 D L2 U D L2 B2 L2 D2 F L' R2 D R' D' R' U' B2" }
{ "U2 L' D2 F2 R F2 L2 F2 D2 B2 R' U R2 D F' L2 D2 L' D2 B2 U2" }
{ "F2 R U' F U' L U F' R D2 R2 D' F2 D' L2 U' L2 U R2 U'" }
{ "F D2 B R2 B2 D2 F' L2 F' R2 D2 L U2 F2 R' D F U2 R' D' R2" }
{ "R2 B' D2 F U2 F L2 B2 R2 B2 D2 R' F2 B2 D' R' D' F U2" }
{ "L2 D' L' U L' B2 L' F' R2 D2 U2 F2 L' F2 R' D2 L2 B2 D2" }
{ "L2 R2 U2 L2 B L2 F2 B' L2 B2 L2 D B2 L U F' L2 U R D' R2" }
{ "D R' B R U R' U F2 D' R2 B' L2 B' R2 D2 B' R2 F U2 R2" }
	}
}
if {$moves == 4} {
	set b "cross 4"
	.buttoncross.$b configure -background green
	set scramble {
{ "U2 F2 R2 F' D2 B L2 B2 D2 B' L' U2 F D' F2 R U' B2 D F2" }
{ "L2 D2 R B2 L B2 D2 R' D2 F2 R' F R U R2 D2 R' U D2" }
{ "D2 R2 U2 B2 L2 B2 R2 U' B2 L' R2 F' L' F' D F2 R2 B D'" }
{ "B U2 L' F2 R D' U F U' F2 D2 F2 D2 R F2 L' D2 R D2 R2" }
{ "L2 B2 U2 L2 R2 B2 D F2 D' B2 D2 L F2 R B' R' U2 R' D R2 D'" }
{ "U B2 D' L2 F2 L2 F2 U' D2 L2 F D R' F U D L' F U' D R2" }
{ "F2 D2 R2 B2 U D' B2 U' L2 D' B2 R' U2 F' U R' U2 F' B' R' F2" }
{ "D F2 L2 U2 F2 B2 R2 B2 U2 F2 D2 R' F' R F B L' D2 R D' L2" }
{ "F2 R2 U D L2 B2 D' F2 D' R2 U' R D' R2 U' D2 L2 B R U F2" }
{ "F2 U F2 D' R2 U2 L2 U2 B2 D' L' B U L' D2 R' U L2 B2 U" }
{ "B' D2 R2 B' L2 D2 L2 U2 F D2 F2 D R' D' L' D2 B2 L D2 B" }
{ "L' D2 B L' B U' B2 U2 R' B L2 F L2 B' D2 B F U2 L2 B'" }
{ "R2 F2 R2 U2 D R2 F2 B2 U' D2 R2 F' U2 R B' U' D' F' R2 D" }
{ "U' R B' L' F2 U F D R2 F U2 R F2 U2 B2 R U2 L U2 B2 L2" }
{ "R' F2 R2 D2 L' U2 L' D2 R D2 R' U' L' U' B D2 B2 D' B' D2" }
{ "L' B' D R D' B L2 B' U R2 B2 U L2 D2 R2 D F2 U2 F2" }
{ "R2 U2 B' D2 F U2 F B2 D2 B2 L' B U2 L2 R' U' D' L D2 L2" }
{ "R2 D2 L2 U' B2 L2 U L2 D R2 D F' R U2 L2 U' R2 B' R2 D2 B" }
{ "F2 L D2 R F2 L U2 B2 L2 B2 R2 U' F2 R F B2 U' B' R F2 R2" }
{ "F' R2 U2 R2 F' U2 D2 B R2 F D B U R2 D L D2 F2" }
{ "R U2 D2 B2 D2 L F2 L2 R' F2 U2 D L F D B2 U L B L F" }
{ "R2 B2 R2 F2 D' R2 B2 D' L2 F2 U L B' D L' D2 F R' B U2 L'" }
{ "D2 B2 D' B2 D R2 U D2 B2 D' L U2 L B2 U L2 B D2 F2" }
{ "U2 B' L D B' R2 D2 U' B' D L2 B2 R2 U2 L2 U B2 D' R2 F2" }
{ "R2 B2 U2 F2 R2 B2 R' B2 L B2 R' U R F' L' F2 D F2 L2" }
{ "L2 U R2 B' R' L' D' U2 F2 R D2 R2 U2 L B2 R' F2 U2" }
{ "F' L2 U2 F2 R2 B L2 R2 B U2 F2 R' U' F2 U' D' L' D' L2 B" }
{ "F2 U2 R2 D R2 D2 B2 D2 B2 U L2 B U D' R2 F2 B L' B2 D R'" }
{ "U R' D U' R' L D' F2 L F L2 F' R2 F' D2 R2 B' L2 F' R2" }
{ "F' R2 D2 L2 U2 F D2 F2 U2 F B' U L2 F' L B' D L B R2" }
{ "U2 B R2 F L2 R2 B' D2 B' L2 F R' D' R D L U B' R2 D' R'" }
{ "B D2 F R2 B2 L2 U2 B' U2 L2 R2 U R' D2 B' L U' B U2 F2" }
{ "F2 B2 D2 F2 U' R2 B2 R2 D2 L2 D' B U F L D' L' R2 U2 L'" }
{ "F' U2 D2 B' D2 F R2 F' L2 U F L R' B' R2 D2 L' R' B'" }
{ "D' B2 U' L2 F2 B2 U2 R2 D' F2 U2 L' B' U' B2 R' D2 B2 L' R2 D" }
{ "B2 U2 R2 D2 L2 B' L2 U2 B' L2 B U B' L' U2 F' U2 B U2 D" }
{ "R2 U2 F2 D2 B' R2 F' U2 B R2 B2 L' U F2 L R' D' L D2 R' F'" }
{ "F R' D B L2 U' L2 D' B L F2 D2 R2 U2 R2 U2 B U2 F2 U2 L2" }
{ "D2 U R L' U' L' B2 U2 F R D2 U2 F' D2 U2 R2 U2 L2 F2 L2 B" }
{ "R2 U2 D2 B L2 D2 L2 F' D2 F2 R2 D R F' L2 U2 D R F' L2 R'" }
{ "B2 L F2 R2 L B' R D' R L2 F2 L2 D F2 D L2 U R2 U2 R2" }
{ "U R' U2 F' R F' U2 L' U' B D F2 U R2 F2 D' B2 L2 U F2 R2" }
{ "R2 B2 L2 D F2 U' F2 B2 U' R2 F2 L' U R D' L B R' D F' D2" }
{ "B2 U' B2 R2 D F2 L2 F2 U2 D' F2 R D' R2 U2 B D' L U2 L' R2" }
{ "L2 R2 F2 U' B2 U' R2 D B2 U' F2 L' F' D F2 L2 D2 F L' F2 R" }
{ "L2 F2 R U2 D2 L2 D2 L' D2 B2 L' U D' L' F' L B2 L' U2 D2" }
{ "R B' U2 L' B' F' R2 L U R2 B L2 U2 F' L2 D2 U2 F' R2 B'" }
{ "R2 F' D R U B2 U2 R' U B U2 B2 U2 R2 B U2 L2 U2 B' F2" }
{ "D F2 R2 F2 D2 F2 U' D2 L2 U' B' U' D' R B2 U2 D B L' B" }
{ "L2 R2 D R2 U2 D' R2 F2 U' D2 F2 B D' F2 R B U B2 R B R2" }
{ "F2 U2 F2 U' F2 D' B2 R2 B2 U L2 B U R2 F' L2 R U D L2" }
{ "U2 R2 F2 U2 B2 U2 D2 L F2 B2 R U' F L2 U' L B2 D' F2 U2 R'" }
{ "U2 D' R2 D' B2 D L2 B2 L2 D F2 R D F B R2 U L' D' F' U'" }
{ "D B2 R2 D' F2 L2 U2 B2 D F2 D' B R' D' L R U2 D' L D' F2" }
{ "L2 U2 D' F2 U' B2 L2 D' L2 R2 U L B R' U D' R' F U' R B" }
{ "B2 R2 D' L2 U' L2 D' F2 D F2 U F L F U L U D B R2 D'" }
{ "F2 D' F2 U' D' L2 F2 B2 D B2 D' F R2 B L' B2 R' B' L" }
{ "B2 R2 U D2 R2 F2 U F2 L' B2 D2 B R' D F2 U2 R2 D2" }
{ "B2 D' L' F R2 D U' L U' B2 L2 F R2 B2 U2 R2 L2 F' R2 F2" }
{ "B' R2 B2 D2 B' L2 F R2 B2 L2 B2 U B' D' R D' L2 U R2 F" }
{ "U2 R' B2 R' B2 L2 D2 R' F2 B2 L2 B' D' R' U2 F' U B' L2 B U'" }
{ "D' R2 B2 D2 F2 U B2 D R2 D' F2 L' B' R2 U R2 D F2 B U" }
{ "F' D2 B' U2 B2 D2 R2 B2 D2 B' D2 R U2 F U D B D R U2 L" }
{ "B2 U' F' R' U2 B D' R' D2 U' F R2 U L2 B2 R2 D' B2 D2 F2 D'" }
{ "B2 D R2 D' R2 D2 F2 U2 B2 D R2 B' R2 U' F2 D2 R U2 L2 B' L'" }
{ "U2 B2 U L2 F2 D' F2 L2 D2 L2 D L' U2 B' D' B' U2 D' B2 D'" }
{ "F' L U2 L' F' R L2 B L' D F2 U2 L2 D' F2 U F2 U R2 D'" }
{ "D F U L D B R' F2 D B D F2 U' B2 U' R2 U' B2 U' B2 L2" }
{ "B2 R B2 R B2 R U2 R' U2 R2 D2 B L' F2 B' L2 R' U F2 L2" }
{ "D F2 D2 F' U2 R L2 B2 F R2 F2 L2 U F2 D2 F2 R2 D L2 U'" }
{ "R' B2 R F2 R' D2 L B2 L2 F2 R' U' L2 U' R2 B2 L2 F' U' B" }
{ "R2 D' B U B' U' R' U B' D2 F2 U L2 U' F2 L2 F2 U2 B2 D2" }
{ "L2 B U2 L2 B R2 B L2 R2 D2 B L U D' L F2 D2 L' D2 L R2" }
{ "F2 D2 L' F2 R B2 D2 R B2 R' U2 B R2 U' B L D B' L' U2 D" }
{ "D2 U2 L' D R' F L2 U2 L B2 U' F2 D2 F2 U' L2 F2 U F2" }
{ "B' R2 F L' U L B' D L D' R2 U' F2 U' B2 F2 L2 U B2" }
{ "L2 F2 B2 U2 D' L2 U F2 D2 B2 D' L F' L' U2 F' D B U B2 D'" }
{ "F2 R F2 B2 R2 D2 L U2 F2 R2 F' U' R2 F R2 D' R' F2 R' D2" }
{ "D2 B' R' D2 U' B D2 U2 L F U2 F D2 R2 U2 B' D2 F2 L2 U2" }
{ "F D2 U L U' B U2 F R B' U2 B' U2 B2 U2 F D2 B' L2 U2" }
{ "D F R F2 U2 L U' R' D' B' R2 D2 R2 B L2 D2 F D2 B' R2" }
{ "F' D' B R2 L F R2 L' F L2 F2 L D2 R2 L' F2 D2 U2 L B2" }
{ "B D2 F D2 F' L2 B R2 U2 B' L2 U' B' U B2 U' F2 L R2 F'" }
{ "F2 B2 D L2 B2 U' R2 U' F' D' R U L' D' L2 D' R D" }
{ "D' B F' D L2 B' L2 D B2 R2 F2 L' B2 D2 L2 F2 U2 R2 B2" }
{ "L B2 U' L F' L U' B' R2 L D R2 D2 R2 D B2 D' F2 D'" }
{ "R2 U2 F B2 D2 F2 D2 L2 F B2 L2 U L U' B L' F R B2 L2" }
{ "L' F' R D' F2 U F U' F R D2 R2 B2 L2 B2 U2 L2 D2 B2 R'" }
{ "R2 F2 D F2 D2 F2 D R2 U L2 F2 R' F L U' L B U' L2 F' R" }
{ "D' L2 U D L2 F2 D2 F2 R2 D' F L' F' L' U' R D2 R' B2" }
{ "D2 F D2 R2 U2 L2 D2 B' U2 L2 R D' F2 D F R2 B' R2 B' R" }
{ "L' U2 B2 L F2 U2 F2 R' D2 L' F' D2 L2 F' U' R U2 D' L' R'" }
{ "D2 F2 U2 F' R2 F2 U2 R2 D2 R2 F L D' L' B2 L2 R' U' R' U2 R" }
{ "U2 L D2 L R2 B2 U2 D2 R2 F2 U' R' F L' F2 L B R U B'" }
{ "D2 R2 U2 D2 L D2 L2 B2 D2 B2 R' B' U D' L B' U' F2 R2 D' B2" }
{ "R2 F2 R2 F2 U2 R' F2 D2 R2 D2 L' B' R D' B' R' F' U2 F2 D' B" }
{ "F2 D' B2 D' R2 U2 F2 R2 U' L2 U F' D2 L U2 B2 R' U L2 D' L2" }
{ "R D U2 F2 L2 B U R' U' F' U2 R2 D' L2 U' R2 B2 R2 B2 R2 U'" }
{ "B L' F' L2 U L2 B' R F L' D2 R2 D2 F' R2 L2 D2 B F L2 F2" }
{ "B2 L' U' R2 D2 L2 B' L2 D L D' R2 B2 D2 L2 D2 L2 D B2 D R2" }
{ "B2 D F2 D L2 F2 L2 U R2 B2 D2 B' R F2 B2 D' L2 U2 B' L2 U" }
{ "D2 U2 F' L' F L D U2 L' B2 D2 F U2 F L2 B2 D2 R2" }
{ "D2 L2 B2 L2 B2 R2 D R2 D2 L2 B2 R F2 D F2 B D B' U F L2" }
{ "L2 B2 D R2 D2 B2 R2 D' F2 R2 D2 L' B U B' D L2 U' R' U' B2" }
{ "B' R' U' F D B' L' B' F' R L2 B2 U F2 L2 U R2 D F2 R2 D" }
{ "U2 F' D2 B' D2 B U2 F' L2 B2 L' U B' U F D2 L U2 B' R'" }
{ "B2 D F2 B2 D L2 R2 D B2 U' R2 F L2 D F2 L' B U2 F2 D' R'" }
{ "R2 F2 D2 R2 F2 B' U2 F R2 D2 L2 U' L2 R2 B' L B2 U L2 B U2" }
{ "D2 R2 F2 B' D2 F2 D2 L2 D2 F' L2 R' D2 F L R' B' D B' L'" }
{ "B2 D' L U R' F L' U F' L D2 B' F D2 B R2 B2 D2 U2 B' L2" }
{ "L2 D B' U F2 D R B R2 U F2 D' B2 D2 F2 R2 D2 R2 D'" }
{ "L2 D2 F' L2 F D2 F' D2 F2 R2 B' D' L' D2 L2 D2 B R D R'" }
{ "F2 D B2 R2 U R2 F2 R2 U' R2 U2 L D' F L' R F2 R D' L F'" }
{ "U2 L D2 R2 D2 L F2 L U2 F2 L U' F L2 D2 F2 B' D2 F D'" }
{ "L2 U2 L2 B2 D2 F' D2 R2 B R2 D2 R' F' R' U' D R' D L R2 D'" }
{ "F' L2 B L2 B R2 D2 B2 U2 B D' L D2 F' R' F2 U' L F2" }
{ "U2 R B2 R' D2 F2 L' D2 R B2 L' U' R D' R' F' U2 D' B2 U2 B'" }
{ "D R2 D L2 U' B2 R2 D2 L2 U' B2 R' F2 R2 D F R B R2 F" }
{ "U2 L2 U2 L U2 R2 B2 L B2 D2 L2 F' U F D L2 R' D2 B' U D'" }
{ "D2 F2 D2 L' U2 R B2 L R2 D2 B2 D' L' B' U F2 D R2 F2 R'" }
{ "B2 L2 U2 F2 U2 F2 L2 R' B2 D2 R2 F D' R' D2 F' U2 D2 B' U'" }
{ "D B D2 R2 D' U2 F2 D R' D' F2 L2 F2 U2 R2 D F2 R2 D L2" }
{ "R2 D2 B R2 F' R2 F' L2 F' L2 R2 U' B2 R' U R2 D2 F L' U R2" }
{ "F' D L2 F' U2 B' L' F U L2 U2 R2 B' F2 L2 U2 B L2 D2" }
{ "F2 U R2 F2 U F2 B2 D L2 D B2 R D' B R2 B' R2 D' L U" }
{ "R2 F B2 R2 U2 F2 B' D2 F2 U2 L2 U' F R U L' U B2 D R' B2" }
{ "U2 L2 B L2 R2 U2 F B R2 F' U2 R D B' U2 D2 R' D' B2 D' R'" }
{ "B R F' D L2 B2 D2 L' D' B' F2 D2 B2 F2 D' L2 D2 U' B2 D L2" }
{ "D2 R2 U' R2 U' R2 D2 R2 F2 U2 R' F' B2 R' F2 D F' L R2 D'" }
{ "U2 F2 L F2 R' D2 F2 U' B' D2 L B2 L F2 R' F2 R' U2 R'" }
{ "R2 D F2 D' L2 B2 L2 D2 B2 D' F' R' B U2 F U L2 U2 L' D' F" }
{ "F L2 F D2 L2 F2 U2 R2 B' L2 R2 D F2 L' B L U F2 U2 D2" }
{ "L F2 R' D2 B2 L2 U2 R' U2 R D2 F' L' F2 U2 F B2 U' L U" }
{ "L2 R2 B L2 B U2 B' L2 R2 F' B' D' F2 L' R2 B U' D2 F L" }
{ "L2 B2 U2 L R2 F2 R F2 R' D2 R F R D2 F2 L' B2 U B2 R2 B'" }
{ "F2 U F2 D2 B2 D L2 D' L2 R2 D2 B' L2 D' B2 R' F2 U R2 D" }
{ "U L2 U F2 U L2 D' B2 L2 D2 R' F' U' D' R2 F D L U' F' U" }
{ "L2 B' L2 U' L D2 R' U2 L B L2 U' F2 U2 B2 D' F2 L2 D F2 D" }
{ "F2 R2 B2 R2 U R2 U' F2 D' F2 B2 L B' L' U2 R' U2 D2 R U' R2" }
{ "R2 D2 R2 U' L2 U' B2 L2 U' B' L2 U' F D2 B R F2 D' F2 L" }
{ "F2 L2 U' R2 F2 D' F2 L2 U F2 L2 F U' F' D L F R2 U' L R2" }
{ "D U' F L D' F U2 B' U R L2 D2 L F2 R F2 R2 U2 B2 F2" }
{ "F L2 F2 L2 B2 R2 U2 B U2 B2 D2 R' B R F2 D L' U F2" }
{ "L' D F R2 L2 U' F' R F2 D' U2 F2 L2 U B2 R2 B2 D' L2" }
{ "D2 R2 U L2 D' L2 U B2 U' R2 F2 L' B2 L U2 B L F' B" }
{ "U' D2 L2 F2 D2 B2 R2 B2 U L2 U L F' U' B' R F U' F2 U R" }
{ "F2 D2 L2 B2 R' B2 R' B2 D2 L2 R2 F' D R D L B D2 B'" }
{ "L' D U' F U2 L F2 L U' B R L2 U2 R' F2 R B2 R B2 R' D2" }
{ "U2 L B2 F' D F D U2 B R L2 D2 U2 B2 D F2 R2 U' B2" }
{ "B2 L2 F' U2 L2 B' U2 R2 B' L2 D2 L D' F R2 D' L B2 R F" }
{ "R U2 D2 L' R U2 F2 R' U2 R B2 D' L D2 R B L B R' D' L2" }
{ "D2 F D R2 D2 R U F R B2 L2 D' F2 D2 B2 R2 F2 R2 B2 U'" }
{ "B2 R2 U F2 D2 B2 U F2 D' B2 D L U D2 L2 D L' B' D2 B2 R2" }
{ "U' B2 U' F2 R2 F2 L2 D' F2 R2 D F' U B' R' D' R' U' F2 U' R" }
{ "F2 D2 L2 D B2 U R2 D B2 R2 D2 R' D B' U' R U' F' U R' D" }
{ "D2 R2 U2 L' D2 L B2 D2 L' B2 L' B' D2 R B2 R2 D L F L'" }
{ "B2 R2 B2 U' L2 F2 U B2 U' R2 D' R' D' R' F' D R' F2 L' D' R" }
{ "U2 D L2 F2 D L2 B2 D L2 B2 R2 F L' U F2 R2 U2 R D' R D2" }
{ "F' U2 F U2 L2 U2 F2 U2 R2 D2 R' D L F2 D' L' U D' B2" }
{ "D2 R2 B2 U' B2 U2 F2 U' L2 F2 L' U R2 B L2 U' L' F2 L2" }
{ "R' U2 B2 R B2 D2 B2 U2 L2 U2 L' D' F' U' F L' B2 U R U L'" }
{ "D2 R2 U D2 L2 F2 D' L2 R2 F2 B' L2 D2 B2 D' R' F B L D" }
{ "R2 B2 D2 F2 B2 L' D2 L' R' F2 R' D R U' L2 R' F' R D' R2" }
{ "U2 L2 B' R2 B R2 U2 F2 L2 B2 U' F' D R' F U' B2 D' F'" }
{ "D2 R2 F2 U' F2 B2 R2 B2 U D2 R D' F' D B' U2 F B R B" }
{ "F2 U F2 L2 U2 L2 B2 D' F2 R2 D B' R2 D2 B L' F2 U' L R2" }
{ "D2 R2 B U2 L' D R L' B2 D' F' U2 L2 B U2 F' R2 D2 F L2 F2" }
{ "D2 R2 F' R2 D2 R2 D2 B' L2 B2 R2 D' R D' B R D2 F' B U2 D" }
{ "R2 B2 U D2 R2 D L2 F2 U2 D2 L2 R' B' U2 L' F D' R D' L2 U'" }
{ "U' B2 R2 F2 L2 U R2 D R2 D L2 B' D' B' D' R U L2 B L'" }
{ "L2 R2 U D F2 B2 D R2 D' R2 D B D' L R2 B D' R' D2 R' U2" }
{ "F' L F2 U2 L B' R2 D' L' U' F2 U R2 F2 D F2 R2 L2 U' B2" }
{ "F2 L' D2 R' F L' F R' L2 U2 R' D2 B2 L2 F2 U2 R' B2" }
{ "B' R2 U2 B2 L2 U2 F' B2 R2 B' R2 U' B' L R' B2 R2 B2 D' R2 B'" }
{ "R2 D2 B2 D' B2 D F2 R2 U R2 B2 L U' R' F U F2 D' F' R" }
{ "B' U' B' U' F2 L U' F D2 F D2 R2 F' D2 F2 R2 F' L2" }
{ "F D R2 L2 F2 R2 F2 U' R F' R2 U F2 D' L2 F2 D R2 B2 F2" }
{ "B2 U2 F' L2 U2 L2 B U2 F' D2 B' U D2 L2 R' F2 B2 D' B2 L2 D2" }
{ "F2 D F2 L2 D' L2 D B2 U B2 R2 F R F U' R' F2 B' R2 B'" }
{ "D F2 L2 F2 B2 D L2 U2 D R2 D' B' U L' U B2 R2 F' R" }
{ "D L2 U L2 U' F2 L2 U' R2 F D2 B R' B2 U' F D2 B R2" }
{ "L' U2 R' D B' D2 U B2 R' B2 F2 D' L2 B2 F2 U L2 B2 D2 U'" }
{ "F U2 B U2 L2 F2 L2 B' D2 F2 B' U' L' U' B U F R' U B R" }
{ "B U F' R' D' B F D F D F2 L2 D L2 U' L2 D' L2 B2 R2" }
{ "B2 F R U B D B L' F' U' R2 U2 F' L2 D2 U2 B' R2 U2 B2 U2" }
{ "D B2 L2 U F2 B2 D' F2 B2 D F' R F D2 F R D2 R2 D R2" }
{ "D F' U' R2 B D' B' U R B2 D2 R2 D2 L2 B U2 F2 U2 F L2" }
{ "B2 U B2 U' R2 B2 U' F2 D' L2 F2 L U F' R D2 F2 L' D L D'" }
{ "L2 D2 L2 D2 F' D2 R2 B L2 F L' D2 B2 L U' D' L2 F' L2 D'" }
{ "L2 F' B' U2 B' U2 L2 D2 F D2 F R' U' F B' L2 D2 B U' R' F2" }
{ "U' R2 U B2 U' F2 B2 R2 U' F2 B' L' D' R B' U' L' F' L D2" }
{ "B2 R2 U F2 L2 D R2 D' F2 R2 D' R' U F U' D2 L2 D R' U' D" }
{ "L2 U2 R' B2 L' R2 D2 R' U2 D2 R2 D L' F2 R F R2 B2 U' B R2" }
{ "D R2 D B2 U' L2 D2 B2 D' B2 D' B' L2 D' B' U' R' F2 R2 D'" }
{ "R B2 L D' U' R2 B' L' F D2 B R2 L2 F2 L2 D2 B" }
{ "U' L2 F2 R2 D' F2 B2 D' F2 R2 U R U2 R' B2 U L' B2 R2 B' R2" }
{ "F2 B2 L2 R D2 B2 R B2 R2 F2 R' F' U D2 F' R2 F' D B R D'" }
{ "L2 D' L2 D' R2 D B2 U B2 D2 F2 L B L' R F R B' U' R2 D" }
{ "F' D2 B U2 F L2 R2 U2 F2 R2 B U' F2 L2 U' B2 R F2 B" }
{ "U' F2 U2 D' F2 U2 R2 B2 R2 F2 U' B' U2 F2 R F' L2 R' U' B D" }
{ "B' U2 F L2 F U2 L2 B' U2 F2 R D R F R' B2 L2 F D' F B2" }
{ "D' U' R2 D2 F' L' B' L B U R2 L2 U R2 F2 U' B2 F2 D' F2" }
{ "F2 L2 U2 L U2 F2 L B2 R B2 D' R F' L2 R2 F' L R2 F' R2" }
{ "L2 U2 B' U L2 B2 U F D R D2 R2 L2 F D2 B2 R2 B' L2 F L2" }
{ "R2 D2 B2 L2 D B2 D2 L2 D' R2 D2 L' U B D R D2 L F' D F" }
{ "L2 F U2 F2 R L2 F U R' U B2 U L2 F2 L2 U2 B2 D' L2 D" }
{ "B2 D2 F2 D2 B' L2 D2 R2 B R' U' B2 U B' U2 F2 B2 U" }
{ "L2 D F2 D2 F2 U2 R2 U' R2 D' F2 R' F2 U' R' U B' R' F U" }
{ "L2 R2 B2 L2 U' R2 U' B2 D2 B2 D L B' R2 B' U2 R' F' L' B2" }
{ "L D2 L U2 R F2 B2 D2 L2 D2 B' R' B2 U L U2 R2 F2 D2 B'" }
{ "D2 L2 B2 D' F2 D L2 D2 L2 B2 D2 L' B2 U F D F' R' B' U2 B'" }
{ "U2 B2 R2 U2 R2 B2 D' R2 U R2 D L' U F' B U R2 U2 R' U" }
{ "B' D2 L2 D2 R2 B' L2 B' L2 U' B' D2 B' R F L D2 R' F2" }
{ "B2 L2 U2 L U2 L' F2 L F2 U2 F2 D L2 F' L R D R' U' B2 R'" }
{ "D L' U L' U2 R' U2 L' U' B D L2 U' F2 L2 F2 L2 U2 B2 U F2" }
{ "L U2 L R2 U2 B2 D2 B2 L' U2 R2 B D' R' D B2 D2 L F2 U B" }
{ "F2 D2 F R' D' R2 L' D F2 R' B2 D2 R2 U2 F' R2 B L2 F' L2 F2" }
{ "L2 U F2 R2 F2 R2 U' B2 L2 U' F2 L' B2 R' B D2 R F' R B2" }
{ "B2 U2 B R2 D2 L2 B L2 F L2 B U' R F2 L' B' L U' D' F' D'" }
{ "R2 D B2 U' L2 B2 U2 F2 D' R2 D2 B' R' F2 D' R D F D B" }
{ "L2 D' R2 B2 L2 D F2 U L2 U2 D B D2 B' R D' B L U' B' R" }
{ "L F' U L' B2 D' L U2 B' L' F' L2 B U2 B U2 L2 D2 R2" }
{ "D B2 U' R2 F2 B2 U R2 F2 U2 F2 B' U L2 U D2 B' D' L' B' U" }
{ "D2 B2 U2 L' D2 R' U2 L B2 D2 L D' R2 U2 F2 R' U' F' U' L R" }
{ "F' D' F' R L F2 L' B' F R' B R2 L2 U2 B' D2 B' R2 F' U2" }
{ "L2 U2 B2 D' F U2 L' D F' D2 R D2 B2 L D2 F2 R L2 D2 R2" }
{ "B2 L D2 R' D2 R' B2 L2 R D2 L2 U' F' L' D' F U R F' D" }
{ "D2 B2 R2 F2 R D2 B2 U2 R' D2 R B' D2 R U' F2 R' D F2 L D'" }
{ "D L D B' U' B2 F2 R L2 D R2 B2 R B2 L2 B2 D2 F2 R' U2 L'" }
{ "L2 D R' F' L U' R' D F U R2 D' B2 L2 D' B2 U' B2 R2" }
{ "B U2 L2 B' L2 D2 B2 U2 F' U2 R' F2 R U B' L' R B D' F" }
{ "U' F2 R2 U' L2 D' L2 U' R2 D' L' D B2 U' L' D F D' R U R'" }
{ "B2 D2 L B' L D' L2 F U' R2 L2 U2 F2 R F2 R' B2 U2 R' D2" }
{ "L2 D' F2 U' F2 L2 F2 B2 U2 D' R B' D2 F2 U' F2 D' R B2" }
{ "L2 U B2 D L2 D' L2 R2 D' L2 B D2 F2 R' U L2 B' R F" }
{ "D2 L2 F' D2 L2 B2 L2 B U2 F' B2 R B2 R2 D F' D2 L F2 R'" }
{ "R2 U2 R2 B2 L D2 R' B2 L D2 R' U D2 F' D2 B2 U F' R2 F R" }
{ "R2 U2 B' R2 F' B2 R2 U2 B R2 B' R U' D F2 R2 F' U2 F' U B" }
{ "U2 B' U2 B U2 F D2 F2 R2 F' U2 D' L' B2 U' L2 R2 F2 L R'" }
{ "D2 L2 U2 L' F2 U2 R2 D2 R B2 L' D' B L' F' U' D2 F' U" }
{ "R2 D' B2 R2 B2 D R2 D R2 D2 F2 B' D2 L R2 F2 B' R' F' D2 F'" }
{ "F D U L F U' L2 U' F R2 B2 R2 D2 L2 D' B2 U2 R2 B2 D2" }
{ "U2 F L2 B' U2 F U2 B' R2 D2 B' R' F D' F B2 U' F2 B2 L'" }
{ "B2 L2 B' U2 F B2 D2 B2 L2 D2 B' D B' R' U2 L' B2 L F2 D B" }
{ "B2 L' B2 R2 F2 U2 L2 B2 U2 L R' F' U' B' R2 U' B' D' L F D" }
{ "B2 D2 F2 U2 D' L2 U F2 B2 L2 D' R U D F' U2 R' B2 D B D'" }
{ "B2 L2 R2 B' D2 B2 R2 B' L2 D2 B' D' L' B' R2 U R' F' B2 U F2" }
{ "F R2 F L2 U2 B U2 F L2 D2 R2 D L R' D2 B' L F2 L2 D2" }
{ "B2 U2 B' R2 B2 L2 F L2 R2 D2 L2 D' F' D F' L' U2 R D2 B2 D'" }
{ "R2 U F2 D2 B2 L2 D2 B2 D R2 D L' U R' F' D' F' L D' F' B2" }
{ "L B2 R U2 R2 U2 R' D2 L' D2 R' B' R D' B' D' L2 R' U" }
{ "R' U2 R' U' B' D2 B' U' R U2 B L2 B D2 U2 B' U2 B' F2 D2" }
{ "D' R' B2 U' B U L' B R' U2 B' L2 B L2 U2 R2 L2 B2 F D2" }
{ "L2 U L2 U' F2 R2 B2 U' R2 D2 B' D' L2 D2 F L' U' L U2 R D" }
{ "U2 F2 R2 F2 D F2 R2 B2 D2 L2 B2 R' B U' D F D F D2 B'" }
{ "F U2 F R2 B' U2 B2 D2 B' R2 B U' F' R' U' B2 R2 U' R2 U'" }
{ "B U2 L2 F' U R' D U' L' D2 L2 D2 L2 F2 U B2 D2 L2 D' B2" }
{ "R2 D B2 D' R2 F2 U' R2 D2 B2 D F' U R2 F' R2 F2 L' R' D2 B2" }
{ "U2 B' L2 D2 F2 L2 B L2 F' D2 F' R U F' U D' B R B L" }
{ "R' L B' L2 D L2 D B2 L' D2 F L2 U2 F U2 B2 R2 U2 F2" }
{ "L2 D2 R U2 L' B2 U2 B2 U2 R D2 F' L2 B D F' B2 L D L2" }
{ "R2 U2 F2 D' B2 U' R2 U' D2 F2 R' U2 R2 B D' F L' D' B R'" }
{ "R2 B2 L R2 D2 R' B2 U2 F2 U2 R2 F' L U D2 F' L2 U' R' B2 D2" }
{ "B2 D' L2 F2 U D L2 R2 B2 D R2 B L U L F2 L R U' R" }
{ "B2 R2 F2 B2 R2 U2 D' L2 D2 F2 L2 F U' D2 F' D L' R' U B2 U" }
{ "F D2 B' R B2 D' L F R' U F2 R2 B2 L2 U2 B D2 R2 F U2 F2" }
{ "U2 D2 B2 L U2 D2 L U2 R B2 R' F' R2 B U B D2 L F B'" }
{ "B2 U2 R B2 L R2 B2 U2 B2 D2 R D' F L2 D' L U2 R B2 R" }
{ "D2 R2 U2 D2 B' R2 F D2 B2 L2 F2 R D' B' L B' L2 R U2 F R2" }
{ "B2 U2 L2 R2 D' B2 U' R2 D B2 D2 L' U B' R B D' L2 B2 D L'" }
{ "L2 F' R2 D2 F' U2 D2 R2 F L2 B' U F L U2 D2 L' B2 U D2" }
{ "B2 U2 B' L2 R2 B' U2 R2 B R2 B U' D2 F' D2 L2 F B' R' F B" }
{ "F U' F' D' F' R D' F2 D' U2 R' F2 R L2 U2 B2 F2 R B2 L2" }
{ "F2 L' B2 D2 U' B2 F L F U' L2 B2 U2 L2 D' R2 U' R2 F2" }
{ "U' F D B' D2 L2 D L' B D F2 D' L2 U F2 L2 D R2 F2" }
{ "R F2 U2 L' D2 B2 D2 L R F2 U2 F' U R2 D' R2 U B2 D" }
{ "U F2 B2 L2 R2 D L2 B2 D L2 D' B U' F B D F2 L' R2 D2 R2" }
{ "B2 D2 B U2 L2 U2 L2 F' U2 R2 F' L' B2 D R' F L2 R F L2 D'" }
{ "D L2 U' F2 L2 R2 U' R2 F2 D L2 F' D2 R' F L' B R D' L' B2" }
{ "L2 D R' U L D U B' R2 F' U L2 F2 U2 L2 B2 D' L2 F2 U2 B2" }
{ "F' L2 B' R2 U2 F R2 B' R2 B U B2 R' F L2 D L2 R' B2 U2" }
{ "D' R2 F2 D2 R2 D F2 U' R2 D2 F2 R D' B' R B2 D2 R2 F U R2" }
{ "F R2 B' L2 R2 F R2 B2 L2 D2 B2 D R U' B' U' D2 F2 L' D B2" }
{ "R2 U B2 D' L2 D L2 D' B2 L2 B2 R' U2 R2 F2 B' D' R B R2" }
{ "B D2 B' U2 L2 U2 F' R2 B U2 R2 D' R' F L2 D' L' B L' U'" }
{ "D2 F' U R' F2 U F L U2 B D2 F2 D' R2 D2 F2 R2 D' F2 R2 U'" }
{ "B' D L2 D2 B D' L2 B L U R2 D2 F2 L2 B2 U2 B2 U2 L2" }
{ "B2 U' R2 B2 R2 F2 D F2 B2 L2 F' R' U B2 U' F2 B' D2 B' R2" }
{ "L F2 U2 B2 L D2 F2 B2 R2 U2 R2 B' L2 D' R U D2 R2 U F2 B" }
{ "D2 R2 B2 D B2 U R2 F2 L2 B2 R2 F U2 D F U2 R' F2 D F'" }
{ "R2 D2 L U2 B U B L D B' R B2 L2 D2 U2 R' B2 L' U2 R D2" }
{ "D2 R2 B2 L2 B2 D F2 U' R2 D F' L D2 L2 U2 L F2 L' D" }
{ "R' B2 R B2 U2 L' U2 F2 L' F2 R2 B D2 L F B U' L2 U L'" }
{ "L2 F2 D2 F2 R2 B2 L U2 R U2 F U' L2 R' F U' B' D2 F2 U'" }
{ "R F D F' R L F' L' F R B2 D2 B2 D2 R2 D2 L' B2 R' B2" }
{ "U2 B2 D2 L R' U2 L B2 U2 D2 L2 U' D' B' R F' B L2 D' F2 U2" }
{ "L2 R2 U2 B2 D' R2 U2 B2 L2 U R U2 F B2 L D' R F2 L B" }
{ "L2 R2 U R2 D' R2 B2 D B2 U2 B R D B2 D' L' B D R2" }
{ "D L2 B2 D' F2 D2 L2 U' B2 D' B' L' F' U2 R2 B R2 F D2 R2" }
{ "D2 F2 R2 D2 F D2 R2 B U2 B' U2 D' F' B D' L2 R F2 U B2" }
{ "L U2 L R2 D2 L B2 R' B2 L F2 D F R B' D2 F R2 D' F' L'" }
{ "U' F2 L2 D' L2 F2 D' L2 U D L2 B U2 L2 B R' U L U2 L2 D'" }
{ "U2 F' D2 B2 U2 R2 F B' L2 U2 L' F' U2 B' D' R D' B U B2" }
{ "R2 D2 F2 U2 L' R' D2 L' F2 D2 L D B D' B2 R B' L' B2 U R'" }
{ "U2 B2 R2 U R2 D L2 D F2 D' B' R' B2 L2 F' R' F' L2 U B'" }
{ "F' L2 R2 F R2 B U2 L2 R2 F' B U' L2 D' R2 F' B2 R' U F D'" }
{ "B' D' L' B2 R' D' F' D2 F2 L B' U2 R2 L2 F D2 B' R2 B2 F' D2" }
{ "R2 U' F' U2 R2 L U2 B F2 U' F2 L2 U2 L D2 F2 L2 B2 U2 L U2" }
{ "L2 B L2 B' U2 F U2 D2 R2 D2 F' D' B' R2 B2 L U R2 B' L' U" }
{ "L2 U2 R2 B U2 R2 F2 D2 L2 D2 F D B' L' D' L' D2 L U B" }
{ "R2 D' U' B R D2 U2 R' D B2 F2 D L2 U L2 B2 U R2" }
{ "R B' D2 U2 B' L B' U2 B2 R D2 R' F2 U2 R L2 B2 L2" }
{ "R2 U2 D2 L F2 L' D2 L' F2 R F2 B' L' D' F2 B R' U2 L2 D'" }
{ "U' R2 D' B2 U2 D' F2 D B2 R2 U' L B2 L2 B' R2 D' L U2 F' U2" }
{ "D' B' F2 D2 L' B2 F D R' U B2 U' L2 B2 U' B2 L2 D2 L2 D" }
{ "L2 F U2 L2 F2 L2 B' D2 R2 B L2 D' R U2 R' D L2 D F2 L B" }
{ "L2 R2 B2 U' F2 R2 U2 D L2 U' L2 R' F L' F B' U' F' L2 D F'" }
{ "B2 L2 B R2 F D2 F' R2 F D2 B' U' F L D' F2 D' R' U' D R2" }
{ "F2 U' L2 D' F2 L2 B2 L2 D L2 D F U L U2 D R' U' B' L2 B2" }
{ "R2 D F2 L2 D R2 D B2 U R2 D' F B2 R B R2 U' F D F2 L'" }
{ "D' B2 L2 U2 B2 D' R2 B2 R2 B2 U B R' F2 D L' D2 R' F R' D'" }
{ "L2 U B2 U L2 U R2 B2 U2 B2 D' L' U2 R' D' L2 U L2 B'" }
{ "F' U L2 U' B R' D2 B' F' U' L2 U2 L' U2 L F2 D2 F2 L' B2 F2" }
{ "L2 F2 R2 D2 R2 D2 F' U2 F' R2 B2 R F D2 B' U2 R B D' R B" }
{ "D' F2 L2 D F2 D2 L2 U' L2 D B2 L' R2 U D2 F B2 R2 F' B2" }
{ "L2 R2 U' F2 D L2 D2 R2 F2 U' F2 R' F L D L D2 L2 B R U" }
{ "U R F' R L2 U' F2 D L' D' R2 F R2 B D2 F R2 B2 R2 U2 L2" }
{ "U' F2 U2 R2 B2 D' F2 U L2 F2 U2 F' R U' F' D2 F2 U2 D R' U2" }
{ "D L2 D2 F2 D L2 R2 U B2 D' R' D F2 U' B D' L' F U2" }
{ "L2 B R2 L D' L D' R' B F' D R2 L2 D F2 D' U R2 U F2 R2" }
{ "D2 L2 U F2 L2 D F2 L2 D L2 B2 R' D' R2 B2 L2 R2 B' U' F2 B" }
{ "L2 D2 L2 D F2 B2 L2 F2 U R2 U2 R U L F' B U' L2 F2 U L'" }
{ "U' F2 R2 D L2 U2 L2 R2 U' R2 F' U R2 F U R' U F L2" }
{ "U2 L2 B' R2 B' L2 U2 F2 B2 R2 B2 D R B' D2 F U2 B' L F2" }
{ "F2 D R2 B2 U2 R2 D' F2 L2 B2 L2 R' D R' D' R' B U' R' B2" }
{ "D2 F R2 F B2 U2 R2 F' D2 L2 F2 R' D' L' D' R' B R2 F L' D2" }
{ "F' U2 L2 B D2 R F U' F R B2 R' U2 L D2 U2 R D2" }
{ "D2 L2 R2 B R2 F R2 F2 U2 B' L2 R U2 B D R' B D R U R'" }
{ "B2 F L B2 D2 L2 F2 D F' U2 R' U2 R2 L F2 L U2 B2 D2 B2" }
{ "D F' U L' D2 L2 B' D' B F R2 U R2 F2 D B2 U' R2 D2 R2" }
{ "F2 D R2 F2 L2 D' B2 D' L2 B2 D F' R B' R U' B D L2 R' D" }
{ "F2 D2 B2 L2 B2 L2 U R2 B2 L' B' L' F2 R2 U' L' F' U2 D" }
{ "D' L2 U' B2 D2 R2 F2 B2 R2 D' R' U L2 D' R2 U' F' L2 U' R2" }
{ "L' B2 D2 R D2 F2 L D2 L2 F2 U2 B D B' R F2 R2 U2 F' R'" }
{ "F2 U2 B2 D2 R' F2 L' U2 F2 U2 F L D2 B2 D B' U2 B2 D" }
{ "B2 U L' U2 L U' F' U' B2 D R2 L2 D2 F2 R2 B D2 R2 L2 B2 R2" }
{ "B' U' L2 F2 L' D' B R' U' R B2 L F2 D2 F2 R' L' B2 R'" }
{ "D2 B' D2 L2 U2 D2 B U2 R2 F2 B' R' B' U' B L2 F' R' F R2" }
{ "U' L2 D' B2 U' L2 U2 R2 D' R2 D2 F' D' R2 B L R' F B2 L' B2" }
{ "F R2 U2 B' D2 F B2 L2 U2 B D2 R D' L R' B' D B2 D R2" }
{ "F2 D F D2 L' F' R D' R' B R D2 R' F2 R D2 B2 F2 L U2 L'" }
{ "L2 D' R2 B2 U' B2 R2 B2 D' F2 D' R F' D2 L F' L' R D' B D'" }
{ "D2 F2 B2 D2 L B2 R2 B2 D2 B2 L' U R2 B D F R U2 B' U' R2" }
{ "U' R2 F2 L2 U' B2 D2 R2 D F2 D L R2 D' B' D2 R B2 U D' B2" }
{ "B2 L2 D' R2 U' F2 U' F2 L2 U' F R2 U F2 R' F' U2 B' D' B2" }
{ "D2 B2 L D2 F2 L' D2 B2 D2 L R' U L F2 B' D' F2 L' F L' B'" }
{ "B L2 B2 L2 D2 F L2 R2 F2 D2 B U B2 D2 L R' U B2 R' D B" }
{ "D2 R2 D2 F' L2 U2 F U2 D2 F B L U2 R' B2 D' R2 B' D B" }
{ "D' L B U2 L2 F' R' B2 L' D U' B2 U R2 U' L2 B2 D L2 D2" }
{ "L' R2 D2 F2 L F2 U2 F2 U2 F' D L R2 F U2 L2 D' F' R2" }
{ "B2 U2 B2 U F2 D B2 U' B2 R2 D2 F U F L' D' F2 L2 B' U' F" }
{ "U R2 D L2 B2 D' B2 U2 R2 F2 L2 B' D2 L2 R F' R D' L R2 F'" }
{ "D2 U' L U' R2 F L2 U' R D2 L2 B' R2 D2 B' R2 F L2 F U2" }
{ "B R2 D2 B2 R2 U2 R2 D2 B' R2 B L F' D' B R2 B R2 U2 L D2" }
{ "F2 D F2 B2 L2 D' L2 B2 U' L2 U B' L' U' L2 R2 U2 F B R2 D2" }
{ "U2 F D2 B2 R2 B L2 D2 B R2 B U' B2 L D2 B D' R' U2 D B" }
{ "R F U L B' D L' U2 B R' F2 L2 D' L2 U' R2 L2 U' B2 L2 U'" }
{ "B' D B' R' U R B2 F R' U L D2 L F2 R' D2 R2 B2 D2 B2 U2" }
{ "U L' F2 D' L' B L' D F' R2 B2 U' F2 R2 B2 U2 F2 D U' F2" }
{ "R2 D' B2 R2 D2 F2 B2 U' B2 L2 R2 B U R2 F U F2 L U D2 F2" }
{ "F2 R2 B2 D2 R2 D' L2 U F2 L2 U2 L' D' F' R' B2 U' F R B2 U2" }
{ "R2 F L2 U2 L2 D2 R2 F2 B' L2 F U L' B R' D L2 D2 R' F' D2" }
{ "F2 L2 D' F2 R2 F2 D2 L2 D R2 F2 B' L' F' U' L2 F2 U F2 L' U'" }
{ "F2 D2 F2 D' F2 R2 D' R2 D2 L2 B2 L' U2 B2 U B' D2 F U' B'" }
{ "F2 U2 R2 B2 U2 L' F2 R2 D2 F' L' B D L' F' D2 F' B'" }
{ "B' R2 L U R2 D L2 F' U' B2 D2 R2 U2 F2 R2 U2 L F2 L D2" }
{ "R' U' F R2 B D B2 U2 F L2 D2 L' B2 D2 B2 U2 B2 R' U2 R" }
{ "B2 U2 F2 B2 R2 D' F2 L2 B2 R2 D' L' D2 F U' L2 B2 R2 B L2 D2" }
{ "F2 U2 F' D2 L' F2 D U2 F' U2 R F2 D2 L B2 D2 R' B2 R F2" }
{ "U2 F U2 F2 L2 B L2 R2 B D2 B' U F' D B' R' U' F2 D' B2 R" }
{ "B' L2 R2 B2 L2 F R2 U2 F' R2 B R B D' R B' D F U L' R'" }
{ "U' R D' R' B' L B L' B F2 D2 F2 D U2 B2 D' L2 B2 R2" }
{ "B2 D2 R2 D' R2 D' R2 U2 B2 L2 D2 F U' L2 R F' D R2 B D' L2" }
{ "F U2 R2 F L2 F2 R2 U2 B L2 F' L D2 F' U' D R' B D2 F U" }
{ "U B2 R2 U F2 D L2 R2 B2 R2 D' R' F L B' R2 D2 B D' L R'" }
{ "F2 U' D2 F2 D' F2 R2 F2 D' B2 U F R' U' F B' R' F R2 U B'" }
{ "B R2 U2 D2 F' R2 B U2 F' R2 F2 R' U D L U F2 U' L F' B2" }
{ "U L2 B2 D F2 D F2 D' B2 U2 B' R F2 U B' D2 B2 D' R" }
{ "L2 U2 L' U2 F2 L2 F2 R2 B2 U2 B' R U2 R D B' U' D' R B" }
{ "L' D2 L2 U2 D2 L U2 D2 F2 R' D' R' U' L2 U F L U2 F2 U'" }
{ "U2 D2 R2 D2 B2 L D2 R B2 R F2 U R B' U L F' U2 R2 D' B" }
{ "B D R2 F2 D2 U2 B' L' U F2 D2 L2 B2 R L2 U2 B2 L' B2" }
{ "D' F R' B' R2 F R' B2 U' L2 F' L2 B2 F' U2 B R2 L2 F' U2" }
{ "R2 F L2 D2 F' D2 F' U2 R2 F L2 U' R2 F' D' L U2 L R D B" }
{ "U2 B' R2 B' L2 F2 U2 F L2 R2 B2 U' L' F U B' U' F D B" }
{ "L2 F U2 L2 R2 F R2 D2 F D2 F2 D' L D F' R' B2 L2 D2 R'" }
{ "F R F2 D' R F D2 F U' R2 F' U2 B D2 F L2 F' R2 F2 L2" }
{ "D F2 D2 F2 R2 D F2 R2 D' R2 D B' D L' D2 B2 L B2 U2 F2 R" }
{ "F2 L2 B' L2 U2 B' R2 F2 U2 B' U2 D' B' U2 F2 U F2 R F2 D2" }
{ "R F' L D B L' F' U F2 D' L' B2 D2 F2 U2 R2 D2 L' D2 L2 F2" }
{ "B2 F' D' R U F2 D' L D2 U2 B' L2 F2 U2 B U2 R2 D2" }
{ "F2 D2 F L' B' L F L D R' U2 R' F2 L U2 B2 D2 B2 L2" }
{ "F2 U2 R B2 L' F2 L' B2 U2 R B2 U' L2 R' F2 L D' B' D R2" }
{ "R' D R2 U2 R2 D R' U2 L B2 D2 R' D2 F2 L U2 R'" }
{ "L' B U' B R' D' L' F2 U' R F' U2 F' R2 U2 B F D2 U2 R2 F'" }
{ "B2 U B D B' D2 U' B R' B2 F2 R D2 F2 R2 F2 L U2 F2" }
{ "L2 F2 U' L2 D' F2 U R2 D' F2 D2 L' F U B2 L' U' L D2 F2" }
{ "D2 B2 L2 U' F2 U' L2 R2 U' F2 B2 R' F' R' U' L2 F2 U2 F U D'" }
{ "B R D' B' F2 D B2 L' D U L U2 L2 F2 U2 L' D2 F2 L U2 L'" }
{ "D' F2 D L2 U' R2 F2 U B2 R2 B D B' L2 B D R U2 R F2" }
{ "U' L2 U B2 L2 R2 U L2 R2 F2 U2 B U2 L' D' R' F B2 U' B2" }
{ "U2 L2 U2 F B' L2 B2 R2 D2 F L U2 D' B' L' R U' D L2 R" }
{ "U2 B' D' L' B2 D L D' U R2 B F R2 B' U2 F L2 U2 R2 U2" }
{ "D F2 U' R2 F2 D' R2 F2 U B2 D R B' U2 F2 U2 L' U' B2 R' D2" }
{ "R2 F2 D' F2 R D2 B' D' B F2 R B2 R' L2 B2 U2 R2 U2 R' F2" }
{ "F' U2 F R2 D2 R2 B R2 U2 L' U' R2 B2 R B U' B D' F2" }
{ "F' D2 U2 L D2 U L2 F R D' F2 L2 D B2 R2 D R2 L2 U F2" }
{ "U2 B R2 F' R2 U2 B R2 F U2 R2 U' L2 F' L R' D' L U2 B2" }
{ "F2 U2 B2 R2 D2 B L2 R2 B' U2 D2 L D B2 L2 U2 L2 B U' B' U2" }
{ "F2 U' R2 B2 U F2 U F2 U2 F2 D F' U' L2 B' R2 U' B' L' U' D2" }
{ "F2 U' B2 L2 U F2 R2 F2 R2 U D B' D2 L B D' B R' D B' U" }
{ "U F2 B2 L2 R2 D2 R2 U' L2 R2 F2 R' D' B' L F2 R U' R' U'" }
{ "B2 D B2 R2 U' D2 R2 U F2 D L' B L D R2 F' U' D L2 U'" }
{ "U2 B U R D' U' L B' F2 L F' U2 B' R2 U2 R2 L2 F2 D2 F D2" }
{ "U2 L2 F2 R2 F' U2 B D2 B' L2 D2 L D' R' U2 L U R' B R" }
{ "B2 U' B2 U' L2 U' D2 L2 D B2 R2 B' L' U2 D B' D2 R2 D F D" }
{ "F2 L2 B2 U' D2 R2 B2 U' F2 U2 L' D' B L' B' U D' B' L' D2" }
{ "F2 D2 F D2 L2 F' D2 B2 D2 R2 B2 U L R' U2 R D' L2 U2 F2" }
{ "R2 F2 U F2 U R2 U2 L2 U' B2 U B' U F' B L B L2 R2 B'" }
{ "B2 L2 R2 D B2 D' L2 D2 B2 L2 F2 R D R2 F' B' U F R2 U D'" }
{ "D B2 U R2 U F2 R2 F2 U2 F2 D2 L U F' R2 B L B U B2 U" }
{ "U2 F2 D2 F2 B D2 B U2 D2 F L U' B2 L2 D R' U F2 U L" }
{ "L2 F2 U' R2 U L2 B2 U' R2 D2 R U' F2 B' D2 F' U D2 L R2" }
{ "U2 L2 F L2 B R2 F' L2 U2 B' L2 R' D B' D' F U2 B' L B2" }
{ "R2 F R2 F2 D2 R2 B' L2 R2 B' R2 U R' D2 R' F' D' R' F B'" }
{ "U2 L2 R2 F' U2 D2 F' R2 B R2 F' U R B2 U' B' L' D' R' B2" }
{ "U' F' L D' R' L2 B R' U B R2 U2 F2 U2 L2 F R2 U2 R2 F2" }
{ "L2 F2 L B' L D' B U B2 U2 R' D2 R' D2 R2 D2 R U2 L'" }
{ "L B' F' U' R2 L2 F2 D R D' F2 D R2 D F2 U' B2 L2 U' L2" }
{ "B2 D' B2 U L2 F2 R2 F2 U' R2 U F' U D L B U2 R2 F2 R2 B" }
{ "B2 F U B2 F2 R L2 D' B2 R F2 U2 R B2 U2 B2 D2 L" }
{ "U' B2 U R2 F2 L2 U2 D' B2 D' L' U2 R B' R U' D2 B' D'" }
{ "D' F2 R2 D' F2 D B2 L2 D2 L2 D2 R U2 F' B2 U' L2 D' R2 U2 L'" }
{ "D' B F2 L' B L F U' F D' R2 D B2 U' R2 U' B2 D' R2 U2" }
{ "D F2 L2 R2 U' D2 B2 U R2 U2 B' R' U F' L' U' L' D' L U' R'" }
{ "U' B L' D R2 D U' R' B D2 R2 D' U2 B2 D' B2 R2 U F2 D'" }
{ "U2 F2 R2 U2 F2 L2 U L2 U' F2 U B U' L2 D' B' U F' R' D' F" }
{ "B2 D2 R2 U2 L' B2 L' B2 D2 F2 U B2 D B2 R' B' D B' R" }
{ "B2 L2 D' R2 U' F2 U' R2 D' F2 U L' B L' R2 F' L2 F U B'" }
{ "L2 U B2 R2 F2 L2 U2 R2 U' F2 D B' U2 L' F' D F U' B R B" }
{ "U2 F U2 L2 F2 B' U2 D2 L2 F' R2 U R' B2 D2 B' U' L2 B2 D2 R2" }
{ "B' R2 F U2 F' R2 B L2 F' L2 B2 R F U' F B2 L' F R2 U' D2" }
{ "F2 B2 R F2 L U2 L' D2 R D2 B' L2 R' U2 F L R' D' L2" }
{ "F2 D' F2 U2 L2 F2 L2 F2 D2 B2 D R' F' L F2 L' D2 B' U' F U2" }
{ "L2 U2 D' R2 B2 R2 D' L2 D' B2 U2 L' U2 D L U F' B D' F2 R" }
{ "D2 B2 D2 L B2 R F2 D2 L R2 B D' L B' R' U F' D B' U2 L'" }
{ "B U R D R' B L D U' B2 L2 D2 F D2 F' L2 F' R2 U2 R2" }
{ "B2 R2 U' F2 U R2 D2 B2 D F2 B2 R B L' F2 D' F2 L F2 U B" }
{ "D2 L2 F2 U D2 B2 U L2 U F2 B R D F R' B2 R' U2 D2 B'" }
{ "R2 F2 U2 L2 F2 D2 R2 U' B2 U2 L2 B' R' B2 U2 D L B2 U2 D B2" }
{ "U L2 F2 U2 R2 U B2 L2 B2 D2 F2 L F B' L B' U' R' D' F R2" }
{ "R2 D2 F2 U2 R B2 L2 B2 D2 B2 U F' R D' L' R' D' F U2 B'" }
{ "D U' R D2 F' D' F2 U2 F D F2 R2 D2 U L2 B2 D' L2 B2 R2" }
{ "U' R2 U L2 U2 F2 U' L2 B2 U' L D' R2 B R2 U F' B' D B' D" }
{ "R U2 B' R F' D U2 F L' F' L2 F L2 B2 L2 U2 B D2 L2 D2" }
{ "R2 D2 F L2 B' R2 D2 B D2 F2 D F B2 U2 F2 L U' F2 D F'" }
{ "F' R2 F2 R2 F2 R2 U2 F U2 B D2 R' D2 R U' B2 U2 R' B2 L B2" }
{ "L U2 B R' L U F L F' R D R2 U B2 D2 R2 U' F2 U2 B2 L2" }
{ "R2 U L2 R2 D' B2 U L2 U' F2 D2 F' R2 U' R B' U' B2 L' R U" }
{ "F2 R B2 L R' F2 B2 L F2 R' F D2 L2 R2 D' F R U' R D'" }
{ "R' B2 D2 B2 R' F2 R' U2 R2 F2 L F' U L' B' D L F L2 D L2" }
{ "F' D2 F D2 B R2 D' R U R2 B' R2 F2 R2 L2 U2 B R2 B2 R2" }
{ "B2 L' R2 U2 R' F2 D2 F2 D2 F2 B2 U' R' B2 L' F B L2 U' D'" }
{ "F2 U F2 U' R2 D' L2 U2 R2 F2 U2 R B R' B2 L' B2 U2 L2 U' F2" }
{ "L2 R2 U D B2 U' L2 R2 B2 R2 U2 R B L' B' D' L' D' R F B" }
{ "U2 D2 R2 F L2 B' L2 B' D2 B' L2 R' F L2 U' R2 D2 B' R U' B" }
{ "U F2 L2 D R2 U' B2 U L2 R2 D R' D B2 L2 U' R B' L' B L" }
{ "U2 F U2 F R2 B U2 F L2 F' B D' R2 B' R F2 D' B L2 U2" }
{ "L2 D2 L' B2 R2 B2 U2 D2 R U2 R2 U' F' L2 U2 D' F R F2 R2 D'" }
{ "R2 U' L2 R2 U2 L2 R2 B2 D' L2 D2 B' D' F' U' L' U' L2 R2 B2 D" }
{ "F' D2 R2 F' R2 D2 L2 U2 B U2 B' U' R' D2 R' D' F' R2 D F2 L'" }
{ "B F' R2 U F D L' D' L' U' R2 F2 D' F2 D' R2 B2 U F2 U2" }
{ "R U2 B2 L2 D2 L' F2 R' U2 R F' U2 F2 U' F2 D2 R2 B R2" }
{ "F2 R2 B2 U' R2 F2 U D' R2 U2 D' L' F R' B2 L R' D L F2" }
{ "F2 U2 B D2 B R2 B D2 F2 L2 R' U2 R' U D2 R U2 B' L F2" }
{ "B D2 B' R2 U2 B2 L2 D2 B R2 B R D B2 L U' D F B' U' L'" }
{ "U L D' B D' B' D2 R2 B U2 B2 U' B2 R2 B2 D' B2 U' R2 D" }
{ "U' B2 R2 D L2 B2 D' F2 U' F2 R' F D2 R2 U2 F2 U' F' L'" }
{ "F2 B2 L2 U2 D2 L U2 F2 R B2 L' B' D' R' D L R' F L' B2" }
{ "D F2 U' R2 B2 D' F2 U' D2 R2 D' F L' D B' L2 F D2 F D F'" }
{ "D' B2 D2 B' D2 F' U' F' R D' L2 D U R2 B2 R2 U' R2 F2 U2" }
{ "B2 U' L2 R2 B2 R2 U R2 U' B2 L2 B U2 D B2 L2 F D2 B R' D'" }
{ "R2 F2 R' B2 D2 L R2 U2 L' U' B' D2 B' L D F2 L2 U" }
{ "U' F2 R2 F2 D B2 D B2 D R2 D R F' U B D2 R F R' U2 D2" }
{ "U2 R2 D2 F2 L2 D2 B2 R B2 D2 R' U' R2 B' D2 F2 U' F2 R2 B'" }
{ "D2 B' R L' U' F2 U' L2 F' L' B2 D2 B2 R' F2 L' U2 R F2 L2" }
{ "U2 R2 D2 F2 B' U2 B D2 R2 D2 R2 D' L' U2 B' R D B' L' F2 R'" }
{ "D2 F2 L B' D2 R L2 F U' B2 R' B2 R U2 F2 R2 B2 R2 L" }
{ "F2 U' B2 U' L2 D R2 U F2 D2 R2 B' D L' F' L F R D' L2 D2" }
{ "L2 D F2 U R2 F2 R2 U' L2 D2 F2 L R F L2 R U' R2 F D2 F" }
{ "R2 D2 R' U2 F2 D2 R2 F2 L F L2 U' F2 U2 L D' R2 B'" }
{ "D' L2 U2 L2 B2 L2 R2 U' R2 D R2 B' R U2 R' F U' D2 R' U D2" }
{ "B D2 L2 F L2 B' R2 U2 D2 B' R2 U' F' B' L D F' D R F" }
{ "B U2 F D2 F' U2 D2 B' R2 F D2 R' F' R' F' D' F' B L2 U2 L" }
{ "L2 B2 L2 F' U' R2 F D' L B2 D2 L D2 R' B2 F2 R U2 L" }
{ "L2 U L2 D' R2 U' D2 B2 L2 R2 D' F U F' L U B D2 R2 D' R" }
{ "D2 L2 B2 U2 F2 R U2 F2 L2 B2 D2 F' U D2 R D' B' R F2 R' F2" }
{ "U2 B D B' D' F' L U2 R' B U B2 D B2 D' F2 R2 B2 U L2 U'" }
{ "R2 D2 L' U2 L' F2 R' F2 D2 L F L' U R2 B' L2 F L' D' B U'" }
{ "B2 U' R2 U' R2 F2 D' B2 D R2 D' R F2 U B2 L' F B' R' F' B" }
{ "F2 B2 L' F2 L U2 D2 F2 U2 L2 R' B' D' B D' L2 B' L2 D L F'" }
{ "L2 U' F2 U F2 L2 B2 R2 B2 R2 U B' D R' U2 D2 B2 D2 L R'" }
{ "B' F' R L2 U B2 D2 B R B2 L' B2 R L2 D2 F2 D2 R' U2" }
{ "L' B2 R U' R' U2 B2 R' F U2 R' B2 R' L' D2 B2 D2 L'" }
{ "F' U2 F U2 F2 U2 R2 B' L2 F' B' R U' F' R' F B2 R F' L2" }
{ "L2 D L2 D2 F D F L' U B' D2 R2 F' R2 U2 R2 U2 F2 D2" }
{ "B2 D2 F L2 B' U2 L2 B2 R2 B2 U' L2 B L U D2 R D2 B'" }
{ "D2 U' B' U2 B2 D B' F' U R2 F2 R2 B2 L' D2 U2 F2 D2 L U2" }
{ "U2 R2 U F2 L2 U' R2 U2 D' L2 F2 B L D' L' B' U R2 D' B" }
{ "F2 U' F2 D B2 R2 D2 B2 U B2 U L U L' B' D' F R' D2 R2" }
{ "R L D' L' D2 L' B2 U' L B D2 B F R2 L2 F D2 R2 F L2" }
{ "B L2 R2 D2 B' R2 D2 R2 F' B2 R' U2 R' U' F' R' U' F2 D B" }
{ "B D2 B R2 B L2 B2 U2 B L2 F2 R' U2 B2 D' F B2 U F2 R B'" }
{ "F2 B2 D B2 U2 D' R2 D' L2 B2 D R F' D2 B' R F R' F'" }
{ "U' D2 R2 F2 U' L2 B2 R2 D2 L2 D B' U D L2 U' L2 R' B' D' F'" }
{ "U' L2 D2 R2 F2 U' F2 D R2 U' D' F D F' D2 L' B2 R2 D B2" }
{ "U2 F U2 F L2 D2 F U2 B' U2 R2 U' L2 B R' F B' R2 F' U' F" }
{ "B2 L2 R' B2 L2 U2 B2 U2 B2 L F' U2 B2 L U' D2 F2 L D" }
{ "U L2 R2 U' L2 U D' L2 F2 D R B' L' U R' F' D B2 D R' D2" }
{ "L' F L D' U' R' D R' D2 F D' R2 B2 D2 F2 U' R2 B2 U'" }
{ "D2 B R2 B L2 R2 B R2 B L U D2 R U' R B' R B" }
{ "R2 D2 F2 U2 B2 L2 R' F2 R' D2 B D' R F L' R D2 B U2 R2" }
{ "D2 L2 F2 D B2 R2 U' L2 D2 F2 U F' L U' L' B R2 D F' U2 D2" }
{ "D U B' R L2 F2 R2 B' R' L2 F L2 U2 F' L2 F' L2 U2 L2 B'" }
{ "F2 U' D B2 U F2 U' F2 D F2 R2 F U L' U' B' D' R2 B' L R2" }
{ "D L2 D' R2 U F2 U R2 D' R2 D' B U2 R' D F B2 R U' B2 R" }
{ "L F' L2 U L2 U' R B R B U2 R2 B D2 F R2 B' F' U2" }
{ "L D' B2 L2 F' L' B2 D B2 R2 L F2 D2 L' U2 R D2 F2 R" }
{ "D2 R2 D2 F2 R2 F2 L2 R' D2 L' F' D F2 D2 F' L' B' D' F'" }
{ "U2 L2 D2 B R2 F' D2 R2 B' D2 B2 U F2 L2 D' B R' U2 F U'" }
{ "L2 B2 D2 F2 D2 B2 L F2 R2 U2 R2 U L2 D2 R2 F L' D F' D'" }
{ "D2 L2 B' U2 L2 U2 R2 F L2 F U2 D' R' U' D' R U B2 L U' L" }
{ "D2 L' U L D B' D R2 B' D U B2 L2 D' B2 U L2 B2 L2 U2" }
{ "L B2 L' R F2 U2 R F2 L U2 R2 F' U' R F B U2 D' L U'" }
{ "U2 B2 L2 F2 D' B2 D B2 D' L2 D' F L U' L R' B' L2 D2 F2" }
{ "L2 F2 L2 B2 U R2 U F2 U2 L2 D2 B' R U L D2 B D2 B L B" }
{ "D' R2 L2 B L' B2 R' B2 U F2 U2 B2 U2 L2 F L2 U2 F2 D2 F'" }
{ "B2 D' B2 U R2 U L2 F2 U2 R2 U2 R U' L2 R U2 F L' D2 L' R2" }
{ "R' D2 F2 B2 L' F2 L' D2 F2 L2 R' F' L U B U2 R F D' L' R" }
{ "R' U L U F2 R' D' B U L D2 L2 D' L2 U' B2 D' F2 U2 L2 U" }
{ "B2 R' U2 L U2 B2 D2 L U2 L U2 B' R' B L R2 B' D' B2 L" }
{ "U2 L2 D2 R2 F U2 F2 R2 B' R2 D2 R' B' L2 R2 F' R2 F D B2" }
{ "D' L' B R' L' F2 D2 B' U L2 U2 F' L2 B' L2 D2 R2 B2 D2 F2" }
{ "R2 B2 D F2 D' B2 D' B2 R2 U2 L D B' U' B R2 U D' R' D'" }
{ "B2 R2 F2 R2 U B2 D' F2 U2 F2 D L U' B' D2 B D R2 B L' U2" }
{ "R2 U' B2 U' R2 D B2 D' B2 L2 D' R U2 F' U' B2 U2 L' D' F2 B'" }
{ "L2 B2 R2 B2 D2 R2 U F2 U' D' B2 L D' B' R2 D' L2 F' D' B R2" }
{ "R2 D B2 R2 U' D2 L2 D' F2 U2 L2 R U' D' F2 D B R' D2 R'" }
{ "R2 D' R2 B2 U R2 U2 L2 D' F2 D' L' U' D2 R2 F2 R' F' R2 U D'" }
{ "R2 B' U2 L2 D2 R2 F L2 B U2 F L D' R' D' B R' F2 B2 R B'" }
{ "U B D' R F' U' B R B F D2 U2 L' B2 R2 B2 U2 R2 L' U2" }
{ "B2 D' U B U B L D2 B' D' L' U2 B2 R' F2 U2 L' B2 R' D2" }
{ "L2 R2 F2 U B2 R2 D2 L2 D F2 D R F' U D2 L' F2 D R' U'" }
{ "B2 D2 B2 D F2 R2 U F2 D2 F2 D' F' L' U' D B2 U L B' L2 D2" }
{ "B' L' D' L' B L2 D2 L D R' B' U2 L2 F L2 F R2 D2 L2 F L2" }
{ "F' R' F' R' F2 D F' D2 R' U R2 D L2 U2 B2 R2 F2 U B2 U'" }
{ "B2 L2 D2 L2 F' B' D2 F' B2 R2 D2 L B2 R D' R U' D' L2 F L'" }
{ "L2 R2 B2 L2 R2 F R2 U2 B U2 B R' D' F2 B2 L' R' F U' B' L2" }
{ "L2 D2 F U2 B R2 F' R2 F2 L2 D2 R' B' U L R U' B2 R' U' R'" }
{ "R2 U2 R B2 L R F2 L' U2 R D' R2 F L' B U R D L U D2" }
{ "B2 D2 F2 D' B2 D' L2 B2 L2 B2 D' L B' U R2 U L R2 B2 D" }
{ "L' U2 D2 R' D2 R2 D2 F2 L U2 L F' D F2 U' R2 D' L' U D' B" }
{ "D' L2 B2 R2 D2 R2 U R2 F2 R2 B2 L' F2 U R' U2 R F R' F B" }
{ "R2 D F2 D' B2 D2 B2 U2 D' F' D F2 U D' B2 R' U2 B' L' D'" }
{ "F D2 B U2 B L2 R2 B L2 D2 B R U' R F2 B L' B2 U L2 R'" }
{ "L' D2 L F2 U2 R D2 L' U2 R' F2 U F R2 B R' D' L2 R' F2" }
{ "B2 D2 F L2 B U2 F R2 U2 F2 L2 D R D' L B' D R' B R' B2" }
{ "B2 L2 F2 L2 U' B2 U' B2 D L2 U' B' D2 B' U' R' B2 U2 D F' D2" }
{ "U2 R U2 L' B2 R' U2 R' U2 L2 R' F' U R B' U D' R B'" }
{ "L2 F2 R2 D' R2 U F2 B2 L2 D R2 B' D R' F2 D F' U' B L2 R2" }
{ "R F2 R' U2 L U2 F2 D2 B2 L U2 F D L U D2 F' L U D2" }
{ "D' L' F' U' F' L' U2 R' D B D2 L2 F' R2 L2 D2 B F2 R2" }
{ "U' L2 U2 R2 D R2 B2 L2 U2 R2 U B' U2 R' B' U F2 L2 U2 F' D" }
{ "R2 D L2 D' B2 U' D2 B2 L2 F2 B2 L' B U' D' R D2 R2 U2 L' B" }
{ "R' L' U R F' R2 D2 B F' D R B2 F2 L' F2 U2 R2 L' F2 L2" }
{ "U2 F2 D' F2 D' B2 R2 B2 D B2 L2 F U R B' U' B2 R' B U2" }
{ "B R2 B2 L2 B D B2 L U' R' F2 L2 U2 R2 D2 F' R2 L2 D2 B" }
{ "U2 B2 D B2 D' L2 U' L2 F2 B2 D' L F' R D2 F' L2 U D B2" }
{ "R F' R2 F D2 U' L2 F D L B2 L2 D2 F' R2 B' R2 B U2 F R2" }
{ "L2 F2 D B2 D' F2 R2 U2 R2 D2 L2 R' D L D F L2 F' U D L2" }
{ "U F L2 D B2 L' B U2 L F2 U2 F' R2 D2 B' R2 F L2 F D2" }
{ "U2 L' U2 B2 L' B2 L' U2 L2 D2 B2 D B U R D2 L2 F B R2" }
{ "U D B2 U' F2 U' R2 U R2 F2 L' U' B U2 R' D F D' R D' B2" }
{ "D2 F R F' L U' R2 B2 D2 F D F2 D' B2 L2 D' B2 F2 L2 U F2" }
{ "B2 D B2 R2 D2 F2 L2 R2 D' R2 U2 B D' L B L R' D R2 D' F'" }
{ "B U' R' U' B D' B' R' D' U2 R B2 U2 F2 D2 R D2 R2 D2 R'" }
{ "L2 D2 F2 R2 U' L2 D L2 D2 L2 D B' D2 B2 R' U' B2 D L2 F B" }
{ "D' R2 U2 F2 B2 L2 D F2 B2 U L2 F' R2 D' F' U' R' D2 R F D2" }
{ "R2 D2 R F2 U2 R2 B2 D2 L' F2 L D L F' B2 L' U2 B U' D R'" }
{ "B D2 L' F R F R' U L' D2 L2 U L2 B2 U R2 L2 U R2 L2" }
{ "F2 D' L2 D' L2 U B2 D' B2 D L2 B U2 D2 F U2 D F2 L' F L'" }
{ "D' F' D' L D2 R L B2 F' D B2 U2 F2 D2 U2 L' U2 R' B2 D2 F2" }
{ "L2 D F2 L2 B2 L2 D B2 U' F2 U2 B L2 D' B2 R' D' L D L'" }
{ "U2 B2 U' F2 D2 B2 R2 F2 D' B2 R2 F' L' B U R' D B2 L B R" }
{ "B2 U' D' F2 D' L2 F2 D2 F2 D B2 R' F2 U B R' B' L' U2 L D'" }
{ "L2 U' F2 U' B2 D F2 R2 B2 L2 U F L' D' L' R' U' R U2 F L'" }
{ "F2 D2 F2 R' F2 R' D2 L' U2 B2 U2 F R D L B U D' B' L' D" }
{ "F' U2 B2 U2 D2 L2 U2 D2 B' D2 B U L2 D R' F L2 B' R' D R" }
{ "D' R2 F2 L2 R2 U2 L2 F2 U L2 U' R F L B D F L' D' F' R'" }
{ "D L2 U L2 D' L2 D' B2 L2 D F' L2 R' D' F2 R D' F2 B' U2" }
{ "U' F2 D2 B' R' D F' D' R' D2 F D2 L2 F2 D2 B' L2 B' R2 B2" }
{ "U2 F D2 B' U2 L2 D2 R2 F D2 R2 U' B' R2 D B' U2 R' F2 R" }
{ "F2 R2 D2 B2 U R2 U2 F2 U' F2 L2 B U L' F U' F' D F' U2 F'" }
{ "D2 R2 U2 F R2 F L2 B2 R2 U2 B R' U2 B U2 B2 D' B' R2 B" }
{ "U' L2 U' D' R2 F2 U2 R2 B' U' R2 F' D' R U R' U2 B" }
{ "F D2 R2 B R2 U2 F' D2 B D2 B L' B D2 F2 L' B' D R2 F L2" }
{ "D L' D' F2 L B' D B F' R U2 R L2 F2 D2 L2 F2 D2 R' D2" }
{ "D B' D L' U2 B' L' U2 L B2 D L2 B2 L2 D' U' B2 L2 D U" }
{ "U F2 R2 F2 D F2 B2 U L2 D' F U2 R B2 D F' D R2 D' B" }
{ "D2 R2 B R2 F' U2 D2 F L2 U2 D2 L D2 R B' L' F2 B2 D R U'" }
{ "U' F2 D2 L2 R2 D L2 U2 B2 R2 F2 R' U B R2 U2 B2 U2 L' F' R2" }
{ "L D F U' F' R D' F2 D U2 F2 D2 B U2 F' U2 F' U2 L2 D2" }
{ "D2 B' R2 B D2 R2 F' L2 F U2 F U' F L2 B2 R B R U R" }
{ "U L2 U D R2 D B2 R2 F2 L2 R' U R U2 D2 F' L' R2 F2 B" }
{ "R2 U B2 D2 F2 D' F2 U L2 R2 D L F' R2 D' F2 B R' B' L2" }
{ "U F2 D F2 B2 U' F2 R2 B2 U' F2 L D R D' L' D' R2 B' U2 L" }
{ "F2 U2 B L2 D2 F' R2 B' U2 R2 B' R F B2 U F2 R2 U' R F R" }
{ "B' D' L' U B' F' L' B L' B R2 L2 F2 D F2 U' B2 D R2 B2 R2" }
{ "U' R' D' R L2 D2 F U' B2 D2 F2 U2 F L2 B D2 F' L2 F" }
{ "F' D' L D2 U2 B' D' R2 D L B R2 D2 R2 B2 R2 D2 L2 F' D2 B2" }
{ "R2 D2 B2 U' D2 L2 D' F2 D2 B2 R F2 B' R' U F2 D' R B D" }
{ "R2 U B R L' F' L' U F D F2 D' F2 U2 L2 D' F2 R2 U" }
{ "F2 U F2 U' R2 U' R2 D2 B2 R2 D2 L U' R2 F2 R B' R D F U'" }
{ "D2 B2 U2 D2 F R2 B U2 B' U2 F' R' F L2 F' D L2 B' L2 U'" }
{ "F' L2 F D2 F' R2 F' U2 D2 L2 F2 U F R F2 B2 L D L F" }
{ "R2 U R2 D' F2 R2 U2 L2 D L2 D' L' B2 D' L2 U D' B' R2 U'" }
{ "U D2 B2 L2 D2 F2 L2 B2 U L2 D' F L R2 F2 U' L F2 B' U' D" }
{ "D2 F' R2 B' R2 D2 F' U2 B2 R2 B U' L B L2 U2 F' R2 F' U' B" }
{ "F U2 L2 F D2 B' L2 D2 B' U2 L2 U' R' B' U D B2 L F2 U2 F" }
{ "B2 U2 F2 D' F2 U B2 D' L2 D F2 L D R2 D R' B' D L' R" }
{ "D B2 L2 U L2 R2 D L2 R2 F2 R2 B' R F2 R' B2 U' B2 L' R2 B'" }
{ "F L2 B2 L2 B' R2 B' U2 B2 D2 B L F2 R' B R U' L R' U' R'" }
{ "B2 U' D2 R2 D' B2 D' B2 D2 B2 L' F' L' D2 B D' L2 D' R2 B2" }
{ "R2 F2 U' F2 B2 D L2 U L2 U2 R2 B L' B L U F D2 L2 B" }
{ "L' D2 F U' R2 U' F' L U R' L' F2 U2 B2 D2 R2 F2 L F2 L'" }
{ "L2 F' U2 F2 L2 R2 F' L2 B2 D2 B' D' L' U F' L D' R2 B D B'" }
{ "D' L' F U2 L B D2 R2 U B D B2 R2 D2 F2 D' B2 U B2 D' R2" }
{ "R2 F' R2 F' B2 L2 U2 L2 D2 L F' L2 F U R F2 U2 F2" }
{ "R2 D R2 D' F2 R2 B2 R2 D2 F2 D2 B D R' D2 F R2 B' U' D L'" }
{ "U F2 U B2 D2 B2 L2 U F2 R2 B L F' R' U F L2 R' U' F U2" }
{ "U2 B2 U2 D2 L2 F2 R' B2 R' B2 L2 B' L D' B2 L2 F2 L F D2 F'" }
{ "D2 L2 F L2 U2 D2 F' B2 R2 F U2 L' D2 L2 D F' U B' R D2" }
{ "D2 F2 D L2 U L2 F2 B2 U B2 U B' L2 D' L' R2 U F2 L2 B' R'" }
{ "F2 U2 F2 U L2 U' F2 D' B2 L2 U2 F' L B' U2 L' B' U R' D' R" }
{ "U2 D2 B U2 R2 F' L2 F2 D2 F' R B L F R2 U' F2 L B D" }
{ "D2 R2 F' L2 R2 B' U2 B' L2 B D2 L U B2 R' B2 U R2 U2 R'" }
{ "U2 L D2 L2 U2 F2 L' F2 U2 L D2 F D' R D2 B2 R' D2 B' U R" }
{ "L2 B2 L2 U2 B2 D' F2 D2 R2 B2 U L' U F R2 U2 B' R2 D F D2" }
{ "U' R2 F2 U D F2 B2 D2 B2 D' R F D' B' U B2 L B' U2 B2 L" }
{ "L2 F' R2 U2 L' D' R' D' L' F2 D U L2 D R2 U L2 D U R2" }
{ "F2 L U2 F2 U2 R2 B2 R D2 L R U' B' D B' U2 F' U F B'" }
{ "B' L' U2 R' D' R' U R2 L D F R2 L2 F' D2 B2 D2 R2 B' L2 B'" }
{ "F U2 F' L2 U2 R2 B2 D2 B' L2 F U' F2 L' F2 B' R2 D' F' R' D2" }
{ "U F2 B2 D' B2 R2 F2 D' B2 U2 D2 R' U' D' F' D F' B' U R D2" }
{ "F' R2 U2 R2 U2 B R2 B2 D2 B U2 L B' L2 D' L' D' R' B' D" }
{ "B2 L B L' F' L U' L B R2 U2 R L2 F2 R2 U2 B2 U2 R' U2" }
{ "R' L' D' B' D2 F2 R' U' R2 U' L2 B' R2 L2 U2 L2 F' L2 D2 B D2" }
{ "R' F' U B2 L' B2 D B2 R2 F R F2 L F2 L' B2 U2 L2 B2 U2 L2" }
{ "D F2 U' B2 D2 F2 L2 U2 D' F2 R' D R' D2 L2 U R' D2 B' D'" }
{ "L2 F2 R2 F D' F' L B2 F' U2 L' F2 U2 R2 L' U2 F2 L2 F2 R'" }
{ "F2 D R2 D F2 U' B2 L2 R2 U' F2 B R U2 F' B2 D' L' F' R D" }
{ "U2 L2 D B2 D' R2 D L2 U L2 B2 R D2 B L D' B' U F U' L2" }
{ "F2 D L B U B' U2 L B' U' F2 D2 L2 B2 L2 D B2 F2 U" }
{ "U F2 L2 R2 U' R2 B2 R2 B2 U' L2 R D' F U2 B2 D' B L B2 D'" }
{ "L2 U2 R' F2 L' U2 F2 U2 R2 U2 R U' L R2 U' L2 F D' R U B'" }
{ "R' U2 R2 F' L2 U F D R' F2 U2 R2 D' R2 L2 B2 L2 F2 U'" }
{ "B2 R2 B' U2 R2 F U2 L2 B2 D2 B' L' B2 L' U R D B R2 B' D'" }
{ "D B2 D L2 U' B2 R2 F2 U2 R2 D F' B2 R2 B L B2 D F L D" }
{ "B2 R D' L B2 F2 D U' R F' R' D2 R B2 D2 R D2 F2 L2 D2 R'" }
{ "B2 L' D2 L U2 B2 D2 R' D2 B2 R2 B' D B' U' F2 L' F2 B' L2" }
{ "D' L2 B R U' F R B2 L F2 U' F2 U R2 D L2 U' R2 F2 D2" }
{ "F2 U R' B2 D' U2 R U' B' F' L2 U2 B2 D R2 F2 U F2 U B2 D'" }
{ "D2 L' R2 D2 B2 R B2 R B2 R F2 U F2 L2 F' L' D B2 U L2" }
{ "L2 D' L U2 R F2 L' B D L' F2 L2 F2 D R2 D U L2 F2 D'" }
{ "L' U2 B2 R2 B2 R U2 L' F2 D L F' B D F R D2 B2" }
{ "B' U2 B R2 U2 B' D2 R2 B U2 F D' L U2 R2 B2 U F' R2 D' B" }
{ "R2 F' R2 F U2 D2 F' D2 B' D2 F2 L D L2 B R B D R' F' U2" }
{ "B2 D2 L2 B2 R2 F2 U2 L' F2 R' F2 U B' L2 F' B2 U' D2 L2 F2" }
{ "L2 D' R' B2 U' F' D' F D2 R2 U2 B2 R2 U' L2 B2 U F2 L2" }
{ "L2 D2 L2 D' B2 L2 R2 D L2 R2 U2 L' B' U' F' D' B L2 D' L2 R'" }
{ "F2 R B2 R2 F2 U2 B2 L U2 D2 R2 D B U L' F U F2 D B2 L2" }
{ "U2 L2 B2 U2 R U2 L2 R' F2 U2 L' B' R D' R U2 B' U L B L" }
{ "R2 D2 F2 U2 B2 D' R D' B' L B2 R D2 R B2 F2 U2 R F2 L" }
{ "U2 B2 U R2 B2 D2 B2 D B2 L2 U2 F' D F' R B2 U2 L' U' F'" }
{ "R' D2 F2 D' L2 D B F2 R B' D2 B L2 B F2 D2 B2 D2 R2 L2" }
{ "F' D L2 F2 R F D' U' R' B' U' R2 B2 U B2 L2 U2 B2 R2 U2 F2" }
{ "L2 F' D2 B2 U2 B U2 B' D2 L2 B' R U' R2 U D2 L' F' L' U B'" }
{ "R2 B2 U2 B' R2 F' B' D2 L2 D2 B U' B D2 F2 R B' U2 D2 B2 D'" }
{ "U2 L2 D F2 U' L2 U F2 U2 B2 D2 F L2 D' R2 F U2 R' D'" }
{ "L2 F2 D2 R F2 U2 R2 D2 L' F2 B2 U R' U' L U D F2 B2" }
{ "R2 F2 D' F2 D2 F2 L2 D2 L2 D R2 F R2 B2 R F B2 L2 U2 D" }
{ "U B2 U2 F2 D' F2 U' F2 R2 B2 D B' U' L R2 F2 B2 R' D2 L2" }
{ "R2 U2 F2 L R' B2 D2 L B2 R2 D' L2 B D2 F2 B' L R2 D'" }
{ "U L2 B2 L2 D' B2 D' F2 D R2 U B' U L' F' B2 D' L' U' L' D2" }
{ "L' B' U L F D B2 R B' L2 U' F2 D2 R2 F2 R2 B2 D2" }
{ "F2 U F' L' B' D' U2 R' B R2 F2 D2 L' B2 D2 R' L2 D2 B2 D2" }
{ "U2 D2 L D2 R' U2 L U2 B2 R2 D2 F U L' D F R' U F2 U F2" }
{ "B' L2 U2 F' R2 B L2 F' B L2 U2 R F' R2 D F U' R D' F R" }
{ "D B2 L2 U L2 F2 D R2 D' R' U2 B R2 U2 R' B2 D F2 U'" }
{ "D B2 U' F2 D' F2 L2 U' B2 L2 U R F2 L B' U2 L2 U D' R' F" }
{ "L2 B2 L2 D2 B' L2 U2 L2 D2 F' D2 R F2 U' F U2 D2 L2 D' L F'" }
{ "F2 B R2 U2 L2 D2 F' B' L2 B' D2 R' B2 D R2 D2 F' L R2 F D'" }
{ "U' B' F2 D L2 F R2 D F' U2 R2 B2 R' B2 R2 U2 L B2 L F2" }
{ "R2 U' B2 U2 D' R2 F2 D F2 B2 R B' L2 U B' D' F R2 U' B'" }
{ "L' D2 L2 B2 U2 F2 U2 L2 R' D2 R' D' B2 R2 B U' B2 U2 D B" }
{ "L2 B L2 F2 B R2 F' U2 B' U2 R2 U' B L2 D' F2 U2 B R' U' D'" }
{ "F L2 B' U2 L2 D2 B D2 B2 U2 F R' U F U F' U' D2 R' D2" }
{ "F2 D B2 L2 D R2 U2 F2 R2 U D2 F D B' U D B2 R F R2 D" }
{ "R' U' B D' R' B2 D B L D' R2 B2 D2 R2 B2 L2 B' U2 R2 F D2" }
{ "L2 B R2 F2 B' D2 R2 U2 R2 D2 F' U' L2 F' R' U R2 F' U' D' R" }
{ "R2 B' U L B' L2 F D R2 F' L2 B2 R' B2 F2 L B2 U2 L2 U2 R'" }
{ "F2 U' F2 R2 D2 F2 L2 B2 D F2 D L' B2 U' B R2 B L U2 B R2" }
{ "F' R2 F' R2 U2 F2 D2 F D2 B2 L2 R' U L F2 B' R B L' F'" }
{ "B' L2 F D2 L2 F' U2 B U2 B U2 R F U' D2 B U R' U2 F R'" }
{ "B' D' F L U2 R2 B2 L' D U2 F' L2 B' D2 L2 U2 R2 L2 F2 R2" }
{ "B2 D' L D R' L D' U2 B R L' F2 L B2 D2 R2 L' F2 U2 B2" }
{ "D' L2 U B2 U' F2 R2 D L2 U D' F' R' U2 F' U F' B R B L" }
{ "D2 L2 U R2 D2 B2 D L2 U2 B2 U B' D L2 D B U2 D2 B' R U" }
{ "U2 L2 B2 L2 D2 L2 F U2 L2 B L2 U R2 F' U2 R B2 R2 F' L2" }
{ "R' D' U' L' D2 L F D' L B L2 B' D2 U2 F' U2 B' F' L2 F" }
{ "B' R2 F2 D2 L2 U2 B' L2 F' U2 D F L' U' L2 B' U2 L D2 B2 R2" }
{ "U2 L B2 U2 L' D2 F2 B2 L2 R B' R2 U' R D L B L' B L" }
{ "L2 U2 D' B2 L2 D' R2 U2 L2 U' R2 B' U B2 L D' F2 U2 R2 F B2" }
{ "F' D2 L2 F2 R2 F U2 B2 D2 R2 F' R' B2 U F2 B U D2 L' R' B'" }
{ "L2 F B2 R2 F L2 B' U2 R2 B' R2 U' F' D R' U' L B2 L F2 U'" }
{ "F' D2 F2 R2 F D2 B' U2 F2 L2 U2 R' U2 B L2 D' L B' L' B2" }
{ "L2 D2 R2 F D' L U2 L' U L2 B R2 B' U2 B D2 B2 D2 F2 L2" }
{ "D B2 R2 D' F2 D' B2 D L2 F2 L' B2 D B R2 D R B' L2" }
{ "B2 L2 F' R' L U' B L2 B D2 F2 U2 R F2 D2 R2 U2 L2 D2" }
{ "B2 R' D2 B2 L' D2 F2 L2 U2 B2 L2 D R F L U F B' D' L2 D" }
{ "R2 D R2 U' D' R2 D' B2 L2 F2 D B U2 R2 D2 R' U2 L U B' D'" }
{ "F L F2 D' U2 L2 U2 B R L2 U2 R2 B2 D' F2 U2 R2 B2 U2 R2" }
{ "D B R2 D2 L' B2 F2 U R' L2 D2 L2 D2 B D2 R2 U2 B' D2 L2" }
{ "R2 D2 F2 D' F2 R2 U2 R2 U F2 D' B' R' U2 R F' U' B2 R B' U" }
{ "L2 F2 B2 U B2 L2 D F2 R2 B2 D R' F B U' B R2 B' L2 U" }
{ "D2 B2 U2 F2 B' L2 B L2 U2 R2 F2 D' R2 B U' R' D' L U F2 D2" }
{ "F U2 R2 F D2 F L2 B R2 D2 R F2 R F' L F' R U' F" }
{ "B2 U D2 B2 U D2 B2 R2 U' D' F' B' D' L U' L' R U' B U'" }
{ "U' L2 F2 B2 D' L2 D2 F2 R2 F2 D R D L2 B2 R B U' B2 U2" }
{ "R2 U2 F2 R' D2 R D2 R B2 R F2 D R F2 B U' D2 F B' D2" }
{ "R2 F2 D' F2 L2 U B2 D2 B2 L2 F2 R F2 R2 D' B L' F2 U' R U2" }
{ "L' U2 F' D2 R' F' R2 F' D' B2 R F2 D2 R D2 L' F2 L' U2 B2" }
{ "R B2 F2 R' U2 B U L2 B' F2 D R2 U L2 D2 F2 L2 F2 D' R2" }
{ "B' R D2 F2 L' D2 U R D2 F' U2 R2 F L2 B L2 F2 R2 F'" }
{ "U2 F2 D' L2 R2 U L2 B2 L2 F2 D R F2 B2 U F' U' F' R D'" }
{ "R' F L' B' F' R F2 D2 L U2 R2 U B2 D2 L2 D F2 R2 D2 R2" }
{ "L2 B' R2 F L2 R2 U2 L2 B' D2 F2 R D2 R D' F' U' L' D L' F" }
{ "L2 D2 R2 F D2 F B2 L2 D2 F L2 R' U' D2 L2 B R' U D2 F D2" }
{ "D R B' L' U2 F' U L B' F2 L U2 B2 R B2 U2 L2 B2 R F2" }
{ "D2 F' U2 F2 L2 F2 D2 L2 B L2 R2 D R' F2 L B2 D' R' B2 D" }
{ "F2 R2 D F2 B2 U R2 D2 R2 B2 U L' B2 D F' U' F' B U2 B D2" }
{ "D2 B2 D2 F2 R2 U R2 U L2 U2 F2 R B' D2 B D F' D2 L' D' L'" }
{ "U2 F2 L2 U2 B' L2 D2 B L2 F2 B' U' B2 R' F L2 D R D2 B' R" }
{ "D R2 U F2 U' D2 B2 D F2 L2 D2 F U2 D' F D2 B' L2 U R' D'" }
{ "B2 L2 R B2 U2 L' U2 D2 L2 B2 D' B2 L U R' F2 B' L'" }
{ "F' B' R2 F2 R2 D2 F' R2 F' R' B2 D F' R' D' R F' B2 L'" }
{ "R' F R F U' B' R' D2 B' L2 B2 L' B2 D2 B2 F2 L2 D2 R F2" }
{ "F2 B2 U F2 U' L2 R2 U' R2 F2 U2 L U2 D' L B2 L2 F' U' B' U" }
{ "R L2 U L2 D' U' L U2 F' R F2 D U F2 U' B2 R2 L2 B2 R2 U2" }
{ "R B2 L' U2 R' U2 R' B2 R F2 U2 B U' L2 B2 U' L U' D2 R' U" }
{ "F2 L2 F' L2 R2 D2 F' U2 B R2 D2 L U' D L' U2 F B' D R' F" }
{ "D2 F2 B2 L2 D F2 U F2 R2 F2 B' R D R' U2 B2 L' R' F2 L' D" }
{ "L2 B' L2 R2 F B2 L2 B R2 D2 B' R U R2 F2 R' B R' F2 R F'" }
{ "L2 B' R2 U2 R2 F2 D2 R2 B' L2 F D' B' R' B R D2 L U B2 D'" }
{ "L2 B2 U F2 U' D2 R2 U F2 R2 D' B R U D2 L F2 R2 F U B2" }
{ "B D2 B R L B' F2 R' U' F' D R2 D F2 D' R2 U B2 D2 U'" }
{ "D2 R2 U2 B2 L2 U R2 U L2 D' L2 F R2 U' L' U' R' B2 U' B' U'" }
{ "D' F2 R2 U2 R2 U2 F2 D L2 B2 L2 R U2 L' B' L2 B U2 F U2" }
{ "L2 D2 R2 U2 B' U2 F' B2 R2 B' L' F' L U' R' F U F' D'" }
{ "B2 L2 D L2 F2 U' L2 D2 R2 U' R2 B U F L2 R U2 R2 B L'" }
{ "U B2 U' B2 U2 L2 F2 U2 L2 F2 L2 R' F L2 F' R2 D' R' B L' U'" }
{ "F2 R2 B2 L2 U2 R2 U' F2 B2 D B' L2 R' B2 D B' L2 U2 L2 R'" }
{ "R2 D2 R2 D' L2 U' F2 L2 D2 F2 D' F' U2 D' F' U' L U' B' D2 B2" }
{ "B' U2 F2 L2 D2 F2 D2 F D2 B' D2 R F2 B U2 F L' B2 U F' B2" }
{ "U2 F L2 R2 D2 B' L2 F U2 B L U2 B D' B' L' D' L2 D2" }
{ "U' B2 L2 D L2 F2 R2 D2 L2 D2 F2 L' U' B R D2 B2 D L' F R2" }
{ "L B D' U2 R F U' B' U2 L2 F2 L D2 L B2 L B2 L2" }
{ "F' B2 L2 U2 B D2 L2 R2 B' U2 B' R' F B U' R' U2 L U' L' B" }
{ "U' B2 L2 B2 D' B2 D' L2 D R2 U B' R2 D R' D L' R U' L B" }
{ "L' U2 R' U2 B2 R2 F2 R F2 D2 F2 U' R D2 B' U2 R2 F2 D B'" }
{ "D2 L2 B L2 R2 B D2 F L2 B' D2 L' D L B' U' R U F' U'" }
{ "L2 D2 B2 D F2 U' L2 U R2 F2 U2 F' L2 B R D2 L2 B R' U F'" }
{ "B D2 F' D2 F' R' U2 R' U L' F2 L F2 L2 B2 D2 R B2 U2 L2" }
{ "U' L2 B2 D' R2 F2 U2 L2 D' R2 U' F' D F2 B D' B2 U2 F2 L' F'" }
{ "F D R2 B F' R' D B2 L B' F D2 U2 F L2 D2 U2 F' D2 R2" }
{ "L U L' D B' R2 L' B' D' L B2 F2 L2 D2 U R2 B2 D' F2 D2 B2" }
{ "R2 U' B2 D' L2 F2 D' F2 D' F2 L' B U B' R' D2 R2 B U' F2 R" }
{ "R B' F U R' D2 U' L' F D F2 D2 R' U2 B2 R' D2 U2 R2 B2 R'" }
{ "F2 D L2 D2 B2 D F2 D2 L2 F2 R2 F U2 B D B2 D L' F' L' B'" }
{ "B2 D B2 R2 B2 D' F2 D2 F2 D' L2 B' D2 R U2 R D' F' B2 U' B'" }
{ "F R' D' R U B' R2 B' L' B2 R2 L2 U' B2 R2 U2 B2 F2 R2 U'" }
{ "L2 R2 D B2 U F2 R2 B2 D' F2 D L U2 L B D' R B R2 U B'" }
{ "L F2 L F2 R' D2 R2 F2 B2 D2 R' F U F B U2 F L B' U R2" }
{ "B2 U' L' B' D B U B' R2 B' F2 U F2 L2 F2 D2 B2 D2 U' B2 D'" }
{ "R2 U2 F2 R2 D' B2 R2 U' L2 U' F2 L D B' U' L2 U' F B R' D" }
{ "L2 B2 R2 U2 L2 D B2 R2 U' B2 D L' R D' R2 F L D' F' D' R" }
{ "R2 F2 D2 F' U2 L2 B' D2 L2 F R2 U F D' F2 B L B R' U' B2" }
{ "L2 U2 F2 B2 D' R2 D B2 R2 U L2 B L2 U' D2 R' U2 F U' B' D" }
{ "U2 B R2 U2 F' U2 B' U2 B2 L2 R2 U F2 R U' L2 F2 U L" }
{ "B2 U2 R2 U R2 U' L2 U D2 L2 F' L' R B2 U' D2 R2 U R' U'" }
{ "D' F2 U B2 U' L2 D2 B2 U B2 D L' R2 U2 F R2 B2 L2 U B" }
{ "D2 B2 R2 B2 U F2 U R2 D' L2 F2 L B U' F' D' B U L2 D' R2" }
{ "U2 L' U L D2 R2 D' R' B U' L2 B2 R2 U' L2 U' F2 U2 B2 D" }
{ "L2 U2 L2 U F2 D L2 F2 D' F2 D' B L' R2 B' D' B' L U L2" }
{ "D2 L2 F2 U2 F' R2 B' R2 B' L' U' L U2 F' L' B2 L' B" }
{ "R2 B2 U R' F' U' F2 R L' B2 D B2 U2 F2 U' R2 B2 D' B2 U2" }
{ "B U2 F2 U2 B' L2 U2 B2 D2 F' L U2 D' L' B' U L' R2 D L2 D2" }
{ "D L2 B U R2 B' L' D' L F2 U F2 L2 D' L2 F2 D' B2 D2 B2" }
{ "B2 D2 F2 L2 R' D2 R F2 B2 R D2 F L2 R2 B L U' B' D' R B" }
{ "F2 L2 F2 L2 D2 R' F2 U2 R B2 U2 D L2 D B2 R F2 L" }
{ "B' U2 B2 D2 L2 R2 F L2 B' R2 U L' U2 F2 U' D2 F2 U' L2" }
{ "D L2 F2 L2 U F2 D R2 U R2 F2 L' F2 U' F L2 F' R D F2 L2" }
{ "D' F D2 R2 L' B F2 U B' U2 R2 F2 U' R2 U' F2 D' F2 L2 D'" }
{ "U' F2 U' F2 D B2 U D R2 F2 B L2 U B2 U' F' R U2 B' R2" }
{ "F2 B2 U R2 D' R2 D F2 R2 B2 D' B' R' B U2 D B' R2 B' L2" }
{ "L B' U L B F2 L U L D2 B2 R U2 L2 D2 B2 L2 B2 U2" }
{ "U' B2 U2 R2 D R2 U' R2 D L2 B L' F' B2 D' F L2 D2 L B2" }
{ "F' D2 F' D' F2 L' F D' F2 R B2 U2 R2 D' B2 U2 B2 R2 F2 U R2" }
{ "B U2 D2 B R2 D2 F L2 D2 F' L2 D' L' F U R2 F2 R' U' B2 R" }
{ "R2 U2 B2 U2 D2 L2 F' R2 B U2 B' D B' U' L' B2 D2 L' F' L U2" }
{ "D2 B2 R2 B' L2 F' L2 R2 B' D2 B' D B' L U L2 U' B U2" }
{ "F' D B2 D' L U L' B D L2 D F2 R2 U2 R2 U' B2 D U2" }
{ "B2 L2 D2 F B2 D2 F' D2 B' D L' U2 F2 R F' D2 R' F2 U" }
{ "F2 L' D B' F U R D B' R D2 B2 L2 U2 L' F2 R D2 B2 R" }
{ "L2 D2 L2 D F2 D2 L2 D' R2 F2 B' U B D' R2 U' L' F U2" }
{ "B2 L2 B2 L2 D' L2 R2 U' R2 U F' R F L' R' D R D' B' D L2" }
{ "L2 R B2 D2 B2 U2 R D2 F2 L' R2 B' U2 D R2 B U' F' R F2 B2" }
{ "U' D' L2 U' R2 B2 D' B2 L2 D F2 L U R2 F B2 L' B' U D2 B2" }
{ "B2 L2 F2 R2 D2 R2 U2 B' D2 R2 B' R U' B2 U' L' R2 U' F' R2" }
{ "R' U' L' B' D B2 U' L' U F2 L2 D2 R2 B R2 L2 D2 B L2 F'" }
{ "D2 F2 U L2 R2 B2 L2 U' B2 U R2 F' U' R' U R D' F D'" }
{ "U' B2 U2 F2 U' L2 F2 D' R2 F2 D R D2 F U L' F' D' F' L2 U2" }
{ "F' U2 F' D2 F' D2 F' U2 B U2 L' U2 L' U' D L' U R2 B U'" }
{ "U2 B' R2 F2 D2 B' L2 D2 B' L2 B2 U L U2 D2 L2 B' R U' R' B" }
{ "U L2 U L2 F2 L2 R2 B2 D B2 U L B U D' L2 F D2 B U D" }
{ "F2 B2 U F2 B2 U2 B2 U' L2 U D F' U' D R F2 U' B2 L D2" }
{ "F D U' F D' L U2 B' D2 L' U2 R2 B' U2 F' U2 L2 B' F' R2 D2" }
{ "B D R F' D R U2 L2 B R2 F2 R2 B2 U2 R D2 L' D2 R' D2" }
{ "L2 U2 L2 B2 U R2 U L2 D B2 U F R F2 U D' F' L F' L2 D'" }
{ "F' U2 F2 R2 F L2 B' U2 F' R2 B' R' U B' R B D2 B' U2 L" }
{ "L2 R2 U R2 U2 D' R2 F2 R2 D' L2 B' U2 F U L' D2 R2 D' R F2" }
{ "F2 B' U2 F2 L2 D2 L2 B' L2 R' D L F U2 D' F' U' L' F'" }
{ "D R2 D B' D' R F2 L U' B2 R U2 R' D2 F2 R L2 D2 U2" }
{ "U B2 R2 B2 D' R2 U2 D B2 D L D2 L2 F D F' B' D R' U2 F2" }
{ "B U2 F2 B' R2 F2 L2 U2 B' R2 U2 R' B' U' F D' F' L' U2 D' L" }
{ "B2 D B2 U F2 R2 D' R2 B2 D2 L2 R' D B2 L' U2 B' L2 F2 B'" }
{ "R2 U R2 U R2 B2 D L2 R2 U' D R D L' B L B' L' B R2 U'" }
{ "R2 B2 L2 U F2 B2 R2 U2 B2 R2 D R D2 F' D' R' D2 F R' B' D2" }
{ "D2 B2 R2 U B2 L2 R2 U F2 D2 L2 F' L2 F U B' D2 F' R D B'" }
{ "U2 B2 L2 B' L2 D2 B2 R2 D2 B U2 R D' F2 D' R' F2 U2 F2" }
{ "B2 D' L2 D' B2 D2 B2 L2 D B2 L2 B' D R F B U' L D' F R" }
{ "D2 B2 D B2 L2 D' F2 D2 R2 D' F B U' R' D' L' F2 B D2 B" }
{ "D' R2 U2 L2 U2 F2 D F2 U' L2 D' R' F' L R2 U F2 B L' D2" }
{ "U L2 B2 D2 B L' B2 U B2 U2 F D2 L2 B R2 D2 R2 B2 D2" }
{ "U2 L2 F U2 F2 B' L2 U2 L2 D2 F2 L' B' D2 F R2 B L' U F2" }
{ "L2 D' L2 D' F2 U' R2 D' L2 D' F2 L' F2 U' L2 R B U' D2 B' D'" }
{ "U2 R2 B' R2 F2 U2 D2 F U2 B2 U2 D' R' D L2 D L' B' U' B D2" }
{ "F2 R B2 L' R2 F2 U2 F2 U2 L2 F2 B' U R U L' D' F R2 U B" }
{ "B2 D2 L' F2 L B2 D2 R' F2 L2 R' U' F' U2 B2 R2 F U2 L' D L" }
{ "F2 R2 F2 L2 U2 B' L2 U2 F U2 B2 L U' L2 B U B2 L' R D' R" }
{ "R2 U B2 U B2 D F2 D2 F2 L2 U F U' B2 R U B L' B U2 D'" }
{ "R2 U B2 L2 D' B2 L2 R2 D L2 D' B' U' L D2 R' U' B U F2 D2" }
{ "F' D B2 R' F' L' U L2 D L2 F' R2 F L2 F U2 F U2 L2 F" }
{ "L2 B2 L2 U2 R B2 D' F' U' L' U2 L F2 R' B2 R B2 U2 L'" }
{ "U L B' F2 L2 D2 L F D' L U F2 U' R2 B2 D' R2 D B2 L2 D'" }
{ "F2 L' F' L F2 D L2 B R' D2 U L2 F2 D2 U' B2 L2 B2 R2" }
{ "R2 B2 L' D2 L' U2 L' U2 R' D2 L2 U' F' B' D' F' R' B2 L2 R U" }
{ "F2 R' D2 L B2 R2 D2 L' F2 D2 R' D R2 F' B R' D F' U2 F2 U'" }
{ "B2 U' F2 D B2 L2 U2 D B2 D2 B' L' R F2 U L' R' D B D'" }
{ "L' F2 L' B2 U2 R F2 U2 F2 L2 D2 B' R' B U' L2 F2 U F2" }
{ "R' D2 B2 U2 R F2 R2 D2 L' D2 R D' F U' R F2 U L U2" }
{ "D' L' F' L D' R F2 U R F2 D L2 B2 U2 B2 U B2 U R2 B2" }
{ "B2 U2 L2 F2 R2 D L2 F2 D' L2 U R' D R2 D2 R' F' B R2 B" }
{ "L' B2 U F' R2 D' U2 R L2 U' L2 B' R2 U2 R2 L2 B D2 F2 L2 D2" }
{ "F R2 F' U2 L2 B2 D2 L2 B U2 R2 U F' R' B R B2 L D2 F B" }
{ "B' U2 B U2 R2 B' U2 D2 F B2 R2 U L' D2 L2 F D' B D2 R' U2" }
{ "R' F2 U2 R' B2 L D2 B2 R2 D2 L' D' F R' U2 F' B' L' R2 F2 L" }
{ "F D R2 F' L' D2 U B2 R D F2 L2 F2 U B2 U R2 L2 D2 B2" }
{ "R' D' L' B L B2 D R' B R2 F2 U2 B2 D2 L2 U2 L' U2 B2 L" }
{ "F2 D2 B2 D R2 U R2 F2 L2 U R2 B L' U R F' D2 R F' U B" }
{ "F2 B D2 R2 U2 L2 B2 D2 F L2 D' L2 F' U L2 R U D' B'" }
{ "U2 F2 R D2 U R' F' R' D L' D2 R D2 L' D2 B2 D2 U2 L'" }
{ "U F2 R2 U' F2 R2 D' F2 R2 F2 D L' B L F2 B' L' U' D R2 B'" }
{ "D' L' B' R' D' F2 L F' L2 D' F2 D2 U2 F U2 B L2 B' R2 F D2" }
{ "F U2 R2 B' R2 D2 L2 U2 B L2 U' B' D2 F2 L F U' D L2" }
{ "B2 U2 L2 R2 B' R2 B2 D2 B' D2 B R' F' R2 D B2 R2 F' B' L' R'" }
{ "U B2 U' F2 D R2 D L2 U2 B2 U' L B L F' U F2 U2 D' F' D" }
{ "B2 U2 L2 R2 D R2 U' B2 U' R2 D R F' U2 D F' B U' F2 L'" }
{ "F2 U2 D L2 D R2 F2 U L2 F2 L2 F B R' B U' L' D2 B2 D' B" }
{ "R U2 B2 R2 L2 B' D R' D R2 U2 R2 B2 F2 U F2 R2 B2" }
{ "D2 L D2 R U2 R' D2 L B2 L' U2 D' R U2 R2 F' L2 R' U F R'" }
{ "U2 L2 R2 U R2 U2 F2 R2 U' R2 B R' D2 L B' U R2 F' D2" }
{ "R2 D B2 R2 B2 U F2 D2 L2 B2 U L R F L' B D2 R2 F L' F" }
{ "F2 U B2 R' L B L' B2 D F' R2 D2 F L2 U2 B' F2 L2 F' D2" }
{ "U L2 B2 D L2 F2 L2 D' L2 B2 D2 L B U D2 B L' R2 U' D2" }
{ "L2 F2 D' R2 U' F2 L2 R2 D' L2 R2 F D L U2 F' L D2 L U' F2" }
{ "U' D2 B2 L2 R2 D' L2 B2 L2 D' L' U B2 U' B' U' L2 F' U' F' R2" }
{ "U R2 D' F2 B2 L2 U B2 L2 R2 D' B' R B D B R' U2 D R2" }
{ "B2 U D B2 R2 D' B2 D' B2 D L2 F L2 U2 F U' R' F2 L U' B2" }
{ "B' U2 B2 R2 D2 B' U2 D2 R2 U2 F L' B R2 D F2 U L D' R B'" }
{ "L2 R2 D' R2 U' B2 R2 U' B2 U2 B' D L' R' F2 B' R2 U B' L" }
{ "L F2 B2 U2 R B2 U2 B2 D2 B2 L D' B2 L B D' L' U' F B2 D'" }
{ "B2 R2 U2 B2 D2 F2 L' R2 F2 R D F U2 B' R2 D' B2 R' D2 R" }
{ "R2 B' U2 F2 D2 F R2 B L2 B R2 D F R' D' F2 R2 U2 L' R" }
{ "L2 U R2 B2 D2 L2 F2 D F2 B2 U2 R U' B' R' F2 D L' R U' B2" }
{ "U2 R2 U2 R' U2 R2 U2 B2 D2 F2 L D' R' B' L2 U2 D' L' R2 B2 R2" }
{ "L B2 L' D2 L' F2 D2 R F2 L R' D' R B2 R' F' B2 R B L' R" }
{ "L2 B' R2 D2 F2 L2 B U2 B U2 L2 R F L2 U' B2 D B L R B'" }
{ "U2 D2 L2 D2 F L2 F2 R2 F L2 R2 U F2 U' D L' F2 R2 U2 R" }
{ "R2 U2 B2 R2 U' R2 D' L2 B2 L2 B' D2 F2 D L D B L' U R" }
{ "U2 R B2 U2 R' D2 F2 L F2 L' R2 U D' F' R F' B L2 R2 U'" }
{ "L2 U2 F2 D2 F2 L' F2 B2 R' U2 L D' B2 L' B' U' D B U2 R'" }
{ "D' B2 D B2 R2 U2 F2 B2 L2 B2 D L U' R' D L2 R F L F2 L" }
{ "D B L2 F' L U' L' D' R U2 B F2 L2 U2 B F' U2 B D2 R2" }
{ "B2 D' F2 U' B2 R2 U' R2 D B2 D2 F' B L' U' R2 D2 B L' R2 B'" }
{ "F U2 B' D2 L2 R2 B L2 F' R2 F L B L' U B R' B R2 B D" }
{ "L2 U L2 F2 U2 L2 R2 U' F2 D' F' B U F L2 B R U R' U'" }
{ "L' F2 D L2 U2 R D B R' D L2 U2 F2 D' F2 U F2 L2 B2 R2" }
{ "F2 R' B2 R U2 F2 R2 D2 R' D2 R2 U' L' F' U' L2 U2 B' R' D" }
{ "D2 L2 F2 U2 R2 U' B2 D F2 R2 F2 B' D B' D' B L U' B' D'" }
{ "L F2 R F2 R' U2 R2 D2 L U2 F2 D F L F U2 R' U R B'" }
{ "R U2 L' U2 R U2 R' F2 L2 U2 L' B D R2 B2 D' F B L D' F" }
{ "B R2 U2 L2 D2 R2 F R2 F L2 B L' F U' F2 L' R U D' F' R" }
{ "L2 B2 R2 D' B2 U2 F2 L2 D L2 U' R' B L2 U L B' R' F' B D" }
{ "B2 L2 R2 D' L2 F2 L2 D B2 R' U2 L' U D2 F' L' B2 L D" }
{ "D2 B' L' F U' B2 F' R' D L' D2 R2 D B2 R2 D R2 U2 B2 D' R2" }
{ "U' B2 R2 U L2 D' R2 B2 D' B2 U' B D2 B' R D' L' D2 R F B2" }
{ "B2 L2 R2 U' R2 F2 R2 U' D' F2 B' U L2 B D' F2 R' D' F" }
{ "B' D R2 F L' U F2 L' F' R F D2 B U2 R2 B U2 R2 B' D2 B'" }
{ "U R' B D' R B L2 F' L B2 U' F2 U' F2 U' B2 L2 B2 U F2" }
{ "D' R2 F2 R2 D R2 D L2 F2 U' F R F2 L R2 F' R F' R' D" }
{ "F2 U2 D2 L2 U2 B2 R U2 B' U R2 F U2 L F' L' B'" }
{ "B2 D' R2 F2 U2 B2 U' B2 U R2 D2 B L2 U' R' F2 L' D' F2 R F2" }
{ "B2 L2 F' U2 L2 F R2 U2 B L2 R B U2 B R F' B D L' B" }
{ "R2 B L2 U' F' D B' U R U' B2 R2 F2 R2 B2 D U2 R2 D L2" }
{ "D2 L2 R2 B2 U' R2 D' L2 U' L2 D' B' L2 B2 D L B2 D2 L' D' R'" }
{ "L2 R2 F R2 D2 R2 U2 F' D2 R2 B R' D2 F2 B D' B2 D F L' D2" }
{ "D' L2 D2 B2 R2 F2 B2 U B2 R2 D L D F2 B2 D R F2 R'" }
{ "L B2 D2 L' F2 U2 R U2 B2 R2 U F2 U' L U2 F B U' F2 R'" }
{ "R2 D2 R F2 B2 R' D2 B2 L D2 L2 F' R2 D L' U2 L' D2 F2 U2 B2" }
{ "F2 L2 U L2 D B2 U L2 D B2 U B' L' D2 R F L' R F L2" }
{ "U2 D2 B2 D2 F' R2 B' U2 F L2 F2 L F L2 D' F2 R U2 D F' D'" }
{ "B2 L' D2 R' B2 R' B2 L U2 L' U' B2 U2 B' L2 B' L D2 L" }
{ "F B2 D2 R2 B U2 L2 D2 F2 D2 B R' B' L2 R' B' R D2 B2 D'" }
{ "R2 D2 R' D2 F2 R U2 B2 R D2 R2 B' U' B2 R' B R B L R2" }
{ "D L' U B' D B' D' R2 B' R2 B2 U' R2 D R2 L2 D' B2 U'" }
{ "U R' B R F' R' U' F2 L' D' B R2 U2 B F2 D2 L2 F2 D2 L2 B2" }
{ "R2 U F2 U L2 U2 D2 F2 L2 U F' R U D2 L2 B2 D2 R F L" }
{ "D B2 L2 U R2 F2 U' F2 U B2 U' F L R' F' U' F B2 L' U' R'" }
{ "B R2 B' D2 R2 B D2 B' R2 F2 B2 R' D' B R U' R D B' D2 B" }
{ "U2 F2 L F2 L2 F2 U2 R U2 D2 F2 D R' U R' U' L2 F' U' L" }
{ "L2 U R2 U' F2 U' L2 D2 R2 B2 R U D2 L D2 F L2 U R2 D" }
{ "U2 L2 U2 F' L2 F' R2 U2 B U2 D2 L R2 B' D' R2 B2 R2 D L" }
{ "U2 R2 U2 D L2 F2 U L2 D' B2 L2 B' D B2 L' U' D' F' D' R' B" }
{ "L2 F2 D2 F L2 R2 F2 U2 B' R2 D B D F2 D L B' D L' D2" }
{ "F2 D' L B' F2 D' B2 D L F L2 F2 L2 F U2 R2 U2 F D2" }
{ "B2 L2 B2 U' F2 U2 R2 D' F2 R2 D2 B L2 R' U' F' L' B' L' U' D'" }
{ "U B2 L2 F2 D F2 U R2 B2 L2 B L D' L F U L D' F' R'" }
{ "F2 D' F2 D2 B2 U F2 R2 D L2 D2 B' R' U F' R' B2 U2 L2 B2 D'" }
{ "U D L2 F2 D F2 D B2 R2 F2 D B L2 D R' U2 F2 L F L" }
{ "U D2 R2 B2 L2 F2 D L2 D2 R2 D' R U2 B' D F' L D' F' B' U'" }
{ "L2 F2 R2 U F2 D L2 B2 L2 U F2 R B' L2 D' R' B' L2 B' L B" }
{ "D2 L2 U' F2 U' F2 U' B2 U' R2 D' F' D F B L' D2 B2 U R2 B'" }
{ "B2 U F2 U F2 L2 D2 F2 D' B2 D2 L U' R' F' U2 L2 D' L2 U' B2" }
{ "D2 F' D2 L2 F' U2 B' U2 D2 L2 B' D F L2 D' L B' D' F' D L'" }
{ "B L2 F L2 R2 F L2 R2 D2 B D' L2 U L' F L2 D B L2 F'" }
{ "B2 D' B2 D L2 D' L2 F2 D' F2 D' B' L' R B2 L R2 D' B' D B2" }
{ "U2 B2 L2 F2 D' B2 U R2 D R2 D' B' U R D' B' R2 B' D2 R'" }
{ "D' R2 F2 L2 F' L D U F2 L D2 B' D2 F2 L2 B U2 B U2" }
{ "L' F2 D' U' B R' B' U2 R' B2 D2 L2 U B2 D' L2 D' L2 D2" }
{ "R2 U2 F2 D2 F2 B' D2 B2 L2 B U2 L U F R D B2 R F' R F" }
{ "B2 U L2 U F2 U F2 B2 U B2 U L' U D L D B D2 B U" }
{ "R U2 F2 B2 L2 R' D2 R' F2 R2 B2 D' F U2 R' U2 L2 U2 D2 F2" }
{ "F' U2 F R2 F2 L2 D2 L2 B L2 F' D L B D F L2 U F' D2 B'" }
{ "B U2 D2 L2 F2 U2 B' U2 R2 B R2 D' F' U' F' R D2 B2 D" }
{ "B2 F R' U2 R2 U' F2 L2 U L U2 B2 F2 L2 D' L2 U' B2 R2 B2 D'" }
{ "R' U2 B2 R2 F2 D2 L' D2 R2 D2 R' B' R2 D' F U' F' L2 U' R2 D2" }
{ "F' U2 F D2 B' D2 R2 F' U2 B' L2 R F' U' R B2 D' F' U F'" }
{ "D' R' B D' F' D B F' L' D2 B2 D F2 U2 F2 R2 D' B2 L2 U2" }
{ "U2 L2 U2 L2 B2 D' F2 U' F2 D' F2 L D2 F R2 B2 U2 R' D' F' D'" }
{ "R2 B' U2 B' L2 F U2 D2 F' B' L' D' L2 U2 F2 B' L2 D' R2 B2" }
{ "D' F2 L2 U2 B L' D' R F' R B2 F2 U2 B2 R' B2 F2 R' B2 F2" }
{ "U' B2 U' L2 R2 D' R2 D' L2 D' F' R' B U2 R2 B U' D' F2 L'" }
{ "D L' B R' B' D' L2 B2 R' B U2 F' R2 F D2 U2 B D2 U2 R2" }
{ "D R D' B2 L' F2 L' D2 L' F' L2 U2 R2 L2 F' R2 B L2 B' L2" }
{ "D2 F2 U' F2 D L2 U' D2 R2 B2 R B' D R F' U' D2 L' R2 B R" }
{ "L2 B' R2 B' L2 B L2 U2 F L2 B L F' L2 F R2 D F' D R" }
{ "F2 U' B2 D L2 B2 U R2 D2 F2 L2 B D B L' F2 B R' D2 B" }
{ "U2 B R2 B' D2 B L2 U2 B R2 B D' F' L' U B2 U2 B R B D'" }
{ "L2 U2 L2 B2 L2 F2 B' R2 D2 B2 R2 D R U L' U' B2 U2 L' B D2" }

	}
}
if {$moves == 5} {
	set b "cross 5"
	.buttoncross.$b configure -background green
	set scramble {
{ "D2 R2 F R2 F U2 D2 R2 B' L2 F R' U' B2 R' U R F2 U2 L' F2" }
{ "R2 D' L2 B2 U2 R2 B2 U2 D' L2 D L' F2 D L R2 U R' F2 D' F" }
{ "U2 F2 U2 F' B2 D2 F' R2 B D2 B' R F U L2 B2 L U2 L F D" }
{ "R2 B L2 U2 L2 D2 F' B2 R2 U2 F' U R D2 F2 B2 D F B' U' B2" }
{ "F2 U L2 B2 L2 U2 B2 U2 R2 D' B2 R' F' B D' F2 R' U2 D2 F D2" }
{ "B2 D2 R' B2 D' B U' B' R D R2 B2 D2 F2 D' L2 F2 U2 B2 U'" }
{ "B2 U D2 F2 L2 D L2 D F2 L2 D' F' L2 U2 L2 D2 L' U' L2 U' D2" }
{ "R' D R D2 U L2 U R2 F2 L' D2 B2 D2 F U2 L2 B L2 B R2 U2" }
{ "L2 F2 D L2 F2 L2 U' L2 D R2 F2 R D' R' D B U2 F' L2 F2" }
{ "L2 B2 U2 B U2 F R2 F D2 B2 D2 R B' U' D2 F' D B' L F" }
{ "F2 L2 U2 B' U2 F2 R2 B2 L2 F R2 U R2 F R' U2 F' R' B' R" }
{ "F' R2 U2 B F' R' B2 U B D B2 L2 U F2 R2 D F2 D2 F2 D'" }
{ "F2 D2 L2 B' R2 U2 B' R2 F2 U2 B' D' L2 R U' L' D L F2 D' B" }
{ "R2 U L2 U L2 F2 L2 B2 U2 B2 U' F U D2 F B L B' D'" }
{ "D2 F2 L2 U' L2 R2 U' F2 U R2 B' D2 F' L' R' F2 U R' B2 R D2" }
{ "B2 D2 B' D' B R' F2 U R B' D2 L2 D2 B2 L' D2 R F2 R2 F2 U2" }
{ "F2 U2 D' B2 U' R2 F2 D' L2 F2 U' L D2 L' U' F L2 D' L' D'" }
{ "U R' L D' U2 R2 D B D L' U2 R2 B' D2 B L2 U2 F2 L2 F2" }
{ "U2 R' D' F U2 B F' R U' B2 R' U2 R B2 R U2 R D2 L' D2" }
{ "D2 B2 R U2 D2 L R2 D2 L2 U2 B2 D F' L B' L D B' L' R' B2" }
{ "B2 L B D2 R U2 F2 U F2 L B U2 B L2 D2 F2 U2 B2 F' U2 R2" }
{ "F2 R' B2 L F2 L2 U2 R2 U2 F2 D2 F R' D2 B2 D B' L' B L" }
{ "L2 B2 D' L2 B2 U L2 U F2 D' F D' F' L' D B' L' U2 L" }
{ "R' U2 B' R D R2 B U' F' D' B2 R U2 R' F2 U2 R' D2 L' D2 L2" }
{ "U R2 U' L2 D' B2 D' R2 U' R2 D2 F U' L' R B' U B2 R D2 B" }
{ "U2 L2 D' L2 F2 B2 U' F2 U' D2 R' B' D R2 F' D2 F2 L D2 L2 D'" }
{ "D L U' R B2 D U B U L2 F' D2 B U2 R2 D2 F' D2 L2 B" }
{ "L R2 D2 R' F2 R U2 D2 F2 U2 R' B' R2 B' R' U F2 L F D2 L" }
{ "U' B2 D2 L2 D R2 B2 R2 U F2 U' B D' F B' R D' L U' B2 R" }
{ "L B' L F U' L2 B' F' D F D2 U2 R2 B2 R B2 F2 L2 U2 R' U2" }
{ "F2 R U2 R2 D2 U F D2 B' R' D2 R2 L2 D' R2 B2 F2 D F2 U' B2" }
{ "F2 D2 B D2 B' R2 D2 R2 U2 F' B L' B2 D B L' D2 R B2 D' R" }
{ "D2 U R L D B' U' R B U' L' B2 D2 B2 R B2 L F2 L' F2 L" }
{ "U B2 D F2 D' B2 R2 U F2 D B2 L U' B U R' D' B2 R' U" }
{ "R' L' U L F' R2 D B' D2 F L2 U L2 F2 L2 U2 B2 U R2 B2" }
{ "D2 R' F2 U2 R F2 L U2 L B2 L2 F' U' L' B2 L2 U D2 F L' B'" }
{ "U2 B R2 D2 B2 L' U' B2 R' D' B L2 F' R2 U2 B' F2 R2 B D2 U2" }
{ "B' R2 D' U2 R B L B' D F2 L' F2 L U2 L' F2 R F2 L2" }
{ "B D2 B' R2 F2 D2 F U2 B' U2 D2 R U2 F U' D F' L U2 B D'" }
{ "D2 L2 B D2 R2 B' D2 F' R2 F' B2 L' D2 R D B R2 B L D' L'" }
{ "R2 B2 L B' F R2 D' L D F R2 D2 F' R2 L2 F L2 F' U2 F" }
{ "B R2 D L' U R' U F L U' L2 U2 R2 F2 U' L2 B2 R2 U2 R2" }
{ "F2 R D2 F2 L2 U2 B2 R B2 U2 B2 U L2 B L2 U' R U2 F2 L'" }
{ "L2 B2 R2 U2 B2 U F2 L2 R2 F' U R2 B R' D' R' B U2 F' R" }
{ "B U2 R2 D2 R2 F2 D2 B' L2 R U2 D' R' U2 F U R U' R'" }
{ "F2 U2 B2 R2 D F D2 R2 U' B2 D2 F2 U2 R F2 R' D2 F2 L U2" }
{ "U2 L U2 D2 L' U2 B2 L' U2 R' U2 F' U L D L2 D' F2 R' U2" }
{ "R2 B2 U2 R2 F' D2 L2 F L2 B2 L2 U' B L' B2 U L2 B2 L' U' D2" }
{ "D' B2 R2 U2 R2 U R2 B2 R2 B2 U F L2 D R2 F2 D2 L F' R D'" }
{ "B2 L2 R2 B2 U' R2 U' D2 B2 L2 U2 F' R2 U B2 L' B' R B2 R' U" }
{ "U2 F2 D L' U' R2 F L2 U' F2 D2 F U2 L2 B' R2 D2 F D2" }
{ "R2 D2 F' L2 D2 L2 B' L2 D2 F2 U2 D' L' R2 D' B D2 L' B2 R2" }
{ "U' B2 R2 U2 F2 R2 D B2 D' F2 U2 L U D R' B' U2 D' B' U D" }
{ "F2 D2 B2 U F2 B2 R2 F2 D' F2 U L U' L2 B2 L' U2 F' B R U" }
{ "D2 R2 B' L2 F B2 U2 B R2 F U' D F U L' B R U' L R2 F'" }
{ "R L2 B' D2 R2 D2 R2 U' L' B' R2 D2 U2 F' D2 B D2 F'" }
{ "U2 D2 R2 D2 F' L2 F2 R2 F' U D2 L B R U2 B' U' D2 B' R" }
{ "F2 B2 D' B2 U2 F2 D' F2 L2 D F2 R' F2 U2 D L2 U' R D F' D'" }
{ "B' U' F L' D' R F' D F' R B' L2 U2 F2 L2 D' R2 U2 F2 L2 U" }
{ "L2 B2 U2 F2 D' B2 R2 U2 F2 U F D' B D' B2 L' U D2 B' L" }
{ "L2 U2 L2 B U2 R2 F' D2 R2 D2 R U' D' L' R U L U B' R' B2" }
{ "U2 L2 F B D2 B' D2 L2 B' R2 F L' B2 L2 B' U B' L' F' L B2" }
{ "R2 D F' R2 B2 R F' L2 F D2 R2 U' F2 U' B2 L2 F2 D L2" }
{ "D F2 U' R2 U2 D' B2 R2 U L2 D2 L' B' L' F L2 D R' D' F' L2" }
{ "L2 B2 D2 F U2 L2 R2 F L2 F2 B2 L' B' U L' R2 B R F R2 F" }
{ "F2 R B2 L2 F2 R F2 R' D2 B2 R2 B' U' R2 F2 D L B' L' D" }
{ "L2 D2 R F2 L R2 U2 B2 U2 R' B L' R' F U' F2 B2 D2 B D' F'" }
{ "L2 U2 B2 U2 R2 F2 L2 U R2 F2 D' L F D' R D2 F2 D' L2 U2 B" }
{ "R' B2 U2 L2 U2 B2 R2 B2 R' U2 R F' D R2 D' R' F2 L2 R' B D" }
{ "D2 B2 L2 U2 R2 B' D2 B2 U2 L2 B' L' U D' F R2 B' L F L'" }
{ "U R2 B D2 R B R2 B' F R' B2 R2 D2 R' U2 L' B2 D2 B2 D2" }
{ "B2 R2 D L2 D' L2 D2 B2 R2 D L2 B D B2 L R' F L2 D R2 B2" }
{ "F' R2 U2 B' D2 B U2 D2 F' D2 B' D B2 R D2 F U2 B R' F L'" }
{ "F2 U2 D2 F U2 B D2 F' U2 R2 B D F' R U F R' F' B L2" }
{ "U F D' L' B R U' L' B R2 B R F2 L F2 R' B2 F2 R' U2" }
{ "B2 U F2 U B2 D' F2 B2 R2 F2 D2 R D' B L R2 F R D R' U2" }
{ "D2 R' B2 L' D2 R2 D2 F2 R' U2 R2 U' D2 B D' F R' D F2 U" }
{ "L U2 B L' F2 D2 L2 U B D2 U B2 F2 R2 D F2 L2 F2 D U2" }
{ "U2 R2 B U L F D2 U' L' D' B2 R2 U R2 U2 B2 D' B2 D B2" }
{ "U2 L2 D2 B' L2 F' D2 F2 U2 R2 B' D' R U F2 L' D' F L B' U'" }
{ "U2 L2 F R2 B U2 F L2 F2 L2 U R' D2 L F' B' L2 U R U' B'" }
{ "B2 R2 L' D' L' U' B' D' L' B U2 R2 B2 U2 F2 U2 B U2 R2 F'" }
{ "F D2 F' R2 B2 L' D R' U' R L' F2 L F2 R2 U2 L' D2 R' D2" }
{ "D' L B D R2 U2 R D L D L2 F2 D2 F2 D2 R2 F2 U' B2 D" }
{ "B2 D2 B2 D2 R B2 D2 R2 F2 B2 R' D R U2 B D2 B' D' B2 D'" }
{ "U2 R2 D2 L2 U' L2 D' L2 F2 U2 D2 F' L B2 L D F R D' R' D'" }
{ "R2 U2 F R2 U2 F2 U2 F' R2 F D2 R F' L B2 U B L2 F D L2" }
{ "U2 L2 B2 R2 B D2 F' L2 F D2 B' U R' F2 D2 F U R2 U2 F B" }
{ "F2 U2 F' L2 F B' D2 L2 B2 R' D2 L B L' R2 B2 D L'" }
{ "U2 B' L2 B' L2 R2 U2 B U2 L2 B D' R2 F' R F B2 L U' R D2" }
{ "L' D2 L U2 B2 U2 R F2 R F2 D' B D' L2 B2 D B2 U F B" }
{ "F R2 L2 B2 U B R' D U B R2 B F' R2 B F2 L2 D2 R2 U2" }
{ "U2 R2 D F L2 B' L' U2 B' D' F2 U2 F2 D L2 B2 D R2 B2 U2" }
{ "F2 R' D2 L' D2 B2 R U2 R U2 B R2 F' U L' R F2 D' R2" }
{ "D2 B2 D2 L' U2 D2 B2 R2 U2 L2 U2 B' L' B R' U' L' F' B' U'" }
{ "D2 L2 U R2 F2 U' D' R2 D B' L B2 R D2 R' F' U L' F2 D'" }
{ "D' B2 U R2 B2 L2 D2 R2 D' R2 B2 R U2 D F L' R' B2 U' L2 F'" }
{ "B R F R2 B U2 B2 D' B D2 F2 R B2 D2 R2 U2 R2 B2 U2 R'" }
{ "R' U' L' D L' U F2 U L' F U' L2 B2 D2 L2 D' R2 D R2 B2 D2" }
{ "R2 F2 U' L2 F2 D L2 D2 R2 F2 D B' R F' U R U' D B' U R'" }
{ "L2 B' L2 B' R2 B U2 D2 B L2 F' R F' U D' B2 L' U2 L D'" }
{ "B2 L' U2 B2 R' U2 F2 L' F2 R2 D2 F' U L2 U2 F2 D L R D2 R" }
{ "U2 L2 U2 L2 D B2 R2 U R2 D F D R' D2 L' F2 L2 R' F B' R2" }
{ "B' L2 R2 F' B2 U2 D2 L2 B' D2 B' R D2 F2 B L' U R D L2 R" }
{ "F2 B2 U' D B2 U' L2 D' B2 D L2 R' U' F2 L2 F R B' L B L2" }
{ "B2 L2 U2 B2 R2 U R2 U' L2 U' B2 L U' L2 U B' U' F' B2 U' R" }
{ "U' F' U2 R2 L D2 F' D B' U2 R U2 L2 D2 R L2 U2 R' F2 L'" }
{ "F2 B2 L2 F2 U2 R2 U F2 U' R2 U' F L2 R' F2 U L R F2 B' D" }
{ "L' U2 R B2 L B2 U2 D2 B2 L2 U2 F L2 D' F D F2 U' F' B L'" }
{ "F' D2 B U2 F2 B' U2 L2 U2 L2 F' D' R U' L D2 R B L' U2 R'" }
{ "D U B2 D' L D' B2 F2 R B' U2 R2 B R2 L2 F2 U2 B U2 B'" }
{ "F2 L2 U2 F' L2 F' U2 L2 B' R2 B2 R B U2 L F2 R D' L U2 R'" }
{ "R2 D R2 U2 R2 D2 F2 D' F2 R2 D F B R F' R2 D R' F L' D2" }
{ "B2 D L2 U F' D' B2 L' D R' B R2 F R2 U2 R2 F2 D2 F R2 D2" }
{ "B' F D2 L F R U' R D L' U' B2 L2 D B2 L2 U B2 R2 D L2" }
{ "L' D' B R' L2 F L B2 U' F D' F2 R2 U R2 F2 U2 R2 B2 D U2" }
{ "F' D2 B L2 F' U2 B R2 F2 R2 U2 R D F R2 B' D' L F2 B D'" }
{ "U2 L2 B2 U2 F2 U B2 U' B2 D B L D' L2 F' U' L2 B2 D" }
{ "U F' D' U L D F' R L2 U' F2 U2 F' U2 L2 U2 B D2 F' R2 F'" }
{ "L2 B2 D2 B2 U R' F U B2 D L2 F L2 F' D2 L2 D2 U2 F2 L2" }
{ "R2 F2 R2 F2 L' D2 F2 R D2 R B2 D' B U2 R B' R D' F' L" }
{ "F B' R2 D2 F R2 B U2 L2 B' L' U2 R' D' L2 D2 B' R B2 L'" }
{ "U' L D' R' D' R L' B U R U2 L2 B2 F L2 B' R2 B' D2 F U2" }
{ "F D2 R2 B U' R2 F R U2 L2 D L2 B2 L2 U2 B2 D F2 R2" }
{ "U' B2 L2 U F2 D R2 D2 B2 U F B2 R F2 L F D' R' D2 B' D" }
{ "R2 D2 R2 U2 B' D2 R2 B2 D2 F2 R2 D' F B2 L' R' F U F2 L' D" }
{ "R2 D2 R' B2 U2 L F2 R2 B2 R' F2 D' L2 F L' B2 L B' R D' F'" }
{ "F L2 R2 B' D2 F2 R2 B' L2 F U' F2 R' B L F2 D2 R2 B2 D' B2" }
{ "D B D L2 B F D' R2 L' B2 D B2 F2 R2 B2 D L2 D2 R2" }
{ "U L2 D2 F2 D2 B2 L2 D2 L2 D F L2 D' F B2 L B2 L U2 B' D" }
{ "D' R2 F2 R2 D F2 D L2 B2 D2 F R D F2 B' U2 L' F' L' U2" }
{ "U' L2 D' R2 F2 L2 U2 L2 D2 R2 D F' L' F' R U2 D F2 U F2 R" }
{ "D2 R2 F D U2 L' D2 F' D L2 D2 B F U2 B' R2 B2 L2" }
{ "U2 F2 L B2 L2 B2 U2 R D2 L2 B' L2 B U2 R' D' B2 U D" }
{ "R2 U2 B R2 L D L' B' D2 R2 L' D2 U2 R' B2 U2 R' U2 B2" }
{ "B2 D' L2 U' B2 L2 U B2 D R2 D' B' U F' L F R' B L R D" }
{ "L2 B' L2 B2 U2 B2 U2 R2 B2 R2 B' L' U2 F B' D R' B2 U R2 D2" }
{ "D R' U L B' U R2 B U B' L2 B U2 B' L2 B L2 B' R2 B" }
{ "F' U2 F' R L D R D F' R' U' B2 L2 U2 B2 U' R2 L2 F2 R2 D" }
{ "L2 U L2 F2 D L2 F2 R2 B2 D' L2 B R' D2 B R2 F' L2 U2 R B'" }
{ "F R2 F' L2 F2 L2 U2 B D2 F U2 D' F R2 D2 R F' B L' D2 F'" }
{ "R2 L B' U' B D2 R2 F2 U B2 R' U2 B2 U2 B2 R2 L' F2 L2 U2" }
{ "B2 R2 U2 B R2 B D2 L2 R2 D2 R2 D B2 U F' D L B' U2 F" }
{ "D' L2 U R2 B2 D2 L2 D' L2 D R U F' D2 F' U2 F' R F'" }
{ "R2 U2 L2 D2 R2 F2 U F2 U L2 U' F B2 L' U' L' D2 L' R2 U' D2" }
{ "D' F' D U L F R' L' B' F' R2 U2 F2 R2 L2 U' R2 U' B2 R2 D2" }
{ "D' L2 D' F2 L2 R2 U2 D' R2 B2 D' R' U D2 F' U2 L' F2 D2 B R2" }
{ "F' B R2 F2 U2 D2 F' D2 B R D' L F' B2 U L B2 R B R" }
{ "F D U L' B L' B F L D B2 L2 B2 D2 L2 F2 D2 R2 U' R2" }
{ "B2 L2 F' L2 R2 B' U2 L2 U2 F2 U2 D' F U B L' F' R2 U' D2 R'" }
{ "R' F2 B2 L' F2 L B2 L D2 L U2 B' U F' B' R2 U' L F' R' U2" }
{ "R2 U' R2 B2 D L2 B2 L2 R2 U2 L2 F' U' R' F U2 B L2 U R2 D2" }
{ "D2 F2 B2 D' B2 U L2 F2 R2 F2 D R' B R B' L' R2 F' B" }
{ "F2 R2 F2 U2 D B2 R2 D' B2 R2 U2 B' L B2 U' R2 U' R2 D2 B2 R'" }
{ "D2 L U2 D2 R U2 R U2 B2 L' D2 B' D2 R' D' L2 F R F2 B2 D'" }
{ "L2 U2 F' L D U' R' F' U2 R D2 L2 U2 L2 U2 F2 L D2 L" }
{ "B R2 B' D2 L2 B D2 R2 B2 R2 B R D F' L2 D' B2 L' R B L2" }
{ "U2 B2 U' R2 D' B2 U R2 U L2 U' F D' R2 B L D2 B2 U B2 D" }
{ "F2 U B2 U R2 B2 D' L2 R2 U2 R' U' D F' B' D2 L U2 B L'" }
{ "F2 R2 U2 B2 D F2 R2 D L2 U' L2 F R' D' L2 D2 F U2 B2 U" }
{ "L2 U R2 D' L2 D' R2 U B2 L2 D2 R' B D B' U F' D L' B2 L'" }
{ "U2 D B2 R2 D R2 D R2 U2 L2 F2 L' U B L2 D2 F R B U2 R2" }
{ "U2 L' B2 L' D2 L' R2 F2 D2 L2 D2 B' D2 F' R2 U R B L2 R2 D'" }
{ "U' F2 L2 U2 F2 U' L2 D' L2 B2 U F R' U' D2 L2 F2 L2 B2 U2" }
{ "B' U2 B2 D2 R2 B' U2 R2 D2 F2 L2 D' B' U F L' R' U R' D L" }
{ "U' L' U R' B2 D B2 L B D' R2 D B2 D' B2 L2 U2 B2 D F2" }
{ "U' F R D2 B D F2 R2 D R' D B2 D2 F2 R2 F2 D2 B2 U F2 U" }
{ "D2 L' D F2 D L' F U R' U2 B R2 F' L2 D2 F U2 F' L2 F2" }
{ "L2 R2 B2 L2 U F2 D' L2 B2 U D' L' B R' D' F2 U F D2 R U" }
{ "B2 U L2 U2 F2 U' F2 U' B2 U' R2 B' L2 R2 D' L D' F2 B2 R2 U'" }
{ "R' U F2 R D U2 F U2 B' D B2 R2 D2 R' B2 U2 L' D2 L'" }
{ "R2 B' U2 R2 F' D2 F R2 D2 F2 D2 L F2 U B R2 D2 R F D2 B'" }
{ "F2 U2 L' D2 F2 D2 R' B2 L2 U2 B2 U B' L' U2 L U' D' R B" }
{ "F2 L2 U' L2 B2 U' R2 F2 L2 D F2 B' R' D F2 R2 D F2 B2 R' D'" }
{ "U2 F' U2 B' U2 F2 U2 L2 D2 B L D' L R' U2 B R U' F' B" }
{ "B2 D2 R2 U L2 R2 U L2 U' L2 U B' L U F U' D2 L2 B' U'" }
{ "B R U' R2 U R' U2 R' U F2 L' U2 F2 D2 R F2 R2 L' U2 L'" }
{ "B2 U L2 U R2 F2 R2 U2 F2 B2 D' F' U' L' B2 U2 F L2 F' L'" }
{ "F2 D2 R2 D2 B R2 U2 B' D2 L2 B' U D' F' L U' D L F B2 D2" }
{ "D' R2 D2 F2 R2 D F2 L2 D F2 D' L U L U' D' B' D' L' D R" }
{ "B2 L2 F2 D' F2 D' F2 L2 D2 F2 U L' F D' L2 D2 L2 F' B U R" }
{ "B' R B F2 R F D2 B L D2 B2 D F2 L2 D F2 R2 L2 U L2" }
{ "U2 F2 L2 B2 U R2 U2 L2 D B2 U' R' F U D' F' L F' U D2 R2" }
{ "L2 B2 D R2 U B2 R2 U2 R2 F2 B' D R U F L2 F2 L U' B2 D" }
{ "R2 F2 D' L2 D F2 D2 B2 R2 B2 R2 F R U R U2 R' D2 R D'" }
{ "R2 D2 F2 B2 D2 R F2 L D2 R' U2 B U' D2 L' D2 R D L' D'" }
{ "F2 B2 U2 L2 D R2 F2 D2 L2 R2 B2 L' D L' B R F D2 R' U L" }
{ "D' R2 D F2 B2 L2 U' B2 U L2 D L' F' L B' U D2 L2 B' R2 U" }
{ "R2 D2 F2 L' R2 F2 B2 U2 R' F2 U2 B' L2 U R' D R2 F D2 R U2" }
{ "F2 R2 B2 U2 R' B2 D2 L' F2 D2 B2 U' L U2 F2 R' F' D' R B" }
{ "R D2 L2 U2 R U2 R2 F2 U2 R D2 B' D' F2 L F2 U B D F2 D'" }
{ "F2 R L2 D2 U B' R2 L' U B L' D2 B2 U2 L' U2 B2 R' B2 R' L2" }
{ "D2 L2 F2 D2 L2 F R2 B U2 R2 F2 L' R' B L U' R2 U2 L' F" }
{ "R' U R2 D2 B L B' D B F D B2 F2 D' F2 D R2 L2 F2 L2 D" }
{ "B2 D L' D' B' D' B2 F' U' R2 D2 F2 D2 F2 U2 L F2 R F2" }
{ "L U L' D L2 B D' B2 D' R' L2 B2 D R2 U' R2 L2 U B2 R2 U2" }
{ "U' R B' U F' L' D2 F' R' D' U2 B L2 F L2 F2 U2 F R2 D2 B'" }
{ "L U2 L F2 L' D2 R F2 U2 D2 R D L F' R2 F U2 R B2 D2 L2" }
{ "B L2 B' R2 U2 B2 D2 R2 B R2 B' R' F D2 R U' L U R F B'" }
{ "R2 D2 F2 D2 B2 D2 F' L2 F' R2 U2 L' U' B2 L2 R F R U' F R" }
{ "B2 D' L2 U D F2 B2 D' L2 B2 U' B' U R U L R2 D2 L U2 R'" }
{ "B2 R2 D' F2 L2 B2 D2 B2 R2 B2 D R D' R' F U D2 R' D2 B'" }
{ "F L2 U F2 R' B F L2 U R2 L2 D2 R2 F' U2 B' U2 B2 L2 F" }
{ "U2 F2 D' B' U B D2 B' R D' F2 U F2 R2 L2 U R2 L2 U R2" }
{ "L2 D' U L D2 R U' B' L' F R U2 R U2 B2 L F2 L' B2 R2 D2" }
{ "F D2 B U2 F' D2 B R2 F' L2 R2 U' D2 L' U2 D' R' F2 B2 D' R2" }
{ "B2 R2 D2 U2 B F2 L B2 D U2 B U2 R2 B' R2 B D2 B' F' R2" }
{ "F2 D2 F2 U2 R2 U2 R2 D2 R F2 R2 D R' B2 L' F' R2 B' U D R" }
{ "B' U2 L2 F2 L2 D2 L2 B' L2 D2 F2 U L2 R2 B2 R2 B R F L D'" }
{ "F' R2 U2 L2 B' D2 F L2 U2 D2 F2 R' F2 U2 R U' R2 U F' R U" }
{ "F2 D L2 U L2 D2 L2 B2 D' L2 B2 L B D2 F U F' B2 L D' L" }
{ "R2 F2 B2 U' R2 U2 F2 L2 D2 R2 D' B' U2 B2 R' B R' D2 L R2 B'" }
{ "F2 D' F2 D L2 F2 U2 R2 U D' F' R' B U' B R F2 U2 L' D L2" }
{ "L2 R2 B' U2 B R2 B' D2 B R F2 L' U L U2 R' B' R" }
{ "R' D2 L' B2 L2 D2 R' D2 F2 U2 R U' B U2 R' F R' B2 U B' L2" }
{ "B2 L2 U2 F2 D L2 U L2 F2 B2 U F' R F B' D B2 R2 F' D'" }
{ "U' L2 D' B2 U' L2 B2 R2 D2 B2 D2 B' R2 B2 D B R D R U B'" }
{ "L2 B2 D2 F2 B U2 F U2 D2 L2 U2 L U L2 R U' B' L' D' F' L2" }
{ "U B2 D2 L2 R2 D' R2 U2 F2 L2 R' F U B2 L' R2 U2 L B' R'" }
{ "U2 L2 B2 D2 L2 F U2 R2 F D2 F2 L' F B' R' D L F' U' L U'" }
{ "D L' U B2 R' U2 B F2 D' R B2 R2 D' R2 D2 F2 L2 D2 B2 F2 R2" }
{ "U F2 U2 D' R2 D F2 U2 R2 F2 D2 B R F2 U' D L D2 L2 B" }
{ "B2 R' D U2 B2 R B2 R2 D' L2 U2 B2 L2 F D2 R2 D2 L2 F2 U2" }
{ "U B R' B2 L2 U2 B' R U R' D2 R' U2 R2 B2 L B2 R' D2 L2" }
{ "F2 R2 U' D2 L2 D R2 D' F2 B2 L2 F' L' R2 U B' U2 B' D' R" }
{ "U2 B2 L2 R2 U' R2 F2 B2 U B2 U B R' U F2 B D2 F' U R' B'" }
{ "F2 B2 L' F2 B2 R' D2 B2 R' D' L B2 U B' L D R2 U F" }
{ "F2 L2 B2 D L2 R2 F2 R2 D B2 L B2 R U2 B2 D' L2 F U2 B D'" }
{ "U L2 R2 U2 L2 D' F2 U' F2 U R' U2 B L F U' R' D2 R D2" }
{ "B R2 D2 B' L2 U2 B' D2 F D2 B2 U D2 B R U' F' D2 F' D2 B'" }
{ "F2 U' R2 D2 F2 B2 D' F2 D R2 U F L U L' B' D2 R2 F D F'" }
{ "B' R D' U R F R2 L B2 U R B2 L' F2 D2 F2 R F2 L2 F2 R'" }
{ "L2 U' R2 D' R2 B2 U2 R2 U F2 D R F' B D2 R2 F U B' U2 B'" }
{ "R2 F2 U2 L' D2 L' D2 L2 B2 D2 R2 F' L2 B2 U D' F' D' L' B R2" }
{ "R U2 R2 D F R U' B2 R' B2 D2 R2 U' B2 U F2 D' F2 U2 B2" }
{ "U' B' D' F' R2 U F L D' B' D2 L2 F2 D U2 B2 F2 L2 D' R2 L2" }
{ "B U2 L2 F2 D2 L2 F L2 F' R2 U B D R D2 L F U L'" }
{ "D2 F L2 U2 B2 U2 F R2 F' R2 B2 L' U D' B2 L D' R' U' B D2" }
{ "B' L2 B L2 U2 B2 L2 U2 B' D2 B D' L' R2 F' U F2 D L' F' U'" }
{ "U F2 D' B2 U' L2 D' L2 D F2 R D2 L' U' L2 B R F' R2 U L2" }
{ "B2 U' B2 R2 B2 U' B2 R2 U2 L2 R' B D' L D2 L2 R' U2 R' D2" }
{ "B' L2 B2 U2 D2 B' R2 U2 D2 B2 U2 L' D L D' F2 R B U' R2 D2" }
{ "R' D' R2 B2 D R2 F D L' U2 F R2 U2 F' D2 B2 R2 D2 F L2" }
{ "U2 R2 D L2 F2 D L2 U2 B2 U' R2 F' L' B' D' F B2 D2 F U'" }
{ "F2 B2 R F2 R' B2 R2 D2 R U2 B D R2 U' B' R2 D2 R" }
{ "R2 U R B2 R2 B2 F2 U' F' U' R2 B2 L2 B2 D U2 L2 D' F2 U2" }
{ "F2 D' B2 R2 U B2 U F2 U2 L2 F' U' R' U F L2 F2 B2 U R'" }
{ "L' B2 R' F2 L B2 L' F2 D2 R D' F U' L2 F2 R' D2 L2 U D2 B2" }
{ "R' D R' L U F2 U L2 B' F R2 F2 U' B2 L2 D' R2 D' B2 D L2" }
{ "L2 U2 D' R2 B2 U2 B2 D L2 F2 R B L2 D2 L R2 F2 B' D B'" }
{ "L2 R2 U F2 D L2 R2 B2 D' L2 U R' D2 F U L' U R' F' D2 F" }
{ "D' F2 L2 R2 U B2 U2 F2 B2 R2 U L' D' L2 R D B D2 R U2 F2" }
{ "B' L2 B' U2 R2 B2 R2 D2 B2 D2 F R F L2 D' B' U' F2 R' D' B'" }
{ "D' U B D2 R' D2 F' R L2 F L2 B' D2 U2 B' D2 B' L2 B2" }
{ "F2 U2 F2 U L2 F2 B2 U2 D' F2 D R' D' L D2 B2 D L2 F' D R2" }
{ "R2 F2 U2 D2 B U2 F2 B' L2 U2 B R D2 F B L' U F2 B L R2" }
{ "D' F2 D' F' U B R2 U2 L D' B' D2 U2 B R2 U2 F U2 L2 F'" }
{ "U' F2 D F2 D R2 D R2 U' R2 D L R U' D2 L B2 U2 B' L' U2" }
{ "D' L2 B2 R2 U2 B2 U F2 D' B R B2 U' R' F B2 L2 U' B'" }
{ "B2 R2 B2 L2 U' R2 B2 U F2 U' D L' F' R' U' B D' B2 R2 F'" }
{ "B2 D' L2 B2 U F2 B2 R2 U R2 U2 L F2 B R F2 U B' R' F' D'" }
{ "U2 R2 D2 F' U2 L2 F' B2 L2 F2 R2 D' B' R B' L2 B2 R B2 D B'" }
{ "U2 L2 D B2 L2 D B2 U2 R2 F2 D F' U' R' B2 L2 R D2 B' U2 R'" }
{ "L2 B2 D2 L2 B R2 B' U2 F L2 B2 L U' F U' B2 L R2 F' D2 B'" }
{ "U2 L2 U2 D2 F D2 B L2 F2 R2 D' F2 B' R U F' B' L' U' B2" }
{ "R2 D2 L2 F2 L2 B2 U F2 B2 D' B' D' B L2 U' F' R' U L' R2" }
{ "D' F2 D F2 R2 U' B R' D U' F' R2 F2 R2 F' U2 L2 F' U2 B' D2" }
{ "L' B L2 D' R B U' B D R2 B' R2 B L2 D2 B' D2 B R2 U2" }
{ "F' D2 R2 B2 D2 B' D2 R2 F2 U2 L2 U' R' U2 B2 L' B U F D' B2" }
{ "B' D' B D2 R D L' B2 D' L2 F D2 F R2 F' U2 B' D2 R2 D2" }
{ "U L F L' F D U F D B2 L' B2 R2 B2 R F2 R2 D2 B2 D2" }
{ "U B2 F' D U2 B R U' R F' U2 L2 U' R2 U' B2 D2 F2 D' R2 F2" }
{ "U2 R B2 R2 B2 R F2 R U2 R F2 B D' L' B' L2 R F' L U2" }
{ "B D2 L2 B L2 U2 L2 F D2 F' B2 D L R2 D F' R2 F R F2" }
{ "U2 F2 D' L2 F2 B2 U2 R2 D' L2 R2 B D' F U' R U2 F' R2 D B'" }
{ "F2 R2 B' R2 F D2 L2 B2 L2 F2 B' R' U2 R2 D' B' L2 U L' D R2" }
{ "B R' B R' L2 B D' R2 L F2 D' U' F2 D F2 R2 U R2 B2" }
{ "R2 F2 R2 D2 B D2 F' L2 F' U L' F U' B R' D L' U' R" }
{ "U2 L' U2 F R' D U R D' F R2 B2 D B2 D' F2 L2 F2 U B2 D2" }
{ "L U2 D2 F2 B2 R U2 L' D2 B2 L F D2 R2 D' B2 L F U' B'" }
{ "U2 B R2 U2 L2 U2 B' R2 F2 L2 F' U' D B' D2 L' R U R D'" }
{ "R F' R2 L' B' U2 L D F' D2 B2 D2 R' F2 U2 R2 D2 R' F2" }
{ "D2 R2 L' D2 F' L B L U' B L2 B2 U B2 U2 R2 D' L2 U' R2 U2" }
{ "F2 U2 L2 F2 U' L2 R2 F2 R2 U' L2 B' U2 D2 L2 U' R B2" }
{ "D L2 F2 U L2 U2 R2 D F2 B2 D2 L F' B' U B D2 F' U2 D2 L" }
{ "U' R2 U' B2 D2 B2 D F2 D2 F' U2 R B L' D' F L2 B2 R" }
{ "B2 R2 B' U2 B2 L2 R2 B' U2 R2 B2 U F2 R' U' L2 F' L D F' D2" }
{ "U B' U2 L2 D B2 L2 D' R B' R2 F2 D' R2 D2 F2 D2 L2 U F2 R2" }
{ "U B2 U F2 D2 L2 D' L2 D B2 D' F L2 D2 R' U D2 B' L' U' R2" }
{ "D2 R2 U D B2 R2 U' F2 L2 D L2 B L2 R' D' L R' B2 D' R2" }
{ "B2 U B2 R2 D2 R2 D' L2 U' R2 F2 B' U' L2 F' R2 B U' F2 L" }
{ "F L U R2 B2 F L D2 L2 D' B' U2 F' D2 F' D2 L2 B F2 R2 L2" }
{ "R D2 R' D U2 F U2 L' F D B2 R2 D U2 B2 R2 D' B2 D' B2" }
{ "L2 F2 L' U2 F2 R' B2 L U2 F2 U' B R2 D' R' U' F' L F2 U2" }
{ "L2 D2 L F2 R U2 L B2 L2 D2 R' D' R' B' L2 B2 U' L U2 R2" }
{ "R2 B2 U' B2 U2 R2 U F2 D B2 L2 B' R' B' D F R U' D2 F R" }
{ "D' F2 D2 B2 D L2 F2 D L2 D F2 L' U2 R2 F' D B2 R F R U'" }
{ "U2 F2 U2 R' B2 U2 L F2 D2 B2 L2 U F L U' B R' F2 U' B' R'" }
{ "L R D2 B2 L' F2 U2 R' U2 R U' F' L' B' U' B2 L' F2" }
{ "F R2 B D2 F D2 B' L2 F U2 B' L B2 U R2 B' L' D' F' U B2" }
{ "F D' R2 B' U' B D B2 F' D2 R2 B2 R' D2 R D2 L2 D2 L B2" }
{ "D2 R2 F2 R2 F2 U D2 F2 U L2 U F' R' D' F D' L F2 L2 D'" }
{ "L2 U2 L2 R2 F D2 L2 D2 F2 L2 R2 U' R' D' B R' B U B2 D" }
{ "L B2 D' R2 B L B R2 F' U2 L' F2 D2 L2 F2 L' U2 R2 D2 F2" }
{ "F' U2 R2 U2 B R2 B' L2 B2 D2 B U D L' U' B' L' B2 U" }
{ "L2 B U2 D2 F' R2 B' D2 F D2 B2 L B' U' D' R2 U R' B L' F" }
{ "R U2 F2 R' B2 L D2 R F2 U2 R2 F' R B U' R D F' U2 B'" }
{ "L2 B2 U' D2 F2 L2 U F2 B2 R2 D2 B' U' L B L2 D' L D B2" }
{ "B2 U' L2 B2 D' L2 B2 D' B2 L2 F' R2 F B' L' F U2 B U' D" }
{ "F2 U' L2 D' B2 D L2 D' R2 B2 R' D2 L D R2 D2 B2 R2 B' U' R2" }
{ "F2 L2 U' B2 U2 F2 U F2 D B2 U' F' R' U' D' L' U2 D' F' D2 R'" }
{ "F2 R2 B R2 B L2 B U2 B2 U2 R2 D' L U D2 R F U F2 B2 D" }
{ "B2 R2 U R2 B2 R2 F2 B2 D' R2 D B' L U2 F B' D' L R' U' R2" }
{ "U' B2 U F2 R2 B2 U2 R2 U' B2 D F D R' B L F2 D' L D" }
{ "B2 D B2 L2 U' F2 R2 D' L2 U2 L2 R' F U' F' R' U' L2 U B D2" }
{ "R B' L2 D' B' F R L2 D R2 D2 B2 D L2 U2 B2 U2 B2" }
{ "L2 F2 U2 R2 U2 D2 F' L2 R2 U2 R' F' D F' B D R' F' D" }
{ "L2 B2 D2 F2 L F2 D2 R B2 R2 F2 D' B' L D' B L2 F L R2" }
{ "R2 B D2 R F' U' R2 L D' F2 R2 B2 F R2 U2 F D2 B' L2" }
{ "R D' R' L' B' F L2 D F' R2 F' U2 F D2 B' R2 B L2" }
{ "L2 B' L2 R2 B U2 B' L2 F' L2 U2 D' B' L2 F B L' D' R' F L'" }
{ "L2 U' B2 U' R2 D L2 B2 U2 B U2 F L D' F2 L2 D' B L" }
{ "R' L U2 F2 L D' L U' F L2 B2 F2 U L2 D2 R2 D B2 L2 D" }
{ "R2 D' R U R' B2 D' F2 L' D2 B' D2 U2 L2 F U2 F2 D2 U2 F" }
{ "L2 F2 U2 L2 F2 R2 U' B2 R2 U2 F2 B U' B2 U' F2 U R' D' R' D2" }
{ "U L' B2 F' U R L B' D L D2 B2 R2 D' B2 R2 U' F2 U' F2 D2" }
{ "F2 D2 F2 D R2 F2 R2 U2 R2 D' R2 F' D2 L2 D L B U' R' D2 B2" }
{ "D L2 U2 R2 B2 L2 D' F2 D2 F2 D2 F' U2 D2 L' U2 R2 D' B R2 D2" }
{ "F L D2 U2 R' B U R L2 F2 U' L2 F2 U B2 D2 U F2 D" }
{ "D2 L2 D2 F2 L2 D2 R' F2 B2 L F2 U B2 D' L F U' F' D F" }
{ "B2 U L2 B2 D F2 D B2 R2 U L2 F' D L U' L R2 U D' R2 D2" }
{ "L2 D B2 D2 B2 L2 U R2 D2 F2 L2 B R' D R2 D R2 F D B D" }
{ "L2 B' R2 F2 U2 R2 B U2 B' L2 F D R' B2 R U' R U B' L2 U'" }
{ "F2 D2 R2 F2 R2 F L2 D2 F U2 R2 U D' F L F2 D2 R U2 D2" }
{ "B2 L' F2 L' R' D2 F2 B2 R B2 L U' R' D' B' R D2 F L' D2 B" }
{ "F2 R2 D' U2 B' U R B U' B D2 L2 F R2 F' R2 F2 L2 U2 R2" }
{ "D' R2 B2 U F2 D B2 L2 U2 F2 U' F B D' L' U' B L' R' U F" }
{ "R' D F2 R' U' B R2 L U' F R2 F R2 D2 U2 B2 D2 L2 B' U2" }
{ "B' U' L' F R' D2 L' D U R D L2 D2 R2 D B2 D' U2 L2 U R2" }
{ "U2 R2 U' F2 D R2 B2 D' R2 B2 D' R F' B U' D' R U2 D' L" }
{ "D2 U F R' L' U2 R2 L D R D2 L' B2 U2 R D2 L' B2 U2 R'" }
{ "L' F2 D' U2 F2 R' L2 D2 B' U' R2 F2 D2 R' U2 L' U2 B2 R U2 L" }
{ "F R' L2 U' F L2 F' R' F U F2 D B2 U' F2 R2 D R2 L2 U" }
{ "D2 L2 B2 R2 U' B2 U L2 D L2 F2 R U2 B2 L' D B' D' L2 B2" }
{ "U2 F2 B2 L2 R2 D2 R2 D L2 F2 D' F' L B U2 B2 L' D' B' R' F" }
{ "F2 U' B2 L2 U R2 D L2 U2 R2 F2 R' F2 D B' U' D' R B2 U' L'" }
{ "B2 D2 B D R D2 B2 U2 B' F2 U' R2 U' R2 B2 D' F2 D B2 U2" }
{ "R2 F2 D2 F2 U F2 L2 R2 D B2 R2 F R' B' D' R' B' R' U B' R2" }
{ "U2 L2 U2 R2 B2 U2 F U2 R2 B' U2 R U' F2 D' L R2 D B' L2" }
{ "R2 B2 L2 D' R2 U' B2 U' R2 U' D L' F2 B U B D' L' F2 L2 R'" }
{ "F D2 L2 B' U2 R2 B' D2 L2 B' U2 L R' D' B' R2 D F2 R' B' R2" }
{ "U' R2 L F' R' B' D B2 F D F2 D2 U' R2 D L2 D' L2 B2 D" }
{ "D F2 D' F2 L2 D B2 L2 U' D2 F U2 L' D2 F' D F' D2 L' R'" }
{ "U' R2 F2 B2 U B2 L2 U' R2 U' B2 L' F' B D F' U2 D F R' D'" }
{ "R F2 R' D2 B2 U2 D2 R' U2 R' B' U' B2 R F2 D F D L2 R2" }
{ "D L F2 U' L D2 B2 L' D' L2 D2 B' D2 U2 F' L2 B' U2 F' L2" }
{ "D2 B2 L2 U2 B2 U F2 L2 F2 D L2 F' U2 R' U' F2 L' D' L2 D2 L'" }
{ "U2 B' L2 D2 F U2 B L2 B' D2 B U D' B L2 U L' B2 R D' L'" }
{ "D2 F2 R2 D' L2 U F2 D F2 B2 R2 F' D' B' R U' B' D2" }
{ "L B2 L' F2 R' B2 L F2 B2 U2 R F' R F2 D F' L D2 F' U B2" }
{ "L' D2 B2 L' D2 F2 R' F2 R B2 L U F B L2 U2 D F' L B'" }
{ "F' R2 U2 L2 R2 F L2 B' R2 U2 F L' B2 D2 B R2 U' B' D L B'" }
{ "F2 B2 R2 U F2 U L2 U L2 R2 D L U2 L' U2 B D L U' R D2" }
{ "B2 F2 D F' R2 D L' B2 F D U2 R' F2 R U2 F2 U2 L D2 F2 L2" }
{ "D' F2 U2 F2 B2 R2 U L2 F2 U F B' R' U F' B2 R2 B2 R2 D2 R'" }
{ "F' R2 U2 B2 U2 F2 R2 B' L2 B' L2 R' F U F' U' D' F' B' D2 L'" }
{ "D2 R' B' U' F U2 L2 D' F' L B2 R2 D F2 L2 U R2 D U2 B2" }
{ "L U2 F2 L2 D2 R2 U2 F2 L F2 R' B L D' B2 U' R F2 L' D" }
{ "B2 R F2 D2 F2 L' U2 R' B2 D2 L' U' F R' F2 B' L U' D R' D'" }
{ "D2 L' B2 L2 R' U2 B2 D2 F2 R D2 B L2 R U' F L D R2 D2 B'" }
{ "D B D L B' F2 D U' B' D' L2 D' B2 R2 U2 L2 D2 R2 F2 D'" }
{ "R2 F2 R2 U' R2 D2 L2 U L2 U' L U D' R2 D2 B' L2 F' L' B2" }
{ "U' L2 D' R2 F2 U2 R2 U B2 U2 R2 B L U' F2 U' D' L' B U' L'" }
{ "D R' L' D R D U' F' L' F2 D' B2 L2 B2 R2 U L2 U2 L2 B2" }
{ "D2 F2 L2 U2 R' B2 L D2 L D2 B2 U' F' U2 L2 F2 R F' L' U" }
{ "F2 U2 B2 D B2 U R2 D F2 L2 D L' D R2 U' F L2 B L2 D2 R" }
{ "B U2 R2 F2 R2 F' D2 B2 R2 U2 B D' F' B2 L B2 R2 B2 U2 R'" }
{ "L B2 D B' D' F2 L' D U' R2 U2 R' L D2 U2 L' D2 B2 D2 B2" }
{ "U2 B2 U2 D B2 L2 F2 L2 B2 U' L' U2 R F2 U2 B L2 R2 D R' B'" }
{ "D' L2 R2 D' B2 D' F2 R2 B2 D R2 F' L2 F2 R' B L F D F U" }
{ "D U R F D' U2 L' B2 R' U R2 D2 B2 R2 L2 B' D2 U2 R2 U2" }
{ "F2 D' B2 U R2 U' F2 L2 D L2 D' F' U2 R2 B' R' B2 L F U" }
{ "R L' D' B D L2 F D B2 D2 R B2 U2 B2 R' B2 R2 F2 R" }
{ "F2 D2 F L2 B U2 B D2 B' L2 B' L' F2 D' L2 B' U R2 F U2 L" }
{ "R' F2 R' U2 R' F2 D2 R' D2 B2 R' U' B' L2 D' F L' U2 B2 D' F'" }
{ "B2 R B' D2 L' F' U' B' F' D2 L' D2 U2 L2 F2 U2 L' U2 L' F2" }
{ "L' D2 F2 U2 R2 B2 L B2 D2 F U B D2 L U2 D2 B L2 D'" }
{ "U2 L2 F2 R2 B2 L B2 D2 R2 D2 R2 F' L B L' U L' R2 B' R' U'" }
{ "U2 F2 L2 U' R2 U2 F2 D' L2 D' F' U' L' R D' B' D' L F L" }
{ "L D2 L2 D2 L F2 L D2 F2 L F' L' F U' B2 R' B' U' F2 R2" }
{ "B U F R U R2 U' B R' D' B' R2 L2 B D2 L2 D2 U2 F U2 F2" }
{ "R2 B2 D F2 D L2 R2 D' F2 U2 B2 L' B' L2 F' D2 B2 L R' D' F2" }
{ "R2 B' D2 F' L2 F' R2 B' L2 R2 U L' R2 D' R' U' F B L D2 F" }
{ "R' U2 F2 L B2 L' U2 R2 B2 D2 R' U' B' D F' L R2 D' L2 F R" }
{ "U' F2 U F2 U' L2 B2 D F2 L2 D B' D L2 B' U' R F D L U2" }
{ "D2 F' D2 B' U2 B U2 R2 U2 L2 F R D2 B2 R B' U D2 F U B2" }
{ "B2 U2 F2 L U2 L' D2 R' U2 R2 F2 U F' R2 B2 L' D' L' R' U' R2" }
{ "F2 D2 L2 F2 L2 B2 D' B2 D' F2 L D L' D' R' B' U D R' F R'" }
{ "F2 B2 L' D2 B2 L' F2 R B2 L R' F R D F2 R2 U2 L2 U' B2 R'" }
{ "B' U2 L2 F U2 R2 B R2 D2 F B' L' D' F' U D2 R U L' U' D" }
{ "B2 D2 L F2 L' U2 L2 D2 F2 R2 B' R2 U' B R' B' U' L' F R2" }
{ "B2 D2 L2 F2 U' F2 R2 U' B2 D' F2 R U2 B2 D' F2 L2 F' L' F2" }
{ "F2 L2 B2 U F2 B2 D2 L2 F2 L2 R' D B' U L2 B D' L2 U2 B'" }
{ "D L2 D L2 U2 F2 B2 U' L2 B2 D' B' U L F2 R F U' R' B U2" }
{ "D2 R2 U' L2 F2 U2 D F2 U' B2 D' B' U R2 F2 U2 R' B U' D B'" }
{ "B2 L2 D' R2 D2 F2 B2 D R2 D2 F2 L' D2 R' D' F U' L2 D' B' U2" }
{ "D2 L' D R2 L' D2 L2 F' U' L2 U2 B U2 R2 U2 B L2 F L2 U2" }
{ "D2 R2 D2 L D F' U' B2 R D2 F' D2 R2 B' U2 F2 D2 F' R2 U2" }
{ "F2 L2 F' R2 U2 F' U2 L2 F R2 F L U' R' B D' R B R2 B' R" }
{ "U' F' U2 F2 R' D2 L' B U R2 D2 R2 B2 R2 D2 B2 U2 F2 L2" }
{ "U2 F2 U D R2 D' B2 D' F2 B2 D' B' U B2 U' L2 F2 L D2 F" }
{ "U2 B2 L B2 L' F2 R2 D2 L' F2 U' R' D2 R' B D L R U2" }
{ "D2 F2 D2 F2 R' U2 F2 L2 F2 L F2 U' F' D2 R' F2 D' B L' D' R2" }
{ "L2 B2 R2 U B2 U F2 B2 U2 R2 U' R' F' L' U2 B2 R B2 R F D2" }
{ "B2 L2 B2 U' R2 B2 D' R2 U2 B2 D F' B2 L B' L2 R' U' R D2 F" }
{ "L2 B2 D' F2 U2 L2 D' B2 D2 B2 L2 R U F R2 D' L' B' D2 L2 F'" }
{ "U2 D2 B2 U2 R2 F' L2 R2 F' D2 B2 D B L2 F D R U D2 F B2" }
{ "F2 L2 B2 U2 L' U2 L' B2 L' D2 R F' B2 L2 D' R' B2 L U D" }
{ "B2 L F' U' F D2 U' B' D' L' D2 U R2 F2 U' L2 B2 F2 D F2 U'" }
{ "B2 D2 F' U2 F' U2 L2 B L2 D2 R2 D L2 B R D' F R2 F' D" }
{ "F2 L F' L2 U2 B R' D' U B' L' D2 L F2 L2 D2 L B2 R2 U2 B2" }
{ "U L2 F2 D' L2 B2 D' B2 D L2 U F L2 D' L2 R D R U' L' U" }
{ "R2 F' D2 B D2 B2 L2 R2 B' L2 B2 R' U D2 F L2 B' D L F L2" }
{ "F2 U2 L2 B2 L2 U F2 U' D' B2 D' L' B' U' D2 B D F U' B L'" }
{ "D' R2 F2 L2 U R2 F2 U' L2 D' B2 R' D' R' D' B2 R' U2 F B2 U'" }
{ "F2 U' R' B' F' R U B R' B R2 L2 U2 B F U2 F' L2 D2" }
{ "U' R2 U2 B2 D B2 L2 U' L2 D' B2 R' F L U R2 U L U' F D'" }
{ "B' D' L2 U2 B2 L2 B' R' U F2 R D2 F2 R' U2 L' B2 L' U2" }
{ "D' B2 U2 R2 F2 L2 B2 D L2 U2 D' R' D F2 L' U D' B' R2 F2 D'" }
{ "U2 D2 R2 B' L2 B R2 F' L2 F L F2 R' U F' U2 L2 B D" }
{ "D L' B U2 R B' D2 L' U' R' B2 R' F2 R' D2 R' F2 R B2 R'" }
{ "D' F2 D' B2 R2 D B2 D F2 D2 L2 R U2 D2 F D L D L' B2 U" }
{ "D B2 L2 D' R2 F' U' B U' R' U2 B' L2 F' R2 U2 B' F2 D2 F2 U2" }
{ "U' F2 U2 D' F2 R2 U' B2 L2 B2 D2 F' D L2 F2 L' F' R2 U' F'" }
{ "D2 B D2 F' B' R2 B' L2 R2 U2 B' L B' U' B L' B2 D F' B' L" }
{ "B D L D' B' D F R' U2 F' L' D2 R' U2 R2 U2 B2 R D2 F2 R2" }
{ "D' F2 U2 F2 R2 D' L2 U2 B2 L2 U' L' D2 R F' U F' U' F' U' D" }
{ "F L U L' B L2 F' R' B L B2 R D2 R2 F2 D2 U2 L' B2 F2" }
{ "R2 U2 F R2 F2 U2 B R2 B' D2 B2 R' F U' D2 B' U D' L' B D2" }
{ "L2 D2 L2 F2 L2 U' L2 U' D B2 D' R' D2 F D2 L F B' U B R2" }
{ "R2 F2 U2 B2 U F2 D' F2 R2 B2 D' R B2 R F R2 D F2 D' B R" }
{ "B U2 R2 U2 R2 B' R2 B U2 F' U2 D' L B2 L2 R' D F' R F' B'" }
{ "D' R' L2 D L' D' L' U' B' L D2 R2 D' U2 F2 R2 L2 D' F2 L2 U" }
{ "L2 B' U2 L2 D2 F R2 B' U2 F B R F2 L B' L F' U F2 L' U2" }
{ "B L' D2 L2 D2 R U2 B D U2 R' F2 R' L2 F2 R2 D2 L' U2 R2" }
{ "F' L2 F' D2 L2 B D2 B R2 B' L2 D B' R B' U' B R2 U R2 F'" }
{ "R D L2 U' F' R2 B R' D2 U2 R2 D2 U2 F' R2 F D2 F2 D2" }
{ "B' U2 D2 F D2 L2 B2 L2 D2 B' U' F2 L B D2 R U B U2 F B2" }
{ "U2 B2 L2 B U2 R2 F' L2 D2 F U2 R B2 U' F' B' U R' F2 D'" }
{ "B' R2 F' D2 F U2 B U2 B U2 L2 U' B' D' F B' D' F2 L U L'" }
{ "U' B2 R2 U' B2 L2 U B2 U2 R2 U' R' F2 B R2 U R' F' U' F2" }
{ "F' U L' U2 L' B2 R' B' D B2 F2 R2 U2 R F2 L' B2 R F2 D2" }
{ "B' R' D' L' D R L U' F' D2 B2 R2 B2 D2 R2 F2 U B2 D R2" }
{ "U' L2 D' R2 B2 R2 U2 F2 U' B2 D F U2 F' L' F2 L' R D F2 R'" }
{ "R' D U' F2 L B L' B R' F2 R2 B D2 U2 F D2 B' U2 F2 U2" }
{ "U B2 D' B2 D L2 R2 U' F2 R2 U B L2 U' R' U2 B L' D B'" }
{ "B U2 R2 U2 F' D2 F' L2 U2 D R B' U2 D L' B U2 B2 R2" }
{ "F L2 F' D2 F D2 F' D2 F U' D' B' U2 L F2 D L2 B2 U2" }
{ "U2 B2 L2 F2 D F2 U R2 D2 R2 B' R2 U' L' U2 D' R D2 B' U'" }
{ "L' B' R D U B2 L' D2 F U2 L2 F2 U B2 R2 U'" }
{ "L2 D' R2 B2 R2 D2 B2 R2 D B2 D R' D L U' R2 D' L' D2 B R2" }
{ "B2 U R2 U' D2 L2 F2 L2 B2 U2 D2 F' L R' B R F D' F' L2 D'" }
{ "U L2 F2 U L2 R2 U F2 R2 U2 R2 B' L D F2 R D2 R2 F U R2" }
{ "F2 R2 B2 U F2 U' L2 B2 D2 F2 D L U D' L' R2 B' D2 R2 U2 L" }
{ "B2 L2 D L2 F2 R2 D2 B2 U' B2 D2 F R' U F' B2 R' F U R2" }
{ "F' U' R' D' B D B2 F D' R2 D2 B2 R D2 R D2 R' D2 R F2" }
{ "R2 F2 L2 D F2 L2 D' L2 U L2 U R U B L F2 B' U' D2 F2 B" }
{ "D2 L' B2 R' D2 R2 U2 R2 F2 R' D' L' F D2 B' R' D2 B U L B" }
{ "R D' L' B2 L2 B2 F D2 U' L U B2 L2 D L2 U' F2 U F2 U' L2" }
{ "U2 L2 B' R2 B' R2 B' R2 F2 B' D' F' R' D2 F L R2 B2 D'" }
{ "F2 B2 U' R2 U R2 D2 B2 D' R2 D L U2 L' U2 F' B2 U' D2 B' L'" }
{ "U' B2 L2 F2 R2 U' D' B2 D R B R2 F2 U' L F' B2 U' R" }
{ "R2 D2 F2 U F2 U B2 U R2 U2 D' L' F2 D' B D B2 D2 F' D R" }
{ "B2 F U2 L' D' L2 B R2 U R2 L2 D2 F' D2 B L2 F' U2 F' L2" }
{ "U' F2 R2 F2 L2 B2 R2 D' L2 U D L' F' D' R' D B' R' F R" }
{ "L2 U' B2 L2 D' L2 U2 L2 U2 D' B2 R' F R D' F D R F L B" }
{ "U F2 R2 U' L2 U L2 D F2 U R2 B U L R' B D2 R2 B' U2" }
{ "B2 U2 F2 L2 U2 L2 U2 F' R2 F D2 R' U B' D' F U L' F2 R2 B2" }
{ "D L2 U' D L2 F2 L2 D2 L2 D2 F' L R2 D2 R B' U B' L' D2" }
{ "B L' F2 L D' L2 U' B' F U F2 D2 U2 R L2 F2 L U2 L2 D2 B2" }
{ "U F2 L2 R2 U' F2 D' R2 F2 D L' D2 B' L2 U' R' D L2 B D'" }
{ "B2 L2 D' R2 F2 U L2 R2 U' L2 B2 L' F R2 U L' D B2 L D' R" }
{ "R' U2 D2 B2 L2 R' B2 R D2 B2 U2 D F2 U F' R B' D' B U' F" }
{ "L2 R2 U' D' L2 R2 U' B2 U L2 U B D' F2 U R D2 F' D2 B D" }
{ "L2 D B2 D L2 D L2 F2 D B2 U R' U' L D2 F' D' F' B R2 U'" }
{ "B2 D2 B' U2 D2 B2 U2 B U2 B D2 L' B U L2 R D2 L2 R' F' R" }
{ "D' L' D2 U' B2 R' F' D' R2 U' F2 D U B2 U F2 R2 F2" }
{ "B' D B U R D' B2 U' B L B2 R2 B R2 F D2 F U2 R2 F' L2" }
{ "B' D2 U2 F' R B' R F R' L2 D U2 R2 B2 U2 R2 D' L2 D B2" }
{ "R2 U2 F L2 F' L2 U2 B L2 B L2 R' U' B L' B L' D B2 R" }
{ "U2 D2 R D2 L F2 D2 L' U2 L' U R U2 D L D' B' U D'" }
{ "F2 R2 B2 U' F2 L2 U D F2 B2 D R' D2 L' U F L U' R' F D" }
{ "B2 L' B2 D2 L D2 L2 R' B2 L2 F2 D R2 U2 B' R2 F' R F' R2 U" }
{ "B2 U' B2 U' B2 L2 F2 B2 U2 D' L2 R U' D B' D' F R' B2 U' F" }
{ "L' D R2 L B' U B2 F' D' F2 R' B2 R D2 R L' U2 R B2 R" }
{ "D' B2 D R2 U B2 L2 B2 U' F2 R2 B U' F B R' U' F D2 R D2" }
{ "F B2 U2 F U2 R2 B' D2 L2 D2 B' U B' U B2 L' U' D2 L2 F R" }
{ "U B2 L2 D2 F2 L2 U R2 B2 U L2 F' L2 R' U2 D' L F U L'" }
{ "U2 B' R2 F U2 D2 F' D2 L2 R2 F' D' B' U' R' D2 L' U2 D R" }
{ "B2 D2 R2 F2 D' F2 D' R2 D2 F2 R2 B' R2 F' R' D' B2 R B' R' B'" }
{ "B' L2 U2 B U2 L2 F D2 L2 R2 F' L B2 L2 B' U F' R' U' B R'" }
{ "L2 D' L2 D2 L2 F2 D R2 B2 U F' L2 D' F2 D F R D F2 B2" }
{ "U R2 U L2 D' B2 D2 R2 U L2 D' R' F' L2 B' D' L2 D2 L U R2" }
{ "F2 R2 B R2 F' L2 R2 B' R2 F D' L D' L' B' R' U' D' L' B'" }
{ "F2 U2 L2 B' D2 R2 F' L2 R2 D2 R2 U' L D L2 D' B' U' D F2 R'" }
{ "L B2 L2 U2 B2 L F2 U2 R' D2 R2 U' F' U R2 U' F' D F B" }
{ "B2 U2 F2 L' B2 R U2 D2 L' R' U2 D' F' U R2 F U' D2 R' U'" }
{ "F2 L2 B2 R2 U2 L2 D L2 B2 R2 D' B' D2 B' R B' D F B' D2 L" }
{ "R' U' F' D' L' U' B2 F' D B' D2 R2 U2 R2 U2 F U2 B2 U2 F" }
{ "R2 B2 U F2 D' R2 U B2 U L2 U L' D R2 F' D L2 F B R B2" }
{ "F' U2 R2 D2 R2 F L2 F2 B' L2 D F2 B' D2 R F2 U L' R2" }
{ "D2 B2 R B2 D2 R' U2 R' B2 U2 R U' F2 L' F R B U' F B' D" }
{ "D2 F2 L F2 L' U2 D2 L R2 B2 R' U R' B L D L R U R B" }
{ "L' B2 L' B2 L2 U2 F2 L2 U2 F2 R' U' F B U L2 D' R' F U" }
{ "U' F D' F2 U B F2 L' F2 L F2 D' U' L2 D R2 B2 D B2 R2 D2" }
{ "R2 D2 F L2 R2 U2 F' B2 U2 R2 F' L R2 U' F2 B U' B' D R B'" }
{ "B2 D' F2 D2 R2 D' B2 R2 U' L2 U2 F D2 L' R' F D' R' B2 L2 B" }
{ "U2 D2 R2 U2 L F2 L2 U2 R' F2 U2 B' R F2 U' L2 B2 D B' L F2" }
{ "D2 R2 F D2 F2 D2 B' R2 D2 F D2 L R' D2 R2 B U L F2 R" }
{ "U R2 U F2 D L2 B2 R2 D2 F2 D' L' D2 F2 D' B L F D B2 R'" }
{ "B2 L2 D2 L2 U2 F2 L R2 U2 F2 D2 B' U B2 R' U L' F' L2 R2" }
{ "F2 D R2 D L2 U B2 U2 R2 D' R2 F' D' B' R' F' D2 F D R" }
{ "B U' L2 B R2 U2 B2 R' F' L' F2 R D2 L F2 L' F2 U2 B2 L2" }
{ "L D' B L2 B2 F' D U' F' U2 R2 F2 L U2 R D2 L2 U2 R2" }
{ "B L2 U2 D2 F2 U2 L2 D2 F R2 F2 R' F2 B D' B U' D2 B R' D2" }
{ "R2 B2 L U2 L' D2 R' U2 L' D2 R2 U F' B2 D2 B' U F2 B2 L2" }
{ "F2 L B' R2 B2 D' U' L' B' U F2 L2 F2 D' F2 D2 F2 D F2 D'" }
{ "R2 F' R2 F' U' F' U2 L2 U L B' D2 B' D2 R2 U2 F R2 B2 U2 B'" }
{ "D2 F U2 F U2 B D2 L2 F B D2 L' U D2 B U D B2 D2" }
{ "F2 U2 F2 L2 U2 R2 D L2 U' B2 U' R' D' B' U L' D2 L' D' L' R'" }
{ "L' D' R' F2 R' U2 F R D' L' U2 F2 R' B2 L U2 R2 B2 F2 R" }
{ "L2 U B2 D B2 R2 F2 U2 B2 U R' F B U' B' D2 R' F2 B2 U2" }
{ "D F2 U B F L F' U2 L D2 L2 B D2 B' F' D2 U2 B' L2 U2" }
{ "L2 U2 L2 R2 U B2 U B2 L2 D L2 F' R2 F R' F U' B2 L' U' F" }
{ "D2 F2 U' D2 F2 D' B2 R2 U' B2 D' F' U F D2 R B' L' D2 B D'" }
{ "L2 F2 U2 R2 F2 B2 D2 R2 U B2 D2 R B' L' U' D B2 L2 F B2 R" }
{ "D' R2 D' B2 U R2 D B2 D2 F2 D' L' U D2 R D' R' F' L F2 L" }
{ "F2 U2 L' R' U2 L F2 B2 L2 R' U' B' U R2 U B' L F' U2 D" }
{ "F2 D' F2 B2 D' R2 B2 D2 B2 L2 R2 F' R B U' R' F2 U R2 U' L" }
{ "U F2 L2 F2 R2 B2 U' L2 F2 D2 R U B L D2 B' R2 F R' U2 B'" }
{ "L' B2 R' D2 L' F2 D2 B2 R' D2 R' U B' L2 F2 U' B D' B' R D" }
{ "D' B2 D2 B2 D' B2 L2 U R2 D2 F' L2 D R D' L2 U B L' U" }
{ "F2 R F2 R' D2 R' B2 L2 B2 U2 L F' U F' D2 B2 L' U' L2 D2" }
{ "L2 U2 B U2 L2 F R2 B2 D2 F' U R2 D F B' U' B' L D L" }
{ "R2 U2 F2 B2 U F2 U' D2 F2 R2 D2 R' D' F' B' D2 R' U2 F L U'" }
{ "L2 U B2 L2 U D2 F2 R2 U R2 U2 B R2 U' B' D F' U L' B' U2" }
{ "F2 L' U2 D2 F2 R2 B2 R2 D2 R' F L U2 D' L U' D' L' F2 B' D2" }
{ "F' B' D2 L2 D2 B D2 F D2 L2 F R D' R2 F' B' R2 F' U L D'" }
{ "D2 R2 B2 U' L2 B2 U' R2 B2 R2 U' F' L' B D' B U2 B' U B2 D" }
{ "B R2 B' U2 D2 F' U2 B R2 D2 R' F' L2 U' D2 F2 R2 F' R'" }
{ "D F' D2 U2 B' D' L F2 U' R F2 D2 B' D2 L2 B' F' D2 L2 B' R2" }
{ "B2 R2 D R2 F2 B2 D' B2 D' R2 U2 R B2 R' B L R2 D' B2 D2 R'" }
{ "U' L' B2 D U B2 F' D' F' U L2 F2 U R2 F2 R2 B2 D' B2" }
{ "L' D' B' F2 L B F' D B' F2 U2 R D2 L2 B2 R B2 L' B2 F2" }
{ "B D B F D B2 F2 D2 U' F2 L F2 R' F2 D2 R2 D2 R2 D2 B2" }
{ "B2 D2 R2 F2 B2 U' L2 D' L2 F2 R2 F' R' D' F2 L U' L F2 R' U2" }
{ "D L' B U2 B2 U R' B2 D R F2 D2 B R2 L2 B' D2 U2 F' R2 U2" }
{ "B' U' F' D R B U' R U2 B2 R2 B2 F R2 F' D2 R2 B'" }
{ "L' F2 B2 D2 L' D2 F2 R' F2 D2 L2 F D' L D2 F R B' R U' B2" }
{ "U' L2 D' R2 F2 U' B2 D' B2 R2 U2 L' D' R2 F2 B2 U2 B' R' B' D2" }
{ "D F2 R2 D2 L2 B2 R2 U L2 R2 D2 B R F2 L' F2 B' R U' F' L'" }
{ "R2 D2 F2 L2 U' R2 U' R2 D F2 D' L' U' L2 D2 B2 R' D B' D" }
{ "R2 B' D2 F L2 B2 R2 D2 B L2 B L D2 R U R' F' B L2 B R" }
{ "U' R2 U2 R2 D' R2 F2 D R2 U' F2 R' B' L' D' R U L' B' L' D" }
{ "B' U2 F L2 U2 B' L2 D2 F' U2 D2 R F' D R' B' L' U2 F' R B'" }
{ "R2 U2 R2 F L' F' U' B' D' L D B2 U2 R2 U' R2 F2 U B2 F2 L2" }
{ "F R' B L F D2 R2 B L' U R2 D2 F2 D2 B2 U R2 B2 R2 U" }
{ "D2 F' L2 R2 U2 F' L2 D2 F R2 B2 R' B' U2 R B2 U' R2 F' D' R" }
{ "D2 F2 D' L2 D2 R2 B2 R2 F' U F L B2 R2 F' B' D' R'" }
{ "L2 R2 D2 B2 U L2 R2 F2 U' D' L' B' R2 F' D' F2 B' U B' D2" }
{ "R2 F2 B U2 D2 L2 D2 F' D2 B L2 U' D2 B' L F' B2 L' F2 R'" }
{ "L' F2 L F L B U L B' R2 D' F2 D B2 L2 D2 F2 D' R2" }
{ "L' U2 R B2 D2 R' B2 L2 F2 R U D' R' U2 L2 F' D2 R F R" }
{ "U' R' D2 L B' U2 L2 U' R' U2 R2 F2 R2 B L2 F' D2 U2 F' R2" }
{ "R D2 R' F D' F U L U F R' B2 L' D2 R D2 L' B2 D2 R' D2" }
{ "B' U2 B' L U B D2 U2 L B' D' R2 U B2 D' R2 D' L2 U' B2 D'" }
{ "B2 D B2 D F2 B2 R2 U' D2 F2 D2 R D F' B' U2 B2 R2 U L' B'" }
{ "D2 B2 U2 L2 B2 U' B2 U2 F2 R2 B2 R' B' D' L B' L2 F2 R B2 R'" }
{ "U2 L2 F2 R2 D L2 U2 D' R2 B2 U' F' R' B' R U2 F' B2 R U2 L" }
{ "B2 R F2 L F2 R' F2 R D2 R D2 F L2 R U2 R U F' B2 R'" }
{ "B2 U2 L B2 L' B2 D2 F2 R2 D2 B2 D' F D' B U D2 L2 U L" }
{ "R2 F2 D2 F2 U2 D' F2 D L2 B2 D' R' U' D' L D' R B2 R B'" }
{ "L2 F2 L2 U2 B2 R2 U R2 B2 L2 F2 B' U' R D2 B2 U D' B2 L2 D" }
{ "F' L2 U2 B R2 U2 F' B2 D2 B U F2 R D' R' F' B2 L2 U D2" }
{ "L2 D' B2 D R2 U L2 F2 R2 F2 D' F R B2 L' B2 D L2 F2 B L2" }
{ "R' D2 B2 L D2 L B2 U2 L2 D2 R B R2 D F2 D' B' L F2 D" }
{ "D R F' D2 B D R D2 R D U2 L' U2 L' F2 U2 L F2 R U2 L'" }
{ "B' U2 L2 B' U F R D2 F' U2 F2 R D2 R2 D2 R D2 R' F2 L2" }
{ "D' U2 L2 F' L' B' F' U2 R F2 R2 L2 U' F2 R2 D2 F2 D' F2 D" }
{ "U2 L U2 B2 L U2 L' F2 B2 D2 B' U B' R B L2 D B' R F'" }
{ "D2 R2 F D2 F D2 R2 B2 R2 U L R' D R F' R2 U D2 B'" }
{ "D2 F2 U2 L D2 L' B R' D F' U' L2 D B2 U B2 L2 D R2 F2 D" }
{ "R2 U2 L2 U' F2 L2 D2 B2 D' L2 D F' D2 B R' U D L' R' F U2" }
{ "B2 R2 U L2 F2 L2 U B2 U' D' L U F2 L F B' D' L' B2 D" }
{ "L2 D B F D' B L2 U2 F U' L' D2 L2 B2 D2 L' U2 L' D2 L2 D2" }
{ "R2 B R' B' D L2 F' U2 R U2 R2 B U2 F2 U2 L2 F' R2" }
{ "R' F' L B F D2 B R' B D' B2 L2 U R2 D R2 D' F2 D' L2" }
{ "R2 D2 L D' U L' D R L2 B' R2 L2 D' B2 L2 D2 R2 U2 B2" }
{ "F2 R2 D F2 U R2 U2 R2 B2 U' R2 B' R B2 L R U' B2 L B' L2" }
{ "R2 U F2 D2 L2 B2 L2 U R2 B2 D2 L' D' F2 R U R2 D' B' L2" }
{ "B2 D' L2 F2 D R2 D2 L2 D' B2 D' B' D L U' R F2 U2 B2 U F'" }
{ "R2 B2 R2 B R2 D2 L2 R2 F2 B' R' U F' B' D' F' U L F L2 B" }
{ "F' U2 F2 U2 R2 U2 D2 B R2 U2 F' R' F' L F D' R' D' L2 B' R'" }
{ "D2 B2 U2 L2 B L2 B' U2 B' L2 R2 D F R' B L' D L B U' B2" }
{ "B R2 D2 F' B' U2 L2 F' R2 U2 L2 R B2 U F B R' B D' L' D2" }
{ "U2 R2 U' R2 D2 L2 F2 D L2 D F2 L' B' U D' L B' D F2 R2 B2" }
{ "B2 L2 D L B2 U2 L' F' U2 R B F2 D2 B2 U' B2 U F2 U F2" }
{ "D2 U' B' F L2 D L' B U L' D L2 D R2 D' R2 L2 B2 U' L2 B2" }
{ "F2 D2 L' F2 L' F2 B2 L F2 L2 B2 U' D2 B' L D' F2 D' L' R D2" }
{ "L2 U R2 U F2 D' F2 B2 D' L2 B L B2 L2 B2 U L' F' D' L" }
{ "F2 U2 F' D2 U2 R D' B2 L' U2 R2 B2 U2 R2 F L2 F' D2 B'" }
{ "R U2 L' R' F2 D2 R F2 B2 R' B2 D L F' R2 F' R U' D2 R' F" }
{ "D B' L' U' F' L B2 R2 F' U2 F2 D2 B2 U' B2 U L2 D2 B2 L2" }
{ "F2 U2 F2 D L2 D' R2 U F2 U' D' B' D2 R2 D' R D2 L U D R'" }
{ "F2 D R2 U R2 U' F2 U' B2 D B' U B2 U2 L B' L2 R F' B2" }
{ "U2 F' B2 U2 R2 F' D2 L2 U2 D2 F D' F U' D2 R D2 R D' L D" }
{ "U' B2 D' L2 B2 U2 L2 D' B2 U' L2 F R' F' B U' D F U' F' L2" }
{ "U2 L2 U2 D' F2 D' R2 B2 L2 F2 U' F L' D' B' D' R B U F2 R" }
{ "R2 U' L2 B2 D B2 R2 F2 L2 U L2 F' U' L' B2 D2 B' D' B2 L D" }
{ "B' L2 F U2 R2 B' D2 R2 F' L2 R2 U' R F' U2 D' L F U R" }
{ "U' R2 U' L2 R2 D R2 F2 U D2 R B' L2 B L' F2 D B' D' L'" }
{ "L2 U' R' D B' L2 B L B U' R2 F2 U R2 D2 R2 B2 F2 U R2" }
{ "U2 B2 R2 U L2 B2 D' R2 B2 R2 D2 L B' D' L R F2 U' R' F' D'" }
{ "R2 F2 B2 R U2 L2 R' B2 U2 L R' F' R' F' D L2 F' U2 F2 B D" }
{ "D2 F' D U2 R B R2 D' U' B D L2 B2 D F2 U' B2 U2 B2 D F2" }
{ "D R2 F2 D R2 D' L2 U' D' F2 B2 R' B' R B' R2 B2 R' U2 F" }
{ "F2 D B2 D2 B2 L2 U' D2 R2 B2 D B L2 U L2 R' U2 B R' B2 D2" }
{ "L2 D' L2 D B2 U' B2 R2 D2 R2 D2 L D' R2 F' L' D' R' D' F2 B2" }
{ "B2 L2 D F2 D R2 D2 F2 D2 B2 D' F L2 D B U D2 L R U2" }
{ "B2 R D' F' L U' F' D2 R D' R B2 R' F2 L D2 L2 U2 L' U2 L'" }
{ "R' U B' L2 B R' D' U2 L B R2 U2 F' U2 B R2 B U2 B' L2" }
{ "L' U2 F2 U2 R2 U2 L U2 F2 L2 R' B' U L' F L2 U' B R' U'" }
{ "B' R2 D2 R2 D2 F' U2 B2 U2 D2 B' D R F2 L' F U L' U2 B2" }
{ "R2 B R2 F R2 B' L2 D2 L2 U2 L' D' B' D' F2 U' R' F2 R2" }
{ "F2 L2 F L2 F' U2 D2 L2 D2 F' U2 D' R' F R2 F B2 R2 U' D'" }
{ "B L2 D2 B' L2 F R2 D2 R2 F' D2 R' D B' L F' R U' F2 D' F2" }
{ "R2 B D2 F2 B R2 D2 F2 U2 B' U2 L U2 B' L2 B' L2 F U D' F'" }
{ "L2 B2 L' B2 U2 L2 R D2 F2 R F2 U' R B D' B' D F L' F D" }
{ "B2 D2 R2 U' R2 U' R2 F2 B2 U L B2 D2 B U2 D B' U B U'" }
{ "D2 F' D2 F L' F U L U F R2 B2 R2 U2 F' D2 B2 R2 D2 F'" }
{ "B2 D B2 R2 U' D2 L2 R2 F2 U' F2 B' L' R2 B2 L2 F' B2 D' B2 R" }
{ "D F2 U F2 R2 D F2 L2 D B2 R2 F L' B D' B2 R F' D B2 D2" }
{ "R' B2 U2 R U2 F2 R' F2 L2 R2 D2 B' U' F2 D' F B D2 F' U" }
{ "R2 B2 R2 F' B2 D2 R2 B' R2 U2 D2 L' F2 R2 B' L' B R B2 D2" }
{ "R2 D2 F U B' L2 B D R' U2 B2 U F2 U R2 B2 F2 U2 B2 L2" }
{ "U2 F2 D2 B L2 R2 F2 D2 B' R2 B' R B' U' F' B U D' F D R2" }
{ "R' D U2 B R2 D' L' U B2 R D2 U2 B2 U2 F2 L2 D2 F' D2" }
{ "L2 F2 R2 U' F2 R2 U L2 D' L2 D2 B' U F L' B' L2 F2 R B' U" }
{ "D' L2 D' R2 D B2 D R2 F2 D2 B' L2 B L2 R' U D R' B2 L'" }
{ "L' D' U L' F U' L' U B D B2 D L2 U' R2 D R2 B2 U' R2" }
{ "F2 L2 B2 U2 F2 U2 F L2 R2 U2 L' B' U L B2 U R U D R" }
{ "U2 D2 B' D2 F L2 U2 L2 U2 D2 F U' B' U2 L2 F' R F2 U R D'" }
{ "L2 B2 R2 B' L2 B' L2 D2 L2 B' L2 U R B' L' B' U R U D2 B'" }
{ "B2 L2 F' U2 F2 D2 F' D2 L2 R2 F' R' B' L D L B2 U2 F L" }
{ "R2 F2 L2 U' D2 B2 U L2 R2 D L2 F L' F2 R' B' L' R U2 R' U'" }
{ "U2 F' R2 F' B2 U2 D2 B' D2 F U2 R U' L' R2 U' D2 L B U2" }
{ "D2 F2 R2 D B2 D' F2 U L2 B2 R' U L2 F2 D' B R2 F2 D' L B'" }
{ "D2 U' L' B R U2 F R2 B' L F2 R2 D B2 R2 U' B2 D U2 F2" }
{ "B L2 U2 F' R2 U2 L2 F2 U2 F B2 D R F B' L' R F2 U' R2 F2" }
{ "D2 F2 L R2 F2 U2 L' B2 U2 D2 R' B L2 F D' F' B' L' F D' B'" }
{ "L B D2 R2 B2 L U2 B L' F2 D B2 L2 F2 D' R2 U L2 D2 F2" }
{ "B U2 B L2 B2 D2 R2 F2 U2 B L2 U' R' F B2 L B2 R2 U' R B'" }
{ "B2 U2 F L F L' B R F U L2 D' R2 B2 L2 B2 L2 D' F2" }
{ "L2 R2 U L2 D' R2 B2 D' F2 R2 D R' B D' L2 B2 U R B' U2 D" }
{ "U' L2 D B2 U R2 D L2 B2 L2 D' B' D' R F B2 D' L2 U B R" }
{ "R2 F2 B D2 R2 F' R2 U2 B' D2 R U2 D' B2 L' B L R B" }
{ "B2 R2 D' L2 F2 U2 D' F2 D' L2 D B D' B' R2 U' F R B U' D2" }
{ "L2 U2 B L2 U2 B R2 U2 F D2 R2 D' B' L' R D' R2 U' B' L' F" }
{ "U2 R2 D R2 D' L2 U2 B2 L2 U' L' B2 D B' U2 L2 R' F L2" }
{ "D' R' L D' F L F D2 L2 U' L D2 R2 B F' L2 F2 L2 U2 B D2" }
{ "U' L2 R2 U B2 U2 F2 U' L2 D2 F2 R' F2 U R D' F D' L2 F' D'" }
{ "F' R2 B' R2 D2 F' D2 R2 D2 F' R2 U' R F' L U F' R U L U2" }
{ "U' L2 F2 U L2 U2 R2 B2 D' B2 L2 F' R F2 U2 D' R B2 R2 F L2" }
{ "D2 R2 F D R F2 U2 B' U' R' B D2 B' R2 F D2 R2 L2 F2 L2 F'" }
{ "D2 B2 F' D L2 U F' R B L2 D' F2 R2 D B2 L2 D B2 L2 D2" }
{ "R D2 R2 D2 L' F2 L R2 B2 U2 R' B' U' B2 D L B U' B D" }
{ "B U2 L2 F L2 F2 L2 B R2 D2 B U' L' F2 L' U L2 D F2 B2 L2" }
{ "D' L2 R2 U' L2 R2 B2 D2 L2 U F2 R' U2 D L U' B R2 D' L' U'" }
{ "D R2 U R2 U' B2 U R2 D B2 U B R U D2 R2 F U' B' U2 L" }
{ "D2 R F2 R' L2 F2 U F D' U2 B D2 R2 B R2 B2 R2 L2 B L2" }
{ "R2 D' R2 U F2 B2 D L2 U' R F L' D' R' F2 U L2 D" }
{ "R2 U B2 U B2 D2 F2 U2 D' R2 D' R B' L2 F' U F2 R2 U R' U2" }
{ "L2 D' R2 F2 L2 D' F2 D' L2 B2 D2 L' D R B L B2 L D" }
{ "B2 D2 F2 B2 D B2 L2 B2 L2 R2 D B R' B D2 F' R' B2 D R' F2" }
{ "R2 U2 F2 R2 U' F2 L2 U2 B2 D' R' D' L2 U2 F' B' L2 U' D' R'" }
{ "U2 R F2 B2 L' B2 D2 L F2 D2 B' D' R2 D2 F B2 R' F D' B2" }
{ "D' B2 L F' D' U2 R F2 D B U2 L2 B2 F R2 B2 U2 R2 L2" }
{ "F L2 U2 F' L2 R2 B' L2 R2 D2 B U' R2 D2 B U' L2 U L' R'" }
{ "R' U B' R B L2 B R' D F2 R2 L U2 B2 F2 R' D2 U2 L2 U2" }
{ "U' F2 R2 D' R2 D2 F2 U' R2 F2 D L R2 F2 R D' R' U2 F' D B'" }
{ "R' D' B2 L2 D B D L' D B2 D2 B2 L F2 D2 U2 R' F2 D2 F2" }
{ "U L' D' L' U' F L2 D2 U F' U2 F U2 R2 B D2 F2 L2 U2 B'" }
{ "L2 B2 D B2 L2 U D2 B2 U2 L2 R' F U B' R2 D R F' D2 R2" }
{ "R2 D2 F2 U' L2 B2 D2 B2 U' D2 B U D' L' R' U2 D' L F2 D' B" }
{ "R2 D R2 B2 R2 U2 B2 R2 U2 D' B' U' D' L' D2 F L2 F L' U" }
{ "D2 B2 U2 R' D2 F2 B2 R' F2 B2 R2 U L R B U' D2 F D' L D" }
{ "L2 D2 B2 R F2 B2 R2 U2 R' F2 L' B' D' L2 U L' D2 R2 D2 F'" }
{ "D2 L F2 L U2 R U2 R2 D2 B2 L2 U F2 B' U' D' R D' L2 B2" }
{ "F' L2 B' R2 U2 B' R2 F' D2 R2 B' D F2 R B' D' B' L R' F U" }
{ "B2 L2 U F2 B2 U B2 L2 U L2 R' B D2 F' B U2 R' D' F L2" }
{ "U2 F2 R2 D2 R F2 L U2 D2 F2 U' L D2 F' B2 R' B2 D L U" }
{ "F2 L2 D' F2 D R2 D2 L2 D L2 R2 F' R U2 L D L R2 F' D L2" }
{ "D2 R F2 R2 U2 B2 R' D B' D2 L2 B L2 B' F2 R2 F' U2" }
{ "R2 B' D' R2 F R D' L B2 R' U2 B2 F2 D B2 D' R2 B2 F2 U F2" }
{ "R2 F U2 B' L2 F R2 D2 F R2 U2 L U' D2 R' F2 L' D' F2 B'" }
{ "B L2 B L2 F' U2 B2 U2 L2 B U L F D L U2 B' U2 L F2 R" }
{ "U2 F R2 U2 R2 F B D2 L2 F2 U L B2 D2 R2 B U' L2 B' D'" }
{ "D2 R2 D' F2 U B2 D' B2 L2 U L2 F U B2 L2 D F2 R' F D2 B" }
{ "R' U2 B2 L2 D2 F2 L2 B2 R' F2 L D' R2 B U2 F L U2 D R2" }
{ "R2 D2 L2 U' D2 F2 L2 R2 U R2 D B L' U' L' F' D' B' D L2 D" }
{ "R U2 R2 F2 R' D2 L2 F2 R' U2 R2 F U' D' L' U2 D R' F'" }
{ "R2 F2 R' B2 U2 L2 R F2 D2 R U2 B' R' B' U L' R D' L' B' L'" }
{ "F U' L D' B' U B2 L' F' R F2 L U2 F2 D2 L D2 F2 R B2" }
{ "D2 B2 U' F2 L2 U2 D' B2 R2 D R' D2 F B U2 B' U B2 R' B2" }
{ "B2 D' B2 U F2 B2 U' D' B2 R U D B L D' R B' U R U'" }
{ "D2 R2 F2 L2 B2 D2 B2 D B2 L2 F D2 R B2 R' U' R' D2 F' U B" }
{ "B2 D R2 B2 D' L2 D R2 D2 R2 U' L' U B' R2 U B2 R D L'" }
{ "B D2 B L2 F2 L2 F2 D2 F' U2 B' R' U2 R2 F2 U2 F' D' F2 L F2" }
{ "D2 B2 R2 D2 B2 L2 U L2 D L2 U2 F R D2 L F D L' R D L2" }
{ "U' F2 U L2 U B2 D B2 D' B2 D2 F' U' D2 L D B' L' D2 F D'" }
{ "U2 F2 D2 L2 F2 L2 U F2 B2 U' F2 L B2 R' F' R2 U B' U' F' D'" }
{ "D F2 L2 F2 D2 R2 D2 L2 D F2 L U R D R B' U' R' D2 L'" }
{ "U' D2 F2 U2 D' R2 U F2 L2 B' U' D2 F' D' F2 L' B2 R U2" }
{ "U2 R D2 B2 L2 U2 L' B2 L R U2 B' D' L2 R D L2 D L2 D" }
{ "B L2 B' U2 B D2 F2 U2 D2 R2 B L' D' L2 U' F2 R U L B2" }
{ "R2 D2 B' R2 U2 B' R2 B' U2 R2 B2 U L D2 L2 U2 B' R2 D R F" }
{ "D2 U' R' D' U' F' U2 B F2 D L2 D' L2 D2 F2 U' R2 D2" }
{ "F2 U2 L F2 R2 B2 U2 R' U2 R U' R2 D' F' B2 U2 R2 B R'" }
{ "D2 U2 B' U2 F' R2 F2 L D' L2 B U2 B2 F D2 B' L2 B' R2 F2" }
{ "F2 D2 B' R2 U2 B R2 D2 F L2 B L' B U' F' D2 L' D F2 L' D" }
{ "U' R2 D F R F2 R2 U L D' B2 L2 F2 L2 D B2 D2 B2 L2 D" }
{ "L B2 R' F2 R F2 B2 R' U2 D2 R B L2 B U' D F R2 D2 F' D" }
{ "F' R L2 D' U R D2 F2 R2 B D' F2 L2 B2 F2 U B2 D' R2 L2 D'" }
{ "F U2 F B2 U2 F U2 B' L2 U2 B2 U' B' L2 R D' F2 R2 D R'" }
{ "R2 F2 D2 L2 F2 U2 L2 B U2 F' B' D F L B' U R B U R2 U'" }
{ "R' B2 U2 L' B2 D2 L2 R U2 L2 U2 F D' B2 U2 R' F D' R F' U" }
{ "B R U F' L2 D' R U R' U' F2 R2 F U2 R2 B' R2 D2 F2 R2 B" }
{ "B2 R2 B L2 B' R2 U2 F' U2 F2 D2 R B2 R2 U L' B' L2 B' D F'" }
{ "R B R' F' R' D2 R' F D B' F L2 B2 R2 B' L2 B' D2 B" }
{ "D B2 F L B2 R' B2 R' B U2 R2 D' B2 F2 U L2 F2 U2 B2 D'" }
{ "R2 F L2 B U2 D2 R2 D2 F2 D2 F D' L2 D' L2 R' F' D2 B2 L'" }
{ "R2 U' B2 U2 R2 B2 D L2 U F2 B2 R D' R' B L' F2 B' L' B2" }
{ "B2 U2 F' R2 B D2 L2 R2 F' L2 F' L' F' D F2 B' U' D R D' B" }
{ "U2 R2 B2 D' B2 D' F2 R2 D2 F2 U B L D' L' F2 U2 F2 L2 U" }
{ "L2 U2 B' D2 R2 F R2 D2 B2 D2 B2 U' L R2 F2 R' U' F R D2 B" }
{ "U2 R2 B2 L' R2 F2 U2 R2 F2 B2 R' F' R2 D' B2 D F' L' F2 R'" }
{ "B2 U2 B2 U L2 D' L2 F2 D2 F2 L B' D F' R2 U2 D B U2 B" }
{ "D2 F2 U' R2 B2 R2 F2 U B2 L' U F' L' R2 D B L2 F2 B2" }
{ "L2 B2 D2 F2 R2 D' B2 R2 D R2 F' L D' R2 F' U B2 D2 L' U' F'" }
{ "R2 D' L2 B2 U F2 D' B2 D2 F2 U' R' F U2 F B' R' D' L' B2 R'" }
{ "R2 F2 R2 D R2 U L2 F2 U R2 U2 L B' R B2 L R' U' R' D2 B" }
{ "U' D2 F2 D L2 D R2 B2 R2 U2 F2 R B' D' L' D2 R' F2 B U' R2" }
{ "F2 L D2 R' B2 L' F2 B2 U2 L2 B2 D' F2 R' D2 B U2 R2 D' R' F" }
{ "R' U2 B2 R U2 F2 B2 R' U2 L2 B' L U' F L D2 F2 U2 B2 D'" }
{ "D2 L' F2 L' B2 L' D2 B2 D2 B2 R U' R2 D' L D' F D F U' B" }
{ "B R2 F' L2 D2 B' D2 R2 U2 F L2 U' L2 F' B2 L' R2 D R' B" }
{ "U' F2 D2 F2 U' L2 U' L2 B2 L2 F' B U R2 D2 L' U F U2 D2 R'" }
{ "L2 F R2 F U2 B' U2 L F' U' R2 U' R2 L2 D R2 F2 D F2 L2" }
{ "R2 D F' L' U' B R' U B' F L' D2 R' B2 D2 R2 F2 U2 R2 B2 D2" }
{ "U F' R2 D F' U' R2 L' B2 L2 B2 D2 B2 U' B2 L2 U R2 U" }
{ "R D' R' B F' D' B' L U2 L B F2 U2 B F2 D2 L2 U2 L2 F'" }
{ "R2 L2 F2 L' B R' B' L F' L2 U B2 D L2 U2 R2 F2 R2 B2 R2" }
{ "F2 D' B2 L2 D2 R2 B2 D' L2 B2 U' L' B U D2 B' R B2 D2 F U" }
{ "B2 U' L2 B2 U F2 R2 U' F2 B2 R' B L D L D B2 D F L' R'" }
{ "D' L2 U R2 F2 D2 R2 U' B2 L2 U' R F' R2 B2 D2 F2 U2 R2 D' L'" }
{ "F L2 U2 L2 B' U2 R2 F2 L2 R2 U' R2 B D2 R B' D L2 B U'" }
{ "B2 U2 B' R2 F' D2 F' L2 R2 B R2 U F' D2 F2 L B D' F U2" }
{ "L2 D2 L F2 L2 D2 B2 L2 B2 R2 D2 F' D' B2 D2 B U2 R F2 L2 U'" }
{ "B2 U2 D L2 F2 D' F2 R2 D' R2 D R' F' U2 D' F' B2 L2 R B'" }
{ "F D B' F2 U L' D F L' B R2 F' R2 B R2 B D2 R2 F R2" }
{ "U2 L2 U' B2 D B2 U' L2 U R2 F2 R' B' R2 U' R' U2 F' U' D R'" }
{ "D2 U' R' D R B2 D' B' R U' R2 B2 D B2 D' L2 F2 D B2" }
{ "B2 R2 U2 L D2 L' R' B2 D2 B2 R D F2 B U2 B' R F R' B' R'" }
{ "B' R D' F' R' D B R2 L B' U2 L2 B' D2 R2 F2 U2 R2 B' L2" }
{ "B' F2 U B' D2 R' U' F' R' B' U2 B2 F D2 F' U2 R2 U2 B" }
{ "L2 B2 U' F2 D' F2 U' L2 U' F2 R U' D B' U' F' L' U D2 F2 L'" }
{ "U2 R' B2 L' D2 F2 U2 F2 L2 D2 L F' L' R' D B' U' D' F' B U" }
{ "U R2 U L2 B2 D L2 U2 L2 U' R' U F2 B U F' R U2 F' U2" }
{ "U D L2 F2 U' L2 F2 D2 B2 R2 U2 F' R' D' F R U R2 F D" }
{ "F2 D R2 D L2 D B2 L2 D' B2 D L B' R2 D F2 D B L2 U2 D" }
{ "B' F R B D2 F' L' F2 D U2 F2 R F2 R2 L B2 R' U2 L D2" }
{ "R' F D' R2 U' F' R' U2 B D L2 D2 B2 D2 F2 U' L2 F2 R2 U'" }
{ "F D2 B' U2 L2 B L2 D2 L2 B L U R U2 L B2 D F D' L" }
{ "L' B2 L D2 L U2 R2 U2 R' U2 R F' L2 R D' F2 R2 U B' U R2" }
{ "R2 F2 U' B2 R' F' R F2 U R2 L2 U2 L2 B' L2 U2 B' U2 B' U2" }
{ "L2 F L2 B R2 D2 F' D2 L2 U2 B' U L B L F2 R U2 F' D2 R2" }
{ "F R2 B2 L2 B' D2 L2 R2 B2 R2 B2 U' F U' L' U' F D B R U" }
{ "U' F' U L' D2 F2 D L' B' R' L2 U' F2 D2 F2 D R2 B2 D B2 U'" }
{ "D2 F2 R U2 L D2 L' D2 R U2 B2 D' F' U2 L' U' L2 F' R B'" }
{ "F2 R2 U2 B2 D' F2 U B2 U' F2 D2 B' L' U' F' R' U2 B L B2 L2" }
{ "F2 U2 F2 D' L2 U2 F2 B2 R2 B2 D' F' U L R D F' U2 B L' U'" }
{ "L2 D' L2 U2 R2 F2 D' F2 D' L' B' D L2 F' B2 L2 F2 B' R U'" }
{ "R B2 L' F2 R' F2 R2 B2 U2 D2 R U' D2 F L R U2 L2 F' D2 R'" }
{ "D' B2 R2 U B2 D2 L2 U R2 F2 B' R F2 B2 D B2 L U R' F2 D'" }
{ "R2 B2 D2 F' U2 D2 F R2 F L2 B2 D F' U2 L' D' F2 R' D R2 D'" }
{ "F2 B2 D2 B2 L2 R2 U' B2 L2 D2 R U F2 D B' L2 U' F L B" }
{ "B L F' L' D2 F U' R D F' D2 F2 L2 D2 R2 L' B2 F2 D2 F2 L" }
{ "B U2 F2 D2 B' R2 U2 R2 D2 F' B2 D' B' D B R B' U B' L B" }
{ "B2 L2 U2 D' F2 B2 D' B2 U2 R B U' R' U L B' D' L' F'" }
{ "F2 D2 L2 F2 B2 U' R2 F U' F' U' F L' F' D' B' L2" }
{ "B2 U R2 D2 L2 D2 B2 U R2 F2 D2 B L2 F' L2 U2 D B R F R" }
{ "U2 B' R2 D2 R2 F' U2 B2 R2 B' U' L' F' B U2 L D L' R' D2 F'" }
{ "B' R2 B2 D2 B R2 B U2 R2 D2 R2 U R2 F R D' R' B D' R' B" }
{ "D' U' L2 D R' D L D2 R D2 B D2 L2 B2 D2 R2 D2 F D2 L2" }
{ "U2 L2 U D F2 L2 F2 R2 D B2 L2 F' R2 U' F' R' F B R2 U D" }
{ "U2 B2 U2 B U2 R2 B2 D2 F2 D2 L2 U F' U B' R' D L2 B' D2 F" }
{ "F2 B2 U' F2 D B2 L2 U' L2 D2 R2 F' R D' B' R' D L2 U2 F'" }
{ "L2 U2 D2 B2 D2 F' L2 F' R2 D2 F' D F' R U' R' F' L' B2 L R" }
{ "R2 B U2 F2 R2 B2 R2 B U2 B' U D2 L U2 B D L' R D2 B" }
{ "R' B F2 U' R D' L F2 D R U' F2 R2 B2 U2 F2 D' B2 U' L2 B2" }
{ "L2 F2 L2 D' L2 D L2 B2 U R2 U2 R' F' R B' D' L2 U' F B" }
{ "F2 U R2 U L2 F2 D' F2 L2 R2 U F U R2 U' R F2 L U D2 B2" }
{ "D U' R F' L' D R2 F U' B2 R' F2 U2 L F2 U2 R F2 U2 F2" }
{ "F D2 B U2 F L2 B R2 D2 B2 L2 R' U' D F B' U' L' F2 B' L2" }
{ "U' F2 R L2 D' U' F R B R F2 D' R2 U' F2 D R2 D2 B2 R2 U'" }
{ "D F2 D2 R2 D R2 D F2 U2 L2 D2 B' U B L' B U F L B2" }
{ "B2 R U2 F2 L U2 R2 U2 F2 D2 R2 B' D2 L' B' D B' L B2 R2" }
{ "R U2 L' F2 L2 F2 R B2 L D2 F2 U' L2 D' F D2 L2 U F' U" }
{ "L2 D' B2 U L2 F2 B2 R2 U' L' F2 B L' R' U' F L' B U'" }
{ "R2 D2 B2 D2 B' U2 B2 R2 D2 R2 F L' F2 U' F2 L R F R2 F' B'" }
{ "B2 R2 D2 F2 L2 U B2 U' R2 U' B2 R' U2 D L2 R F U B2 D' L'" }
{ "B2 U D L2 F2 D' R2 B2 U L2 R F' B' D R' B L' R' D R'" }
{ "D2 F' L B' D' L' B2 D2 L' F' D2 B F L2 U2 B U2 B2 L2 D2" }
{ "F2 U' B2 R2 B2 U B2 U' R2 D' F2 R' U2 R D L2 D L R" }
{ "U' F' L B F U2 B2 L F' U' R2 F D2 R2 B F2 R2 B' R2 U2 R2" }
{ "F R2 D' F R D' B2 U' R' L2 B' D2 F U2 L2 B' D2 F2 L2 B'" }
{ "F2 U2 F2 B2 R U2 L' U2 L2 D2 L2 D F' B2 U2 L R U D F'" }
{ "R2 D2 F2 D L2 B2 U' R2 D2 L2 F2 R F2 U B2 L' B' L2 R B D" }
{ "F L' B' L' F R2 F U B' F2 R2 F2 D2 L2 U' F2 D' R2 B2 D2" }
{ "F2 L2 F2 D L2 D L2 F2 U2 L2 D' F R U R F2 U' F B L D2" }
{ "D' F2 D R2 U' L2 U2 F2 D' R2 D R' F2 D F L2 R' U L2 B2 D'" }
{ "D' R2 D U F' R L U' R B L2 U2 F2 D2 B L2 F2 U2 F D2" }
{ "D2 L2 U' L D B' D2 L2 D F' U2 B2 L2 D' U2 R2 B2 U' B2 D B2" }
{ "F2 R' F2 L' B2 L U2 R2 F2 D2 R' F B L D F L2 R U' F U2" }
{ "U2 L' F2 R U2 F2 R' F2 L2 U2 F2 B' D F L2 U2 F' L B R" }
{ "F2 U2 R' U2 R' B2 D2 R' B2 L' R2 F R2 D R U2 D' F2 R' D'" }
{ "B2 U2 B2 D F2 L2 D' R2 D L2 R B' L D L U' L2 R' F' U2 L" }
{ "D2 F2 D2 F2 L2 B2 D' L2 D F2 U' B L2 D L' B' L D2 B R2" }
{ "L2 F2 U2 B2 L F2 R' B2 D2 B2 L' B L' F L' U F U2 R D' B'" }
{ "L2 U2 B D2 L2 B' R2 F' B' L2 B2 R' U D F' R2 U' F D' R" }
{ "B2 D F2 U' F2 B2 U F2 B2 U2 B' R' F2 D L2 R2 D2 F" }
{ "L2 B' L2 F2 B' L2 B U2 D2 R2 B' D F B L' F D2 F L' R' B'" }
{ "B2 L B2 L2 F2 B2 D2 R D2 B2 L' D' L D' L F' U' L' B' D' R" }
{ "U2 F2 R D2 R' D2 R F2 R' B2 U2 F U B D B' L2 R2 B' R2 D'" }
{ "D L2 U2 F L D' F' L' B' L2 F2 R2 B2 R' U2 R2 L B2 R B2" }
{ "L' F2 D2 L2 D2 B2 L F2 R' D L2 R' U' F' U2 R2 U' F" }
{ "L2 B' U2 L2 F' L2 D2 F D2 B2 L2 R' F' R' F U L' U' B' R U2" }
{ "F2 L' U2 L' U2 B2 D2 R' F2 L2 D2 B' D F' B' L' U' F2 L B2" }
{ "D' R2 D' B2 D' F2 L2 B2 R2 U2 B' R' U2 D F L2 B U2 D2 B2 D'" }
{ "D' F2 D L2 F2 D2 L2 F2 U2 L2 F2 R F2 U' L D' R' F R2 U' D" }
{ "L2 D' B2 D F2 D' F2 L2 D R2 F2 L R2 F' U2 L2 R U B' D F2" }
{ "F2 U2 D2 F' R2 B2 R2 B' R2 F' D2 R' F U2 B L D' R' D2 L2 B2" }
{ "B' U' B2 U R2 B R' D' R2 D2 F2 D2 R' F2 D2 R L' B2 R2" }
{ "L B R F R2 B F' U B L2 D2 F2 D B2 F2 D2 R2 D B2" }
{ "U' L2 F2 L2 D F2 D2 F2 U' B2 R U2 L2 R2 F' U R B2 R D' F" }
{ "D' B' D L2 F2 L F L2 F R2 U' B2 R2 D' L2 U L2 F2 U2 B2" }
{ "D' U B' L2 F R' U' B' R' D F2 D F2 U' B2 F2 R2 D U F2" }
{ "F2 U' B2 F' U B2 L F' U' L2 F' L2 U2 F' L2 F2 D2 L2 B' D2" }
{ "B2 D2 F2 D F2 D L2 F2 B' R' U R2 U2 F D' R U B2" }
{ "L2 U2 B2 U R2 D' F2 U' F2 U2 D' L U R U2 R U2 B' L' F' U2" }
{ "L2 D' F' U' F L' D' F L' B L2 D2 L2 D2 B R2 B2 L2 U2 R2" }
{ "R2 D' F2 U' F2 U2 L2 B2 D B2 U' R F' U' F L2 B R' U2 F2 R" }
{ "L2 D2 L' D' R2 L' B L2 U R2 F' D2 L2 B' L2 F R2 D2 F2 L2" }
{ "R2 U2 D' B2 R2 B2 D' F2 R2 U2 D R' B L B U' F L' R D' L'" }
{ "R2 F2 L2 D' F2 U R2 U L2 R2 F2 L' F' L' U2 L2 F' U' L U' D2" }
{ "F2 L2 D R2 B2 U' B2 L2 R2 U' L2 B U R U' D L D L' F R2" }
{ "R2 B2 D L2 U' R2 F2 D F2 U' F2 L' F2 R' D' R2 B L' U' R B'" }
{ "U L2 B2 D F2 D R2 B2 U2 B2 D' F' L U F' U2 L D' F B' R" }
{ "U F' L2 B2 R F2 L' U' R B' L2 F' R2 D2 R2 B L2 F U2 B" }
{ "D F2 R2 U F2 U B2 U B2 D2 F B U R' D B' U' B' R2 F2" }
{ "R U2 F2 R F2 L' B2 R2 F2 B2 U' L2 D2 R' D L' U' F U'" }
{ "D' U F L B2 D' U2 L' F' R U2 R' B2 R B2 R' F2 U2 R2 F2" }
{ "R2 B U2 L2 F B D2 B U2 F' U2 L D R2 U' F D2 R2 B2 L2 D" }
{ "U' R2 D L2 F2 R2 D' B2 U' L2 D' B D F R' D' L F' L2 R' U2" }
{ "R B2 L D' F' U' F' L2 B U R2 U F2 D' B2 D' F2 D F2" }
{ "B2 F D L' B U' B2 F D' R2 U2 L2 D2 F' R2 L2 U2 F' U2 F" }
{ "B2 L2 F2 R2 D F2 D' F2 D L2 D2 L D' F B' R' B2 U' R B' D'" }
{ "F' D2 B2 R2 U2 F' U2 B R2 D2 B2 U D2 L' R2 U' F' L2 B2 R" }
{ "B' U2 F U2 B2 R2 B R2 U2 R2 U2 R' F2 L U2 D L2 R U' F2 B'" }
{ "F2 D2 L' R' D2 F2 L' U2 F2 U2 R2 D B R2 U2 D' B2 L' B D" }
{ "D B L D' L2 F' L2 U' R' L2 B L2 F' R2 U2 F' L2 F2 D2 B" }
{ "D F2 B2 D R2 D' F2 U' L2 F2 D2 L' D B2 R2 U' R2 F R2 U' B2" }
{ "B2 D2 L D2 B2 R U2 L U2 L' U2 B' L D' F2 R2 B2 R D' B R2" }
{ "B' F U L' B2 R L2 F R D L2 F2 D F2 D2 F2 L2 U2 R2 U'" }
{ "D' F2 L2 B2 L2 R2 D B2 D R2 U R F D2 L' R' D2 R U B2 L'" }
{ "U2 D2 R D2 B2 R D2 L R2 U B' L F D2 B L R2 U2 B" }
{ "U2 L2 U2 F' L2 F L2 F2 U2 F B' U' D' F' R' F' U2 D2 B D2 B" }
{ "D2 R B2 R' L2 B F2 D' L F R' D2 U' B2 R2 L2 U' F2 R2 U2 L2" }
{ "U2 B D2 R2 B' L2 B2 R2 B U2 D2 L B2 U' F' B D' F2 B D'" }
{ "U2 B L2 B2 L2 B D2 R2 U2 B L2 R' F' B2 U F' B2 U' L2 D' F'" }
{ "B' L2 B' U2 F2 R2 U2 B D' L' R' B D B2 L2 D B2 L'" }
{ "F2 R2 D B2 L2 B2 U' D F2 U2 R2 B' L U' B U F' U L' D2" }
{ "L2 B L2 D2 B' L2 B2 D2 F D2 F' D R D2 B2 L R2 F U2 D' R" }
{ "B' F D' B' R L2 D' U2 B' U2 R L2 B2 F2 R U2 L2 F2 U2 L'" }
{ "U2 F2 U F2 R2 U2 R2 D B2 R2 F2 L' R D L2 R' B R2 D' L2" }
{ "B2 L2 U R2 D R2 F2 D B2 R2 B2 L D L2 B2 U F2 B D R U2" }
{ "F D2 F' R U2 L2 U' L2 F' U B2 R2 U' L2 D F2 D' R2 B2 F2" }
{ "B2 L2 U' D2 L2 F2 L2 B2 R2 U2 D F' D B2 R2 U B2 D2 L R2 D" }
{ "F2 R2 D F2 U F2 L2 U D2 B2 D L F' R D2 F2 R2 U' R U2 L'" }
{ "B2 D2 L2 B2 L2 B D2 L2 B U2 F' L' F' U B U R2 D L' U D2" }
{ "B R2 D2 F2 R2 F' B2 U2 F D2 B' L' D' R U' R F' D B R' U" }
{ "R2 B' D' B L' D2 B' D2 R B2 R2 U2 R2 U R2 F2 U B2 U' R2" }
{ "D2 B2 D2 R F2 L' R' D2 R' F2 L2 D R' B' L' F U D2 F R U2" }
{ "U' L2 B2 U' D2 F2 D' R2 B2 R2 D R D L' D' R' F B2" }
{ "D2 L2 D2 L2 F U2 B' R2 F D2 R2 D L2 D2 R D F2 B' D F'" }
{ "L D L2 B2 R' D' U2 R D' F2 D2 L2 B D2 U2 R2 B R2 D2 B'" }
{ "B2 D F2 U2 L2 F2 L2 D' R2 F2 B2 R D' R' U' L2 D' B R D R" }
{ "F2 L2 B2 L2 R2 D L2 B2 U B2 D' F' L' D2 B2 D F D' R' D'" }
{ "L2 F2 L2 U2 R' U2 F2 B2 L F2 U2 B' U2 L' R U2 F' D R' F'" }
{ "B U L2 B L' D R2 B U F2 D2 B' R2 L2 F' R2 F' R2 L2 F" }
{ "R2 U2 B2 U R2 F2 R2 U' R2 D2 R2 F D R' U2 L U2 F B2 U L2" }
{ "R2 U' B2 R2 U2 R2 U2 B2 L2 U' R2 B L' U' D2 B R' U R B L2" }
{ "L2 F2 B2 D R2 B2 R2 F2 U L2 U' F' U L2 B' D2 R' B L' F D" }
{ "R' D' L' B2 F2 R L' B' D' R2 B2 R D2 R' U2 B2 F2 R' D2 U2" }
{ "U' D L2 B2 U L2 R2 U' F2 L2 D2 R' U' F2 B D F R' F' R' U'" }
{ "B' L2 R2 B2 R2 U2 B' R' U L2 R2 F' B2 L2 R F" }
{ "F L2 B' R2 F D2 R2 F2 R2 B L2 R U' F2 L' F' B U L' R D2" }
{ "F' L U F D U2 L' B' D' F R F2 R' D2 U2 F2 R' F2 U2 R2 D2" }
{ "U2 L2 B' D2 B' U2 F' U2 R2 B' D2 R F2 U' R F2 U2 R2 U R' B'" }
{ "U L' D' L U2 F2 L' U R D2 B L2 U2 B U2 R2 B' U2 B2 L2" }
{ "B2 D2 L2 D2 L F2 L D2 B2 U2 B2 D L2 R' B D2 B2 D' L2 B2" }
{ "L2 B L2 R2 B U2 B' U2 L2 F' B2 U L2 F U B' R' B2 D' B2" }
{ "F2 R2 F2 L2 D2 L2 F U2 L2 R2 D' B' L' B U L' F U2 L D R" }
{ "U2 F2 D2 R B2 L2 F2 R' B' D2 L2 F' D' F2 B2 L D' R' B" }
{ "U R' B2 R' U2 R L' U' F' D2 L2 F2 D F2 U L2 D' B2 R2 L2" }
{ "F2 D2 R2 F2 R2 F D2 B' R2 F' U2 R U' D' B' R' U L D'" }
{ "F2 R2 B2 D F2 U2 L2 B2 U' R2 B' L B' R' F U' R' D' F' B" }
{ "L' D L' B R D R2 D L' F2 R2 D2 R2 D2 L2 F' L2 U2 L2" }
{ "L' U B2 L' F D2 U' L D' F' L2 D' U2 B2 D' R2 U R2 U F2 R2" }
{ "U2 R2 B2 F2 R2 D F L2 U' R F2 R2 D B2 U' R2 F2 U' B2 U F2" }
{ "F U2 F' R2 D2 B2 U2 F' L2 R2 B' U R F B2 R' U' R2 D L F'" }
{ "B' F' D R D2 B' F2 R F' R2 U2 R F2 U2 L F2 L B2 L' U2" }
{ "U2 F2 L2 D F2 B2 D R2 B2 R2 D' F' D B2 R F' L2 B' L2 B2 R2" }
{ "R2 U2 F2 D2 B' L2 D2 B D2 L U' D2 B U' B2 L' U L2 D" }
{ "F2 D L2 R2 D2 L2 B2 D R2 B2 D' F' L D R' B D2 L' U2 R'" }
{ "U2 R2 D2 F R2 B2 D2 B' D2 R2 B' L U R2 U2 F R D' B L2 F2" }
{ "U L2 U2 R2 F2 U' F2 U2 F2 R2 F2 L' D R' F2 R2 F' U' R' B U'" }
{ "D' R2 D' B2 L2 R2 D' F2 L2 U2 F2 L' B' R2 U' R' D R B2 U' L" }
{ "F D' F2 U R F L F R D2 R2 L2 B' R2 F R2 U2 F2 R2 U2" }
{ "U' R2 F2 D2 B2 D' L2 U' L2 D R2 F U' F' R F2 B L2 U F2 U" }
{ "L2 B2 L2 F2 U' D' F2 D F2 B2 D2 R' U' B2 L' D2 L B' L R D'" }
{ "L2 D' L2 D R2 F2 L2 B2 D2 B2 D' F L U F L' F2 U R2 D' R" }
{ "R2 F' R' D' F' U R D B D' B2 U F2 D F2 U R2 F2 L2 D'" }
{ "U2 B2 D2 B U F2 L' D' L' F D2 U2 F D2 B2 R2 F' U2 L2 D2" }
{ "U2 L2 U2 D' F2 D' F2 L2 D F2 D2 R B2 U' F' D' R F R2 U2 L'" }
{ "U2 F R2 U2 B' U2 D2 L2 B L2 R2 U B' L' B' D' R' F2 D F2 B" }
{ "D F L' B' F2 D' F2 U R' B R2 F2 U R2 D2 U B2 R2 L2 F2 D" }
{ "L2 R2 B L2 B' D2 R2 F2 U2 L2 F' L' F D' L B R2 F' L2 D2 L'" }
{ "L2 D' R2 D F2 U' F2 R2 B2 D F2 L F2 R F R U D F' U2 D2" }
{ "R2 U B2 D2 L2 U F2 B2 D L2 U F D R' F2 D2 L' U L' B R'" }
{ "F2 B2 D' R2 D R2 D F2 D L2 U' R' B U' F B L' F2 U B U'" }
{ "D' B2 L2 U2 R2 B2 D' R2 D' R2 B2 R' D2 R B2 U2 F B D' L' U'" }
{ "L2 U' L2 U R2 D' R2 U L2 D B D' L' F2 D R' D2 F2 U2 R'" }
{ "U2 D2 F' U2 L2 U2 R2 F D2 F B D B L' B' R F' L2 R' F U" }
{ "F2 U' L2 B2 D' F2 R2 D F2 U2 L2 F' D' L2 R' U D2 R' F' L2 U'" }
{ "U L2 F2 U2 R2 F2 U2 R2 U B2 U L' B' R' F' U B' U2 F L2 D'" }
{ "B' D2 F2 U2 R2 F' B2 L2 F U2 B U R D2 F' D F' B2 U' B D" }
{ "U' L2 B2 R2 B2 U' R2 D2 R2 U2 F R' U' L' D' B R D' B" }
{ "D2 B2 L D2 F2 B2 L U2 L2 B2 R2 B' D B' U D2 L D2 B2 L" }
{ "B U2 F B' L2 U2 B' L2 B U2 R2 U B L' U B' U2 R U' B2 R" }
{ "B2 R2 D2 R2 D F2 L2 D F2 D' B U' R' U D L F2 B2 U' R'" }
{ "B U2 B2 R2 B' U2 B U2 B D2 R2 D' R F' L' D' F' D R U" }
{ "F2 U' F2 U B2 R2 U B2 D' F2 U B U' B D F2 L B D" }
{ "R2 F' D2 R2 B' R2 U2 F B2 D2 F2 U' B L F R U' R' D2 L2 R" }
{ "U2 F' B' R2 U2 F2 D2 B2 R2 D2 B U' R' B2 D F U L' R' F2 D'" }
{ "U F2 L2 U' B2 U2 R2 D' F2 D B2 L R2 B R' U D R2 B D' B" }
{ "U2 B U2 B D2 B U2 R2 B2 L2 F' L R' D R U' R2 U' L2 F2 U2" }
{ "B2 U2 R' U2 D2 L' B2 R' F2 L R' U' R2 U2 R' F U F' D F2 U2" }
{ "R2 F2 D' B2 D' L2 F2 U B2 U B2 R' B U2 L2 F D' L2 U' R' B" }
{ "U' R2 B2 D F2 D B2 L2 D' F2 D2 L' F R B U L D' B2 L' B'" }
{ "D2 R B2 U2 R U2 R' B2 R' U2 R U' R F2 R2 D' F D L' F' L2" }
{ "B2 D' L2 U' D2 R2 D' F2 B2 U R2 F R' U2 B L' B' R2 U2" }
{ "F' B' R2 F2 L2 U2 L2 F' R2 B' U R' D' B2 R D2 F U' F' B" }
{ "D2 L2 D2 R2 B R2 F2 R2 D2 F2 B' U L' F B' L' R F U B2 U2" }
{ "R2 U2 R2 B D2 F' L2 F2 L2 B' U2 D L' R2 U L D F D' F' D2" }
{ "R' U2 B2 U2 R' F2 L' D2 L' R' B2 D' B' L F' U2 R U L2 B U" }
{ "B U2 F' U2 B2 U2 L2 D2 R2 B D2 L' D L2 D2 L D' R D' R'" }
{ "R2 U F2 R2 D B2 D R2 F2 D' R F2 L' F' D2 F2 B U R2" }
{ "B2 U' B2 U F2 B2 U' B2 R2 B2 L' U F2 L2 B' R' U2 L' F' R'" }
{ "R F2 B2 R' U2 F2 D2 R2 B2 L2 R' D R2 F R2 F2 U D' F2 R2" }
{ "R2 U2 L2 B2 U L2 U F2 U L2 D2 F' D2 F L F' L' B2 R D F" }
{ "U2 F2 U2 D R2 F2 R2 B2 U' D2 L B L2 U2 L B' U L R B" }
{ "F2 D L B2 U2 L B' L F2 U B' F' U2 R2 U2 F' D2 L2 B R2 L2" }
{ "L2 D2 F2 R2 D B2 D F2 D2 L2 R2 F U' L' R2 D2 R U B L D" }
{ "U' F2 U R2 D R2 D' B2 U R2 F2 B D' F2 L' F2 U2 D L U R'" }
{ "U2 L D2 B2 R' D2 R U2 L2 F2 U' B' L' F' L U L2 B2 U" }
{ "U2 F2 U' L2 D2 B2 L2 F2 D R2 U' L' F D2 R' U2 D' B' L2 B R" }
{ "U L' D' L F R D R' D B' U R2 B2 D' R2 U' L2 D2 F2 L2 D2" }
{ "F' D2 F' L2 B2 L2 D2 R2 F L2 B' L R D2 F L' U B' L' D' B" }
{ "U2 B R2 D2 F' B2 U2 R2 B2 D' L2 D' F L B' U2 L' F" }
{ "L2 F2 R2 U' L2 R2 U2 R2 D' L2 D2 R' F' U' L2 B D R' D2 L" }
{ "B' L2 D2 B' R2 D2 F' B' L2 R2 B' D F' D2 L' B' L B' D' R2" }
{ "U2 B2 L2 U2 F L2 B D2 L2 U' B' L' D' F2 D2 R D R2 B" }
{ "D2 B L2 F' U2 R2 B2 D2 F' L2 U2 L' D2 F B2 U L2 F R' D F" }
{ "R2 B' U2 F2 U2 L2 B U2 F' L2 U2 R U B D B' U F' U' B2 R" }
{ "U2 R2 B D2 L2 R2 F' U2 F2 B' L2 D R2 F L B R' F U2 B2" }
{ "D' R2 L U2 L D L B' L F R2 L2 D' R2 D2 R2 D' L2 B2 D'" }
{ "B2 R2 B2 D' R2 U' L2 F2 D2 F2 R2 F' U' B' U L R B R U B" }
{ "U B2 U F2 U2 D' L2 U R2 F2 D R' F R B2 U' D L' B U D2" }
{ "F2 D' B2 U D B2 L2 B2 U F2 B2 L U2 B D2 L2 U' B2 D R2" }
	}
}
if {$moves == 6} {
	set b "cross 6"
	.buttoncross.$b configure -background green
	set scramble {
{ "B D2 L' U F' R' U' F2 U B2 R2 D2 U2 F U2 B U2 R2 L2 F2" }
{ "U2 F2 D2 R2 U2 R2 F2 B' L2 U2 B2 D L R2 B' R' U' L D B2 R2" }
{ "L2 F2 R' F2 R U2 L' U2 R2 U2 B2 D L2 F' R D' B2 L' F B' L2" }
{ "U' F' R' U R2 B' R B L' B F2 L D2 L B2 D2 R' B2 R" }
{ "F2 R2 U B2 D F2 R2 U' F2 D2 L2 R' F2 D B D' F' L' F2 B' L" }
{ "L2 U' R2 D R2 U' F2 D2 F2 D' F' R U2 R B' R' F U2 L" }
{ "D' L2 R2 B2 U F2 L2 U B2 D' L' B' U' F' R U L B2 D' L2 R" }
{ "U2 F' D2 F' L2 F U2 F' D2 F2 B2 U' B L F R' B' U2 R' F2 R'" }
{ "L B2 L B F' L B2 U' R B' L2 U' B2 L2 U' R2 U' R2 F2 R2 B2" }
{ "B2 R2 D B' D2 R2 D' B2 D R D2 L U2 R2 U2 L B2 F2 D2 U2" }
{ "U' B' D2 L F2 R B U R2 B F2 L2 F2 U2 F2 D R2 D2 R2" }
{ "U2 L D2 L B2 L' F2 R' B2 R' F2 B L R' U' F U' B' D F' B'" }
{ "B2 R2 L F2 D U R D' B' F L B2 U2 L' U2 R' B2 D2 F2 D2 U2" }
{ "D F' R2 L2 B' R U' R2 B' F2 U2 R B2 F2 R2 D2 U2 F2 L" }
{ "D2 L2 D2 R B2 F2 U' B' L B2 L2 D B2 L2 D B2 D R2 D B2" }
{ "F R2 D2 F L2 F2 U2 R2 B' L2 B2 D F2 B' U2 D' L2 R' B2 R' D" }
{ "U2 F2 R' D2 R' D2 B2 R2 U2 F2 L F D L2 U L2 D F2 U F'" }
{ "R2 B2 L2 U B2 D' R2 D F2 D' L2 F' U' R2 F U' F' R' D' F L" }
{ "D R2 F2 U' L2 D F2 R2 B2 R2 U' B' L2 R' U F' R D2 B2 U2 R'" }
{ "B D' B' R D2 F L B2 R' B2 F L2 B U2 B R2 L2 U2 R2" }
{ "L' U2 L R F2 L D2 B2 U2 F2 D' F2 R F L' F R' U L' F" }
{ "L' U2 R F2 L D2 F2 B2 D2 B2 R D' B' L U R2 F2 U2 L' B2 R2" }
{ "L' F2 D2 F2 R U2 R' U2 B2 R' D2 B' L B R F L2 R B U" }
{ "L2 D2 B2 D' R2 D2 B2 D L2 D L' F2 U B R2 F U B2 D F B'" }
{ "B D2 L F L' D F' U F' U L2 D2 L2 B2 R2 D F2 U B2 D" }
{ "U R2 D B2 D R2 U B2 R2 U' L' F2 R B' R2 B' R' B2 D2" }
{ "R2 U2 F' U2 F U2 L2 R2 F2 D2 B U' R B' L B2 R' F D2" }
{ "F2 U B2 R2 U' B2 U F2 U' R2 B2 R' D B U2 D F U' L' D' R2" }
{ "U2 B F' D' B' R2 F R2 L F D R2 L2 B2 U2 B2 F2 U' L2 D' L2" }
{ "U' R' F R' L' F' U' F R' U F' D2 R2 B2 R2 B' R2 B2 R2 B' D2" }
{ "B2 D' F2 U' D2 L2 U2 L2 F2 D' B U D2 L' F' D' B2 R' U F' B" }
{ "R2 F' D2 F2 L' F' D F' D' R F2 D2 U' B2 L2 D2 R2 D R2 B2" }
{ "U F2 D' L2 F2 B2 D B2 U' R2 D2 F L D B2 U' L' D' B' R2 F2" }
{ "D B2 U2 L2 B2 D' R2 D F2 L2 D L' U' F' R2 U2 F2 D F' B' L" }
{ "B2 D2 L2 U2 R' D2 R B2 D2 L' B2 U' D' L' R' F' D B L' U2 F'" }
{ "U' F2 R2 U L2 R2 U L2 U2 F2 D2 L' U F' U' D2 L' U2 L2 U'" }
{ "U L' F' R' D' U' F U' B R' U2 R2 L F2 R' L B2 U2 F2" }
{ "L2 F2 B2 D F2 L2 U' L2 U' F2 D B' D2 R' U2 B' D R B' D F'" }
{ "U2 B2 U2 B2 U F2 B2 U' F2 U' R2 B' L' F2 U2 L' R' U' R U2 L'" }
{ "B2 L2 B2 L2 B2 U' B2 U F2 D R2 B R' B2 U' D R' B2 U F D" }
{ "D2 F L B D L' D' U' F D' R2 U B2 D' U' B2 F2 R2 B2 U" }
{ "U2 B D2 L2 R2 B' L2 U2 R2 B' D2 L R2 D L2 R' B L2 F2" }
{ "U F2 B2 D2 F2 L2 D' R2 D' R2 F' D F U B R U2 D2 R F'" }
{ "L2 R2 B2 D L2 U2 L2 F2 D B2 D2 F B L' F L2 D R'" }
{ "F L2 B2 L2 B' U2 B' R2 F' L2 D B' R F2 U' F2 B' L D2" }
{ "L2 B' R2 D2 L2 U2 B2 L2 B' L2 D R U' F D2 R' U' R2 U' L2 F'" }
{ "B2 U' F2 U' B2 U2 L2 D' B2 R2 D2 L' F2 L R B L2 F U' L'" }
{ "D' L2 D R2 F2 D R2 D2 L2 D' L F' U R' B2 U L2 F U2 L'" }
{ "B2 U L2 R2 B2 D L2 R2 D' B2 U' L U L2 F' D L2 U F B2 R'" }
{ "F' R' B' R2 B' R2 U' R' D2 B' F2 U2 B2 D2 R2 D L2 U2 B2 R2 D2" }
{ "R2 D2 L2 R' U2 B2 R2 U2 D2 F2 D2 F D B' U L' B2 L B2 U' B'" }
{ "B U2 B' U F2 D2 L2 B L U R2 F2 D' L2 B2 F2 U R2 U2 F2" }
{ "B2 D2 R2 U' L2 U' R2 F2 R2 D' F2 R B L2 R U2 F2 L D2 B' U'" }
{ "U' L2 U2 D' F2 U' L2 D' L2 F2 D' B' L' B2 U2 B' U' F' R2 U R'" }
{ "U L2 F2 L2 B R' D' F U F D2 U2 R2 L B2 D2 R2 L U2 L'" }
{ "D L2 R2 D L2 F2 L2 B2 U L2 U2 F D L2 D' F L' R2 U2 R2 F" }
{ "U' L2 D' B2 R2 D' L2 D' R2 U' D2 B D L2 D' R F2 U B' R' U" }
{ "B2 U2 B2 U F2 B2 D' L2 B2 L2 F2 R F U2 D B' R2 B2 D' F U'" }
{ "B R F U R' D' R B' U' F L2 F' U2 F D2 U2 R2 U2 B R2" }
{ "L2 F L' D' F R' D2 L' U B D2 B' L2 B2 F' D2 U2 L2 B D2" }
{ "R2 U' R2 U' R2 B2 U' R2 B2 R2 D' B' L' B' U2 F2 L D F2 L' B" }
{ "D2 R2 B2 R2 F2 R2 U2 F U2 L2 R2 U' B U R U' L F U2 L" }
{ "B' D2 F U2 L2 F L2 B U2 R2 D2 L F R2 F' U' B' D' F' R' F" }
{ "B2 L2 U2 L2 R2 U B2 D' F2 D2 L2 R B' D L F' B D L' U B2" }
{ "F2 D B2 L2 F2 B2 U2 D' B2 R2 D F R U2 R' F L' B R' F'" }
{ "R B2 R2 D2 L B2 D2 L' F2 R2 D' B' U D2 L2 R F U' F2" }
{ "R2 F2 U' R2 B2 U F2 L2 R2 D2 F2 B' D' L' F' U' B D L' D R2" }
{ "D' F2 U B2 L2 R2 D' L2 F2 U2 D2 F R' F2 U D' B D2 B2 U" }
{ "R F2 U2 R2 U2 B2 D2 R F2 B2 L' F' U' B D2 F2 D L B U2" }
{ "D2 R2 B' D2 R2 B' L2 B' L2 U2 F2 R' D' L' R' B2 U D' F' U2 R2" }
{ "L2 U L2 D R2 U B2 R2 D2 B D' L B R' D F' L' D" }
{ "B' D2 R B' L F U' R2 D' L U2 L2 B2 U2 B' R2 L2 U2 B' D2" }
{ "B' U2 R L2 U' B' D2 R2 D' R L2 B' U2 B L2 U2 L2 F' D2 R2 F" }
{ "R2 D2 F2 D F2 U R2 B2 D R2 D R D F2 L B' U B2 U F' D'" }
{ "D F2 L2 B2 L2 D' F2 U2 F2 B2 U' R' D2 F' R' D2 L R2 D' R D" }
{ "D L2 U' L2 D2 L2 D' L2 R2 B2 L' U' F' D' F2 D' F2 L2 R' D'" }
{ "R2 D2 F2 L2 U2 D L2 D2 L2 B U2 F U2 L' D' B U F L' U'" }
{ "F2 D2 L2 D2 L' F2 R' D2 L' F2 L' D' R U F D2 L' F2 L2 U F'" }
{ "L' F2 U2 R2 D' R' F2 D' L D2 U2 F' D2 R2 U2 B R2 B' F2 R2" }
{ "U2 F2 R2 U2 R B2 L' F2 B2 D2 L B R U L' D' L D L' D'" }
{ "U B2 L2 U B2 D2 F2 U F2 L2 B2 L' B' D R F R2 U' L U2 R" }
{ "D L U2 F D U2 F' R' L D R2 D2 U R2 D2 L2 F2 D B2" }
{ "F' D2 R2 B R2 F U2 F L2 R2 B U F2 L U2 R2 B D L D' L'" }
{ "B D' U2 R D F U L2 F R B' L2 B2 U2 B R2 F' R2 B' R2 U2" }
{ "U F2 R2 U L2 B2 U' R2 D R2 D F' D F2 L' D B L2 U' R' B" }
{ "B2 R' U2 F2 D2 L F2 U2 R' D2 L2 F' U2 B U' F2 L D' R U D2" }
{ "D' F2 R2 U' R2 B2 U' F2 U' B2 L B' R' F' U2 D' L' U' F R'" }
{ "U2 L2 U' B2 D L2 F2 D2 L2 U' R F D R2 F2 B L' U2 F2 U D" }
{ "U B2 R2 U2 D' L2 D' L2 F2 B2 R2 B' L U' F' U' F' D2 F2" }
{ "U' B' L' U L2 D2 F' L' D' R2 L2 D2 F R2 B' F' U2 L2 U2 F" }
{ "R' U' R L2 U' R2 L B' R2 U R F2 U2 R' D2 L B2 U2 L B2 L" }
{ "B2 D' U' B2 L' F D' R L D B2 U2 F' U2 B R2 U2 B2 D2 B R2" }
{ "L2 R2 U2 F L2 F' R2 B2 U2 L2 F2 L D F' R B U D' F B2 U" }
{ "D' R2 F2 R2 D F2 R2 U L2 U2 D' L D' B U2 D B' L R2 D2" }
{ "R2 U2 L' U2 R F2 B2 D2 L' R' U2 D' L2 D2 L' D L' F2 B' D'" }
{ "R D' L F D L' D2 F2 D B F U2 R2 U2 B2 U2 B' F2 L2 B" }
{ "U B2 U R2 U' L2 F2 U' B2 L2 D2 L D' F' R2 D' B R' D F B" }
{ "B2 U' F2 D F2 L2 R2 U' B2 L2 U' R' B2 D2 B D R' F U2 R' U" }
{ "B2 L2 F2 D2 L2 U F2 D F2 U2 L B' D2 L2 B R B2 D F R" }
{ "B' U2 L2 F2 U2 F' L2 U2 B L2 F2 R' U L U F' D2 R' D" }
{ "L' F2 L' R2 B2 R' B2 D2 L2 R2 D B' U D B U D2 R' U R2 B'" }
{ "F L2 F U2 D2 F D2 B2 U2 L2 U2 L F L2 D2 F D' L F2 L2 D2" }
{ "D L2 F2 L2 U' B2 U2 B2 D2 L2 D2 L D2 F' D R' F2 D' L U' B" }
{ "U2 F2 L2 U B2 L2 D' F2 U B2 D L B D R2 D' R D L' U2 L2" }
{ "L2 R2 F R2 B' R2 B R2 F L2 F2 R U' L' F2 R U L D' L' F2" }
{ "L2 U2 B' D' B' L' D F' L' D2 B2 D2 B U2 F2 D2 B R2 L2 B2" }
{ "U' F2 L2 F R B' L D' R' U2 F2 L2 D2 B R2 L2 B F2 U2 L2" }
{ "U' L2 D2 L2 U' R2 D' L2 U L D B R U2 F R' F2 L U'" }
{ "F' D' U R D' R D L' B' D' F2 D2 F2 U B2 F2 L2 F2 D R2" }
{ "L2 D' F2 U' D F2 L2 D2 F2 U' B2 L' U' B U' F' D R' F2 B' L2" }
{ "U' F2 D2 L2 F L' F L2 D B2 U2 L U2 L' D2 L' F2 L2 F2 U2" }
{ "L B2 R2 U2 F2 R' D2 F2 D2 L R' B' R2 U F D B' D' L B" }
{ "L B2 L2 R U2 R' U2 D2 B2 L B2 U' R2 B' L U' L B' U' F' L" }
{ "D' U2 R' D U' L U' L' B U2 R2 L B2 L' D2 L U2 R2 D2 U2" }
{ "B2 L2 B2 D' R2 B2 D F2 R2 D L2 B' L2 D R' F' D' F' L' F2" }
{ "R2 D L2 F2 R2 B2 D' L2 D2 B2 R2 B' R2 U F' D' R D' L2" }
{ "L2 F2 L' U2 L F2 L B2 D2 B2 R F U' R B' L D2 L2 R' U2 D" }
{ "D2 F2 R B2 U2 L B2 L R2 F2 L D' B U' B2 D L2 F2 B' L R'" }
{ "B D2 U' F' D R' F D F D2 R D2 L' U2 R' F2 R2 B2 R2" }
{ "F2 L2 F2 R2 U' B2 U2 F2 L2 F2 D B D B2 L2 B' L D L2 R2 D2" }
{ "B2 U' B2 R2 U L2 B2 U2 L2 U' L' B R' U D' R2 D2 F2 B L2 R'" }
{ "L2 D' F2 U L2 U B2 L2 D F2 U B' U L B D2 B2 U R' U' D" }
{ "B' D2 F D2 F L2 R2 D2 F L2 R' U' F' U2 D L' F L B R2 B" }
{ "R2 B2 L2 D2 F2 D' L2 B2 R2 D2 R2 F D' R2 U R U2 B2 U' L' D'" }
{ "F R' D2 L2 D' B R' D L2 F' L2 B U2 L2 D2 F2 L2 B' U2" }
{ "F D2 B L2 B R2 B R2 F2 R2 B' L D' R F' B2 L2 D' L' F2 R" }
{ "F2 R2 D2 L2 U2 R2 B2 D B2 D' B2 L' F' U R' D' R' U' B' U' B2" }
{ "U2 L2 U L2 F2 B2 D2 B2 L2 U L2 B' L F2 B' D' B2 L' U R2 F" }
{ "B' D U2 B L' D R' B2 U B' L D2 B2 D2 F2 U2 R2 F2 D2 L2" }
{ "D2 B L2 F' R2 F B2 R2 U2 B U' L' U R F' D2 F2 L' U D' B2" }
{ "B' L2 B' L2 R2 U2 B' U2 F' L2 F R' U F' L U2 F L' B" }
{ "L2 F2 L2 F2 D2 B' D2 R2 D2 L2 D2 R U' D L D' F' D'" }
{ "L2 R B2 U2 L2 R B2 U2 F2 D2 B' L D' L U' L2 D2 R2 B L2 R'" }
{ "B R2 F2 R2 D2 F R2 F' R2 F2 U' L2 D2 L D R U R' B' U2 F'" }
{ "U B2 D' L F R' L B2 D2 B D L2 U2 B2 L2 D' F2 D R2 D L2" }
{ "D2 B2 U2 B R2 D2 B2 D2 R2 D2 F D' B' D2 R' D F U2 B2 U2 L" }
{ "L2 F2 R2 F2 D2 R2 B R2 B2 D2 B2 L' D' R U' R F D F2 D F2" }
{ "R B F R2 F' L D' U' R D' U2 F D2 F D2 L2 F2 R2 L2 U2 L2" }
{ "D' R U F2 L F2 U' F L' U' B U2 F2 U2 R2 U2 B' R2 F L2 F" }
{ "F U2 F2 U2 B L2 U2 B' U2 L2 F2 L' D2 B L2 B' U R F L2 F'" }
{ "D R2 U2 F2 U' F2 U F2 D F2 D L D2 F' U' R U2 D F' U' L2" }
{ "F2 L2 U2 R2 D L2 R2 D' L2 R2 U' B D' R2 U' D2 B2 L' B L2 R2" }
{ "U' L2 U R2 D R2 B2 R2 D F2 B R F B D L2 F2 D L B2" }
{ "D2 B L2 F U2 D2 R2 U2 D2 B R2 D L R' U B' U2 R' D' L B'" }
{ "D2 B' D B2 R U2 B R U L' D2 R' U2 B2 U2 B2 L' U2 R U2" }
{ "R2 U2 D2 R U2 D2 R' B2 L2 D2 F2 U' B' R D2 F' D R' B U2 R" }
{ "B2 U2 B2 L2 U' B2 R2 D2 F2 L2 D B U2 D R F L2 R U R2 D'" }
{ "U2 F2 R2 U R2 F2 R2 U F2 D B2 R U2 R B' R2 F R F R U'" }
{ "R2 F2 U L2 U D2 R2 F2 D L2 B2 R F B' U L D2 R' U2 F2" }
{ "D R2 B2 U2 F2 U2 R2 F2 D L2 F2 L' B' L2 B2 U' F2 U2 R' U2" }
{ "B2 F' L' F2 R2 U2 B' L D' U2 F2 L' B2 L' D2 B2 U2 L2 U2 L" }
{ "L2 D2 U' R2 D2 L U' B F L B2 D' F2 R2 D F2 U2 L2 D' R2 F2" }
{ "U2 R F2 L U2 D2 L' B2 R2 U2 R D' F' D L' F U' B' D' L" }
{ "U2 F2 R2 F L2 D2 B L2 F' U2 F D R U' D2 L' D' F' D2 B' D" }
{ "U D R2 D L2 F2 D' R2 B2 L2 R' B2 D2 B U L B2 R2 F L' B" }
{ "U' R2 D B2 U' R2 U2 B2 D L2 D' B' R2 B2 L' B2 R B D' F' D" }
{ "R D B R F2 U' F L' F R2 B2 U B2 R2 B2 U' L2 U' B2 R2" }
{ "R2 U2 F2 L2 B D2 B2 L2 B' L2 U2 L D F2 R F' D' R2 F' U F'" }
{ "U2 B2 R2 F D2 L2 B R2 D2 B' L2 D F2 R2 D2 R' F U B R F" }
{ "F R2 F U2 F R2 F L2 U2 L2 F2 L D' F' R' D2 R' B' R D'" }
{ "D' R2 F2 B2 D' R2 U R2 B2 U F D F2 R' D' F R' F B' L" }
{ "R' D' F U2 F2 R' F' U' L B L2 D2 B' L2 F' U2 F U2 F'" }
{ "R2 U' R2 D' R2 U2 R2 B2 D F2 L B' R2 D' R B2 R F' B L2 R2" }
{ "F' L2 B U2 R2 B' U2 R2 F' D2 R2 U' F U' L' D R' B U' B" }
{ "U B2 D L2 B L2 U2 L B U B2 L2 B2 D' R2 D2 U F2 L2 D" }
{ "L F D R' F R2 U' R' U L F2 R2 D B2 U2 B2 U F2 L2 U2 R2" }
{ "L2 B2 R' D' B R2 U2 R F R2 L2 B2 D' U' L2 U' B2 U' R2 B2" }
{ "L U' L B D' L U R U' R L2 D2 B U2 B' F' R2 U2 R2 F L2" }
{ "F R' D B D' F2 L' D' L' U' R' B2 U2 B2 R2 U2 B2 L' D2 U2 L" }
{ "B R' B2 R U L' D' U2 R' F' D U2 L2 F2 D' F2 R2 F2 R2" }
{ "F2 L' D2 B2 R' F2 R' B2 L F2 L' B L' F2 U L2 U B' L2 B'" }
{ "L2 R2 D2 F L2 F D2 F U2 R2 F' U' B' L D F' D L2 U L B" }
{ "L D2 L2 U2 B2 L D2 L' F2 L2 R' B R U' B' U' D' B' D2 R' F2" }
{ "R2 D2 L2 R2 B U2 F' R2 F B D2 R' D' R' F' L' U2 D' L2 F R2" }
{ "D2 L2 U L2 R2 F2 U L2 D' R U2 B' U' R2 F2 R' B' R' U'" }
{ "B D' L' D' B2 R' B D' U' B R' B2 R2 B F2 U2 L2 B L2 D2 L2" }
{ "B R2 D2 F2 B D2 L2 B R2 B2 D2 L' B' U F U' F' D L F2 R2" }
{ "B2 R2 L' D2 R F2 D R2 U2 F L2 U B2 D U L2 D B2 F2 R2 D" }
{ "B' D' F D U2 L2 B2 R' U2 L' D L2 B2 L2 B2 U B2 U R2 D2 R2" }
{ "B2 U2 B' U2 D2 F R2 D2 R2 B2 D2 L' B' L' R' F L' D' L U' B2" }
{ "B2 R2 U' R2 D2 R2 U' F2 U' F2 D2 F L2 B' R F2 L' U B' U2 F2" }
{ "R2 B U2 L2 B D2 R2 B' U2 D2 F R D B2 L B2 U2 F L' U' L'" }
{ "D L2 U' R2 U' B2 U2 F2 L2 U R2 F' D' F' B2 L U B' L2 U2 B" }
{ "F U2 D2 L2 F' B' L2 F2 D2 L D B' U' R U2 F' U L2 D' L R" }
{ "B2 L D2 F2 R' D2 L F2 L' F L B L' B2 D' L' U' D' B D'" }
{ "D L2 U' B2 D R2 U2 R2 F2 B2 D F' R' U' F R2 F2 U' L' U2 F'" }
{ "D' R' B D' F D' U R2 B' D2 R L2 B2 R2 L2 U2 R2 D L2 D'" }
{ "R2 U2 L2 D2 F2 U2 F' L2 U2 B U2 L' B2 D' R' F R' U' F' B' D'" }
{ "U B' R' U L D2 U' L' U2 R' B2 U2 B L2 B2 U2 F L2 B L2 U2" }
{ "B D2 F' R' U2 B F L F2 R2 D F2 D R2 L2 D F2 D2 F2" }
{ "D R2 F2 B2 D' F2 R2 U F2 D2 R' U B2 U B' D' L B' L2" }
{ "D2 L2 D2 F2 D' B2 L2 F2 U L' B' L2 D2 F' R D L' R2 D" }
{ "F D F2 D2 R2 U F' R B' F2 R B2 R' B2 L' F2 L' B2 R' L'" }
{ "R F2 R' B2 U2 F2 R F2 R2 U2 B L U2 R' B' D' B' U' R' D2" }
{ "B R' F' U2 L B' L2 F' U B2 U2 L' B2 U2 R2 B2 L D2 B2 R" }
{ "L2 U2 F2 D2 B2 D2 R2 F2 L U2 L' U' F' R U2 D2 L B' D2 R'" }
{ "R2 B' D2 L2 F R2 B2 L2 R2 U2 L2 D' B' D2 B' U2 L F D' R' F'" }
{ "F2 D2 R2 B2 D2 B' L2 B U2 B' U2 R D B2 R2 F2 R2 U2 R B L2" }
{ "B2 R2 F2 B2 R U2 R2 D2 B2 D2 R B' R F U' R' U2 D B L' D2" }
{ "L B2 U2 D2 R' D2 L' F2 U2 F2 L' F' U2 L' U' D2 B U' R" }
{ "F R2 B2 L2 R2 F' L2 B2 U2 L2 B R F' U' L B2 U B' L' D L" }
{ "L F2 D2 L F2 R' F2 U2 L' D2 L' D F2 R D L' U' D2 F' D2 B" }
{ "U2 B' L2 B2 L2 U2 D2 F' B' U2 L2 D' B L B' D' L' R2 B' U2 R'" }
{ "L F2 B2 U2 R D2 R' B2 L D2 L U' R' U2 R2 D B D2 F' U2 R'" }
{ "F2 R' U R L2 D L D' R F' D2 L D2 L F2 R' B2 U2 L F2 U2" }
{ "U' R2 F2 D F2 U' F2 B2 U B2 D' B' R F2 D2 B' L D2 L U2 R'" }
{ "R2 D2 B2 L2 B2 R2 B2 U L2 D R' U F' D' B' R D' L U L'" }
{ "U F2 U2 D' R2 D F2 D' L2 B2 L2 F U' B2 L' R' D2 B' U2 F2 R2" }
{ "U R2 D F2 D F2 R2 B2 D' R2 D R B R F L D' F' L' D' R2" }
{ "L U2 D2 R B2 L' F2 D2 R' D2 F2 D' B' D2 R D2 L' U2 L2 U2" }
{ "F' U' F D' B D B F' U L' B2 L2 F2 L B2 D2 B2 D2 L" }
{ "F' U F' R B2 L B' D L D2 F U2 B' D2 U2 B2 U2 R2 B' R2" }
{ "B' R' L U2 F' U R D B R B R2 B R2 B2 R2 U2 L2 B' L2 F'" }
{ "L' U2 R B U' R2 U2 F L U2 L2 B' L2 F R2 L2 F2 R2 U2 F'" }
{ "B' D2 B L2 R2 F2 B' R2 F' L2 U2 L' B' D' F U' R B' R2 U B" }
{ "L2 F2 U2 F2 U' D2 R2 U' L2 F2 U' F' R' U2 F L2 R F' R2 D B2" }
{ "R F D F' D' F2 U B2 F' R F U2 L2 D2 U2 F R2 B U2 F" }
{ "R2 F R2 F' L2 F2 R2 D2 L2 D2 R2 U R B2 L B' L' F' B2 D' L" }
{ "U F2 U2 L2 B2 R2 D' F2 D2 B2 D' B U B2 L' R2 F' R' U' L U2" }
{ "D2 F2 L' D2 L2 F2 D2 B2 L F2 L' D' B R B2 L2 U F D' R' B" }
{ "L' B' U2 R B' R' B' L' F' D' B2 F2 L2 D' B2 U F2 L2 U' B2" }
{ "U' D2 L2 F2 U D2 B2 D' F2 L2 B2 L' R2 D F2 R' B D R U' L" }
{ "L2 U F2 D F2 B2 D2 L2 F2 L2 B2 L D2 R2 F2 D' B R2 D2 F2" }
{ "D' L B R2 B2 R B' D F L2 B2 D2 R' B2 D2 R2 L' D2 U2" }
{ "R2 U2 B D2 F' D2 B2 U2 L2 B' R2 U F2 U' R' U' L' R D F D" }
{ "R2 F D2 B2 R2 B D2 F' D2 B2 L' B2 U' D2 B R2 U2 D' L U2" }
{ "L2 U2 L' R U2 F2 U2 B2 R' F' R' D' R' F' L' U' B' D2 L" }
{ "U R2 D L2 U2 D' R2 D F2 B2 D2 F L F B2 L2 B R' B2 U D" }
{ "B D2 R F' R' U' R2 F R D R2 L2 D2 R2 U' L2 U' B2 D" }
{ "F2 U F2 R2 F2 D L2 U D' L2 D' B' R' D2 R' B' D' L R U' L" }
{ "D F D2 L2 D' R2 F R' U B' L2 U2 B2 L2 B2 L2 U B2 U2 R2 D'" }
{ "R2 U2 F' D2 F2 U2 F L2 U2 L2 B' U B R U' D R U2 R2 F' B'" }
{ "B2 U2 D2 R2 D2 L B2 R D2 B2 R2 D' F' U' L' F2 L2 U2 F2 R'" }
{ "R2 D2 B U2 R2 B' R2 F B2 R2 F2 R F' D' L2 B2 U2 R F' L2 F'" }
{ "L' B F2 U' L' F' L F2 L B D2 B2 U L2 B2 D R2 D' B2 F2 L2" }
{ "L D2 R2 F2 D2 L' B2 R' F2 B2 R' B L2 D B' L2 U F2 D' B2" }
{ "D L2 B2 D2 L2 F2 D' F2 B2 U' D' R' U' L' U' F' B D B' R D2" }
{ "U2 R' B2 U' R' L U' F2 R' B2 U2 L2 F U2 L2 B D2 U2 F" }
{ "B D U' R F U2 F U L2 B' D2 L F2 R D2 L D2 R D2 F2 R" }
{ "F2 R U2 F2 R' B2 D2 R B2 L' R U L' B' L2 R' U2 F2 D' L2 F" }
{ "F2 L2 F2 B2 D F2 R2 U2 F2 U D B' D' F' D L' D' B U R D2" }
{ "U2 D2 B2 L' B2 U2 D2 R' U2 L' B' D' R2 B2 L F' U2 D' L'" }
{ "F2 U' F2 D F2 B2 U' D2 B2 L2 U2 F' D B' R D B U2 D' L' F'" }
{ "F' L2 F L2 F' L2 U2 F2 B2 L' U' R2 B U2 D2 L2 B' L D'" }
{ "U' L2 R2 U' F2 U L2 D2 F2 U' L' R' B2 U' L2 B' D2 F2 U' B'" }
{ "U B2 L2 U R2 U R2 F2 U F2 D2 F' B' U2 F' L' D R B' U R'" }
{ "U2 B2 L F2 D2 L F2 U2 L U2 L' D F' L R U' R2 F' R' U2 B'" }
{ "D L2 B2 U2 R2 U' B2 D2 B2 L2 U B' D2 L U' B D R F' L B2" }
{ "U2 L2 U2 B' L2 B' U2 F' D2 R2 F2 L U B' U F' D' L F2 D2" }
{ "D' R2 U2 L' D F D' L' B' D' U2 R2 F2 L' B2 L D2 L' B2 U2 B2" }
{ "L D L2 U L F' R' B R D' R2 F2 D2 U B2 L2 U R2 U2 B2" }
{ "R2 D2 F2 L2 B2 U F2 B2 U' B2 U2 L F B U' B' R F2 U F' U" }
{ "F L2 U2 B' U2 B' U2 B2 U2 F2 D' L2 U R' D2 F D' L' U2 F'" }
{ "B U L F U2 L2 B L F U2 F2 U L2 D' F2 U B2 R2 D2 F2" }
{ "D2 F' U2 F2 D2 L2 B R2 F' D2 F' U' F' B' U' F2 B2 L' B U' F" }
{ "U2 D2 L2 F2 L D2 R2 B2 U2 L2 R2 U' F U2 B' L' D2 F B U' L'" }
{ "L' D2 B2 L F2 R' U2 L' F2 L' F R2 U' B' L' U' F2 D B' L2 R'" }
{ "U L2 U L2 B2 U2 L2 U L2 D R2 B' D R' D F' D B2 R' F2 L'" }
{ "L' F2 L U2 B2 R' D2 F2 L U2 L2 F' L' B L2 U D2 L F D' F" }
{ "U F2 U2 F2 B2 L2 D' L2 D' F2 B' L2 B2 U' L B2 R' D B U2 L'" }
{ "F' U2 R2 F2 B R2 F' R2 D2 B2 R' U' L' R' F D' B' D L' B2" }
{ "L2 U2 B2 D L2 D B2 D2 R2 F2 U' L' U' F2 R' U F2 L2 B' R U" }
{ "R2 B' R' U' F U' F U' L' U B2 L2 D2 B2 D2 B' D2 L2 B2 R2 L2" }
{ "L D L D U' R' F' D B L2 U B2 R2 D R2 D' F2 D F2 D2" }
{ "D2 B' U2 B L2 U2 F R2 B2 R' F B' R D F' U B' R F2" }
{ "B L' U R F' L' D B2 D2 L' U2 B F2 R2 D2 B' L2 B D2 F2" }
{ "F2 D F2 U L2 D R2 D' F2 B2 R2 B' D2 R' B' U2 L U F B2" }
{ "L2 U' L2 R2 F2 U B2 U2 R2 F2 D R' B' U B' R B2 L2 D L' F'" }
{ "D B2 R F' D2 L D2 R2 D' B2 U2 R2 B R2 L2 U2 L2 F D2 U2" }
{ "D L D U' L2 B R' F D F2 R2 B2 D2 U2 L2 F R2 F U2" }
{ "B2 U2 L2 B' D2 L2 D2 L2 D2 F L2 D R' F2 U' L F' U2 B U D'" }
{ "U' F' U L' D' U' B' F2 R D R2 F2 L2 B2 D2 F2 D' F2 D' L2" }
{ "F' U B R B' L' F' D R' U' B2 D2 L' B2 D2 B2 R' U2 R2 U2 L" }
{ "F2 U2 L2 F2 D2 B2 D' L2 B2 D2 B2 L' U F2 U F' U2 R F' L2 D2" }
{ "F2 L2 D2 R F2 B2 L F2 R' B2 L' U D L' F L B' L F' U'" }
{ "B U2 B R2 F' L2 U2 B2 L2 R2 B L' B' L2 R' U' F D F U2 B'" }
{ "D2 F2 L' F2 U2 L2 U2 R2 D2 B U2 L' F2 R D' B D2 L2 D2" }
{ "L2 F' R2 B' U2 D2 L2 D2 F' R2 B D' L' R U B' D2 R' D F' B" }
{ "B2 D F2 B2 L2 D' L2 R2 D' B2 U' F R' D L' U' L2 F' U' L2 R2" }
{ "U2 L2 F2 U' R2 B2 D R2 U F2 D2 L' F U L2 D' B' R' D2 L' D2" }
{ "U2 R2 F' D2 F2 U2 B U2 L2 U2 L2 U B L' F' R' D2 F B' R' F2" }
{ "L F2 U2 D2 L' B2 L F2 L' D2 R' B L R2 U' D' B2 R U' D' L" }
{ "D' L2 U L2 U R2 U2 L2 B2 D' F2 R B' L' F' R2 D' R' B2 D F2" }
{ "B2 D2 B' L2 U2 R2 B D2 F' D2 L' U2 D F' D' R' U' F' B2 R'" }
{ "D' L2 D' L2 U F2 D' R2 D B2 L2 B' R2 D2 R' D2 L' D B' R2 U'" }
{ "L2 D' R B L D R2 U R U B2 U R2 F2 D2 R2 D' L2 F2 D2" }
{ "B2 R2 B L2 F' D2 B' L2 F L2 B R' F' D2 F U R' U D R'" }
{ "R2 U L2 D2 B2 U2 B2 R2 D L2 D' R F' B2 L' U' L' R U2 L2 B" }
{ "F2 L F2 D2 R' U2 D2 R' F2 R2 U R2 F' D2 B2 L B2 D' F2" }
{ "D2 B2 L2 U2 R2 B U2 R2 D2 L2 B' D R D2 L2 R' F' R2 D' F R" }
{ "R B2 L F2 U2 L D2 R F2 U2 R B U' R D2 F2 U D2 L' U'" }
{ "R2 B2 U2 L' R2 D2 B2 R2 F2 R2 D' R D2 L2 B U' F' L2 R' D2" }
{ "U2 B2 R2 B' R2 U2 L2 U2 B' D2 F' L' B' D' L2 F2 L U2 B' D2 B" }
{ "B2 U2 L R U2 R D2 L' D2 L R' B' U' L U F D' L' F U'" }
{ "L2 F2 U2 B' R2 B' L2 F B2 U B L' R' F L B' R' D2 B' D" }
{ "D' R2 U' R2 B2 L2 R2 D2 R2 B2 U' L F B' R2 D L' F2 R D" }
{ "U B2 U' B2 U B2 R2 D R2 D2 F2 L' R2 B2 U' F B' U' L' U L2" }
{ "D2 L2 B2 U2 F L2 D2 R2 D2 B' D' F L R B L R D F D" }
{ "D B2 U2 B2 F2 L B L' D R' U2 L D2 B2 L2 D2 B2 R' D2 U2" }
{ "R F2 D2 L2 F2 R' F2 B2 R F2 R' U' B R D L2 U' B' R' D" }
{ "B2 U L2 D2 F2 D L2 U' L2 R2 D2 F' L' D F2 U' L' R2 B D R2" }
{ "L2 B2 L2 B2 D' L2 D' R2 U2 F2 L' B L2 D2 B2 L D' B2 R D'" }
{ "F U2 D2 F B' U2 D2 B D2 B' R2 U' L U' B D L U2 B' R'" }
{ "L2 D R2 U L2 B2 L2 D2 R2 U2 D2 R' U2 F B2 U B U' B2 L2 R'" }
{ "U2 R' B2 L' F2 L B2 R' D2 R' F2 U' L' D F' U F' D L2 R2" }
{ "F' L2 F U2 B' R2 U2 L2 R2 D2 F' U R' F L' B D2 L' U' R2 B2" }
{ "U2 B2 D' L2 U2 L2 F2 D' R2 U' R B D' B' D2 F' L' U' L' B2" }
{ "R2 D B2 U L2 R2 U' L2 U F2 D L' U' F' B2 R' F' B D' L' D2" }
{ "D2 R' D2 R U2 R' U2 L' U2 R' U2 F' U2 R U D F' B2 U2 F2 L" }
{ "D2 B2 L U2 B2 L' U2 D2 R' B2 R' D R' U D' F L2 B' L B D" }
{ "B2 D2 L U2 F2 D' U F L F' U2 F D2 B U2 B2 U2 B D2 U2" }
{ "L2 B2 R' D2 R B2 R F2 R2 F2 R' D' F R B L' B' R2 B2 U' D" }
{ "B' L2 D2 R B R' L2 F2 U R U2 L2 U L2 U' B2 L2 D' B2 D' R2" }
{ "L2 D' L2 F2 D' B2 U2 R2 U B D2 R B2 D' F D' R2 U' F'" }
{ "R2 L D R' B2 F' R' B2 L2 B L2 D' B2 F2 D' F2 U' F2 R2 D2 B2" }
{ "L2 B' L2 F2 R2 D2 B2 D2 F2 B' D2 L' B U2 R F' U' R2 D B R2" }
{ "U2 L2 R2 F' R2 D2 F B2 L2 B D2 L' U2 B L' F' U D2 R2 U2" }
{ "L2 U' B2 U B2 D' F2 B2 R2 U2 F2 R' F' D2 B2 U F' U' L' F D" }
{ "L2 D2 F' R2 F L2 F L2 D2 B D2 R' B R D2 R2 D' L R U' R'" }
{ "D L2 D2 F2 L2 R2 U2 R2 D R2 D' L' R' U' L U L' U' F L2 D" }
{ "R2 B2 U2 F' R2 B U2 R2 D2 R2 F' D R B' L R F2 R' D' F'" }
{ "F2 L2 F' R2 U2 L2 B' R2 F2 U2 B U L2 R F2 L U2 B' U L D" }
{ "R2 F' L2 B D2 R2 B2 R2 B' D2 B' L U B' L' F B2 U' F D2 L" }
{ "R2 D F2 D' B2 D' B2 L2 U' B2 U' B' R2 D2 L B U' F' R F" }
{ "L2 D L2 U' D' F2 L2 U' L2 D B2 R D' B L F' U2 R F' L' U2" }
{ "F B2 D2 F' L2 F' L2 U2 D2 B U' D' R' F' L2 B U' F L' U" }
{ "B' D2 F L2 B' D2 L2 U2 B2 D2 F D R D L B R' U F' R D'" }
{ "U' B2 D L2 U L2 D2 L2 B2 L F L' U' L' B' U2 D' R2" }
{ "F L2 B R2 U2 B D2 F2 U2 B' L2 D' B' U2 F2 L' B D R D' F'" }
{ "D B2 U' D2 R2 D' L2 F2 R2 U2 R2 B U' D2 F' D2 B' U' L R' U'" }
{ "D2 B2 L2 D F2 U' R2 D2 B' D F' U B2 L R D F2" }
{ "L2 B L2 R2 D2 F' B' U2 R2 U' L' R2 D2 F' L2 B L2 U' B" }
{ "B2 U' L2 U R2 F2 U D L2 R2 D F D' R U' F' U' B L' F' D" }
{ "U2 F' R2 D2 F D2 B R2 U2 D2 F L D B2 U' F R' F2 U' B" }
{ "F U2 B' D2 R2 F2 U2 F L2 F' B' D' F2 L B R' B2 R' U L2 D'" }
{ "F2 R2 U' F2 R2 B2 D F2 D L2 R2 F' L D2 B' R' F' L2 R D' F'" }
{ "B2 L2 B2 D2 F2 B2 D L2 F2 U' B2 R F D L F' D' L2 D B' U2" }
{ "R2 F2 B2 D B2 D F2 L2 F2 U B2 L D' B2 D2 F L F' U L2 B'" }
{ "R2 B2 U' F2 U2 R2 B2 U' L2 U F2 B L' U D R B' D L' B U'" }
{ "D L2 D' F2 L2 R2 U' R2 U' F2 R2 F' L' F' R B R D' L2 F2 B'" }
{ "F2 R2 D L2 D2 B2 R2 D' B2 U F2 L' B U2 D2 R' D F2 L D F2" }
{ "B F U L U' F2 D L B U' R F2 D2 R B2 U2 R F2 R2 L'" }
{ "L2 D' R2 D R2 B2 U' D F2 L' F' U' B' D' L F2 R F' D2" }
{ "R' F' U B F' R' U R' F D R2 U' L2 F2 L2 U L2 D' B2 D'" }
{ "B2 F2 D2 B' L' B' U' B2 U' B' R2 F D2 B' F2 D2 U2 L2 B D2" }
{ "D B D' U R' L B' L' B U2 L2 F' D2 B2 U2 F' R2 F' L2" }
{ "B2 U' B2 D R2 D2 R2 B2 D' B2 L2 B' L2 R D2 B' D' L' U F U" }
{ "B2 U' B2 D' R2 D L2 D2 F2 R2 D2 L D' B2 L' B' L2 D B' D2 B'" }
{ "F' L2 D U' R' U2 L B D U2 F' D2 B' R2 L2 D2 F' D2 R2 B2" }
{ "D2 F' L2 B L2 R2 B R2 D2 F2 B2 L' R2 U' R B2 D B2 L2 B'" }
{ "L' U2 L U' R L' F' D' B2 R U L2 F2 R2 F2 D' U' L2 D' B2 U" }
{ "L2 B D2 R2 B L2 B D2 B' L2 D B2 L F' U F B2 R U' F'" }
{ "F' D R D L' B2 D2 B D' L' U' B2 D' L2 D L2 U F2 L2 D B2" }
{ "L2 R2 F2 D' B2 U2 B2 L2 D' F2 U L D L D2 F' R B2 L F'" }
{ "D2 F D' R F' D U' L2 U' B U' F2 D R2 B2 L2 B2 R2 U' F2 D" }
{ "D R B D' R F' L B' L' U B' R2 B R2 U2 L2 F' D2 F R2 D2" }
{ "R B2 D B' L F U2 R D R' U2 F' D2 R2 F' U2 F2 L2 D2 L2 B'" }
{ "D2 L F2 L2 F2 D2 B2 R B2 L2 F' U' B U' R F' L2 D2 L2 U" }
{ "B2 D' R2 F2 U' F2 D B2 D R2 B L F' B2 R2 U D B D B'" }
{ "B2 D2 B2 D' L2 U2 B2 L2 R2 D L2 F U2 L2 R' F2 R' F R2 U' L'" }
{ "R2 D' L2 B2 D R2 U B2 U' B2 L2 B L2 R' F' U F2 U' B2 L B'" }
{ "R2 D L2 D L' D2 F D2 U' F D2 B' F2 U2 F U2 L2 F2 U2" }
{ "B2 D2 R' U2 L' F2 R2 D2 R' U2 D2 F D L R D' B' U F' B' R2" }
{ "U2 F2 L2 U2 R' F2 B2 L' U2 D2 R B U' F U' D B' U D' R2" }
{ "B2 U2 B U2 F' U2 R2 F L2 F' U2 L B2 U2 R2 U L F2 R B'" }
{ "D2 R2 D B2 D' B2 D' R2 B2 U R' U B U2 F2 R U' D F L' D2" }
{ "D2 F2 R U2 L' D2 L F2 R2 D2 B2 U L2 D2 B R F L D L D'" }
{ "R' U2 R' D' F D' U R2 L' U2 B' U2 F' R2 D2 F' R2 F U2 B" }
{ "L2 F2 U' L2 F2 R2 U2 B2 U R2 D' R' F U' D' L' B2 D2 B D2" }
{ "F2 U' D' B2 R2 B2 U' R2 D' F2 D2 R U B' R D2 L' F' B' D'" }
{ "F2 D' R2 B2 U' D2 R2 D2 L2 B2 D' L' R2 D L2 R F L' B2 L2 D2" }
{ "U2 R' U F' L' D' U2 B U2 R B2 R2 F2 D L2 D U2 F2 L2 B2 L2" }
{ "U' F2 R2 B2 D' F2 D R2 U2 D' F L D' B D' F B2 R2 F2" }
{ "U B2 D' B2 L2 U' B2 U2 F2 D' F R' U' F' L2 U R2 B' D2" }
{ "B R L B D' B L' B' F R' U' R2 B2 L2 U2 B2 U B2 F2 U' R2" }
{ "F2 U' B2 U F2 D' F2 D' L2 R2 B2 L B' D2 L D' B' U' F' B2 D'" }
{ "L F' L2 B F2 R' L' B' D' B2 L F2 L F2 L U2 F2 L F2 R2" }
{ "R2 D2 R2 U2 B2 D2 L B2 R2 D2 L F L2 F2 U B L2 F2 U2 R' U'" }
{ "R2 B2 U L2 U R2 D L2 F2 U2 L' D L2 B2 R F D B2 R2 D2" }
{ "U2 F2 L2 D2 F2 L U2 F2 U2 R D R' F B' U' L2 U' F' U F' B" }
{ "L2 B2 U L2 U D2 R2 D' R2 D' F2 B' D' L B' L2 F D2 L2 B D" }
{ "F' R2 F' L2 F' L2 B' R2 B' L D R B2 L' B D F2 U2 D'" }
{ "B2 R F2 R' B2 U2 R' B2 L U2 F L R2 D' F2 D L' R' D2" }
{ "B2 D2 B2 U F2 L2 F2 R2 D2 F2 D' L' B D' L2 F2 B L2 B2 R' D'" }
{ "D R2 D2 B2 D' F2 R2 B2 L2 D' L' B2 L2 R B U' D B U2 F D'" }
{ "D2 R' D2 R2 B2 D2 L' U2 R' B' D F B R F B D L R2" }
{ "L R2 D2 R' D2 B2 U2 F2 B2 R U2 F R' D L R U D' R2 B' D'" }
{ "U F2 B2 L2 U L2 F2 L2 D2 F2 D B' D L2 U' L' U' R2 B2 D2 B" }
{ "B U2 F L2 B L2 U2 B2 U2 R2 U2 R' B' D L2 R2 D' F2 L' U2 B'" }
{ "F L' B' U' F' R' U' B2 R' F2 L2 B2 F' L2 D2 B U2 F U2" }
{ "R2 U2 B2 L F2 U2 D2 L B2 L2 B2 U R2 F D2 R2 U' R2 B' U" }
{ "R2 U R2 D B2 D R2 B2 D' F2 D' L B' U D B D' L2 B U2 D" }
{ "U' F2 D2 F2 R2 U' L2 U2 D' R2 D2 F' D' F B' D' L' D R' D L2" }
{ "R U' F' L2 D' B' U2 L2 B' U2 L' B2 U2 L D2 F2 L2 B2 L D2" }
{ "L2 F2 L2 F2 U L2 B2 D2 L2 D' L2 F D' B R F' L D L F B2" }
{ "D F' D B2 L D L U F R F2 R2 L2 F' U2 R2 L2 B R2 L2 F2" }
{ "D2 F' D B F2 R' F R' U2 L D2 F2 D2 R2 D' F2 L2 B2 D' L2 F2" }
{ "B2 U2 F2 U' R2 B2 U R2 D L2 D L' F2 B R' U D' L D2 B" }
{ "L2 D' L2 U B2 U2 B2 D L2 U D' B' L' D2 R2 D F R' U R2" }
{ "U2 F2 D' L2 F2 D B2 U' F2 D R2 B' L' U2 L2 R' D2 B' D' F U2" }
{ "B' R2 B2 R2 D2 R2 B' L2 U2 B2 R D B R' F R U R F2 B2 R'" }
{ "U2 L2 B2 D2 L2 F2 U L2 D R2 D2 R' D2 B U' D F' R2 U2 L2" }
{ "R2 B U F U' F D B L' F D' F2 D' U2 R2 B2 F2 D F2 U B2" }
{ "L D2 B2 D2 R2 B2 L' B2 L' B2 R' F' U' R' U D F' L2 D' F'" }
{ "L B2 U2 R2 U2 L U2 F2 U2 F2 R2 U' D' L U R2 U F B2 L U2" }
{ "R2 F L2 B U2 D2 F L2 B D2 F R F2 L' F U L B2 D' R2 F" }
{ "F2 L2 D2 F' R2 B' D2 B' R2 F R2 D F' U D2 B R B2 D' F'" }
{ "D' R2 F2 D' L2 U2 D' L2 R2 D' F2 B D' B' U' F' R' U' D' L' R" }
{ "U2 L D' L U B R2 L B L' U2 F2 L U2 L2 D2 L' D2 L' D2" }
{ "R L' F D2 U B' U2 F L B2 D L2 B2 F2 D2 F2 D' F2 U' R2" }
{ "R F2 L' D2 L U2 L U2 B2 R F2 U' F L2 B2 U' L F' D' R' F'" }
{ "U2 B' U2 D2 R2 B' R2 B U2 F L' U F' D' R U D' L U2 F R2" }
{ "L2 U F2 D L2 R2 U R2 F2 U' R2 F' R' F2 L' D2 R2 D' R2 D F'" }
{ "B2 R D B2 F' U' F' U2 R2 B L2 B2 F2 L' D2 R' F2 R B2 F2 L'" }
{ "D' B2 U F2 R2 U2 R2 U L2 B2 D' B L2 R F L2 U' D' F2 R B2" }
{ "B2 U2 L2 U2 L2 U B2 U' F2 D' F2 R' U F' L B L' U2 B D' R'" }
{ "R' F2 U2 F2 U2 L B2 R F2 R F2 D' R D2 F U L2 F' D2 B" }
{ "R L2 D U' F' U2 B D2 U' R B2 D B2 D' B2 F2 D B2 U F2 D'" }
{ "B' F D' L2 F2 U2 L' D R2 B2 U2 F D2 B D2 B' L2 B R2" }
{ "L2 B2 U2 D' F2 R2 D2 B2 D' R2 U' L' R' D R2 F D2 L D B2" }
{ "B2 U D2 L2 U' L2 F2 L2 D B2 R2 B' R2 U F B' D2 R' D L2 R" }
{ "R2 D R2 D R2 B2 D' F2 D2 B2 D2 B L D2 F2 R U' L' U2 R2" }
{ "L2 D2 B2 U2 F2 B2 R B2 L2 R' B2 D' L U2 D L B D F B2" }
{ "R U2 D2 L F2 U2 F2 R2 U2 R' F2 U' R' U' L F U2 F2 R' F" }
{ "U' L2 U2 L2 R2 B2 D' R2 U F2 L2 B R U' L2 R2 F' L2 F U' F" }
{ "B2 R2 F L2 U2 L2 U2 F' B' U2 B D B' R2 U2 F2 L' F L' R'" }
{ "U' F2 U' F2 B2 D' B2 R2 U B2 R2 F R D2 F2 U2 F2 D' B' D2 L2" }
{ "D R' L2 U2 B U2 L U' F R' B2 R2 F2 D2 U2 R' U2 R' F2" }
{ "F2 L U' R U R' F R D F D2 L2 B2 U' R2 D2 F2 R2 F2 D L2" }
{ "B D' R2 F L2 D' U R' F' D2 R' U2 B2 R L B2 U2 L' D2 U2" }
{ "F R2 B R2 B R2 B U2 F' R2 F2 L D2 B' R2 F U2 R F2 B' D'" }
{ "R2 U' B2 U R2 D F2 L2 D' R2 U R B2 U' B U' D F' R' B2 R" }
{ "U' R2 F2 D' B2 U2 L2 R2 U' B2 U L' D2 F U2 L' U R' U' R B'" }
{ "B2 U2 F2 L' D2 L' B2 L U2 R F2 U F' U' L D' L F B' L'" }
{ "U L2 B2 U' F2 D B2 U D2 L2 B2 R' F U' B R2 D F B2 R2 B2" }
{ "B R2 L' D2 B' D' R F2 L D L2 D R2 L2 B2 R2 F2 U2 L2 U2" }
{ "D2 R' U2 L' B2 L B2 R' D2 F2 L2 B U' D L' R B L' U L2" }
{ "B2 U' F2 U' R2 U' B2 U' R2 F2 D2 L B' D R2 F' D2 L2 B' L R2" }
{ "U2 R2 U R2 F2 D L2 R2 F2 U' B2 R F' U2 D2 F' R' B2 D R2 U2" }
{ "L2 F2 U F2 B2 R2 D L2 D' B2 D2 F' R' B' L2 B' U' D L' B'" }
{ "B2 D2 R' U2 B2 R2 F2 L2 D2 F2 R' U F' U2 D F' R B U L F" }
{ "R2 U2 L2 B2 R2 F2 B2 D L2 D' F U' F' D L F2 D' F2 L2 B'" }
{ "B' L F2 U2 R2 U' B U' B2 L B2 R' B2 R' D2 R2 F2 R' D2" }
{ "B2 U B2 D2 L2 R2 D R2 D' L2 B' R' U F2 B2 L U2 L2 R B" }
{ "U L2 D F2 U R2 D R2 D L2 D R' D2 B' L' F U2 F B2 L2 U'" }
{ "F2 L2 D' R' L D2 B F2 D' F' U F2 U' F2 U L2 B2 F2 U' L2 B2" }
{ "B2 R2 D F2 U2 B2 D2 R2 U' B2 D2 B' L D2 L' U' F' L' D2 B" }
{ "D L2 F2 U R2 D' L2 D B2 D L2 F' U B' R2 D L B' U2 F R" }
{ "D2 F' U2 L2 D B' D2 F R' D B2 D' F2 R2 D' U2 F2 D2 L2 B2" }
{ "F' L2 U2 F' L2 R2 B D2 F' L2 B2 L' D' F' B2 L' U L B2 R' B2" }
{ "F2 D2 F2 B2 D R2 B2 D R2 D' L' D F' U' L2 R D' L F L2 D" }
{ "F U B L D' B' R D2 F D2 L B2 F2 U2 L2 D2 L D2 F2 D2" }
{ "B D' F' D2 R L2 B' U R' B U2 L2 D2 B2 U2 B2 F' D2 F' D2" }
{ "U D' B2 R2 B2 U B2 U L2 U R' B' R' U' R F R B R2 U" }
{ "L F2 D2 L2 U F R L' D B' R' L' D2 L D2 B2 L F2 R' B2 D2" }
{ "L F2 R2 D' L B2 F U' B D2 L2 D' R2 F2 R2 B2 D2 R2 L2 D'" }
{ "R' B U2 R' D B' U R' U2 L D2 F2 D2 F2 R2 F2 U' B2 U B2 U2" }
{ "B2 D' B2 U L2 D2 L2 R2 U' B2 D L' B' L' R D' B D' L' B" }
{ "D2 L2 U' L2 U L2 R2 B2 R2 U F2 R' D B' D2 F2 R U2 D R B" }
{ "B R2 F D R U2 R2 U' B L D2 B2 D2 R2 L2 B D2 B' R2 D2 B" }
{ "U2 D2 L F2 D2 L' B2 L2 F2 U2 R' U F D2 L U' D B U2 R' B2" }
{ "U2 B2 U2 F2 L2 F2 U L2 R2 D' L2 R U' D2 L B' D B' U2 F' R'" }
{ "L' U2 B2 U2 D2 L' D2 R' D2 B2 D2 B' U D2 F2 U' F U' L2 D'" }
{ "D2 F2 L2 U2 L2 D2 F2 L' R D' L' B2 D' F B2 D2 F' D' B" }
{ "B2 U2 L2 D2 B2 U2 F R2 F B2 D2 L' R B' U' R2 F L2 B' L' F2" }
{ "R' B2 L2 D2 R' F2 B2 L2 D2 F2 U2 F' U L D' R' B2 D' L' R U2" }
{ "R' B2 L2 U2 D2 L' B2 D2 L2 F2 U2 F R2 B L' F2 B2 U L B' D'" }
{ "F2 U L2 D F2 D' B2 U R2 U' F2 L' U L' R2 B2 R' U B' R D2" }
{ "B D2 R2 U2 D2 B L2 R2 D2 B2 U2 R' B' U' F2 D' B2 U' F L' D" }
{ "B2 D' B2 L2 D' L2 B2 L2 D R2 D2 B' D L U L' R D2 L F'" }
{ "D2 R2 U2 F2 D' F2 L2 U R2 B2 U2 B U F2 L' U' L' R U R'" }
{ "B2 D2 B2 D2 L' R B2 L2 R F2 U2 F D' B R U2 R F2 D' F' L2" }
{ "B2 R F2 R' F2 U2 L2 F2 L R' F2 U' F' U2 R2 D2 R U R2 F" }
{ "L2 B2 L2 B2 D B2 D2 B2 L2 U2 D B' R U D2 R2 F2 U' L2 R F'" }
{ "D B2 L2 F2 B2 D' B2 L2 U B2 L2 B U' R2 U F' U' L' U2 L2 B2" }
{ "U2 L' D2 L2 D2 F2 L U2 L F2 L2 B U L' B D2 F2 B D2 F2 L2" }
{ "B2 L U2 B' F' R U F D B2 L2 B2 L2 D2 R F2 U2 F2 D2" }
{ "R2 D L2 R2 U' B2 U' B2 D' F2 R2 F' L' D2 B' U2 L' F2 R2 U2 D" }
{ "U' R2 B2 R2 F2 D' B2 L2 U D F2 B U D' B' U F L' U F' L'" }
{ "U2 B' R2 U2 R2 F2 B' L2 F' D2 F2 U B2 D' B' R' F D2 F2 L' B'" }
{ "D B2 U' F2 D' B2 D L2 U B2 U' L F L2 B2 U2 L R2 U2 R'" }
{ "D' R2 D2 R2 F2 D L2 D F2 L2 D' L F U D' L B D' L2 D R" }
{ "B2 R2 U F2 U' L2 U' R2 F2 L2 D B' U2 R2 B2 R B2 D' F2 D'" }
{ "U' F2 D L2 R2 D F2 R2 D2 B' R' U' L B L' F' R' D' F" }
{ "B2 R U2 L' D2 L' U2 L' B2 L' F2 U L2 F' B D2 B2 R' D2 F2" }
{ "D2 B2 L U2 D2 R B2 D2 L B R' B U' R B2 U' B'" }
{ "F U2 L2 B R2 F U2 B' L2 B' R B' U2 L F' R2 D' R2 U' L'" }
{ "F2 U L2 D2 B2 L2 U2 R2 U' F2 D' R' B D R2 B2 U2 B2 L' U2 D" }
{ "L2 R2 B L2 F D2 F' U2 B U2 F' R' D' L' B2 U2 R B' R' F2 D" }
{ "D2 L' U F2 U F R U' B U2 R' U2 L' U2 R' F2 L B2 D2 R'" }
{ "D2 L' U2 L F2 U2 L D2 R D2 R' F D B' D' F2 L' U2 L U R2" }
{ "B2 D F2 U' B2 D2 L2 R2 B2 U' L' D2 F' U' F U' B' U2 F' D'" }
{ "D2 L2 D' L2 R2 U F2 R2 D' F2 D2 B' R F2 D B' R' U' L F'" }
{ "F' D2 B2 L2 U2 D2 B2 R2 B' U2 F' R F' L2 U' F L2 F' D' F' L'" }
{ "U2 R2 U2 R F2 L U2 R B2 R2 F L' R' B' U2 D2 R' U R' F" }
{ "R2 U' F' L F U B2 R D' R2 L2 B L2 F' L2 B U2 B' U2 R2" }
{ "U' B2 D' B2 U' L2 D2 L2 B2 D' F U D2 R2 B2 R' F R F' B2" }
{ "U R' U B D' U' R B2 U R' U2 F2 U F2 U R2 D F2 R2 F2 R2" }
{ "L U B' D2 L D' R L' F' D' L2 F2 D' F2 L2 D2 L2 D' B2 U" }
{ "U L2 B2 D B2 U' F2 D F2 D2 L2 R' U' F' B2 U2 F' R2 U B'" }
{ "U' B' D' F D' R U2 F L F2 D2 R2 D2 L2 D2 B' F' U2 B R2" }
{ "L2 B2 L2 D2 R2 U F2 D' F2 U2 R' D2 B' D2 F2 R2 U B' D L" }
{ "L2 F2 R' F2 B2 D2 R' U2 R D2 R B' U' D' F B2 L2 R D' B" }
{ "B2 U2 L2 B2 L' U2 L' B2 L D2 F2 D' L U' B R2 U R' U2 L B'" }
{ "B2 D2 B2 L' U2 R' D2 R F2 R' B2 U' F R2 F U F U' D2 R F'" }
{ "U2 L2 D2 R2 B2 L D2 F2 D2 F2 R' B L' U2 B2 U2 F R D R U'" }
{ "R D2 B2 D' B' F2 L2 F' U R D2 L2 D2 F2 R2 U R2 U' F2 D R2" }
{ "F2 U2 R2 D' R2 U F2 D' F2 D F2 L' R' U' L R B2 D2 F' U' L'" }
{ "D2 B2 D2 B2 L F2 B2 D2 R B2 L F L' R D' F' R' F B L' D" }
{ "R2 F D2 B R2 F' D2 R2 D2 L2 F2 D' B' U2 L U D' L' U2 L2" }
{ "L2 B' U2 R2 D2 F2 D2 B R2 B R' B2 L' U F2 D2 F2 B R D F2" }
{ "R' B' R U' B2 U' B' D L' U B2 F' R2 F' R2 L2 B' R2 L2 F2" }
{ "D' L' F' L2 U2 L U R2 F D2 R B2 R' L2 B2 R2 B2 U2 R'" }
{ "U' R2 B2 U2 L2 D B2 R2 D' L2 U' L F L U2 F R B R2 U L'" }
{ "R2 D' R2 B2 R2 U' D F2 R2 D F2 B D' L' D2 B U' R2 B2 L U" }
{ "B L2 F2 R D B L' F R2 D R2 D2 L2 B R2 F U2 B L2 B L2" }
{ "R' D2 R' U2 B2 R' B2 R U2 L F2 B' U L F' L2 D B2 R' B D" }
{ "R2 U B2 U' D2 F2 D F2 R2 F2 U B U' R2 B' D L' U' R U2 B'" }
{ "U2 L2 F2 U2 B R2 B R2 F' D2 B' D' L2 B2 L' B' D2 F L D R2" }
{ "L B' U2 F' D2 F2 R L D' F L2 D' L2 F2 D2 B2 D F2 L2 D' F2" }
{ "F2 B2 L U2 B2 R' F2 B2 R B2 R2 D L F' L' F2 U L' D R'" }
{ "F2 U' R2 U' B2 U2 R2 D' F2 L2 D2 B' D B U2 D2 B2 R' F R D2" }
{ "B2 D B2 D' L2 D F2 D R2 D2 L R2 B2 R U L' B U2 D' L' B'" }
{ "D2 U2 R U F U L2 F D2 U R2 U2 F' D2 B U2 B2 U2 R2 B'" }
{ "L' U2 L2 U2 F2 L' B2 L' B2 R' F2 U F R2 D L2 U F' D B2 R'" }
{ "U2 B' L2 D' F' L' B R U F2 R2 B2 D2 B' D2 L2 F R2 F' D2" }
{ "D B2 D' R2 D2 B2 U B2 R2 U2 L2 B R D2 L B D' L R2 B' U'" }
{ "D' B2 U' D2 F2 R2 D R2 D B2 D' L B' L U F L2 R F L' D2" }
{ "F2 U R2 U F2 U D R2 D2 F' L R D' F L' R F2 D B2" }
{ "U2 L2 B' L2 B2 L2 D2 B2 R2 D2 B2 U' R F' B U' B D2 L' B" }
{ "R2 D2 F D2 L2 B' D2 R' U R2 U L2 U R2 U2 R2 F2 D" }
{ "L2 B U2 F D2 B2 L2 D2 L2 B2 L' F2 D' F' B2 L F2 R' B' R" }
{ "U L' D F2 L U2 R B' R' D' L2 D2 B2 R2 L2 D2 U F2 D F2" }
{ "L B2 U2 R2 B2 D U2 F' L' D L2 D' F2 U2 R2 B2 U L2 D'" }
{ "U F2 B2 L2 D2 R2 D L2 F2 U' L2 F' U B' L U' R D2 R2 F' L2" }
{ "L U2 R2 D2 R' F2 R U2 B2 D2 B2 D' L' F2 U' L' F' B' L2 R F2" }
{ "D F2 D B2 U R2 U2 B2 R2 F2 R2 B' R U2 D B L U2 L F R2" }
{ "U' R U L' F D2 B2 L2 D' R' F2 R' L2 D2 F2 L' B2 R U2 B2" }
{ "B' F2 U' L' F D R2 F R' B R2 D2 U2 R2 D2 B2 F L2 F' D2" }
{ "B2 U2 B' R2 F' B2 R2 U2 R2 B' R2 D' F B' R F L' U D F B'" }
{ "L B D' F' U' B2 L' F' R' U2 R2 U' L2 D L2 F2 U' B2 R2 B2" }
{ "D F2 R2 F2 R2 B2 D B2 R2 D2 R2 F' L' F2 D R2 F' B R2 U D" }
{ "D' R2 F2 U2 L2 U L2 R2 D2 B2 L2 R' B2 U' L' B' U R2 U2 D2 B" }
{ "B2 D2 B2 R2 B2 D B2 D2 F2 R2 U' F D R F L' F2 D' B L2 B2" }
{ "L2 U R2 F2 B2 U' R2 F2 U R2 B' L R F' D L F U2 B U L'" }
{ "D L' U R2 B2 U B F2 R' B2 D' L2 F2 D F2 U L2 D L2 U" }
{ "B' L2 F L2 D2 R2 U2 F D2 B' L2 R' U F2 D' F R U2 D R' B'" }
{ "R2 F2 D2 F2 U F2 U' R2 U' D2 F2 R D2 B' U L U' F' D B U" }
{ "U' F2 D' B2 L2 D' L2 U2 B2 R2 B2 L' U2 D F R' U' F2 D2" }
{ "U2 F2 U' F2 R2 U B2 R2 F2 L2 D B' U B2 L2 U' L U L D'" }
{ "R2 D' U R' F2 R2 D' B' D2 F D' R2 F2 R2 F2 U' L2 U B2 L2 U2" }
{ "L2 B2 L2 D R2 U R2 D' R2 D' R' U' R' D2 R F' L B2 D2 B'" }
{ "U2 L B2 L2 R B2 L F2 B2 U2 D2 B' U' D2 L' U R2 D R U2 B" }
{ "F R' F2 U2 F2 U F' R' F2 L B2 L2 D2 B2 R2 D2 B U2 B2 L2 F" }
{ "B2 R2 U F2 R2 F2 D' L2 F2 U D2 B' D L R2 B' R2 D B2 D2 R" }
{ "R' U2 L' B2 L' U2 R' B2 U2 B2 R2 D L F2 U' R' F L2 R' B' R" }
{ "B2 L2 D2 R2 B2 D2 B D2 R2 U2 F' L' D B2 U R2 U2 R' B' L B" }
{ "R' F D R2 F2 U L U B F2 D2 B2 R F2 L2 F2 U2 R2" }
{ "B2 L' D2 R' B2 L F2 L' U2 L D2 B L' R U B U D2 F2 U" }
{ "U R2 F2 U R2 D' F2 L2 U2 R2 U' R' F' R2 U2 D R2 U B R U" }
{ "F' D2 R2 B U2 L2 U2 L2 B L' R F R2 D B' U B2 R' D2 B" }
{ "R2 F' U2 L' D' R D2 R2 D' F' L2 B' R2 L2 U2 F' L2 B2 U2 L2" }
{ "L' F' D B' F2 R' U B' L2 B D2 F2 L' F2 R' B2 D2 L2 F2 R2 F2" }
{ "U2 R2 F' L2 U' R F2 D R L B D2 U2 B D2 B2 R2 L2 F' R2 U2" }
{ "D2 F2 R2 D R2 D' B2 L2 R2 U L2 F R F' U L' D' F2 U R D" }
{ "D2 F' R2 D2 B R2 D2 L2 U2 D2 F' R D' B' R2 F2 R B2 D' F L'" }
{ "F2 B2 R F2 R B2 R' B2 R U2 L U' L' F' R' D R2 F' U2 D R" }
{ "R L F R' U' R' B D L D F R2 B U2 B R2 D2 L2 B2 L2 B2" }
{ "R D2 L' U2 R' D2 F2 R' F2 L' B2 U F' R' F' D2 B' R D F R" }
{ "U F2 B2 L2 B2 R2 U' B2 R B R2 F' R' F2 U D' B' L' D" }
{ "D2 F2 U2 L F2 R D2 R2 U2 F2 L2 F U F2 L2 D L B' U2 D B" }
{ "D2 F B L2 D2 L2 D2 R2 F L2 D2 R D B2 L U D2 B' U2 L R2" }
{ "F' U2 R D2 R D U B U' B R B2 F2 R U2 B2 R' B2" }
{ "B2 L2 D F2 U D' R2 D' B2 U' R B L U2 B D2 F' D' F' D'" }
{ "D2 R D2 B2 R2 U2 R2 U2 B2 U2 D' B' U' L F L2 R2 F2 D' R'" }
{ "D' B2 D' L' B' L D' U2 B' F2 D' R2 L2 D' R2 U F2 R2 U' L2" }
{ "D B2 D F2 D' F2 D2 L2 B2 D2 R F2 B2 D B L2 B D B L'" }
{ "L2 U' B2 L2 D2 R2 U D L2 F2 D2 F' L' R2 F' U D R2 B2 D L" }
{ "D' F2 L2 F2 D2 F2 D' F2 L2 U' D2 R' B2 D R' B' U2 L U B D'" }
{ "L2 U2 B2 U B2 D' F2 D' R2 F2 U' F L' B' U' F2 B' R B U2 L2" }
{ "B2 L2 D' B2 R2 U B2 D F2 L2 U' F' U2 L' D B U' R F' D' R'" }
{ "F R2 B2 U2 B' R2 B' R2 B2 L2 B' L' R2 D R F2 U' F B R B2" }
{ "U' L2 D' L2 D' B2 D' B2 L2 R2 D L' U' L2 U' F R2 B U F R'" }
{ "R2 B2 L2 U' B2 U D2 L2 U L2 D' B U2 B' L' U2 R D' R2" }
{ "D' R2 D B2 U F2 L2 B2 R2 D2 R2 F' U F2 D' L' F' D' R' F' D" }
{ "F2 L2 D2 F' R2 D2 B' D2 F D2 B D F B L' U2 B2 L F L' R'" }
{ "F' U2 B R2 B U2 B2 D2 B2 D2 B' D L2 R F' L' F' U B D2 B" }
{ "F2 U' L2 U2 B2 L2 B2 U' L2 U R2 B L U' F' B U' D R D2 F2" }
{ "B2 U2 R U2 D2 L' D2 L2 R U2 R F' L' U R' U2 F2 B' R' D B2" }
{ "D2 B2 U F2 U B2 U' R2 U' R2 F' U B2 D B' R D2 B2 D2 L" }
{ "R2 D R U' L' D' U B D2 F2 D2 U2 R' B2 R2 B2 L' D2 R2" }
{ "F2 U2 L2 U' F2 B2 R2 D' L2 D' F B2 L' U' D2 R D' B2 D2 F D2" }
{ "D' L2 U L2 U B2 D F2 U' L2 R2 B' L F' U F' R F' L B' L" }
{ "L D2 L' B2 R' U2 R2 U2 R2 D2 F2 B R D' R2 U' F2 U2 B D' F'" }
{ "R2 U2 F D2 R2 D2 L2 B L2 U2 F' U D2 B' R2 U' L' D2 R D' F" }
{ "L' B2 R' D2 R2 F2 U2 B2 L' B2 R U' R' D' F B L2 R' U2 B'" }
{ "U2 L2 F2 L2 R2 U' D2 B2 D R2 B' D L2 R D R2 D F B2 D2" }
{ "B2 D R2 F2 U2 F2 U F2 R2 D' F2 R F2 D2 R B D L' F' U' R" }
{ "U2 B2 U2 L2 B U2 D2 L2 F' D2 F U' L' B2 R' D R' B' R2 F B2" }
{ "L2 U L2 U' L2 U2 F2 D2 B2 D2 L2 F R' B D2 R2 B' R2 D R2 U" }
{ "D R2 F2 D R2 D L2 U2 R' B' L' U' B U2 R2 F2 L" }
{ "D B2 U2 L2 D' R2 B2 L2 D2 R2 U' R' B L2 U L2 U D R B' U2" }
{ "U B2 R' F U2 B U' R' U2 B U' L2 D R2 L2 D' R2 U' R2 B2 L2" }
{ "U B2 D2 B2 L2 F2 L2 U' F2 U2 F2 L B U D2 B2 D L2 F2 R' B" }
{ "U' R F2 L2 U L' U F' D R2 U2 B' D2 L2 B F R2 U2 F" }
{ "R' B' F L D B F' R2 U' R' F2 U2 R2 D R2 D' L2 F2 U' B2 U2" }
{ "L2 U2 D2 F' L2 D2 F U2 F2 L2 R2 D B' R' F2 D2 F' R B' D'" }
{ "D2 F2 D B2 D L2 F2 L2 U R2 U' R B' U2 R' D' F U F' U'" }
{ "F2 D2 L2 U2 L2 F2 B D2 B' U2 R U' L F2 U B' U L B' U2 F" }
{ "D' B2 U2 F2 B2 U' L2 B2 U L2 D R' F U D2 R2 D F' U R B2" }
{ "F U L U B L F' U' B R' B2 D2 L2 U B2 F2 D' B2 D L2 U" }
{ "L' D' U R' D F D' U2 F L2 F2 R2 L2 D2 U' L2 U' R2 U' B2" }
{ "L2 R2 U' D2 B2 L2 F2 R2 D B2 D' R B L' U' B' U2 D2 L' D'" }
{ "F2 R' B2 U2 D2 R F2 L' D2 B2 D R2 U' F' L' R B' R' B' U B'" }
{ "B R B2 R D B' R L U L' U2 B2 R2 U L2 D B2 F2 R2" }
{ "U R2 B2 D2 L2 B2 D' B2 R2 D R D' F' L R D2 F2 R2 U' F" }
{ "U F2 B2 R2 U R2 B2 R2 F2 D2 R2 B' L U F R2 F2 D2 R F' D2" }
{ "D2 L2 U R2 B2 U2 F2 U' R2 F2 D2 R B' U2 L' D F2 U R U' B" }
{ "U D2 L2 D L2 R2 D B2 U F2 D2 R B D F' R B' D L2 U2 D2" }
{ "R2 D2 L2 B U L' B2 L F R F2 D2 L' D2 L' D2 R F2 U2 B2" }
{ "R2 B R2 U2 F' L2 B2 U2 D2 B R' F U' D F U2 L' R2 F D2 B" }
{ "B' U' F' D2 L F' D2 B R U' R D2 R' B2 R' U2 L2 B2 L" }
{ "R2 U2 F2 U B2 D2 R2 F2 R2 U' F2 B' R F2 U2 R' F U L B2 R'" }
{ "B L2 B2 D2 U' R' B F' R U2 F2 D2 B U2 B L2 D2 B2 R2 B'" }
{ "B2 L2 B2 R2 D2 R2 B' U2 L2 B D2 L U' D B2 L' F R' B U D'" }
{ "B D2 F' D2 F' L2 U2 D2 B' L2 U2 D' B' R2 U2 B2 R' D B2 L B2" }
{ "R2 F2 D2 R2 B2 R2 D B2 D' L2 D F' U' F' R' F' L B' D' L' U" }
{ "B D2 L2 F' U2 B' L2 F2 B' R2 D2 L R2 F' B' R2 U' L' R' D" }
{ "D U2 L' F U L2 F2 R L' B' L2 B2 D' F2 D B2 U B2 R2 D R2" }
{ "U' L2 D L2 F2 D F2 B2 L2 U2 F2 L' F2 L R B R F' B D B" }
{ "D' F2 D2 B2 D R2 F2 R2 U L2 U' R' F2 D2 L' B' D R' B' U' D'" }
{ "R2 U' B2 U F2 D' F2 L2 F2 B2 U B R2 F D2 R D' L2 R2 F2 B" }
{ "L2 U D F2 B2 D R2 B2 U F2 D' R' U D2 R F B D' B R2 D'" }
{ "R U2 L D2 R2 D2 R2 F2 R' F2 B' U' F' L B L U' D R U'" }
{ "B2 L2 B2 U R2 U' F2 U' D' L2 F2 B' U2 F' U' F' D B' D R' F2" }
{ "R2 F' R2 B2 U2 R2 F L2 F R2 B R' D' R B L U' R F' D" }
{ "B2 R2 D' F2 D2 F2 U L2 D2 B2 R2 F' L2 U L2 F2 B' L U2 B R" }
{ "D2 L R2 D2 R' D2 B2 U2 L2 R2 U L' B' D' L R U L' F'" }
{ "R2 F' R2 B2 U2 D2 F' L2 F' D2 F L U F R F' D F' L2 U2 L2" }
{ "R L2 U R2 B2 D F' L B2 U2 F2 D2 L2 U L2 D' L2 U2 L2" }
{ "U2 L2 D B2 U' R2 U' F2 B2 L2 D' F' L' B' R U' B L D2 L2" }
{ "F2 L2 D2 R2 B' D2 F' R2 F' R2 U2 L F' R' U' D L' D B' R' D" }
{ "R2 D' F2 D R2 F2 U R2 D2 B2 U2 L' U2 D L B' L2 U F' L R'" }
{ "F2 L2 D2 R2 B L2 F2 D2 B U2 B L' U2 B2 R U B' D2 F' R' F2" }
{ "U2 F2 B2 L D2 R B2 R' U2 R2 D' B L2 D' R D2 L' U L'" }
{ "U2 B2 U2 R2 F R2 B' U2 F U2 B' L' B L R' D' F2 U2 D F B'" }
{ "B2 U' F2 B2 L2 U L2 D' R2 U' B2 L' U D' L2 F U' B U R' U" }
{ "R2 D2 L2 B' D2 F' D2 F U2 F2 D R2 D R' D2 B' D L' F2 U" }
{ "L2 D' B2 R2 B2 R2 D' R2 U D2 B2 L U2 B2 D F U2 L B' L' R'" }
{ "F' L F' L2 D2 R F U' L D2 L2 D' L2 D' F2 U2 F2 L2 D'" }
{ "R' U2 F' D' B' L2 U B2 R' U' R2 F U2 B D2 R2 D2 L2 B F U2" }
{ "D2 B2 L2 U2 F2 L2 B2 R2 F B' D' R2 D' L2 B L D F2 B" }
{ "L D' B2 D' R B F2 D F R' F' R2 D2 F2 D2 B' U2 F' R2 F'" }
{ "L2 U' F2 R2 U' B2 L2 U D L2 D' B' R' U' L D2 F' U2 F' D" }
{ "U2 F2 B2 L' D2 R' B2 L R' D2 R F D' L' U' B L' R2 D' R D" }
{ "D2 B2 D2 L2 D' B2 L2 D' F2 D2 R2 F' L2 D' F' L F2 D R2 U R2" }
{ "R' U2 R2 D' U' R L F L U F2 D2 R2 L2 F' D2 L2 U2 F' D2 B" }
{ "D2 F' U2 F D2 F L2 F L2 B' U2 D' L2 F' R' F' L' R2 D' F' B" }
{ "D' F2 R D L' D2 B F' R' D' L2 D' L2 U F2 L2 U' B2 F2 L2" }
{ "R U2 B' L2 B' U F' R D R2 B2 R2 B' D2 L2 U2 R2 F2 U2 B" }
{ "B2 U R2 B2 R2 D2 B2 D2 F2 R' D' F2 L2 R' F D2 B U'" }
{ "R' D2 B2 U2 R' D2 L2 D2 F2 B2 R' B' U' F2 R F' L2 U' D L' B" }
{ "B2 R U2 L2 U2 B2 R U2 D2 R F2 U D B R' D' R D2 F' U2" }
{ "B' U B F D B2 F' R B2 D U2 R2 B2 F2 D F2 D' U2 F2" }
{ "D2 R' B2 R U2 B2 L' D2 L' D2 L' U D' R' D2 B L F' R2 F2 D2" }
{ "D R' U L2 F' D' L2 D' R' F' D R2 F2 U' L2 U2 L2 F2 U2 B2 U2" }
{ "R2 U2 B2 D2 B2 D' R2 D' B2 D2 L' B' R2 D2 F' L B D' B2 L2 U" }
{ "U2 B2 L U B R' L F D L D U' F2 U' F2 R2 D' L2 B2 D2 L2" }
{ "U' R2 U' F2 R2 D L2 U2 F2 R2 B2 L' B L2 U2 F2 D2 L U' D R'" }
{ "U' R2 F2 U R2 F2 D2 R2 F2 B2 U F L' F' B U F' L' F' R' D'" }
{ "B' U2 B D2 L D R D' R2 U' L2 B' F2 D2 F R2 U2 L2 D2 B' L2" }
{ "R2 U2 F2 D R2 U' R2 U' F2 U L2 F R2 B2 U' L' F' U' R F'" }
{ "U' F' R2 U' L D' U2 R D B F' D2 U2 B' R2 D2 F D2 B L2" }
{ "U' R2 U' R2 D2 R2 F2 D R2 D' R B2 U B' U' F' L' D F B2" }
{ "L2 F2 R2 U D2 B2 D2 L2 D F2 B2 L F' L2 B R F2 U D2 R2 U'" }
{ "U2 D2 B2 R F2 D2 L' B2 L2 F2 L' U F2 B' L2 R F' B R' U L'" }
{ "R D B' R2 F R' F D R B F D2 L2 U2 R2 B L2 B D2 R2" }
{ "D2 F2 R2 D R2 B2 D2 F2 U2 R2 F2 L D2 B' L' R' D2 F L' D' B" }
{ "B' L2 B U2 L2 B L2 B U2 D2 F L' F' D B2 U' L' B2 D2 L'" }
{ "F D R2 B2 F' L' U R2 U' F' R' B2 U2 R2 L F2 L' D2 L D2 F2" }
{ "B' U L2 D' F R U R L2 F2 R2 D L2 D F2 L2 D' L2 D'" }
{ "D2 R2 D2 F2 D' F2 U L2 B2 R2 D F' U2 D' R' B' R2 D2 F' R2 D2" }
{ "L2 U2 L F2 L2 F2 U2 L' U2 R2 F2 D L U B' L' U2 B L' R' B'" }
{ "L U2 R2 U2 R B2 L B2 D2 B2 D2 B U' D F' U F U L2 B'" }
{ "F2 B2 U B2 R2 U2 L2 U' F2 D R F R F2 U' L F' D B2 R'" }
{ "F2 U2 D' B2 D B2 R2 B2 U2 B2 U' L F2 B2 R' D B D2 L F" }
{ "F2 U2 L' U2 R' B2 L2 U2 D2 L B R2 D2 R F B' R2 D R U'" }
{ "F2 L' B R2 U' B2 D F' D2 L' D2 B2 F2 R2 F2 U B2 U2 L2 U'" }
{ "L2 U2 R2 U2 R2 F' B' U2 F' R2 B L U B' U' R' B2 D F' U2 R'" }
{ "L2 D F2 U2 D F2 D' R2 D' L2 U' R' F' D' L' F B L2 U B' U2" }
{ "B F2 D R F' L' B2 F L U' F L2 F U2 F L2 D2 L2 B2 R2 B" }
{ "L2 F2 R' U2 F2 U2 R' U2 R' F2 L2 F U' F L F R' B U2 L2" }
{ "F2 R2 U2 B U2 B L2 B' R2 B U F R F2 B' L2 U F D B" }
{ "B2 L2 F2 U R2 U2 B2 R2 U2 B2 R2 B' U' D' R D' F D' R' F D'" }
{ "R2 B2 U' B2 D' F2 D' B2 U2 F2 D2 B L2 D F' B L' B2 U' R' U" }
{ "L2 U2 L2 R2 U' L2 U L2 F2 U' F2 L' F B2 U2 F D2 R' F' R' D'" }
{ "D2 B' U2 F R2 B U2 R2 F' L2 B2 U' F B2 R' B' R' B2 L U' F" }
{ "D' F' D' B' L2 B' R' D' B L D2 B2 D' F2 U' F2 L2 D R2 L2 F2" }
{ "R2 F' R2 B2 R L' U' F' D' B2 D' R2 L2 B2 D' F2 R2 D' B2" }
{ "L2 U2 D2 B2 U2 F U2 B' L2 D2 R2 U' B' R' D' L' B2 R2 B' U B2" }
{ "F2 L' B' D' L D2 U' L2 D' R' B2 L F2 L' B2 R L B2 D2 B2" }
{ "R2 U D' B2 L2 D L2 F2 U F2 D R' D L2 B2 L R' B' D L2 D" }
{ "F2 R2 F2 U L2 F2 U2 L2 U F2 B2 R U2 F' U D2 B' R2 F' U2 L" }
{ "F2 R D2 L2 B' D' F' D' R L2 B2 D' L2 B2 F2 D' F2 R2 U2 B2" }
{ "R B2 L2 F2 R' F2 R' U2 B2 R U2 F' D F2 U R F B' R2 F' D2" }
{ "B D2 R2 F' U2 B2 L2 D2 B' R2 B' R' D' B D R F B2 R'" }
{ "D2 U' R L F2 L' F' D' R D2 L D2 B2 L2 D2 U2 R' B2 L2" }
{ "D2 R' B2 L F2 L' B2 U2 B2 D' L D F' L B U' D R D" }
{ "F2 D' R2 D R2 U R2 U2 L2 F2 U2 B L2 R2 D' R' F2 B R U R" }
{ "L' B' R D F L2 D' R B' L2 U2 B2 D' L2 U F2 L2 U2 B2 R2" }
{ "R' D2 L B2 R' F2 D2 L2 U2 B2 L F D' F B L2 U B2 D' R'" }
{ "U2 B2 R2 U' B2 D B2 R2 D' L2 U' B' R' U F2 B' U B D F" }
{ "B U' B2 L B' L2 U2 R B R' U2 B2 U B2 L2 B2 D F2 R2 D B2" }
{ "D2 R2 F2 U2 B' L2 U2 L2 F2 U2 F' R D F2 L' B U F' R' U' F" }
{ "L B2 R' F2 L2 D2 R F2 R B2 R B U R' U2 R2 B L B R'" }
{ "R F' L2 B' L' D2 B' D' B' U F2 R F2 D2 R2 F2 R F2 R' F2 L" }
{ "L2 B2 U2 F D2 B2 R2 D2 B R2 B' D B' U D' L2 U F L' B" }
{ "F2 R2 D R2 U2 R2 B2 D2 F2 D B' U2 D L F D2 R' D' L' B'" }
{ "F2 B2 U2 L' B2 R' F2 R2 U2 F2 L F' U D' R U2 R D' R' F" }
{ "U2 B2 L2 U2 R2 D2 F2 B2 R2 B' L' D' F' U' D2 F D' B L' U" }
{ "R2 U' F2 U' B2 L2 D R2 D2 L2 D' F' D2 L D2 R' B' R' U2 D'" }
{ "R2 F2 L U' R B R U' F D' U F2 U R2 D2 B2 R2 B2 R2" }
{ "B2 D' B2 L2 D' L2 F2 U' F2 D2 L D2 F' U' L R' D' B D2 B2 R" }
{ "L U F2 L' B2 R' L' U L' F D2 R2 D2 B' L2 B2 R2 L2 B D2" }
{ "D2 R2 U' L2 D R2 B2 R2 F2 U L2 B' D' R F L2 R B D' R2 U" }
{ "B D R2 U2 R2 U R L' B' L' F2 U2 L F2 L' B2 L' U2 B2 L2" }
{ "B2 R B2 D2 R2 B2 R D2 L2 F2 B L2 D2 L U D' L B2 U'" }
{ "U2 F2 B2 L B2 L2 U2 L' F2 U2 R' B D' B2 L F' U B' R B' L2" }
{ "B2 D' B2 L2 B2 U' L2 F2 U' D2 F2 L' B R' U' D F' B R2 U" }
{ "B2 L' B2 U2 R U2 R2 D2 F2 D2 R2 U F' R D2 L' F' U F2 U F'" }
{ "U2 R2 U F2 D' F2 D' B2 D L2 F2 R B2 L' B' U2 R U R F' D" }
{ "B2 D' F2 B2 L2 U2 B2 U' F' R' U R U2 L' F2 B' U2 R2" }
{ "R2 F2 L2 F2 D L2 D2 B2 L2 B2 U' L' B2 L F2 R' F' U2 L U B2" }
{ "U B2 U' R2 F2 D' F2 U2 L2 B2 U B D' L F L D L U R' F" }
{ "D2 B2 L2 U2 R2 F' R2 D2 F2 U2 F2 R U2 R F2 U B' L' U2 B'" }
{ "B2 L D2 L' B2 L2 U2 D2 L' U2 R2 B D' B2 R2 F' L F2 R2 D F2" }
{ "B U2 B' L2 U2 R2 D2 F' D2 B' D2 R' U F' B2 D' F' B2 D B' L" }
{ "U' R2 U' R2 F2 R2 U2 D' L2 B2 D' L' U B' D L U' R' F' B' L" }
{ "D F2 L2 D2 L2 U R2 U B2 R2 D' R' U' B' U2 R2 U2 R2 U' B'" }
{ "R2 U2 B2 D L2 U2 R2 F2 D L2 D2 F' D' R F' L D2 L2 F' R2" }
{ "U2 B R2 B' U2 R2 U2 B2 D2 B U' R' D B' L D' B2 L' F' B2" }
{ "F U2 D2 F R2 U2 F D2 F' B U2 L F2 U' B' D B L' B D2 F" }
{ "L2 D' B2 D F2 R2 U' F2 U' B' D' F' R' U R F2 R F2" }
{ "D2 B2 U2 B2 L D2 R B2 L U2 L U' F' L2 U' B U2 F L R B2" }
{ "D2 F2 R2 D L2 R2 B2 D' R2 U' D' R' B L2 R' U2 L F2 R2 F2 B'" }
{ "R2 U F2 D' L2 F2 R2 B2 U' D2 F' U2 F L F D2 L' D L' R'" }
{ "R2 U2 D' F2 D2 F2 D' F2 U R2 U R' U D' L2 B' U R' D' R' F2" }
{ "U2 F' L2 R2 B L2 D2 F' L2 R2 D2 R' D' B2 U' L' U D' R' F B" }
{ "L2 F' D2 L2 B' U2 F' R2 B' D2 B2 D' L2 R' D2 F R' B R' U2" }
{ "F2 R2 D2 L2 B L2 F' R2 B R' B' U' R2 F' R' U' F D" }
{ "B2 L2 U' B2 U L2 U F2 B2 U2 L2 R' D L U' F2 R B L' R2 D2" }
{ "U B2 L2 R2 U' F2 L2 B2 U2 F R' U R' U F L' R D2 B'" }
{ "D F2 R2 L2 D B U2 L U' B2 D2 B R2 L2 F R2 F L2 D2 B2" }
{ "B2 U2 L2 B2 U2 R2 F2 B2 R' B2 D2 F' R B R2 D' B U F2 D R" }
{ "R2 D B2 R2 U2 L2 U' F2 D' L2 D F R2 U' R' B' L F' U' D2 R'" }
{ "D' R L2 D2 B U' F' L' B2 D' B2 R D2 U2 R D2 U2 B2 U2 L F2" }
{ "B2 D2 R2 U2 L2 B2 D2 F2 D2 R' D2 F R' D B R2 F2 L D B U2" }
{ "D L2 U B2 U R2 D B2 L2 D' B2 R' U F L' B' U D2 R F' R2" }
{ "U2 D2 R2 B' R2 U2 F D2 L2 B2 L2 D' L2 U' L F' R D L' U' L2" }
{ "F' D B' L' D R2 F2 R' F' U F' U2 B D2 B R2 F2 R2 F2" }
{ "D' B U L2 D F2 D2 L2 B F2 R2 D2 R D2 B2 L' U2 F2 U2 R2" }
{ "F' U2 L2 B D2 B' L2 R2 F B2 U2 R' D L B' R2 D' R2 U' R' D" }
{ "R' B2 L' D' F' U B D2 R' D' L2 D2 F2 U2 B' L2 B R2 U2 F L2" }
{ "B2 L2 R2 B L2 D2 L2 R2 D2 F2 B' R' U2 B' U2 D R' F2 B L' F'" }
{ "L2 B' R2 D' B2 R2 F R U2 R2 L' U B2 L2 D2 F2 D' B2 R2 L2 D" }
{ "U B L F' L' D U2 F' D L' F2 D2 L2 B2 L2 B' D2 F' L2 D2" }
{ "B L' D' B' U B' D2 R B U F L2 F2 L2 D2 B' R2 F' L2 B' R2" }
{ "R B2 F2 L F' D L2 U B' R' D2 U2 B D2 R2 U2 L2 B' L2 F' L2" }
{ "D' R2 B2 U2 R2 B2 D R2 U F2 U' L U2 R2 B L2 R U2 F2 L2 D2" }
{ "B2 D R' U F' D' U L' D F2 R2 L U2 L' F2 L B2 D2 U2 L2" }
{ "R2 D2 B2 R2 D2 R2 B D2 L2 B' L2 D F R B' L2 F U2 F2 D" }
{ "R F2 U' L2 B D F' R F2 L U2 F' U2 R2 B L2 B2 R2 F L2 B'" }
{ "F' U2 B2 D2 F' U2 F L2 D2 B' R' U D2 B' L U2 F D' R'" }
{ "R2 F2 B' L2 U2 F B' U2 R2 B' L U2 F U B L' R F L2" }
{ "U L' B F' L' U' L' B2 U2 L' D' U2 R2 B2 F2 U R2 B2 R2 D2 B2" }
{ "B2 U L' D2 F R' U' L' F L' B2 D F2 D' U2 L2 B2 U' F2 D' L2" }
{ "L2 U' F2 D' F2 U' B2 U B2 D R' D2 R2 F' B2 D' R' U' R' B R2" }
{ "U2 F2 L2 F2 L2 D2 R2 F R2 B L2 U R' F2 U2 R' D' L2 R U" }
{ "L2 F2 U' R2 U B2 U R2 U2 L2 F2 L B U' R U' L2 F' L U2 L'" }
{ "F2 L2 D' B2 L2 B2 U2 L2 B2 U' D' F D' B' D' L' F' D2 L F2 U2" }
{ "D2 L' F2 R2 F2 D2 L' F2 R2 D2 F2 U B U R2 U D F' L D'" }
{ "U2 L2 F2 R U2 L F2 U2 F2 R2 F' D B' L' B' L F2 L D' L' R" }
{ "D R2 D2 L B2 F2 D' B' R' U' L2 U R2 L2 D B2 U' B2 D2 B2" }
{ "F2 D' B2 R2 U2 B2 U2 D' B2 R2 D F L' D2 B2 U2 R' U B2 R'" }
{ "D L2 F2 U L2 D2 R2 F2 D F2 L2 R U' F2 R' D F B D L2 B2" }
{ "F2 L2 B2 U2 R2 U F2 U' B2 L2 F2 R' F' U2 R D' F2 R D' R2 F" }
{ "D2 F2 D2 F U2 F R2 B2 L2 D2 F L R U F' L2 U2 B2 D B' L'" }
{ "U2 B L2 F U2 R2 U2 F' R2 F' L' F' B' D2 R2 U B' D' F' D'" }
{ "F2 L2 D' B2 U' D2 F2 U2 D' L2 R2 B' U' F R' B' L2 D B2 L' F2" }
{ "U B2 U2 D' B2 D2 L2 F2 R2 B2 D L' B' D2 R D2 R U' R F R2" }
{ "L B2 D F R2 L D' F' D B R B2 D2 R' F2 L B2 R2 B2 R' F2" }
{ "L F' L' D L D B' U F' D2 F2 R2 B2 F2 R2 D2 L' U2 F2 L2" }
{ "L2 D2 B' L2 R2 F2 L2 F' L2 R2 F' U R' F2 B2 U' F' B' D R2 F'" }
{ "B2 L' D R F2 R B' F2 L' B R2 B' R2 F' R2 B' L2 B' U2 F'" }
{ "D2 L' F2 L2 F2 U2 R' B2 R' U2 R2 F' U F2 R' F2 D2 L B U' D" }
{ "R2 F' R2 B' U2 B' L2 D2 L2 B2 U2 R F' U' B R D' L2 R D" }
{ "F2 D R2 D2 L2 F2 D' B2 U' B2 D L' F' R F2 D F2 U2 B' U F2" }
{ "R2 D' B2 D F2 D2 R2 U B2 U2 F2 R F' L' R' U D2 B U D' B2" }
{ "F' U B' D' F L B2 L2 B' R2 U2 F2 R' B2 D2 L' U2 F2 R2" }
{ "D2 B2 U2 F2 R2 F R2 B2 R2 B' U2 D L' D' L' R' B' R U2 F2" }
{ "U' F2 D2 L2 R2 F2 D' R2 F2 D B D2 L2 B2 R' B2 L' D' B U" }
{ "B2 U D2 L2 U F2 B2 U' R2 B2 D' L D2 R2 D2 F' B L' B D2" }
{ "L2 D' L2 U L2 D2 R2 F2 B2 R2 D' F R D' R2 U F' B2 U R2 B" }
{ "F2 U' F L2 U L U2 L' D B2 D' F2 D U2 R2 B2 D B2 D'" }
{ "L2 U2 F2 U B2 L2 F2 B2 U2 D' F2 L' R2 B U2 B D L' U F' D2" }
{ "F2 L2 B' U2 B2 R2 B U2 F' L2 D2 L' B D' R2 D F D F U B2" }
{ "L2 U2 B' D2 F' U2 D2 B2 D2 L2 F' L D' R D2 R' U' L' F2 B D" }
{ "F' D2 U R' D F' L2 F' U L B F U2 R2 B2 U2 B D2 U2 F2" }
{ "B2 D2 L2 D2 R' F2 L' B2 U2 L R' U R' B' L D2 F2 B L' F D2" }
{ "L B' D B' U' R' B' F D' F' D' F2 D2 F2 L2 D' U L2 F2 U' B2" }
{ "F L2 R2 D2 B L2 F' L2 F' D2 R2 U' R U2 F' U2 L' F' B' L' R'" }
{ "F U2 B' L2 B' L2 F R2 B' D2 B' L' F2 D R' F' U' B2 L2 D' B2" }
{ "U2 L' U2 R2 F D B' U B' U' F2 L2 B2 R2 U' B2 U2 R2 U" }
{ "B L2 U2 B2 U2 F2 B U2 D2 L2 B2 R' U D2 R2 F U2 F2 L' U' F2" }
{ "B2 U2 B2 D F2 B2 D L2 R' U2 B D2 B2 R D' R2 F U'" }
{ "R D2 B D R' D2 U2 R2 D B D F2 D R2 U R2 D2 F2 D' F2 U'" }
{ "L' B' U' L B' D B' D2 U' F' R2 F R2 U2 F' U2 B2 L2 U2 F" }
{ "D2 R F2 U2 F2 D2 B2 R2 B2 L' B2 U R' D2 B2 U L U2 D' F'" }
{ "U2 L2 D2 F D2 F' U2 F' R2 B2 D' L U' F2 B2 U B' U'" }
{ "B2 U2 F R2 F2 L2 F U2 B' U2 F2 R' F' D R F D F' U B' D" }
{ "D2 R2 U' F2 D' L2 B2 D F2 D F U2 R2 U2 L' D' F' D B' U D'" }
{ "B2 R2 U2 R2 F U2 R2 F' L2 B' L R2 D F' U' D2 R2 B2 L' F L'" }
{ "L' D' F' D2 R B' L F' U' L F2 R2 B2 D2 U L2 U2 L2 F2 D'" }
{ "L' D' L' B2 U' B R L U F D2 F2 R2 F2 R2 U F2 D R2 F2 R2" }
{ "U' L D' B U2 F' L' D2 L' B' L2 D2 U' L2 B2 D' B2 F2 D2 F2 U'" }
{ "U2 B2 U F2 D' B2 U' B2 L2 U F R U L D B' D2 R' F2 B2" }
{ "U2 L U R B F' R2 D' U2 R' B2 U L2 D B2 D B2 R2 D" }
{ "D B' R2 L' D' R' L' F' D F2 R2 U2 F2 R F2 R2 L' U2 B2 L'" }
{ "B' U2 R2 D R' B2 L' U' B' L2 D2 L2 D' R2 D' R2 F2 U' B2" }
{ "R' L2 F R L' B D R U' R2 F D2 L2 B U2 L2 F2 D2 R2 F" }
{ "U R2 U' D' F2 D R2 B2 R2 F2 R2 F D L R2 D B R2 U R' F'" }
{ "U2 F U2 D2 L2 D2 B R2 F' D2 F2 R U R2 F B2 L' R2 F2 D2" }
{ "D L2 D2 F2 L2 B2 R2 U' R2 D' R U' B' L F' B R' D' B' L' D'" }
{ "B2 D' R2 D' F2 D2 R2 B2 D B2 U F U' L' F2 L' R F' L R' B'" }
{ "U' B2 R2 U' B2 R2 B2 U' F2 U' L2 B' U' B' D F' L2 R2 D L' F" }
{ "U F2 R' B' D R' B' U2 F' D' R F2 L2 B2 U2 R2 D2 R D2 F2 R" }
{ "B' L2 B L2 B D2 R2 F' D2 F2 L2 R B2 R' U L R D L2 U" }
{ "U2 B R2 F' D2 B U2 D2 L2 U2 B' D F' B2 R' F' L' D' B L B" }
{ "B2 L U' L D F R D2 R' B' D2 U R2 F2 D L2 F2 L2 F2" }
{ "R' L2 B F' U' B R' L2 B R2 U2 R L' D2 R' B2 F2 R F2 L2" }
{ "F2 D' B2 D B2 R2 B2 U L2 D R2 B U' R F2 R2 U B2 D' L' B" }
{ "B2 D2 B2 U D2 L2 F2 U R2 B2 D2 R F' R' D' B U D B'" }
{ "B' R2 B U2 D2 R2 B' U2 B' L2 B' R D2 F2 D' B' D2 B L U2" }
{ "R2 D' L2 D' B2 R2 U R2 D' F2 D2 L' F L B2 D2 L' B' D' B2 D" }
{ "D2 U' L2 F' R2 U F R D R2 U2 B R2 B2 L2 F U2 F R2 L2" }
{ "F2 R2 F2 D' R2 D2 F2 U2 R2 D' R' U' L2 B U2 D B L B' L2" }
{ "L2 U2 D2 R' D2 F2 L2 U2 F2 R' F2 D B2 L R' F L' F2 L B R2" }
{ "U2 F' U B2 U B R F2 D U2 B2 R2 L2 F' R2 L2 F' R2 F U2" }
{ "R B' D2 U B2 R L' B R' B2 F2 U2 F2 R' D2 U2 F2 R' F2" }
{ "R2 B R F' L' U' B D' L U' B2 L2 F2 U2 L' B2 R' B2 L2 D2 L'" }
{ "L2 D' B2 R2 D' F2 R2 U' L2 R2 U2 B' L2 F' U L R2 U B2 R D" }
{ "F R2 B' U2 B2 L2 D2 F U2 B' U2 R B' R' U B D2 B2 D R' U2" }
{ "L2 U B2 D F2 U2 R2 B2 D' B2 U' L R D F' L' B U F B' D2" }
{ "D2 B' L F L2 D L' B2 D L D' B2 F2 R2 D2 B2 D' B2 L2 D2 R2" }
{ "U' R2 B2 L2 D' F2 R2 D2 R2 D R2 F B2 D L F B' D2 L' F'" }
{ "R D2 R' D2 L2 F2 D2 L F2 R' F2 U' L2 U R' U2 R B U' F'" }
{ "R2 F' D2 L2 B' U2 B2 U2 L2 B' R' F2 B' D' F D2 F D2 L B" }
{ "D2 R D' R D' L B F' R' F R2 F2 L2 F2 D' B2 F2 D' F2 U'" }
{ "U D2 L2 U' B2 D F2 D B2 D F' R F' L B' R2 U' R2 D' L" }
{ "L F' L D' R' B D' F' L' F R2 F2 U2 B2 L2 U B2 D B2 D' B2" }
{ "F2 R2 F2 U' F2 D' B2 U2 B2 R2 B2 L F B2 U' D2 B2 L' F L' R2" }
{ "D R2 D L2 F2 U2 L2 U' B' L' F L' D' R D' R U2 R2" }
{ "L U2 L' D2 B2 R U2 R' D2 L' R2 U F' L2 D L2 U D2 L' F' D" }
{ "U2 L2 F2 R D2 F2 R2 F2 R' F2 L' U' F' D2 R F L R U B'" }
{ "R F2 R' B2 R D2 B2 U2 R' F2 D2 B D F B L2 R2 F L' D2" }
{ "R2 D R2 B2 D2 B2 U F2 U' F2 D F L F U2 F' U2 B' L B2 D'" }
{ "F' U2 B L2 B D2 B' U2 B' L2 F' D' B2 L' U' F' R' F U' L F" }
{ "L2 D2 F U2 L2 F D2 F R2 U2 B' L' B2 R' F' B2 D B L D2" }
{ "L2 R2 B2 D' F2 L2 F2 R2 U R2 U L' F B' U F' L' F2 R D R" }
{ "U2 R2 U2 F2 U2 D2 F' R2 F' B2 U B2 L D' R' B' U' F2 B" }
{ "F2 L' F2 L F2 R2 F2 D2 R D2 F2 U F U2 F2 L D B D' F' U2" }
{ "D2 B2 D2 B2 R2 F2 L F2 B2 U2 L' B U2 B' U L' F L2 R' F'" }
{ "R2 U B2 R' B2 D2 B2 U' B2 R2 B' U2 B2 U2 R2 B2 R2 F' R2" }
{ "F2 R2 B2 L2 D F2 U B2 L2 U L2 R F2 B2 D B L' D2 B' L U2" }
{ "B2 D2 R2 U2 B2 U2 R2 F L2 B2 D' B2 R U B' U' F2 R' F' L'" }
{ "R U2 L2 D2 B2 L B2 L D2 R2 U' F2 L F U B' D' R2 B' R2" }
{ "F' D2 L2 D2 B2 U2 B U2 F D2 B L' B2 U D' F L U2 R2 U' B'" }
{ "L2 D2 F U2 F' U2 F R2 F2 B2 D2 L U D2 F2 D2 R' F L' F' B" }
{ "B2 L2 F' D2 B D2 L2 B' L2 U2 F' D' F L' B2 L2 R' F U D R'" }
{ "D2 L2 D2 B D2 B' U2 F R2 F' B D' F2 L U F' R2 D R U B'" }
{ "B' R D' U R' U R B' U2 L' D2 B' D2 L2 B' D2 L2 B R2 L2 B" }
{ "B2 U' F2 B2 D2 R2 D' L2 R2 F2 L2 R' F U2 L2 U L F U' D' R'" }
{ "B2 L' U' R' L F' R U' B' L B2 D' U L2 D B2 U2 B2 F2 L2" }
{ "R2 D L2 B2 U2 D' F2 D R2 B2 L2 R' D R U2 B R2 B2 L' B' R'" }
{ "F2 R2 F2 U R2 U2 L2 F2 D' L2 D' B' D F' U' B2 R' B' D2 F2 B'" }
{ "L2 D2 R2 U B2 R2 F2 R2 U L2 R2 B' U L R2 F U' D L2 B' R2" }
{ "U D2 R2 D' F2 D' F2 B2 R2 F2 D2 L' D R2 U2 B' D2 L2 R B U" }
{ "F2 D B2 L2 F' R2 L B D' L' D2 F2 R F2 L2 U2 B2 U2 L' D2" }
{ "F2 U' B2 L2 U2 R2 D R2 F2 D2 L2 B R2 D L' B2 R' U D2 F D2" }
{ "F2 U' B2 D' F2 L2 D F2 R2 F2 D2 R F' D2 B2 L B' D2 L' B R'" }
{ "B2 U F2 B2 U2 F2 D L2 D2 R2 D' L D' R' B' R F' B2 U D2 R" }
{ "R' B U' R L2 D R2 F2 D2 B R' B2 R B2 L' D2 B2 U2 R2 U2 L'" }
{ "L2 D' B2 L2 F2 D' F2 D2 B2 R2 U2 F D L D F2 R U D' B'" }
{ "F2 U2 D2 L2 F2 B' D2 R2 B' R2 U2 D' F B L B2 U' F2 U2 D' R'" }
{ "F2 D2 L2 D' R2 U R2 B2 D' B2 D2 F' D L R' B U' L' F2 D' L2" }
{ "U L2 F2 D F2 D R2 B2 R2 D' F2 R B' D L B2 D' L B' U2 R2" }
{ "D' L2 U2 R2 D2 B2 U' R2 B2 L2 D2 R U B' U' F B2 D' B2 D L2" }
{ "D' L2 U2 R2 U' R2 D2 F2 D' R2 D2 F B' L U' B2 U' F' L' B L'" }
{ "D2 F2 D2 R2 D2 R2 B' U2 F2 D2 L D2 R D F R2 F2 L2 R2 B'" }
{ "L' D B2 F' R B' F' U2 L' F U B2 D2 L2 D U2 B2 R2 D2 F2" }
{ "B L' B' D R' B2 F D2 U' L B F' U2 R2 D2 F' L2 F2 R2 F' U2" }
{ "D F2 R2 D R2 D F2 D' B2 U2 F2 B U' R' U' D R2 B' D B R'" }
{ "R' F2 L' F2 U2 D2 L D2 F2 L' D B2 R F B U2 R F2 R' D2" }
{ "L2 F2 R2 D B2 D' F2 U2 B2 R2 U L' D2 F2 B' L D2 F U D L2" }
{ "D2 U' L' D R D' B' F D' L F' R2 L2 B2 R2 D' B2 U' B2 U2 B2" }
{ "F2 D' B2 U' F2 D L2 F2 U' R2 D2 L' U' R F B R2 B R2" }
{ "L2 U D R2 D B2 U' B2 L2 U' L2 B' R' F' B' L B U L' R2 D'" }
{ "B2 D2 F R2 F D2 B' U2 L2 F' U F R' D L' F' U2 D2 R' F' B'" }
{ "L2 R2 D B2 U' F2 L2 B2 L2 U' R U' F2 B L2 F2 D R B2 D' B2" }
{ "D2 R2 F2 U' D2 R2 B2 L2 B2 R2 D' L' F U2 L B D' F2 R' F R" }
{ "U2 B2 L' U R U2 F' R2 B L F2 R2 B F2 D2 B D2 U2 R2 B' D2" }
{ "L R U2 B2 L F2 B2 L' B2 L' B2 D' R' F' B' L B2 D' B D2 R'" }
{ "B2 D2 L2 B' D2 F R2 D2 F L2 R2 D' L' B2 R U F R' B D B2" }
{ "B2 U2 F2 U R2 U' L2 U' D2 R' D' B U' R B' U L F B'" }
{ "L F D2 F' L B' F' U' R D' F2 R2 L' D2 L' U2 F2 D2 U2 R" }
{ "R' B' U B D U F L B F R2 D2 F2 R' B2 F2 U2 L B2 F2 R2" }
{ "L' F R' B' L' U' B' D' F R2 U R2 U2 L2 F2 U' F2 U2 B2" }
{ "R' F2 D2 L D2 F2 R B2 L D2 B L' R2 U L' R' B' D' L' R2 B" }
{ "F D2 F' R2 U2 D2 B' L2 B' R2 U2 D R B' L2 D2 F B L' R' B" }
{ "F' U2 L2 U2 B2 D2 R2 B D2 L2 F' D R B2 U2 F L B' U D2 R" }
{ "L F2 U2 F2 L U2 R D2 L2 F2 R' B L F' R2 D2 L U F' L' R2" }
{ "R' U2 R2 B2 R' F2 D2 L2 B2 R U2 D' L2 B' U2 D2 B' L2 R' U2" }
{ "D2 F' L2 B' R2 U2 F' L2 B U2 F2 R U' D2 F2 B' L2 U B2 R" }
{ "D2 L D' R D U L B D B2 D2 R U2 R2 L F2 R U2 F2" }
{ "D' R2 D2 L2 R2 D F2 L2 U' B' R B U L' R D' F U2 R2" }
{ "R2 U' D2 B2 L2 R2 D' F2 B2 D R2 B' L' F' U F2 R' F L' D' B" }
{ "F2 D2 L2 R' U2 F2 L' D2 R' F2 R' D' F L R2 U' L F' D F2 L'" }
{ "L2 B2 R2 F2 B2 D2 B2 U R2 D2 R2 F D R F2 L' B U' D" }
{ "D' B L' U F' L B L U R2 F2 U2 R' U2 R B2 F2 L2 U2 L" }
{ "D L2 D2 L F2 D F2 U2 R B F2 U' R2 F2 D R2 D' L2 D' F2" }
{ "B' L2 F D2 B L2 B R2 B R2 B L F D' R' B' R D' B2 D' R'" }
{ "B2 U2 L2 D R2 B2 R2 F2 U' F2 U F' U2 L' B L U' L' D' B" }
{ "B2 R2 B D U' L F R U2 R U2 F' R2 B U2 F R2 B2 R2 D2 B'" }
{ "U F D2 U' F R' L2 U L D' U2 L2 B L2 F R2 L2 U2 R2 B' D2" }
{ "L2 F R2 B L2 F R2 D2 L2 U2 R2 U B' L' D2 L' F2 L2 U' F' L" }
{ "R2 U R2 D' F2 U R2 D' B2 U2 R2 F' L' U2 B2 U' R2 D2 L B' D'" }
{ "F D2 R B2 D B U' B2 D' L' F' R2 D2 R2 F L2 B U2 B' U2 F2" }
{ "U2 F U2 D2 F' U2 R2 F D2 R2 F R D' B2 L B U' F' D' F2 D'" }
{ "D2 L2 F2 U2 B D2 B L2 F' B' U D' B' L2 D L R' D L2 R'" }
{ "F2 D F2 U R2 F2 L2 D2 L2 F2 B' U R U2 D' B R2 D2 F' R' D" }
{ "F2 U L2 D' F2 R2 F2 B2 D L2 U2 F' R' B U' D2 F2 U F' D'" }
{ "D2 F' R2 U2 L2 D2 F L2 R2 D2 B' D' R' B2 D2 L' U L R2 B' L" }
{ "F2 B2 R2 U R2 U' L2 D B2 D2 R' D L2 F2 D' F R' B' U' B'" }
{ "F2 L2 F' B2 R2 B2 L2 D2 B' L' U' R2 U2 F' D R F D B" }
{ "B' R B' R B2 F' L B L U2 F2 D2 R2 U' R2 L2 D R2 L2 B2" }
{ "U2 D' L2 B2 U' B2 U2 F2 L2 F2 B' L' R' B L F2 U D F' R2" }
{ "L2 D2 F R2 F B L2 R2 B L2 R2 U L D' B' L' U F2 L U B'" }
{ "L2 U B2 L2 D2 L2 R2 B2 D F2 D' L B U2 L' B2 L' U L2 F B'" }
{ "D2 R' U2 B2 L2 R' U2 D2 B2 L' F2 U L2 F U F2 L' R' B D" }
{ "U' B2 R2 U F2 D' L2 U2 L2 F2 D2 R' U2 D2 L U R' U2" }
{ "L U2 L' F2 B2 L D2 B2 L' F2 D2 B L D L2 R2 D F2 B R U'" }
{ "D2 L2 D' B2 U2 L2 D F2 D F2 D B' R2 U B2 R' D2 R2 U B D2" }
{ "U' B2 U' D2 R2 B2 D B2 D' F2 D' B' D F U' L' U2 D F D2 B" }
{ "D2 B U2 L2 B' L2 B' D2 F D2 R2 D F2 D2 L U R U' R B' D'" }
{ "R' D2 B2 L U2 F2 L F2 L2 B2 L2 U' F L2 U' L F' L2 R F' B" }
{ "L2 D F2 L2 D2 F2 U' F2 U' R2 D2 B' U2 R' D F' B2 L' F2 B R" }
{ "F2 D2 L2 B' R2 B' L2 B' U2 B U F B L F2 D L' R2 D2" }
{ "F' L2 U2 F2 L2 F' B2 U2 L2 R2 B' R F' R2 D F U F L F2 U" }
{ "U' B2 F' R2 L F U R' B2 D' B D2 F2 L2 F' D2 B R2 L2 D2 L2" }
{ "R2 F2 D' F2 B2 R2 U' R2 D2 F2 D B R' U R' U' L2 B L' B U" }
{ "U2 R2 B2 D2 F2 D2 B2 R B2 D2 R' F' U2 L R' F D L U' L2 D'" }
{ "L2 U2 F L2 U2 L2 F2 D2 F' D2 B L F R F' D L B2 U' D' B" }
{ "U' F2 U D' F2 L2 D2 R2 B2 L' F L U R F' B2 L D'" }
{ "R' F2 D2 R B2 U2 R' U2 R' U2 F L R' F D2 L' D L R'" }
{ "F2 R2 B2 D2 F2 D L2 F2 D' L2 U R B' U' L B U F2 R D B2" }
{ "B D' L' F D2 R2 U' L' B2 R2 F' L2 U2 F2 L2 B R2 F L2" }
{ "F D2 F2 D2 R2 F2 R2 B D2 B U2 R' D F' U F' U2 L F2 L2 B" }
{ "R2 D2 R B2 D2 B2 L F2 R' U2 R U L B R B U F' D2 L U" }
{ "D2 R2 D2 F2 B' U2 R2 B R2 B2 U' R' F2 D L2 D R U2 B'" }
{ "F' U' L2 B R D2 F' U L D U2 L2 U' L2 U' B2 F2 R2 F2 D2" }
{ "D B2 L2 B2 U D2 R2 D' B2 U L' F D' L U' B2 L D2 F' L2 D2" }
{ "U2 L2 B2 R2 F U2 R2 U2 F' U2 L2 D' R F' L2 U' L F D B2 L'" }
{ "U2 F2 L2 U2 R2 F D2 B' R2 F' B L' F U R F2 U D2 R2 D' B2" }
{ "R2 D B2 U2 R2 F2 L2 B2 U2 B2 D R D' L2 F U D' F L F' B" }
{ "D' F2 U L2 D F2 L2 D2 B2 L2 D2 L B2 R2 B' U2 B2 U B D' B" }
{ "F2 U2 B L2 D' B' R' D B2 U L2 F L2 F' L2 B2 L2 D2 F' D2 R2" }
{ "B2 U2 L2 D' R2 B2 R2 U' D' F2 D L' U2 B2 U2 F R F2 U' F2 L2" }
{ "U2 L B D' L' U F R B2 R B2 U2 B2 L2 U B2 F2 L2 F2 D R2" }
{ "D L2 F2 R2 F2 D' L2 F2 U L' F2 B' D' R2 D F R2 F2 R" }
{ "L2 B' U2 R2 U2 R2 B2 D2 F U2 F D L R' U D2 F' D2 R F' U2" }
{ "U2 R2 U L2 B2 U B2 U' D' B2 L2 B L R' D L2 F B2 L B D'" }
{ "B2 D2 R' L2 U' B2 U F L B U R2 B2 L2 D2 B2 D F2 U F2 U2" }
{ "U2 D2 B' D2 L2 U2 B2 R2 B' D2 F2 L D R2 D R' B D2 F D2" }
{ "L2 R2 F2 U' F2 D' B2 R2 U2 B2 L2 F' D' L B L D' B2 D R' F" }
{ "B2 U F2 R2 U' L2 U' R2 D' L2 U2 R' F' L' D R' B2 R2 B' L' R'" }
{ "F2 L B2 U2 L F2 L2 U2 R2 D2 R' U' B' L' U B' R' B' R2 U L'" }
{ "B2 D B2 R2 U' B2 L2 F2 R2 B2 D2 B' D' L' B R2 U B R2 D B'" }
{ "B2 U' R' L2 B2 R B' F' R D' B2 D2 B2 U L2 B2 L2 U' B2 U'" }
{ "R2 B L2 R2 F U2 R2 D2 B U2 F L B R U' L' D' R' F2 D F'" }
{ "U2 F' B2 L2 F' U2 L2 R2 B' L2 U2 D R2 B' R' F D B2 L' D R'" }
{ "L2 F2 D2 L F2 L' B2 D2 L2 D2 R2 B L' U R2 D' B' U B L' U2" }
{ "F B2 L2 D2 B U2 R2 U2 L2 F' D2 L' F U' R2 U R' U2 R2 F" }
{ "R2 U2 L D2 B' L F' D U' F2 L U2 R' B2 L2 D2 F2 L' D2 B2" }
{ "L2 U2 R2 B D2 L2 F' U2 R2 U2 D2 L F2 U' F2 B2 R D' F' L U'" }
{ "R2 B2 L2 F2 U2 R' B2 R F2 R D2 B L' F R' D L' R' U' D' R2" }
{ "B R2 D F' L' D' U2 B F R' B2 D' L2 U' R2 D R2 B2 D F2 U2" }
{ "D2 B2 L2 D2 L2 D2 F2 D2 R2 B2 L B U2 L2 B2 L D' F' D' R2 B'" }
{ "U F2 U' R2 U' F2 D' L2 R2 D B2 L B' U L' R U2 D' B' L2 D2" }
{ "U2 D2 B U2 F2 R2 F2 B' D2 R2 F' L U B' R' D B2 U' R U' R" }
{ "U2 D2 L2 B' L2 B2 R2 B U2 F L2 R' B R U2 F' L D' B U' D" }
	}
}
if {$moves == 7} {
	set b "cross 7"
	.buttoncross.$b configure -background green
	set scramble {
{ "L2 B2 L U2 R' U2 L2 B2 R' U2 R2 B' L F R2 U2 R' D' B' D'" }
{ "B L' D2 F' D' R2 U2 B2 D L B2 R2 L2 F' L2 F L2 D2 B U2 L2" }
{ "R2 U2 L2 D R2 F2 D' F2 R2 D' F2 B' L D F R' B' R2 D' L2 F2" }
{ "F2 L2 B2 D' R2 U L2 R2 U F2 D2 L B' R' F2 L D' L2 R2 F L" }
{ "L U' F2 D' F R2 D L2 B U2 B2 U2 B2 L B2 R2 B2 U2 R B2" }
{ "F' U2 B2 D B2 R' L D' F' D R2 D' R2 D' B2 D F2 U B2 D2" }
{ "D2 B2 U2 D2 L U2 R' U2 R U2 R2 F L D B2 L R2 B2 D2 B' D'" }
{ "R2 U2 B2 D2 F' R2 F' D2 B2 L2 B2 L' R' F U' B U R' U" }
{ "F' D2 R' U' B2 F R' B L' B' D2 B2 D B2 F2 U' F2 L2 D L2 D2" }
{ "F2 R2 F2 U R2 D B2 L2 D2 B2 R2 B' L' F' U R' D' B' U' L' R" }
{ "D2 R2 F2 B2 D' B2 U' L2 D' R2 F2 R U2 F B2 L U2 F' L2 B2 D2" }
{ "B D2 B L2 D2 B U2 D2 B' U2 F L' B U2 F L' R' D' L' U' L2" }
{ "U' B2 R2 U B2 L2 B2 D F2 D2 F2 B' R D' L B2 D' F' U R" }
{ "B2 R2 U' L2 R2 U F2 U2 L2 D' R U' F2 R' D F U' L' R2 B D" }
{ "F2 D' B2 L2 D2 B2 L2 R2 D' L2 D' F' B L D B L2 U2 L' B' L'" }
{ "U' F2 U L2 B2 D2 R2 D' B2 U' F' L' F D2 L R B' U' L' F" }
{ "L U2 R' B2 D2 R2 B2 D2 R U2 L2 F L' B2 D L' F R B' D2 B2" }
{ "L2 B2 R2 F D2 B' R2 F R2 D2 B' D R2 D R2 U2 R U B' D" }
{ "F' U2 B2 R B2 F R L' B' D U2 L2 U' R2 U L2 U' F2 D' L2" }
{ "R2 F2 R2 F2 U2 L F2 R D2 R U B R2 D2 L R B' D" }
{ "D' F2 U B2 U' L2 D R2 U R2 U' B R2 U' F R' U2 D2 L F" }
{ "F' D2 B' R2 F U B L' F R D' L2 F2 R2 D F2 D F2 L2 U B2" }
{ "D R2 U R2 F2 L2 U R2 U L2 F2 R' B' D2 L' U B D' F' D2 R'" }
{ "R2 F2 D R2 B' L D B R U' B L2 U2 B' F' D2 B L2 F2 D2 U2" }
{ "B2 L2 D2 B L2 R2 B2 U2 B R2 U2 L' U' B2 D B' R U F R U" }
{ "U' R U B D2 R2 L' D' F' R B2 F' D2 B' L2 F2 R2 U2 L2 D2 R2" }
{ "B L2 F' D2 B U2 L2 D2 B' R2 F2 U' R B2 D' F2 D2 F L' U' D2" }
{ "U2 R2 F2 R2 D2 B R2 F' R2 B L' U2 F D2 B' D' L R2 F B2" }
{ "F' R2 F' R2 U2 B2 L2 F2 R2 U2 F2 U' L R2 D' R' U D L F L" }
{ "F2 L2 R2 U2 B2 D2 B' R2 F B' D' F U2 B2 L' B' R2 U' R' D' B2" }
{ "U L2 F2 B2 U L2 B2 U D2 B2 L2 B' L' U2 F2 D' L' U2 R2" }
{ "U' R2 F2 U2 R2 F2 D L2 D B2 D' L' B R' U' R' F L U2 B L2" }
{ "D F' L' D2 R U R' L2 F' U2 B2 L F2 R L' B2 D2 B2 R' D2" }
{ "R2 F2 R2 U' R D' R2 B' U' R U2 L2 F' L2 D2 F L2 U2 B' L2 F2" }
{ "R F2 L2 U' L F U' B R2 U' L' B2 F2 L' D2 B2 U2 B2 L' F2" }
{ "R' U R' U' F L' D F U' L' U2 B D2 U2 L2 B2 F' L2 B2 L2 U2" }
{ "U L2 U' B2 L2 F2 D2 R2 D' R2 D L' U F B L' R2 U2 L' D B" }
{ "R F' L' B' R D' R2 F' U' R D L2 B2 L2 D' B2 U R2 U L2 B2" }
{ "B' U R D L F2 D B2 F U B' D2 R2 F2 L2 U2 F L2 F' U2 F" }
{ "F2 R U2 L U2 D2 L' B2 U2 L' F' D2 L F' L F' L U B2 L'" }
{ "R2 F2 B' U2 L2 U2 L2 B' R2 D2 B' L' R2 U B R' U L2 B' R' D" }
{ "D2 B2 R2 U L2 R2 F2 U R2 U2 D F' R2 U F' B2 R B2 R2 B D" }
{ "L' B2 L' F2 L D2 B2 L' U2 F2 R2 D' R' U F' L B D2 F' D' F2" }
{ "L F2 U2 R' U2 D2 R' U2 R2 U2 F' D B U B D' B' D' L' B" }
{ "F2 D' B L' U2 F2 D2 F' L U' B' U2 F2 L2 U2 B' R2 U2 B' D2 L2" }
{ "F2 U' B' D2 F' D2 R U' L2 F D2 R' F2 R2 D2 B2 R' B2 L'" }
{ "D2 L2 F2 B' D2 R2 B' D2 R2 F2 L2 U' L' U F' L2 R U' R U' R" }
{ "L B2 D2 L' U2 L F2 R' U2 R2 D2 B' R' U L F' B2 U R B2" }
{ "R2 U L2 U L2 D R2 U' D' B2 R2 B R F' L2 F' D' B' R2 U' R" }
{ "L2 D' F2 B2 L2 U D L2 F2 U L F R D' L' F' R F B2 D2" }
{ "R2 B' L B2 D2 F L' B' D L2 B2 D2 R2 F2 L B2 F2 U2 R' D2" }
{ "U2 B2 R2 D2 R U2 F2 U2 D2 L2 B R2 U' D' B L F R' D2" }
{ "B2 U F L B2 D' U B D' R D F2 D' L2 B2 D' B2 D2 U L2 D'" }
{ "L' F2 R' D2 L' D2 L F2 B2 R2 U2 B' U L U' R' D2 B' D' L B" }
{ "R2 D2 L D F R' L2 U F' L2 F2 U R2 L2 D R2 L2 F2 U B2" }
{ "D2 F D2 F L2 U2 L2 F B' D2 B' D' L U' F' D R' F D2 F U" }
{ "R D2 L D B' R F D' F' U2 F R2 D B2 R2 D2 L2 D L2 U2 F2" }
{ "L2 U2 L2 F2 L2 D2 F2 U2 D' R' U' B L F B2 D' B2 D' L' R2" }
{ "U F2 U L' F' U2 F R' F' R2 D' B2 D2 R2 D B2 L2 U L2 D'" }
{ "F' D2 B' L2 U' B R F2 L D R2 B' L2 F U2 F R2 F U2 B' L2" }
{ "R D' L D' B' F R U' B2 F R2 L2 B L2 D2 B' D2 R2 L2" }
{ "D2 B2 L U2 R' D2 L2 B2 U2 L U2 D' F D' B' D R U' B D2 F2" }
{ "L B R2 U' L' U' R' B' R U2 B2 D2 R' D2 L U2 R2 U2 R'" }
{ "R2 B2 L2 U2 B D2 B U2 B2 R2 D2 R F2 L' B' D2 L D' F' B2 D" }
{ "R2 B2 U' B2 U' B2 D2 R2 D' R' B R2 D' R' B L R' F D2" }
{ "D B2 D2 L2 U2 D L2 B2 D F2 L2 B L F2 L' D F' B D2 R' D'" }
{ "U2 B' D2 B' U2 B2 L2 U2 R2 D2 F2 D' F L U2 D2 F' D F2 U'" }
{ "R2 B2 U' F2 L2 B2 U2 F2 U' L2 D' R' U' L2 B' L F L2 R" }
{ "D2 R2 U L2 F2 L2 R2 D R2 D F2 L B2 R F' D' R B D' F D2" }
{ "R B2 L' U2 R B2 R U2 R U2 L2 F U' L2 B R' B U' D2 B2 R" }
{ "R L' B2 F' U' B R2 F D' F L B2 U2 L' D2 R2 D2 B2 U2 F2 U2" }
{ "U2 L R D2 F2 L2 D2 R F2 D' R2 F' L' R B R' F D2 R'" }
{ "R2 B2 U' L2 B2 U2 D' L2 D' B2 U2 F L' B' D2 B R U L F2 R2" }
{ "D2 B' D2 L2 U' R' F' L B2 U B2 F2 D2 U2 F' U2 F' L2 F' L2 F2" }
{ "F2 B2 D' B2 L2 F2 R2 B2 U2 R2 U L B L' D F2 U' L2 F L B'" }
{ "R2 F2 D L2 D2 L2 F2 D R2 U B R' F2 B U2 L2 U R F' U' B'" }
{ "R' B U2 F' R' U B R B U2 L F2 D2 L2 B2 L2 F2 U2 L B2" }
{ "B2 U B2 U' B2 D F2 D R2 F' L' F2 L' F' R D2 B2 D2 F D" }
{ "U2 L2 U D B2 L2 D' R2 F2 R2 D2 B' R U F L' R D' F' R' D" }
{ "L D2 R2 B2 R' B2 D2 B2 U2 B2 R' U R2 D' L2 B' R D2 F' B2 R2" }
{ "R2 L' B2 F' R2 D F' R B R' B2 U2 L D2 R' D2 U2 F2 L'" }
{ "U2 L U2 B2 R2 D2 R' B2 R' U2 F' R' D2 F R' D R2 U B2 R" }
{ "F U' R' B' L' D U B2 F' L F U2 L B2 R2 L' F2 U2 R' B2 D2" }
{ "L2 D2 F2 R2 B' D2 B2 L2 B2 L2 U2 L' R' D' L' B' R' B2 L2 U' F'" }
{ "B R2 F' R2 L U B2 F2 D L2 U2 R' D2 L D2 R D2 B2 R" }
{ "L2 D' B' L' F' U B2 D L F2 U' F2 L2 U' B2 R2 F2 U' B2 D'" }
{ "R2 F2 D' L2 R2 U R2 U2 L2 F2 B U2 L' B2 U' F' B L2 R' D B2" }
{ "D' U2 L2 F D2 U' L' D2 L B' F2 R L2 D2 U2 R D2 L U2 F2 R" }
{ "F2 U2 D2 B' L2 F' B' U2 B' L2 B2 U R' F R' B2 R' B L' R' F" }
{ "B U' B R' L2 B' D' L F D U2 B2 F2 L F2 R' U2 L B2 R' U2" }
{ "B2 D' B2 U' B2 D R2 F2 U' L2 D2 L B2 L' R' B L' U' B' U2 B'" }
{ "D U2 B L' D F2 L2 U2 F L' F2 R2 U F2 R2 D' B2 F2 D' U' L2" }
{ "D2 L2 U R2 U R2 D' R2 B2 D F2 B U D' R D' R D2 F L' R2" }
{ "F2 B2 U2 F2 D' L2 U R2 D R2 D2 L' F B D R' U' L2 U2 F2 U" }
{ "F2 U' L2 B2 L2 R2 D B2 D B2 D2 B' L2 U R B2 L B' D R F" }
{ "U2 D2 F L2 R2 U2 F2 D2 B' D2 L2 U L' F2 B' U' L2 R' D2 B' L2" }
{ "D2 F2 U' R' D L2 B' F D' R' D' R2 U' B2 D' R2 U' L2 F2 R2 F2" }
{ "D2 B R2 F L2 R2 F R2 F R2 F L' F R U R2 B2 U F' R" }
{ "D2 L2 R2 B2 D L2 U D2 L2 B2 D F' B' L' F' D' R' F' B D' B2" }
{ "U2 R2 B2 U2 R2 D' L2 R2 D L2 U' R D' L U2 F' B2 L2 U R" }
{ "R2 U L2 F2 U B2 D' F2 D' F2 D B L2 U2 R' D L F' D2 F U'" }
{ "D' B F R' F2 D F R L F' U2 L2 B' R2 D2 U2 F2 D2 F'" }
{ "D2 B' U2 F L2 F2 U2 L2 F' L2 F U' L F' R' B D2 L2 U' L' B" }
{ "U B' L D U' R2 B2 F' R' B R' B2 R' B2 D2 U2 R2 D2 R L2 U2" }
{ "R2 D L2 F2 U B2 R2 B2 U L2 U R U F2 U2 F' R B R' U' F2" }
{ "F2 L2 U2 F2 D F2 D' B2 U2 R2 D B U D' F U' L' F2 U R' B" }
{ "U2 F' D2 B2 R2 D2 L2 U2 F2 B' L2 R B U2 L2 R B' D R B' L" }
{ "B2 R2 F' U2 F2 L2 D2 R2 U2 B' L' F2 D' B' L F' U F2 U F2" }
{ "U R2 U' L2 R2 U B2 L2 U' R2 B' R B2 L B' R D' L' D' F" }
{ "L2 F' U2 D2 R2 D2 F2 B U2 F2 B' L B2 L F R D' B U' L" }
{ "U2 L2 F2 D2 F' U2 D2 R2 U2 B' D F2 U R' U' R2 B U' L' F'" }
{ "B2 U' R2 B2 U' B2 L2 U F2 B2 U' B L' B2 R2 U' R' D' R2 D F" }
{ "B2 R2 B2 D2 B2 D' R2 F2 D R2 D' F B2 R' U2 R' F' L R B U" }
{ "B2 U2 D' F2 B2 D' R2 F2 D B2 U2 F U2 F D2 R F2 L' B R2 U2" }
{ "F' B2 R2 B U2 D2 B D2 L2 U2 F2 R' F2 U L' B' R2 B U' B D2" }
{ "U D L2 U B2 U2 L2 F2 U R2 D' F L' B' U' L2 U2 R D' R' D" }
{ "U2 B2 L2 F2 U R2 U L2 D R2 D R U L F D' B' R F' B2 D'" }
{ "L2 D2 F2 R' U2 L' B2 R B2 R' F2 D R2 B R2 D R F' D' B'" }
{ "L' D2 F2 R' U2 R F2 D2 L2 D2 R' D' B' L' B' L2 F' D L2 D2" }
{ "L B F' R B' U B' R2 U2 B' F2 D' R2 U B2 D2 R2 F2 R2 D2" }
{ "B2 D2 F2 R2 B2 U F2 R2 U L2 D B' L R' F L R2 B' L2 D R2" }
{ "L D F2 R' D2 B' L B L2 F' D' B2 R2 U' R2 U' F2 D2 B2" }
{ "D' U' L' B F2 L D B R D2 L2 D F2 D' B2 F2 D2 R2 U F2" }
{ "U2 D' F2 D F2 L2 U2 R2 D' L2 U R B' D2 L' B R F2 R B2 D" }
{ "B2 R' D2 F2 R' D2 F2 U2 R D2 R' B U L' U2 B' L2 D' R' D2 B'" }
{ "U' B2 R2 D2 B2 D B2 U B2 R2 D2 B' L' F R' U2 F U' L2 R B'" }
{ "U2 F2 D2 F R2 U2 D2 B D2 L2 B' R U L B' U' B' D R' B' R2" }
{ "D' L2 U' F2 B2 L2 D' F2 D R2 U' F' D2 L2 B2 R D' L U' L B'" }
{ "F2 L' F2 B2 R B2 U2 L' F2 L2 U2 B R' D' F' L2 F2 L' U2 B U" }
{ "D2 L2 F2 U2 F2 R2 F2 D2 R D2 F2 B' R' F U2 L' D R B2 U F" }
{ "R' D L2 D F D2 R' L D' F2 D2 B2 F2 L' B2 L2 U2 L B2 U2" }
{ "D L2 F2 L2 U' L2 D L2 D R2 F' L R2 U R' U R' F2 R' D'" }
{ "D L2 U F2 U' R2 D2 F2 L2 U' R' F2 D2 L D F L' B' D' R" }
{ "F2 U2 F' B2 R2 B' D2 B' U2 B2 R2 U' L' D2 R' F R2 D' R2 U2" }
{ "U2 D2 B' D2 F2 U2 R2 B D2 F U' R D B R2 F' B' D2 R' D'" }
{ "R D2 R2 L F U' B D' B' R L2 D2 L2 D2 F2 R2 B F2 R2 U2 F2" }
{ "B2 U' L2 D' R2 F2 D R2 U2 B2 R2 B L2 D' R B' U2 L U2 L D2" }
{ "U2 F2 U' R2 F2 B2 D' F2 B2 D R2 F' U' B R D L U' R U' B" }
{ "F R L2 U2 F L B2 R' D R U2 F' D2 F2 D2 R2 B' D2 F' R2 D2" }
{ "U2 B2 U2 L2 D2 L' R2 F2 U2 L D2 F U2 F R D' R2 F2 U'" }
{ "R F2 U2 L2 U' B L' B2 F' L' D L2 F2 D' R2 U2 L2 D' F2 R2 F2" }
{ "F' U2 R2 B D2 B2 L2 B' D2 F' D2 L D' R U' D' F' D' B L R2" }
{ "L' D2 L' F2 R D2 R B2 R F2 R D F' D L U' F' D2 L U2 L" }
{ "L2 F U2 B' L2 F' D2 L2 F' B' L2 D' L' U2 B U B2 U' D' F" }
{ "B2 U B2 L' D2 B R' U' R2 F' R2 B2 R F2 R' F2 D2 L B2 D2 R2" }
{ "F L2 B2 L' U' B D2 R' F' D F2 D2 U B2 D2 B2 L2 U' R2 U'" }
{ "R2 D' R2 U' L2 R2 U' R2 B2 L2 R' B' R' B' D' L F' R' D L2" }
{ "L2 F2 D2 B2 U' B2 D' B2 R2 D R' U B' U2 F U L' R' U' L2 D" }
{ "L2 B2 L2 B L2 R2 D2 L2 B' U2 B L' U F L' U' F2 B2 U L' R'" }
{ "U' R2 D' R2 U' B2 U' R2 U D2 F2 B U' B U' L B' R' B2 R' F'" }
{ "L2 U2 B' L2 B2 R2 U2 B' D2 L2 B' R' B' L' U F B' U2 R2 U R2" }
{ "R2 B U2 B L2 B R2 B D2 F2 R2 U' F' R' F2 D' L B' L' U B'" }
{ "U2 D2 B2 U2 B L2 F U2 D2 L2 B L' F2 D B U2 R U B2 U2 B'" }
{ "B2 U2 B' U2 B R2 F' L2 U2 B2 L U2 B2 D' B U F' L' B R' B2" }
{ "L2 D F2 B2 U R2 U2 L2 F2 D R B D L2 R' B' L' U' D' L B" }
{ "R2 F L2 U2 B R2 F L2 U2 B' R2 U' B D' F' U2 R' U' B2 L F2" }
{ "F' D2 B' U2 F' L2 F2 B' U2 B L B' U' L' D F L' R' D' B' U2" }
{ "U' F2 U2 F2 U' F2 B2 U' F2 B2 D' L D L2 B' L2 F2 R B2 D' B'" }
{ "U2 B2 R2 F L2 D2 L2 U2 D2 F R U2 D2 B' L2 F U L B2 D' L2" }
{ "B2 U2 B2 R2 U' F2 U' D' B2 D' R' U F' B' D' L' F' U2 D' B2" }
{ "R' D2 R2 F2 B2 R B2 U2 R' F2 B2 U F' U F2 L2 U' D' L R2 B2" }
{ "R' D' U' L' F R2 D' R' L F R L B2 R D2 B2 L2 B2 L' B2" }
{ "U' F2 D' L2 F2 D' B2 D B U2 F' L2 U' B L R' D B D2" }
{ "F2 R2 U' R2 U L2 D2 F2 U2 B2 L2 R F' U D2 R F2 D F2 U' D'" }
{ "D2 L U2 D2 L2 B2 R U2 R2 D2 F' B' L' D R' F B L D' R2" }
{ "F' R2 B L2 B' R2 B U2 F' D2 F2 R F' D2 B L' B' D' R' U' D" }
{ "L2 D' R' F' U2 L' B2 D R2 B U' B2 U R2 U F2 U2 R2 L2 B2 D" }
{ "U2 R2 B2 D F2 U B2 R2 F2 D' B' R2 D2 R F' L' B' R2 B' D" }
{ "D2 R2 F D2 F2 U2 F' R2 U2 R2 F2 L' F2 B D' F L R2 F2 B2" }
{ "D2 R2 D L2 F2 L2 B2 D L2 R' U2 B D2 F L R U2 D L2" }
{ "U2 L2 R B2 L2 F2 D2 B2 R' F2 L U' F2 R' U L2 F B D L2" }
{ "L2 B L F L2 B' R2 D' F' U2 L2 D R2 U F2 R2 D' R2 D L2" }
{ "L D2 F2 R' U2 D2 F2 B2 L2 B2 L' B' D F2 U2 B2 U2 L D' R'" }
{ "R' D2 L' B' U2 R B2 D' R' U R2 B2 U2 B2 L2 U2 R D2 R' U2 R2" }
{ "B2 L2 D R2 D' L2 U' F2 U D2 L2 B R' B U2 B' R F B D' R2" }
{ "F2 D2 F2 U2 R2 B2 U' F2 U L2 D2 F' B' U R U R D2 L' B R" }
{ "F2 U2 B2 U2 R2 B U2 F' L2 U2 B2 D' B L' R F' U L R F2 U'" }
{ "B' F2 R' U F' R F' L' B2 U B2 R2 U B2 R2 D2 R2 D2 R2" }
{ "F U2 R2 F' R2 U2 D2 B' U2 R' B' D R' F' U' B2 R D' L' F" }
{ "U' B2 U' L2 U F2 D L2 R2 D2 F' L2 B2 D2 L F' D2 R D F' D" }
{ "R2 D2 L' U F' U' B U2 R D F2 D R2 U2 L2 D B2 F2 U B2" }
{ "L2 F2 L' B2 R' B2 U2 F2 R B2 D2 B L' F B2 R U B L' F B'" }
{ "U2 B2 R2 U F2 B2 L2 U' R2 U2 F2 L D' R F' B' R' U D' B'" }
{ "B L2 B D2 B2 D2 F2 D2 B' R2 B2 R' U' F2 B' R' F' L D' F" }
{ "B2 U' B2 U' B2 R2 D2 L2 B2 L2 F2 L' U2 F D2 R B D R F' U" }
{ "D2 F R2 U2 L2 R2 D2 B L2 D2 B U' D B' U' L2 R' D' L F B'" }
{ "R' L2 F U' R U F2 D U B' L2 B2 R2 B' U2 F' L2 B2 D2" }
{ "R U2 R U2 R D' L2 F' R L2 D2 L2 F' L2 F D2 B2 U2 L2 B" }
{ "B R D2 B2 R' F' D B U L' D' F2 R2 D B2 R2 D2 L2 D' U'" }
{ "U2 F2 D' R2 U B2 L2 F2 U2 R2 U' F' U' B' R' D2 L F L D' L2" }
{ "R' B2 L' D2 R B2 R' D2 L D2 B2 D L' R B L R2 U2 B R'" }
{ "U' B' D B2 U2 L' F' D R B R' D2 L2 B2 L' U2 B2 D2 R F2" }
{ "R2 U' L2 U F2 L2 D2 R2 D F2 U B' R U' F' D' B L2 R' D' R2" }
{ "D2 R2 D2 F2 R2 B2 D R2 F2 D' L2 B R D R' F' D F2 R U' B2" }
{ "U B2 L2 U2 F2 R2 U2 B2 U' L2 R' U2 L U' F U2 F' L F' U B'" }
{ "L2 U2 D2 F D2 F' D2 B L2 B D2 R' D2 L' D' B2 L2 F' B R2 D2" }
{ "F L2 F D2 L2 U2 R2 B U2 B D' B R B U' B2 D' L' D B2 R'" }
{ "U2 F D2 B L2 F' U2 L2 B2 L2 F L B R' D' B2 D2 F R' U F" }
{ "U2 B U2 B2 L2 R2 U2 B2 R2 F R2 D F R D' R' U' L' D' L2 B" }
{ "R' D' F2 R' B' L U F' U R D2 B2 D U2 R2 F2 U' B2 U' L2 D'" }
{ "R2 B2 D2 B2 D' R2 U2 B2 D2 B2 D F R' B2 D' L' B L B2 U' D" }
{ "L2 B' L2 B2 L2 U2 F2 B L2 B D2 R' F L' F D' L' R2 U' F D'" }
{ "B2 U2 R2 B2 D' L2 F2 D R2 U2 F L D B U2 L' U R' B L D'" }
{ "U2 L2 U' L2 D B2 L2 D B2 U' B U' L' D2 R2 U' L U2 R2 D" }
{ "U2 R2 D F2 B2 L2 U' R2 U' L2 D F' B2 U2 L' U2 D' L F' R F2" }
{ "L2 B2 D' R' D' L2 U' R2 B' D' R2 D' B2 R2 U B2 U' F2 U' R2" }
{ "D' L U' L2 F2 R' B R' L U B D2 B U2 B R2 U2 F R2 B2 D2" }
{ "U2 B' R2 U2 F2 U2 B D2 F R2 B' R' B' R2 U B' L B2 L B R'" }
{ "U2 F L F2 U' B2 L' D2 F U L2 U2 F U2 L2 B' R2 B F D2 F" }
{ "B2 L2 B2 D L2 D2 L2 F2 L2 U' F' R' D2 L D F2 L D' R2 B' D" }
{ "L' U2 L' U2 F2 R' U2 F2 R' D2 R F' L U' B' U2 D L U2 L" }
{ "D2 B2 R2 B R2 B' U2 B U2 D2 B U B2 U2 B' D2 R' U B L" }
{ "R2 U' F2 R2 D F2 R2 D' R2 U2 D' L' B2 U2 L' F' B' L' U2 D'" }
{ "D' U' B' D F L2 D' F' R L2 B D2 R2 L2 F' R2 D2 B2 F' U2" }
{ "D B2 U L2 R2 D' L2 U L2 R2 U' R' D' L R' B U' F' L2 U' B2" }
{ "D2 L2 R2 B2 U' R2 D F2 L2 B2 D B' R' D' F' D2 F2 L2 B2 D B'" }
{ "R B2 R2 F2 B2 R2 D2 F2 L' B2 U' F' R' B U2 F U F' L' B" }
{ "R2 B2 D' F2 U' R2 D2 L2 B2 L2 F2 L D2 R' U' L2 U F U R D'" }
{ "L2 D B2 U2 R2 U' R2 U B2 D' B R U B L F' L B' U B2 R" }
{ "D' L2 R2 F2 D2 L2 D' R2 F2 U2 D2 B' R2 F' L' F' B L U L' R'" }
{ "R' D' U2 B F2 D L B R' D R2 B2 D2 F' R2 D2 B R2 F R2 B" }
{ "D R' U2 R U' B' F' R D2 B R U2 L2 F2 R2 U B2 U B2 F2 U2" }
{ "R U2 R' L' U' B' F' U R' B D' R2 D2 U' R2 F2 U' B2 D2 F2 R2" }
{ "B2 D2 R U2 L' F2 D2 R U2 L U2 D' F' R B2 U2 B2 L' F' R' U'" }
{ "R D2 R B2 L2 D2 R' U2 F2 D2 R2 D' F R U L' B' L2 D2 B2 R2" }
{ "U2 F D2 F' R2 F2 D2 B' U2 D2 R2 D L' U2 R D L B U L2 R" }
{ "B2 R2 B2 D' F2 L2 U' B2 U F2 B' D' R U2 F' U2 F2 B U2 R U" }
{ "B2 D' L2 R2 D F2 U' L2 F2 B2 U L' B' R2 F' L' D' R B2 R2 D2" }
{ "L2 U2 D2 L F2 L' D2 B2 U2 B2 R B R' D2 L' D B D' F' U D'" }
{ "R D2 R U2 D2 L F2 R2 F2 R' F2 B' R' D2 R2 U L' B2 D B'" }
{ "R2 F2 B2 U D2 L2 D' F2 D2 R2 D' R F2 B D2 L2 U' R F' B2 D" }
{ "U' R2 U R2 B2 U' F2 B2 L2 B2 D' B' D2 L' R' U' D' L2 B' L2 D2" }
{ "U2 B2 L2 D L2 D R2 D' R2 F2 D' L D2 R' F' B' U' D2 L' F D2" }
{ "B D' F U R D' L' U' R D2 B' L2 D2 L2 F' R2 B2 R2 B L2" }
{ "R2 F2 D' L2 D2 B U' L D B2 L2 B2 F2 D2 R2 L' D2 L' U2" }
{ "L2 D' R2 U' B2 L2 R2 U2 R2 D R2 B' D R2 B L R' F' U' F2 L2" }
{ "L2 D2 L2 U' L2 R2 D B2 R' B' U2 L2 F R B' D F2 R2" }
{ "D' R2 U' B2 R2 D B2 L2 D B2 D2 L D' B' L2 U2 L B' U' R F'" }
{ "B' F' U' B' L F U R B D2 F2 D2 R2 L' D2 F2 L B2 R D2" }
{ "U2 B' U' B L B D' B2 D2 R' F2 U2 B2 F' R2 D2 F L2 D2 B D2" }
{ "F2 R2 B2 L' F2 B2 L2 F2 L' D2 L' F L2 D B U2 R' U2 F' U' B'" }
{ "R F' D' B' L U R B' F U B2 U2 R2 F R2 L2 B2 U2 B U2 B'" }
{ "D2 B2 U2 L2 F' B2 D2 B' R2 F' R2 D' R U2 D2 F' U R B' L'" }
{ "L2 U2 L R2 U2 B2 L2 R' B2 R' U B2 L' F' R' U' L R2 F U' D" }
{ "D2 B2 L2 B R2 F D2 B' U2 F L2 D' L F R2 B' R U L B U" }
{ "B2 R2 U B2 U R2 D B2 D2 B2 D B' D F' L2 U' D' L B R U'" }
{ "D2 R2 U R2 B2 R2 D B2 D L2 D2 R U2 F D F2 L2 F' U' L F'" }
{ "B' R2 D2 F B2 R2 B R2 B' L2 B U' B L D R F D2 B2 R2 U2" }
{ "L' U2 F2 B2 L B2 U2 B2 D2 L U2 B L' R2 F' U' R2 U2 D' L R" }
{ "D2 L2 U2 L F2 U2 F2 D2 B2 R' F2 B L' F D F2 B D2 R' F' U'" }
{ "B2 U' F2 U' D' L2 U' F2 D L2 B2 R' U2 D B D2 F' L F R D'" }
{ "R F2 U2 D2 R B2 D2 B2 L2 F2 B2 U B2 R F B D R F2 R'" }
{ "U2 R2 F' U2 D2 B D2 R2 F2 R2 F D B2 L' U D L' U' R2 U' D2" }
{ "R' U B2 D2 R D' U2 L D' R2 B' U2 F L2 F' U2 L2 F R2 B'" }
{ "R2 F' D2 L2 D2 L2 B' D2 F' U2 L2 D' L' B' R F U' F2 B U' R2" }
{ "F2 R2 B2 U2 B R2 U2 F U2 L2 B R U' D B L F L B2 U R" }
{ "U L2 F2 D F2 B2 R2 U B2 U F' L2 R' F2 U' F L2 B L' U2" }
{ "D' U B D' R' F L' D' F' R' F L2 B' R2 F' D2 B' L2 F D2 R2" }
{ "B2 D2 R' D2 F2 R2 B2 L B2 D2 R D R' D F' B U F2 L' D" }
{ "U' L2 F2 D F2 B2 D' F2 U' R2 F2 R' B' L2 D F' U' F2 R' D B'" }
{ "L2 D R2 F2 R2 F2 R2 D2 R2 U R F2 U2 D' F R U L2 U2 F D'" }
{ "F2 U2 R2 D' B2 D2 F2 U R2 F2 R B' D' R2 D' F2 U B' D' L' B2" }
{ "D2 F2 B2 L' F2 R' D2 L2 U2 D2 L D L F' U B L2 B R2 B' D" }
{ "R2 U L2 U2 R2 D2 F2 L2 D L2 R B' R2 F' U2 B' R F U' L2 F" }
{ "D U L' U2 F2 L' B L D F L2 B2 U L2 U2 L2 D' B2 F2 L2 U'" }
{ "L2 U L2 D' B2 D R2 U L2 R2 F2 B' L2 F2 D' F' R' D' F2 D B2" }
{ "B2 D B2 L2 U' R2 D' B2 D2 R2 U2 F' L' F D B' D' F' R' U B" }
{ "R2 D' F2 D2 L2 D' L2 F2 D R2 F' R2 B U2 L' B2 D' F' L' U2" }
{ "D' L2 B2 R2 U L2 U2 D B2 U' L2 B' L2 F D B L' U' B'" }
{ "B' D R D U2 L F2 U B2 F' U2 R B2 L U2 R2 B2 R' F2 D2 L'" }
{ "L2 R2 U2 B2 L2 D2 B2 U' F2 D R2 F' R B' D F' U' B2 U2 F U" }
{ "R2 D' R2 D' B2 D B2 U L2 D' B' D B' L' D' L2 F U' L' F'" }
{ "F R2 F2 L2 U2 F R2 U2 D2 F R2 D R' U' F U2 R B L2 U2 B" }
{ "U2 L2 D' R2 U' L2 U R2 B2 D R D B' R F2 R D R F' U'" }
{ "F' L2 D2 R2 B2 U2 R2 F' R2 U2 B2 R' B' L2 D F' L D2 L' U R'" }
{ "F' D2 R2 F2 R2 B R2 D2 R2 B2 R' D' R2 F' B' U F2 U2 F L2 R2" }
{ "R' B2 R' U2 L B2 R B2 U2 D2 R F D2 F' U' F' R D2 L U B'" }
{ "D' F2 R2 L2 U' L' F' D B' L' B' D2 B F2 D2 L2 B2 F U2 L2 D2" }
{ "U B2 D F2 U B2 U L2 D2 L2 D L R' U F' B U' F' L2 R F'" }
{ "D L2 D' F2 L2 F2 B2 U' F2 D B2 L B2 D' L2 R2 B' L' F U" }
{ "D' L2 R2 F2 U2 R2 D L2 F2 U R2 B R2 U2 D' L' B' U' F' U R'" }
{ "D' L2 F2 L2 R2 B2 D B2 R2 U' L2 B L2 F U2 L' U R D F' B'" }
{ "F2 D2 R' U2 D2 B2 R' B2 U2 L R2 D' L U' B L R D L U D2" }
{ "D2 F2 D B2 D' F2 R2 U2 R2 U' D' L' R' F' D2 B' U R' D' R' D'" }
{ "F' R2 L' B D' B' U F D R U2 R B2 D2 F2 L2 U2 L2 U2 L" }
{ "D' F2 L F' U F2 D R' U2 L B2 F2 L2 B2 D R2 U2 F2 R2 U R2" }
{ "R U2 R' D2 B2 R2 F2 L' B2 D2 R' B' R U' R2 F L' D R' U R" }
{ "R D2 L B2 R F2 L' B2 L B2 R U' L D F U B R' U F'" }
{ "F R D U R' F' R' B D' U L2 B' R2 F2 D2 F U2 B D2 F2 D2" }
{ "R2 D F2 R2 D F2 U' B2 L2 D2 B U' L R F' U R2 U D B2" }
{ "B2 U' R2 B2 U' B2 D2 F2 R2 D' B L2 R' F2 L' F R F2 B2" }
{ "B2 U2 L2 U2 R2 B R2 F' D2 B R2 U' F2 R2 D L R' B' L D2 B'" }
{ "D2 B' D2 B2 L2 F' L2 B' R2 D2 B L' U F' D L U B' U2 L2 D2" }
{ "B' U L D2 F' U2 R' D2 U' F2 R' L F2 D2 R' U2 R' U2 F2 D2" }
{ "D' B2 L2 B2 U2 F2 D' L2 R2 U' F2 R D' R' B' L2 F L' F2 R' U" }
{ "F2 U B2 U' L2 D R2 F2 U L2 D2 R U2 F' D R2 F' L F2 B U2" }
{ "U2 D2 L' B2 R2 U2 B2 L D2 B2 R' F L B U D L D L' R'" }
{ "L' D' L2 B' F' D L U' B2 U B2 L2 D2 L2 B2 L2 B' U2 B F2 R2" }
{ "R2 U2 D2 F' D2 L2 R2 B' R2 U2 B' D' R U R2 F2 R' U2 B R F" }
{ "F2 B2 U' L2 F2 U F2 D2 B2 D2 R2 F' D2 R' D' F2 B' R D' L' B" }
{ "R2 B' R2 U2 D2 R2 U2 D2 B U2 F' D' B' R2 F R F B' L' F2" }
{ "D2 B2 U2 D2 F' D2 B' L2 F' D2 F' U' F' B2 D' R D2 F' B' L" }
{ "F U2 D2 R2 B R2 U2 D2 B U2 B U L U2 D2 B R F' D' L U2" }
{ "U B2 U2 F2 R2 U F2 U F2 L2 U F' D' L' F' U' L' D' R U2 D'" }
{ "D B2 D2 B2 U B' F' L' D B D2 L2 U2 L' D2 L U2 R' D2 B2 U2" }
{ "B U L' F2 L2 D F L D' R' B2 U' F2 D' R2 D R2 U L2" }
{ "R2 U2 R2 U2 F2 L F2 D2 R U2 R' U' F R B2 U' B2 D F R B'" }
{ "R2 D B2 U2 F2 D F2 U F2 B' R F L2 R2 B L' B" }
{ "L2 U' F2 U L2 D2 F2 R2 F2 D B' L F D2 L' F2 R2 D L U" }
{ "L2 R2 U' L2 D' B2 L2 U' D2 B2 R B' L2 F D R2 D2 R U2 R' F'" }
{ "D' R2 D R2 D' B2 U2 B2 L2 D2 L2 B' D R B' U2 R' F D' B2 D'" }
{ "U' B2 D' L2 F2 B2 U2 B2 L2 D' F2 L' D2 F' B D2 L D' F B D" }
{ "L2 B2 U' L2 F2 L2 D' L2 D2 F2 B2 L' R2 B U L' D2 L F U B'" }
{ "B L2 F' U2 F D2 R2 B2 L2 R2 B2 R D2 B' R' F B' D' R' U' D2" }
{ "U2 F2 D2 L D2 L2 B2 D2 R' F B' U' L B U' B' D' B2 R'" }
{ "D R2 D2 F2 D' R2 B2 R2 F2 D' B2 R' F D2 R2 B L R' F' R' D'" }
{ "B L2 D2 R2 B' L2 D2 B U2 F' D R F' L2 B L' U L2 F B R" }
{ "D' F2 U F2 R2 D F2 B2 L2 F2 D' F R' B L D' F2 D B' U'" }
{ "L2 F2 D2 B2 U' R2 F2 U' F2 L2 D2 B L2 U L' D' L' F2 U' L' D" }
{ "R' F' U2 B' F2 R' F' L' U' R2 B L2 B2 U2 B2 F2 L2 D2 B R2" }
{ "D U2 L U2 F R' L U F R' F2 R2 D L2 U' L2 D R2 B2 F2 D2" }
{ "F2 B2 D2 F2 D2 R2 U' F2 L2 B2 D' B' R D F2 L2 B' L' R F D2" }
{ "U2 F' L' D' B' R' L' F R2 U B2 U2 R2 B' L2 B L2 F' U2 B2 D2" }
{ "D' R2 U' D' F2 L2 U L2 R2 U' R2 B L' U' F' U B2 R D L' D2" }
{ "F2 B2 D F2 U F2 R2 B2 L2 D R' D2 L R2 F D F' B D' R D2" }
{ "U2 R' F2 D2 R2 U2 R U2 D2 B2 L' F D' B' R2 F' L' D' F B R" }
{ "B2 U B2 L2 U R2 U' L2 B2 L2 B2 R U2 L' B' R2 B D2 L U' B2" }
{ "L2 U2 F2 B2 L2 D' F2 R2 B2 R2 D2 L D' L U D R' U2 F D2" }
{ "B L2 B2 D2 L2 B L2 B R2 U2 F' L' U F2 R' D' F' B R' U' D'" }
{ "R2 U' L2 R2 U' R2 U' F2 U' R2 F' L2 B' L' U' D F' B' L F' D" }
{ "U B2 D F2 U' B2 L2 B2 R2 U' B2 L R' U F2 L U' F' D' B" }
{ "U2 L2 B' U2 F D2 F' D2 B' R2 U2 R U B' L D2 F D' F B' L" }
{ "U B2 U F2 B2 D' F2 D2 L2 F2 U R B R D' L D2 B' R F L" }
{ "D R2 F2 B2 D2 R2 D F2 D R2 D2 B R F L' U B R F2 D2 R2" }
{ "L2 B2 R' F2 R' U2 R2 U2 B2 L2 R' D' R2 U L' B' D2 R' F2 U2 B'" }
{ "R2 F2 L2 U' B R U2 F D' B D2 L' D2 B2 F2 L' D2 L' B2 D2 U2" }
{ "F2 R F2 R2 B2 D2 F2 R U2 B2 L B' U' L' D R' F' L2 B' U" }
{ "F2 D2 R2 U B2 U' B2 L2 D R2 F' D R U' F' U2 L R B R'" }
{ "R U F2 R F D2 B' R L F2 R2 D' L2 F2 R2 L2 D2 U' R2 F2" }
{ "F2 L2 U2 R F2 D2 R' D2 R U2 R' U R' D F2 U2 F' B' L' B2 L2" }
{ "R2 F2 U' R2 U L2 U2 R2 B2 U F' B D R F R2 U2 R2 B2 D'" }
{ "R2 B2 D' B2 D L2 U' F2 D R2 U2 R' B D R D' R2 B D L' U'" }
{ "F' D2 B U2 L2 D2 F' R2 D2 B2 U2 D' F B R D' B2 L B U' F'" }
{ "D2 B D2 F R2 U2 D2 F2 B L2 F2 U D' B L' R B' U2 F U' F" }
{ "U2 B2 L D2 R U2 L U2 D2 F2 R F' U D L' D2 R2 F' R' F2 L2" }
{ "F2 L2 F2 U D2 L2 B2 D F2 R2 B2 R U L F' R' D' R' U2 D B'" }
{ "R B' L2 U' L B2 R' L2 U F D2 L2 D' B2 U' R2 B2 F2 D R2 U'" }
{ "D' R B L' D F' L' U L D R2 D2 L2 D U' R2 F2 U2 R2" }
{ "R2 D2 B2 U2 D B2 D2 B2 L2 F2 U' R' F D F' L2 U F2 B' U2 B'" }
{ "F2 L2 R2 U' R2 U2 R2 D' R2 D' L2 R' U' D R' B' D2 F R U D" }
{ "U2 B2 U B2 U F2 D' L2 U2 B2 L2 R' U D2 F D' L F' D' B' D'" }
{ "B2 U2 F2 D' B2 D2 R2 F2 B2 U F2 L' F' R' U2 F' U2 L B' U" }
{ "D2 R2 B2 L B2 R2 F2 U2 L2 R D2 F U B' R F' D2 L2 U' R2 U'" }
{ "F2 D2 R U2 L2 D2 B2 U2 L' F2 D2 B' R' D L F2 B' R2 F D' R2" }
{ "U' R2 B2 L2 F2 U2 L2 U D2 L2 R' B' U' F R2 B2 D' R F2 D2" }
{ "D2 R2 F R2 F' U R' U L F D2 R2 F' L2 F' D2 B' R2 L2" }
{ "U L2 R2 B2 R2 U' F2 D B2 D2 F2 L' U' F L2 F R' F L2 B U'" }
{ "F2 D B2 L2 D2 B2 L2 B2 U' R2 D2 R' F B L' R' B R2 B' U' D'" }
{ "B' R2 F U2 B2 D2 B R2 D2 B2 R' B2 L' B U B U F' L D'" }
{ "D B2 D2 B2 R2 U2 D' B2 D B2 L' D R' U' F U' L' D' R2 D2" }
{ "R2 L' B2 D' L' F R B2 D F R2 U2 F2 R2 U2 L2 F R2" }
{ "B2 D2 L2 U R2 D' F2 D' B2 U' D' R' F L U' B2 D' F2 L' B' D2" }
{ "U2 B2 D' B2 L2 F2 U F2 U' B2 U F' R D' F' L F B' D2 L F'" }
{ "F2 L2 D F2 B2 U' L2 U B2 D2 B2 L R' U' L2 B L R' F2 R' F" }
{ "F2 D2 F2 D2 F L2 B D2 B2 D2 L' F U' L2 F2 B U' L2 D2 R' U'" }
{ "R2 D2 F' L2 F2 B' U2 F' B2 R2 U2 R' B D R F' L' F2 B D'" }
{ "L2 U2 L D2 R2 B2 R' B2 U2 D L F L2 B' L R' D L R2" }
{ "F2 R' U L B2 R L2 D' B U R2 B' D2 R2 B L2 U2 B R2 B2 F'" }
{ "D2 F2 R F2 L D2 L' R2 U2 B2 R2 U F2 B U2 D L' U' B' D R" }
{ "R' U2 D2 B2 L2 R U2 L F2 L D L U' B D2 L D' B' D F' B'" }
{ "U B2 D L2 U F2 U L2 F2 U L2 F U' R' B' R2 F' L' R2 U R2" }
{ "L2 U2 F2 L2 U2 F' D2 R2 D L' B' U D2 R2 F D2 R F' R'" }
{ "U2 B2 L2 D F2 D2 B2 R2 F2 R2 B' L D' L2 B2 R F B' U' F2 R" }
{ "F2 L2 U' F2 B2 U' R2 U' B2 D2 R U L2 B' D' R2 D F2 U' R" }
{ "L2 U B2 D F2 D' F2 B2 U B2 D B R' B' R' D' L U' B L' D'" }
{ "B' U F R2 L F R' B2 R2 L' B D2 L2 U2 B' L2 D2 L2 B' U2" }
{ "L2 F R' D2 R F2 R' F D' B U2 R2 U2 B' L2 B D2 B2 F' D2" }
{ "B D2 B R2 B D2 L2 F2 L2 B L2 D R U2 F' D' B R' B' L' D'" }
{ "U2 F2 D R2 U2 D' R2 B2 L2 R2 U F D B2 L' R2 U' F U2 L B2" }
{ "D2 R2 B2 R2 D2 F2 R2 D L2 F2 D' L D L' B L2 U' F' L F2 D" }
{ "B2 R2 F2 B2 U2 B2 U' D2 L2 F2 D B' U L' B2 R F' D2 R2 D B2" }
{ "F U2 B R2 D2 F R2 D2 B L2 D R' F' D' B U B2 D2 R2 D'" }
{ "D' F2 U' F2 U F2 U' L2 U' L2 F2 B D2 R' F2 L' D B2 R2 F2 B'" }
{ "B2 U R2 D2 B2 D' F2 L2 D' F' U2 L B' L R' U2 F' D' L2" }
{ "F2 R2 F2 B2 U' R2 D2 R2 D B2 L2 F U F' B2 L2 D' F U2 L' F'" }
{ "D' F R' D' L F2 D' B' R2 D F' R2 F' R2 L2 U2 B D2 R2 F'" }
{ "F2 B2 L' F2 D2 R2 B2 L' F2 R2 D2 F U R B' L D2 F' D' R2 B" }
{ "B R U F' R2 B2 L U2 F' R D' F2 D U' B2 R2 B2 U' F2 L2 D2" }
{ "L2 B' D2 F R2 U2 R2 U2 F' D2 F2 D F R F B L2 U2 L' U' B'" }
{ "D2 R2 U B2 L2 B2 D' R2 U' R2 F2 R F2 L' U D' B' L U F" }
{ "U2 L F' R' B U' F2 R' B2 D U2 B2 D B2 L2 D B2 D2 R2" }
{ "B L2 D R' F' R2 D2 U2 R D' F2 L2 D' F2 U L2 D' B2 L2 F2" }
{ "F' L U' F' D' F D R' B R B2 F2 L' B2 L2 B2 R D2 R F2" }
{ "R2 U F2 D' B2 L2 U2 R2 U F2 D B' R D' F2 L2 B D2 B' D' R" }
{ "R2 F2 U2 L2 U F2 U F2 B2 U L B2 D B' U D2 R' F' L' F B" }
{ "F2 U2 L F2 D2 L F2 D2 F2 L R' F D' L2 R' B D2 B' D2 B" }
{ "U F2 L2 F2 R2 D L2 F2 D B2 U B R D F' U' B U2 L2 R U" }
{ "R2 F2 U D L2 D' B2 D' R2 B2 R2 B U R D2 B L F L' D2 R" }
{ "R2 F' U2 R2 B R2 U2 B D2 R2 U' B' L F2 R' D2 L' B L' F'" }
{ "L2 D2 B2 U' F2 L2 D' B2 D2 B2 R B D F D2 F2 L B2 D R'" }
{ "R2 U' L2 F2 U L2 U L2 D' L' B R F' L2 B2 D2 R' U' B" }
{ "B R L B2 U' R' F' R2 D' R D2 F D2 F' U2 F' L2 D2 F' R2 U2" }
{ "B D U' B L' F2 L2 D R' U B F L2 B R2 B' U2 B' R2 L2 B" }
{ "D2 L2 D L2 U L2 U2 R2 F2 L2 D2 B' R U2 R U L2 B R' F'" }
{ "D B2 U2 F2 R2 U B2 D' L2 U F2 L' F D B L' D B' U' R' U2" }
{ "F2 D' B2 R2 D R2 F2 L2 D R2 F2 R D F2 R F U' L F R' F'" }
{ "L2 D2 F' U2 D2 F2 B' D2 F2 L2 D2 L' F L U B' R D L2 B2 D" }
{ "R2 D2 L2 F' R2 U2 F' R2 F2 D2 B2 R D' B L' F' L B2 U R2 B" }
{ "B2 L' U' F2 U R B F D' U L2 U2 B' D2 U2 F' U2 F2 L2 B'" }
{ "F D' B' F2 R' U R2 L' U L2 U2 F2 R2 F' L2 D2 B L2 B' U2" }
{ "L2 U2 L F2 L R D2 L' B2 D2 R2 D F' L U' D F2 B' L R' F2" }
{ "F U2 D2 L2 B2 U2 B L2 U2 F L2 R F2 B' U' F U' R D' B" }
{ "B2 R2 D L2 D' R2 F2 B2 D B2 D F' B D' F2 B L2 R F L' F" }
{ "U R2 U' R2 U2 F2 L2 U' B2 D L2 R' D2 L B' R U' L' D' F' R" }
{ "B2 U L2 F2 U2 R2 F2 D B2 R2 U L' D' L' R' F B2 L' B' R' D'" }
{ "F' L2 D2 B2 D2 B D2 F' U2 L2 B L' R' U' R' D B2 R2 F' B2 D2" }
{ "U B2 L2 D2 R2 U R2 D R2 D B2 L' B L U2 B2 U2 R' U' F2 B" }
{ "R2 B2 L2 F2 U D L2 U B2 U R D' B2 R F D2 R' U F' U2" }
{ "R B2 R2 B' L' U' R' L2 F U' F U2 R2 U2 B2 L2 F D2 B L2 F2" }
{ "U2 F U2 D2 B R2 U2 B' D2 F' L' R D F R D2 L2 U R D" }
{ "B L2 F' D2 B U2 R2 U2 D2 B D2 R' B' L B' U F2 D' R2 B R2" }
{ "F' R F U' B' L' F' D' L' B2 F2 U2 B' D2 U2 R2 F' U2 L2 B'" }
{ "L' U2 D2 F2 B2 R F2 U2 R' U2 L U D2 L2 F' L' D B D L R'" }
{ "D' R2 D' F2 R2 B2 U2 D' R2 D' F2 R D2 B' L' R F' L2 F2 U L'" }
{ "F2 R2 D2 R2 B' L2 B' L2 B D2 F R U' B2 L R' D' F R' F' B" }
{ "R2 U B2 U D L2 R2 D' L2 U' L2 R' F' R' F' R2 U2 R U' L F'" }
{ "B R' L2 D' F2 L2 B L2 U R D2 R2 D2 B2 D B2 D F2 U F2 L2" }
{ "L2 D R2 U' F2 U2 R2 U' L2 D' F2 L' U B L R2 U' L R' U' D" }
{ "L2 B' U' B' U' B L' U2 R' D2 R2 U' B2 U R2 B2 U R2 B2 D" }
{ "B2 D' L2 D F2 L2 U' F2 D B2 L R2 D2 F' L2 B' L B2 R U2" }
{ "B2 U2 R2 D' B2 U R2 D L2 R2 D2 L F R2 U R' F2 U D2 B R" }
{ "D2 F2 R' F2 L R2 D2 R2 U' L' R' U' F' D B' U2 L' B" }
{ "F U2 D2 B' U2 L2 D2 B D2 L2 B' D' B R U B' U D F2 R' B" }
{ "U' R2 U' B2 D' F2 U F2 D B2 D B L' F' B' R D2 B2 U L2 B2" }
{ "F2 L2 B L2 B U2 R2 B' R2 F' B D' F' L U D F L' R' U B" }
{ "L2 U' D L2 F2 D' B2 R2 U R2 D2 L B2 U' L' R' B' R' F' L' R2" }
{ "F2 L2 D L2 R2 F2 U B2 D' B2 U B L U' F2 D' F2 D' R F' L" }
{ "L2 U L2 B2 R2 U F2 U D L2 R2 F' R' U2 L' F2 B R F D' L'" }
{ "R2 U D B2 R2 B2 R2 U' B2 U' B2 R' F2 R D B' U' R F' D2 B2" }
{ "U R2 U' B2 D2 R2 B2 U' B2 L2 F2 L' U2 F' R' F2 L2 F B' L" }
{ "D2 B2 U L2 D R2 F2 L2 D' B2 R2 B D' F' L U2 D' F2 L2 D2 R'" }
{ "U L2 R2 U L2 U' B2 D' R' F U2 R' D2 F' D2 L D2 R" }
{ "F2 L2 R2 D F2 U2 F2 B2 U' L2 B2 L D B R' F R F U' F D'" }
{ "R2 F' D2 F L' D' B F' D R' D2 B2 D B2 R2 U2 B2 R2 D L2 U'" }
{ "U2 R2 F' B2 U2 B U2 R2 F' B2 U F L2 U2 B' L D' F B' R D'" }
{ "F2 U B2 L2 B2 U2 B2 D B2 R2 D' F' R2 D2 L U2 F U2 B2 R B2" }
{ "B2 L2 U' L2 D' L2 R2 F2 D' B2 U F' R B' D' L' D L' D' R2 B2" }
{ "D2 B' D2 L2 D2 L2 B' U2 R2 B' D2 R U' F B D L F2 U' B L'" }
{ "B2 U R2 B' D B2 L2 U' R B' R' U2 L F2 R D2 U2 R2 U2 R' D2" }
{ "D2 U F' R B L U2 F' U R2 B2 L U2 L D2 L' F2 U2 R2 F2" }
{ "R2 U L2 R2 U' R2 U B2 R2 D' L2 R' F' D F2 B' R B D B' L'" }
{ "D2 L2 F R' B U' F' L' D L2 U2 B2 U2 F2 R' U2 R F2 R' F2" }
{ "D' R D2 L' D' B F' R D' F U' L2 B2 D' U2 B2 R2 B2 R2 D B2" }
{ "B' R2 B2 R2 B U2 F' U2 D2 L2 F' U R B2 U B2 L D' R' B' R" }
{ "L2 F2 L2 U' L2 D2 R2 U' F2 U' L2 B D F U2 D R B2 L' U' R'" }
{ "D2 F2 R2 U2 B2 L B2 R F2 D2 R2 F R' F2 R' U' B' L' U' D R2" }
{ "F2 D' R2 F2 U B2 U' R2 F2 D2 R2 B' U L2 F' D2 B2 L B' D' R2" }
{ "F D2 F U2 D2 B' R2 B2 D2 B' L2 R U L' B R D F' D' R'" }
{ "F2 L2 D2 B2 R D2 L' F2 R' B2 L D L' B' U' D2 B D L R B'" }
{ "L2 D R2 U2 L2 D L2 U' F2 B2 U F' U R F U B2 R' D B2 L2" }
{ "U2 L2 B2 D' L2 R2 F2 D R2 U' L2 B R' D2 F' B2 U' D' F B2 L2" }
{ "F' D2 F' R U F' D L2 B' R' F2 L U2 R2 B2 R F2 L U2 B2" }
{ "U' B2 U R2 U L2 R2 B2 U2 D' F2 B L' F L' R B2 D2 B' D" }
{ "L B' F' D U2 R B2 R2 F' L2 D' B2 L2 D B2 D' F2 D2 U'" }
{ "D R2 D2 R2 D R2 B2 U' L2 D' B L2 D' R F' U B2 L B L2 R'" }
{ "U2 D2 L U2 D2 L2 F2 D2 R2 B2 R' B' D L' R D2 B2 R B' D" }
{ "U2 B L2 R2 D2 F' L2 F2 B D2 R' D R' F R2 U' F' R' D L2" }
{ "R2 D2 R' U2 D2 R' F2 R F2 D B' D' F' U' L U2 F' L2" }
{ "F2 R F2 D2 B2 L' D2 R D2 R' B2 U L' R B D' L F U2 L B2" }
{ "F2 R2 F2 U' F2 L2 U' B2 U2 B2 R B' L' B2 L2 B' D2 L D' L" }
{ "R' F2 U' F L B' D' B2 F R F2 U' R2 B2 L2 B2 L2 U2 B2 U' L2" }
{ "R' U2 L D2 L' B2 R F2 D2 R' B2 U' R' D' L B R2 F' U2 D2 R'" }
{ "F2 L2 D2 F2 B2 L F2 R' U2 F2 D2 F L' B' U2 B' U' F B L2 R'" }
{ "F2 B2 U D F2 D R2 D B2 R2 D' R B L R' B2 D F R' B' D'" }
{ "F' R2 D2 B R2 U2 D2 B D2 L2 B' R B' D' L U' F' R F2 B2 U'" }
{ "D' L F R2 D U' R U' F R2 L2 U' R2 D' F2 R2 L2 U F2 D'" }
{ "R' D2 L U2 R' D2 R D2 B2 D2 R2 F U' B2 U2 R D' L' U2 D2" }
{ "L2 U2 F' U2 F B2 L2 U2 B' D2 B2 D F' U D2 R B' L R F' B" }
{ "R2 D' F' R2 B2 D L' B U2 F' R' U2 B2 R' D2 F2 U2 F2 U2 R' F2" }
{ "F2 D' L2 F2 D' R2 D' F2 U2 R2 F2 R D B' D2 F' D F' D' B2 D" }
{ "R2 B2 L2 D B2 R2 D2 B2 U2 R2 F' U L2 U F2 L' R B2 U B D2" }
{ "L2 F2 B2 D R2 U R2 D' R2 B2 U L F' U' F2 L2 U2 D2 F' D' B" }
{ "F2 L' B2 L R U2 R' D2 R F2 D2 F U R' F' D2 B U' B2 L" }
{ "L2 D2 L2 B2 U' R2 B2 U F2 U' B' L2 B L U D L' R B U2" }
{ "R' U F' D' F' U' B U F' L' U2 R2 D' L2 D' F2 R2 D2 F2 R2" }
{ "D U F' D2 L F' R L2 B R2 F2 L' B2 D2 L' D2 R F2 U2 L'" }
{ "B2 R2 U R2 D' R2 D2 L2 D2 B2 L2 B R' U' F L U2 B D' L U" }
{ "F2 U2 B' R2 B' R2 B L2 F L2 U2 L' U2 B U' D2 L2 D2 F' R D'" }
{ "U2 F2 L2 R2 F R2 D2 B2 R2 U2 B2 L' D R F' U' D2 L' D B' U'" }
{ "U2 F2 L D2 L' F2 R' B2 U2 L B2 D' B' U F U2 R B2 L2 U'" }
{ "F2 L2 D' B2 R2 D B2 R2 D F2 D L B L2 B2 R F L' R' F' D2" }
{ "F' L2 U2 F' U2 R2 B2 D2 F' L2 F2 D' R D B' L F' D F' L2 U'" }
{ "R2 B2 D F2 L2 R2 D R2 D B2 U2 L' F' D' F2 D' F2 U L2 F' D'" }
{ "U L B F L D F2 R' U L B D2 F' R2 U2 L2 F2 D2 F' L2 F2" }
{ "L2 R2 U' B2 D' R2 U' F2 B2 U' B2 L' R2 B' U2 B R F L' R' D'" }
{ "B' D2 F' D2 L2 F' R2 D2 R2 D2 F D' R' B L F' U2 B' L2 R2 U" }
{ "R2 B2 U F2 R2 U R2 F2 D2 F2 U2 L' F2 R2 D' R2 B U' B' U R'" }
{ "U2 R B' D L B2 D2 U' R D' R2 D L2 U B2 L2 D U B2 U" }
{ "R2 B' U2 F' B2 R2 F' L2 U2 B' U2 L' D F U B' D L2 F' D L'" }
{ "U2 R2 F2 U' L2 R2 U' R2 U F2 D' F' D2 L F R2 B L' U2 F' B2" }
{ "R D' B R2 B' U' F' L2 F' L U' L2 F2 U' R2 U2 L2 D R2 B2" }
{ "D' B2 D F2 U F2 R2 D2 B2 U F2 L B2 R' F' L2 F' D L2 B' L" }
{ "D R2 U R2 D' F2 U B2 D' L2 D2 R B D L R2 U2 L2 B' D2" }
{ "U2 L2 R2 D R2 U' R2 F2 U2 R2 U B D2 F D R2 U R' F' D2 B" }
{ "D2 F2 L D R' B' R' U L B2 D' F2 D' L2 U' L2 B2 U' B2 L2" }
{ "F2 U L2 U' B2 U R2 D B2 R2 U' F' R2 B L' D' L2 R2 U' R B" }
{ "L2 R2 U L2 U' F2 R2 U2 D' L2 F' U B2 R2 B U L D2 B2 D" }
{ "B2 D2 R2 U2 B2 D2 R' U2 D2 R2 F2 U R' D2 L2 D R' F' D2 L F" }
{ "U' B2 D L2 U L2 U2 F2 L2 B2 R' B L' F D' R F' B' U B" }
{ "B' R2 U2 L2 U2 B D2 L2 B2 L2 D' R F L' F B D' F D2" }
{ "U2 F' L2 U2 B2 L2 F2 L2 B' U' L R' D' L2 D' F L B'" }
{ "D2 L' B' D F R2 L2 D F' R L2 D B2 U2 B2 D2 F2 L2 B2 D B2" }
{ "U R2 B2 D2 F2 U F2 B2 L2 F2 D B L' R U F2 R2 U' F' B R'" }
{ "D R2 U2 R' F' L B U2 L2 U B2 R' F2 L' U2 R' D2 R U2 B2 R'" }
{ "B2 L2 U2 B2 D L2 R2 U2 B2 D' L F' R B L2 F L D' L2 D" }
{ "F2 U F2 U2 L' F R' B' U' B U2 F' R2 D2 B L2 U2 F2" }
{ "B' F R' L' D F' D2 B' R' F R2 F2 D2 B' R2 L2 F L2 U2" }
{ "B U2 L2 U2 F R2 B2 L2 B2 U2 B U F2 D R B2 D2 R2 D2 B R'" }
{ "D2 L2 D2 R D2 L' U2 B2 D2 B2 D F2 B' U2 L' U L' D L2 B' R'" }
{ "R2 B L2 B L2 F2 D2 L2 D2 B2 R2 U L' D' B' L' F L' R U" }
{ "F2 U2 D' L2 F2 D' L2 B2 U' D F2 B D' L R U' D R B D L2" }
{ "F' D2 F R2 D2 F L2 B D2 B' D2 R' F' R U R' F' B' R' B" }
{ "F R2 B2 D2 B' L2 R2 U2 F R2 D2 L F L' R B' L B' U R2" }
{ "F2 D R2 B2 R2 F2 D R2 D' L2 U2 L R F D L2 U' F' U2 L R2" }
{ "F2 D2 B U2 F L2 F2 B' U2 R2 D' L D2 F' B' L2 D' L' R D'" }
{ "F2 D2 F2 D R2 D L2 B2 D' B2 D2 B L' B' D' F' L2 D' L2 R2 D'" }
{ "D2 L2 D' R2 B2 U2 L2 D2 R2 D R' F R' U D' L' F B' D' R' F'" }
{ "B2 D R2 F2 B2 R2 D2 R2 U' F2 U B' L' D' B L F' R D2 B R" }
{ "L2 D2 R2 F2 U B2 U2 R2 B2 L2 U L' F B D' F2 D L U2 R U2" }
{ "D' F' R2 D' L' F2 D B' R' D' L2 B2 D2 B2 U R2 B2 R2 U B2" }
{ "U2 R2 F2 R2 U B2 R2 U' L2 R2 D2 R B2 D' B' U F2 D R2 U' L" }
{ "L' D U2 L' B U F' L B' R D R2 L2 D B2 D2 B2 U2 R2 U F2" }
{ "B R2 B R2 U2 F2 R2 B' U2 R2 B U' F R D F' R F2 U B' R'" }
{ "F2 D R2 F2 B2 U' D2 B2 U' R2 U' F' B' R F' B2 U D F2 R' F" }
{ "D2 L2 F2 R2 B2 R2 U2 B' U2 D2 F2 R' B D F U F2 D B' U'" }
{ "B2 R2 F2 D R2 F2 U' F2 D2 R2 B2 L' F2 L' F' L2 B2 D R B D2" }
{ "F2 B2 U' B2 L2 F2 L2 B2 R2 D R D' F' L' B U' L D2 B U R'" }
{ "R2 F2 R2 B L2 B U2 B2 L2 B' U2 D' B U' B2 L' U F' R' F2 U2" }
{ "F2 U2 B2 R2 D' B2 U' B2 R2 U R2 B' D2 R' D F U D2 R D2 B'" }
{ "U2 R D2 R2 U2 B2 L U2 L' F' L' B U' D2 L U R' D2" }
{ "D2 F2 U F2 R2 U B2 D' R2 D' F R D2 B' L' U F' D' B' U2 R" }
{ "F' U2 L2 R2 F2 U2 R2 U2 B U' F L B R' F' R' B' U R'" }
{ "F2 L2 D L2 D B2 U2 L2 D L' U2 F' L B R' U' L F' L2 R2" }
{ "L2 F2 U F2 D R2 D F2 B2 D' F' R' U2 B2 U B L' F L' R2" }
{ "D L2 D U' B' U R2 F' D L' B2 D2 F2 D2 F2 D2 R' B2 R2 B2" }
{ "U2 F2 L2 R2 D' R2 F2 R2 D2 B2 D B' U2 L R' D' B L2 D2 L' U" }
{ "D L2 U F U R' D B2 U R2 U2 L2 B R2 U2 R2 B R2 B2 L2" }
{ "D L2 D' R2 B2 R2 D F2 B2 U2 D' B L R' B' L' R2 F U F' D" }
{ "U2 R B L D R' D' F L D2 F2 D' R2 U' L2 B2 D' B2 D2 F2" }
{ "D L U' L2 B' F D2 R D' B D2 R F2 D2 L' U2 B2 L' B2 F2 L2" }
{ "U R2 U R2 D' R2 F2 U2 F2 U2 B2 L R' F U' B' U F2 L U" }
{ "U' R2 F2 R2 D' B2 U L2 F2 D F2 B L2 U L' U F D L U' F'" }
{ "L2 F2 R' D2 R F2 D2 R B2 R' D2 F' L2 U R' F U2 L D R2 F'" }
{ "F2 B2 R2 F2 U L2 D' B2 U F2 D F U2 R D' L U L' D' B2 L2" }
{ "L2 B2 L2 D2 R2 F' D2 B L2 F L2 U' L D B R U' L U' B2 R2" }
{ "U2 L2 D' B2 U' D2 F2 L2 F2 R2 U' F B L D' F' B R D2 L2 D'" }
{ "F' U2 F' U2 R2 D2 F2 U2 F2 B L2 U' F2 D' L2 D' L' F2 R' D" }
{ "R2 D' F2 D B2 D' L2 B2 L2 D' L R' B D' F' B2 U L' B L D2" }
{ "D2 F' R2 L' B' F' R U B2 F D U R2 U' L2 B2 R2 F2 D2 R2 F2" }
{ "R2 B2 R2 D' L2 R2 F2 R2 U' B2 D2 R U2 F2 R F D B' R U' D'" }
{ "D' B2 R2 U B2 D F2 U2 L2 F2 D2 R D' R2 B U2 R' F' L B' L" }
{ "U L2 R2 U L2 D2 F2 D' L2 F2 D2 B' U2 D2 B2 L D F B U D2" }
{ "L' D2 L2 B2 D2 B2 R2 D2 R' D2 R B U L D L' R' F U' L F" }
{ "F D2 L2 B R2 U2 F U2 F2 U2 B R B U2 B2 U L2 U L' F' D'" }
{ "F R D2 B' L' F R2 D2 R' D U2 L2 F2 L2 B U2 F' U2 F U2 B2" }
{ "F2 R B2 D2 B2 R' U2 R2 F2 L' U2 B' U' L2 D' L R F L' U'" }
{ "U2 F U2 F D2 R2 B' D2 L2 F2 U2 L' F2 B' R U' D' B2 L' D' B" }
{ "U2 F' R2 U2 B' R2 B' L2 D2 R2 F2 L B U2 D' F U' L B L2 B2" }
{ "U2 L2 B2 R2 U B2 U B2 R2 U F' U2 F D' L F R' B U L D2" }
{ "B F' L U' F2 U2 F' D' B R2 F2 D B2 U2 F2 D L2 B2 U' R2" }
{ "F L2 B2 U2 F' L2 B' R2 F D2 R2 D R' U F' U F' D2 F D' R2" }
{ "U' B2 R2 U F2 R2 F2 U2 R2 B2 D B L F' L D R' D2 L2 F' B2" }
{ "R2 U' R2 F2 U2 L2 D' B2 L2 D2 L2 R B D2 F2 U' D2 R' F B D'" }
{ "U' L2 U2 B2 D R2 F2 B2 D' B2 L' D2 F U L2 D' R F' L' F" }
{ "D2 R2 D2 F2 U2 D2 L U2 L F2 U' R' D' L2 B R F2 D2 F' R" }
{ "D2 R2 D F2 D' R2 B2 D' L2 F2 R' F L' D2 B' U' F' R' B2 D'" }
{ "D2 R D2 B' F' R' F D2 B U2 F2 U B2 F2 D R2 D F2 R2 B2" }
{ "U2 B' U2 R2 B U2 R2 F R2 F D2 L' U' F' R2 D' L F R' B2 D'" }
{ "U2 B2 L2 U' L2 F2 D2 F2 U' R2 F2 L' F2 D B' R U' R2 D R2" }
{ "U2 R2 B U2 F2 R2 B R2 D2 B' L2 U R' F' D' B' U F' D' F2 U" }
{ "L2 B L2 F2 U2 F L2 D2 B D2 B R' D2 R2 U' D' L2 R F' B2 D'" }
{ "R2 D2 F2 U2 D B2 L2 R2 U R2 D2 L' D F2 U2 R U D' B D" }
{ "U2 D' F2 U B2 D' F2 U R2 B2 L2 R' U2 F' D' L D' B' D2 B' U'" }
{ "B2 D2 B2 L2 B2 R2 D' L2 U' F2 D R' F2 L D' L2 D2 F L U2" }
{ "D' R2 B2 U' F2 L2 D2 L2 B2 U F2 L U' F' B2 L' B L2 U F2 D'" }
{ "D2 F' D2 B' D2 B R2 F' D2 R2 U2 D' L' U' B' R D' F' L' D2 R2" }
{ "R B2 L' D2 L' F2 L' F2 R D2 L' U F' L B R' U B2 L2 R2 D'" }
{ "U2 L2 F R2 B' R2 U2 R2 B2 D2 F U F R D F U2 D F' U' B" }
{ "F2 L2 U F2 B2 D F2 D2 F2 L2 U' R' F' R' B' U L' D L2 R F" }
{ "U' L2 B2 L2 U B2 U' D2 B2 D' R2 F' B' L' D' B' U' D R' U2 B" }
{ "D2 L2 F U2 F' U2 F2 L2 U2 B2 L2 D L' D' B' R D' R B2 L R2" }
{ "B2 D2 B' D2 R2 D2 F R2 B U2 L2 U' D2 L B2 D' B' D' R' D F'" }
{ "F2 D2 F2 L2 F2 L2 D' R2 U B2 U2 L B R' B L' B R' U2 F2 R'" }
{ "R' B2 R' B2 D2 R2 U2 L D2 F2 R' B D' F U2 L' R F D' R" }
{ "D F2 L2 B2 U2 R2 U' F2 U2 B2 U' L' B' R B' L' F B L D R'" }
{ "R2 U2 R2 D' L2 R2 U R2 F2 D L' F' R B' U' F' R F D R2 U2" }
{ "U' B2 L2 U2 B2 D' R2 F2 U' L2 U R B' L D F2 B' L B2 L R" }
{ "U' R F2 L D' B R' U' F2 L F' U2 L2 B' L2 B L2 F L2 D2 B" }
{ "U2 R U2 F2 L' U2 R' B2 R' B2 R2 F' R2 U F2 R D' B L D2 R" }
{ "L2 B L2 D2 L2 B' D2 F U2 D2 B' R' B' U D B2 R F' D L R'" }
{ "U2 L2 D' R2 F2 R2 B2 U' R2 D B' L U' L U F U B2 U L" }
{ "L2 U L' F' L2 D2 F' U' L' B2 R2 B2 R2 U' L2 U2 R2 D R2 D'" }
{ "F2 D2 L' U2 F' D' L U2 F' U' L' D2 L B2 R' F2 L F2 U2 L' D2" }
{ "L2 B2 U L2 D' F2 D' F2 D2 R2 D F D2 L F' R2 D' B2 U L' D'" }
{ "D2 F2 U B2 D2 B2 L2 F2 B2 U' B2 R' F B L' B2 L2 R' D2 L' D'" }
{ "D2 R2 U2 L2 B2 L2 B2 U' B2 R2 U' R' F2 B2 U2 B' U D' L B' R'" }
{ "D2 B D2 U2 L2 B U R2 L' U2 R2 F R2 B' D2 F2 L2 U2 L2 F" }
{ "L2 R2 F2 D F2 B2 D' R2 U D2 F' U' D F2 R B D L2 F' L' U2" }
{ "U B2 D2 B2 L2 D' B2 D' F2 L2 U2 B L D2 B R' F2 R2 D2 B D2" }
{ "F U2 B D2 F U2 D2 L2 B' U2 F2 L' B' U B' R2 F2 R' U R' F2" }
{ "L' D L F R2 L2 U' F L' U2 B2 L2 B' U2 F D2 F' U2 R2 F2" }
{ "F2 B2 L2 U' D2 F2 D B2 L2 F2 U' R' B' U L U2 F' L2 D L2 B" }
{ "F R2 D2 F2 R2 U2 F' B' R2 D2 L2 R U' L B' D2 F' U2 L' F2" }
{ "R L2 F' D' R B' U2 L' B' D' B2 D2 R2 U F2 L2 U' R2 B2 D2" }
{ "L F2 R D2 L2 D2 R F2 R F2 R' U' D B' U2 L D F R2 B' U2" }
{ "R' B2 R2 F' R2 F' U' B F L B2 F2 L2 U2 F2 L2 B2 R2 D' B2 D'" }
{ "D2 L2 U D2 R2 D2 L2 F2 D B2 L2 R B U B2 U' R U2 L B L2" }
{ "B' D2 F' R2 D2 R2 B R2 D2 F2 B R' D F' D2 R U2 R B' U' L2" }
{ "R2 U L2 D2 F2 U' B2 U' B2 D2 F2 B L R' D B2 U2 L2 B D R2" }
{ "R L2 B U F' L' B' F L2 D R D2 B2 U2 R' D2 R2 L' U2 B2 F2" }
{ "F2 D2 B2 R2 U2 D F2 L2 R2 D' F2 B U2 B R' D' R' F2 L D2 R2" }
{ "L2 F2 R2 D2 L' F2 B2 D2 R' B2 U R B' U' D R' D' L' D'" }
{ "F R2 B2 L2 U2 B L2 R2 F R2 F' R' U D L B U R U' D2 R2" }
{ "D2 R2 D2 L2 F2 L2 B2 D2 B' D2 B' D' B U2 R2 U2 R' B' D F R'" }
{ "L2 R2 U2 R2 B' L2 F D2 F2 B2 D2 R D2 L F2 U F B2 U' R2" }
{ "L U F' D' B D R D L2 D' F' R2 B' U2 R2 D2 B L2 F U2 B'" }
{ "D2 F L2 R2 B2 U2 F' R2 F2 R2 U2 L' U' D R U' B' L' U' F' L'" }
{ "R' B2 F U' L' D F' U2 B D U2 F2 L2 F2 R L2 D2 L' D2 U2 B2" }
{ "D2 B2 L' U2 L2 U2 F2 B2 L D2 B2 U F B U F2 D2 L' D' R2" }
{ "B R B2 U' L U' R' D' B' D2 R2 D2 B2 R2 B2 R2 F2 D2 F2 D'" }
{ "U2 L2 R2 F2 R2 U F2 U' D' R2 B' U R U2 R2 D' F2 B' D' B" }
{ "U B L2 D U2 L' B R F U R2 D2 L' B2 L D2 B2 F2 R B2 F2" }
{ "F2 D2 R2 F L2 D2 F' D2 B' L2 U2 D' F' L' D F D R' D F B2" }
{ "F2 L2 U' R2 D F2 U B2 L2 D B2 R' B U D2 L B' R2 U L R2" }
{ "D2 L' U' F2 R2 F R' U B F D2 F2 D2 U' L2 B2 U' F2 D B2 R2" }
{ "L2 D2 U B2 F' L' B L U F' U2 R2 U2 R' B2 U2 L' D2 R' U2 F2" }
{ "U L2 U' L2 U L2 F2 D F2 D2 R2 B' D F' L B2 R2 U L F' R'" }
{ "U L2 U2 F2 L2 U2 R2 D2 F2 D' L' U2 L2 U' R B' U' F' D L2 R'" }
{ "L2 F B2 R2 B' U2 B' L2 R2 F2 R' U2 L B U2 L' D' F2 B' R' B2" }
{ "R L F' R2 L B F' L D B D2 U' R2 B2 L2 B2 U F2 U' R2 D" }
{ "D2 B2 R2 D2 B2 U' B2 U' B2 L2 D2 R F' B L' B2 U B' U' L2 R'" }
{ "F' L2 F2 R' D' F R2 D2 F' R' D2 U2 L' F2 L B2 U2 L U2 R'" }
{ "B2 D2 R D2 L2 U2 L R2 F2 U2 D2 B' U L B' L B D' F2 L B" }
{ "D B' R B2 D2 F' R2 B D R D2 F2 D U' F2 D' R2 L2 D F2" }
{ "L2 F2 R2 B2 U2 L2 D' R2 B2 U2 B' L B U R2 F U' R' B2 U2 D" }
{ "R2 B2 L U2 L' U2 B2 U2 B2 L' R2 D' L F' D2 R' B L' B' U L" }
{ "D' L2 U F2 D' B2 R2 U B2 U' D2 L' U2 R' F D2 B' L' R B" }
{ "B' L2 U2 F2 B' U2 F' D2 L2 U L2 D' F U2 L R2 F R F" }
{ "L R2 B2 R D2 L' U2 R2 B2 R' B2 U D F R' B' U2 D2 L D R" }
{ "U F2 R2 D L' D' B' F' D' R D2 R2 D' U' F2 U' R2 F2 R2 D2" }
{ "L2 B2 D2 L2 U2 D2 F' U2 B' U2 D2 R' U B2 D' R' F' U2 F2 R B'" }
{ "B' U2 R' D' F2 R' D' L' B' R' U2 R2 U B2 U F2 U' L2 D' B2 D'" }
{ "F2 L2 U' B2 D' F2 U F2 D' F2 D' F' L U D2 R F2 B' U D2 L2" }
{ "B D' L F2 R' F R' D' F' R' B2 F2 D' F2 R2 F2 D U F2 L2 D'" }
{ "R2 U' L2 D2 F2 D' B2 D L2 D L D' F' R B' L' D2 F B2 D2" }
{ "D2 B2 U B2 R2 U L2 F2 R2 B2 R2 B L' U F2 U R' D2 L' F' U'" }
{ "L B' D' F' R' U B D B' L2 U' L2 U2 R2 L2 F2 D' B2 D' R2" }
{ "U2 B2 R2 B U2 L2 B L2 D2 F R' F L D' L D2 F2 B L F" }
{ "D B2 L2 D' B2 U F2 U' R2 B2 D2 L' R' B D F D2 R F B2 D2" }
{ "L2 U2 L2 R F2 B2 D2 R F2 L2 R' B' U2 L B U D F' D2 F2" }
{ "U' R D2 B F' D R2 L' B2 R D2 R2 D R2 U2 R2 B2 L2 D' L2 D'" }
{ "U' B2 D L2 B2 D B2 D2 L2 B2 R2 B R D F U B L' U D2 L2" }
{ "B2 U' B2 D' F2 D2 R2 U R2 U F2 R F2 B R' F2 U' L R2 U2 D'" }
{ "D2 B2 R2 F2 D L2 D F2 U L2 D L D B' R F' R' F' R' D2 F2" }
{ "L2 R2 D B2 U' F2 D B2 D2 R2 D' L U2 L B' L' F U' L2 F R'" }
{ "B' L2 F2 R2 D2 B' R2 F L2 B' U2 L R B2 U F U' R' U R F" }
{ "B' R' L' B' U R2 B' D' B L2 D R2 L2 D2 F2 U L2 U'" }
{ "U' R2 F2 U' B2 U D B2 L2 U2 L F' U B D B2 U L D2 R2" }
{ "U2 L2 D2 F2 R2 F' R2 F L2 F' B U R' F' B2 L' D B' U' L2 U2" }
{ "L2 R2 B' U2 F U2 R2 F2 D2 B2 R' B U B U D' L' F2 U' F'" }
{ "R2 F' L2 U2 L2 F2 L2 B R2 U2 R U2 F U2 L' D' F U' B2 D' R2" }
{ "D2 L2 D2 L2 R2 B2 R2 F R2 U2 B2 D' L' F2 U B L' D2 L' D' R'" }
{ "D' F2 R2 D' L2 F2 D2 L2 B2 U2 R D B' U2 F2 R B2 U' R F" }
{ "F2 U B2 R2 F L F2 L' D' F2 R' B2 D2 R' U2 R' U2 R" }
{ "D L U R' B2 F' D B L' D F2 L2 B2 R2 D2 B L2 U2 B L2 B2" }
{ "R2 F B2 R2 D2 B' D2 F' U2 B' D2 L D R U' L' R U B' R' B" }
{ "F2 R2 B2 R2 B' U2 B D2 R2 F U2 L B' L D' L U F U' R F2" }
{ "B' U' B2 F D' F L2 F' R B2 F2 L2 D2 B' D2 R2 L2 B R2 B2" }
{ "F2 L2 U' B2 U2 L2 F2 R2 D' L2 R' F R B L' F' B2 D' F L2 R" }
{ "D2 F' U2 R2 D2 F' L2 F2 B' R2 U2 R' B' U D' B' L2 F' L2 D L'" }
{ "L F L2 U' F2 L B' D U F L2 D2 F D2 B' R2 D2 B D2 B'" }
{ "R B2 D U' B' L D B' U B' U F2 U2 F2 R2 F2 D R2 L2 F2 U'" }
{ "B2 R2 U2 L U2 D2 L R2 B2 R D R D F' B' R D L B'" }
{ "L2 U' B2 U' F2 R2 U2 L2 U' F2 D' R' F R2 B2 R2 D' L' F2 R2" }
{ "F2 D2 F L2 U2 B2 U2 B' D2 B2 L2 U' R' B2 L U F2 U2 D' F' D" }
{ "F2 U2 L2 D R2 F2 R2 U D L2 B' D2 L' D F D2 F' D F U2" }
{ "L' B U R' D' B2 R B L' U R2 U' B2 U' F2 U2 B2 D' L2 F2" }
{ "U F' L2 D' L2 D2 R L' D' R2 B' D2 F' R2 D2 L2 D2 F R2 B'" }
{ "R B2 U2 R B R' B' D U' L' B' R2 D2 U2 B D2 F2 R2 B' U2 B'" }
{ "D2 B2 L2 D' B2 U F2 U2 D' L2 R2 F' U L2 R' F' L2 B2 L B' R2" }
{ "D U2 B U' L' B L F' R' B L2 B2 L2 D L2 F2 D2 L2 U R2 D" }
{ "F L2 D' U2 L U' B' R' D L' U R2 B2 U L2 D2 R2 L2 B2 D2" }
{ "F R' U F D' B F2 L2 U' L2 B U2 B2 D2 L2 B F2 L2 B2 D2" }
{ "L2 D2 B' U2 F2 D2 L2 B' U2 L2 R2 U' B' L U' R' F' B U2 B D" }
{ "U F2 U' R2 U L2 D L2 B2 D2 L' D' R' F' L B' L' B' R' D'" }
{ "R L2 D U2 B' F2 R' B2 U' F D2 B2 R2 U2 B2 R F2 L B2 L F2" }
{ "L B' L' U2 B D R B U B' F2 R2 D2 B2 F2 D R2 D2 L2 D' B2" }
{ "B' D' F' R U L' F' R2 D B2 R2 B2 D2 F U2 B F' D2 U2 F2" }
{ "R F2 B2 U2 R' B2 U2 B2 U2 L R D' R' F' U R' B R2 D' L B" }
{ "R' B2 D F' L' D' F R B' D' L2 D' R2 B2 R2 D2 L2 U L2 D" }
{ "R B F2 D R' D2 B2 R D' R F2 R' U2 B2 R' D2 R B2 L B2" }
{ "D2 R B2 L D2 F2 U2 R' F2 B2 D F U2 R B L' D B' L B'" }
{ "L U2 B2 L' D2 R' F2 R U2 R' D2 B R2 U2 L2 D' R D' L R B" }
{ "R2 U L2 R2 U B2 U D2 B2 L2 F2 B D' B' L' F' R' U2 D' R B2" }
{ "B D' U R' L U' R D' R F2 R2 U2 B' R2 L2 F2 D2 L2 U2 R2" }
{ "U F2 L' B U2 R2 U R2 F' L' F R2 D2 L2 F2 L2 B U2 F D2 L2" }
{ "R L' B D' U R2 L B2 L' F' R2 B2 L B2 D2 R2 B2 R' U2 L2 D2" }
{ "R2 F L2 D2 B2 D2 F2 B R2 U2 B2 L' F' B2 U R' U' B D F2 U2" }
{ "D L2 B' U2 L2 D' R2 L B F2 R2 D2 L' B2 F2 D2 R' D2 F2 U2" }
{ "B2 U L2 B2 D' F2 D2 L2 F2 U' D2 F' L2 D2 L F' U2 L' D' B' R'" }
{ "L' D B L2 U' R' F D2 L D' B2 F' R2 B' L2 F U2 R2 B L2 U2" }
{ "D2 L2 R2 D2 F B2 D2 R2 B2 L2 R2 U L' F' D' L2 B2 R' U2 R2" }
{ "F2 U R2 U' R2 D2 B2 L2 B2 U B D2 L B2 L2 U D' L' B R2 U'" }
{ "B2 U2 L' D2 R D2 L' U2 R B2 R' U D F' R B' L R2 F R'" }
{ "R' D2 L F2 L U2 R' B2 R F2 R2 F L' F B' D2 L2 R D' L R'" }
{ "U2 L2 F2 D2 R2 U B2 D2 R2 D' L F B' D' B' R B' L D' F" }
{ "R2 F2 U D2 R2 F2 B2 R2 F2 U' D2 L' B2 U' B U F' L D2 L R'" }
{ "R2 D2 R2 B2 R2 U L2 D B2 L2 U' B' R2 U B2 D' R' F R2 U2 R2" }
{ "L' U2 L B2 L F2 L' F2 R D2 L' B R' D F B U2 R B U2" }
{ "U2 L2 D2 B' U2 D2 L2 F B2 R2 B2 R' B2 U' F R U D' L' U2 D2" }
{ "D2 F R2 F R2 B' U2 L2 B D2 B' L' R F' D B' L B2 U' F'" }
{ "R' U' F D F2 R' F' U R B F' U2 F' R2 L2 B2 R2 L2 U2 L2" }
{ "F2 U' L2 D' R2 D B2 R2 U' B2 U' F' R2 U D2 F' R' B' U L U2" }
{ "U' F2 D' R2 F2 L2 D L2 R2 U2 R' F D2 B2 R F' U' R2 U D2" }
{ "R2 B2 R2 B2 U2 F2 U F2 U' L2 D2 R B L U L' F U2 L' F L2" }
{ "F2 L B2 U2 R U2 D2 F2 U2 L2 F2 D' B D2 L U' F' U' R D F" }
{ "R2 U' F2 B2 U' L2 D' F2 U' F2 D B' R' B' D2 F B2 L' R' B D2" }
{ "F2 B2 R2 F2 U2 R' B2 R' U2 R' D' F' U' B D' F2 U B U B R" }
{ "U2 R2 F2 U' R2 U F2 D R2 F2 U' B' R2 F' D B' U L2 B R D" }
{ "B2 D' F2 L2 U' L2 U' F2 B2 R2 D' B' L' F' B' U' D2 F' D' L B" }
{ "F' U2 B U2 R2 F R2 U2 F2 L2 U2 R' U' R' F R' F2 B' L' U2 F" }
{ "R2 D2 F2 L2 R F2 D2 R F2 D2 F L B D2 L2 U R2 D' L'" }
{ "D2 B' U2 F R2 D2 F2 U2 B U2 B2 R D' R' F2 L' B' U2 D' R2 B2" }
{ "L2 D2 R D' F' L2 D B U' R F2 L2 D2 L2 U B2 R2 D B2 U2 B2" }
{ "L2 B2 U' B2 D2 R2 U B2 U R2 D2 B' U2 F2 L B2 R' U R'" }
{ "D2 L2 F2 L2 U L2 B2 U B2 R2 U' R' B U L' D' F' U2 R' F U" }
{ "L2 B2 U2 D2 R2 D2 B2 D2 F' R2 B' D L' B' U' D' F L B' L'" }
{ "B U F R L2 U2 F D2 R D U2 R2 F2 U B2 R2 D B2 L2 D2" }
{ "R2 B R2 D2 B R2 F B2 R2 F' R2 U R' B2 L' F B2 R2 F2 U' R2" }
{ "B2 U2 D2 L' F2 L' U2 B2 R' D2 R' F' D' F B L U F B2 L2" }
{ "U L2 U B2 L2 U D2 F2 U2 D2 B' L B2 L2 F2 R U L2 F' D2 R" }
{ "L2 D B2 R2 F2 B2 R2 D' L2 F2 R' F U2 B' U B L U F D F'" }
{ "L2 U2 B2 D' R2 D' L2 F2 D' R2 F2 B' R' F L B' R2 F2 R' U2 D'" }
{ "F2 U' F2 R2 U R2 U' D' F2 D L2 B' R' U F' R D2 L D F'" }
{ "L' U2 R U B' L D2 B2 L F U' L2 F2 U R2 B2 F2 D' B2 D2 R2" }
{ "R' F U' B' R2 U R L2 F2 U F2 U2 B2 F2 L' U2 R U2 F2 R2" }
{ "D2 B' R2 D2 B L2 U2 R2 U2 F U2 L F2 R U F' R' D L' U' B'" }
{ "F' U2 F2 D2 F L2 F L2 B' R2 D2 L' U R' B2 U2 D F D2 F2 B" }
{ "F R2 D2 R2 B U2 L2 B' D2 B' L U' D' B D F2 B' D2 L U" }
{ "D' F2 D2 B2 L2 U' B2 R2 U' D' L' U' R F' B D F2 L' B2 U2 R'" }
{ "F2 U2 F2 U' D2 R2 D F2 U B2 R2 F' R' U B R U2 R' B' U" }
{ "D2 R2 U2 B2 D2 F2 B L2 B R2 D2 L' B' R' F' L2 U D' F D R2" }
{ "L2 D' B2 L2 U' L2 U2 L2 F2 U L2 R' F2 L2 F D' B' D2 L' D2 R'" }
{ "R2 D B2 U L2 R2 U' L2 D L2 D R U2 L F' B R' U' F B' U2" }
{ "B U2 B D2 F' D2 B' L2 B' U2 F' U' L' R D' F' L2 U' F U2 F'" }
{ "D U' R F2 D B2 R' B D U' L2 U2 B U2 B2 L2 F2 L2 F' D2" }
{ "L2 R2 B R2 F2 B' D2 F U2 D2 F U L U' R' F R' D L U' F" }
{ "F' L2 R2 D2 F' U2 B' U2 L2 R2 B2 D L B L' F2 D2 L F R' F" }
{ "F2 R2 B2 D' L2 U B2 L2 U B2 D2 R' F' B' U L' B L2 B D' F" }
{ "D2 L F2 R B2 U2 R B2 R' B2 D2 B' L' D' R B2 L U2 B' D2" }
{ "R2 B' D2 R2 B' L2 B2 U2 R2 D2 L' F' U D2 R F' D' L' F2 D' B" }
{ "F' U2 F2 U2 B R2 F B2 R2 U' F L' U' L2 D L2 R' U D2" }
{ "D L D2 B' F' U2 R D2 U' F D' B2 F2 D' R2 F2 R2 B2 D2 B2 U'" }
{ "L2 B2 D' F2 B2 D R2 D L2 U D' F' L D2 L R B' D R' D' B2" }
{ "B2 U2 D2 L U2 L2 B2 R B2 D2 B2 U R2 D' B' R U2 B2 R' U'" }
{ "F2 R' F2 L' F2 L B2 R2 F2 D2 R' U' F B' D B' U2 R B L2" }
{ "D U2 B' L2 D L2 F U' R L F2 D2 B2 R2 D' U2 L2 D' R2" }
{ "L2 R2 D' L2 D2 B2 U2 B2 D2 L2 U2 B L2 U B2 L' F' R D' R U'" }
{ "L2 B2 D2 L2 U2 F' B' R2 B L2 B' D L' F2 D' F B2 R' B D2" }
{ "F L2 F' R2 F2 U2 B2 U2 F' R2 B' D L U' L2 R' F R' B2 L B" }
{ "U2 L' B L' D' R U R2 F U' F2 R2 L U2 B2 R' U2 L D2 F2 L2" }
{ "L F2 R2 D2 L' U2 R2 U2 R' B2 R F' L' D L2 B U2 F L' U'" }
{ "B R2 F' L2 B' U2 B' R2 D2 R2 B R D2 F' B2 L' U B' L D2 B'" }
{ "L2 B2 R2 F2 D F2 L2 B2 D F2 D L U L2 U2 F2 B' U2 D F'" }
{ "R2 F' U2 F2 B L2 B' D2 B2 U D F D' R D L B D L F'" }
{ "B2 U2 L2 D L2 U' R2 D' F2 L U R' D F' D B' U D' L' B2" }
{ "D F2 U B2 L2 F2 U R2 D R2 B L' U' L2 F' D2 L2 D' R2 F" }
{ "U2 B L2 B2 R' B2 L' U' R U2 F2 L2 D2 L2 F R2 B2 F' R2" }
{ "R2 B2 D2 L2 D B2 L2 D R2 D' F2 L F2 R' F D' R' F2 B D R2" }
{ "L2 U2 R2 D2 B2 U L2 R2 B2 L2 U' F U' L' U' B R' F R U' F" }
{ "D2 L2 B U' R F L2 B' U2 L B2 F2 D U R2 L2 F2 L2 U L2 D" }
{ "B2 D' B2 U' R2 B2 D' R2 U' F2 B2 R F2 U F B' L' D B R2 B" }
{ "F2 D2 L2 D L2 F2 D' R2 U2 R2 B2 L B' L R2 D F D R' U'" }
{ "D R2 F2 R2 D2 L2 B2 U' B2 U B D' R F' D2 F' L2 R U2 F D'" }
{ "B2 U2 D' L2 U' F2 L2 D' R2 U R D B L F U' D2 B' D B'" }
{ "F2 L2 B2 L2 U2 D' R2 F2 U F2 L2 F' B D' F' L2 R' U R2 B2 L'" }
{ "F2 B2 U' F2 L2 B2 L2 U2 B2 U2 R2 F' D B2 R2 B' U L R2 U" }
{ "L2 B2 D L2 D' F2 U D2 B2 R2 D2 L' R' F' U' B' L' B R' U' R2" }
{ "D B U' R L' F R F' U B2 L2 D2 U2 F2 R D2 F2 R U2 R2" }
{ "D2 R2 B2 U2 F' D2 B L2 B2 R2 U2 L' U2 F' L2 R' D' L2 F2 U B'" }
{ "R2 U2 B R2 F U2 L2 U2 B R2 D2 R' U' L2 U2 B R D R F2 U'" }
{ "R2 B2 U2 D F2 U L2 D' B2 R2 D2 F D' B' L' U2 F D B D2" }
{ "D' F2 L2 D' L2 U F2 R2 U2 R2 U2 F' D' L' R U2 F D R2 F' D'" }
{ "F2 B2 L U2 F2 L' R2 B2 R2 F2 R' D B L B' L' F' U L R" }
{ "U F2 U2 L2 D R2 U B2 D L2 U2 F R2 D' R F U2 L' F2 B'" }
{ "R2 D2 B L2 F L2 B' D2 F' D2 B' L F B U B' R2 B' U' D'" }
{ "B2 D' L' F2 U R' B2 F R' U' F' D2 B L2 B R2 U2 B' L2 U2 L2" }
{ "B2 F L2 U' F' R D2 U' B R' B2 R2 F L2 U2 L2 B' R2 U2 F2 D2" }
{ "U2 F' U2 F2 L2 R2 B' D2 B' U2 B2 D' R2 F2 B' L' B' R U' R' B'" }
{ "U2 B2 L2 U' L2 R2 B2 D L2 F2 U2 F' D' R' D L F' R2 B' L R'" }
{ "L' U2 B2 R' U2 L2 U2 R B2 R' F' L D2 F' R' U' B U2 D B'" }
{ "D2 B2 L2 F D2 F2 B' U2 L2 B2 L2 R B' U L R' F2 R2 D R" }
{ "R L D' R' B R' F' D2 U' L' D2 B' L2 B2 L2 D2 B L2 F' D2 B'" }
{ "R2 D2 L2 R2 D' R2 D' B2 L2 R2 D' B L' B2 U B2 D' F' L D L" }
{ "D2 L B2 R' B2 L2 U2 L D2 B2 R' F R D' L F2 U2 F U2 L2" }
{ "B2 R2 D F2 U' D' R2 D' R2 B2 U F' R U' F U2 B' R2 D2 R B'" }
{ "B' U L D U2 F2 U2 L' F D' L2 U' R2 L2 U' B2 D B2 U' L2" }
{ "B L2 U B2 F' L2 U R D' L F D2 F D2 B' D2 R2 D2 R2 F' D2" }
{ "R2 U2 F' R2 F' L2 F2 R2 U2 F' B2 R' D L' U' F L B2 R2 U2 B'" }
{ "L' F2 L' D2 L B L D' F' L2 F2 L' F2 U2 R D2 F2 L2 F2 R'" }
{ "D2 B2 U' B2 U L2 D2 F2 D' L2 D' R' B2 R2 D L' F' B D R'" }
{ "D2 L2 F' R2 D2 F B D2 L2 B2 L' F2 D' B2 D' F' B' R' F' D F2" }
{ "B L F L' B2 D R D' R2 U F2 R2 F' R2 B' R2 D2 B' R2 F R2" }
{ "U2 R' U2 L D2 B2 D2 L U2 R U2 B U F' B' D2 L R' D B' D2" }
{ "D2 B2 U2 F2 R2 D' R2 F2 D' L2 U2 L' F' B' U B L2 D' L F2 B2" }
{ "L2 F' B L2 F' R2 U2 L2 D2 F L2 D B2 D F L' B L2 R' D' B2" }
{ "R L B' D B L2 D U' B L2 B2 U' B2 U' L2 D L2 U' B2 R2" }
{ "D2 L2 R' F2 U2 D2 L2 F2 R' F2 R2 F D' F' U D' L' F' D' B U" }
{ "D' B' F' R' U2 B2 F U' R' B' D2 B L2 U2 B' U2 F L2 B2 R2" }
{ "D F2 L2 R2 U' B2 D' F2 R2 D' R' B' R' D' L' F D2 R' B2" }
{ "R' B' L U L' D2 F' U' R' B' D2 U2 L2 D' F2 D' B2 D' B2 D' B2" }
{ "D2 B2 L2 R2 D' F2 D F2 D2 R2 D F U D L U R2 F U2 B' R" }
{ "F2 B2 D L2 U2 D' L2 F2 U R2 D' F L2 D L B' U' D F D2 R" }
{ "U' F2 U' F2 U' L2 U R2 F2 D' R D2 L B' R' F2 D' F' R2 U L" }
{ "R2 D' B2 R2 D L2 F2 U' B2 U2 D F' D L2 U' L2 F' U2 L B' R'" }
{ "D' B2 D' B2 U R2 D2 R2 F2 U2 R D L2 F D B' R2 F2 U L R" }
{ "U D2 R2 U' B2 U' F2 D B2 L2 B R' D2 L2 R D R' D' R2 B U'" }
{ "U B2 U' F2 D F2 U' R2 B2 D2 F' U L2 U' F2 D' R' D L' R'" }
{ "U' L2 D2 B' R U B L U2 B R2 F2 U' B2 F2 U R2 D2 F2 R2 U2" }
{ "L U2 F2 R U2 L' B2 L' D2 R' D2 F U R2 U' L2 R' U' F B" }
{ "F' R' L2 D' B R' L B' R D2 R2 D L2 U B2 U' R2 D2 F2 D'" }
{ "U2 L' D2 B2 D2 R D2 L' B2 L2 R' F U L2 B U2 F L R2 B" }
{ "D2 R2 D2 R2 D2 F' U2 F2 D2 F B' D' F2 R D2 R2 F L U2 B2 L" }
{ "L2 R2 D F2 D' F2 R2 F2 D L2 D2 B U2 L2 F' L' F' D2 F' D R" }
{ "F2 D' B2 D' F2 L2 D L2 D B2 U2 F B R' B' U' L' F R B2 R'" }
{ "U2 B R2 U2 R2 U2 F' R2 F2 U2 B2 R' F L U2 R' D' R B' U' R2" }
{ "R2 F' R2 D2 R2 U2 R2 D2 F2 R2 F' R' F D2 B2 D' F L R2 D2 F2" }
{ "B D U' B2 U L' F' R B D' B2 D' R2 L2 D2 B2 R2 F2 L2 U2" }
{ "B U2 F2 U2 R2 B' D2 B R2 D2 F2 R' D L' B' D' R2 U R D B" }
{ "U' R2 F2 U2 F2 R2 D L2 R2 D' F D2 B' U L' B2 D2 R D2 F' L'" }
{ "U' R2 D' B2 D2 F2 R2 U' F2 U L2 F R D' L' B R2 F2 R' F' B'" }
{ "D' F2 D' R2 D' B2 D2 F2 R2 F2 D' F' U R2 D2 R' U D R2 F B'" }
{ "B' D R' L' F R L' U B' L' F2 D2 R2 D2 R2 U F2 R2 F2 U2 L2" }
{ "B' U R F2 L B F' D2 F2 R U2 R2 F2 U L2 D' F2 R2 U L2 U" }
{ "U2 R2 D R2 F2 U F2 R2 U2 F2 D' F' L F R' D L' B' L' R' B2" }
{ "F2 R2 F' L2 U2 B L2 D2 L2 U2 B' R B L2 D F' D2 L F2 R2 B'" }
{ "U2 B' L2 U2 L2 F' B' R2 U2 F' U' L' F2 R' B L D R2 U2 B'" }
{ "D2 R F L' D U R2 L U' F R D L2 D' F2 L2 B2 U F2 D L2" }
{ "U' R2 D F2 U' R2 U2 L2 U F2 B2 L D' R' B2 L2 F' D2 L' U2 F'" }
{ "R2 D L2 D B2 D' F2 D' B2 D F2 L B U L2 U D2 B' D' L' D2" }
{ "U2 F2 B2 L2 U' F2 U' B2 D F2 U2 L B D L B R' U' L U F'" }
{ "F2 L2 R2 U2 L2 B R2 F' B' R2 B' D' R2 F L' D L2 F B' R2 B'" }
{ "F2 U' D' L2 U B2 L2 U' L2 F2 R2 F D B' L U B' R U L2 U" }
{ "U' F2 U2 L' B R' F R' D2 R' B2 D' F2 R2 U L2 B2 D B2 U' F2" }
{ "L2 F' U2 D2 L2 D2 B' R2 F2 R2 F2 U L2 U R' B U B2 L' F U'" }
{ "D2 F2 L2 U F2 L2 D2 F2 B2 L2 D' R D2 F B D B' R2 U' F' L" }
{ "F U F2 L' D2 F2 D R B L B2 U2 B2 U2 L' B2 L D2 L U2" }
{ "D' F L U2 L' U F2 R' D2 B D B2 R2 U L2 B2 D' F2 U2 L2 D'" }
{ "L2 B2 D F2 U' B2 U2 R2 B2 R2 D L' U2 F' D' R' U L U B R" }
{ "R2 F2 D2 F2 D L2 D2 B2 L2 D F2 B' L' F D L D2 F L D R'" }
{ "R F2 U2 D2 L R D2 R' F2 R B L F L2 D L2 R' F2 L' U" }
{ "L' F' R L' B' D2 L D' F U2 L' D2 F2 R' D2 B2 U2 F2 D2" }
{ "L2 B U2 R2 B' L2 D2 L2 D2 F' D2 R' U2 R' F R F2 D' B2 U' R'" }
{ "D' L2 D' B2 U2 R2 D L2 D F2 D2 B' L2 U2 D R' U' B U L' B2" }
{ "R2 U2 R2 U2 L F2 R U2 B2 U2 L2 U' R F2 B2 U F2 D B L U'" }
{ "B2 D2 F' R2 U2 F' D2 F2 U2 D2 R2 U' B R' F2 R U' D B D R'" }
{ "F2 D' L2 B2 D' F2 L2 U2 L2 R2 U' L' D F D B' L2 F' B2 L'" }
{ "D F2 R2 B2 U' B2 L2 R2 D2 R2 F' U R B R2 F2 D L F2 L2 D" }
{ "D2 B2 U2 D' L2 F2 D2 R2 D' L2 R2 B' U2 R' B2 U D' R' U B' U'" }
{ "F2 D' R B' L' U F L' D' F R2 L2 D R2 D L2 D L2 B2 D L2" }
{ "B2 R2 B2 L U2 F2 R D2 B2 L R2 B L2 U R F' U R D2 L2 D" }
{ "B' U2 L2 F' L2 D2 L2 B' L2 R2 B U B' L B U2 F' R U' F' L" }
{ "B2 L' B2 U2 R' B2 U2 L B2 R D2 B L U' L D F2 U2 B' U L'" }
{ "B2 L' U2 D2 B2 D2 R' U2 L F2 U' F2 D' F B D R' B2 R'" }
{ "R2 D2 B' D2 F' R2 F L2 F' U2 B D' L2 B' L' F L' R2 U2 L' D'" }
{ "F R B' R' F U2 B2 U' L B D2 R B2 R2 D2 R2 D2 R2 D2 F2 D2" }
{ "R2 D2 B2 L2 D2 B2 D' R2 B2 D' L2 B U D F' L2 R' U' L' B2 D2" }
{ "B2 L' R B2 R' F2 L' U2 L F2 U R' B U' R F2 D F R' D' L2" }
{ "F' D' L2 B' F D R D2 R' B' D2 L2 D2 B2 D2 B' U2 B' L2 F2" }
{ "B2 R' L U2 B L' F' R2 D' L D2 F2 D2 B' L2 U2 B' D2 F D2 F'" }
{ "D2 B2 R2 B L2 D2 F2 D2 F' R2 B' D' F2 D' L D R2 U2 L' D'" }
{ "U2 L2 D' R2 D2 R2 B2 L2 U B2 L' B' U F2 U2 F2 D' F R'" }
{ "B2 U' F2 B2 L2 D R2 U' B2 D F L F B U' F' L B2 R U L'" }
{ "D2 B' L2 F' B' U2 R2 D2 R2 D2 B U D2 B' U' F2 R' U D' L B'" }
{ "B2 U2 F2 R2 F2 U' B2 U F2 D' L2 B' R D L' F' B2 R' B2 D L2" }
{ "R B F' U2 R B2 L2 D' L U F U2 F' R2 U2 R2 D2 B' F' D2 U2" }
{ "R2 U2 F U2 R2 B' D2 F L2 D2 B D' L2 R F2 U' F' L D2 F' D2" }
{ "U L2 B2 R2 D F2 U' D2 R2 B2 D F R U2 F' B U' R F2 D R" }
{ "F2 L2 B' L2 F' D2 R2 U2 B R' U2 F B' L F2 R D B2 R'" }
{ "R2 F2 U2 F2 D' B2 L2 D' F2 D2 F2 L' B D R' D2 L2 D F L U" }
{ "D2 B2 L2 D' R2 U F2 U B2 R2 D2 B D2 R' F2 L R F2 R' D R2" }
{ "U F2 U F2 R2 D2 B2 R2 U R' B L' U' R' F U' L' B2" }
{ "B U2 D2 R2 U2 F B2 R2 F' U2 B L D R2 U F' L' R2 F2 D2 R" }
{ "D2 F2 U2 L2 R' D2 R U2 R' U2 B2 U' B U R F B2 U2 B' L U" }
{ "F2 U2 R' B2 L' D2 L F2 L2 B2 R' D' L B' R2 F B2 D R2 B R" }
{ "R2 D2 B' R2 D2 F R2 F' D2 B' L2 R' F L2 B R F' U L B D'" }
{ "D F R D U F' U2 R2 F2 L' F' R2 F' D2 R2 U2 R2 F' D2 F' U2" }
{ "D L2 F2 B2 U D2 F2 D' R2 F R F2 U D' L' D' B R' F2 B2" }
{ "B2 U' F2 D2 F2 B2 D' B2 R2 U' B' R D' B L' R2 U' B D L" }
{ "L U2 F2 L' D2 R' F2 R U2 L' F2 B R U' D F U' L' D F2" }
{ "F2 U2 F D2 R2 B' R2 U2 R2 D L U' F' U2 R B' U' F'" }
{ "F' D2 L2 U2 B' L2 R2 F U2 F2 U2 R D L R2 F D' L2 D L' D'" }
{ "B' L' B2 R' B2 F' R D' R2 U L' D2 R2 U2 L U2 F2 R B2 R' F2" }
{ "R2 B2 D2 L B2 U2 D2 L' U2 B R F' R2 U' D F' U2 L D'" }
{ "F2 U2 R L2 D B R L F' L2 B2 R B2 F2 D2 B2 F2 R' F2 U2" }
{ "B2 L' D2 F2 L R2 F2 U2 L B' L B2 L F U2 D' L U F" }
{ "B2 U2 D2 R' F2 L' R2 U2 R' B2 R' D B' U L R' F' B L' R'" }
{ "R' F2 D2 R F2 R2 B2 R2 D2 F2 D2 F U' D2 R2 U2 R D B' D' F2" }
{ "D' B2 U L2 D' B2 U2 F2 B2 D' R2 F' L2 F2 L' D R' B U F2 U" }
{ "F2 U2 R2 D' B2 R2 U' R2 F2 R2 D2 L F' R B' R2 F' D R F'" }
{ "R2 U' L2 U2 D L2 U2 B2 R2 F2 D L F D' R' U F2 D2 R' D' F" }
{ "B' D2 U R B D L F' D B2 R D2 F2 L' U2 L U2 R F2 R" }
{ "B2 D' L' F' U' L' U' L2 D' R2 B' L2 B' R2 D2 F' R2 F' R2 B2" }
{ "R2 B' D2 B2 U2 F' B2 D2 L2 F2 R F' D' B' R U' F2 D R D' R" }
{ "B2 F2 U R B D2 U R U2 R2 U2 B' U2 R2 F U2 B2 R2 F'" }
{ "B' U' F' L D' B' F' R B F' R' D2 R2 D2 B2 L2 B2 D2 B2 L D2" }
{ "D2 L U' F R' U' B2 U' F' D' B F2 R U2 F2 R' L2 F2 L U2 L'" }
{ "L' U B' R' F D2 R' D' B L' F2 L' U2 B2 R2 B2 R2 F2 D2 U2" }
{ "F2 U F2 U' B2 R2 U2 R2 D' F2 R D' L' D2 F' L' F R2 B' U'" }
{ "U2 L2 U2 D' F2 R2 D' R2 D' B2 D' F L' F' U2 R F' B2 L' F' U" }
{ "D2 L2 D2 L2 R2 D R2 F2 B2 L' F D L B D2 L R' U' F2 D2" }
{ "R2 B2 L2 R2 B U2 R2 F' U2 L2 F2 R' B U' B2 U2 D F R B2" }
{ "L' F' D R2 D F2 R' U2 B' L D' U B2 F2 U' B2 R2 U' L2 U' L2" }
{ "L U2 R' D2 L' U2 L2 F2 R' D2 R2 U F2 B' D' B L2 R U2 B'" }
{ "D' B2 D' B2 U L2 R2 U L2 F2 R2 F' R2 D R' B' L' F' U2 B' U'" }
{ "F2 U D F2 L2 F2 D' L2 B2 R2 F2 R' F2 B' U L R U' R' D F" }
{ "F2 R2 U2 L2 R2 F' U2 F B2 R' F L U2 L' F2 L' U L2" }
{ "U2 F' D2 L2 R2 D2 B' R2 B' L2 D2 R D' R B2 U L2 B L U D" }
{ "D' R2 U' B2 R2 F2 B2 D2 L2 U F2 R' B' L' F U2 D L B2 U B2" }
{ "F' L B2 D L' U R B' F2 D' F2 L2 U2 R' U2 F2 L2 U2 R D2 R" }
{ "L2 R2 B' D2 L2 F' U2 L2 B2 U2 F' D' L U' F' D L R B' U' D'" }
{ "U' B' D' R U' L2 U' B U2 L' D2 B' U2 R2 D2 B' L2 F' D2 B2 L2" }
{ "L2 F2 R2 B' L2 B2 U2 F' R2 B2 L2 D' L U L2 U' F' R F' D2 R2" }
{ "D F2 U' B2 D' F2 L2 B2 U D' L F2 D' B2 D2 R F D L B'" }
{ "F2 L2 U' L2 U' D' R2 F2 D R2 D' L' F2 B L' D' F' U' F2 L2 F'" }
{ "U F2 B2 U L2 F2 U2 D' F2 R2 U F L2 U B2 R' F' U' B L'" }
{ "R2 B' L2 D2 B2 D2 B D2 L2 F' B2 L U' F R' B R2 U2 D' F' R2" }
{ "D L D2 B F' L B2 F2 U' B D' F2 R2 D L2 F2 U R2 B2 R2 F2" }
{ "F2 D2 L2 D2 R2 U B2 D' R2 B2 D' F' R' D2 L F' D2 R' F2 L'" }
{ "L F2 U B D2 L D F R F2 U2 B2 D B2 U R2 F2 L2 F2 U2" }
{ "U F2 R2 U2 F2 D2 R2 D' L2 B2 D2 B L' F2 U L2 F' R F L2" }
{ "L2 D2 R F2 R' B2 U2 B2 R2 B2 L' D' R' B L' D2 F2 U L F' U2" }
{ "U' R2 B2 R2 D L2 F2 D B2 L2 U2 B' L R U F' U B' U2 D B2" }
{ "D2 B U2 F' L2 R2 B' D2 F2 R2 B' R F U L' B L2 U' F' R" }
{ "R2 F2 L2 U2 B2 U' R2 U' D F' L B2 U F L' R F' R2 U'" }
{ "R2 F2 D2 B D2 B' L2 B U2 B2 D2 L' D R' U' L D B D L2 F'" }
{ "U2 F2 R2 D2 R' D2 F2 R F2 R D2 F U' F L D2 B' U B R'" }
{ "F2 R2 U2 R2 U2 D' F2 L2 R2 D' R' F2 U' D2 R' F U2 D' R B" }
{ "D' R F D' B' L2 B2 L' F' R U B2 U' R2 D B2 D2 F2 R2 B2 F2" }
{ "R2 D2 L2 D2 R2 F U2 B2 D2 B' L2 R' D' R' F B2 R F B L B" }
{ "B2 U2 L2 R2 F2 U R2 U2 D' F2 L' F D' B' D B' L' B R D R2" }
{ "L2 U2 L' D2 B2 R2 U2 B2 L' F2 L' U B' U2 D L' F2 D F U D'" }
{ "U2 L U2 R2 D2 R' U2 F2 R' U2 B2 D' B' R F L R U2 B' U2" }
{ "F2 D2 R2 D B2 R2 F2 U' F2 L2 B2 L' B2 U F D2 R2 D B' U2 D'" }
{ "L2 U F2 D' F2 B2 L2 R2 D' R2 U R U2 D F' B' U' R' B2 D'" }
{ "B2 R2 U D2 R2 U R2 F2 D B2 L U D2 R' B' R2 D F' L U2" }
{ "U2 F L2 U2 F' D2 R2 F B U2 B2 L U R2 F R F2 L2 U2" }
{ "B2 R2 B' D2 F D2 F D2 B U2 B2 R D F U' D' L F2 D L'" }
{ "F2 B2 L' D2 L' D2 R F2 L' D2 B' L R2 F2 U' F L B' D2 R2" }
{ "F2 D2 L2 R2 D' L2 D B2 R2 D F2 B' R' D' B' D2 R' D' L2 B' R" }
{ "U' F2 B2 U2 F2 U' L2 U' R2 B2 D2 L' U2 B R2 F B2 U' R2 F' D2" }
{ "B2 L2 D2 F2 R2 B2 L2 B' U2 F U2 R' F U2 B' R' D B2 U2 F U" }
{ "U2 R2 D B2 L2 U' B2 L2 D2 B2 U' F R2 F' L D R2 F2 L' F L'" }
{ "F2 R' F2 L' B2 R U2 L' B2 U2 F2 U F' U L R B' L' F D L'" }
{ "D U2 R2 D2 F' U R' B L U F' R2 B D2 F R2 B' L2 F2 D2 F'" }
{ "U2 F2 L2 F2 B2 D2 F2 U F2 B2 R D2 F L' B' U' B' R U'" }
{ "L2 U2 B U2 D2 B' D2 R2 F D' B2 U' R B' R B L U2 F U2" }
{ "F2 L2 U2 F' L D' R2 F' R' L2 F L2 B U2 L2 B R2 F R2 B" }
{ "F U R' F' L U' R' U2 B' D' R D2 L D2 L D2 L B2 L2 F2 D2" }
{ "L2 B' L2 B2 R2 U2 R2 D2 R2 B D L2 U B' L' U' R' U D L'" }
{ "U2 D2 F D2 L2 B D2 B U2 D2 B R D' F2 B2 R' F2 L' B' R' F'" }
{ "L F2 R F2 B2 U2 L2 B2 R' F2 R' D F B' R2 U' F2 B D2 R' F'" }
{ "R B2 D2 B2 D2 L' U2 L' U2 L' D2 F' U L2 B D B U' B' U' R" }
{ "L2 D L2 D B2 L2 R2 D2 R2 U' F2 R U F2 R2 U D F L B2 D2" }
{ "L2 B' L2 R2 F' U2 F2 L2 B' D2 F' D F' L F R2 U F2 U2 R B" }
{ "B2 R' D2 L' F2 D2 F2 U2 R' F2 R' F' D' F2 B L U' R F' L2 F2" }
{ "U2 B2 L' D2 R B' R' D' L' B L2 D' L2 D' B2 U2 B2 U2 L2 F2 L2" }
{ "F' L2 F2 D2 R2 B R2 F U2 B U2 D F2 D' R F2 R2 F D2 L U'" }
{ "U' F2 D2 R2 F2 U' B2 L2 U' F2 R U2 B U2 B2 L' F2 B U B" }
{ "R2 D' L2 F2 U2 D B2 D2 F2 R2 D F' D' L' R F' D L F2 D2 B" }
{ "U' R2 L B2 R' F' D U' R2 F D B2 R2 B2 U B2 D' B2 F2 L2 D" }
{ "R2 B2 D2 F2 D B2 L2 U' F2 D F2 B' R' F B2 U' L' U R D' L'" }
{ "U2 B2 R2 F2 U L2 D' R2 D R2 F' U' R2 D B L U F R2 D2" }
{ "D' L2 B2 U' B2 U' D' R2 U R' B U D2 L' U' D' F U L2 R" }
{ "F' R2 F D2 B2 U2 L2 B' L2 U2 R' D' B L R' U L' D' L D'" }
{ "U2 D2 F' R2 B2 L2 B U2 F L2 D2 L U L' F' D L' R D' B U2" }
{ "F2 D2 R2 F' U2 B2 L2 F L2 U2 F' D R B R2 U2 F2 R' D' B'" }
{ "D L2 U' L2 B2 D2 R2 D F2 D B2 L F2 D F' B' U' F L2 F' R" }
{ "R L B' R' B F' U' B L B' D B2 D2 F2 L2 B2 U2 B2 U' R2 U'" }
{ "F2 D2 B2 R2 U L2 D' R2 B2 D' F2 B' R F D B' R' U' F' R'" }
{ "D' L U2 R' D2 B' R2 U' R' F' R B2 R2 B F2 D2 R2 B2 L2 U2" }
{ "D2 B2 D2 B2 D' B2 D B2 D' L2 U2 F' U2 D2 F' R F B R D' R" }
{ "L' F' D' R' F U2 B U F L B' F U2 B' R2 B' R2 D2 U2 B' F'" }
{ "L F L D R D B U F' D F2 D' R2 D2 R2 D' B2 D' R2 B2" }
{ "B2 R2 D2 B2 L2 R2 D' F2 R2 U' F2 L' D2 L U2 B U2 F' L R' U" }
{ "L2 B2 U D2 R2 F2 D2 F2 R2 F2 D' F' B U' L F D' R' U' L' F" }
{ "L F2 L2 D2 L' F2 L F2 U2 L U F2 B U2 L U2 F D' B D2" }
{ "D2 B2 R2 F R2 B' R2 F2 U2 D2 F R D' L2 B D2 R2 B' L U R'" }
{ "R2 B2 U L2 D F2 L2 U2 L2 U' L2 R U B2 U2 L' B U' F' R2" }
{ "D R2 F2 U F2 D2 F2 R2 D' L2 D' B' R' B D F L F' B2 D' L2" }
	}
}
if {$moves == 8} {
	set b "cross 8"
	.buttoncross.$b configure -background green
	set scramble {
{ "F U2 D2 B' U2 B2 U2 R2 U2 F' B' U F L' U B R F D' R2" }
{ "L2 U' R2 B2 D L2 D2 B2 L2 D B2 L' D2 F2 B L F' R' B' U' L'" }
{ "R' U2 D2 R' F2 B2 R' F2 L' R2 F2 U L' D L' B' D' R2 F U2" }
{ "F2 L U2 B L' U B L F' L2 F2 L2 D U' R2 L2 U L2 U' F2" }
{ "U F2 L2 R2 U B2 D2 L2 F2 U F2 L' D2 B' R2 D' L' F R U' R2" }
{ "U2 R2 F2 B2 D2 B2 R F2 L F2 B2 D F B' U B D B' L'" }
{ "D' B D F' L' F2 R U' B U' R D2 R2 F2 U2 B2 L' U2 L2 D2 L" }
{ "B2 U L2 F2 B2 D R2 D B2 U2 D' L' B R' D2 L' B L' R' B2 U'" }
{ "L' B' D' R L' U F L' U B F2 U2 R2 D' R2 U B2 D L2 D' F2" }
{ "B L' F' R B U2 B' D' B2 U B2 F' R2 D2 R2 F D2 B D2 U2 R2" }
{ "U B2 U2 D' L2 R2 F2 U F2 L2 F2 R' D2 L2 B' L' D F U R' D2" }
{ "D F2 U D2 B2 U2 L2 F2 L D2 B U2 F D F2 R D L' R2" }
{ "L2 U' D2 L2 B2 U' F2 R2 D' B' L' U F U2 D' R D R F R" }
{ "L' U R' L F' L' B2 D' B U R2 U2 L2 B2 U2 R2 U' F2 L2 B2" }
{ "B U' L B F2 R' F' R2 L' D' R2 F2 L B2 L U2 F2 R' U2 L' B2" }
{ "R2 F' L2 F' B2 R2 F2 R2 D2 B U2 D' R' F D B' L' F' L R' D2" }
{ "L D' B2 L' F R B' L F L2 F2 U L2 F2 R2 L2 D2 U L2 U" }
{ "U' F2 B2 L2 U B2 U2 R2 F2 L2 D2 B' R2 D L' F R' U2 B U2 D2" }
{ "F D2 R' L F D' B' U2 R' F2 U2 B2 U R2 D2 U R2 B2 U L2" }
{ "B F R L' D B U L2 B U' R2 B' R2 B L2 B D2 L2 F' R2 U2" }
{ "B L2 U2 F D2 F' R2 F R2 B2 D2 L' F' R' B L2 R2 U L' F2" }
{ "B2 U2 F D2 B' R2 D2 F' U2 F' U2 R F' D L U' F' R' B U2" }
{ "D2 F2 D2 L2 F U2 F' D2 B' U2 B' U B' R D' B' L F B D2" }
{ "B R2 B2 U2 B' D2 B U2 L2 B L2 U' R' B' L2 D L2 F R' B' U" }
{ "R2 F' D2 B U2 R2 F2 D2 B' U2 B D' L' R' F D L' R' F' L2 U2" }
{ "D2 R' U2 L' U2 B2 R U2 F2 R' U B' U F' U' L' R2 D2 L2 D R'" }
{ "F2 D L2 F2 D' R2 D F2 U' L2 D R U D B D2 F' L B R F" }
{ "L' B' U' R B D' R2 U' L' B F2 R2 U2 B2 D' B2 U F2 U F2" }
{ "L2 U' R2 D2 F2 U2 D' B2 D2 L' U2 B' R D F D2 L' U2 R' B" }
{ "R2 D2 L' D2 B2 R D2 B2 D2 B2 L' B' D' F' R D' L D' F' R2" }
{ "F U2 F2 L U' F L2 B' R B D2 F2 D' R2 L2 U' R2 D' R2 F2 D" }
{ "B' D2 F2 B' R2 F' R2 U2 B2 D2 R2 D B L' R F2 B U F2 D R" }
{ "D2 B2 U2 B L2 F2 B D2 B L2 F' L R D' L R2 F' B L D B2" }
{ "F2 D' L2 U R2 D' L2 D2 L2 U F2 B' L' R2 U2 D R2 B R U L'" }
{ "D' R' D L F' L U F2 R U2 R2 B L2 B D2 B' L2 B U2 R2" }
{ "L U B U' L2 B' R U F2 L F' L2 F' L2 U2 F L2 D2 F2 D2 B'" }
{ "B D U2 R' D2 L2 B L' U2 F D2 L2 B2 R2 D B2 D B2 F2 D B2" }
{ "B2 R2 U2 B2 R B2 U2 B2 D2 L' F2 U' F L' D L2 B' U' R2 F U'" }
{ "B2 U' D' R2 U' L2 F2 D' F2 U' B2 R U2 B' D' L' R F U B' R'" }
{ "F' R' B U' L' F' D' R' D F U2 R2 U2 B' D2 U2 B2 U2 B'" }
{ "R2 D B2 D' F2 B2 D' R2 F2 U R D2 F' B' R B' L F' D F2" }
{ "B2 L2 R F2 L2 R F2 D2 L R' F U2 B U2 R' B2 L B D' L' U'" }
{ "U2 F2 D B2 R2 D2 B2 D B2 U F2 L R2 F2 D F R' U2 F B' L2" }
{ "R L B2 D R2 B R2 F2 L' F R D2 B2 L2 D2 L2 U2 R B2 F2 R'" }
{ "B D2 B L2 B2 D2 F' U2 L2 U2 B U L R' B L2 U R2 D R'" }
{ "D B2 U2 L2 F2 L2 B2 U' R2 D' L' F D' B2 L2 U B L B2 L' R'" }
{ "F' D L U2 R D2 U B D L F R2 F2 L2 F D2 B' L2 B U2" }
{ "U' R2 D F2 D2 B2 U B2 L2 U' L2 F' R B' L' R F' D' R U2" }
{ "F2 B2 U D R2 U' F2 U B2 D' R2 F L2 R' U' B L2 F' R2 D" }
{ "D2 F2 D' R2 U' F2 B2 R2 U F2 D2 B' L' R' U2 B R D F2 L R'" }
{ "R2 B2 R2 D2 B' D2 F' D2 B2 L' R B' D2 F U' F' L2 B U R" }
{ "F' U B D L F L2 B2 U' R' U R2 U' F2 D L2 B2 L2 U' L2 D" }
{ "F U' L' U2 B' U L U' R' F L2 D2 L2 U' B2 R2 L2 U F2 D' L2" }
{ "L U2 R' U2 R2 F2 R' D2 F2 R F U D2 R D' F U B D' R" }
{ "R F L U R' F' U2 L D' R' B2 D B2 L2 U F2 U R2 D' F2 U2" }
{ "L' B2 L' F2 L B2 R' U2 R' D2 L2 F' D L B U' F2 U2 D2 F" }
{ "F' U2 B' U2 L2 U2 F' B2 U2 L2 B2 L F' L2 F2 D R U B' L2 D2" }
{ "F D B' L' U2 R' U R2 D2 B L B2 R B2 F2 R D2 R' B2 F2 U2" }
{ "U2 L2 U2 B' D2 F2 L2 R2 B' L2 F' L' R' B L F L D F U" }
{ "L2 F' D2 B2 R2 D2 R2 F U2 D2 L2 D' L' B R D' F2 U' L' F' D'" }
{ "U F2 L2 B2 D L2 U R2 D' B2 D2 L' B' U R U F' B L R B" }
{ "U2 F U2 B' U2 L2 U2 L2 F' R2 F L' F2 D L F L' B R U L" }
{ "R' U B' R2 L' U' B' U2 R' U B U2 F' U2 F' L2 B U2 F2 D2 F2" }
{ "B2 L2 B' U2 F U2 B' R2 D2 R2 B2 R' U' B' L' R' D' F L U'" }
{ "L2 D' L2 U' L2 R2 B2 U2 R2 D' R U' F D F2 D' R B' U' L' D" }
{ "F2 R2 D2 L' B2 D2 B2 L' U2 R2 D' B2 R U F B' L B' R2 B2" }
{ "D' B2 U' B2 R2 D F2 U2 L2 B2 R2 B' U2 L R B L' U B2 D' R2" }
{ "U2 F2 L D2 R D2 L U2 F2 R D' B L R2 U' D' R' D2 F B" }
{ "D' F2 U' L2 D B2 D R2 D2 F2 D2 B' R2 D' R2 D L' R' D' F' L" }
{ "B' R2 U2 F2 L2 U2 R2 U2 B2 L2 B' L B' L2 F2 R' F' D L' U R2" }
{ "U' R2 U R' B L' B L2 F R B2 R2 D U2 R2 D2 R2 F2 U B2" }
{ "L2 B U B' U2 R F L D B' R' B2 D2 B2 F2 L' F2 R D2 R2 L" }
{ "U' L D2 B' F' R L U B' R2 U' R2 B2 D' U2 F2 U' L2 D F2" }
{ "D2 L' D B F D U R' D U R B2 L' D2 R U2 L' D2 B2 D2 F2" }
{ "L2 U L2 D' R2 U' F2 D2 L2 D B' D L2 B R F B' L" }
{ "D' F' R F2 U R' U2 F' L' F2 R2 B L2 U2 B' R2 B R2 U2 R2" }
{ "B2 D F2 D B2 U2 R2 U F2 D B2 L' F L' D2 L' U' R' F' L' B" }
{ "B' D U' L U R L2 D' U' R B' F2 R' L2 F2 D2 L' D2 R D2 U2" }
{ "D' F2 U' F2 D B2 U2 L2 F2 B2 U L F D' R D2 L' F' B U2 R'" }
{ "D F2 R2 D B2 U2 L2 B2 U2 B2 D2 B' L' F' U R' U2 B L' D F" }
{ "B2 L2 D F2 U2 F2 D2 L2 U R2 U F U L' R' U L2 U2 B' D2 B2" }
{ "R B U2 L U' L2 B L B' D2 R2 F' D2 B2 D2 B2 L2 B R2" }
{ "U2 F' L D' B L B F' R B' D2 R2 L2 F2 D2 F' R2 D2 F' R2" }
{ "U L2 B2 U' B2 D B2 U2 L2 U2 F L' B D' R F' B' L2 B' D2" }
{ "R' U2 D2 R' B2 D2 R U2 L R2 U R' F L U B2 U B R U' B" }
{ "R F2 L D2 B2 U2 B2 R D2 R2 D B U' F' L' B' R' B'" }
{ "U' F2 U' D2 L2 D F2 L2 F2 R2 D2 B' R2 D L F2 L D R' B' L'" }
{ "U R' B' U L' D' R2 B' R' U' B2 R2 D2 L2 B' R2 B F2 R2 L2 B'" }
{ "B2 R2 B2 L2 U2 R2 U D2 B2 U' D L' B2 U F' D' L' B' D' F' R" }
{ "F2 R2 D2 R2 D' B2 D' F2 L2 F2 U L' U' F' D L' D2 R2 B' R U2" }
{ "B2 R2 D' F2 D' F2 B2 R2 D B2 D R' U B' L' R2 D' F D' B D2" }
{ "F2 D' F2 L2 D B2 D L2 U' R2 B' D' F' L' F R' F' B' L U D" }
{ "B2 D2 L' U2 L F' L' B' D2 R' F2 L2 D' R2 D' R2 F2 D U R2 L2" }
{ "L2 F2 D R2 D R2 B2 U2 F2 U2 D' B' R' B2 L' R' F' B R' B' D" }
{ "D2 B' L2 F' D2 B L2 R2 B D2 L D L B' U' F R' F2 B L'" }
{ "L2 B' D R' U B' U F R B F2 R D2 F2 R U2 R L2 B2 L D2" }
{ "D2 F2 R2 B' D2 B R2 B2 D2 B' L F2 U F R' D F' B' L F'" }
{ "B2 D R B' L D' L2 U F' L' D2 R2 F2 R2 F' D2 L2 B' L2 B D2" }
{ "B R D F R B' U R' L' U' L2 D2 R2 L2 F2 R2 U2 F' L2 U2 B2" }
{ "B' R L U F U B2 R' D' R D2 B' R2 D2 L2 F2 D2 B' D2 B' U2" }
{ "D F D' R' B' U' F U' F2 D B2 D2 R2 B2 R F2 L D2 R' D2" }
{ "B' L2 B' R2 F2 U2 L2 B' L2 B' L B L' F' R' F D' L B'" }
{ "B2 U2 L2 R' D2 F2 L' F2 L U2 D' L B' R2 U' B2 L' F' L' R'" }
{ "B2 D L2 D R B U' F' R F' R2 L2 D2 L2 U2 B2 L2 F' D2 L2" }
{ "D' B2 D' B2 D F2 B2 D2 B2 R2 D' B R F L' U2 D B2 L2 B' U" }
{ "U2 B' U2 F2 U2 L2 B' U2 B U2 L2 R' D B2 R2 D2 L' U' B' D L2" }
{ "B2 U2 B2 U2 L2 D2 F' U2 B2 D2 L2 R' U' L F2 R2 F B L F' R2" }
{ "L2 U L2 F2 L2 B2 U F2 R2 D' L2 B' R F R2 U D L' U2 R F2" }
{ "L2 U2 R2 U2 R2 D F2 D' B2 R2 D2 F L' U' B' U2 R' B' U2 L2 D" }
{ "R2 B2 L R2 U2 L2 R' D2 B2 L B2 U R U F L' D' B' D2 L' B" }
{ "B2 L' F2 R' U2 L' F2 L' U' B U F2 D F B2 L' B D" }
{ "R' U2 B2 R U2 B2 R B2 U2 R' U2 B U' F' L' D' R2 F2 U L" }
{ "L' D2 F R' B' U2 F D B L F' D2 B' R2 B2 U2 L2 U2 L2" }
{ "R2 F2 D' R2 U B2 R2 U R2 B2 D R D2 B' D' F L' R D' R' U'" }
{ "B2 U R2 U' L2 U2 L2 U2 F2 U2 F2 R' U2 D' B R F L B' L2 U'" }
{ "B' U2 F2 U' F2 R2 L' B' F' D' B2 D2 R' B2 U2 L F2 D2 R' L2 D2" }
{ "F2 U L2 D B2 U2 F2 L2 B2 R2 U2 L' U2 B' U2 F U2 L D' F' R'" }
{ "B2 L2 B2 L2 B U2 B D2 L2 B U2 L' F' D2 B D F U2 B U R2" }
{ "L' B2 L U2 R D2 L2 F2 R F2 R2 F D2 B' R U2 L F B' D' R2" }
{ "D2 L U2 F2 R2 F2 L D2 F2 D2 L U' R2 D F L B2 L2 B' L2 R" }
{ "D' F2 R2 D' B2 L2 D F2 D2 R2 F2 L F2 B' R F' R D2 L D B" }
{ "D U' B' F' R' D2 F' D L' U' B D2 L2 D2 F2 R2 L2 B' D2 B U2" }
{ "L' F' D' U' F2 R B L D F' L2 B2 U2 B2 D2 U' B2 F2 R2 U R2" }
{ "B' D2 R2 F U2 R2 D2 R2 F B' R' U2 B L' D' B2 R F' R2 D'" }
{ "F2 D F2 B2 U B2 R2 B2 R2 D' F2 B U L F' U R D' F B2 R2" }
{ "R' L F U L' U R' L2 B F2 U2 R F2 U2 B2 D2 L2 U2 B2 R" }
{ "L' F2 L F2 R2 D2 L' D2 F2 R D2 B L2 R2 U' R' D' L B' U D" }
{ "R' L F' D' U2 L F' U2 R D' U2 L' D2 L' U2 L' F2 U2 R2 F2 L2" }
{ "B R2 B' L2 R2 B2 L2 B' R2 D2 B2 L' D F2 U F' R F2 B U D" }
{ "B' U2 F' D2 R2 U2 F2 L2 F D2 L B L D' F2 R' U D F L' R" }
{ "U2 B2 U2 D' L2 B2 U' B2 D' F2 D R' F U' L R B L2 R D R" }
{ "D R2 F2 U2 R2 B2 R2 F2 D' F2 U F' R U' L F2 B D' L' F' D" }
{ "L' F2 L' F2 B2 U2 L F2 L2 D2 B R2 U' F2 L' R2 B' D F R'" }
{ "U L2 B2 U' R2 D' F2 R2 U' L2 U' L B D2 L' B' D L' U B U" }
{ "D2 R2 D R2 D' L2 U' L2 D L' B' D B' R2 F L2 D' R B' R" }
{ "U' F2 D' L2 D2 L2 D2 R2 F2 D R' F B2 U2 R' U D2 L R F' R'" }
{ "F2 L2 F2 D2 R2 B' R2 D2 B' U2 L D2 R' B U L2 D F' D B R" }
{ "B' U2 L2 F' B2 L2 F' L2 R2 B R B L' D' L U B2 U2 B' R'" }
{ "B2 U2 L2 D F2 L2 F2 U D L2 R' U2 B' L' F R' D' B' D' R2" }
{ "L2 U F2 B2 U D F2 D' R2 F2 L' D2 F' R2 B' R U L U' D'" }
{ "F U' L' U' L' D2 R' F' L2 B U2 R2 B2 U R2 F2 R2 B2 F2 R2 U" }
{ "B2 U2 D2 B D2 F L2 F2 L2 D2 R2 D F2 U D2 L B2 L' U2 D B'" }
{ "D2 F' D2 F2 R2 D2 F' L2 R2 U2 B2 R' D R2 F' D' B' U' L F D" }
{ "F2 U2 L2 B2 U' F2 D2 L2 D' L2 U' B L F' D2 L2 R2 F' R F U" }
{ "B2 R' B' L U2 L' U F' R U' F2 R2 F' L2 F' R2 F' L2 U2 B2 R2" }
{ "F2 U F2 L2 U2 F2 B2 U L2 U D L B2 U' L' B' U R F L D'" }
{ "U2 F' U2 F U2 R2 B' L2 B' R' U2 B2 R' D F B' U L' B" }
{ "L2 B' R' L' D' F' D2 U R' L2 D2 B D2 B D2 L2 B' R2 B2 D2" }
{ "F2 D' R2 U2 B2 D R2 U F2 D' F2 L F' L' B L' U R' U' L' B'" }
{ "L' U' R' U B' D R' U2 B' R U2 F2 R2 F U2 F U2 F2 L2 U2 B" }
{ "D2 R2 B2 R2 F2 D2 R2 U F2 D R' B' U L' D' F U R2 B' R" }
{ "L' D2 F2 L' D2 F2 R D2 R' B2 L' U' F' R' B' D2 F R F D L'" }
{ "L2 B' R F R2 U R L' U' F2 L2 B' U2 B' U2 F D2 R2 F'" }
{ "B R2 B2 F' R' F' L2 B' F L' F2 D B2 L2 B2 U L2 B2 D' L2 D" }
{ "U D F2 R2 U L2 F2 R2 U L2 B2 R' B2 D F L' R2 D2 R F L2" }
{ "F2 B2 U' F2 D' F2 D' R2 F2 D2 F' U' L D B' L U B2 R' U'" }
{ "U2 F' D2 L D R L2 B' R D2 F2 R2 F2 U' B2 R2 U L2 F2 U" }
{ "L2 U L2 F2 B2 U B2 U L2 D2 R' D B' L' U F U2 F' U L2 F'" }
{ "U2 B' L2 U' R' D U2 L F' D2 R B2 R' U2 L D2 F2 L D2 F2" }
{ "B D2 B D2 R2 B' D2 F B L2 D2 L' U' D' R' B D' L U2 L2 F'" }
{ "U' R2 D' B2 R2 U F2 B2 D' F2 D F L2 F2 L U' B R F L2 U2" }
{ "U2 F2 U2 B' U2 L2 B D2 B' D2 R B2 D' R' D2 F R2 B L' U' F2" }
{ "L2 R2 U' B2 D B2 L2 D2 B2 D' R' F' B2 U D2 R' B L2 D" }
{ "D' B2 D' F2 U F2 R2 D' F2 R2 B2 R' U' B D2 L2 R F B' D L'" }
{ "U2 F2 R U2 D2 F2 R D2 F2 L' D' F' B' R F U2 R' F' B L' B'" }
{ "D B2 U2 R2 D R2 D F2 U' D L F2 R' F2 U F' U' R' U2 B' D'" }
{ "R2 U2 B' L2 F U2 D2 R2 B R2 F' R U' F D' B' L R F2 U2 F'" }
{ "B2 U R2 D2 L2 R2 B2 L2 U R2 F L2 U' D F' L' B R2 D' F' U2" }
{ "R2 U L2 R2 U B2 U' D R2 D2 F U2 R' F' B' U L D B U' D'" }
{ "B' R2 D2 B' R2 F2 L2 B L2 U2 F2 D F D B R U F2 L' U2 B'" }
{ "U R2 B' U2 B' U' R' U2 B' L' U2 L' B2 R2 F2 U2 F2 R' D2 L" }
{ "R F2 D' L2 B R D2 L' F R' D2 U2 B R2 F' R2 F2 L2 F D2 U2" }
{ "B2 D2 B' U2 F L2 B' L2 D2 L2 U2 L F' D' F2 B2 R2 F R D L'" }
{ "F2 L D2 L' R2 U2 B2 R' U2 F2 R' D B2 R F2 B' L F U D'" }
{ "R2 F2 R2 F2 U2 B2 R2 D B2 R2 B2 L U' F2 B' L' U F B' U2 R'" }
{ "L2 R2 D' R2 F2 D B2 D2 L2 D' B2 L D' F R' F2 L B' U' F2 L2" }
{ "R2 U2 B2 R2 D2 R D2 F2 R B2 R2 F' R B U2 F2 R' U D L' B'" }
{ "L U2 L' F2 L' D2 F2 U2 L' D2 R B' L D B' L2 U' R U2 F' B" }
{ "R2 D B R' L2 U' R' L' D F' D2 F2 D' L2 F2 U R2 B2 D R2 D'" }
{ "R2 U2 D2 R2 F' R2 F L2 B2 L2 R2 U' R B' U B' R' F' B L' F'" }
{ "L' U2 L2 B2 R' U2 R B2 L F2 D' B2 U2 L2 F' B' D' L B2 U'" }
{ "B2 R2 F2 R2 U R2 B2 U2 R2 D2 R' U F2 L B2 R B' R F' L2 D2" }
{ "D F2 R B U' R' L' F' R2 U R U2 B2 D2 R' D2 R U2 F2 R L" }
{ "F2 R U2 R' B2 L2 B2 D2 L' R2 D' R F U D' R' F' D' R' U" }
{ "D2 B2 L' B' R F2 L2 U B' L' B2 L2 D B2 D' F2 U F2 U B2" }
{ "R' U2 B2 U L2 D2 B F' R' B' U2 R2 D B2 D' F2 D R2 F2 D2 B2" }
{ "R2 B2 R2 U2 D2 R2 U' F2 B2 D' L' B D R' U2 D B' U R' U" }
{ "D' U L D' L2 F D' B' D' R L2 D2 B D2 R2 F2 D2 U2 B' U2 L2" }
{ "R2 D' B2 U' D' L2 U F2 L2 U D' B' D2 L' F2 R F U2 B' L' U" }
{ "B' D' U B L2 F' R L F' R L2 U2 B2 R2 U2 L2 B L2 F' U2 L2" }
{ "U F2 B2 U2 D' F2 B2 R2 D F2 R2 F U' R U R2 D' L' F2 B' D" }
{ "D' R2 F2 U L2 D L2 U2 F2 U' F2 B U F' U D' R B U' L' B2" }
{ "F2 L2 U2 B' D2 R2 F D2 L2 D2 B R D L2 B2 L2 F D2 L' D L2" }
{ "D B D L' F R D U' B' R F2 D2 F2 L2 F2 U' R2 B2 D L2 F2" }
{ "D B2 D' L2 R2 U' L2 B2 U2 R2 F2 B L U2 F L' F2 R B D F" }
{ "F2 R2 D2 B U2 D2 L2 B2 D2 B' U2 D L B2 U' F' R B R' B2 R'" }
{ "B2 L2 U2 F2 U R2 D B2 U' L B U2 L R U F U L D2 B" }
{ "L2 B' D L B2 F L' U' R F2 D2 F2 L2 F2 U F2 U2 L2 U" }
{ "L2 U F2 L2 D2 R2 U' R2 D F2 B D R F' R F2 U' L' B2 D' B2" }
{ "L2 D F2 L2 D B2 D2 R2 D R2 B R' F B L B2 R' B2 U D L2" }
{ "D' L' D2 R' F' D2 B' R' U F' U2 B2 R2 U2 R2 U2 L2 B D2" }
{ "D R2 U' L2 D2 B2 U F2 L2 R2 U F B2 L U2 F2 B U2 F2 R" }
{ "R' L2 U2 B U F L U B2 U L2 D2 F2 R2 L2 B' U2 F' D2 R2 F2" }
{ "B2 L' F2 L' U2 D2 L' B2 R2 U2 L B' U B L2 U2 B L' F' U' R'" }
{ "F' B' D2 R2 B' U2 R2 B U2 D2 B' L' U2 F' R2 B U2 L2 U' L D'" }
{ "F U F' D U2 B L' B U B' D2 R2 L2 B F2 R2 D2 U2 B' F'" }
{ "B2 L2 D R2 U2 F2 U' F2 U' L2 F2 B' L2 B' L D F2 B U' R F" }
{ "U2 B2 D' F2 B2 D' R2 F2 B2 U' F' B' D L' R2 B R F' D F2 D" }
{ "L2 D' F2 U R2 U2 F2 L2 R2 D' F2 R B U' D F B2 R B' L2" }
{ "B2 R2 D L' F R' U L D L' D2 L2 F U2 B2 U2 B' R2 D2 U2 B" }
{ "B2 U2 L2 R2 U' B2 D2 B2 D' L2 D2 B' U2 L' D' F D2 B' U2 L B2" }
{ "R2 F2 U2 L2 B2 U2 F R2 B' D2 B2 L' D' R' F' U' B2 R2 B2 D F" }
{ "D L2 U' F2 L2 F2 D2 F2 D R2 D' F' R2 U R' D' F' L' U' D'" }
{ "R2 B2 U F2 D2 B2 D2 R2 D2 L2 D' F' L B U2 L2 F' R U2 F U2" }
{ "D R2 D L2 B2 D2 B2 U L2 D2 R2 F' D B2 L B' R' F B2 U2 L'" }
{ "R' F2 U B F' R B' L' B2 L F2 R2 U' B2 L2 B2 D' U L2 U' L2" }
{ "B2 L2 D2 B2 R2 D' L2 B2 D' B2 D' L F R' D F2 U' R2 D' F' D'" }
{ "F2 D2 R2 F2 L2 F' B R2 D2 F R D F L' B' R' F R2 D' F U" }
{ "D2 B' L2 F R2 D2 B U2 R2 F U2 L B' D' B2 L R' D R2 F D'" }
{ "U' L2 D L2 B2 U L2 B2 U' B2 L' B U F2 L D F R' B' D2" }
{ "F2 D2 R' U2 B2 U2 B2 R' D2 L' U2 D R' F' U B R2 D" }
{ "D' R2 U2 R' D2 F' L' U R' B R2 B' L2 U2 L2 B' R2 B' D2" }
{ "B D F' D' U2 F' R' F D2 L' B' F2 L2 D R2 L2 F2 D L2 B2 F2" }
{ "B2 R2 U2 L2 D B2 D' F2 L2 F2 D' R U F' L R' U F' L B2 U" }
{ "R U' F L' D R' L2 U F' L F R2 B D2 L2 F2 R2 B2 D2 B' R2" }
{ "B' D' R' D B L2 B2 L' F' R2 B2 L2 D2 R2 D' F2 D2 L2 D L2" }
{ "F2 D' B' F L F2 R2 F2 D B' R' F2 L' B2 U2 R D2 L2 D2 B2 L2" }
{ "L2 D R2 D B2 D' F2 D F2 U2 B' R' B' L' U' L U F' L U R'" }
{ "B F' D' R B' L' B L' D L D2 R U2 R' U2 R D2 F2 L U2" }
{ "R2 D F2 B2 U F2 B2 R2 F2 R2 B' R F L D R B L2 B'" }
{ "L2 D2 B2 R' F2 R' U2 L' U2 R' D2 F' D L' F2 D2 B L U F B'" }
{ "B' U2 L2 F2 B L2 U2 L2 U2 R2 B D' F L F B D' R2 U R F2" }
{ "D2 B L2 F U2 L2 F2 B' D2 L2 F' U R' D F R D L' R D" }
{ "U2 F2 D2 F' D2 F' U2 R2 U2 L2 D2 R' B2 L' F' U D2 B' D2 R B'" }
{ "F R2 D2 R2 B2 L2 F' B R2 U2 D' B' R' F' L' F' U2 F' R B' R'" }
{ "D2 B2 R' F2 D2 L D2 F2 R' B2 R F U2 R2 U F' U2 F R B'" }
{ "B R F' U B' R U' L' D2 B D' L2 B2 L2 F2 U B2 R2 D2 B2 U'" }
{ "D' B2 R2 U2 B2 U R2 D' L2 B2 R F B' L2 D2 B2 R' D' R2 B2" }
{ "R U2 L2 F2 U2 D2 L' F2 B2 L' D2 B' R' F2 L' F U' F' D B' D'" }
{ "R2 U2 L2 R2 F R2 B2 U2 B2 D2 F' L U2 F2 R2 F B' U L R2" }
{ "L2 F L2 F' B' D2 L2 F U2 D2 L2 R' F2 U B' R2 U2 L' F' L' D" }
{ "R2 D2 L2 U' R2 D L2 F2 U2 F2 B2 L D' F' B' L F' R B2 U F" }
{ "U L2 U' D B2 D F2 B2 L2 R2 D2 R' D F B' L R2 D' F' U2 D'" }
{ "R2 U2 F' U' R L U F' D' R B U2 B' R2 U2 B2 U2 L2 F R2 L2" }
{ "D2 B2 F' U L' F' R B' U' L D2 U L2 D' F2 D2 L2 B2 R2 D' F2" }
{ "B2 D2 B2 R2 B2 R2 D R2 D' B2 R2 F' L U R' F' B' U R' U' R" }
{ "L' F2 R D' R F2 R' B L D2 R2 D' L2 D' B2 U' F2 L2" }
{ "B2 D2 F' L2 U2 R2 B D2 F2 B' U2 L U L D' B R' F B2 L R'" }
{ "D F2 U' F2 D F2 D' L2 D2 B2 L2 B L2 B2 L U2 B' D' F' R' U2" }
{ "D2 B' R2 F' D2 B R2 D2 R2 F' B' R F D L R2 F B' D' R' F2" }
{ "F2 R2 D R2 D B2 D' R2 F2 L2 D B' R D' L' F2 D B' U2 R'" }
{ "U' B2 L2 D' R2 D R2 U R2 B2 U2 L' B2 U2 F' D2 L' D2 B' R D2" }
{ "R2 U' L2 U' B2 L2 U L2 U B2 U' B' R' U F B2 U' L F' L' B'" }
{ "U2 L2 F2 U' F2 R2 D B2 U2 L2 U' B' L F' U' R B' U2 L2 B2 U'" }
{ "U' B2 D' R2 D2 L2 D' B2 D' R2 D2 F' L' U2 F' L D L' B R2 D2" }
{ "U' B' F L2 D L F' R' U' F' U' B2 L2 D' L2 F2 R2 F2 D2 R2 U'" }
{ "B2 U2 D2 R F2 D2 L U2 R' F2 U2 F U2 R' U' D B2 L' B2 L2 F" }
{ "R2 U2 F L2 U2 L2 B U2 D2 F R2 U' R B L' F' R2 U R2 B R'" }
{ "B2 U2 F L B' F' R F2 D U2 L2 D2 B2 L' B2 F2 D2 F2 L2 B2" }
{ "R2 U' L2 D' L2 D R2 U' R2 F2 U R' D' L' D2 R2 D F R' U' B'" }
{ "B2 L2 D2 L2 R2 F2 U2 R2 F' U2 F' L B2 R' F R' U' R' U R D'" }
{ "F' D2 L2 D2 F' D2 R2 F' R2 D2 B2 L U' R B R2 D2 L F2 B U'" }
{ "D2 L' B2 R2 B2 R U2 R D2 F2 R' F' L B2 D' R' U2 F' U' B' L2" }
{ "L2 R2 F2 U L2 F2 R2 B2 L U' B' R D2 B2 U' F' B U' R2" }
{ "B L' B F U2 R B L' U B D' B2 L2 D U2 B2 U2 B2 L2 D" }
{ "U2 B2 R2 B' D2 L2 R2 D2 L2 D2 F2 R' U F2 B' R' U' L R' F' L2" }
{ "U2 B2 U2 F' D2 L2 F' L2 F U2 F L' D R' U' D' B U2 D2 L R2" }
{ "F2 B2 U2 F2 R' U2 R2 U2 R' B2 R F' U R B' L' U' F L2 F U'" }
{ "B L2 D2 B2 R2 F' U2 D2 F U2 B R' U' L' D2 F D R2 U B2" }
{ "L2 B' D' U2 R2 B L U R' F2 L2 D2 L2 B R2 B' L2 F D2 B2" }
{ "R' B L' U' R D2 R' F2 R' B' U2 B U2 B D2 U2 L2 B U2 F" }
{ "R' U B F D' R' L U L' U' F U2 B' F2 L2 B' R2 D2 B2 U2 R2" }
{ "D' L2 R2 F2 R2 U R2 D R2 D' R2 B' R2 B2 L' F R' U L2 F B'" }
{ "U2 B2 L2 B' R2 U2 F2 U2 F' L2 B2 R' D' L U' B2 R' F' D B' D'" }
{ "D2 L D R B R D2 F' D2 L' D2 B2 L2 D L2 D' F2 R2 D' B2" }
{ "R2 B' L B' F' R' L2 D L' U' R2 F' D2 B F2 D2 U2 R2 F U2 R2" }
{ "R U R2 U2 B' F R' B' D' B' L2 B' U2 R2 B' D2 F R2 F'" }
{ "B U2 L D U2 F' U B L' D2 R2 U2 F2 R2 F2 D' B2 D' L2 B2" }
{ "L2 F' U2 F D2 B2 D2 R2 F' R2 D' F2 L' B R2 D2 L2 R' U' B2" }
{ "U' L2 U F2 U R2 B2 R2 B2 D' B' U' B2 R F2 R2 F L R' F2 B'" }
{ "L2 D2 B' U2 F L2 F' D2 F2 D' F D2 L2 R' D L' F B' U R D'" }
{ "L2 U' L U' B2 L B F' R' D2 B2 R2 D U2 B2 D' L2 F2 R2 D" }
{ "B2 L B2 R' D2 R D2 F2 L D2 F2 B R U2 F' D L' B2 D' R'" }
{ "R2 B' R2 F L2 B U2 B R2 F L' F' U2 R U B' L D' B2 D'" }
{ "B2 D' F2 U2 D B2 U' R2 U2 D' F2 L' U F D R' B L2 F L' U'" }
{ "U2 F2 D2 L2 F2 R2 F2 U R2 D2 F2 L U F2 U2 R F2 U' F' B' R" }
{ "D2 B2 D2 L F2 R' F2 L F2 R D2 F R' U' D F B' L' D F' R'" }
{ "L2 R2 B2 D' B2 U B2 L2 F2 D2 F' R D R' U' L R' B' U2 R" }
{ "U2 R2 U' F2 D' R2 D2 L2 U F2 B2 L' B2 L B' L' D' R F' L' U" }
{ "F2 L2 D F2 B2 U D L2 D R2 D F U F2 L U R' U F U B'" }
{ "L2 F2 D' R2 U2 B2 R2 B2 D L2 U2 R' D L2 R2 B L B L2 F' R'" }
{ "L' B2 U' B L U2 B R2 U' L D2 L2 B U2 R2 F' D2 R2 D2 B2 L2" }
{ "B2 R2 F2 D2 B2 R2 D R2 B2 L2 U' F' U' L R' U B D F' R U" }
{ "R2 D B U' R' D F' L' D B U R2 U2 R2 F2 R2 U B2 U2 F2 D" }
{ "L2 B' R2 F' L2 U2 R2 F2 D2 F L2 U R B U' B R B' L2 D2 L" }
{ "R' U2 R F2 R F2 U2 R2 F2 R B' U R U2 F' U F2 L U' D" }
{ "B2 R' B2 D2 R' D2 R2 U2 L' B' U D F' B2 L' U2 L' U' L B2" }
{ "F' U2 B R2 D2 R2 U2 B R2 B2 D R2 B2 L F' R2 F R' B2 D" }
{ "D2 F2 L2 R2 D' R2 D R2 F2 U L' R' F D' R' U2 F B2 D2 B' D" }
{ "F2 R2 U' R F L' U2 R' B' D F2 R2 D2 L' B2 F2 R' B2 D2 U2 R" }
{ "L D2 F2 R' U2 L2 D2 R' B2 R B2 D' L' F' R B' R B2 L' U R'" }
{ "D L2 D' F2 B2 L2 R2 U L2 F2 L' U2 F D B' L U2 F' D' B' R2" }
{ "F2 R2 D F2 U' B2 L2 D' F2 D2 F2 R' B' L' U' R2 B R B2 R2 B'" }
{ "R2 U2 L2 D' F2 U2 R2 F2 U D F2 L' U L' D' F R' B' L' U' F" }
{ "B2 L B' D' F2 L2 F' R D' B' F2 L2 D2 B2 U2 F2 R' U2 R2 L' B2" }
{ "R' B2 U2 R' B2 U2 L' U2 L2 B2 R U F2 R' U2 F L2 U L2 D2 L" }
{ "F2 D2 F2 U2 B2 R' U2 R2 F2 D2 L2 F D' F' B' R U' F2 U' F' L" }
{ "D' L2 D2 L2 B2 U' R2 U L2 R2 U' L' F U R' F B D B2 L' F2" }
{ "B D2 F U R F D2 R B D2 R U2 R2 B2 L' B2 R' U2 L' B2" }
{ "L U2 R' B R' F' L' B' D' R B2 U2 R2 F2 U2 L2 U' B2 D F2" }
{ "D R2 F2 L2 B2 U2 B2 R2 D2 L2 R' B U F U D' R B U2 D2 B2" }
{ "F2 R' U2 B2 L' F2 U2 D2 R U2 R' F' R2 U' B2 L' B' D B2 L2 F2" }
{ "B' D2 R2 F2 B L2 B' L2 U2 F2 D2 R B' U L2 U2 F2 R' U2 F L'" }
{ "D L2 R2 D R2 D B2 U' F2 U R D B D2 L2 F R' B' L' U" }
{ "R' F2 L D B' U' L' U R U' F' R2 L2 U2 R2 B2 U2 F2 L' D2 F2" }
{ "U2 F D U B2 U2 L D' B' R B2 L2 B D2 F2 D2 F R2 D2 B L2" }
{ "B2 L2 F2 B2 R' F2 D2 L' F2 D2 L2 U' B2 L' U2 B D' F' U2 L'" }
{ "U L2 U' R2 D2 L2 B2 R2 D2 F2 U F' L U2 B2 R' F' L B U R2" }
{ "B' U2 L2 U2 F2 R2 F' U2 R2 B D B2 U F' L' R B' L' D" }
{ "L2 B2 D2 B2 R' D2 L' U2 D2 R2 U L' B L' F R' U B2 L U' B2" }
{ "L2 F2 D2 R2 F2 D' F2 U2 D R2 D2 B' L F L D R2 U' F2 L' B" }
{ "B2 U L' B' U L F U R' D' B' D2 U2 R2 F2 L2 F2 U2 R2 B R2" }
{ "B2 L' B2 L' U2 L U2 R F2 B2 L' B' D' L' B' U' D' F' U' R2" }
{ "B2 R2 U2 D' B2 L2 U' L2 B2 R2 B' R2 F L' F2 R' U2 L2 U2 B" }
{ "U' R2 B2 D2 R2 F2 D' F2 B2 U' F' L' B' L U' R2 B2 U2 L D' B2" }
{ "B' R2 D2 R2 B U2 B' R2 B' R2 F2 D' L F' R B2 L2 F' L B'" }
{ "R D B L' U L2 D F D B' D' L2 U2 R2 F2 R2 D R2 B2 D B2" }
{ "D2 U2 B U' R' D2 F' U' L B R2 F2 D' F2 L2 F2 R2 D' B2 D'" }
{ "B2 U' R2 D2 R' D' B U' R L' D2 R2 B' U2 R2 U2 R2 F' D2 F2 U2" }
{ "F2 L2 B2 D2 L' R' D2 R D2 F2 L' F D' R' B' U D F D2 L2" }
{ "L2 B' D2 L2 F' R2 D2 R2 B' R2 U' B2 L R B' R D2 L' U'" }
{ "B' L' F' R' D' L U2 F2 R' F U' B2 F2 L2 U' F2 U F2 D2 B2 U2" }
{ "R2 F L2 B' U2 B2 L2 F R2 U2 B' R B D L' U F' D2 R2 B D'" }
{ "L' U2 R2 U2 B2 L' F2 L' R' B2 D2 B R2 D L' B2 U2 R F' R2 B" }
{ "D2 B' D R U F2 L B' D2 R' B F U2 R2 U2 R2 B' D2 B2 F' U2" }
{ "R2 U2 R' B D' L' F' U2 L' U' R2 B2 D' B2 U' L2 U' F2 U2" }
{ "U2 B U2 R2 F2 D2 B D2 F L' U2 B' D2 B U2 F' U' F2 B" }
{ "F' R2 F2 D2 B R2 B2 R2 D2 L2 B R' B R U R' U L B U2" }
{ "L2 D2 L2 R2 U' R2 D' R2 D B2 D L B2 D' B' L2 U2 R' D2 B R2" }
{ "F2 B2 U' F2 D R2 F2 B2 U2 L2 R' B2 L' B2 R' B D R F U B'" }
{ "U2 R2 U L2 B2 D2 R2 D B2 U' D' B' L2 U' L2 B' L F' L R' U'" }
{ "U2 L2 F' L2 U2 F L2 B' D2 B U2 D L2 U R U F2 L' U' D' F'" }
{ "L2 B2 U2 L2 R2 D F2 L2 F2 L F' U' L' D' B2 D2 F D' B' R" }
{ "R2 D2 U B' U2 R L' F U B' L2 D2 R2 F2 D' R2 U' L2 D R2 D2" }
{ "R' F' L' D' U F2 R B' U L U' R2 L2 F2 D2 R2 B2 D' R2 U F2" }
{ "L2 D' F R L2 B' L2 B2 D' L' U' R2 D' B2 D' L2 D F2 D' B2 F2" }
{ "L2 B' R2 U2 B2 D2 F D2 L2 B D2 R' B' U F D2 L R' B' R F" }
{ "U B R F2 D' L F U B D' L2 B2 F2 D2 L2 F' D2 U2 B2 R2" }
{ "R2 U2 R2 U L2 B2 D' R2 U2 B2 L2 R U2 B L2 F L D' R U F2" }
{ "B D2 L' B' R' D' F D2 U2 R D2 R2 U' F2 L2 F2 L2 U2 L2 D'" }
{ "B' F R' U F' D2 L2 D L2 B U2 B2 U2 R' U2 L U2 L U2 R2" }
{ "D2 R2 F2 D B2 R2 B2 U L2 U' D' F' R' D' B L F U2 B2 L R2" }
{ "R2 B U2 F L2 B' R2 B U2 R2 B U F' R' B D' L B U2 F" }
{ "D U2 B D2 L F D R2 D2 R' D F2 U L2 B2 U F2 U' F2 D2 L2" }
{ "D2 U2 F L B' D U' R' F L D F2 U' F2 U2 B2 D F2 L2 F2 U2" }
{ "R2 U B2 D L2 U' B2 R2 D2 F2 D' B L F' R D' B' U' D' R2 D" }
{ "D F2 U' B2 U F2 D L2 B2 L' U' L2 U' F' B' D L' U F2" }
{ "R' U' F R' L' B' F' U R2 L2 B2 F U2 L2 F' L2 B L2" }
{ "D2 F2 D' R2 F2 U' L2 D F2 B2 R2 F D R' F L F' B2 U L D" }
{ "R B' F' D' F2 D R D2 B F2 D B2 D' L2 D U R2 D B2 F2" }
{ "B' D2 F2 R2 D2 B U2 B2 L2 U2 B R' U L B2 R2 U' B2 D2 B L'" }
{ "F2 R D' B' L D U L2 F' R' U2 L2 B' R2 B D2 L2 B' L2 B2 F'" }
{ "L2 F' L2 B U2 R2 D2 B R2 B' L' F D' R2 U2 L' U' F2 R" }
{ "R' B2 F2 L F L' F2 D' U' R B2 D2 L2 B' D2 B' R2 U2 R2 L2 F'" }
{ "L U2 B2 F' L F' D' U' R F D2 L2 U2 R2 B' U2 R2 B L2 D2" }
{ "U' F2 L2 D' F2 B2 L2 D2 B2 D' R2 F U L U' R B' L' F' U' B2" }
{ "D2 F R2 U2 F R2 U2 F' L2 B D2 R B R U L' F D2 R B' L2" }
{ "U2 R' B2 U2 B2 U2 L' B2 R' B2 R D' L F U' B R' B' D' B'" }
{ "B2 L2 D2 B2 U R2 B2 D R2 F2 U2 R F L' R' F2 B' D R' U' F'" }
{ "L D' U L D F R' U' L F R2 D2 F2 U' F2 R2 U F2 R2 D" }
{ "R' D R2 U2 B F L' D' F2 L' D2 B2 L2 B2 U F2 D L2 F2 U2 B2" }
{ "R B2 D2 L D2 F2 U2 R2 D2 R' D' B' R' D' F L' B' L2 R2 D'" }
{ "D2 F2 D2 R' D2 L F2 R F2 L B' R' F' U D F D2 L2 F' R'" }
{ "B' D2 B2 D2 L' B' R D' U' R' F' L2 U2 B U2 B' U2 R2 L2 F2" }
{ "F2 U2 F2 L' D2 L F2 L2 D2 F2 L2 U' B' D L F2 D' R' F' B D'" }
{ "F L2 F2 B D2 F U2 L2 B L2 R' B' L2 U R D' B' L' D2 F2 B2" }
{ "B2 U' B2 D2 L2 B2 D2 L2 B2 D' F R2 U R D' R' B' L' R B'" }
{ "B2 R2 U2 L2 D' F2 L2 D2 L2 U L2 F R F B L D' R2 B L2 F'" }
{ "B2 U2 L2 F' D2 B' R2 F2 U2 D2 B' L' B U2 R2 D' F' U L B2 U" }
{ "B' D2 F L2 B' L2 B' D2 R2 B2 D2 R' B' L' B2 L2 B' U' R U2 B2" }
{ "L2 F' D2 L2 B R2 B2 D2 B' R2 U2 D F2 R' D L' F' U R' F2 R" }
{ "L2 U2 D2 L D2 R' U2 F2 R2 D B' D2 B U D' F2 R D2 B'" }
{ "F D B2 U B U L D' R F R2 B2 U2 F R2 F D2 U2 F2 R2" }
{ "L2 R U2 L2 R' U2 F2 D2 R' B2 U2 D B' D' F R U2 B' U' L' D'" }
{ "D2 B2 U2 D2 F' U2 B2 R2 B L2 B D' L F' D' B' R' U2 B' L" }
{ "F2 U' L2 B2 L2 U2 F2 U' B2 R2 D F R' B' L' R' F' R' D B L2" }
{ "F' U2 R F2 L2 D' B R L' U B' D2 F U2 R2 B2 F' R2 L2 U2 F'" }
{ "D' L' B' R2 D' R U' F U2 L' B2 U2 F2 L2 U' L2 U' F2 U R2 B2" }
{ "U2 F' B' R2 U2 F D2 F' L2 U2 D L2 B' L2 F L' B D R' D' F'" }
{ "R' D2 B2 D L D' L2 F' L' U B2 F U2 R2 B' R2 F' R2 B D2 U2" }
{ "F' B' L2 F' R2 F R2 B L2 R2 B' R' B' L R2 F R' D' L B' U'" }
{ "F2 U2 L2 B2 D2 L2 B2 L' F2 R U' L F' B L2 B2 U2 R' U2" }
{ "R D2 L U2 D2 F2 L U2 D2 B2 R' F D B' L R U L' U2 R2 D2" }
{ "U' F U R U L B' L D2 F2 U2 L2 F2 U' B2 D' R2 L2 D2" }
{ "F2 U2 B R2 F L2 B U2 R2 F U' L' B D' R F' U' F2 L' B D'" }
{ "F' R2 F2 D2 R2 F' L2 D2 R2 F2 L2 R' F' L' B L' D' L U2 R' F'" }
{ "L2 D R2 U F2 U2 R2 B2 U F2 B R B R B' D L R F' D B" }
{ "R2 U L D' F U2 L' F R' U2 F' L2 B2 R2 D2 F' R2 B D2" }
{ "D R2 D R2 D2 F2 D' R2 F2 D B2 L R' U' F2 D' F D' B' R'" }
{ "L U2 L2 F2 L' D2 R D2 L' U2 R2 D' F' B' L U' F D2 B L U2" }
{ "U' L2 D2 B2 R2 D' F2 U' B2 U' D' R F R U L D B L' D2 R'" }
{ "B R L2 F D' L' B R' F D2 B2 D' L2 U F2 U B2 R2 F2 D'" }
{ "F D2 L2 B D2 R2 B U2 L2 F' U' R' U L' D B' D2 L2 B R'" }
{ "L B F2 U' F' L' D F2 L D R2 D' U2 F2 R2 D' U2 F2 R2" }
{ "B L2 D2 R2 B2 L2 F' B2 U2 F' R2 D L B R' F B' D2" }
{ "R2 B2 D F2 L2 U' R2 U2 L2 R2 F2 L' B2 R B L' R F2 D2 F'" }
{ "D2 F L2 B' R2 F2 U2 R2 U2 L2 F2 L F2 B R' U F' R' B' D2 B'" }
{ "B U F R' D R' B2 U2 R B R2 U2 B L2 F' L2 D2 L2 F' U2" }
{ "B2 U2 F2 L2 U L2 U R2 U L2 F B L D' R B R2 U' F D' R2" }
{ "D2 B R2 B' L2 U2 F' U2 D2 B' R' B2 U2 F D F' U R B D2 F2" }
{ "U2 D2 R2 B2 L' U2 L R2 D2 L2 F2 B' R' B' R2 F' L' U D F' L'" }
{ "D R D' F2 L' B2 U2 B D R' F' R2 U2 B2 R2 F R2 B' D2 B" }
{ "B2 R U2 D2 B2 L' B2 R F2 U2 L F' B' L R' F' L U B2 L" }
{ "F2 B2 D' L2 D' L2 F2 D' F2 U R F R' B' U L' D B L2 B'" }
{ "L2 F2 U' R2 U2 B2 L2 B2 R2 U2 F2 L F R' D2 F B2 U2 D B U2" }
{ "D B2 L2 D' L2 R2 D' F2 D L2 U2 R U' L' B D2 F D' R U D" }
{ "F2 L2 D B2 U' L2 D B2 D' B D L' U2 R B' D L' R'" }
{ "L' U2 R' F2 R' B2 U2 L2 B2 U2 L U' F' L' B2 L2 B' U2 R' U B2" }
{ "B' R2 F2 U2 F' L2 F U2 B' U2 D2 R B U L R U2 R B' U R2" }
{ "D' L2 F2 U F2 L2 F2 B2 R2 U' D R' D B D F' L' R F' U2 D2" }
{ "U' F2 D' R2 F2 U L2 U L2 D L2 F B U' R' D R' U' L' R' U" }
{ "B F' R D' B2 U F D' U' R' D2 B' U2 L2 U2 L2 B D2 B F L2" }
{ "R2 F' R2 B2 D2 B' L2 F' L2 R2 U2 D' F D2 L R' F' L2 U D R" }
{ "D2 R B2 U2 F2 R' F2 R' F2 R U2 F L2 U' F' U2 D' B' D' L' R" }
{ "D2 B D2 L2 B L2 F' L2 U2 B' R U D2 R B' L U F R2 U2 D2" }
{ "D' R2 D B2 U B2 U' R2 U L2 D2 L' D R' D' B' L2 U' R U F" }
{ "D L2 B' D R' F' D' U' L U L2 D' R2 F2 D2 F2 U' R2 F2 U" }
{ "B L2 B U2 L2 R2 B' U2 F2 U2 B' R' B2 U' L' F' L U R' B2" }
{ "B2 R2 F2 D F2 L2 B2 R2 D' B2 D' R U R' B' U D' F L R' D2" }
{ "L' B' F L2 U2 L' D' R' D R2 D2 U2 R2 B2 L2 B U2 B' R2" }
{ "R2 F2 U F' R' L2 B U B D' F' R2 D2 B L2 B2 R2 F L2 F" }
{ "R2 D L2 B2 L2 U' D' L2 U B2 R F' D' L F2 B R2 D L B'" }
{ "D2 F2 U' F2 U L2 U' R2 B2 L2 U2 L B L F L R F D2 B'" }
{ "B2 U B2 D R2 U2 L2 B2 D' R2 D B L' B' D R' B2 D F' U R'" }
{ "B' D2 L2 U L' B2 F L' B2 R B2 U2 B' U2 L2 U2 F R2 F L2 D2" }
{ "B L2 B L2 D2 F R2 D2 F2 D2 F2 L U B2 R F U L2 U' D2 L" }
{ "D2 F2 L2 F U2 R2 F U2 F R2 B L' D' L U2 R2 D2 R U' B R'" }
{ "R2 B R2 F' B2 D2 F U2 B' D2 F U' D' R' D L F' B L' R2" }
{ "F' B' R2 B' L2 D2 F' U2 D2 F2 L2 D R2 U L B' U R F' L D2" }
{ "L2 B2 D' L2 R2 D B2 D R2 F2 D B' U' B D' R' F B' L R U2" }
{ "B D2 L' F2 L B2 L2 D F' R B2 R2 D2 B2 F U2 B' F' U2 R2 F2" }
{ "B D2 B' R' L' F2 U2 F R' B' U L2 D F2 D' L2 U2 F2 R2 U" }
{ "B2 D' R2 U2 D R2 U F2 B2 D R2 B' L' U' F R U' R2 B' U F2" }
{ "D' L' D' R D' B U L U L F2 D2 F2 U B2 F2 U2 R2 U R2" }
{ "F R B' F2 R2 U R B2 U2 R' F L2 B' R2 F' D2 F' D2 R2 D2 F" }
{ "L D B F' L' U' L2 U' B' R2 D2 B2 L2 U R2 B2 U' F2 D2 U" }
{ "D B2 R2 B2 R2 D' L2 D' B2 D' B2 R' B' U F L' B D2 L2 B' L'" }
{ "B2 D F2 D2 B2 U B2 L2 U F2 D2 B' U2 D L2 B2 L U' R' B' R" }
{ "R D' U R B R' F' L' D F' R2 D2 U2 B' L2 U2 R2 D2 B2 U2" }
{ "R2 D2 R2 F' B' L2 F' R2 B R2 B2 U B2 D' F2 R F B' L' U" }
{ "R2 F' U2 D2 B' L2 D2 F' L2 R2 F' R B2 L D F R' U' B' D' B2" }
{ "F' L' B' F' R' F D' B' U' R D' B2 R2 D2 L2 U' R2 D' L2 U B2" }
{ "R B2 L F2 U2 L2 B2 U2 F2 B2 U' B R' F D2 B' R U D B'" }
{ "L B2 U2 L' D2 B2 R F2 R F2 R D' R F2 L R2 U2 D F' B R'" }
{ "F2 D F2 U R2 D B2 D2 R2 B2 D' F U R' U' D' B' U2 L U2 R2" }
{ "F2 R U2 R' D2 F2 L F2 D2 L B2 U F' L' B U L2 R F R2" }
{ "D2 B' U2 R2 F' D2 F2 D2 L2 B L' F' U2 R2 F2 L' U D F R" }
{ "F' U' B L U R F2 L2 U B R2 D2 B U2 B2 U2 R2 B2 R2 F2" }
{ "F' D2 F' U2 B' L2 U2 B' U2 D2 B2 L D F B' D' R U' L B R2" }
{ "L2 D R2 U F2 D R2 F2 B2 D F2 B R' D2 B2 D' L2 F L R' B'" }
{ "B D2 B2 U2 F' D2 F D2 L2 F2 U' F L' U D' R' F' R2 B D2" }
{ "B2 L2 B2 U L2 U' R2 U F2 B L F2 L F B' L R' U F' B'" }
{ "B2 F2 R2 L B D R' L2 B' L' U L2 B2 D' F2 L2 B2 R2 D2 R2" }
{ "D2 R2 D L2 U L2 D' B2 U R2 B2 L' U B' L' F2 R2 B R' F' R'" }
{ "D2 L2 F2 B' L2 U2 F2 U2 F2 D2 B2 L' B D2 R D' B' U R' U' D2" }
{ "R2 B2 R2 U R2 D B2 D F2 L2 D2 R' B L' F2 D' L' F L2 R' D'" }
{ "F2 L2 F2 B2 D R2 U' L2 D2 B2 D' B L U F R' D2 B' L2 U2 D" }
{ "L2 U L2 D2 F2 L2 U D2 F2 B2 R U' F L B L2 U' R' U2 D' B" }
{ "D2 R2 U2 L' B2 U2 F2 U2 L2 D2 F' U L F D2 B D' F2 L B'" }
{ "B' U2 B2 L D2 R2 B2 F' R L2 U R2 F2 R2 D2 F2 D' F2 D' L2" }
{ "D2 F2 R2 B' U2 F B L2 U2 B' D' B' L2 F U2 L2 D2 L' R' B D2" }
{ "L U2 F2 R' U2 R2 D2 R F2 R' U L R2 U2 R' F' D2 B L' R'" }
{ "F' L2 D' R' L F' D B' R' U F2 D F2 D2 F2 R2 D B2 L2" }
{ "F2 D' F2 U' L2 F2 D R2 U' L2 D' R D2 B' U2 R B2 U' F L" }
{ "D2 F2 U2 R2 B' L2 F2 L2 B L2 U2 R F U' L U2 F' B2 U2 B' R'" }
{ "B2 D2 F2 D B2 U' R2 F2 B2 U D R U L R2 D2 F' R U' L' B2" }
{ "R D R L' B R L B2 U' R L2 D2 L2 B R2 B2 F' L2 D2 U2 B" }
{ "B' D2 L2 U2 R2 B' R2 F2 B' D2 F U' F R F' B R2 D2 F2 R' B2" }
{ "F' D' L U B' F U R2 F R' D2 B2 L2 F2 U' B2 U R2 F2 R2" }
{ "B' R' L' B2 R' B R F D' U2 F U2 L2 B2 D2 U2 F' R2 L2 F'" }
{ "B D2 L2 F R2 F R2 B2 L2 R' F R B' L B2 R F2 U' F'" }
{ "F2 L' B2 R B2 U2 L' B2 L2 F2 U2 F' R' U B' U2 L' F L2 U2" }
{ "R2 B' D2 F' L2 D2 B2 U2 B L2 F2 R F B' D2 R' D' L2 D2 B' R2" }
{ "B2 R2 F2 U2 B2 D' L2 D F2 U' L' U2 R U2 D B' L' F' U2 L' R'" }
{ "R2 D' F2 D2 F2 B2 R2 F2 D' F2 L2 B' R B' U' F L' B' L2 U B" }
{ "F2 L F2 L' F2 B2 U2 R F2 D2 L2 U L R2 F' B' L2 D F2 U' B2" }
{ "R2 B R2 D2 F R2 F2 B' D2 L2 R2 D' L' D' F' R' B' U D' R2 B2" }
{ "L2 R2 U L2 U2 F2 D2 B2 L2 D R' D F U' R D F U L D L" }
{ "B2 L2 D' R2 U2 D' R2 U2 B2 D' R' F' B' L D L B' L B R" }
{ "U' B2 U' R2 U2 L2 D R2 B2 D' L R2 U2 F U D' R B L D F'" }
{ "U R D2 B' F' L' D2 U' B R' B2 U F2 R2 U F2 L2 F2 D' U" }
{ "B2 U' F2 L2 B2 R2 B2 D' L2 U2 F2 L F L2 R2 F R F L' B' U2" }
{ "F2 D2 L2 B' D2 L2 F U2 F D2 F L R' B L' D2 L D' F' R2 B'" }
{ "B2 D2 F2 U2 L2 R' D2 F2 R F2 R' U R' B L2 B U' L2 U2 F' D'" }
{ "B2 D2 B' D2 F U2 F D2 R2 U2 B2 R' F2 B' R' F U R' F2 U'" }
{ "R2 D R2 U' L2 U' F2 L2 B2 R2 D L U2 F' U R2 U' B L R U'" }
{ "F2 L2 R2 U L2 F2 U' D2 L2 R2 D' B' R' F' U2 L R2 D L R D'" }
{ "U' F2 D L2 D R2 B2 R2 F2 U2 D' L' D' L' B D F' L R' F B'" }
{ "R2 D L2 R2 B2 D R2 D' F2 D' F U' B' U D2 L D2 B' D' L2 R" }
{ "F2 D B2 R2 U2 F2 R2 U' L2 U R2 F' R D' F L U' B' D F' U'" }
{ "B2 R2 U2 F2 L2 U' R2 U' L2 R2 D' F B' U R B2 L2 B' R2 D' B'" }
{ "R2 U2 F2 B2 D' F2 B2 D' B2 U' L F' U' B R' D2 B2 U2 F2 R B'" }
{ "U F2 U' L2 D' R2 D2 F2 D R2 D' B U' L2 D2 B L U F R' D'" }
{ "F' U2 B U2 D2 F' U2 L2 F D' L U D F R F B L'" }
{ "F U2 L2 F B2 L2 B L2 R2 F' R F U2 D2 F2 L2 R' D' B' L2 F'" }
{ "U2 R2 B2 R2 D L2 B2 U L2 R2 D' F' L' F2 B' R' F R2 F' L2 U'" }
{ "F2 L2 F R2 D2 R2 D2 F' R2 F' B2 D' F U' B L' D2 F' L' F L'" }
{ "B U2 D2 B2 U2 R2 B R2 F B2 L2 D' B' L' R' F' D' R' F2 U B2" }
{ "F2 U2 R2 D' L2 U B2 U2 L2 D' R B' L' R2 U' F2 D2 B' D2 B2 U2" }
{ "L D U B' R' D' F' L U R2 F' D2 B' F2 L2 F' U2 B D2 U2" }
{ "R2 B' U2 F R2 F B' R2 D2 B D2 L D R2 U2 R' B' U2 L2 F' D" }
{ "L2 D2 F2 U' R2 U R2 F2 U' B2 R' U' F B' R2 U' L U' R U2" }
{ "R' B L' F' D R2 B' U' R2 U R2 L' D2 F2 D2 L U2 F2 R D2 B2" }
{ "U2 B2 U R2 U2 B2 D' F2 U F2 B R' F2 L F L2 D' B' U2 R' F" }
{ "R2 F R2 U2 F B2 R2 U2 D2 B2 U2 L' F2 R' U F' R2 F' R B U2" }
{ "B' L D U2 R L F2 L' U F D L2 D' R2 L2 D' R2 D' F2 R2 D'" }
{ "D2 B2 U' L2 R2 D' L2 U R2 D L F R' F U D' B D' F' D' R" }
{ "L D2 U B' F U2 R' U F' R2 B2 D2 L2 D' R2 F2 D B2 L2 B2" }
{ "B2 L2 B2 R2 B' U2 F R2 U2 R2 D2 L' D' L2 F' B L B2 U' R' D2" }
{ "U2 L2 D2 F2 R2 B' U2 F' L2 U2 B U D' F' U' L2 D R B L F" }
{ "F2 R2 F R2 U2 B' L2 B L2 F R2 U' F' L' U2 L2 R' U B2 R B'" }
{ "U B2 L2 F2 R2 D' B2 R2 U' L' U' B2 D' B' U D F' R' B2 D'" }
{ "D2 L2 D2 F' D2 R2 F' B2 D2 L2 F D' F2 L D2 R' F' L' B D F'" }
{ "U2 B2 U2 D' B2 D L2 D2 F2 L2 B2 R F' B' L' R' U D' R2 F" }
{ "B2 U R2 U D B2 L2 D2 B2 R2 D' F L' B D L2 U' D2 F2 B L'" }
{ "B' U' L' D' L2 D' F R B D' U2 L' U2 R' U2 L' B2 F2 U2 R B2" }
{ "R U2 R' B' L F U2 R' B U F2 U' L2 B2 R2 B2 U' B2 U2 R2" }
{ "L2 F L2 R2 B2 R2 F' L2 B U2 L' R U' R' U F' D' R U D" }
{ "D' L2 U F2 U2 B2 U2 B2 D' L' F' B R' U' F2 L2 F2 D B2" }
{ "F2 U2 L2 B2 D2 R2 F' R2 B L2 U2 D' R2 B D2 R' U' D R F R'" }
{ "U2 L2 B2 L2 D2 R2 U R2 F2 U2 L2 B' U' D2 R' D2 B L F' U D2" }
{ "U2 B' L2 F' D2 F U2 L2 B' L2 D L' D2 B' D' R U F' R2 U2 B2" }
{ "U2 B' U2 F' U2 L2 B L2 F2 L2 D F2 D' R' U' F' R U D2 B" }
{ "D2 B' R2 F' D2 R2 D2 B L2 F2 R' B2 U L' F' R U' L' B2 L" }
{ "F R' D2 B2 L' U' B' L' F R2 D' R2 F2 R2 F2 L2 U2 F2 R2 U'" }
{ "L' U2 F2 L' B2 R' U2 D2 L2 F2 R2 D' B' R' F' R' D' L' U' L2 D'" }
{ "L2 D2 R2 D B2 U' F2 L2 B2 U2 R2 F' D' L F R' F2 B R B2" }
{ "F2 L2 D2 L2 U' R2 U R2 D' B2 U F L' U F B2 D2 B' L' U' R" }
{ "D R L D B' R' F' U' L' F R2 B U2 F' D2 B R2 F L2" }
{ "D2 F2 R2 F2 L2 D F2 L2 D' L2 D2 L D B' D' R' D L' F U' R" }
{ "U L2 R2 D' F2 L2 U' D L2 D' F R U2 L2 R' D2 F' D' L R B" }
{ "D B2 U' D2 L2 U2 F2 L2 F2 R2 D' F D B R' U' F' D' L' U R'" }
{ "U2 F2 D2 L' B2 R' D2 L2 R2 F2 D2 B D L2 F' L B D L' R' B'" }
{ "F2 D2 F2 B2 L B2 D2 R2 F2 B2 D2 F L U L2 R' D2 F' U2 R2 D" }
{ "R2 B U F L B' L2 U R L2 B' L2 D2 F2 L2 F L2 F' U2" }
{ "B U2 B L2 F' D2 L2 B U2 R2 B D R' F' U B R2 U D' L U2" }
{ "U2 R2 F' L2 U2 L2 U2 F2 D2 F2 D2 R U D L' B' L2 R2 U' R F" }
{ "D L' D2 U2 L2 F' L' B D U2 R2 B' R2 B' L2 B D2 B2 R2" }
{ "D2 B' U2 B2 D2 B' L2 F' B R2 U' R U2 F U L' D2 F' U' D" }
{ "B2 D' R2 D' F2 B2 D2 B2 L2 D' L2 R U2 B L U' F2 R D' B' D'" }
{ "L' U2 L F2 R D2 L' F2 L D2 R B' L' F' B' U' L2 U R' U2 F'" }
{ "L2 B2 R2 B U2 B' U2 B' U2 R2 B' D R2 U F' D2 R' F' L' D" }
{ "L2 F2 U' L2 U2 D' B2 U' F2 R2 U2 B D R F' U2 D B L R' B" }
{ "L U' B' U F' R F' U' L B R2 B2 R2 B' U2 F R2 B' L2 B2" }
{ "U2 R' F2 L U2 L D2 F2 L U' F' R' B R D L D2 B2 D2 R'" }
{ "F2 R2 U L2 B2 U' D2 F2 L2 F' U' R2 F' L R U' R2 F' R'" }
{ "L B' U L' D R' F' L' D B D U R2 F2 U' R2 B2 R2 D2 L2 D2" }
{ "R' B' F2 U' R U F D L' B2 U2 B' F U2 R2 F2 U2 F' U2 L2" }
{ "D2 L' U2 F2 R' U2 F2 D2 L2 B2 R B R2 F' U2 L U' D2 L' F2 U" }
{ "U' R2 D F2 L2 U' L2 B2 D2 B2 L2 R' B L F' B2 L2 D B' D2 L" }
{ "R2 U D L2 R2 U F2 L2 B2 D L' B D2 R2 B' U B2 R U B'" }
{ "F' R2 B' L2 F U2 F' L2 F2 U2 L2 R U' L' F U2 F L' U' F B'" }
{ "R2 B' R' U' B2 R' F' R' D' L' B2 R2 U' B2 D' R2 U2 L2 D U R2" }
{ "R D2 B2 R' D2 F2 L R F2 L' B R2 U R2 F R' U L U R'" }
{ "L2 F' D2 B' D2 B D2 B2 R2 B2 U' B2 L' D R U R B R D2 B" }
{ "R D2 L U' B' R' D R2 L' B U2 L2 U2 B2 L B2 D2 L B2 D2" }
{ "D' B R' U F2 U2 F L U' B2 F2 L' U2 R2 D2 L' D2 L' D2 L2" }
{ "F2 L2 U2 R2 D2 R F2 D2 R U2 D2 F L U' B2 U R' F2 U' D2 F'" }
{ "D2 B' L' F' R B D' L2 U B2 U2 B L2 D2 B U2 F2 U2 B U2" }
{ "U2 D2 R' D2 L' B2 R2 D2 B2 L D2 B U' R2 U F2 B' L F' U' D'" }
{ "D' F2 D' B2 D F2 D' F2 D L2 D' F' L R' U L' U B' D2 F R" }
{ "L2 U F2 U2 B2 L2 F2 U' B2 U' B U F L D2 R2 F' D2 R' B'" }
{ "U2 F2 R2 U2 D' L2 B2 U F2 D' B2 R F R F L2 B' L F B' D" }
{ "F2 L2 F' D R D2 L2 B D2 L' B2 D U2 B2 U R2 B2 R2 D B2" }
{ "R2 F2 D' F2 L2 D L2 B2 D' L2 U L' U R B L F L' R D2 R2" }
{ "F D' R2 D2 U R B' U B' D2 R U2 R2 U2 F R2 F R2 U2 B R2" }
{ "L2 B' L2 B U2 D2 R2 D2 F2 D2 B2 U' B' R' B2 L U' R F' L B'" }
{ "L2 D2 L2 U2 R2 F' L2 F B2 U2 R D R' F U D' B U2 L' B2" }
{ "D R2 B2 D2 B2 U L2 B2 D' F2 D2 B' L D B R U F2 U' F' L2" }
{ "R F2 L' U2 R' U2 B2 R' B2 U2 R D' F' D2 L B' R F R'" }
{ "U L2 F2 U F2 U2 L2 R2 D' B2 U' B' R U L R B' D R' F D'" }
{ "U F U B' R B' R2 B2 F' L' B2 D L2 U2 F2 D' L2 D R2 D" }
{ "R' F' D2 U R' U' L D U2 F D U' L2 U' B2 F2 R2 F2 D R2" }
{ "U2 B' D2 B' R2 U2 L2 U2 F2 L2 F U' L' B' D L2 B U2 D2 L B2" }
{ "U' L2 F2 R2 D2 F2 D' R2 F2 L2 D' F L2 R U F2 D' F' R U B'" }
{ "F' U2 L2 B' D2 F' D2 R2 B' R2 U2 D L B' R2 U2 F' B' U2 R' U'" }
{ "B2 L B2 U2 R' B2 L F2 D2 L D2 B' L' F D B L' U2 B2 D2 R2" }
{ "F2 U F2 D B2 D B2 R2 U2 D' L R D' L2 F' R' D2 B' L R F'" }
{ "B' U2 F' R2 B U2 R2 F' B2 D2 R' U' L2 D B2 L F' R U' R2 U2" }
{ "R2 F2 R2 F2 U' B2 D' R2 U L2 F2 B' U' R B2 U F B L B D'" }
{ "F U2 R2 B2 U2 B D2 L2 F2 L2 D2 R' U2 B U' R B R B U D" }
{ "F2 L2 B2 D R2 U2 R2 D2 B2 U R D' B' U' D F' U2 R D' L U2" }
{ "U' F R' L' U L D L F' D2 F2 D2 R' D2 L2 D2 L F2 D2 R'" }
{ "U2 F2 R2 B D2 L2 F D2 L2 U2 B D' F2 D2 F D' B L R' U'" }
{ "R' F' D B L' D2 L2 D' B2 L B2 U2 L2 D2 R2 D B2 D R2 L2 D2" }
{ "R B2 L R2 D2 B2 R' U2 B2 L2 D R' U D2 B L F D2 R2 D' F'" }
{ "L2 D2 R2 F2 D' L2 F2 R2 F2 L' D B U L2 R U L U F" }
{ "L B2 D2 F2 R' U2 B2 R U2 R2 F2 U' F D2 R2 U2 F R D L F" }
{ "B2 R2 B' L D2 R F' L B D2 R2 D U2 L2 D' B2 R2 F2 D2" }
{ "R U2 R U2 B2 D2 F2 R' U2 L2 B U2 F' R U' B2 R U' D' B U'" }
{ "R F' D' R2 L' D2 B' F D' F' D' F2 D L2 U2 L2 F2 D L2 F2 R2" }
{ "D2 F2 R2 B' U2 F2 U2 B2 R2 B2 R' U B L' F2 D' R2 F' D" }
{ "U2 B' D2 B D2 F2 D2 B D2 R2 B2 L U L' D' B' L' R' D L' F'" }
{ "U R2 U' L2 D B2 D2 R2 F2 D2 F D' B L' U' R2 B D2 B R B" }
{ "F' D2 B L2 F2 L2 D2 B2 D2 B L2 D' L U' B' L' R' B U F2" }
{ "B' U' B2 U' B R' U2 F' U' R D2 R D2 R F2 L' U2 R D2 L" }
{ "B2 L2 F2 U' B2 U' F2 B2 D' F2 D' B' R' D R2 U' D F2 R F L" }
{ "B D' R' B' L2 B L B' D F L2 U' R2 B2 U' L2 D L2 B2 U'" }
{ "R2 B U2 B U2 D2 R2 F R2 F' U2 L F' B U' R F2 L2 U R'" }
{ "L2 B2 U' D2 B2 D2 F2 D' L2 U' D2 B U' L' B' D' F' U' R U' D2" }
{ "R L B' U L' D' U R2 B' U' F2 D2 R' B2 R' F2 L D2 R' B2 L'" }
{ "U2 L2 U' F2 U R2 D B2 U2 L B2 U F D L F2 D R B R" }
{ "U' R2 U2 B F2 U' R U2 F' L B2 L2 U' F2 D2 U' B2 D' L2 B2 L2" }
{ "D F2 R L F' L U R L B U2 B R2 D2 L2 B R2 F2 D2 F'" }
{ "R2 F2 U' L2 D' B2 U2 F2 U2 R2 F U2 D' L' B R' B U' D2 L2" }
{ "D2 L2 U2 L' F2 L2 F2 R' U2 R' U2 F R2 D B' R2 B' L' F2 D' F'" }
{ "B2 D2 R2 U2 D R2 D R2 B2 L2 R2 B' D R D L' F U2 D2 B' L2" }
{ "B2 U2 F R2 D2 B D2 L2 U2 L2 U2 D' F' B R' B' R2 U' R2 F L'" }
{ "R2 F' R2 U2 B2 R2 F' U2 F2 L2 D2 R' F B2 L B' D L2 D2 R' B2" }
{ "F2 L' U2 D2 B2 R' F2 D2 L B2 R' F D L' U R' F' D2 F2 L2 R" }
{ "U2 D2 F L2 U2 B D2 F2 L2 R2 U' B R' D F B2 R' B L' F" }
{ "D2 B2 U2 R2 F2 D2 B' L2 B2 L2 U' B R2 U L R F' U' B R' D'" }
{ "U2 L2 D B2 D F2 R2 D B2 D L' B R F2 L' U B2 U2 B' U'" }
{ "R2 F' B' D2 L2 R2 F R2 F U2 D2 L' U' B' R2 D' L R B2 D L" }
{ "D B2 R2 F2 U2 R2 B2 D F2 U' D L' D' B2 L B' D2 L' U D2 F'" }
{ "R' B' D B2 F L B' L2 U' R F2 R2 F2 D' L2 U' B2 L2 B2 F2 U2" }
{ "D B' L' F R' D' B' L' D2 L' F R2 B' D2 U2 B' U2 R2 B R2 F" }
{ "D' B' D' B2 R F L' D B' U B2 F2 R2 F2 D2 L2 D' R2 F2 U" }
{ "D2 R2 D2 F U2 F' D2 F' R2 F2 R2 U' R2 F2 B R' F D F2 L' B'" }
{ "R B U R2 D' L' D' R2 U' R2 F U2 F2 U2 F U2 R2 F L2 F'" }
{ "B2 L2 U2 R2 B' R2 B' D2 B2 R2 U' F R2 U D' B2 R' F L B' U" }
{ "D2 F2 U2 L R2 D2 L F2 U2 D2 B R' D B2 U2 R F' D' B' U' B'" }
{ "D2 L B2 R' B2 D2 L' D2 F2 D2 F2 B' D2 F U' R F2 U' L' D" }
{ "F' B' R2 B R2 D2 B' R2 F2 D2 L' B' D L B2 D2 R' B' L U" }
{ "F2 B2 R2 U B2 D2 R2 D L2 F2 B' L F' D' L R' F U F2 B R'" }
{ "D2 L2 B R2 B2 L2 R2 U2 L2 D2 F R D B' U' F' D2 R D2 F2 D'" }
{ "B' R L F' U2 L' D2 B' D U2 B2 L2 F' L2 B' L2 F' L2 F2 R2" }
{ "U2 F2 U' L2 R2 F2 U R2 B2 L2 B' L R' D R F' B2 L2 U B'" }
{ "B2 D L2 D' R2 B2 D' B2 D' B2 R' B D' R F B2 L' D R2 B' R" }
{ "U B2 R L2 U L U2 B' F2 R U2 R F2 R' B2 R' B2 L2 U2" }
{ "R2 D2 R2 U2 B' R2 D2 B2 D2 F U2 L' B L' U' L' R' F U' B' L" }
{ "B2 L2 B2 R2 U2 D' B2 U' L2 F2 L D2 F R B D' F' D2 R2 F2" }
{ "R' U2 L' F2 L' D2 F2 L U2 F2 L B U F R2 U' B' D L" }
{ "D' B2 U2 D L2 F2 U2 R2 B2 D' L U' F L R2 B' D2 L' D2 F2" }
{ "L2 F' L2 B U2 L2 B U2 B2 D2 R' U D2 F2 R2 D' F L' R B" }
{ "U2 B F R' U' F' R D2 L U B' D2 F' R2 F2 D2 L2 B R2 F U2" }
{ "L B2 F2 D U F' L U B U2 L2 D U2 B2 F2 R2 U' F2 U B2" }
{ "D2 B2 U2 F2 L D2 R D2 R F2 R D' R B L' B2 U F R' U D2" }
{ "L2 D2 F' L2 R2 U2 R2 F B2 R2 F2 R U B' L2 U' F U L' B2" }
{ "U D L2 R2 D' L2 D F2 U' B2 D2 L U R' B U' F' R2 U2 R2" }
{ "U2 D R2 U L2 D' L2 D' B2 D B2 R' F' R B L D B2 L B U2" }
{ "L' U' F' R' F' L' D2 B L2 U' F D L2 D B2 D2 U L2 B2 F2" }
{ "R2 D' R2 B2 R2 U D F2 U' B2 D2 L R' B R' F' B' R B L D'" }
{ "L2 D2 B2 U L2 D2 R2 U F2 L2 B U R B2 R' B' D' L' F' B R" }
{ "D2 B L2 B' D2 B R2 U2 R2 F' U2 D R2 F' R B' L F' D' F2 D2" }
{ "D R2 D L2 D' B2 D' F2 B2 D2 R' B' U L' D2 B D' L' B2 L' B" }
{ "L2 F U2 L2 F2 U2 L2 B2 D2 B' D2 R F L' D B' L2 U' D2 L2 D" }
{ "F2 U F2 L2 R2 U D2 B2 U L2 F' R' B L U D' F U' L2 R2 D" }
{ "R2 U' R F U B' U2 R F' L' B' R2 B2 F' R2 B2 L2 U2 F L2 B'" }
{ "R2 B2 R U2 R2 D2 B2 D2 L U2 R2 D R' B' U' D' F U L' D2" }
{ "B2 R2 U2 D2 F' D2 L2 B R2 D2 B R' F2 L' F L' R U' B' L F" }
{ "D2 B R' L B2 F' U' F2 L B D2 F' D2 R2 D2 B2 D2 F U2 R2" }
{ "D' B2 R2 U B2 D' L2 B2 D' R2 F2 B' R' U' L' U' B2 D' F' R D2" }
{ "L2 D' L2 U' R2 B2 D R2 U R2 D B U L' F2 D B2 D2 F L' R'" }
{ "L2 D2 F D2 R2 B R2 F D2 B' R B2 U' F' U2 B2 L' B' D' R B" }
{ "U2 B2 L2 F R2 D2 L2 F L2 R2 B L B' D R' F2 R' F' R U' L'" }
{ "D2 F R2 B R2 B' D2 L2 F' D2 R2 U L' F R' U D' B' U R' D'" }
{ "B2 L U' F' R U F2 D L B R2 B2 D2 R F2 R2 D2 R F2 R2 U2" }
{ "U2 R2 U L2 F2 U2 L2 D2 L2 R2 D2 R' D F' D2 B' L R' F2 R' U'" }
{ "D2 F2 U2 D2 F D2 B R2 F' L2 F2 L' F' B2 R D2 F' B2 U' B D'" }
{ "U2 L2 D' F2 L2 D2 R2 D B2 D' B2 L B' R B' U2 F' D L R' F2" }
{ "U2 F' U2 R' L D B' F R D F' U2 B' L2 B L2 D2 B D2 F L2" }
{ "B L' B D2 F R' D U F R' U' F2 D F2 R2 U R2 U' B2 D L2" }
{ "F' L2 F' L2 F' R2 F2 U2 F' L2 F' D L U2 F L' U B' L R D'" }
{ "D' R2 U L2 D' B2 U2 F2 R2 D F' L U2 F' R B D' F2 U' D2 B'" }
{ "D R2 U' L2 B2 U2 R2 B2 R2 D' B L F' U' R F2 U' D R2 F'" }
{ "F2 L2 D B2 U L2 D' L2 F2 U' B2 L F R' B' L D2 F D2 F'" }
{ "R2 B2 U F2 L2 R2 D2 R2 U F2 U' B L D' L2 B2 D2 L' B D R" }
{ "U2 B2 R2 U R2 F2 U' L2 U B2 D F L2 D' R' U' L' F B R U2" }
{ "F2 U' B2 R2 U' R2 B2 D L2 D2 F2 L F B2 L D B L' F2 L' R" }
{ "D2 B D2 F L2 U2 F' L2 F U2 L U B R2 F' U2 R F2 U F2" }
{ "B' D2 F R2 B L2 F' R2 B2 R2 U2 L' R2 D' B' R' F B D' L2 D" }
{ "B2 L2 D B2 D2 B2 U' R2 D2 R2 D L R' B2 R' F' D' B' R' U2 B'" }
{ "F2 U R2 U2 D' F2 L2 D R2 F2 L R B' R B2 D' B2 D2 R U F'" }
{ "U' R2 F2 D F2 L2 U' L2 D' L2 F' L R U2 B' D B2 U' F R'" }
{ "R2 D2 F2 R2 D2 B2 D2 B2 D B2 D L D' L' R U' F' L B U2 R'" }
{ "B2 L2 F2 L2 U L2 D L2 U2 F2 U' R B D' L' B2 U' B' U2 F R'" }
{ "L2 B' U2 L2 B' D2 L2 B2 R2 D2 F R F' B L' R U L2 F U2 B'" }
{ "U F2 D2 L2 B' U R L D' F' R2 D2 B F2 U2 B D2 L2 B L2" }
{ "L F2 U2 R' B2 L2 D2 F2 U2 F2 B' R' U D F L' U B2 D2 B'" }
{ "U' F2 U' R2 B2 D' B2 L2 F2 U2 L' B U L' B2 L F' R' B' D2" }
{ "F D' R2 U2 R' D2 L F U' R D L2 B2 L2 U2 F2 U L2 D' B2 U'" }
{ "B' F' D B2 L D2 F2 D' R' L2 B' L2 F D2 L2 F D2 B L2 D2" }
{ "F' U2 F L2 B D2 B' L2 B2 R2 F R' F R2 F' D L' F L' D F" }
{ "R2 D2 L2 R' D2 L F2 L' U2 F2 R D' B' R' F' B2 D' R F' R' D2" }
{ "B2 D2 B2 R2 B' L2 F' U2 B2 R2 D2 R F U L F B' U D' L2 B" }
{ "B2 R2 U' D2 L2 U F2 U D2 L2 F2 B U2 D' L' R2 B R2 B2 U' R'" }
{ "B D2 R2 D2 F' U2 F' L2 B' D2 B' L' U F' U2 R2 F2 U2 B R' U" }
{ "L2 D R2 U2 L2 D F2 U2 R2 D L2 B U F' D2 R' D L' B' L2 R" }
{ "B2 U2 L2 B' R2 B2 U2 D2 B R2 F2 L D' B L' U F R' U F" }
{ "U F2 U B2 U' B2 D' L2 D2 R2 U' R' D2 L F' L2 B2 U' B2 L B'" }
{ "L2 U' R2 D B2 L2 D B2 D2 F2 U' R' F' B' U F' L2 D' L U2 F'" }
{ "L2 D2 R2 F2 D' F2 L2 D R2 U' R2 B L' F B' R' U D' B' L' U" }
{ "L2 D' L2 U L2 D' L2 F2 U' L2 B U B2 L F' R' U' F2 B U' B" }
{ "D L2 U2 R2 D B2 R2 F2 D' R2 D' B' U L D F' R B2 L2 B R" }
{ "R L' B L B2 R2 D U' R' U L2 F' R2 B2 D2 F2 D2 U2 L2 U2 B2" }
{ "L2 B L2 F D2 B U2 L2 B R2 B2 D F' L U' B' U2 R' D2 B2 R" }
{ "F2 L2 D B2 D L2 U B2 L2 F' R' F2 B U' R D F' U F2 L'" }
{ "B2 R2 U' L2 U2 D2 B2 R2 B' U F U' L B R2 U' R' F2" }
{ "D' L2 U L2 F2 U B2 D2 B2 L2 D' B' D R F U2 B L D2 F" }
{ "F2 R' F2 D2 R' U2 R' U2 F2 R2 U2 F B U B2 D B' L2 U' R' U'" }
{ "R2 F L2 B L2 U2 B' D2 L2 F2 D2 R' B L R F2 B U' F R B" }
{ "R' L' D' B L D U L F' D' B2 R D2 L B2 L D2 B2 U2 L D2" }
{ "B L D B' L' F R' F R2 L U' B2 F2 U' B2 R2 D' F2 L2 U F2" }
{ "L2 B F2 D B2 R B' U' F L B2 F2 U2 B2 R2 U L2 U' L2 B2 D" }
{ "B R2 U2 F' D2 R2 U2 L2 B2 L2 B' R' B' U' D' L D R' F' R2 F2" }
{ "D' B' F' R2 B D L' B R' D2 B2 D2 B' U2 L2 B' F' R2 D2" }
{ "D R L D' R2 B' F U2 R' D' B2 L2 D' B2 R2 D2 U B2 F2 D" }
{ "L2 D' R B U' R U2 R2 L F' U' R2 U' F2 D' R2 U R2 U' B2" }
{ "R L2 D' B U' R U L U' B' F2 U B2 F2 U' B2 U L2 U2 R2 D" }
{ "F2 U2 R2 U B2 U2 F2 B2 U B2 D R D L B' D F R' F2 B2 U2" }
{ "B2 U2 L2 B2 D2 B' R2 F U2 L2 B' U' R2 F L D' B R' F R2 D'" }
{ "F2 B2 U' B2 R2 F2 R2 U' R2 D2 L U' B' R' F D R2 U' L' R2" }
{ "F D2 R F' D' U' F' L' U2 B D R2 D R2 U L2 F2 D R2 U2 B2" }
{ "R B' D F D' R' U' B U2 B' L F2 L F2 R2 D2 B2 R' D2 R' D2" }
{ "U2 L R2 B2 L D2 R B2 U2 D2 R' B' R U B2 L2 F B2 L' U' D" }
{ "D B' R B L U R2 B' U2 F' R2 L2 D' F2 R2 D' R2 D U2 B2 U'" }
{ "F L2 B D2 R2 F D2 F U2 F' D2 L' B' R' D B2 L2 U2 R2 D F'" }
{ "F' U' L' B R' F D' R' D' R' F' U2 F R2 B2 U2 F' R2 U2 B' L2" }
{ "U2 F B U2 R2 F R2 F D2 B' D2 L D R U F' R U B' D2 R2" }
{ "U2 D2 F2 U2 F L2 R2 F2 U2 R2 F R' D' F L B2 L B' L R D2" }
{ "D2 L2 U2 B2 R2 B2 L F2 R B2 L U' L' D L D' B L' D B2 D'" }
{ "R B2 R' D2 L' U2 F2 B2 R D2 F2 D L F R' B D' L B' D B'" }
{ "D L2 D' F2 D R2 D' F2 D2 L2 F U' L' D B U' R' F2 L' D" }
{ "F2 B2 R' D2 F2 L' F2 B2 U2 L B2 D' F L' D R F L' B2 U2" }
{ "F' L' D2 U' L2 D' B F U' L B' U2 B D2 R2 B2 R2 D2 R2 L2 F" }
{ "L2 D' B2 L2 R2 U B2 D F2 B2 D' B D L' R F' L2 R' F B R'" }
{ "B L F2 D2 R2 L2 B2 D' B L D2 U2 R2 U2 F L2 D2 L2 U2 F' R2" }
{ "B' U2 B' U' F' D R2 B L' U2 L2 F2 U2 F L2 F2 R2 B D2" }
{ "L' D2 R U2 L' U2 R2 B2 D2 L R' F U F2 L U' D B' L' R' U" }
{ "R2 B' R2 B L2 B' L2 R2 U2 R2 B' U F R B2 L2 B' L F L D'" }
{ "B D B' L2 F' R F' L B' R' U B2 D L2 D2 U F2 R2 L2 U B2" }
{ "B R2 D2 F D2 F2 U2 L2 F' D2 F D' F2 L B' R F' U2 D L D2" }
{ "L' D' L B U F' D R2 B L B' R2 U2 B L2 F2 U2 R2 B' L2 F'" }
{ "U2 F' R2 D2 F L2 B' D2 B D2 R2 U' L D R' F' R' B L U' R2" }
{ "B D2 B2 U2 F L2 F' U2 F B' L' U2 D' R' D2 L2 R' D' B' U F" }
{ "B2 U F2 U' L2 D2 F2 L2 U R2 U2 B U2 F L U F' R B2 L B" }
{ "F2 D' B2 R2 B2 R2 D' R2 U B U L' D2 R D L' U' R' F L" }
{ "L2 D F2 L2 D B2 U' L2 B2 U F2 R' F U B' L2 U L U2 R2" }
{ "F2 D2 L' U2 F2 U2 R2 B2 L' B2 R B' L' F2 R F U2 D' R U B2" }
{ "B U2 R2 U2 F' R2 F' B2 U2 F2 B2 U L2 F R' F' B' R' D' L B" }
{ "L2 U' F2 L2 F2 U' L2 B2 D2 B2 U' L D2 B2 R' U2 F B' R' U' B2" }
{ "B2 R2 B2 R B2 R D2 L D2 R' U' F L2 R B' R U' D2 L' U" }
{ "U2 F L2 F2 B R2 B2 U2 B' L2 D L' R' F R' F2 U B U' R" }
{ "D B F2 L' D' R' B D2 B D' U2 R2 L2 B L2 F L2 F2 D2 R2 F" }
{ "B2 D2 B2 U R2 U B2 U D' B2 R2 F R D2 B' D2 B' L' D' R2 F'" }
{ "B2 R D2 B2 D2 L' D2 R U2 L2 D' R' D' B D' F R' U' L" }
{ "U' R2 D' F2 L2 D F2 U' F2 L2 B L2 D F' B L R' F U' B2 R2" }
{ "R D B' D2 U' L2 D2 L' F U' R F2 R' F2 U2 R D2 U2 L B2 R" }
{ "D2 F2 L2 U' F2 R2 U F2 B2 D B2 L R2 F' U B U' D2 B' R' B" }
{ "B' D2 F' U2 L2 F2 U2 L2 B D2 R2 D B L' R U2 L2 F D' B U" }
{ "B' U2 R2 U R L' U' B2 F' D F L2 F' D2 U2 F U2 F2 L2 D2" }
{ "L2 F2 B2 L' U2 F2 B2 L2 R F2 R' U' L' F R B2 D B' L F2" }
{ "B' U2 F U2 F2 D2 B' R2 B L2 F2 U' R F2 R2 B D' B' R2 F' L'" }
{ "B2 D2 F2 R2 U2 L' U2 F2 U2 B2 R' F L F2 B' U' B2 R2 D' R'" }
{ "D2 B D2 F R2 U2 R2 D2 F R2 U2 R' D' F L B' R' D2 B2 L2 R" }
{ "D2 F' R B2 D' B D2 U2 L U' R2 U2 R2 L2 B2 L2 D2 L2 F' L2 D2" }
{ "R D B F R' D L B2 D' F R2 U' R2 U L2 B2 D' F2 D R2 F2" }
{ "L2 D' L2 D2 R2 F2 D F2 U R2 D R' B' D2 L' U2 B2 D2 L' U' F" }
{ "R2 L' D2 B D2 R L D' B2 F' L2 F2 R2 D' L2 U L2 D2 F2 R2" }
{ "L' F2 U2 L D2 F2 L2 F2 L2 B2 D2 F' L' D2 B U' B2 D F2 B2 D" }
{ "B' R' B2 U2 L U L' D F R B' L2 F2 R2 F L2 F D2 L2 U2 R2" }
{ "L U2 B2 R2 F L U F R D' F2 U' R2 B2 R2 D2 F2 D'" }
{ "B2 L' B' U2 L2 D U' L B2 F' R2 F2 U' L2 U' B2 U2 F2 D' B2 U'" }
{ "F U R B' L F L' U R' U' R2 L2 D F2 D2 B2 R2 D F2 U2" }
{ "D' F2 B2 D F2 L2 B2 L2 U' D2 F2 R' B' L D2 R B U L2 R D" }
{ "B2 R2 D B2 D' F2 R2 B2 U2 L2 D2 B' L' F' U B' R' D L U' R2" }
{ "L' F U L2 D' R L F' L B' R F2 L' U2 L B2 R U2 B2 R F2" }
{ "R' B2 R' D2 F2 R D2 L' F2 L2 R' B U2 F' R F' D L' F D2 R2" }
{ "R2 B R' D B' D L2 D B' F' D2 R2 B2 R' L2 B2 D2 F2 D2 R D2" }
{ "F2 D' F2 L2 U2 D L2 B2 L2 R2 D' L B' R' F' D' R' U F2 B D2" }
{ "U L2 D R2 D R2 D2 L2 B2 D B2 R' F U2 F L' F U' L' D' B" }
{ "U R2 F2 D R2 D B2 D2 R2 D F D' R U' D2 R2 F B' L' R'" }
{ "U2 F2 R' B2 D2 L2 F2 B2 L D2 F2 B R2 U' L' D B' R D2 F R2" }
{ "B2 L2 U L2 D2 L2 D R2 F2 D2 B' U' L' B2 R U B' D' L' D2" }
{ "L' F D2 B L U L2 D' F' R L2 B2 F2 L B2 R' F2 U2 B2 R" }
{ "R2 F2 U2 R F' U B2 U' B' R' U' L2 U2 L2 U' L2 U F2 L2 U'" }
{ "B2 L B2 R' B2 R' U2 L' R' D2 R' B' D L2 F L' R F U B' L2" }
{ "R2 B2 L2 B D2 L2 U2 B L2 B' R U L F' R2 U' F' U D' B2 D'" }
{ "L2 D F2 L2 U2 F2 U R2 F2 D2 L' F U B R' F U' B' U L2 U" }
{ "U' L B' D R' B L F' D' L F' L2 D2 F' L2 F' D2 U2 L2 D2 B2" }
{ "D B2 L2 F2 B2 R2 U' B2 D L2 D2 B' R F B2 L F' R B U F2" }
{ "B2 U2 L' U2 R' B2 U2 D2 R' U2 L' B L' F R' U2 R2 D' F2 U" }
{ "U' F2 U' B' R' F' R2 B2 L' B F2 L2 U2 R2 D R2 F2 L2 F2 L2 U" }
{ "U2 F U2 B R2 F' U2 L2 B' D2 B' L D B U' R' D' B' U B2 L'" }
{ "L2 U2 L' D2 F2 B2 R B2 D2 F2 B2 D' B L' R U F' D' R F2 U" }
{ "L2 B2 R2 U F2 R2 U F2 U2 F2 D' F L B' U L D L2 U R' F2" }
{ "F2 L2 R2 F U2 L2 R2 F' R2 B L2 R F' L2 D L' B' R' U F D" }
{ "R2 U2 D' R2 B2 U' B2 D L2 F2 D2 R' B U2 L' U F U2 F2 L2 R" }
{ "D2 B U2 F' U2 R2 B' U2 F' B L' U2 B2 D L D2 F' U2 L2 R'" }
{ "D2 F2 D F2 R2 D2 L2 D2 B2 U' R2 B' U2 L' D R2 B U' L' R' U'" }
{ "R2 B L2 U2 F' L2 U2 R2 F2 L2 F' D' R B L' R2 U D' R2 B2" }
{ "D2 F2 D B' U' B2 R F U B R D2 B2 F2 R2 B2 D2 F2 U2" }
{ "R2 F2 R2 U R2 D B2 D B2 L2 D2 B L R F B R' F' L2 U B" }
{ "D2 L2 B2 R2 D F2 L2 U B2 D' L R B D' F' U2 B2 L U'" }
{ "R2 D2 L2 D L2 U' R2 D L2 D' L2 R' B' D' L' U2 F D2 F2 D L'" }
{ "F2 R2 U' L2 F2 L2 D R2 F2 U2 D F' L2 R' B' L F' D B2 D R2" }
{ "F2 L2 B' L2 R2 U2 B' L2 F U2 L2 U' F L F2 D' L' U' L' F' R'" }
{ "B2 L2 D B2 U F2 U2 L2 F2 D' F' R D B' L R U R' F' U R" }
{ "D2 L2 U B2 D2 F2 U2 L2 F' R U' L F' U2 D L2 U' F B" }
{ "R2 F2 U2 R2 F2 D' F2 U B2 R2 D2 B' L' F R' U F' R B R' U'" }
{ "U' L2 R2 F2 L2 U2 D L2 U2 D' B2 R F L' R2 U D' R F B2" }
{ "R2 B' L2 R2 B2 U2 F' R2 B U2 B L' F2 U' R B D L R B' L2" }
{ "R2 U2 F' R D' U' L' B' F' R' U2 B' R2 F U2 B' U2 B' D2 F2 D2" }
{ "D B2 R2 U' R2 U2 B2 R2 U B2 U' B' U L2 U2 F2 U' L R D F'" }
{ "L2 D' F' U2 L2 F' U R' L' F D' L2 F2 D2 R2 B2 D F2 U2 R2 U'" }
{ "L2 U2 F2 U2 B' U2 F R2 B2 R2 B' U' B2 L' F U2 R2 B2 L' D2 R'" }
{ "R2 U2 R2 U' B2 D' F2 B2 L2 D' B2 R' F B' D2 R' D L F D2 L'" }
{ "U2 B2 D B2 D2 B2 D' L2 R2 D' B U L' U2 F' B U' L2 R U2" }
{ "L2 D F2 U' B2 R2 D' R2 D' R' B' L2 U' R B2 U2 L B' L2 R' D'" }
{ "F' D' B' U2 F L F' R' L' U' F L2 F R2 B D2 F D2 B' U2 B2" }
{ "U F2 D' B2 U B2 U2 B2 D B2 L2 R' F' L' B' R' B2 L2 U' D2 B'" }
{ "F2 L2 D' R2 F2 R2 U' F2 D R2 F L' D L2 D R D F' B L' D'" }
{ "B D2 L2 D2 L2 F' B2 R2 U2 F U2 D' F' B2 R' F' L' D F2 L' F'" }
{ "B R2 B' D2 B U2 D2 R2 F2 U2 L2 U' B L D' B' R' U' D F B" }
{ "B D2 F' L2 F' L2 U2 F D2 B' L F' D F2 B L' R2 U2 R'" }
{ "F' D2 L2 F2 L2 F2 B R2 B D2 L R U2 F L' D' R' F L2 F D" }
{ "L2 R2 D2 F' U2 B' L2 R2 F' L2 B U' L' D F' L B' L D B2 L" }
{ "U2 L' B' U2 L U2 F' U R L' B2 L2 B2 U' R2 B2 U R2 D2 F2 U'" }
{ "F2 D2 B2 D2 L2 D2 L' B2 L' R2 D' B R' F L' B' U R U R2" }
{ "D' F2 R2 D R2 U F2 B2 U' D F2 B U L' R F L2 U' L2 U2 B2" }
{ "F2 U' L2 U L2 F2 D' F2 D2 F2 D F U' D2 L' U' L2 R' F B'" }
{ "U2 F2 U B2 U R2 D' L2 F2 D' F2 R' U2 D2 R D2 B' L' U2 F D" }
{ "F2 B2 L2 F2 R2 D R2 D' F2 B2 U2 L' F R2 U2 D2 R B2 L F' D" }
{ "U' B2 U F2 D2 L2 F2 U' R2 B2 D F R B' L' F R U' D2 B D" }
{ "R' F U2 R' F' U' F D F R2 L2 D2 L2 B2 U L2 B2 D U" }
{ "F U2 L2 D2 L2 D2 F' D2 B2 D' L R' F' D' B2 L B2 R' D" }
{ "B2 R2 F2 L U2 R' D2 B2 R2 F2 L2 U' L U F' R U' L B R2" }
{ "F2 D F2 D2 B2 D' L2 U L2 R2 U' B R B2 L2 D2 F' B D B2 L" }
{ "F2 B2 D' R2 U2 D' R2 B2 D2 L2 B' L' U' R F D' R' B' L2 B2 R" }
{ "F' B' D2 R2 F D2 R2 D2 F2 D2 F U R2 B2 D L' F' U R' U B" }
{ "R B U2 B' R' F' U2 F R' D U2 B' D2 R2 F R2 U2 B' L2 D2 B2" }
{ "B R2 U2 F L2 U2 F2 U2 D2 L2 B' L F B2 R U2 R2 U F L R2" }
{ "U2 R B2 R' U2 R' U2 R' B2 U2 F2 B' U' F2 L2 F' U' L R F D" }
{ "B2 U2 F2 R U2 L2 B2 D2 R' F2 R' F' R' B2 D2 B' R U D' L' F'" }
{ "R2 U B2 L2 U' D2 F2 L2 D' R2 D' F' U' L' B R' D F2 D' F R" }
{ "D2 R2 D2 B2 U2 F2 B L2 F' R2 B' L D2 L' D2 F2 U' L F R'" }
{ "B2 U2 L2 U F2 U F2 B2 R2 D2 B2 R F' B' D R U' L D' R2 D" }
{ "D' L2 D2 B2 R2 B2 L2 B2 D2 R2 D' B U2 R2 B R' B L' F U2 L" }
{ "B2 U' L2 B' R2 L U' B' D2 R B' R2 D' R2 F2 U L2 D' F2 D'" }
{ "D2 L2 U2 L' U2 B2 L R B' L' F' U' R' U B D L B2" }
{ "D F2 R B' U2 R' U2 F L2 U' F2 D' B2 D' R2 D' R2 L2 U2" }
{ "L2 U2 D2 F' U2 B2 U2 L2 F R2 D R B' L2 U' F2 L F' L R" }
{ "U2 L2 U2 F B L2 F U2 B D2 R2 U' B2 L2 R B' U' F B2 L' B2" }
{ "B2 U2 D2 B' U2 D2 B L2 D2 R2 B D' B2 R U D' B L' R' B2" }
{ "F2 R2 D2 R2 D' F2 L2 D R2 U' R' B U2 D R U' F B' L D'" }
{ "D2 R' D R B' R U L B F D2 F2 U2 R' D2 F2 D2 R L' D2 L" }
{ "F2 R2 D' B2 D' R2 D' F2 B2 D R B L' F' L' D2 R' D L' D" }
{ "B2 L B F2 U L' F' R2 B F2 U2 F2 R' D2 R' B2 R2 F2 R' B2" }
{ "U' R L2 F R2 B U L D' L2 B' L2 D2 U2 B2 U2 R2 F L2 B'" }
{ "R2 U2 R' B2 R2 B' R' U L B2 U2 L2 B2 L2 F R2 B' L2 F" }
{ "L' F2 R D2 F2 D2 L D2 L2 U2 D2 F' L D L B' U' F' L' F R'" }
{ "U' F2 L2 D2 R2 U2 R2 D' B2 R2 F' R' F2 B' R2 U' F' L R U2" }
{ "D L2 U' L2 D' R2 D2 F2 R2 U R' F B U L2 B' L R B U" }
{ "F' D2 L2 U2 R2 F2 U2 F2 D2 B U2 L' D F U' L B R' U2 F B2" }
{ "R2 U' B2 R2 U2 F2 B2 R2 D' B2 U' B U2 L' F' R' B' U R F" }
{ "B2 R U2 L D2 B2 L2 B2 R' F2 L' D F' B U' L' R2 F2 D2 L2 D'" }
{ "D' R2 U2 L2 U' R2 F2 U B2 D' R U2 D L' F D' F' B' R" }
{ "R2 U' B2 D R2 F2 R2 U' B2 R2 U R' F' R B' U2 F' R' F' D R" }
{ "F2 R D' L' U B R D' R2 F D B2 D R2 B2 D' F2 U' R2 L2 U2" }
{ "U2 L' U2 D2 B2 R U2 R2 U2 D2 R' U B L F' R B' L' B2 R2" }
{ "U L2 R2 F2 U' R2 U' R2 U' R2 F2 L' F R2 F2 R F' B U' L2 F" }
{ "D R2 U2 F2 L2 B2 D2 B2 D' F2 U' B R U' F' B' L' F' L2 B D'" }
{ "D2 F2 U F2 U' D' L2 B2 U L2 F' L B' U2 D2 F' L' R B' R'" }
{ "R L' B2 F' U B R' L B2 U' F2 U2 B2 U B2 D' L2 F2 R2" }
{ "R2 D' B2 U2 B2 L2 U2 D' R2 F2 L2 F' B2 R' F2 R2 U' D2 F' L' B2" }
{ "U' L2 D2 L2 R2 D F2 D B2 D F' L' B' L' F' R F' D' L F' U'" }
{ "L2 U' R2 B2 D2 F2 D B2 U' F2 D R B2 D' F' R2 F2 R' U B D2" }
{ "B2 R2 U2 D2 B' D2 B' L2 R2 U2 B R U F L R U' R' D F L2" }
{ "D L2 B2 U F2 B2 U2 L2 U' F2 D F' D B L' D' L2 U R D2 F2" }
{ "U2 R2 U2 R2 F' R2 F2 L2 R2 U2 B U' B' R F' D' B' D B' L' B'" }
{ "D' B2 L2 B2 D B2 U2 B2 L2 F2 D' F' U L2 R' F U' R D L' F'" }
{ "R2 U2 D2 R2 F' D2 F2 D2 F' D2 F L B' L' D' R F' D2 R' U B" }
{ "L2 F2 L2 R2 D2 B D2 F' U2 F2 U R U' F' B2 L' R2 U R" }
{ "U2 F2 D2 B2 U F2 U' F2 D B2 U' R U2 D' F' B' R' D B' R2 B2" }
{ "F2 L2 D2 R2 D2 F B R2 B R2 D2 R D' L2 U' L' F U2 R' D R2" }
{ "R' B F2 R' D' L' B R F2 D B' D2 R2 B R2 L2 F D2 U2 F2 U2" }
{ "D B' F' R' D B U L2 U2 F L B2 R2 F2 L' U2 L' D2 B2 L' D2" }
{ "B2 U F2 B2 L2 D' R2 U B2 R2 D B L2 D' L F R' B2 U' D' B2" }
{ "D2 F2 R F D L2 F2 L' U R D2 R2 D2 B F L2 B' D2 F2 R2 U2" }
{ "D2 F B2 D2 B R2 B U2 D2 B' L2 U B' L R2 B R B2 D' F' L" }
{ "D L F D F2 R2 B R' L' B' U L2 D U R2 B2 D B2 L2 F2 D2" }
{ "L2 B2 U R2 D L2 U2 R2 U F' L' D' L2 R' F' U L2 D2 F B" }
{ "D F2 D L2 D B2 R2 B2 R2 U2 B R2 B' R D2 B' L D' F U'" }
{ "R2 B L2 F U2 B' R2 U2 B D2 F2 D' L R F' R' U2 F2 D2 F2" }
{ "F D2 B D2 L2 R2 D2 B2 L2 B' U' F R' F2 U2 F D' L R U B'" }
{ "D2 L U L D2 R' F L' D' B' U2 B L2 D2 F' U2 L2 B' R2" }
{ "B' R U' L2 B' R2 D2 F' L U2 B D2 F2 R2 F2 R2 U2 B' D2 R2" }
{ "L' F' D2 R D B F U R2 U2 F2 R' F2 D2 R D2 F2 D2 L'" }
{ "F2 R2 D2 F2 U2 B2 L2 D2 B' U2 D2 R F' B' L U D2 R D L U2" }
{ "L2 F2 D L2 D R2 F2 L2 U' B2 U' R U' F2 L' F R B L' R' F2" }
{ "L B2 L' U B' F2 U2 F' R D' B2 L2 B D2 U2 B2 F' R2 F2 U2 L2" }
{ "U2 B2 L' D2 L' D2 F2 B2 R' U2 F2 D B' R' B D F' U2 L B' D'" }
{ "R2 U2 F' D2 R2 B U2 B D2 R2 B' U' R D' B' U D' L' U' F2 R" }
{ "R2 B2 U2 L2 F R2 D2 B R2 F2 U2 L' D L2 U' L' B U' R U'" }
{ "B R D2 U' F' R' D L' D2 F' D2 U2 F2 D L2 U' B2 U' F2 U' R2" }
{ "L2 B2 R2 U R2 F2 U' R2 B2 D' L F' B2 U' D L' F B2 U2 F' L'" }
{ "B' U2 B U2 B' R2 F2 R2 U2 L2 B2 D' B' D' F L' R' U2 F U' D2" }
{ "U F U' R B D2 L' D' R2 F D2 L B2 F2 L2 D2 R' D2 L D2 U2" }
{ "R2 U2 D2 F R2 B D2 L2 U2 R2 U B' U2 R' B L D F2 R2 U F" }
{ "U' L2 B2 U B2 D2 B2 D L2 U' D' F' L D' B' L' F' R' B' U' F" }
{ "D' B U2 R2 F' L B' R F' D R2 D B2 L2 D' F2 D' L2 D L2" }
{ "F R' B L2 U2 B' U L D U' B D2 U2 B' L2 B2 R2 B' D2 R2 F" }
{ "B D2 R U' R' U2 L' U' B D' F2 L2 U2 B2 D2 B' R2 D2 B' R2 B'" }
{ "L2 U F2 U' D' R2 B2 D R2 F2 D' B' L' R2 F' U' R' U D2 L F" }
{ "B2 D' B2 U L2 B2 U2 R2 D2 L2 F2 B L U2 D' L' B R' D2 L' R'" }
{ "F U2 R2 U2 D2 F' R2 B' U2 F2 L2 D F' L' F2 B U' D2 B' L' B" }
{ "R2 D2 R2 U D R2 B2 R2 U' B2 D2 F B' L U' R B' L U R2 B'" }
{ "D2 F2 D B2 L2 U' L2 U' F2 R' B' L R2 D2 R' B' L2 U' B" }
{ "U F2 U2 L2 B2 D R2 F2 U' B2 R2 F' L2 B2 R' U2 D2 F B' R'" }
{ "L2 U B2 L2 B2 D F2 L2 U' F2 U B' U' F B2 D' L2 D' R F' B" }
{ "L2 F2 U2 R2 U2 R2 B U2 L2 F' D2 R' F2 L' D B' U' R' B' D F" }
{ "U2 R B D F L' U2 R U B R2 F2 L U2 R' F2 L' F2 D2 L" }
{ "R U2 B U' F R B' F R' D' B2 L2 D' B2 D' B2 D2 L2 U2 L2" }
{ "F2 L2 B2 U L2 U' D2 F2 D2 B2 D' L U' B' R' U' R2 D' R2 F' L'" }
{ "R2 U2 L2 U B2 U' D2 R2 B2 U' R U' F' D L' U B2 R2 F' R' B" }
{ "D2 B' F' U2 L F' D' U F R D' R2 F2 R2 F2 U R2 U' R2 D' B2" }
{ "B2 L2 B2 D' F2 U2 F2 U2 L2 U' R2 B' R' D2 L D' F2 D L2 F R2" }
{ "B2 D2 F L2 F' D2 L2 R2 D2 B' L' U2 F2 B U B L' U' F R2" }
{ "D2 L2 D' B2 U2 L2 B2 D' L2 U B L' F L2 F' B R' F B' D' F'" }
{ "D B2 U' F2 D F2 U' L2 B2 U2 B2 R F' L2 B D L U' R' B R" }
{ "L2 D2 F2 L2 U2 R2 D2 F2 L2 U R2 B' L2 B' D' L F' R2 D B' L" }
{ "L F L' U L' B2 R U2 B D' F2 U2 R' D2 L U2 L' D2 L2 U2 R" }
{ "D' F2 B2 D' L2 R2 D B2 D2 R D R' B' R B L U' L2 F' B D2" }
{ "D B2 L2 B2 L2 D' L2 U2 F2 L2 B2 L' R D B R F L U L2 D" }
{ "R2 B L2 F' U2 D2 F' R2 U2 R2 B U' F L R D' L' B R2 D2 F" }
{ "D' B2 D' B2 D' B2 U R2 U B2 D2 R F' B R D2 R2 F2 D' L2 U" }
{ "B2 L2 B2 U' D' L2 F2 D L2 R2 D2 L' B' U' R2 U2 F' L' F2 D' F2" }
{ "F2 R2 D2 R2 U R2 D B2 L2 R2 U' L R F' U L D' R F R2 D2" }
{ "U' L2 B2 U' L2 F2 L2 U2 L2 U D' F L' R B' L F R2 F2 R' D'" }
{ "R2 B D2 F B U2 B D2 B D2 B2 R' U L2 B2 R2 B L' U L2 B" }
{ "L2 B2 F L2 U' B R B2 F' L D U2 L2 D F2 D F2 U' R2 U' L2" }
{ "F' R2 B' F L2 U' R L' F2 D' L2 U2 B D2 F L2 B R2 L2 U2 F'" }
{ "D B2 D' F2 B2 D R2 F2 D' R2 B2 L U B R2 F U2 L D R' B2" }
{ "D B2 R2 D B2 U F2 R2 U2 F L D' B' L' D' R' F B2 R2" }
{ "F2 L2 U' F2 L2 B2 D2 B2 D' R2 D' B' D F L' B' D R F2 U'" }
{ "B2 L2 B2 L2 R F2 D2 R2 D2 R B2 D L F2 D' F' R B R F2 R" }
{ "R U' L' B' L2 U F L F2 D' L D2 B' D2 F2 D2 F' D2 R2 D2 R2" }
{ "R D L B R' F' R' U B' U' L F2 D2 R D2 B2 F2 R D2 U2 L" }
{ "L2 U2 L2 U2 F2 B R2 B U2 F D L' F L2 D' B2 R' U B U" }
{ "D2 B2 R' B2 R U2 L2 D2 B2 R U2 F' L D' F2 B L' U2 D2 F2 D'" }
{ "L2 B2 D2 L' D2 L' R' B2 D2 R2 B' R' F2 D' F L' F' D2 F R2 U" }
{ "F2 B2 U2 D' B2 D R2 U2 F2 D' L2 F' R' D L F2 L2 R2 U F D2" }
{ "F2 D2 R2 D' L2 U' D' L2 B2 D2 L2 R U2 F' D' B L' R' B2 D B'" }
{ "B U2 L2 F' D2 F2 U2 B U2 R2 B D L2 R' U F L' B' L' U2 B2" }
{ "B R2 D2 F2 L2 F' D2 R2 B' L2 B' R' U L F2 B U' F' R2 D' F'" }
{ "D R' L' D2 F U R2 L2 U2 R' F' U2 F2 D2 R2 F R2 F2 L2 U2 B'" }
{ "D2 F U2 L B2 L2 D F R B R2 D R2 D' R2 B2 U' F2 D U2 R2" }
{ "L2 D2 F2 B D2 F D2 L2 B' D2 B L F' B2 D2 L U' B' D2 R U'" }
{ "B' D' L' F' R B' D B' D B' R D2 R2 D2 L F2 R2 U2 F2 R' D2" }
{ "L D B F R' B U' R2 B' U R' U2 B2 L2 B2 F2 L D2 R' F2 R2" }
{ "D2 L2 B L2 D2 B2 D2 F' B2 D2 B' L R F' L F2 D' L B R U" }
{ "D B2 D L2 R2 B2 D F2 L2 B2 L2 B R' F2 U F2 L D' F D' R" }
{ "D2 R' L2 U B' L D' B F R F2 D F2 D2 L2 F2 U B2 D' B2 D2" }
{ "U2 B2 U F2 U L2 U D2 L2 F2 R U B' D' F2 L' B D F' R'" }
{ "B2 U2 F2 U' R2 U' B2 U' B2 L2 U' F L B' L F D2 R D' R B2" }
{ "B' D' B2 F2 D2 F2 R' D' L F' R2 D' F2 U2 B2 U' F2 U' R2 U B2" }
{ "B2 R2 B2 U' F2 U2 D L2 R2 B2 D B' L2 F' R B L B' U2 B' L2" }
{ "R2 U2 F2 R B2 R' F2 U2 L' F2 R B U' D F L D F2 L U' L" }
{ "D L2 D F2 D' L2 U2 R2 D F2 D' L D F' B' L2 R' D' F2 L2 F'" }
{ "F' D2 B' U2 B2 D2 L2 R2 B' R2 F' R B' D F' R U F' B2 D' R2" }
{ "D2 L2 F2 B L2 U2 B2 R2 U2 F L' U2 B' R' B U' D F B2 L2 R'" }
{ "F2 R' L' D B' R' U F2 L' B' R2 D2 B F2 R2 U2 B2 F D2 U2" }
{ "D U' B2 U2 R2 L' B' R L F' L2 D2 U B2 L2 U' L2 F2 R2 F2 U'" }
{ "D B2 D2 F2 U' F2 D' F2 D R2 D R' U2 F R2 U' R2 B' U' L' R'" }
{ "F2 L D' R B' U F D F2 R D' R2 B2 U2 B2 D' L2 B2 R2 U" }
{ "L2 F2 U2 B2 D2 L R2 F2 L' D2 R B' U D2 L D R' B2 U' L B'" }
{ "F D R L B' L2 B' U B L B2 R2 F2 D' L2 U' B2 R2 U2 F2 D" }
{ "L R' D2 B2 R' D2 R U2 B2 D2 F L' B2 U R F U B' L U'" }
{ "R F L' B2 R2 U2 F' R B U2 B2 D' B2 F2 L2 U R2 D' L2" }
{ "B' U2 L2 B' R2 D2 R2 B2 L2 D2 F' R B U' B' D' F' U2 D' L R2" }
{ "F2 U' D2 B2 R2 D L2 D' R2 U L2 F' R B' U' F' L' R' D' F' U'" }
{ "B' L F R D2 L2 D2 B' R' U' R2 D2 F2 D' F2 R2 F2 L2 U' B2" }
{ "F2 D2 F2 D2 L2 R2 D' R2 D2 L2 B D2 F L' D' R2 U R' F' L'" }
{ "B2 R2 B2 U2 R2 U2 B L2 B' L2 U' L' F2 D' R' F' L D L2 R" }
{ "R2 U2 L2 U2 D2 B D2 F B' R2 F2 U B2 U2 L2 B' D L' U R B2" }
{ "D' R2 D L2 R2 D2 B2 D2 B2 L2 D' B' L2 R' B2 L F2 U2 F' B' R" }
{ "B' L2 F' R2 U2 R2 B D2 B D2 B2 R' D L U' B2 R2 B' R' D B" }
{ "F R2 U2 B L2 D2 F2 L2 F2 B' L2 U L2 R F2 U' F D B2 L R'" }
{ "U2 B' R2 U2 R2 B L2 U2 B R2 U2 L F' U R B2 D2 F2 D L2 F'" }
{ "U2 R2 B2 U F2 U B2 R2 D' B R2 D' L F' D B' U' R D'" }
{ "R2 D2 L2 F D2 F' L2 U2 F2 L2 U2 D' F2 R' F' D' R' B L' R2 U'" }
{ "U2 R B2 F L' U B L D R' D2 U2 F2 L2 B U2 F2 R2 B' D2 R2" }
{ "F2 U2 B R2 F2 U2 L2 F2 D2 B U2 L B L2 D B U R' D2 L" }
{ "R L U2 F U B' R' D F R B2 L2 D L2 U F2 D2 U R2 D' B2" }
{ "U2 R2 U' B2 D F2 B2 U R2 U' L2 F' B' R U2 D' F B2 R2 B D'" }
{ "L2 U L2 B2 D' F2 L2 D' B2 R2 D' R F L B' L' U2 F' R U" }
{ "R2 U' B2 D' R2 B2 U' B2 R2 B2 L2 F' D' L R' B' D' F2 U' F' R2" }
{ "D L2 R2 D' F2 L2 U' D2 B2 D2 R' D L U2 R U F' L' B D2" }
{ "F2 L F2 U' L' B' D F' R' U' B R2 L2 U2 L2 B2 L2 B' D2 B'" }
	}
 }
 #set randscramble [expr int(rand()*[llength $scramble])]
 set algstr [string map { \" {} } [lindex $scramble [expr int(rand()*[llength $scramble])]]]
 .st configure -text "$algstr" 
 focus .buttons.start
}


##### Timer ######
proc updatetimer1 {} {
    global starttime mytime  
    set t [expr [clock clicks] - $starttime]
    set secs [expr $t / 1000000]
    set t [expr $t % 1000000]
    set hund [format "%02d" [expr $t / 10000]]
    set mytime $secs.$hund
    .clock configure -text $mytime
	#if {$secs == 8 } { bell }
}

proc updatetimer {} {
    updatetimer1
    after 100 updatetimer
}

proc start {} {
    global starttime mytime
    set state [.buttons.start cget -text]
    if {[string equal $state "start"]} {
	.buttons.start configure -text "stop"
	after 100 updatetimer
	focus .buttons.start
	set starttime [clock clicks]
    } else {
	updatetimer1
	after cancel updatetimer
	.buttons.start configure -text "start"
	focus .buttons.accept
    }
}

proc accept {} {
    global times mytime average moves2
    focus .buttons.start
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

    .times configure -text "$times2"
    .average configure -text "Average: $average"
    .clock configure -text "0.00"
    scramble $moves2
}

proc discard {} {
 focus .buttons.start
 .clock configure -text "0.00"
}

proc reset {} {
 global average times2 times
 focus .buttons.start
 set average {}
 set times2 {}
 set times {}
 .clock configure -text "0.00"
 .average configure -text "Average: 0"
 .times configure -text ""
}

bind .st <1> {
    clipboard clear
    clipboard append [%W cget -text]
    bell
}

bind .average <1> {
    clipboard clear
    clipboard append [%W cget -text]
    bell
}

bind .times <1> {
    clipboard clear
    clipboard append [%W cget -text]
    bell
}