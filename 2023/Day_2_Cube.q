inp:read0 `:./inputs/Day_2_Cube.txt

check_subset:{
    c:ssr[x;",";";"];
    c1:reverse@/:(" "vs/:("; " vs c));
    d:sum each value'[c1[;1]] group c1[;0];
    Flag:(d["red"]<13) * (d["green"]<14) * (d["blue"] <15);
    :Flag
    };


max_color:{
    x:trim(":" vs x)[1];
    c:ssr[x;",";";"];
    c1:reverse@/:(" "vs/:("; " vs c));
    d:prd max each value'[c1[;1]] group c1[;0];
    :d
    };


get_game_name:{
    i:trim(":" vs x);
    g_name: value last(" " vs i[0]);
    subset:trim(";" vs i[1]);
    Flag:(prd(check_subset'[subset])) * g_name;
    :Flag
    };

// part 1
sum get_game_name'[inp]

// Part 2
sum max_color'[inp]


