source synopsys_tools.sh;
rm -rfv `ls |grep -v ".*\.sv\|.*\.sh"`;

vcs -Mupdate testbench.sv -o salida -full64 -debug_acc+all -debug_region+cell+encrypt -sverilog -l log_test -ntb_opts uvm +lint=TFIPC-L -cm line+tgl+cond+fsm+branch+assert;

./salida +UVM_VERBOSITY=UVM_HIGH +UVM_TESTNAME=mytest +ntb_random_seed=1;
#./salida +UVM_VERBOSITY=UVM_HIGH +UVM_TESTNAME=test_1011 +ntb_random_seed=2 > deleteme_log_2;

#./salida -cm line+tgl+cond+fsm+branch+assert;
#dve -full64 -covdir salida.vdb &;
