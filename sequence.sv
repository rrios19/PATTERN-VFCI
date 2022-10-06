class mysequence extends uvm_sequence;
	`uvm_object_utils(mysequence);

	function new (string name = "mysequence");
		super.new(name);
	endfunction

	rand int num;

	constraint c1 {soft num inside {[10:50]};}

	virtual task body();
	for(int i=0; i<num; i++)begin
		trans m_trans = trans::type_id::create("m_trans");
		start_item(m_trans);
		m_item.randomize();
		`uvm_info("SEQ", $sformatf("Generate new item:",m_trans.convert2str()),UVM_HIGH);
		finish_item(m_trans);
	end	
	`uvm_info("SEQ", $sformatf("Done generation of %0d items", num),UVM_LOW);
	endtask
endclass
