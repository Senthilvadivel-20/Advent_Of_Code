inp: read0 `:./inputs/day4_input.txt
str_num:{[x] {[x] x[0]+til (x[1]-x[0])+1}"J"$("-" vs x)}

show "In how many assignment pairs does one range fully contain the other?"

check:{[x] x:"," vs x;sec1:(str_num x[0]);sec2:(str_num x[1]);any ((all sec1 in sec2);(all sec2 in sec1))}
show sum check'[inp]

show "In how many assignment pairs do the ranges overlap?"

check2:{[x] x:"," vs x;sec1:(str_num x[0]);sec2:(str_num x[1]);any ((any sec1 in sec2);(any sec2 in sec1))}
show sum check2'[inp]
