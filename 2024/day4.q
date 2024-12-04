
R:{@[{s[x[0];x[1]+til 4]};x;""]};
L:{@[{s[x[0];x[1]-til 4]};x;""]};
U:{@[{s[x[0]-til 4;x[1]]};x;""]};
D:{@[{s[x[0]+til 4;x[1]]};x;""]};

LU:{@[{s'[x[0]-til 4;x[1]-til 4]};x;""]};
RU:{@[{s'[x[0]-til 4;x[1]+til 4]};x;""]};
LD:{@[{s'[x[0]+til 4;x[1]-til 4]};x;""]};
RD:{@[{s'[x[0]+til 4;x[1]+til 4]};x;""]};


/s:" " vs "MMMSXXMASM MSAMXMSMSA AMXSXMAAMM MSAMASMSMX XMASAMXAMM XXAMMXXAMA SMSMSASXSS SAXAMASAAA MAMMMXMMMM MXMXAXMASX"

s: read0 `:./input/day4.txt;

idx:(til count s[0]) cross til count s;

res:raze (R;L;U;D;LU;RU;LD;RD)@\:/:idx;

sum (`$res) in `XMAS

/ Part 2

LU:{@[{s[x[0]-1;x[1]-1]};x;""]}; // --> M
RU:{@[{s[x[0]-1;x[1]+1]};x;""]}; // --> S
LD:{@[{s[x[0]+1;x[1]-1]};x;""]}; // --> M
RD:{@[{s[x[0]+1;x[1]+1]};x;""]}; // --> S

sum (`${$[s[x[0];x[1]]~"A";((LU;RU;LD;RD)@\:x);""]} each idx) in `MSMS`SMSM`MMSS`SSMM

/

From peers, It's interesting!

f: raze i: ".",/:read0 `:./input/day4.txt; n:count first i
S:{(f(til count f)+\:/:n sv count[y] vs x)in(y;reverse y)}
sum sum S[(0 1 2 3;0 4 8 12;0 5 10 15;3 6 9 12); "XMAS"]
sum all S[(0 4 8;2 4 6); "MAS"]

\