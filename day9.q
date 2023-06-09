i: read0 `:./inputs/day9_input.txt
pos: raze raze value @/:ssr[;" ";"#`"]@/:(reverse@/:i)

v: (`R`L`U`D!((0 1);(0 -1);(-1 0);(1 0)));

l: 1_((0 0;6 0),(v @/: pos))




