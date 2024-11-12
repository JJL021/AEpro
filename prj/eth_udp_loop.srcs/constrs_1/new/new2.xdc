

create_clock -period 20.000 -name sys_clk -add [get_ports sys_clk]
create_clock -period 8.000 -name eth_rxc -add [get_ports eth_rxc]