/ --- Day 4: Scratchcards ---

txt : read0 `:./inputs/Day_4_Scratchcards.txt



find_inter:{[str]
    n: count .[inter] value each ("|" vs 9_str);
    res: 2 xexp last(til n);
    :res
    };


sum find_inter'[txt] //part 1

win:til count txt;


winning_cards:{[x;txt]
    str: txt;
    n:sum (win = x);
    int:count .[inter] value each ("|" vs 9_str);
    lis: raze n#enlist((x+1)+til int);
    .[`win;();,;lis];
    };

winning_cards'[til count txt;txt];


sum count each group win //Part 2

