/read the input 
inp:read0 `:./inputs/day3_input.txt

show "Find the Elf carrying the most Calories. How many total Calories is that Elf carrying?"

find_value:{l:(("j"$(count inp[x]) %2 ) cut inp[x]); dl:distinct l[0] where (l[0] in l[1]); :sum 1+((.Q.a,.Q.A)?dl) }
show sum find_value'[til count inp]


show "Find the top three Elves carrying the most Calories. How many Calories are those Elves carrying in total?"
n:"j"$((count inp)%3)
l:raze {{distinct (x[2] where (x[2] in (x[0] where x[0] in x[1])))}[((3 * til n) _ inp)[x]]}'[til n]
show sum 1+(.Q.a,.Q.A) ? l
