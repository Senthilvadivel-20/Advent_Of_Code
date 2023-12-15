/ --- Day 4: Scratchcards ---

txt : read0 `:./inputs/Day_4_Scratchcards.txt

/ find_n:{
/     if[x<=0;:0;::];
/     n: x - 1;
/     double: $[(n1: (floor(n%3))*3) > 0;n1+1;0];
/     md: $[n<3;n+1;n mod 3];
/     num: (double*2)+md;
/     :num
/     };



find_inter:{[str]
    n: count .[inter] value each ("|" vs 9_str);
    res: last(2 xexp (til n));
    :res
    };


find_inter'[txt] //part 1

/ winning_cards:{
/     txt:trim(":" vs x);
/     i: ("J"$(" " vs/:(trim("|" vs txt[1])))) except\: 0N;
/     n: count(i[0] inter i[1]);
/     cn: value((" " vs txt[0])[1]);
/     copy: (cn+1)+til n;
/     :copy    
/     };

winning_cards:{[x;txt]
    str: txt[x];
    int:count .[inter] value each ("|" vs 9_str);
    copy: (x+2)+til int;
    :(enlist x+1)!(enlist copy)    
    };


cards_d:{[x]
    d: (+/)winning_cards'[;txt] each x;
    copies: value d;
    // In complete
    }

copies: winning_cards'[txt];

/ win_count: (1+(til count txt)) ! count each copies

// win_count + (count each winning_cards'[(txt[(raze copies)-1])])



