/--- Day 2: Rock Paper Scissors ---

txt:read0 `:./inputs/day2_input.txt

/ Part one
p1:("ABC")!(1 2 3)
p2:("XYZ")!(1 2 3)

show "What would your total score be if everything goes exactly according to your strategy guide?"

scr:{[x] p2[x[2]]+$[p1[x[0]]=p2[x[2]];3;("ABC" in x[0])~("YZX" in x[2]);6;0]}
show sum scr'[txt]


/ Part two

p1:("CABCA")!(3 1 2 3 1)
show "Following the Elf's instructions for the second column, what would your total score be if everything goes exactly according to your strategy guide?"

rps:{[x] i:("DABC"?x[0]);($[x[2]~"X";(value p1)[i-1];x[2]~"Z";(value p1)[i+1];(value p1)[i]])+((0 3 6)["XYZ"?x[2]])}
show sum rps'[txt]
