restart -force -nowave
add wave -logic a
add wave -logic b
add wave -logic cin
add wave -logic x2
add wave -logic cout
add wave -logic t1
add wave -logic t2
add wave -logic t3

force -freeze cin 0
force -deposit a 00000000010
force -deposit b 00000000010
force -deposit x2 00000000001
run 2ns
force -freeze cin 0
force -deposit a 00000000001
force -deposit b 00000000001
force -deposit x2 00000000100
run 2ns
force -freeze cin 0
force -deposit a 00000000010
force -deposit b 00000000000
force -deposit x2 00000000010
run 2ns
wave zoomfull