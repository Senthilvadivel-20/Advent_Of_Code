// part 1

sort: {x (<) x};
inp: "   " vs/:read0 `:./input/day1.txt;

l1: "J"$inp[;0];
l2: "J"$inp[;1];

0N! sum abs ((sort(l1)) - sort(l2));

//part 2

rl: count each group l2;

0N!sum {x * rl[x]}'[l1];