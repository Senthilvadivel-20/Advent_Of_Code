/ Day 3

s: raze read0 `:./input/day3.txt;

/ Part 1

multi: {sum @[{v:"J"$"," vs x;$[all(v within 0 999);:prd v;0]};;0] each first each ")"vs/:1_"mul(" vs x} 

/ Instead of "J" type case use value function to save futher steps but taks some more time which is prd value x
 
multi s

/ Part 2

s: raze first each "don't()" vs/: "do()" vs s; / Modify the s string. Get the before don't() string. 

multi s
