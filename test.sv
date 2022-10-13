class mytest extends uvm_test;
	
	`uvm_component_utils(mytest)
  	
	function new(string name = "mytest", uvm_component parent=null);
    		super.new(name, parent);
  	endfunction

  	env  	env_inst;
	
  	bit[`LENGTH-1:0]  pattern = 4'b1011;
  	
	mysequence 	seq;
  	virtual dut_if 	vif;

  	virtual function void build_phase(uvm_phase phase);
    		pattern = 4'b1011;
    		super.build_phase(phase);

    		env_inst = env::type_id::create("env_inst", this);
		
		if(!uvm_config_db#(virtual dut_if)::get(this,"","dut_vif",vif))
			`uvm_fatal("Test", "No encontro vif")
    		uvm_config_db#(virtual dut_if)::set(this, "env_inst.agn_inst.*", "dut_vif", vif);
    		uvm_config_db#(bit[`LENGTH-1:0])::set(this, "*", "ref_pattern", pattern);

    		seq = mysequence::type_id::create("seq");
    		seq.randomize() with {num inside {[20:40]};};
  	endfunction

  	virtual task run_phase(uvm_phase phase);
    		phase.raise_objection(this);
    		vif.rstn <= 0;
    		vif.in <= 0;
    		repeat(5) @ (posedge vif.clk);
    		vif.rstn <= 1;
    		repeat(10) @ (posedge vif.clk);
    		seq.start(env_inst.agn_inst.seq_inst);
    		phase.drop_objection(this);
  	endtask
endclass
