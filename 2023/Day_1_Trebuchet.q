/Problem --> https://adventofcode.com/2023/day/1

/ CPart 1

// Read input
txt: read0 `:./inputs/Day_1_Trebuchet.txt

// Check the first appearance of number in front and back order
check_num:{:((x(x in .Q.n)?1b),((reverse x)((reverse x) in .Q.n)?1b))}

// Answer for 1st question : What is the sum of all of the calibration values?
show sum("J"$check_num'[txt])


// Part 2

digits: ("one";"two";"three";"four";"five";"six";"seven";"eight";"nine");




