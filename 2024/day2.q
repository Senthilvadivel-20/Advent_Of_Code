/l: (7 6 4 2 1;1 2 7 8 9;9 7 6 2 1;1 3 2 4 5;8 6 4 4 1;1 3 6 7 9);

l: "J"$'" "vs'read0 `:./input/day2.txt;

// Either it should be all positive or all negative
safe_num:{all(x within -3 -1)|all(x within 1 3)};

sum safe_num'[(1_'deltas each l)]

// Create combination from 
rmn:{x _/: til count x};

sum {any safe_num'[(1_'deltas each rmn x)]}'[l]

