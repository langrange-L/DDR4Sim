///////////////////////////////////////////////////////////////////////////////
//
// FILE NAME: TB_INTERFACE.SV
//
// AUTHOR: Jeff Nguyen
//
// DATE CREATED: 08/07/2014
//
// DESCRIPTION:  The interface defines all signals connect between DIMM model,
//               memory checker, and ddr controller
//
/////////////////////////////////////////////////////////////////////////////// 

`include "ddr_package.pkg"                           
                  
interface TB_INTERFACE;   

input_data_type data_in;
logic act_cmd,no_act_rdy;
int BL, RD_PRE;
logic dev_busy, next_cmd, dev_rd, rw_proc;
logic [1:0] dev_rw;

//update MR0 for burst length
logic mrs_update;
logic [1:0] bl_update;
mem_addr_type act_addr;

endinterface                  
