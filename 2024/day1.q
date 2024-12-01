// part 1

sort: {x (<) x};
inp: "   " vs/:read0 `:./input/day1.txt;

l1: sort "J"$inp[;0];
l2: sort "J"$inp[;1];

0N! sum abs (l1 - l2);

//part 2

ll: "J"$inp[;0];
rl: count each group "J"$inp[;1];

0N!sum {x * rl[x]}'[ll];