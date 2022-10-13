class driver extends uvm_driver #(trans);
	
	`uvm_component_utils(driver)
	
	function new(string name = "driver", uvm_component parent=null);
		super.new(name, parent);
  	endfunction

 	virtual dut_if vif;

  	virtual function void build_phase(uvm_phase phase);
    		super.build_phase(phase);
    		if (!uvm_config_db#(virtual dut_if)::get(this, "", "dut_vif", vif))
      			`uvm_fatal("Driver", "Error no se encontro vif")
  	endfunction

  	virtual task run_phase(uvm_phase phase); // Le quitamos el virtual
    		super.run_phase(phase);
    	
		forever begin
      			trans m_trans;
      			`uvm_info("Driver", $sformatf("Esperando item"), UVM_HIGH)
      			seq_item_port.get_next_item(m_trans);
      			drive_item(m_trans);
      			seq_item_port.item_done();
    		end
  	endtask

	virtual task drive_item(trans m_trans);
    		@(vif.cb);
      		vif.cb.in <= m_trans.in;
  	endtask
endclass
