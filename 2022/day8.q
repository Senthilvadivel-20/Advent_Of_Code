/D - ((x+1)+til c-(x+1))
/U - (til x)
/L - (til y)
/R - ((y+1)+til c-(y+1))

txt: read0 `:./inputs/day8_input.txt
t: {{value x}'[txt[x]]}'[til count txt]
c: count t

/Problem 1
tree: {[x;y] n: t[x;y]; ((all(n > (t[x;(til y)]))) or (all(n > (t[x;((y+1)+til c-(y+1))])))or (all(n > (t[(til x);y]))) or (all(n > (t[((x+1)+til c-(x+1));y]))))};

show "Problem 1 Answer"
show (sum sum {[x] {[x;y] tree[x;y]}'[x;(til c)]}'[til c])


/ t:((3 0 3 7 3);(2 5 5 1 2);(6 5 3 3 2);(3 3 5 4 9);(3 5 3 9 0));
/ c:count t;

/Problem 2
fnd:{[x;y] $[((max y) ~ x);(((y?x)+1));$[all bl:(x > y);count bl;(bl?0b)+1]]};
tree2:{[x;y] n: t[x;y]; ((fnd[n;reverse(t[x;(til y)])]) * (fnd[n;(t[x;((y+1)+til c-(y+1))])]) * (fnd[n;reverse(t[(til x);y])]) * (fnd[n;(t[((x+1)+til c-(x+1));y])]))};

r: {[x] {[x;y] tree2[x;y]}'[x;(til c)]}'[til c];
show ("Problem 2 Answer --> ",(string max (raze r)))








