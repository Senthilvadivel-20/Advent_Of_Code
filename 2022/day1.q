
inp:read0 `:./inputs/day1_input.txt

/ Part one

show "Find the Elf carrying the most Calories. How many total Calories is that Elf carrying?"
show max sum each  "J"${" "vs x}each ("  "vs (" " sv inp))

/ Part two 

show "Find the top three Elves carrying the most Calories. How many Calories are those Elves carrying in total?"
show sum 3#desc sum each  "J"${" "vs x}each ("  "vs (" " sv inp))