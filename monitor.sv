class monitor extends uvm_monitor;
	`uvm_component_utils(monitor)

	uvm_analysis_port #()

	function new(string name = "monitor", uvm_component)
endclass
