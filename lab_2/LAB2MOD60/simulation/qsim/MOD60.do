onerror {quit -f}
vlib work
vlog -work work MOD60.vo
vlog -work work MOD60.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MOD60_vlg_vec_tst
vcd file -direction MOD60.msim.vcd
vcd add -internal MOD60_vlg_vec_tst/*
vcd add -internal MOD60_vlg_vec_tst/i1/*
add wave /*
run -all
