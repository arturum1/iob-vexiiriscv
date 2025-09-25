// Generator : SpinalHDL dev    git head : b41ad92959289e258483a26f22d0368041dd5667
// Component : VexiiRiscvAxi4LinuxPlicClint
// Git hash  : bb8d3cb7811ae6e19bba5bef652e2ffe68b1d750

`timescale 1ns/1ps

module VexiiRiscvAxi4LinuxPlicClint (
  input  wire          clint_awvalid,
  output wire          clint_awready,
  input  wire [15:0]   clint_awaddr,
  input  wire [2:0]    clint_awprot,
  input  wire          clint_wvalid,
  output wire          clint_wready,
  input  wire [31:0]   clint_wdata,
  input  wire [3:0]    clint_wstrb,
  output wire          clint_bvalid,
  input  wire          clint_bready,
  output wire [1:0]    clint_bresp,
  input  wire          clint_arvalid,
  output wire          clint_arready,
  input  wire [15:0]   clint_araddr,
  input  wire [2:0]    clint_arprot,
  output wire          clint_rvalid,
  input  wire          clint_rready,
  output wire [31:0]   clint_rdata,
  output wire [1:0]    clint_rresp,
  input  wire          plic_awvalid,
  output wire          plic_awready,
  input  wire [21:0]   plic_awaddr,
  input  wire [2:0]    plic_awprot,
  input  wire          plic_wvalid,
  output wire          plic_wready,
  input  wire [31:0]   plic_wdata,
  input  wire [3:0]    plic_wstrb,
  output wire          plic_bvalid,
  input  wire          plic_bready,
  output wire [1:0]    plic_bresp,
  input  wire          plic_arvalid,
  output wire          plic_arready,
  input  wire [21:0]   plic_araddr,
  input  wire [2:0]    plic_arprot,
  output wire          plic_rvalid,
  input  wire          plic_rready,
  output wire [31:0]   plic_rdata,
  output wire [1:0]    plic_rresp,
  input  wire [31:0]   plicInterrupts,
  input  wire [63:0]   PrivilegedPlugin_logic_rdtime,
  input  wire          PrivilegedPlugin_logic_harts_0_int_m_timer /* verilator public */ ,
  input  wire          PrivilegedPlugin_logic_harts_0_int_m_software /* verilator public */ ,
  input  wire          PrivilegedPlugin_logic_harts_0_int_m_external /* verilator public */ ,
  output wire          LsuCachelessAxi4Plugin_logic_axi_aw_valid,
  input  wire          LsuCachelessAxi4Plugin_logic_axi_aw_ready,
  output wire [31:0]   LsuCachelessAxi4Plugin_logic_axi_aw_payload_addr,
  output wire [0:0]    LsuCachelessAxi4Plugin_logic_axi_aw_payload_id,
  output wire [2:0]    LsuCachelessAxi4Plugin_logic_axi_aw_payload_size,
  output wire [3:0]    LsuCachelessAxi4Plugin_logic_axi_aw_payload_cache,
  output wire [2:0]    LsuCachelessAxi4Plugin_logic_axi_aw_payload_prot,
  output wire          LsuCachelessAxi4Plugin_logic_axi_w_valid,
  input  wire          LsuCachelessAxi4Plugin_logic_axi_w_ready,
  output wire [31:0]   LsuCachelessAxi4Plugin_logic_axi_w_payload_data,
  output wire [3:0]    LsuCachelessAxi4Plugin_logic_axi_w_payload_strb,
  output wire          LsuCachelessAxi4Plugin_logic_axi_w_payload_last,
  input  wire          LsuCachelessAxi4Plugin_logic_axi_b_valid,
  output wire          LsuCachelessAxi4Plugin_logic_axi_b_ready,
  input  wire [0:0]    LsuCachelessAxi4Plugin_logic_axi_b_payload_id,
  input  wire [1:0]    LsuCachelessAxi4Plugin_logic_axi_b_payload_resp,
  output wire          LsuCachelessAxi4Plugin_logic_axi_ar_valid,
  input  wire          LsuCachelessAxi4Plugin_logic_axi_ar_ready,
  output wire [31:0]   LsuCachelessAxi4Plugin_logic_axi_ar_payload_addr,
  output wire [0:0]    LsuCachelessAxi4Plugin_logic_axi_ar_payload_id,
  output wire [2:0]    LsuCachelessAxi4Plugin_logic_axi_ar_payload_size,
  output wire [3:0]    LsuCachelessAxi4Plugin_logic_axi_ar_payload_cache,
  output wire [2:0]    LsuCachelessAxi4Plugin_logic_axi_ar_payload_prot,
  input  wire          LsuCachelessAxi4Plugin_logic_axi_r_valid,
  output wire          LsuCachelessAxi4Plugin_logic_axi_r_ready,
  input  wire [31:0]   LsuCachelessAxi4Plugin_logic_axi_r_payload_data,
  input  wire [0:0]    LsuCachelessAxi4Plugin_logic_axi_r_payload_id,
  input  wire [1:0]    LsuCachelessAxi4Plugin_logic_axi_r_payload_resp,
  input  wire          LsuCachelessAxi4Plugin_logic_axi_r_payload_last,
  output wire          FetchCachelessAxi4Plugin_logic_bridge_axi_ar_valid,
  input  wire          FetchCachelessAxi4Plugin_logic_bridge_axi_ar_ready,
  output wire [31:0]   FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_addr,
  output wire [0:0]    FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_id,
  output wire [2:0]    FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_size,
  output wire [3:0]    FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_cache,
  output wire [2:0]    FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_prot,
  input  wire          FetchCachelessAxi4Plugin_logic_bridge_axi_r_valid,
  output wire          FetchCachelessAxi4Plugin_logic_bridge_axi_r_ready,
  input  wire [31:0]   FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_data,
  input  wire [0:0]    FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_id,
  input  wire [1:0]    FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_resp,
  input  wire          FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_last,
  input  wire          clk,
  input  wire          reset
);
  localparam EnvPluginOp_ECALL = 3'd0;
  localparam EnvPluginOp_EBREAK = 3'd1;
  localparam EnvPluginOp_PRIV_RET = 3'd2;
  localparam EnvPluginOp_FENCE_I = 3'd3;
  localparam EnvPluginOp_SFENCE_VMA = 3'd4;
  localparam EnvPluginOp_WFI = 3'd5;
  localparam BranchPlugin_BranchCtrlEnum_B = 2'd0;
  localparam BranchPlugin_BranchCtrlEnum_JAL = 2'd1;
  localparam BranchPlugin_BranchCtrlEnum_JALR = 2'd2;
  localparam IntAluPlugin_AluBitwiseCtrlEnum_XOR_1 = 2'd0;
  localparam IntAluPlugin_AluBitwiseCtrlEnum_OR_1 = 2'd1;
  localparam IntAluPlugin_AluBitwiseCtrlEnum_AND_1 = 2'd2;
  localparam IntAluPlugin_AluBitwiseCtrlEnum_ZERO = 2'd3;
  localparam TrapPlugin_logic_harts_0_trap_fsm_RESET = 4'd0;
  localparam TrapPlugin_logic_harts_0_trap_fsm_RUNNING = 4'd1;
  localparam TrapPlugin_logic_harts_0_trap_fsm_COMPUTE = 4'd2;
  localparam TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC = 4'd3;
  localparam TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL = 4'd4;
  localparam TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC = 4'd5;
  localparam TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT = 4'd6;
  localparam TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY = 4'd7;
  localparam TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC = 4'd8;
  localparam TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY = 4'd9;
  localparam TrapPlugin_logic_harts_0_trap_fsm_JUMP = 4'd10;
  localparam CsrAccessPlugin_logic_fsm_IDLE = 2'd0;
  localparam CsrAccessPlugin_logic_fsm_READ = 2'd1;
  localparam CsrAccessPlugin_logic_fsm_WRITE = 2'd2;
  localparam CsrAccessPlugin_logic_fsm_COMPLETION = 2'd3;

  wire       [30:0]   ClintPlicPlugin_logic_plicCtrl_io_sources;
  reg                 integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_valid;
  reg        [4:0]    integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_address;
  reg        [31:0]   integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_data;
  wire       [32:0]   FetchCachelessPlugin_logic_buffer_words_spinal_port1;
  reg        [31:0]   CsrRamPlugin_logic_mem_spinal_port1;
  wire                ClintPlicPlugin_logic_clintCtrl_io_bus_aw_ready;
  wire                ClintPlicPlugin_logic_clintCtrl_io_bus_w_ready;
  wire                ClintPlicPlugin_logic_clintCtrl_io_bus_b_valid;
  wire       [1:0]    ClintPlicPlugin_logic_clintCtrl_io_bus_b_payload_resp;
  wire                ClintPlicPlugin_logic_clintCtrl_io_bus_ar_ready;
  wire                ClintPlicPlugin_logic_clintCtrl_io_bus_r_valid;
  wire       [31:0]   ClintPlicPlugin_logic_clintCtrl_io_bus_r_payload_data;
  wire       [1:0]    ClintPlicPlugin_logic_clintCtrl_io_bus_r_payload_resp;
  wire       [0:0]    ClintPlicPlugin_logic_clintCtrl_io_timerInterrupt;
  wire       [0:0]    ClintPlicPlugin_logic_clintCtrl_io_softwareInterrupt;
  wire       [63:0]   ClintPlicPlugin_logic_clintCtrl_io_time;
  wire                ClintPlicPlugin_logic_plicCtrl_io_bus_aw_ready;
  wire                ClintPlicPlugin_logic_plicCtrl_io_bus_w_ready;
  wire                ClintPlicPlugin_logic_plicCtrl_io_bus_b_valid;
  wire       [1:0]    ClintPlicPlugin_logic_plicCtrl_io_bus_b_payload_resp;
  wire                ClintPlicPlugin_logic_plicCtrl_io_bus_ar_ready;
  wire                ClintPlicPlugin_logic_plicCtrl_io_bus_r_valid;
  wire       [31:0]   ClintPlicPlugin_logic_plicCtrl_io_bus_r_payload_data;
  wire       [1:0]    ClintPlicPlugin_logic_plicCtrl_io_bus_r_payload_resp;
  wire       [1:0]    ClintPlicPlugin_logic_plicCtrl_io_targets;
  wire                streamArbiter_1_io_inputs_0_ready;
  wire                streamArbiter_1_io_output_valid;
  wire       [31:0]   streamArbiter_1_io_output_payload_pcOnLastSlice;
  wire       [31:0]   streamArbiter_1_io_output_payload_pcTarget;
  wire                streamArbiter_1_io_output_payload_taken;
  wire                streamArbiter_1_io_output_payload_isBranch;
  wire                streamArbiter_1_io_output_payload_isPush;
  wire                streamArbiter_1_io_output_payload_isPop;
  wire                streamArbiter_1_io_output_payload_wasWrong;
  wire                streamArbiter_1_io_output_payload_badPredictedTarget;
  wire       [15:0]   streamArbiter_1_io_output_payload_uopId;
  wire       [0:0]    streamArbiter_1_io_chosenOH;
  wire       [31:0]   integer_RegFilePlugin_logic_regfile_fpga_io_reads_0_data;
  wire       [31:0]   integer_RegFilePlugin_logic_regfile_fpga_io_reads_1_data;
  wire       [31:0]   _zz_early0_IntAluPlugin_logic_alu_result;
  wire       [31:0]   _zz_early0_IntAluPlugin_logic_alu_result_1;
  wire       [31:0]   _zz_early0_IntAluPlugin_logic_alu_result_2;
  wire       [31:0]   _zz_early0_IntAluPlugin_logic_alu_result_3;
  wire       [31:0]   _zz_early0_IntAluPlugin_logic_alu_result_4;
  wire       [0:0]    _zz_early0_IntAluPlugin_logic_alu_result_5;
  wire       [4:0]    _zz_early0_BarrelShifterPlugin_logic_shift_amplitude;
  wire       [31:0]   _zz_early0_BarrelShifterPlugin_logic_shift_reversed;
  wire                _zz_early0_BarrelShifterPlugin_logic_shift_reversed_1;
  wire       [0:0]    _zz_early0_BarrelShifterPlugin_logic_shift_reversed_2;
  wire       [20:0]   _zz_early0_BarrelShifterPlugin_logic_shift_reversed_3;
  wire                _zz_early0_BarrelShifterPlugin_logic_shift_reversed_4;
  wire       [0:0]    _zz_early0_BarrelShifterPlugin_logic_shift_reversed_5;
  wire       [9:0]    _zz_early0_BarrelShifterPlugin_logic_shift_reversed_6;
  wire       [32:0]   _zz_early0_BarrelShifterPlugin_logic_shift_shifted;
  wire       [32:0]   _zz_early0_BarrelShifterPlugin_logic_shift_shifted_1;
  wire       [31:0]   _zz_early0_BarrelShifterPlugin_logic_shift_patched;
  wire                _zz_early0_BarrelShifterPlugin_logic_shift_patched_1;
  wire       [0:0]    _zz_early0_BarrelShifterPlugin_logic_shift_patched_2;
  wire       [20:0]   _zz_early0_BarrelShifterPlugin_logic_shift_patched_3;
  wire                _zz_early0_BarrelShifterPlugin_logic_shift_patched_4;
  wire       [0:0]    _zz_early0_BarrelShifterPlugin_logic_shift_patched_5;
  wire       [9:0]    _zz_early0_BarrelShifterPlugin_logic_shift_patched_6;
  wire       [20:0]   _zz_early0_BranchPlugin_pcCalc_target_b;
  wire       [11:0]   _zz_early0_BranchPlugin_pcCalc_target_b_1;
  wire       [12:0]   _zz_early0_BranchPlugin_pcCalc_target_b_2;
  wire       [1:0]    _zz_early0_BranchPlugin_pcCalc_slices;
  wire       [0:0]    _zz_early0_BranchPlugin_pcCalc_slices_1;
  wire       [31:0]   _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_TRUE_lane0;
  wire       [31:0]   _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_FALSE_lane0;
  wire       [3:0]    _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_FALSE_lane0_1;
  wire       [31:0]   _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_LAST_SLICE_lane0;
  wire       [1:0]    _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_LAST_SLICE_lane0_1;
  wire       [32:0]   _zz_FetchCachelessPlugin_logic_buffer_words_port;
  reg                 _zz_FetchCachelessPlugin_logic_buffer_full;
  wire       [63:0]   _zz_WhiteboxerPlugin_logic_decodes_0_pc;
  wire       [11:0]   _zz__zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0;
  wire       [11:0]   _zz__zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0_1;
  wire       [31:0]   _zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0;
  wire       [31:0]   _zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0_1;
  wire       [31:0]   _zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0_2;
  wire       [0:0]    _zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0_3;
  wire       [3:0]    _zz_early0_EnvPlugin_logic_trapPort_payload_code;
  wire       [0:0]    _zz_decode_ctrls_1_down_RS1_ENABLE_0;
  wire       [4:0]    _zz_decode_ctrls_1_down_RS1_PHYS_0;
  wire       [0:0]    _zz_decode_ctrls_1_down_RS2_ENABLE_0;
  wire       [4:0]    _zz_decode_ctrls_1_down_RS2_PHYS_0;
  wire       [0:0]    _zz_decode_ctrls_1_down_RD_ENABLE_0;
  wire       [31:0]   _zz_decode_ctrls_1_down_RD_ENABLE_0_1;
  wire       [31:0]   _zz_decode_ctrls_1_down_RD_ENABLE_0_2;
  wire       [31:0]   _zz_decode_ctrls_1_down_RD_ENABLE_0_3;
  wire                _zz_decode_ctrls_1_down_RD_ENABLE_0_4;
  wire                _zz_decode_ctrls_1_down_RD_ENABLE_0_5;
  wire       [4:0]    _zz_decode_ctrls_1_down_RD_PHYS_0;
  wire       [31:0]   _zz_decode_ctrls_1_down_Decode_LEGAL_0;
  wire       [31:0]   _zz_decode_ctrls_1_down_Decode_LEGAL_0_1;
  wire       [31:0]   _zz_decode_ctrls_1_down_Decode_LEGAL_0_2;
  wire                _zz_decode_ctrls_1_down_Decode_LEGAL_0_3;
  wire       [0:0]    _zz_decode_ctrls_1_down_Decode_LEGAL_0_4;
  wire       [13:0]   _zz_decode_ctrls_1_down_Decode_LEGAL_0_5;
  wire       [31:0]   _zz_decode_ctrls_1_down_Decode_LEGAL_0_6;
  wire       [31:0]   _zz_decode_ctrls_1_down_Decode_LEGAL_0_7;
  wire       [31:0]   _zz_decode_ctrls_1_down_Decode_LEGAL_0_8;
  wire                _zz_decode_ctrls_1_down_Decode_LEGAL_0_9;
  wire       [0:0]    _zz_decode_ctrls_1_down_Decode_LEGAL_0_10;
  wire       [7:0]    _zz_decode_ctrls_1_down_Decode_LEGAL_0_11;
  wire       [31:0]   _zz_decode_ctrls_1_down_Decode_LEGAL_0_12;
  wire       [31:0]   _zz_decode_ctrls_1_down_Decode_LEGAL_0_13;
  wire       [31:0]   _zz_decode_ctrls_1_down_Decode_LEGAL_0_14;
  wire                _zz_decode_ctrls_1_down_Decode_LEGAL_0_15;
  wire       [0:0]    _zz_decode_ctrls_1_down_Decode_LEGAL_0_16;
  wire       [1:0]    _zz_decode_ctrls_1_down_Decode_LEGAL_0_17;
  wire       [2:0]    _zz_LsuCachelessPlugin_logic_trapPort_payload_code;
  reg                 _zz_LsuCachelessPlugin_logic_onJoin_readerValid;
  reg                 _zz_LsuCachelessPlugin_logic_onJoin_rspPayload_error;
  reg        [31:0]   _zz_LsuCachelessPlugin_logic_onJoin_rspPayload_data;
  reg        [7:0]    _zz_LsuCachelessPlugin_logic_onWb_rspShifted;
  wire       [1:0]    _zz_LsuCachelessPlugin_logic_onWb_rspShifted_1;
  wire       [1:0]    _zz_LsuCachelessPlugin_logic_onWb_rspShifted_2;
  reg        [7:0]    _zz_LsuCachelessPlugin_logic_onWb_rspShifted_3;
  wire       [0:0]    _zz_LsuCachelessPlugin_logic_onWb_rspShifted_4;
  wire       [0:0]    _zz_LsuCachelessPlugin_logic_onWb_rspShifted_5;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_1;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_2;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_3;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_4;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_5;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_1;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_2;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_3;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_4;
  wire                _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_5;
  wire       [0:0]    _zz_LsuCachelessPlugin_pmaBuilder_onTransfers_0_addressHit;
  wire       [0:0]    _zz_LsuCachelessPlugin_logic_onPma_port_rsp_io;
  wire       [0:0]    _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_FPU_0;
  wire       [0:0]    _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_FPU_0_1;
  wire       [0:0]    _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_RM_0;
  wire       [0:0]    _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_RM_0_1;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_logic_LANES_LAYER_HIT_0_0;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_logic_LANES_LAYER_HIT_0_0_1;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0_1;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0_2;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_0;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_0_1;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0_2;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0_3;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_FENCE_OLDER_0;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_FENCE_OLDER_0_1;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0_0;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0_0_1;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0_1;
  wire       [0:0]    _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0_2;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_2;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_3;
  wire       [0:0]    _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_4;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_5;
  wire       [0:0]    _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_6;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_7;
  wire       [0:0]    _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_8;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_9;
  wire       [1:0]    _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_10;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_11;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_12;
  wire       [0:0]    _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_13;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_14;
  wire       [1:0]    _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_15;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_16;
  wire                _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_17;
  wire       [32:0]   _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_1;
  wire       [32:0]   _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_2;
  wire       [32:0]   _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_3;
  wire       [32:0]   _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_4;
  wire       [0:0]    _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception;
  wire       [0:0]    _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception_1;
  wire       [31:0]   _zz_TrapPlugin_logic_harts_0_trap_fsm_jumpTarget;
  wire       [2:0]    _zz_TrapPlugin_logic_harts_0_trap_fsm_jumpTarget_1;
  wire       [31:0]   _zz_PcPlugin_logic_harts_0_self_pc;
  wire       [2:0]    _zz_PcPlugin_logic_harts_0_self_pc_1;
  wire       [0:0]    _zz_PcPlugin_logic_harts_0_aggregator_fault;
  wire       [0:0]    _zz_CsrAccessPlugin_logic_fsm_inject_implemented;
  wire       [5:0]    _zz_CsrAccessPlugin_logic_fsm_inject_implemented_1;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_6;
  wire       [5:0]    _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_7;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_8;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_9;
  wire       [7:0]    _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_10;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_11;
  wire       [3:0]    _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_12;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_13;
  wire       [12:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_14;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_15;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_16;
  wire       [17:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_17;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_18;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_19;
  wire       [3:0]    _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_20;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_21;
  wire       [11:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_22;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_23;
  wire       [7:0]    _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_24;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_25;
  wire       [3:0]    _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_26;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_27;
  wire       [11:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_28;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_29;
  wire       [7:0]    _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_30;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_31;
  wire       [3:0]    _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_32;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_33;
  wire       [0:0]    _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_34;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_35;
  wire       [19:0]   _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_36;
  wire       [31:0]   _zz_CsrAccessPlugin_logic_fsm_writeLogic_alu_mask;
  wire       [4:0]    _zz_CsrAccessPlugin_logic_fsm_writeLogic_alu_mask_1;
  reg                 _zz_FetchCachelessPlugin_logic_join_haltIt;
  wire       [2:0]    _zz_CsrRamPlugin_logic_writeLogic_hits_ohFirst_masked;
  wire       [1:0]    _zz_CsrRamPlugin_logic_readLogic_hits_ohFirst_masked;
  reg        [1:0]    _zz_CsrRamPlugin_logic_readLogic_port_cmd_payload;
  wire       [2:0]    _zz_CsrRamPlugin_logic_flush_counter;
  wire       [0:0]    _zz_CsrRamPlugin_logic_flush_counter_1;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_IntAluPlugin_SEL_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_IntAluPlugin_SEL_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_BarrelShifterPlugin_SEL_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_BarrelShifterPlugin_SEL_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_BranchPlugin_SEL_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_BranchPlugin_SEL_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_EnvPlugin_SEL_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_EnvPlugin_SEL_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_CsrAccessPlugin_SEL_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_CsrAccessPlugin_SEL_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_SEL_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_SEL_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_LsuCachelessPlugin_FENCE_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_LsuCachelessPlugin_FENCE_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_2;
  wire       [31:0]   _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_3;
  wire       [31:0]   _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_4;
  wire       [0:0]    _zz_execute_ctrl1_down_COMPLETION_AT_2_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_COMPLETION_AT_2_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_COMPLETION_AT_3_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_COMPLETION_AT_3_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_COMPLETION_AT_4_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_COMPLETION_AT_4_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_4;
  wire       [0:0]    _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_5;
  wire       [0:0]    _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_3;
  wire       [0:0]    _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_4;
  wire       [0:0]    _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0_2;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0_2;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_SLTX_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_SLTX_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_SrcStageables_REVERT_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_SrcStageables_REVERT_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_SrcStageables_ZERO_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_SrcStageables_ZERO_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_lane0_IntFormatPlugin_logic_SIGNED_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_lane0_IntFormatPlugin_logic_SIGNED_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_BYPASSED_AT_1_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_BYPASSED_AT_1_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_BYPASSED_AT_2_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_BYPASSED_AT_2_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_BYPASSED_AT_3_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_BYPASSED_AT_3_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_BYPASSED_AT_4_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_BYPASSED_AT_4_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_SrcStageables_UNSIGNED_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_SrcStageables_UNSIGNED_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0_2;
  wire       [0:0]    _zz_execute_ctrl1_down_BarrelShifterPlugin_SIGNED_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_BarrelShifterPlugin_SIGNED_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_IMM_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_IMM_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0_2;
  wire       [0:0]    _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0_2;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_LOAD_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_LOAD_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_STORE_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_STORE_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_ATOMIC_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_ATOMIC_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_FLOAT_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_FLOAT_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_CLEAN_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_CLEAN_lane0_1;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_INVALIDATE_lane0;
  wire       [0:0]    _zz_execute_ctrl1_down_AguPlugin_INVALIDATE_lane0_1;
  wire       [31:0]   _zz__zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2;
  wire       [31:0]   _zz__zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2_1;
  wire                _zz_when_ExecuteLanePlugin_l306_2;
  wire                _zz_when_ExecuteLanePlugin_l306_2_1;
  wire                _zz_when_ExecuteLanePlugin_l306_2_2;
  wire                _zz_when_ExecuteLanePlugin_l306_2_3;
  wire                _zz_when_ExecuteLanePlugin_l306_2_4;
  wire                _zz_when_ExecuteLanePlugin_l306_2_5;
  wire                _zz_when_ExecuteLanePlugin_l306_2_6;
  wire       [31:0]   _zz_WhiteboxerPlugin_logic_csr_access_payload_address;
  wire       [0:0]    _zz_FetchCachelessPlugin_pmaBuilder_onTransfers_0_addressHit;
  wire       [0:0]    _zz_FetchCachelessPlugin_logic_onPma_port_rsp_io;
  reg        [0:0]    _zz_WhiteboxerPlugin_logic_perf_candidatesCount;
  wire       [0:0]    _zz_WhiteboxerPlugin_logic_perf_candidatesCount_1;
  reg        [0:0]    _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCount;
  wire       [0:0]    _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCount_1;
  wire       [59:0]   _zz__zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_1;
  wire       [0:0]    _zz__zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_1_1;
  wire       [59:0]   _zz__zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_1;
  wire       [0:0]    _zz__zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_1_1;
  wire       [59:0]   _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_1;
  wire       [0:0]    _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_1_1;
  wire       [59:0]   _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_1;
  wire       [0:0]    _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_1_1;
  wire       [59:0]   _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_1;
  wire       [0:0]    _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_1_1;
  wire       [59:0]   _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_1;
  wire       [0:0]    _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_1_1;
  wire                fetch_logic_ctrls_0_up_isReady;
  wire                execute_ctrl4_down_RD_ENABLE_lane0;
  reg        [31:0]   execute_ctrl5_up_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
  reg                 execute_ctrl5_up_COMMIT_lane0;
  reg        [4:0]    execute_ctrl5_up_RD_PHYS_lane0;
  wire                execute_ctrl3_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault;
  wire                execute_ctrl3_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_io;
  wire       [31:0]   execute_ctrl3_down_MMU_TRANSLATED_lane0;
  wire       [31:0]   execute_ctrl3_down_early0_SrcPlugin_ADD_SUB_lane0;
  wire                execute_ctrl3_down_AguPlugin_FLOAT_lane0;
  wire                execute_ctrl3_down_AguPlugin_ATOMIC_lane0;
  wire                execute_ctrl3_down_AguPlugin_LOAD_lane0;
  wire                execute_ctrl3_down_BYPASSED_AT_4_lane0;
  wire       [1:0]    execute_ctrl3_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
  wire                execute_ctrl3_down_lane0_IntFormatPlugin_logic_SIGNED_lane0;
  wire                execute_ctrl3_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
  wire                execute_ctrl3_down_COMPLETION_AT_4_lane0;
  wire                execute_ctrl3_down_lane0_integer_WriteBackPlugin_SEL_lane0;
  wire       [1:0]    execute_ctrl3_down_AguPlugin_SIZE_lane0;
  wire       [4:0]    execute_ctrl3_down_RD_PHYS_lane0;
  wire                execute_ctrl3_down_RD_ENABLE_lane0;
  wire       [31:0]   execute_ctrl3_down_PC_lane0;
  wire       [31:0]   execute_ctrl3_down_Decode_UOP_lane0;
  reg        [31:0]   execute_ctrl4_up_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0;
  reg                 execute_ctrl4_up_LsuCachelessPlugin_logic_onJoin_SC_MISS_lane0;
  reg                 execute_ctrl4_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault;
  reg                 execute_ctrl4_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_io;
  reg        [31:0]   execute_ctrl4_up_MMU_TRANSLATED_lane0;
  reg        [31:0]   execute_ctrl4_up_early0_SrcPlugin_ADD_SUB_lane0;
  reg                 execute_ctrl4_up_COMMIT_lane0;
  reg                 execute_ctrl4_up_AguPlugin_FLOAT_lane0;
  reg                 execute_ctrl4_up_AguPlugin_ATOMIC_lane0;
  reg                 execute_ctrl4_up_AguPlugin_LOAD_lane0;
  reg                 execute_ctrl4_up_BYPASSED_AT_4_lane0;
  reg        [1:0]    execute_ctrl4_up_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
  reg                 execute_ctrl4_up_lane0_IntFormatPlugin_logic_SIGNED_lane0;
  reg                 execute_ctrl4_up_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
  reg                 execute_ctrl4_up_COMPLETION_AT_4_lane0;
  reg                 execute_ctrl4_up_lane0_integer_WriteBackPlugin_SEL_lane0;
  reg                 execute_ctrl4_up_AguPlugin_SEL_lane0;
  reg        [1:0]    execute_ctrl4_up_AguPlugin_SIZE_lane0;
  reg        [15:0]   execute_ctrl4_up_Decode_UOP_ID_lane0;
  reg                 execute_ctrl4_up_TRAP_lane0;
  reg        [31:0]   execute_ctrl4_up_PC_lane0;
  reg        [31:0]   execute_ctrl4_up_Decode_UOP_lane0;
  wire                execute_ctrl2_down_AguPlugin_FLOAT_lane0;
  wire                execute_ctrl2_down_BYPASSED_AT_4_lane0;
  wire                execute_ctrl2_down_BYPASSED_AT_3_lane0;
  wire       [1:0]    execute_ctrl2_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
  wire                execute_ctrl2_down_lane0_IntFormatPlugin_logic_SIGNED_lane0;
  wire                execute_ctrl2_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
  wire                execute_ctrl2_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0;
  wire                execute_ctrl2_down_COMPLETION_AT_4_lane0;
  wire                execute_ctrl2_down_COMPLETION_AT_3_lane0;
  wire                execute_ctrl2_down_lane0_integer_WriteBackPlugin_SEL_lane0;
  reg                 execute_ctrl3_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault;
  reg                 execute_ctrl3_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_io;
  reg        [31:0]   execute_ctrl3_up_MMU_TRANSLATED_lane0;
  reg        [31:0]   execute_ctrl3_up_early0_SrcPlugin_ADD_SUB_lane0;
  reg                 execute_ctrl3_up_COMMIT_lane0;
  reg                 execute_ctrl3_up_AguPlugin_FLOAT_lane0;
  reg                 execute_ctrl3_up_AguPlugin_ATOMIC_lane0;
  reg                 execute_ctrl3_up_AguPlugin_STORE_lane0;
  reg                 execute_ctrl3_up_AguPlugin_LOAD_lane0;
  reg                 execute_ctrl3_up_BYPASSED_AT_4_lane0;
  reg                 execute_ctrl3_up_BYPASSED_AT_3_lane0;
  reg        [1:0]    execute_ctrl3_up_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
  reg                 execute_ctrl3_up_lane0_IntFormatPlugin_logic_SIGNED_lane0;
  reg                 execute_ctrl3_up_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
  reg                 execute_ctrl3_up_lane0_logic_completions_onCtrl_1_ENABLE_lane0;
  reg                 execute_ctrl3_up_COMPLETION_AT_4_lane0;
  reg                 execute_ctrl3_up_COMPLETION_AT_3_lane0;
  reg                 execute_ctrl3_up_lane0_integer_WriteBackPlugin_SEL_lane0;
  reg                 execute_ctrl3_up_AguPlugin_SEL_lane0;
  reg                 execute_ctrl3_up_CsrAccessPlugin_SEL_lane0;
  reg        [1:0]    execute_ctrl3_up_AguPlugin_SIZE_lane0;
  reg        [15:0]   execute_ctrl3_up_Decode_UOP_ID_lane0;
  reg        [31:0]   execute_ctrl3_up_PC_lane0;
  reg        [31:0]   execute_ctrl3_up_Decode_UOP_lane0;
  wire       [1:0]    execute_ctrl1_down_AguPlugin_SIZE_lane0;
  wire                execute_ctrl1_down_COMPLETED_lane0;
  wire       [4:0]    execute_ctrl1_down_RD_PHYS_lane0;
  wire       [15:0]   execute_ctrl1_down_Decode_UOP_ID_lane0;
  wire                execute_ctrl1_down_isReady;
  reg        [2:0]    execute_ctrl2_up_early0_EnvPlugin_OP_lane0;
  reg                 execute_ctrl2_up_AguPlugin_FLOAT_lane0;
  reg                 execute_ctrl2_up_AguPlugin_ATOMIC_lane0;
  reg                 execute_ctrl2_up_AguPlugin_STORE_lane0;
  reg                 execute_ctrl2_up_AguPlugin_LOAD_lane0;
  reg                 execute_ctrl2_up_CsrAccessPlugin_CSR_CLEAR_lane0;
  reg                 execute_ctrl2_up_CsrAccessPlugin_CSR_MASK_lane0;
  reg                 execute_ctrl2_up_CsrAccessPlugin_CSR_IMM_lane0;
  reg        [1:0]    execute_ctrl2_up_BranchPlugin_BRANCH_CTRL_lane0;
  reg                 execute_ctrl2_up_BarrelShifterPlugin_SIGNED_lane0;
  reg                 execute_ctrl2_up_BarrelShifterPlugin_LEFT_lane0;
  reg                 execute_ctrl2_up_SrcStageables_UNSIGNED_lane0;
  reg                 execute_ctrl2_up_BYPASSED_AT_4_lane0;
  reg                 execute_ctrl2_up_BYPASSED_AT_3_lane0;
  reg                 execute_ctrl2_up_BYPASSED_AT_2_lane0;
  reg        [1:0]    execute_ctrl2_up_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
  reg                 execute_ctrl2_up_lane0_IntFormatPlugin_logic_SIGNED_lane0;
  reg                 execute_ctrl2_up_SrcStageables_ZERO_lane0;
  reg                 execute_ctrl2_up_SrcStageables_REVERT_lane0;
  reg        [1:0]    execute_ctrl2_up_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0;
  reg                 execute_ctrl2_up_early0_IntAluPlugin_ALU_SLTX_lane0;
  reg                 execute_ctrl2_up_early0_IntAluPlugin_ALU_ADD_SUB_lane0;
  reg                 execute_ctrl2_up_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
  reg                 execute_ctrl2_up_lane0_logic_completions_onCtrl_1_ENABLE_lane0;
  reg                 execute_ctrl2_up_lane0_logic_completions_onCtrl_0_ENABLE_lane0;
  reg                 execute_ctrl2_up_COMPLETION_AT_4_lane0;
  reg                 execute_ctrl2_up_COMPLETION_AT_3_lane0;
  reg                 execute_ctrl2_up_COMPLETION_AT_2_lane0;
  reg                 execute_ctrl2_up_lane0_integer_WriteBackPlugin_SEL_lane0;
  reg                 execute_ctrl2_up_LsuCachelessPlugin_FENCE_lane0;
  reg                 execute_ctrl2_up_AguPlugin_SEL_lane0;
  reg                 execute_ctrl2_up_CsrAccessPlugin_SEL_lane0;
  reg                 execute_ctrl2_up_early0_EnvPlugin_SEL_lane0;
  reg                 execute_ctrl2_up_early0_BranchPlugin_SEL_lane0;
  reg                 execute_ctrl2_up_early0_BarrelShifterPlugin_SEL_lane0;
  reg                 execute_ctrl2_up_early0_IntAluPlugin_SEL_lane0;
  reg        [31:0]   execute_ctrl2_up_early0_SrcPlugin_SRC2_lane0;
  reg        [31:0]   execute_ctrl2_up_early0_SrcPlugin_SRC1_lane0;
  reg        [1:0]    execute_ctrl2_up_AguPlugin_SIZE_lane0;
  reg        [15:0]   execute_ctrl2_up_Decode_UOP_ID_lane0;
  reg        [31:0]   execute_ctrl2_up_PC_lane0;
  reg        [31:0]   execute_ctrl2_up_Decode_UOP_lane0;
  wire                execute_ctrl0_down_COMPLETED_lane0;
  wire       [4:0]    execute_ctrl0_down_RD_PHYS_lane0;
  wire                execute_ctrl0_down_TRAP_lane0;
  wire       [31:0]   execute_ctrl0_down_PC_lane0;
  reg        [1:0]    execute_ctrl1_up_AguPlugin_SIZE_lane0;
  reg                 execute_ctrl1_up_COMPLETED_lane0;
  reg        [4:0]    execute_ctrl1_up_RS2_PHYS_lane0;
  reg        [4:0]    execute_ctrl1_up_RS1_PHYS_lane0;
  reg        [15:0]   execute_ctrl1_up_Decode_UOP_ID_lane0;
  reg                 execute_ctrl1_up_TRAP_lane0;
  reg        [31:0]   execute_ctrl1_up_PC_lane0;
  reg        [31:0]   execute_ctrl1_up_Decode_UOP_lane0;
  wire                decode_ctrls_1_down_isReady;
  wire       [31:0]   decode_ctrls_0_down_Decode_INSTRUCTION_RAW_0;
  wire                decode_ctrls_0_down_Decode_DECOMPRESSION_FAULT_0;
  wire       [31:0]   decode_ctrls_0_down_Decode_INSTRUCTION_0;
  wire                decode_ctrls_0_down_isValid;
  wire                decode_ctrls_0_down_isReady;
  reg        [9:0]    decode_ctrls_1_up_Decode_DOP_ID_0;
  reg        [31:0]   decode_ctrls_1_up_PC_0;
  reg        [31:0]   decode_ctrls_1_up_Decode_INSTRUCTION_RAW_0;
  reg                 decode_ctrls_1_up_Decode_DECOMPRESSION_FAULT_0;
  reg        [31:0]   decode_ctrls_1_up_Decode_INSTRUCTION_0;
  wire                fetch_logic_ctrls_0_down_isValid;
  wire                fetch_logic_ctrls_0_down_isReady;
  reg                 fetch_logic_ctrls_1_up_MMU_ACCESS_FAULT;
  reg                 fetch_logic_ctrls_1_up_MMU_PAGE_FAULT;
  reg                 fetch_logic_ctrls_1_up_MMU_ALLOW_EXECUTE;
  reg                 fetch_logic_ctrls_1_up_MMU_REFILL;
  reg                 fetch_logic_ctrls_1_up_MMU_HAZARD;
  reg                 fetch_logic_ctrls_1_up_FetchCachelessPlugin_logic_fork_PMA_FAULT;
  reg        [0:0]    fetch_logic_ctrls_1_up_FetchCachelessPlugin_logic_BUFFER_ID;
  reg        [9:0]    fetch_logic_ctrls_1_up_Fetch_ID;
  reg        [31:0]   fetch_logic_ctrls_1_up_Fetch_WORD_PC;
  wire                decode_ctrls_1_down_valid;
  reg                 fetch_logic_ctrls_1_up_valid;
  wire                decode_ctrls_0_down_valid;
  reg                 fetch_logic_ctrls_0_down_valid;
  wire                execute_ctrl0_up_ready;
  wire                execute_ctrl0_down_ready;
  wire                execute_ctrl1_up_ready;
  wire                execute_ctrl1_down_ready;
  wire                execute_ctrl2_up_ready;
  wire                execute_ctrl2_down_ready;
  wire                execute_ctrl3_up_ready;
  wire                execute_ctrl3_down_ready;
  wire                execute_ctrl4_up_ready;
  wire                decode_ctrls_0_up_ready;
  wire                execute_ctrl4_down_ready;
  reg                 decode_ctrls_0_down_ready;
  wire                fetch_logic_ctrls_0_down_ready;
  wire                execute_ctrl5_up_ready;
  reg                 fetch_logic_ctrls_1_up_ready;
  wire                fetch_logic_ctrls_1_up_cancel;
  wire                execute_ctrl5_down_ready;
  wire                execute_ctrl2_down_LsuCachelessPlugin_logic_pmpPort_logic_NEED_HIT_lane0;
  wire                fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_pmpPort_logic_NEED_HIT;
  wire                execute_ctrl2_down_MMU_BYPASS_TRANSLATION_lane0;
  wire                execute_ctrl2_down_MMU_ALLOW_EXECUTE_lane0;
  wire                fetch_logic_ctrls_0_down_MMU_BYPASS_TRANSLATION;
  wire                fetch_logic_ctrls_0_down_MMU_ACCESS_FAULT;
  wire                fetch_logic_ctrls_0_down_MMU_PAGE_FAULT;
  wire                fetch_logic_ctrls_0_down_MMU_ALLOW_WRITE;
  wire                fetch_logic_ctrls_0_down_MMU_ALLOW_READ;
  wire                fetch_logic_ctrls_0_down_MMU_ALLOW_EXECUTE;
  wire       [31:0]   fetch_logic_ctrls_0_down_Fetch_WORD_PC;
  wire                execute_ctrl4_down_LsuCachelessPlugin_logic_onJoin_SC_MISS_lane0;
  wire                execute_ctrl4_down_AguPlugin_ATOMIC_lane0;
  wire       [31:0]   execute_ctrl4_down_MMU_TRANSLATED_lane0;
  wire       [1:0]    execute_ctrl4_down_AguPlugin_SIZE_lane0;
  wire                execute_ctrl4_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault;
  wire                execute_ctrl4_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_io;
  wire                execute_ctrl4_down_AguPlugin_LOAD_lane0;
  wire       [31:0]   execute_ctrl4_down_Decode_UOP_lane0;
  wire                execute_ctrl2_down_RD_ENABLE_lane0;
  reg                 execute_ctrl2_RD_ENABLE_lane0_bypass;
  reg                 execute_ctrl2_LANE_SEL_lane0_bypass;
  wire                execute_ctrl1_down_RD_ENABLE_lane0;
  reg                 execute_ctrl1_RD_ENABLE_lane0_bypass;
  wire                execute_ctrl1_down_LANE_SEL_lane0;
  reg                 execute_ctrl1_LANE_SEL_lane0_bypass;
  wire                execute_ctrl0_down_RD_ENABLE_lane0;
  reg                 execute_ctrl0_RD_ENABLE_lane0_bypass;
  reg                 execute_ctrl0_LANE_SEL_lane0_bypass;
  wire                execute_ctrl1_down_TRAP_lane0;
  wire       [2:0]    execute_ctrl1_down_early0_EnvPlugin_OP_lane0;
  wire                execute_ctrl1_down_AguPlugin_INVALIDATE_lane0;
  wire                execute_ctrl1_down_AguPlugin_CLEAN_lane0;
  wire                execute_ctrl1_down_AguPlugin_FLOAT_lane0;
  wire                execute_ctrl1_down_AguPlugin_ATOMIC_lane0;
  wire                execute_ctrl1_down_AguPlugin_STORE_lane0;
  wire                execute_ctrl1_down_AguPlugin_LOAD_lane0;
  wire                execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0;
  wire                execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0;
  wire                execute_ctrl1_down_CsrAccessPlugin_CSR_IMM_lane0;
  wire       [1:0]    execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0;
  wire                execute_ctrl1_down_BarrelShifterPlugin_SIGNED_lane0;
  wire                execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0;
  wire                execute_ctrl1_down_SrcStageables_UNSIGNED_lane0;
  wire                execute_ctrl1_down_BYPASSED_AT_4_lane0;
  wire                execute_ctrl1_down_BYPASSED_AT_3_lane0;
  wire                execute_ctrl1_down_BYPASSED_AT_2_lane0;
  wire       [1:0]    execute_ctrl1_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
  wire                execute_ctrl1_down_lane0_IntFormatPlugin_logic_SIGNED_lane0;
  wire                execute_ctrl1_down_SrcStageables_ZERO_lane0;
  wire                execute_ctrl1_down_SrcStageables_REVERT_lane0;
  wire       [1:0]    execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0;
  wire                execute_ctrl1_down_early0_IntAluPlugin_ALU_SLTX_lane0;
  wire                execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0;
  reg                 execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
  reg                 execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0;
  reg                 execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0;
  reg                 execute_ctrl1_down_COMPLETION_AT_4_lane0;
  reg                 execute_ctrl1_down_COMPLETION_AT_3_lane0;
  reg                 execute_ctrl1_down_COMPLETION_AT_2_lane0;
  reg                 execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0;
  reg                 execute_ctrl1_down_LsuCachelessPlugin_FENCE_lane0;
  reg                 execute_ctrl1_down_AguPlugin_SEL_lane0;
  reg                 execute_ctrl1_down_CsrAccessPlugin_SEL_lane0;
  reg                 execute_ctrl1_down_early0_EnvPlugin_SEL_lane0;
  reg                 execute_ctrl1_down_early0_BranchPlugin_SEL_lane0;
  reg                 execute_ctrl1_down_early0_BarrelShifterPlugin_SEL_lane0;
  reg                 execute_ctrl1_down_early0_IntAluPlugin_SEL_lane0;
  wire                execute_ctrl4_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
  wire                execute_ctrl3_down_TRAP_lane0;
  wire                execute_ctrl3_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0;
  wire                execute_ctrl2_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0;
  wire       [4:0]    execute_ctrl1_down_RS1_PHYS_lane0;
  wire       [4:0]    execute_ctrl0_down_RS1_PHYS_lane0;
  wire       [31:0]   execute_ctrl5_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
  wire       [4:0]    execute_ctrl1_down_RS2_PHYS_lane0;
  wire       [4:0]    execute_ctrl5_down_RD_PHYS_lane0;
  reg                 execute_ctrl5_up_RD_ENABLE_lane0;
  reg                 execute_ctrl5_up_LANE_SEL_lane0;
  wire       [4:0]    execute_ctrl0_down_RS2_PHYS_lane0;
  reg                 _zz_1;
  wire                fetch_logic_ctrls_1_down_MMU_HAZARD;
  wire                fetch_logic_ctrls_1_down_MMU_REFILL;
  wire                fetch_logic_ctrls_1_down_MMU_ACCESS_FAULT;
  wire                fetch_logic_ctrls_1_down_MMU_ALLOW_EXECUTE;
  wire                fetch_logic_ctrls_1_down_MMU_PAGE_FAULT;
  wire                fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_pmpPort_ACCESS_FAULT;
  wire                fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_fork_PMA_FAULT;
  wire                fetch_logic_ctrls_1_up_isCancel;
  wire                fetch_logic_ctrls_0_down_MMU_REFILL;
  wire                fetch_logic_ctrls_0_down_MMU_HAZARD;
  wire                fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_fork_PMA_FAULT;
  wire       [0:0]    fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_BUFFER_ID;
  wire                fetch_logic_ctrls_0_up_isMoving;
  wire                fetch_logic_ctrls_0_up_isValid;
  wire                execute_ctrl3_down_CsrAccessPlugin_SEL_lane0;
  wire       [4:0]    execute_ctrl2_down_RD_PHYS_lane0;
  wire                execute_ctrl2_down_CsrAccessPlugin_CSR_CLEAR_lane0;
  reg        [31:0]   execute_ctrl2_up_integer_RS1_lane0;
  wire                execute_ctrl2_down_CsrAccessPlugin_CSR_MASK_lane0;
  wire                execute_ctrl2_down_CsrAccessPlugin_CSR_IMM_lane0;
  wire                execute_ctrl2_down_CsrAccessPlugin_SEL_lane0;
  wire                fetch_logic_ctrls_0_up_isFiring;
  reg        [9:0]    fetch_logic_ctrls_0_up_Fetch_ID;
  wire                fetch_logic_ctrls_0_up_Fetch_PC_FAULT;
  wire       [31:0]   fetch_logic_ctrls_0_up_Fetch_WORD_PC;
  reg                 fetch_logic_ctrls_0_up_ready;
  wire                fetch_logic_ctrls_0_up_valid;
  wire       [31:0]   execute_ctrl4_down_PC_lane0;
  wire                execute_ctrl4_down_TRAP_lane0;
  wire                execute_ctrl5_down_COMMIT_lane0;
  wire                execute_ctrl5_down_isReady;
  wire                execute_ctrl5_down_LANE_SEL_lane0;
  wire                decode_ctrls_0_down_TRAP_0;
  wire                decode_ctrls_1_down_LANE_SEL_0;
  reg                 decode_ctrls_1_LANE_SEL_0_bypass;
  wire                decode_ctrls_0_down_LANE_SEL_0;
  reg                 decode_ctrls_0_LANE_SEL_0_bypass;
  wire                decode_ctrls_0_up_isMoving;
  wire       [9:0]    fetch_logic_ctrls_1_down_Fetch_ID;
  reg                 fetch_logic_ctrls_1_down_TRAP;
  wire                fetch_logic_ctrls_1_down_ready;
  reg                 fetch_logic_ctrls_1_down_valid;
  wire       [31:0]   fetch_logic_ctrls_1_down_Fetch_WORD;
  wire                fetch_logic_ctrls_1_down_isReady;
  wire                fetch_logic_ctrls_1_down_isValid;
  wire       [15:0]   execute_ctrl0_down_Decode_UOP_ID_lane0;
  wire                execute_ctrl0_down_isReady;
  wire                execute_ctrl0_down_LANE_SEL_lane0;
  wire       [9:0]    decode_ctrls_1_down_Decode_DOP_ID_0;
  wire                decode_ctrls_1_down_DecoderPlugin_logic_NEED_RM_0;
  wire                decode_ctrls_1_down_DecoderPlugin_logic_NEED_FPU_0;
  wire       [4:0]    execute_ctrl4_down_RD_PHYS_lane0;
  wire                execute_ctrl4_down_lane0_integer_WriteBackPlugin_SEL_lane0;
  wire       [15:0]   execute_ctrl4_down_Decode_UOP_ID_lane0;
  wire                execute_ctrl4_down_COMMIT_lane0;
  wire                execute_ctrl4_down_isReady;
  wire                execute_ctrl4_down_LANE_SEL_lane0;
  wire       [31:0]   execute_ctrl4_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
  wire       [31:0]   execute_ctrl4_lane0_integer_WriteBackPlugin_logic_DATA_lane0_bypass;
  reg        [31:0]   execute_ctrl4_up_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
  wire       [15:0]   execute_ctrl3_down_Decode_UOP_ID_lane0;
  wire                execute_ctrl3_down_COMMIT_lane0;
  wire                execute_ctrl3_down_isReady;
  wire                execute_ctrl3_down_LANE_SEL_lane0;
  wire       [31:0]   execute_ctrl3_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
  wire       [31:0]   execute_ctrl3_lane0_integer_WriteBackPlugin_logic_DATA_lane0_bypass;
  reg        [31:0]   execute_ctrl3_up_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
  wire                execute_ctrl2_down_LANE_SEL_lane0;
  wire       [31:0]   execute_ctrl2_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
  wire       [31:0]   execute_ctrl2_lane0_integer_WriteBackPlugin_logic_DATA_lane0_bypass;
  wire                execute_ctrl0_up_COMPLETED_lane0;
  wire                execute_ctrl0_up_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_lane0;
  wire                execute_ctrl0_up_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0_lane0;
  wire       [4:0]    execute_ctrl0_up_RD_PHYS_lane0;
  reg                 execute_ctrl0_up_RD_ENABLE_lane0;
  wire       [4:0]    execute_ctrl0_up_RS2_PHYS_lane0;
  wire                execute_ctrl0_up_RS2_ENABLE_lane0;
  wire       [4:0]    execute_ctrl0_up_RS1_PHYS_lane0;
  wire                execute_ctrl0_up_RS1_ENABLE_lane0;
  wire       [15:0]   execute_ctrl0_up_Decode_UOP_ID_lane0;
  wire                execute_ctrl0_up_TRAP_lane0;
  wire       [31:0]   execute_ctrl0_up_PC_lane0;
  wire                execute_ctrl0_up_DispatchPlugin_DONT_FLUSH_FROM_LANES_lane0;
  wire                execute_ctrl0_up_DispatchPlugin_DONT_FLUSH_lane0;
  reg                 execute_ctrl0_up_DispatchPlugin_MAY_FLUSH_lane0;
  wire                execute_ctrl0_up_DispatchPlugin_FENCE_OLDER_lane0;
  wire       [31:0]   execute_ctrl0_up_Decode_UOP_lane0;
  wire                execute_ctrl0_up_LANE_SEL_lane0;
  wire                decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0;
  wire                decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0_0;
  wire       [31:0]   decode_ctrls_1_down_PC_0;
  wire                decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0;
  wire                decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_0;
  wire                decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0;
  wire                decode_ctrls_1_down_DispatchPlugin_FENCE_OLDER_0;
  wire                decode_ctrls_1_down_DispatchPlugin_logic_LANES_LAYER_HIT_0_0;
  wire                decode_ctrls_1_up_isValid;
  reg                 decode_ctrls_1_down_ready;
  wire                execute_ctrl4_down_BYPASSED_AT_4_lane0;
  reg        [4:0]    execute_ctrl4_up_RD_PHYS_lane0;
  reg                 execute_ctrl4_up_RD_ENABLE_lane0;
  wire                execute_ctrl3_down_BYPASSED_AT_3_lane0;
  reg        [4:0]    execute_ctrl3_up_RD_PHYS_lane0;
  reg                 execute_ctrl3_up_RD_ENABLE_lane0;
  wire                execute_ctrl2_down_BYPASSED_AT_2_lane0;
  reg        [4:0]    execute_ctrl2_up_RD_PHYS_lane0;
  reg                 execute_ctrl2_up_RD_ENABLE_lane0;
  wire                execute_ctrl1_down_BYPASSED_AT_1_lane0;
  reg        [4:0]    execute_ctrl1_up_RD_PHYS_lane0;
  reg                 execute_ctrl1_up_RD_ENABLE_lane0;
  wire                execute_ctrl4_down_AguPlugin_FLOAT_lane0;
  wire                execute_ctrl4_down_AguPlugin_SEL_lane0;
  wire       [31:0]   execute_ctrl4_down_early0_SrcPlugin_ADD_SUB_lane0;
  wire       [31:0]   execute_ctrl4_down_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0;
  wire                execute_ctrl3_up_LsuCachelessPlugin_WITH_ACCESS_lane0;
  reg                 execute_ctrl3_up_LsuCachelessPlugin_WITH_RSP_lane0;
  reg                 execute_ctrl3_up_TRAP_lane0;
  wire                execute_ctrl3_down_AguPlugin_STORE_lane0;
  wire                execute_ctrl3_down_AguPlugin_SEL_lane0;
  wire       [31:0]   execute_ctrl3_down_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0;
  wire                execute_ctrl3_down_LsuCachelessPlugin_logic_onJoin_SC_MISS_lane0;
  wire                execute_ctrl3_down_LsuCachelessPlugin_WITH_RSP_lane0;
  wire                execute_ctrl2_down_LsuCachelessPlugin_WITH_RSP_lane0;
  wire                execute_ctrl2_down_MMU_HAZARD_lane0;
  wire                execute_ctrl2_down_MMU_REFILL_lane0;
  wire                execute_ctrl2_down_MMU_ALLOW_READ_lane0;
  wire                execute_ctrl2_down_MMU_ALLOW_WRITE_lane0;
  wire                execute_ctrl2_down_MMU_PAGE_FAULT_lane0;
  wire                execute_ctrl2_down_LsuCachelessPlugin_logic_pmpPort_ACCESS_FAULT_lane0;
  wire                execute_ctrl2_down_MMU_ACCESS_FAULT_lane0;
  wire                execute_ctrl4_down_COMPLETION_AT_4_lane0;
  reg                 execute_ctrl4_up_COMPLETED_lane0;
  wire                execute_ctrl4_down_COMPLETED_lane0;
  wire                execute_ctrl4_COMPLETED_lane0_bypass;
  wire                execute_ctrl3_down_COMPLETION_AT_3_lane0;
  reg                 execute_ctrl3_up_COMPLETED_lane0;
  wire                execute_ctrl3_down_COMPLETED_lane0;
  wire                execute_ctrl3_COMPLETED_lane0_bypass;
  wire                execute_ctrl2_down_COMPLETION_AT_2_lane0;
  reg                 execute_ctrl2_up_COMPLETED_lane0;
  wire                execute_ctrl2_down_COMPLETED_lane0;
  wire                execute_ctrl2_COMPLETED_lane0_bypass;
  reg                 execute_ctrl1_up_LANE_SEL_lane0;
  wire       [31:0]   decode_ctrls_1_down_Decode_UOP_0;
  reg                 decode_ctrls_1_up_TRAP_0;
  reg                 decode_ctrls_1_TRAP_0_bypass;
  wire       [15:0]   decode_ctrls_1_down_Decode_UOP_ID_0;
  wire                decode_ctrls_1_up_isReady;
  wire                decode_ctrls_1_down_TRAP_0;
  reg                 decode_ctrls_1_up_LANE_SEL_0;
  wire       [31:0]   decode_ctrls_1_down_Decode_INSTRUCTION_RAW_0;
  wire                decode_ctrls_1_down_Decode_DECOMPRESSION_FAULT_0;
  wire                decode_ctrls_1_down_Decode_LEGAL_0;
  wire       [4:0]    decode_ctrls_1_down_RD_PHYS_0;
  reg                 decode_ctrls_1_down_RD_ENABLE_0;
  wire       [4:0]    decode_ctrls_1_down_RS2_PHYS_0;
  wire                decode_ctrls_1_down_RS2_ENABLE_0;
  wire       [4:0]    decode_ctrls_1_down_RS1_PHYS_0;
  wire       [31:0]   decode_ctrls_1_down_Decode_INSTRUCTION_0;
  wire                decode_ctrls_1_down_RS1_ENABLE_0;
  wire                decode_ctrls_1_up_isCanceling;
  wire                decode_ctrls_1_up_ready;
  reg                 decode_ctrls_1_up_valid;
  wire                decode_ctrls_1_up_isMoving;
  wire                execute_ctrl2_down_early0_EnvPlugin_SEL_lane0;
  wire       [1:0]    execute_ctrl4_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
  wire                execute_ctrl4_down_lane0_IntFormatPlugin_logic_SIGNED_lane0;
  reg                 execute_ctrl4_up_LANE_SEL_lane0;
  reg                 execute_ctrl3_up_LANE_SEL_lane0;
  wire                execute_ctrl2_down_SrcStageables_UNSIGNED_lane0;
  wire                execute_ctrl2_down_SrcStageables_ZERO_lane0;
  wire                execute_ctrl2_down_SrcStageables_REVERT_lane0;
  wire       [31:0]   execute_ctrl1_down_PC_lane0;
  wire       [31:0]   execute_ctrl1_down_integer_RS2_lane0;
  wire       [1:0]    execute_ctrl1_down_early0_SrcPlugin_logic_SRC2_CTRL_lane0;
  wire       [31:0]   execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0;
  wire       [31:0]   execute_ctrl1_down_integer_RS1_lane0;
  wire       [0:0]    execute_ctrl1_down_early0_SrcPlugin_logic_SRC1_CTRL_lane0;
  wire       [31:0]   execute_ctrl1_down_early0_SrcPlugin_SRC1_lane0;
  wire       [31:0]   execute_ctrl1_down_Decode_UOP_lane0;
  wire       [2:0]    execute_ctrl2_down_early0_EnvPlugin_OP_lane0;
  wire                execute_ctrl2_down_isReady;
  wire                execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_IS_JALR_lane0;
  wire                execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_IS_JAL_lane0;
  wire                execute_ctrl2_up_COMMIT_lane0;
  wire                execute_ctrl2_down_COMMIT_lane0;
  reg                 execute_ctrl2_COMMIT_lane0_bypass;
  reg                 execute_ctrl2_up_TRAP_lane0;
  wire                execute_ctrl2_down_TRAP_lane0;
  reg                 execute_ctrl2_TRAP_lane0_bypass;
  wire                execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_MISSALIGNED_lane0;
  wire                execute_ctrl2_down_early0_BranchPlugin_SEL_lane0;
  wire                execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0;
  wire                execute_ctrl2_down_early0_BranchPlugin_logic_alu_MSB_FAILED_lane0;
  wire                execute_ctrl2_down_early0_BranchPlugin_logic_alu_EQ_lane0;
  wire                decode_ctrls_1_lane0_upIsCancel;
  wire                decode_ctrls_1_lane0_downIsCancel;
  wire       [9:0]    decode_ctrls_0_down_Fetch_ID_0;
  wire       [31:0]   decode_ctrls_0_down_PC_0;
  wire       [9:0]    fetch_logic_ctrls_0_down_Fetch_ID;
  wire       [15:0]   execute_ctrl2_down_Decode_UOP_ID_lane0;
  wire                execute_ctrl2_down_LsuCachelessPlugin_FENCE_lane0;
  wire                execute_ctrl2_down_AguPlugin_ATOMIC_lane0;
  wire                execute_ctrl2_down_AguPlugin_SEL_lane0;
  reg                 execute_ctrl2_up_LANE_SEL_lane0;
  wire                execute_ctrl2_down_LsuCachelessPlugin_logic_onTrigger_HIT_lane0;
  wire                execute_ctrl2_down_AguPlugin_LOAD_lane0;
  wire                execute_ctrl2_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault;
  wire                execute_ctrl2_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_io;
  wire                execute_ctrl2_down_AguPlugin_STORE_lane0;
  wire       [31:0]   execute_ctrl2_down_MMU_TRANSLATED_lane0;
  wire                execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_MISS_ALIGNED_lane0;
  wire       [1:0]    execute_ctrl2_down_AguPlugin_SIZE_lane0;
  wire       [31:0]   execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_RAW_ADDRESS_lane0;
  reg        [31:0]   execute_ctrl2_up_integer_RS2_lane0;
  reg        [31:0]   execute_ctrl2_down_LsuCachelessPlugin_logic_onFirst_WRITE_DATA_lane0;
  wire       [31:0]   execute_ctrl0_down_Decode_UOP_lane0;
  wire       [1:0]    execute_ctrl0_down_AguPlugin_SIZE_lane0;
  wire                fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_onPma_RSP_fault;
  wire                fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_onPma_RSP_io;
  wire       [31:0]   fetch_logic_ctrls_0_down_MMU_TRANSLATED;
  wire       [0:0]    fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_BUFFER_ID;
  wire                fetch_logic_ctrls_1_up_isValid;
  reg                 _zz_2;
  wire                decode_ctrls_0_up_isReady;
  wire                decode_ctrls_0_up_isValid;
  wire                decode_ctrls_0_up_valid;
  wire                decode_ctrls_0_up_TRAP_0;
  wire       [9:0]    decode_ctrls_0_up_Fetch_ID_0;
  wire       [9:0]    decode_ctrls_0_up_Decode_DOP_ID_0;
  wire       [31:0]   decode_ctrls_0_up_PC_0;
  reg        [31:0]   decode_ctrls_0_up_Decode_INSTRUCTION_RAW_0;
  wire                decode_ctrls_0_up_Decode_DECOMPRESSION_FAULT_0;
  wire       [31:0]   decode_ctrls_0_up_Decode_INSTRUCTION_0;
  wire                decode_ctrls_0_up_LANE_SEL_0;
  wire       [9:0]    decode_ctrls_0_down_Decode_DOP_ID_0;
  wire                decode_ctrls_0_lane0_upIsCancel;
  wire                decode_ctrls_0_lane0_downIsCancel;
  wire                decode_ctrls_0_up_isFiring;
  wire       [0:0]    fetch_logic_ctrls_1_down_AlignerPlugin_logic_FETCH_LAST;
  wire       [31:0]   fetch_logic_ctrls_1_down_Fetch_WORD_PC;
  wire       [0:0]    fetch_logic_ctrls_1_down_AlignerPlugin_logic_FETCH_MASK;
  (* keep , syn_keep *) wire       [31:0]   execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_LAST_SLICE_lane0 /* synthesis syn_keep = 1 */ ;
  (* keep , syn_keep *) wire       [31:0]   execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_FALSE_lane0 /* synthesis syn_keep = 1 */ ;
  (* keep , syn_keep *) reg        [31:0]   execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_TRUE_lane0 /* synthesis syn_keep = 1 */ ;
  wire       [31:0]   execute_ctrl2_down_PC_lane0;
  wire       [1:0]    execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0;
  wire       [31:0]   execute_ctrl2_down_Decode_UOP_lane0;
  wire                fetch_logic_ctrls_0_down_isFiring;
  wire                execute_ctrl2_down_early0_BarrelShifterPlugin_SEL_lane0;
  wire       [31:0]   execute_ctrl2_down_early0_BarrelShifterPlugin_SHIFT_RESULT_lane0;
  wire                execute_ctrl2_down_BarrelShifterPlugin_SIGNED_lane0;
  wire                execute_ctrl2_down_BarrelShifterPlugin_LEFT_lane0;
  wire                execute_ctrl2_down_early0_IntAluPlugin_SEL_lane0;
  wire       [31:0]   execute_ctrl2_down_early0_IntAluPlugin_ALU_RESULT_lane0;
  wire                execute_ctrl2_down_early0_IntAluPlugin_ALU_SLTX_lane0;
  wire                execute_ctrl2_down_early0_SrcPlugin_LESS_lane0;
  wire                execute_ctrl2_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0;
  wire       [31:0]   execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0;
  wire       [31:0]   execute_ctrl2_down_early0_SrcPlugin_SRC2_lane0;
  wire       [31:0]   execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0;
  wire       [1:0]    execute_ctrl2_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0;
  wire                AlignerPlugin_api_singleFetch;
  wire                AlignerPlugin_api_downMoving;
  wire                AlignerPlugin_api_haltIt;
  wire                DispatchPlugin_api_haltDispatch;
  wire                execute_freeze_valid;
  wire       [0:0]    execute_lane0_api_hartsInflight;
  wire                execute_lane0_ctrls_2_upIsCancel;
  wire                execute_lane0_ctrls_2_downIsCancel;
  wire                CsrRamPlugin_api_holdRead;
  wire                CsrRamPlugin_api_holdWrite;
  reg                 CsrAccessPlugin_bus_decode_exception;
  wire                CsrAccessPlugin_bus_decode_read;
  wire                CsrAccessPlugin_bus_decode_write;
  wire       [11:0]   CsrAccessPlugin_bus_decode_address;
  reg                 CsrAccessPlugin_bus_decode_trap;
  wire                PrivilegedPlugin_api_lsuTriggerBus_load;
  wire                PrivilegedPlugin_api_lsuTriggerBus_store;
  wire       [31:0]   PrivilegedPlugin_api_lsuTriggerBus_virtual;
  wire       [1:0]    PrivilegedPlugin_api_lsuTriggerBus_size;
  wire                PrivilegedPlugin_api_harts_0_allowInterrupts;
  wire                PrivilegedPlugin_api_harts_0_allowException;
  wire                PrivilegedPlugin_api_harts_0_allowEbreakException;
  wire                PrivilegedPlugin_api_harts_0_fpuEnable;
  reg                 TrapPlugin_api_harts_0_redo;
  reg                 TrapPlugin_api_harts_0_askWake;
  reg                 TrapPlugin_api_harts_0_rvTrap;
  wire                TrapPlugin_api_harts_0_fsmBusy;
  wire                TrapPlugin_api_harts_0_holdPrivChange;
  wire                FetchCachelessPlugin_logic_trapPort_valid;
  reg                 FetchCachelessPlugin_logic_trapPort_payload_exception;
  wire       [31:0]   FetchCachelessPlugin_logic_trapPort_payload_tval;
  wire       [0:0]    decode_logic_trapPending;
  wire       [0:0]    DispatchPlugin_logic_trapPendings;
  wire       [0:0]    execute_lane0_logic_trapPending;
  wire                early0_IntAluPlugin_logic_wb_valid;
  wire       [31:0]   early0_IntAluPlugin_logic_wb_payload;
  (* keep , syn_keep *) reg        [31:0]   early0_IntAluPlugin_logic_alu_bitwise /* synthesis syn_keep = 1 */ ;
  wire       [31:0]   early0_IntAluPlugin_logic_alu_result;
  wire                early0_BarrelShifterPlugin_logic_wb_valid;
  wire       [31:0]   early0_BarrelShifterPlugin_logic_wb_payload;
  wire       [4:0]    early0_BarrelShifterPlugin_logic_shift_amplitude;
  wire       [31:0]   early0_BarrelShifterPlugin_logic_shift_reversed;
  wire       [31:0]   early0_BarrelShifterPlugin_logic_shift_shifted;
  wire       [31:0]   early0_BarrelShifterPlugin_logic_shift_patched;
  wire                early0_BranchPlugin_logic_wb_valid;
  wire       [31:0]   early0_BranchPlugin_logic_wb_payload;
  wire                early0_BranchPlugin_logic_pcPort_valid;
  wire                early0_BranchPlugin_logic_pcPort_payload_fault;
  wire       [31:0]   early0_BranchPlugin_logic_pcPort_payload_pc;
  wire                PcPlugin_logic_harts_0_aggregator_sortedByPriority_1_laneValid;
  wire                early0_BranchPlugin_logic_flushPort_valid;
  reg                 LsuCachelessPlugin_logic_trapPort_valid;
  reg                 LsuCachelessPlugin_logic_trapPort_payload_exception;
  wire       [31:0]   LsuCachelessPlugin_logic_trapPort_payload_tval;
  wire                CsrAccessPlugin_logic_wbWi_valid;
  wire       [31:0]   CsrAccessPlugin_logic_wbWi_payload;
  reg                 CsrAccessPlugin_logic_flushPort_valid;
  reg                 PrivilegedPlugin_logic_harts_0_xretAwayFromMachine;
  wire       [0:0]    PrivilegedPlugin_logic_harts_0_commitMask;
  reg                 PrivilegedPlugin_logic_harts_0_int_pending;
  reg        [1:0]    PrivilegedPlugin_logic_harts_0_privilege;
  wire                PrivilegedPlugin_logic_harts_0_withMachinePrivilege;
  wire                PrivilegedPlugin_logic_harts_0_withSupervisorPrivilege;
  wire                PrivilegedPlugin_logic_harts_0_hartRunning;
  wire                PrivilegedPlugin_logic_harts_0_debugMode;
  wire                _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue;
  reg                 PrivilegedPlugin_logic_harts_0_m_status_mie;
  reg                 PrivilegedPlugin_logic_harts_0_m_status_mpie;
  wire       [1:0]    PrivilegedPlugin_logic_harts_0_m_status_mpp;
  wire                PrivilegedPlugin_logic_harts_0_m_status_sd;
  wire                PrivilegedPlugin_logic_harts_0_m_status_tw;
  reg                 PrivilegedPlugin_logic_harts_0_m_status_mprv;
  wire                _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_1;
  reg                 PrivilegedPlugin_logic_harts_0_m_cause_interrupt;
  reg        [3:0]    PrivilegedPlugin_logic_harts_0_m_cause_code;
  wire                _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_2;
  reg                 PrivilegedPlugin_logic_harts_0_m_ip_meip;
  reg                 PrivilegedPlugin_logic_harts_0_m_ip_mtip;
  reg                 PrivilegedPlugin_logic_harts_0_m_ip_msip;
  wire                _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_3;
  reg                 PrivilegedPlugin_logic_harts_0_m_ie_meie;
  reg                 PrivilegedPlugin_logic_harts_0_m_ie_mtie;
  reg                 PrivilegedPlugin_logic_harts_0_m_ie_msie;
  wire                _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_4;
  wire                _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_valid;
  wire                _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_valid;
  wire                _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_valid;
  reg        [3:0]    PrivilegedPlugin_logic_harts_0_m_topi_interrupt;
  wire       [0:0]    PrivilegedPlugin_logic_harts_0_m_topi_priority;
  wire                _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_5;
  reg                 early0_EnvPlugin_logic_trapPort_valid;
  reg                 early0_EnvPlugin_logic_trapPort_payload_exception;
  wire       [31:0]   early0_EnvPlugin_logic_trapPort_payload_tval;
  reg        [3:0]    early0_EnvPlugin_logic_trapPort_payload_code;
  reg        [1:0]    early0_EnvPlugin_logic_trapPort_payload_arg;
  reg                 early0_EnvPlugin_logic_flushPort_valid;
  wire                WhiteboxerPlugin_logic_fetch_fire;
  reg        [31:0]   early0_BranchPlugin_pcCalc_target_a;
  reg        [31:0]   early0_BranchPlugin_pcCalc_target_b;
  wire       [1:0]    early0_BranchPlugin_pcCalc_slices;
  wire       [0:0]    AlignerPlugin_logic_maskGen_frontMasks_0;
  wire       [0:0]    AlignerPlugin_logic_maskGen_backMasks_0;
  wire       [31:0]   AlignerPlugin_logic_slices_data_0;
  wire       [0:0]    AlignerPlugin_logic_slices_mask;
  wire       [0:0]    AlignerPlugin_logic_slices_last;
  wire       [31:0]   AlignerPlugin_logic_slicesInstructions_0;
  reg        [0:0]    AlignerPlugin_logic_scanners_0_usageMask;
  wire                AlignerPlugin_logic_scanners_0_checker_0_required;
  wire                AlignerPlugin_logic_scanners_0_checker_0_last;
  wire                AlignerPlugin_logic_scanners_0_checker_0_redo;
  wire                AlignerPlugin_logic_scanners_0_checker_0_present;
  wire                AlignerPlugin_logic_scanners_0_checker_0_valid;
  wire                AlignerPlugin_logic_scanners_0_redo;
  wire                AlignerPlugin_logic_scanners_0_valid;
  wire       [0:0]    AlignerPlugin_logic_usedMask_0;
  wire       [0:0]    AlignerPlugin_logic_usedMask_1;
  wire                AlignerPlugin_logic_extractors_0_first;
  wire       [0:0]    AlignerPlugin_logic_extractors_0_usableMask;
  wire                AlignerPlugin_logic_extractors_0_usableMask_bools_0;
  wire       [0:0]    _zz_AlignerPlugin_logic_extractors_0_slicesOh;
  wire       [0:0]    AlignerPlugin_logic_extractors_0_slicesOh;
  reg                 AlignerPlugin_logic_extractors_0_redo;
  wire       [0:0]    AlignerPlugin_logic_extractors_0_localMask;
  reg        [0:0]    AlignerPlugin_logic_extractors_0_usageMask;
  reg                 AlignerPlugin_logic_extractors_0_valid;
  wire       [31:0]   AlignerPlugin_logic_extractors_0_ctx_pc;
  wire       [31:0]   AlignerPlugin_logic_extractors_0_ctx_instruction;
  wire       [9:0]    AlignerPlugin_logic_extractors_0_ctx_hm_Fetch_ID;
  wire                AlignerPlugin_logic_extractors_0_ctx_trap;
  wire                when_AlignerPlugin_l160;
  reg        [9:0]    AlignerPlugin_logic_feeder_harts_0_dopId;
  wire                when_AlignerPlugin_l171;
  wire                AlignerPlugin_logic_feeder_lanes_0_valid;
  wire                AlignerPlugin_logic_feeder_lanes_0_isRvc;
  reg        [0:0]    AlignerPlugin_logic_nobuffer_mask;
  wire       [0:0]    AlignerPlugin_logic_nobuffer_remaningMask;
  wire                when_AlignerPlugin_l292;
  reg        [3:0]    CsrAccessPlugin_bus_decode_trapCode;
  wire                CsrAccessPlugin_bus_decode_fence;
  wire                CsrAccessPlugin_bus_read_valid;
  wire                CsrAccessPlugin_bus_read_moving;
  wire       [11:0]   CsrAccessPlugin_bus_read_address;
  reg                 CsrAccessPlugin_bus_read_halt;
  wire       [31:0]   CsrAccessPlugin_bus_read_toWriteBits;
  wire       [31:0]   CsrAccessPlugin_bus_read_data;
  wire                CsrAccessPlugin_bus_write_valid;
  wire                CsrAccessPlugin_bus_write_moving;
  reg                 CsrAccessPlugin_bus_write_halt;
  reg        [31:0]   CsrAccessPlugin_bus_write_bits;
  wire       [11:0]   CsrAccessPlugin_bus_write_address;
  reg        [3:0]    FetchCachelessPlugin_logic_trapPort_payload_code;
  reg        [1:0]    FetchCachelessPlugin_logic_trapPort_payload_arg;
  wire                FetchCachelessPlugin_logic_bus_cmd_valid;
  wire                FetchCachelessPlugin_logic_bus_cmd_ready;
  wire       [0:0]    FetchCachelessPlugin_logic_bus_cmd_payload_id;
  wire       [31:0]   FetchCachelessPlugin_logic_bus_cmd_payload_address;
  wire                FetchCachelessPlugin_logic_bus_rsp_valid;
  wire       [0:0]    FetchCachelessPlugin_logic_bus_rsp_payload_id;
  wire                FetchCachelessPlugin_logic_bus_rsp_payload_error;
  wire       [31:0]   FetchCachelessPlugin_logic_bus_rsp_payload_word;
  reg                 FetchCachelessPlugin_logic_buffer_reserveId_willIncrement;
  wire                FetchCachelessPlugin_logic_buffer_reserveId_willClear;
  reg        [0:0]    FetchCachelessPlugin_logic_buffer_reserveId_valueNext;
  reg        [0:0]    FetchCachelessPlugin_logic_buffer_reserveId_value;
  wire                FetchCachelessPlugin_logic_buffer_reserveId_willOverflowIfInc;
  wire                FetchCachelessPlugin_logic_buffer_reserveId_willOverflow;
  reg                 FetchCachelessPlugin_logic_buffer_inflight_0;
  reg                 FetchCachelessPlugin_logic_buffer_inflight_1;
  reg                 FetchCachelessPlugin_logic_buffer_write_valid;
  wire       [0:0]    FetchCachelessPlugin_logic_buffer_write_payload_address;
  wire                FetchCachelessPlugin_logic_buffer_write_payload_data_error;
  wire       [31:0]   FetchCachelessPlugin_logic_buffer_write_payload_data_word;
  wire                FetchCachelessPlugin_logic_buffer_reservedHits_0;
  wire                FetchCachelessPlugin_logic_buffer_full;
  wire                FetchCachelessPlugin_logic_buffer_inflightSpawn;
  wire       [1:0]    _zz_4;
  wire       [1:0]    _zz_5;
  wire       [31:0]   FetchCachelessPlugin_logic_onPma_port_cmd_address;
  wire                FetchCachelessPlugin_logic_onPma_port_rsp_fault;
  wire                FetchCachelessPlugin_logic_onPma_port_rsp_io;
  reg        [3:0]    LsuCachelessPlugin_logic_trapPort_payload_code;
  reg        [1:0]    LsuCachelessPlugin_logic_trapPort_payload_arg;
  reg                 LsuCachelessPlugin_logic_flushPort_valid;
  wire       [15:0]   LsuCachelessPlugin_logic_flushPort_payload_uopId;
  wire                LsuCachelessPlugin_logic_flushPort_payload_self;
  wire                LsuCachelessPlugin_logic_frontend_defaultsDecodings_0;
  wire                LsuCachelessPlugin_logic_frontend_defaultsDecodings_1;
  wire                LsuCachelessPlugin_logic_frontend_defaultsDecodings_2;
  wire                LsuCachelessPlugin_logic_frontend_defaultsDecodings_3;
  wire                LsuCachelessPlugin_logic_frontend_defaultsDecodings_4;
  wire                LsuCachelessPlugin_logic_frontend_defaultsDecodings_5;
  wire                LsuCachelessPlugin_logic_iwb_valid;
  wire       [31:0]   LsuCachelessPlugin_logic_iwb_payload;
  wire                execute_lane0_ctrls_0_upIsCancel;
  wire                execute_lane0_ctrls_0_downIsCancel;
  wire                execute_lane0_ctrls_3_upIsCancel;
  wire                execute_lane0_ctrls_3_downIsCancel;
  wire                execute_lane0_ctrls_4_upIsCancel;
  wire                execute_lane0_ctrls_4_downIsCancel;
  wire                LsuCachelessPlugin_logic_bus_cmd_valid;
  wire                LsuCachelessPlugin_logic_bus_cmd_ready;
  wire       [0:0]    LsuCachelessPlugin_logic_bus_cmd_payload_id;
  wire                LsuCachelessPlugin_logic_bus_cmd_payload_write;
  wire       [31:0]   LsuCachelessPlugin_logic_bus_cmd_payload_address;
  wire       [31:0]   LsuCachelessPlugin_logic_bus_cmd_payload_data;
  wire       [1:0]    LsuCachelessPlugin_logic_bus_cmd_payload_size;
  wire       [3:0]    LsuCachelessPlugin_logic_bus_cmd_payload_mask;
  wire                LsuCachelessPlugin_logic_bus_cmd_payload_io;
  wire                LsuCachelessPlugin_logic_bus_cmd_payload_fromHart;
  wire       [15:0]   LsuCachelessPlugin_logic_bus_cmd_payload_uopId;
  reg                 LsuCachelessPlugin_logic_bus_rsp_valid;
  reg        [0:0]    LsuCachelessPlugin_logic_bus_rsp_payload_id;
  reg                 LsuCachelessPlugin_logic_bus_rsp_payload_error;
  wire       [31:0]   LsuCachelessPlugin_logic_bus_rsp_payload_data;
  wire       [31:0]   LsuCachelessPlugin_logic_onPma_port_cmd_address;
  wire       [1:0]    LsuCachelessPlugin_logic_onPma_port_cmd_size;
  wire       [0:0]    LsuCachelessPlugin_logic_onPma_port_cmd_op;
  wire                LsuCachelessPlugin_logic_onPma_port_rsp_fault;
  wire                LsuCachelessPlugin_logic_onPma_port_rsp_io;
  wire                LsuCachelessPlugin_logic_cmdInflights;
  reg                 LsuCachelessPlugin_logic_onFork_skip;
  wire                when_LsuCachelessPlugin_l215;
  reg                 LsuCachelessPlugin_logic_onFork_askFenceReg;
  wire                LsuCachelessPlugin_logic_onFork_askFence;
  wire                LsuCachelessPlugin_logic_onFork_doFence;
  wire                LsuCachelessPlugin_logic_bus_cmd_fire;
  reg                 LsuCachelessPlugin_logic_onFork_cmdCounter_willIncrement;
  wire                LsuCachelessPlugin_logic_onFork_cmdCounter_willClear;
  reg        [0:0]    LsuCachelessPlugin_logic_onFork_cmdCounter_valueNext;
  reg        [0:0]    LsuCachelessPlugin_logic_onFork_cmdCounter_value;
  wire                LsuCachelessPlugin_logic_onFork_cmdCounter_willOverflowIfInc;
  wire                LsuCachelessPlugin_logic_onFork_cmdCounter_willOverflow;
  reg                 LsuCachelessPlugin_logic_onFork_cmdSent;
  wire                when_LsuCachelessPlugin_l220;
  reg                 LsuCachelessPlugin_logic_bus_cmd_valid_regNext;
  reg                 LsuCachelessPlugin_logic_bus_cmd_ready_regNext;
  wire                LsuCachelessPlugin_logic_bus_cmd_isStall;
  reg                 LsuCachelessPlugin_logic_bus_cmd_isStall_regNext;
  reg        [0:0]    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_id;
  reg                 LsuCachelessPlugin_logic_bus_cmd_payload_regNext_write;
  reg        [31:0]   LsuCachelessPlugin_logic_bus_cmd_payload_regNext_address;
  reg        [31:0]   LsuCachelessPlugin_logic_bus_cmd_payload_regNext_data;
  reg        [1:0]    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_size;
  reg        [3:0]    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_mask;
  reg                 LsuCachelessPlugin_logic_bus_cmd_payload_regNext_io;
  reg                 LsuCachelessPlugin_logic_bus_cmd_payload_regNext_fromHart;
  reg        [15:0]   LsuCachelessPlugin_logic_bus_cmd_payload_regNext_uopId;
  wire       [31:0]   LsuCachelessPlugin_logic_onFork_mapping_0_1;
  wire       [31:0]   LsuCachelessPlugin_logic_onFork_mapping_1_1;
  wire       [31:0]   LsuCachelessPlugin_logic_onFork_mapping_2_1;
  reg        [31:0]   _zz_LsuCachelessPlugin_logic_bus_cmd_payload_data;
  reg        [3:0]    _zz_LsuCachelessPlugin_logic_bus_cmd_payload_mask;
  wire                LsuCachelessPlugin_logic_onFork_freezeIt;
  wire       [9:0]    WhiteboxerPlugin_logic_fetch_fetchId;
  wire                WhiteboxerPlugin_logic_decodes_0_fire;
  reg                 decode_ctrls_0_up_LANE_SEL_0_regNext;
  wire                when_CtrlLaneApi_l50;
  wire                WhiteboxerPlugin_logic_decodes_0_spawn;
  wire       [63:0]   WhiteboxerPlugin_logic_decodes_0_pc;
  wire       [9:0]    WhiteboxerPlugin_logic_decodes_0_fetchId;
  wire       [9:0]    WhiteboxerPlugin_logic_decodes_0_decodeId;
  wire       [15:0]   early0_BranchPlugin_logic_flushPort_payload_uopId;
  wire                early0_BranchPlugin_logic_flushPort_payload_self;
  reg                 early0_BranchPlugin_logic_trapPort_valid;
  wire                early0_BranchPlugin_logic_trapPort_payload_exception;
  wire       [31:0]   early0_BranchPlugin_logic_trapPort_payload_tval;
  wire       [3:0]    early0_BranchPlugin_logic_trapPort_payload_code;
  wire       [1:0]    early0_BranchPlugin_logic_trapPort_payload_arg;
  wire                early0_BranchPlugin_logic_alu_expectedMsb;
  wire       [2:0]    switch_Misc_l245;
  reg                 _zz_execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0;
  reg                 _zz_execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0_1;
  wire                early0_BranchPlugin_logic_jumpLogic_needFix;
  wire                early0_BranchPlugin_logic_jumpLogic_doIt;
  wire                when_BranchPlugin_l251;
  wire                early0_BranchPlugin_logic_jumpLogic_rdLink;
  wire                early0_BranchPlugin_logic_jumpLogic_rs1Link;
  wire                early0_BranchPlugin_logic_jumpLogic_rdEquRs1;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_valid;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_ready;
  wire       [31:0]   early0_BranchPlugin_logic_jumpLogic_learn_payload_pcOnLastSlice;
  wire       [31:0]   early0_BranchPlugin_logic_jumpLogic_learn_payload_pcTarget;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_payload_taken;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_payload_isBranch;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_payload_isPush;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_payload_isPop;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_payload_wasWrong;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_payload_badPredictedTarget;
  wire       [15:0]   early0_BranchPlugin_logic_jumpLogic_learn_payload_uopId;
  wire       [15:0]   CsrAccessPlugin_logic_flushPort_payload_uopId;
  wire                CsrAccessPlugin_logic_flushPort_payload_self;
  reg                 CsrAccessPlugin_logic_trapPort_valid;
  reg                 CsrAccessPlugin_logic_trapPort_payload_exception;
  wire       [31:0]   CsrAccessPlugin_logic_trapPort_payload_tval;
  reg        [3:0]    CsrAccessPlugin_logic_trapPort_payload_code;
  wire       [1:0]    CsrAccessPlugin_logic_trapPort_payload_arg;
  wire       [15:0]   early0_EnvPlugin_logic_flushPort_payload_uopId;
  wire                early0_EnvPlugin_logic_flushPort_payload_self;
  wire       [1:0]    PrivilegedPlugin_logic_defaultTrap_csrPrivilege;
  wire                PrivilegedPlugin_logic_defaultTrap_csrReadOnly;
  wire                when_PrivilegedPlugin_l771;
  wire                execute_lane0_ctrls_1_upIsCancel;
  wire                execute_lane0_ctrls_1_downIsCancel;
  reg        [31:0]   _zz_execute_ctrl1_down_early0_SrcPlugin_SRC1_lane0;
  reg        [31:0]   _zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0;
  reg        [31:0]   early0_SrcPlugin_logic_addsub_combined_rs2Patched;
  wire                lane0_IntFormatPlugin_logic_stages_0_wb_valid;
  wire       [31:0]   lane0_IntFormatPlugin_logic_stages_0_wb_payload;
  wire       [1:0]    lane0_IntFormatPlugin_logic_stages_0_hits;
  wire       [31:0]   lane0_IntFormatPlugin_logic_stages_0_raw;
  wire                lane0_IntFormatPlugin_logic_stages_1_wb_valid;
  wire       [31:0]   lane0_IntFormatPlugin_logic_stages_1_wb_payload;
  wire       [0:0]    lane0_IntFormatPlugin_logic_stages_1_hits;
  wire       [31:0]   lane0_IntFormatPlugin_logic_stages_1_raw;
  wire                lane0_IntFormatPlugin_logic_stages_2_wb_valid;
  reg        [31:0]   lane0_IntFormatPlugin_logic_stages_2_wb_payload;
  wire       [0:0]    lane0_IntFormatPlugin_logic_stages_2_hits;
  wire       [31:0]   lane0_IntFormatPlugin_logic_stages_2_raw;
  wire                lane0_IntFormatPlugin_logic_stages_2_segments_0_sign_sels_0;
  reg                 _zz_lane0_IntFormatPlugin_logic_stages_2_segments_0_sign_value;
  wire                lane0_IntFormatPlugin_logic_stages_2_segments_0_sign_value;
  wire                lane0_IntFormatPlugin_logic_stages_2_segments_0_doIt;
  wire                lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_sels_0;
  wire                lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_sels_1;
  reg                 _zz_lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_value;
  wire                lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_value;
  wire                lane0_IntFormatPlugin_logic_stages_2_segments_1_doIt;
  wire                LearnPlugin_logic_learn_valid;
  wire       [31:0]   LearnPlugin_logic_learn_payload_pcOnLastSlice;
  wire       [31:0]   LearnPlugin_logic_learn_payload_pcTarget;
  wire                LearnPlugin_logic_learn_payload_taken;
  wire                LearnPlugin_logic_learn_payload_isBranch;
  wire                LearnPlugin_logic_learn_payload_isPush;
  wire                LearnPlugin_logic_learn_payload_isPop;
  wire                LearnPlugin_logic_learn_payload_wasWrong;
  wire                LearnPlugin_logic_learn_payload_badPredictedTarget;
  wire       [15:0]   LearnPlugin_logic_learn_payload_uopId;
  wire                LearnPlugin_logic_buffered_0_valid;
  wire                LearnPlugin_logic_buffered_0_ready;
  wire       [31:0]   LearnPlugin_logic_buffered_0_payload_pcOnLastSlice;
  wire       [31:0]   LearnPlugin_logic_buffered_0_payload_pcTarget;
  wire                LearnPlugin_logic_buffered_0_payload_taken;
  wire                LearnPlugin_logic_buffered_0_payload_isBranch;
  wire                LearnPlugin_logic_buffered_0_payload_isPush;
  wire                LearnPlugin_logic_buffered_0_payload_isPop;
  wire                LearnPlugin_logic_buffered_0_payload_wasWrong;
  wire                LearnPlugin_logic_buffered_0_payload_badPredictedTarget;
  wire       [15:0]   LearnPlugin_logic_buffered_0_payload_uopId;
  wire                LearnPlugin_logic_arbitrated_valid;
  wire                LearnPlugin_logic_arbitrated_ready;
  wire       [31:0]   LearnPlugin_logic_arbitrated_payload_pcOnLastSlice;
  wire       [31:0]   LearnPlugin_logic_arbitrated_payload_pcTarget;
  wire                LearnPlugin_logic_arbitrated_payload_taken;
  wire                LearnPlugin_logic_arbitrated_payload_isBranch;
  wire                LearnPlugin_logic_arbitrated_payload_isPush;
  wire                LearnPlugin_logic_arbitrated_payload_isPop;
  wire                LearnPlugin_logic_arbitrated_payload_wasWrong;
  wire                LearnPlugin_logic_arbitrated_payload_badPredictedTarget;
  wire       [15:0]   LearnPlugin_logic_arbitrated_payload_uopId;
  wire                LearnPlugin_logic_arbitrated_toFlow_valid;
  wire       [31:0]   LearnPlugin_logic_arbitrated_toFlow_payload_pcOnLastSlice;
  wire       [31:0]   LearnPlugin_logic_arbitrated_toFlow_payload_pcTarget;
  wire                LearnPlugin_logic_arbitrated_toFlow_payload_taken;
  wire                LearnPlugin_logic_arbitrated_toFlow_payload_isBranch;
  wire                LearnPlugin_logic_arbitrated_toFlow_payload_isPush;
  wire                LearnPlugin_logic_arbitrated_toFlow_payload_isPop;
  wire                LearnPlugin_logic_arbitrated_toFlow_payload_wasWrong;
  wire                LearnPlugin_logic_arbitrated_toFlow_payload_badPredictedTarget;
  wire       [15:0]   LearnPlugin_logic_arbitrated_toFlow_payload_uopId;
  wire       [1:0]    early0_EnvPlugin_logic_exe_privilege;
  wire       [1:0]    early0_EnvPlugin_logic_exe_xretPriv;
  reg                 early0_EnvPlugin_logic_exe_commit;
  wire                early0_EnvPlugin_logic_exe_retKo;
  wire                early0_EnvPlugin_logic_exe_vmaKo;
  wire                when_EnvPlugin_l86;
  wire                when_EnvPlugin_l95;
  wire                when_EnvPlugin_l119;
  wire                when_EnvPlugin_l123;
  wire                CsrRamPlugin_setup_initPort_valid;
  wire                CsrRamPlugin_setup_initPort_ready;
  wire       [1:0]    CsrRamPlugin_setup_initPort_address;
  wire       [31:0]   CsrRamPlugin_setup_initPort_data;
  reg        [15:0]   DecoderPlugin_logic_harts_0_uopId;
  wire                when_DecoderPlugin_l143;
  wire       [0:0]    DecoderPlugin_logic_interrupt_async;
  wire                when_DecoderPlugin_l151;
  reg        [0:0]    DecoderPlugin_logic_interrupt_buffered;
  wire                _zz_decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0;
  wire                DecoderPlugin_logic_laneLogic_0_interruptPending;
  reg                 DecoderPlugin_logic_laneLogic_0_trapPort_valid;
  reg                 DecoderPlugin_logic_laneLogic_0_trapPort_payload_exception;
  wire       [31:0]   DecoderPlugin_logic_laneLogic_0_trapPort_payload_tval;
  reg        [3:0]    DecoderPlugin_logic_laneLogic_0_trapPort_payload_code;
  wire       [1:0]    DecoderPlugin_logic_laneLogic_0_trapPort_payload_arg;
  wire       [0:0]    DecoderPlugin_logic_laneLogic_0_trapPort_payload_laneAge;
  wire                DecoderPlugin_logic_laneLogic_0_completionPort_valid;
  wire       [15:0]   DecoderPlugin_logic_laneLogic_0_completionPort_payload_uopId;
  wire                DecoderPlugin_logic_laneLogic_0_completionPort_payload_trap;
  wire                DecoderPlugin_logic_laneLogic_0_completionPort_payload_commit;
  reg                 decode_ctrls_1_up_LANE_SEL_0_regNext;
  wire                when_CtrlLaneApi_l50_1;
  wire                when_DecoderPlugin_l229;
  wire                DecoderPlugin_logic_laneLogic_0_flushPort_valid;
  wire       [15:0]   DecoderPlugin_logic_laneLogic_0_flushPort_payload_uopId;
  wire                DecoderPlugin_logic_laneLogic_0_flushPort_payload_self;
  wire                when_DecoderPlugin_l247;
  wire       [15:0]   DecoderPlugin_logic_laneLogic_0_uopIdBase;
  wire                CsrRamPlugin_csrMapper_read_valid;
  wire                CsrRamPlugin_csrMapper_read_ready;
  wire       [1:0]    CsrRamPlugin_csrMapper_read_address;
  wire       [31:0]   CsrRamPlugin_csrMapper_read_data;
  wire                CsrRamPlugin_csrMapper_write_valid;
  wire                CsrRamPlugin_csrMapper_write_ready;
  wire       [1:0]    CsrRamPlugin_csrMapper_write_address;
  wire       [31:0]   CsrRamPlugin_csrMapper_write_data;
  wire                when_LsuCachelessPlugin_l261;
  wire                when_LsuCachelessPlugin_l267;
  wire                when_LsuCachelessPlugin_l274;
  wire                when_LsuCachelessPlugin_l315;
  reg                 LsuCachelessPlugin_logic_onJoin_buffers_0_valid;
  reg                 LsuCachelessPlugin_logic_onJoin_buffers_0_inflight;
  reg                 LsuCachelessPlugin_logic_onJoin_buffers_0_payload_error;
  reg        [31:0]   LsuCachelessPlugin_logic_onJoin_buffers_0_payload_data;
  reg                 LsuCachelessPlugin_logic_onJoin_buffers_1_valid;
  reg                 LsuCachelessPlugin_logic_onJoin_buffers_1_inflight;
  reg                 LsuCachelessPlugin_logic_onJoin_buffers_1_payload_error;
  reg        [31:0]   LsuCachelessPlugin_logic_onJoin_buffers_1_payload_data;
  wire                LsuCachelessPlugin_logic_onJoin_busRspWithoutId_error;
  wire       [31:0]   LsuCachelessPlugin_logic_onJoin_busRspWithoutId_data;
  wire                LsuCachelessPlugin_logic_onJoin_pop;
  reg                 LsuCachelessPlugin_logic_onJoin_rspCounter_willIncrement;
  wire                LsuCachelessPlugin_logic_onJoin_rspCounter_willClear;
  reg        [0:0]    LsuCachelessPlugin_logic_onJoin_rspCounter_valueNext;
  reg        [0:0]    LsuCachelessPlugin_logic_onJoin_rspCounter_value;
  wire                LsuCachelessPlugin_logic_onJoin_rspCounter_willOverflowIfInc;
  wire                LsuCachelessPlugin_logic_onJoin_rspCounter_willOverflow;
  wire                LsuCachelessPlugin_logic_onJoin_readerValid;
  wire                LsuCachelessPlugin_logic_onJoin_busRspHit;
  wire                LsuCachelessPlugin_logic_onJoin_rspValid;
  wire                LsuCachelessPlugin_logic_onJoin_rspPayload_error;
  wire       [31:0]   LsuCachelessPlugin_logic_onJoin_rspPayload_data;
  wire       [7:0]    LsuCachelessPlugin_logic_onWb_rspSplits_0;
  wire       [7:0]    LsuCachelessPlugin_logic_onWb_rspSplits_1;
  wire       [7:0]    LsuCachelessPlugin_logic_onWb_rspSplits_2;
  wire       [7:0]    LsuCachelessPlugin_logic_onWb_rspSplits_3;
  reg        [31:0]   LsuCachelessPlugin_logic_onWb_rspShifted;
  wire                DispatchPlugin_logic_candidates_0_ctx_valid;
  reg        [0:0]    DispatchPlugin_logic_candidates_0_ctx_laneLayerHits;
  wire       [31:0]   DispatchPlugin_logic_candidates_0_ctx_uop;
  wire                DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_FENCE_OLDER;
  wire                DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_MAY_FLUSH;
  wire                DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_DONT_FLUSH;
  wire                DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_DONT_FLUSH_FROM_LANES;
  wire       [31:0]   DispatchPlugin_logic_candidates_0_ctx_hm_PC;
  wire                DispatchPlugin_logic_candidates_0_ctx_hm_TRAP;
  wire       [15:0]   DispatchPlugin_logic_candidates_0_ctx_hm_Decode_UOP_ID;
  wire                DispatchPlugin_logic_candidates_0_ctx_hm_RS1_ENABLE;
  wire       [4:0]    DispatchPlugin_logic_candidates_0_ctx_hm_RS1_PHYS;
  wire                DispatchPlugin_logic_candidates_0_ctx_hm_RS2_ENABLE;
  wire       [4:0]    DispatchPlugin_logic_candidates_0_ctx_hm_RS2_PHYS;
  wire                DispatchPlugin_logic_candidates_0_ctx_hm_RD_ENABLE;
  wire       [4:0]    DispatchPlugin_logic_candidates_0_ctx_hm_RD_PHYS;
  wire                DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0;
  wire                DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0;
  wire                DispatchPlugin_logic_candidates_0_fire;
  wire                DispatchPlugin_logic_candidates_0_cancel;
  wire       [0:0]    DispatchPlugin_logic_candidates_0_rsHazards;
  wire       [0:0]    DispatchPlugin_logic_candidates_0_reservationHazards;
  wire                DispatchPlugin_logic_candidates_0_flushHazards;
  wire                DispatchPlugin_logic_candidates_0_fenceOlderHazards;
  wire                DispatchPlugin_logic_candidates_0_moving;
  wire                DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard;
  wire                DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard;
  wire                DispatchPlugin_logic_reservationChecker_0_onLl_0_hit;
  wire                DispatchPlugin_logic_flushChecker_0_oldersHazard;
  wire       [0:0]    DispatchPlugin_logic_fenceChecker_olderInflights;
  wire                DispatchPlugin_logic_feeds_0_sending;
  reg                 DispatchPlugin_logic_feeds_0_sent;
  wire                when_DispatchPlugin_l368;
  wire       [0:0]    DispatchPlugin_logic_scheduler_eusFree_0;
  wire       [0:0]    DispatchPlugin_logic_scheduler_eusFree_1;
  wire       [0:0]    DispatchPlugin_logic_scheduler_hartFree_0;
  wire       [0:0]    DispatchPlugin_logic_scheduler_hartFree_1;
  wire                DispatchPlugin_logic_scheduler_arbiters_0_candHazard;
  wire       [0:0]    DispatchPlugin_logic_scheduler_arbiters_0_layersHits;
  wire                DispatchPlugin_logic_scheduler_arbiters_0_layersHits_bools_0;
  wire       [0:0]    _zz_DispatchPlugin_logic_scheduler_arbiters_0_layerOh;
  wire       [0:0]    DispatchPlugin_logic_scheduler_arbiters_0_layerOh;
  wire       [0:0]    DispatchPlugin_logic_scheduler_arbiters_0_eusOh;
  wire                DispatchPlugin_logic_scheduler_arbiters_0_doIt;
  wire       [0:0]    DispatchPlugin_logic_inserter_0_oh;
  wire                DispatchPlugin_logic_inserter_0_trap;
  wire                when_DispatchPlugin_l439;
  wire       [0:0]    DispatchPlugin_logic_inserter_0_layerOhUnfiltred;
  wire                DispatchPlugin_logic_inserter_0_layer_0_1;
  wire       [1:0]    lane0_integer_WriteBackPlugin_logic_stages_0_hits;
  wire       [31:0]   lane0_integer_WriteBackPlugin_logic_stages_0_muxed;
  wire                lane0_integer_WriteBackPlugin_logic_stages_0_write_valid;
  wire       [15:0]   lane0_integer_WriteBackPlugin_logic_stages_0_write_payload_uopId;
  wire       [31:0]   lane0_integer_WriteBackPlugin_logic_stages_0_write_payload_data;
  wire       [0:0]    lane0_integer_WriteBackPlugin_logic_stages_1_hits;
  wire       [31:0]   lane0_integer_WriteBackPlugin_logic_stages_1_muxed;
  wire       [31:0]   lane0_integer_WriteBackPlugin_logic_stages_1_merged;
  wire                lane0_integer_WriteBackPlugin_logic_stages_1_write_valid;
  wire       [15:0]   lane0_integer_WriteBackPlugin_logic_stages_1_write_payload_uopId;
  wire       [31:0]   lane0_integer_WriteBackPlugin_logic_stages_1_write_payload_data;
  wire       [0:0]    lane0_integer_WriteBackPlugin_logic_stages_2_hits;
  wire       [31:0]   lane0_integer_WriteBackPlugin_logic_stages_2_muxed;
  wire       [31:0]   lane0_integer_WriteBackPlugin_logic_stages_2_merged;
  wire                lane0_integer_WriteBackPlugin_logic_stages_2_write_valid;
  wire       [15:0]   lane0_integer_WriteBackPlugin_logic_stages_2_write_payload_uopId;
  wire       [31:0]   lane0_integer_WriteBackPlugin_logic_stages_2_write_payload_data;
  wire                lane0_integer_WriteBackPlugin_logic_write_port_valid;
  wire       [4:0]    lane0_integer_WriteBackPlugin_logic_write_port_address;
  wire       [31:0]   lane0_integer_WriteBackPlugin_logic_write_port_data;
  wire       [15:0]   lane0_integer_WriteBackPlugin_logic_write_port_uopId;
  wire       [1:0]    CsrRamPlugin_csrMapper_ramAddress;
  wire       [11:0]   _zz_CsrRamPlugin_csrMapper_ramAddress;
  reg                 CsrRamPlugin_csrMapper_withRead;
  wire                when_CsrRamPlugin_l90;
  reg                 CsrRamPlugin_csrMapper_doWrite;
  reg                 CsrRamPlugin_csrMapper_fired;
  wire                when_CsrRamPlugin_l97;
  wire                when_CsrRamPlugin_l101;
  wire                LsuCachelessAxi4Plugin_logic_bridge_down_arw_valid;
  wire                LsuCachelessAxi4Plugin_logic_bridge_down_arw_ready;
  wire       [31:0]   LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_addr;
  wire       [0:0]    LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_id;
  wire       [2:0]    LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_size;
  wire       [3:0]    LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_cache;
  wire       [2:0]    LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_prot;
  wire                LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_write;
  wire                LsuCachelessAxi4Plugin_logic_bridge_down_w_valid;
  wire                LsuCachelessAxi4Plugin_logic_bridge_down_w_ready;
  wire       [31:0]   LsuCachelessAxi4Plugin_logic_bridge_down_w_payload_data;
  wire       [3:0]    LsuCachelessAxi4Plugin_logic_bridge_down_w_payload_strb;
  wire                LsuCachelessAxi4Plugin_logic_bridge_down_w_payload_last;
  wire                LsuCachelessAxi4Plugin_logic_bridge_down_b_valid;
  reg                 LsuCachelessAxi4Plugin_logic_bridge_down_b_ready;
  wire       [0:0]    LsuCachelessAxi4Plugin_logic_bridge_down_b_payload_id;
  wire       [1:0]    LsuCachelessAxi4Plugin_logic_bridge_down_b_payload_resp;
  wire                LsuCachelessAxi4Plugin_logic_bridge_down_r_valid;
  wire                LsuCachelessAxi4Plugin_logic_bridge_down_r_ready;
  wire       [31:0]   LsuCachelessAxi4Plugin_logic_bridge_down_r_payload_data;
  wire       [0:0]    LsuCachelessAxi4Plugin_logic_bridge_down_r_payload_id;
  wire       [1:0]    LsuCachelessAxi4Plugin_logic_bridge_down_r_payload_resp;
  wire                LsuCachelessAxi4Plugin_logic_bridge_down_r_payload_last;
  wire                LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_valid;
  reg                 LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_ready;
  wire       [0:0]    LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_id;
  wire                LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_write;
  wire       [31:0]   LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_address;
  wire       [31:0]   LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_data;
  wire       [1:0]    LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_size;
  wire       [3:0]    LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_mask;
  wire                LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_io;
  wire                LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_fromHart;
  wire       [15:0]   LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_uopId;
  wire       [7:0]    LsuCachelessAxi4Plugin_logic_bridge_cmdHash;
  reg                 LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_valid;
  reg        [7:0]    LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_hash;
  reg        [3:0]    LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_mask;
  reg                 LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_io;
  wire                LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_hazard;
  reg                 LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_valid;
  reg        [7:0]    LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_hash;
  reg        [3:0]    LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_mask;
  reg                 LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_io;
  wire                LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_hazard;
  wire                LsuCachelessAxi4Plugin_logic_bridge_tracker_hazard;
  wire                _zz_LsuCachelessPlugin_logic_bus_cmd_ready;
  wire                LsuCachelessPlugin_logic_bus_cmd_haltWhen_valid;
  wire                LsuCachelessPlugin_logic_bus_cmd_haltWhen_ready;
  wire       [0:0]    LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_id;
  wire                LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_write;
  wire       [31:0]   LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_address;
  wire       [31:0]   LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_data;
  wire       [1:0]    LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_size;
  wire       [3:0]    LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_mask;
  wire                LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_io;
  wire                LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_fromHart;
  wire       [15:0]   LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_uopId;
  wire                LsuCachelessAxi4Plugin_logic_bridge_cmdFork_valid;
  wire                LsuCachelessAxi4Plugin_logic_bridge_cmdFork_ready;
  wire       [0:0]    LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_id;
  wire                LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_write;
  wire       [31:0]   LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_address;
  wire       [31:0]   LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_data;
  wire       [1:0]    LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_size;
  wire       [3:0]    LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_mask;
  wire                LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_io;
  wire                LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_fromHart;
  wire       [15:0]   LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_uopId;
  wire                LsuCachelessAxi4Plugin_logic_bridge_dataFork_valid;
  reg                 LsuCachelessAxi4Plugin_logic_bridge_dataFork_ready;
  wire       [0:0]    LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_id;
  wire                LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_write;
  wire       [31:0]   LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_address;
  wire       [31:0]   LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_data;
  wire       [1:0]    LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_size;
  wire       [3:0]    LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_mask;
  wire                LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_io;
  wire                LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_fromHart;
  wire       [15:0]   LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_uopId;
  reg                 LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_0;
  reg                 LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_1;
  wire                when_Stream_l1253;
  wire                when_Stream_l1253_1;
  wire                LsuCachelessAxi4Plugin_logic_bridge_cmdFork_fire;
  wire                LsuCachelessAxi4Plugin_logic_bridge_dataFork_fire;
  wire                when_Stream_l581;
  reg                 LsuCachelessAxi4Plugin_logic_bridge_dataStage_valid;
  wire                LsuCachelessAxi4Plugin_logic_bridge_dataStage_ready;
  wire       [0:0]    LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_id;
  wire                LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_write;
  wire       [31:0]   LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_address;
  wire       [31:0]   LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_data;
  wire       [1:0]    LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_size;
  wire       [3:0]    LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_mask;
  wire                LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_io;
  wire                LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_fromHart;
  wire       [15:0]   LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_uopId;
  wire       [31:0]   LsuCachelessPlugin_pmaBuilder_addressBits;
  wire       [2:0]    LsuCachelessPlugin_pmaBuilder_argsBits;
  wire                LsuCachelessPlugin_pmaBuilder_onTransfers_0_addressHit;
  wire                LsuCachelessPlugin_pmaBuilder_onTransfers_0_argsHit;
  wire                LsuCachelessPlugin_pmaBuilder_onTransfers_0_hit;
  wire                _zz_LsuCachelessPlugin_logic_onPma_port_rsp_fault;
  wire                _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0;
  wire                _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0;
  wire                _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0_1;
  wire                TrapPlugin_logic_initHold;
  reg                 decode_ctrls_1_up_LANE_SEL_0_regNext_1;
  wire                when_CtrlLaneApi_l50_2;
  wire                WhiteboxerPlugin_logic_serializeds_0_fire;
  wire       [9:0]    WhiteboxerPlugin_logic_serializeds_0_decodeId;
  wire       [15:0]   WhiteboxerPlugin_logic_serializeds_0_microOpId;
  wire       [31:0]   WhiteboxerPlugin_logic_serializeds_0_microOp;
  reg                 execute_ctrl0_down_LANE_SEL_lane0_regNext;
  wire                when_CtrlLaneApi_l50_3;
  wire                WhiteboxerPlugin_logic_dispatches_0_fire;
  wire       [15:0]   WhiteboxerPlugin_logic_dispatches_0_microOpId;
  reg                 execute_ctrl2_down_LANE_SEL_lane0_regNext;
  wire                when_CtrlLaneApi_l50_4;
  wire                WhiteboxerPlugin_logic_executes_0_fire;
  wire       [15:0]   WhiteboxerPlugin_logic_executes_0_microOpId;
  wire                WhiteboxerPlugin_logic_csr_access_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_csr_access_payload_uopId;
  wire       [11:0]   WhiteboxerPlugin_logic_csr_access_payload_address;
  wire       [31:0]   WhiteboxerPlugin_logic_csr_access_payload_write;
  wire       [31:0]   WhiteboxerPlugin_logic_csr_access_payload_read;
  wire                WhiteboxerPlugin_logic_csr_access_payload_writeDone;
  wire                WhiteboxerPlugin_logic_csr_access_payload_readDone;
  reg                 TrapPlugin_logic_harts_0_crsPorts_read_valid;
  wire                TrapPlugin_logic_harts_0_crsPorts_read_ready;
  reg        [1:0]    TrapPlugin_logic_harts_0_crsPorts_read_address;
  wire       [31:0]   TrapPlugin_logic_harts_0_crsPorts_read_data;
  wire                AlignerPlugin_logic_nobuffer_flushIt;
  wire                when_AlignerPlugin_l298;
  wire                decode_logic_flushes_0_onLanes_0_doIt;
  wire                decode_logic_flushes_1_onLanes_0_doIt;
  reg                 TrapPlugin_logic_harts_0_crsPorts_write_valid;
  wire                TrapPlugin_logic_harts_0_crsPorts_write_ready;
  reg        [1:0]    TrapPlugin_logic_harts_0_crsPorts_write_address;
  reg        [31:0]   TrapPlugin_logic_harts_0_crsPorts_write_data;
  wire       [3:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_id;
  wire       [3:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_priority;
  wire       [1:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_privilege;
  wire                TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_valid;
  wire       [3:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_id;
  wire       [3:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_priority;
  wire       [1:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_privilege;
  wire                TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_valid;
  wire       [3:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_id;
  wire       [3:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_priority;
  wire       [1:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_privilege;
  wire                TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_valid;
  wire                _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id;
  wire       [3:0]    _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_priority;
  wire       [1:0]    _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_privilege;
  wire                _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_valid;
  wire                _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id_1;
  reg        [3:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id;
  reg        [3:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_priority;
  reg        [1:0]    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_privilege;
  reg                 TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_valid;
  wire       [3:0]    TrapPlugin_logic_harts_0_interrupt_xtopi_0_int;
  wire       [3:0]    TrapPlugin_logic_harts_0_interrupt_result_id;
  wire       [3:0]    TrapPlugin_logic_harts_0_interrupt_result_priority;
  wire       [1:0]    TrapPlugin_logic_harts_0_interrupt_result_privilege;
  wire                TrapPlugin_logic_harts_0_interrupt_result_valid;
  wire                TrapPlugin_logic_harts_0_interrupt_valid;
  wire       [3:0]    TrapPlugin_logic_harts_0_interrupt_code;
  wire       [1:0]    TrapPlugin_logic_harts_0_interrupt_targetPrivilege;
  reg                 TrapPlugin_logic_harts_0_interrupt_validBuffer;
  wire                TrapPlugin_logic_harts_0_interrupt_pendingInterrupt;
  wire                when_TrapPlugin_l269;
  wire                _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid;
  wire                _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_valid;
  wire                _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_1;
  wire                _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_2;
  wire                _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_3;
  wire                _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_valid;
  wire                TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid;
  wire                TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception;
  wire       [31:0]   TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_tval;
  wire       [3:0]    TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_code;
  wire       [1:0]    TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_arg;
  wire       [3:0]    _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception;
  wire       [38:0]   _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1;
  wire                TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_valid;
  wire                TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_exception;
  wire       [31:0]   TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_tval;
  wire       [3:0]    TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_code;
  wire       [1:0]    TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_arg;
  wire                TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_valid;
  wire                TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_exception;
  wire       [31:0]   TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_tval;
  wire       [3:0]    TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_code;
  wire       [1:0]    TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_arg;
  wire       [2:0]    _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh;
  wire                _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_1;
  wire                _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_2;
  reg        [2:0]    _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_3;
  wire       [2:0]    TrapPlugin_logic_harts_0_trap_pending_arbiter_oh;
  wire                TrapPlugin_logic_harts_0_trap_pending_arbiter_down_valid;
  wire                TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception;
  wire       [31:0]   TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_tval;
  wire       [3:0]    TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_code;
  wire       [1:0]    TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_arg;
  wire       [38:0]   _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception;
  reg                 TrapPlugin_logic_harts_0_trap_pending_state_exception;
  reg        [31:0]   TrapPlugin_logic_harts_0_trap_pending_state_tval;
  reg        [3:0]    TrapPlugin_logic_harts_0_trap_pending_state_code;
  reg        [1:0]    TrapPlugin_logic_harts_0_trap_pending_state_arg;
  reg        [31:0]   TrapPlugin_logic_harts_0_trap_pending_pc;
  reg        [0:0]    TrapPlugin_logic_harts_0_trap_pending_slices;
  wire       [1:0]    TrapPlugin_logic_harts_0_trap_pending_xret_sourcePrivilege;
  wire       [1:0]    TrapPlugin_logic_harts_0_trap_pending_xret_targetPrivilege;
  wire       [1:0]    TrapPlugin_logic_harts_0_trap_exception_exceptionTargetPrivilegeUncapped;
  wire       [3:0]    TrapPlugin_logic_harts_0_trap_exception_code;
  wire       [1:0]    TrapPlugin_logic_harts_0_trap_exception_targetPrivilege;
  wire                execute_lane0_ctrls_5_upIsCancel;
  wire                execute_lane0_ctrls_5_downIsCancel;
  wire       [0:0]    TrapPlugin_logic_harts_0_trap_trigger_oh;
  wire                TrapPlugin_logic_harts_0_trap_trigger_valid;
  reg                 TrapPlugin_logic_harts_0_trap_whitebox_trap;
  reg                 TrapPlugin_logic_harts_0_trap_whitebox_interrupt;
  reg        [3:0]    TrapPlugin_logic_harts_0_trap_whitebox_code;
  reg                 TrapPlugin_logic_harts_0_trap_pcPort_valid;
  wire                TrapPlugin_logic_harts_0_trap_pcPort_payload_fault;
  reg        [31:0]   TrapPlugin_logic_harts_0_trap_pcPort_payload_pc;
  wire                PcPlugin_logic_harts_0_aggregator_sortedByPriority_0_laneValid;
  wire                TrapPlugin_logic_harts_0_trap_fsm_wantExit;
  reg                 TrapPlugin_logic_harts_0_trap_fsm_wantStart;
  wire                TrapPlugin_logic_harts_0_trap_fsm_wantKill;
  wire                TrapPlugin_logic_harts_0_trap_fsm_inflightTrap;
  wire                TrapPlugin_logic_harts_0_trap_fsm_holdPort;
  reg                 TrapPlugin_logic_harts_0_trap_fsm_wfi;
  reg                 TrapPlugin_logic_harts_0_trap_fsm_buffer_sampleIt;
  reg                 TrapPlugin_logic_harts_0_trap_fsm_buffer_i_valid;
  reg        [3:0]    TrapPlugin_logic_harts_0_trap_fsm_buffer_i_code;
  reg        [1:0]    TrapPlugin_logic_harts_0_trap_fsm_buffer_i_targetPrivilege;
  wire                TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_interrupt;
  wire       [1:0]    TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_targetPrivilege;
  wire       [31:0]   TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_tval;
  wire       [3:0]    TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_code;
  wire                TrapPlugin_logic_harts_0_trap_fsm_resetToRunConditions_0;
  reg        [31:0]   TrapPlugin_logic_harts_0_trap_fsm_jumpTarget;
  wire       [0:0]    TrapPlugin_logic_harts_0_trap_fsm_jumpOffset;
  reg                 TrapPlugin_logic_harts_0_trap_fsm_trapEnterDebug;
  wire                TrapPlugin_logic_harts_0_trap_fsm_triggerEbreak;
  reg                 TrapPlugin_logic_harts_0_trap_fsm_triggerEbreakReg;
  wire                when_TrapPlugin_l602;
  reg        [31:0]   TrapPlugin_logic_harts_0_trap_fsm_readed;
  wire       [1:0]    TrapPlugin_logic_harts_0_trap_fsm_xretPrivilege;
  wire                PcPlugin_logic_forcedSpawn;
  reg        [9:0]    PcPlugin_logic_harts_0_self_id;
  wire                PcPlugin_logic_harts_0_self_flow_valid;
  wire                PcPlugin_logic_harts_0_self_flow_payload_fault;
  wire       [31:0]   PcPlugin_logic_harts_0_self_flow_payload_pc;
  wire                PcPlugin_logic_harts_0_aggregator_sortedByPriority_2_laneValid;
  reg                 PcPlugin_logic_harts_0_self_increment;
  reg                 PcPlugin_logic_harts_0_self_fault;
  reg        [31:0]   PcPlugin_logic_harts_0_self_state;
  wire       [31:0]   PcPlugin_logic_harts_0_self_pc;
  wire                PcPlugin_logic_harts_0_aggregator_valids_0;
  wire                PcPlugin_logic_harts_0_aggregator_valids_1;
  wire                PcPlugin_logic_harts_0_aggregator_valids_2;
  wire       [2:0]    _zz_PcPlugin_logic_harts_0_aggregator_oh;
  wire                _zz_PcPlugin_logic_harts_0_aggregator_oh_1;
  wire                _zz_PcPlugin_logic_harts_0_aggregator_oh_2;
  reg        [2:0]    _zz_PcPlugin_logic_harts_0_aggregator_oh_3;
  wire       [2:0]    PcPlugin_logic_harts_0_aggregator_oh;
  wire       [31:0]   PcPlugin_logic_harts_0_aggregator_target;
  wire                PcPlugin_logic_harts_0_aggregator_fault;
  wire                _zz_PcPlugin_logic_harts_0_aggregator_target;
  wire                _zz_PcPlugin_logic_harts_0_aggregator_target_1;
  wire                _zz_PcPlugin_logic_harts_0_aggregator_target_2;
  wire                PcPlugin_logic_harts_0_holdComb;
  reg                 PcPlugin_logic_harts_0_holdReg;
  wire                PcPlugin_logic_harts_0_output_valid;
  wire                PcPlugin_logic_harts_0_output_ready;
  reg        [31:0]   PcPlugin_logic_harts_0_output_payload_pc;
  wire                PcPlugin_logic_harts_0_output_payload_fault;
  wire                PcPlugin_logic_harts_0_output_fire;
  wire                PcPlugin_logic_holdHalter_doIt;
  wire                fetch_logic_ctrls_0_haltRequest_PcPlugin_l133;
  wire                CsrAccessPlugin_logic_fsm_wantExit;
  reg                 CsrAccessPlugin_logic_fsm_wantStart;
  wire                CsrAccessPlugin_logic_fsm_wantKill;
  reg                 REG_CSR_1952;
  reg                 REG_CSR_1953;
  reg                 REG_CSR_1954;
  reg                 REG_CSR_3857;
  reg                 REG_CSR_3858;
  reg                 REG_CSR_3859;
  reg                 REG_CSR_3860;
  reg                 REG_CSR_769;
  reg                 REG_CSR_768;
  reg                 REG_CSR_834;
  reg                 REG_CSR_836;
  reg                 REG_CSR_772;
  reg                 REG_CSR_4016;
  reg                 REG_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_tvecFilter;
  reg                 REG_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_epcFilter;
  reg                 REG_CSR_CsrRamPlugin_csrMapper_selFilter;
  reg                 REG_CSR_CsrAccessPlugin_logic_trapNextOnWriteFilter;
  reg                 CsrAccessPlugin_logic_fsm_interface_read;
  reg                 CsrAccessPlugin_logic_fsm_interface_write;
  wire       [31:0]   CsrAccessPlugin_logic_fsm_interface_rs1;
  reg        [31:0]   CsrAccessPlugin_logic_fsm_interface_aluInput;
  reg        [31:0]   CsrAccessPlugin_logic_fsm_interface_csrValue;
  reg        [31:0]   CsrAccessPlugin_logic_fsm_interface_onWriteBits;
  wire       [15:0]   CsrAccessPlugin_logic_fsm_interface_uopId;
  wire       [31:0]   CsrAccessPlugin_logic_fsm_interface_uop;
  wire                CsrAccessPlugin_logic_fsm_interface_doImm;
  wire                CsrAccessPlugin_logic_fsm_interface_doMask;
  wire                CsrAccessPlugin_logic_fsm_interface_doClear;
  wire       [4:0]    CsrAccessPlugin_logic_fsm_interface_rdPhys;
  wire                CsrAccessPlugin_logic_fsm_interface_rdEnable;
  reg                 CsrAccessPlugin_logic_fsm_interface_fire;
  wire       [11:0]   CsrAccessPlugin_logic_fsm_inject_csrAddress;
  wire                CsrAccessPlugin_logic_fsm_inject_immZero;
  wire                CsrAccessPlugin_logic_fsm_inject_srcZero;
  wire                CsrAccessPlugin_logic_fsm_inject_csrWrite;
  wire                CsrAccessPlugin_logic_fsm_inject_csrRead;
  wire                COMB_CSR_1952;
  wire                COMB_CSR_1953;
  wire                COMB_CSR_1954;
  wire                COMB_CSR_3857;
  wire                COMB_CSR_3858;
  wire                COMB_CSR_3859;
  wire                COMB_CSR_3860;
  wire                COMB_CSR_769;
  wire                COMB_CSR_768;
  wire                COMB_CSR_834;
  wire                COMB_CSR_836;
  wire                COMB_CSR_772;
  wire                COMB_CSR_4016;
  wire                COMB_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_tvecFilter;
  wire                COMB_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_epcFilter;
  wire                COMB_CSR_CsrRamPlugin_csrMapper_selFilter;
  wire                COMB_CSR_CsrAccessPlugin_logic_trapNextOnWriteFilter;
  wire                CsrAccessPlugin_logic_fsm_inject_implemented;
  wire                CsrAccessPlugin_logic_fsm_inject_onDecodeDo;
  wire                when_CsrAccessPlugin_l157;
  wire                when_CsrService_l121;
  wire                when_CsrAccessPlugin_l157_1;
  wire                when_CsrService_l121_1;
  wire                when_CsrAccessPlugin_l157_2;
  wire                when_CsrService_l121_2;
  wire                when_CsrAccessPlugin_l157_3;
  wire                when_CsrService_l121_3;
  wire                when_CsrAccessPlugin_l157_4;
  wire                CsrAccessPlugin_logic_fsm_inject_trap;
  reg                 CsrAccessPlugin_logic_fsm_inject_unfreeze;
  wire                CsrAccessPlugin_logic_fsm_inject_freeze;
  reg                 CsrAccessPlugin_logic_fsm_inject_flushReg;
  wire                when_CsrAccessPlugin_l199;
  reg                 CsrAccessPlugin_logic_fsm_inject_sampled;
  reg                 CsrAccessPlugin_logic_fsm_inject_trapReg;
  reg                 CsrAccessPlugin_logic_fsm_inject_busTrapReg;
  reg        [3:0]    CsrAccessPlugin_logic_fsm_inject_busTrapCodeReg;
  reg                 CsrAccessPlugin_logic_fsm_readLogic_onReadsDo;
  reg                 CsrAccessPlugin_logic_fsm_readLogic_onReadsFireDo;
  wire                when_CsrAccessPlugin_l258;
  wire       [31:0]   CsrAccessPlugin_logic_fsm_readLogic_csrValue;
  wire       [31:0]   CsrAccessPlugin_logic_fsm_writeLogic_alu_mask;
  wire       [31:0]   CsrAccessPlugin_logic_fsm_writeLogic_alu_masked;
  wire       [31:0]   CsrAccessPlugin_logic_fsm_writeLogic_alu_result;
  reg                 CsrAccessPlugin_logic_fsm_writeLogic_onWritesDo;
  reg                 CsrAccessPlugin_logic_fsm_writeLogic_onWritesFireDo;
  wire                when_CsrAccessPlugin_l352;
  wire                when_CsrAccessPlugin_l352_1;
  wire                when_CsrAccessPlugin_l352_2;
  wire                when_CsrAccessPlugin_l349;
  wire                when_CsrAccessPlugin_l349_1;
  wire                when_CsrAccessPlugin_l349_2;
  wire                FetchCachelessPlugin_logic_fork_forked_valid;
  wire                FetchCachelessPlugin_logic_fork_forked_ready;
  reg                 FetchCachelessPlugin_logic_fork_forked_fired;
  reg                 _zz_FetchCachelessPlugin_logic_fork_forked_valid;
  wire                fetch_logic_ctrls_0_haltRequest_CtrlLink_l112;
  wire                FetchCachelessPlugin_logic_fork_forked_fire;
  wire                _zz_FetchCachelessPlugin_logic_fork_forked_ready;
  reg                 FetchCachelessPlugin_logic_fork_halted_valid;
  wire                FetchCachelessPlugin_logic_fork_halted_ready;
  wire                FetchCachelessPlugin_logic_fork_translated_valid;
  wire                FetchCachelessPlugin_logic_fork_translated_ready;
  wire       [0:0]    FetchCachelessPlugin_logic_fork_translated_payload_id;
  wire       [31:0]   FetchCachelessPlugin_logic_fork_translated_payload_address;
  wire                FetchCachelessPlugin_logic_fork_persistent_valid;
  wire                FetchCachelessPlugin_logic_fork_persistent_ready;
  wire       [0:0]    FetchCachelessPlugin_logic_fork_persistent_payload_id;
  wire       [31:0]   FetchCachelessPlugin_logic_fork_persistent_payload_address;
  reg                 FetchCachelessPlugin_logic_fork_translated_rValidN;
  reg        [0:0]    FetchCachelessPlugin_logic_fork_translated_rData_id;
  reg        [31:0]   FetchCachelessPlugin_logic_fork_translated_rData_address;
  wire                FetchCachelessPlugin_logic_fork_translated_fire;
  reg                 FetchCachelessPlugin_logic_bus_cmd_valid_regNext;
  reg                 FetchCachelessPlugin_logic_bus_cmd_ready_regNext;
  wire                FetchCachelessPlugin_logic_bus_cmd_isStall;
  reg                 FetchCachelessPlugin_logic_bus_cmd_isStall_regNext;
  reg        [0:0]    FetchCachelessPlugin_logic_bus_cmd_payload_regNext_id;
  reg        [31:0]   FetchCachelessPlugin_logic_bus_cmd_payload_regNext_address;
  wire                when_FetchCachelessPlugin_l144;
  reg                 FetchCachelessPlugin_logic_join_haltIt;
  wire       [32:0]   _zz_FetchCachelessPlugin_logic_join_rsp_error;
  reg                 FetchCachelessPlugin_logic_join_rsp_error;
  reg        [31:0]   FetchCachelessPlugin_logic_join_rsp_word;
  wire                when_FetchCachelessPlugin_l159;
  reg                 FetchCachelessPlugin_logic_join_trapSent;
  wire                when_FetchCachelessPlugin_l178;
  wire                when_FetchCachelessPlugin_l184;
  wire                when_FetchCachelessPlugin_l209;
  wire                fetch_logic_ctrls_1_haltRequest_FetchCachelessPlugin_l211;
  wire       [2:0]    CsrRamPlugin_logic_writeLogic_hits;
  wire                CsrRamPlugin_logic_writeLogic_hit;
  wire       [2:0]    CsrRamPlugin_logic_writeLogic_hits_ohFirst_input;
  wire       [2:0]    CsrRamPlugin_logic_writeLogic_hits_ohFirst_masked;
  wire       [2:0]    CsrRamPlugin_logic_writeLogic_oh;
  wire                CsrRamPlugin_logic_writeLogic_port_valid;
  wire       [1:0]    CsrRamPlugin_logic_writeLogic_port_payload_address;
  wire       [31:0]   CsrRamPlugin_logic_writeLogic_port_payload_data;
  wire                _zz_TrapPlugin_logic_harts_0_crsPorts_write_ready;
  wire                _zz_CsrRamPlugin_csrMapper_write_ready;
  wire                _zz_CsrRamPlugin_setup_initPort_ready;
  wire       [1:0]    CsrRamPlugin_logic_readLogic_hits;
  wire                CsrRamPlugin_logic_readLogic_hit;
  wire       [1:0]    CsrRamPlugin_logic_readLogic_hits_ohFirst_input;
  wire       [1:0]    CsrRamPlugin_logic_readLogic_hits_ohFirst_masked;
  wire       [1:0]    CsrRamPlugin_logic_readLogic_oh;
  wire                _zz_CsrRamPlugin_logic_readLogic_sel;
  wire       [0:0]    CsrRamPlugin_logic_readLogic_sel;
  wire                CsrRamPlugin_logic_readLogic_port_cmd_valid;
  wire       [1:0]    CsrRamPlugin_logic_readLogic_port_cmd_payload;
  wire       [31:0]   CsrRamPlugin_logic_readLogic_port_rsp;
  reg        [1:0]    CsrRamPlugin_logic_readLogic_ohReg;
  reg                 CsrRamPlugin_logic_readLogic_busy;
  reg        [2:0]    CsrRamPlugin_logic_flush_counter;
  wire                CsrRamPlugin_logic_flush_done;
  wire                execute_lane0_bypasser_integer_RS2_port_valid;
  wire       [4:0]    execute_lane0_bypasser_integer_RS2_port_address;
  wire       [31:0]   execute_lane0_bypasser_integer_RS2_port_data;
  reg        [1:0]    execute_lane0_bypasser_integer_RS2_bypassEnables;
  wire       [1:0]    _zz_execute_lane0_bypasser_integer_RS2_bypassEnables_bools_0;
  wire                execute_lane0_bypasser_integer_RS2_bypassEnables_bools_0;
  wire                execute_lane0_bypasser_integer_RS2_bypassEnables_bools_1;
  reg        [1:0]    _zz_execute_lane0_bypasser_integer_RS2_sel;
  wire       [1:0]    execute_lane0_bypasser_integer_RS2_sel;
  wire                execute_lane0_bypasser_integer_RS1_port_valid;
  wire       [4:0]    execute_lane0_bypasser_integer_RS1_port_address;
  wire       [31:0]   execute_lane0_bypasser_integer_RS1_port_data;
  reg        [1:0]    execute_lane0_bypasser_integer_RS1_bypassEnables;
  wire       [1:0]    _zz_execute_lane0_bypasser_integer_RS1_bypassEnables_bools_0;
  wire                execute_lane0_bypasser_integer_RS1_bypassEnables_bools_0;
  wire                execute_lane0_bypasser_integer_RS1_bypassEnables_bools_1;
  reg        [1:0]    _zz_execute_lane0_bypasser_integer_RS1_sel;
  wire       [1:0]    execute_lane0_bypasser_integer_RS1_sel;
  wire                execute_lane0_logic_completions_onCtrl_0_port_valid;
  wire       [15:0]   execute_lane0_logic_completions_onCtrl_0_port_payload_uopId;
  wire                execute_lane0_logic_completions_onCtrl_0_port_payload_trap;
  wire                execute_lane0_logic_completions_onCtrl_0_port_payload_commit;
  wire                execute_lane0_logic_completions_onCtrl_1_port_valid;
  wire       [15:0]   execute_lane0_logic_completions_onCtrl_1_port_payload_uopId;
  wire                execute_lane0_logic_completions_onCtrl_1_port_payload_trap;
  wire                execute_lane0_logic_completions_onCtrl_1_port_payload_commit;
  wire                execute_lane0_logic_completions_onCtrl_2_port_valid;
  wire       [15:0]   execute_lane0_logic_completions_onCtrl_2_port_payload_uopId;
  wire                execute_lane0_logic_completions_onCtrl_2_port_payload_trap;
  wire                execute_lane0_logic_completions_onCtrl_2_port_payload_commit;
  wire       [31:0]   execute_lane0_logic_decoding_decodingBits;
  wire                _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0;
  wire                _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0;
  wire                _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_1;
  wire                _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0;
  wire                _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_1;
  wire                _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_2;
  wire                _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_3;
  wire                _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_2;
  wire                _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
  wire                _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0;
  wire                _zz_execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0;
  wire                _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0;
  wire       [1:0]    _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0;
  wire       [1:0]    _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_1;
  wire       [1:0]    _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_2;
  wire                _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0;
  wire       [1:0]    _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0;
  wire       [1:0]    _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_1;
  wire       [1:0]    _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_2;
  wire                _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0;
  wire       [2:0]    _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1;
  wire       [2:0]    _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2;
  wire       [2:0]    _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3;
  wire                when_ExecuteLanePlugin_l306;
  wire                when_ExecuteLanePlugin_l306_1;
  wire                when_ExecuteLanePlugin_l306_2;
  wire                WhiteboxerPlugin_logic_csr_port_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_csr_port_payload_uopId;
  wire       [11:0]   WhiteboxerPlugin_logic_csr_port_payload_address;
  wire       [31:0]   WhiteboxerPlugin_logic_csr_port_payload_write;
  wire       [31:0]   WhiteboxerPlugin_logic_csr_port_payload_read;
  wire                WhiteboxerPlugin_logic_csr_port_payload_writeDone;
  wire                WhiteboxerPlugin_logic_csr_port_payload_readDone;
  wire                WhiteboxerPlugin_logic_rfWrites_ports_0_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_rfWrites_ports_0_payload_uopId;
  wire       [31:0]   WhiteboxerPlugin_logic_rfWrites_ports_0_payload_data;
  wire                WhiteboxerPlugin_logic_rfWrites_ports_1_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_rfWrites_ports_1_payload_uopId;
  wire       [31:0]   WhiteboxerPlugin_logic_rfWrites_ports_1_payload_data;
  wire                WhiteboxerPlugin_logic_rfWrites_ports_2_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_rfWrites_ports_2_payload_uopId;
  wire       [31:0]   WhiteboxerPlugin_logic_rfWrites_ports_2_payload_data;
  wire                WhiteboxerPlugin_logic_completions_ports_0_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_completions_ports_0_payload_uopId;
  wire                WhiteboxerPlugin_logic_completions_ports_0_payload_trap;
  wire                WhiteboxerPlugin_logic_completions_ports_0_payload_commit;
  wire                WhiteboxerPlugin_logic_completions_ports_1_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_completions_ports_1_payload_uopId;
  wire                WhiteboxerPlugin_logic_completions_ports_1_payload_trap;
  wire                WhiteboxerPlugin_logic_completions_ports_1_payload_commit;
  wire                WhiteboxerPlugin_logic_completions_ports_2_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_completions_ports_2_payload_uopId;
  wire                WhiteboxerPlugin_logic_completions_ports_2_payload_trap;
  wire                WhiteboxerPlugin_logic_completions_ports_2_payload_commit;
  wire                WhiteboxerPlugin_logic_completions_ports_3_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_completions_ports_3_payload_uopId;
  wire                WhiteboxerPlugin_logic_completions_ports_3_payload_trap;
  wire                WhiteboxerPlugin_logic_completions_ports_3_payload_commit;
  wire                WhiteboxerPlugin_logic_commits_ports_0_oh_0;
  wire                WhiteboxerPlugin_logic_commits_ports_0_valid;
  wire       [31:0]   WhiteboxerPlugin_logic_commits_ports_0_pc;
  wire       [31:0]   WhiteboxerPlugin_logic_commits_ports_0_uop;
  wire                WhiteboxerPlugin_logic_reschedules_flushes_0_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_reschedules_flushes_0_payload_uopId;
  wire                WhiteboxerPlugin_logic_reschedules_flushes_0_payload_self;
  wire                WhiteboxerPlugin_logic_reschedules_flushes_1_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_reschedules_flushes_1_payload_uopId;
  wire                WhiteboxerPlugin_logic_reschedules_flushes_1_payload_self;
  wire                WhiteboxerPlugin_logic_reschedules_flushes_2_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_reschedules_flushes_2_payload_uopId;
  wire                WhiteboxerPlugin_logic_reschedules_flushes_2_payload_self;
  wire                WhiteboxerPlugin_logic_reschedules_flushes_3_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_reschedules_flushes_3_payload_uopId;
  wire                WhiteboxerPlugin_logic_reschedules_flushes_3_payload_self;
  wire                WhiteboxerPlugin_logic_reschedules_flushes_4_valid;
  wire       [15:0]   WhiteboxerPlugin_logic_reschedules_flushes_4_payload_uopId;
  wire                WhiteboxerPlugin_logic_reschedules_flushes_4_payload_self;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_asFlow_valid;
  wire       [31:0]   early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_pcOnLastSlice;
  wire       [31:0]   early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_pcTarget;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_taken;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_isBranch;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_isPush;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_isPop;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_wasWrong;
  wire                early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_badPredictedTarget;
  wire       [15:0]   early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_uopId;
  wire                WhiteboxerPlugin_logic_prediction_learns_0_valid;
  wire       [31:0]   WhiteboxerPlugin_logic_prediction_learns_0_payload_pcOnLastSlice;
  wire       [31:0]   WhiteboxerPlugin_logic_prediction_learns_0_payload_pcTarget;
  wire                WhiteboxerPlugin_logic_prediction_learns_0_payload_taken;
  wire                WhiteboxerPlugin_logic_prediction_learns_0_payload_isBranch;
  wire                WhiteboxerPlugin_logic_prediction_learns_0_payload_isPush;
  wire                WhiteboxerPlugin_logic_prediction_learns_0_payload_isPop;
  wire                WhiteboxerPlugin_logic_prediction_learns_0_payload_wasWrong;
  wire                WhiteboxerPlugin_logic_prediction_learns_0_payload_badPredictedTarget;
  wire       [15:0]   WhiteboxerPlugin_logic_prediction_learns_0_payload_uopId;
  wire                WhiteboxerPlugin_logic_loadExecute_fire;
  wire       [15:0]   WhiteboxerPlugin_logic_loadExecute_uopId;
  wire       [1:0]    WhiteboxerPlugin_logic_loadExecute_size;
  wire       [31:0]   WhiteboxerPlugin_logic_loadExecute_address;
  wire       [31:0]   WhiteboxerPlugin_logic_loadExecute_data;
  wire                WhiteboxerPlugin_logic_storeCommit_fire;
  wire       [15:0]   WhiteboxerPlugin_logic_storeCommit_uopId;
  wire       [11:0]   WhiteboxerPlugin_logic_storeCommit_storeId;
  wire       [1:0]    WhiteboxerPlugin_logic_storeCommit_size;
  wire       [31:0]   WhiteboxerPlugin_logic_storeCommit_address;
  wire       [31:0]   WhiteboxerPlugin_logic_storeCommit_data;
  wire                WhiteboxerPlugin_logic_storeCommit_amo;
  wire                WhiteboxerPlugin_logic_storeConditional_fire;
  wire       [15:0]   WhiteboxerPlugin_logic_storeConditional_uopId;
  wire                WhiteboxerPlugin_logic_storeConditional_miss;
  wire                WhiteboxerPlugin_logic_storeBroadcast_fire;
  wire       [11:0]   WhiteboxerPlugin_logic_storeBroadcast_storeId;
  wire                fetch_logic_flushes_0_doIt;
  wire                fetch_logic_ctrls_1_forgetsSingleRequest_FetchPipelinePlugin_l50;
  wire                PmpPlugin_logic_isMachine;
  wire                PmpPlugin_logic_instructionShouldHit;
  wire                PmpPlugin_logic_dataShouldHit;
  wire                FetchCachelessPlugin_logic_pmpPort_logic_dataShouldHitPort;
  wire       [19:0]   FetchCachelessPlugin_logic_pmpPort_logic_torCmpAddress;
  wire                LsuCachelessPlugin_logic_pmpPort_logic_dataShouldHitPort;
  wire       [19:0]   LsuCachelessPlugin_logic_pmpPort_logic_torCmpAddress;
  wire       [31:0]   FetchCachelessPlugin_pmaBuilder_addressBits;
  wire                FetchCachelessPlugin_pmaBuilder_onTransfers_0_addressHit;
  wire                FetchCachelessPlugin_pmaBuilder_onTransfers_0_argsHit;
  wire                FetchCachelessPlugin_pmaBuilder_onTransfers_0_hit;
  wire                _zz_FetchCachelessPlugin_logic_onPma_port_rsp_fault;
  wire                integer_RegFilePlugin_logic_writeMerges_0_bus_valid;
  wire       [4:0]    integer_RegFilePlugin_logic_writeMerges_0_bus_address;
  wire       [31:0]   integer_RegFilePlugin_logic_writeMerges_0_bus_data;
  wire       [15:0]   integer_RegFilePlugin_logic_writeMerges_0_bus_uopId;
  reg        [5:0]    integer_RegFilePlugin_logic_initalizer_counter;
  wire                integer_RegFilePlugin_logic_initalizer_done;
  wire                when_RegFilePlugin_l132;
  wire                integer_write_0_valid /* verilator public */ ;
  wire       [4:0]    integer_write_0_address /* verilator public */ ;
  wire       [31:0]   integer_write_0_data /* verilator public */ ;
  wire       [15:0]   integer_write_0_uopId /* verilator public */ ;
  wire       [0:0]    WhiteboxerPlugin_logic_wfi;
  wire                WhiteboxerPlugin_logic_perf_executeFreezed;
  wire                WhiteboxerPlugin_logic_perf_dispatchHazards;
  wire       [0:0]    WhiteboxerPlugin_logic_perf_candidatesCount;
  wire       [0:0]    WhiteboxerPlugin_logic_perf_dispatchFeedCount;
  reg                 _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_1;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_2;
  wire       [59:0]   WhiteboxerPlugin_logic_perf_executeFreezedCounter;
  reg                 _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_1;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_2;
  wire       [59:0]   WhiteboxerPlugin_logic_perf_dispatchHazardsCounter;
  wire                when_Utils_l593;
  reg                 _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_1;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_2;
  wire       [59:0]   WhiteboxerPlugin_logic_perf_candidatesCountCounters_0;
  wire                when_Utils_l593_1;
  reg                 _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_1;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_2;
  wire       [59:0]   WhiteboxerPlugin_logic_perf_candidatesCountCounters_1;
  wire                when_Utils_l593_2;
  reg                 _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_1;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_2;
  wire       [59:0]   WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0;
  wire                when_Utils_l593_3;
  reg                 _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_1;
  reg        [59:0]   _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_2;
  wire       [59:0]   WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1;
  wire                WhiteboxerPlugin_logic_trap_ports_0_valid;
  wire                WhiteboxerPlugin_logic_trap_ports_0_interrupt;
  wire       [3:0]    WhiteboxerPlugin_logic_trap_ports_0_cause;
  wire                fetch_logic_ctrls_1_up_forgetOne;
  wire                when_CtrlLink_l191;
  wire                when_CtrlLink_l191_1;
  wire                when_StageLink_l71;
  wire                when_DecodePipelinePlugin_l70;
  reg        [3:0]    TrapPlugin_logic_harts_0_trap_fsm_stateReg;
  reg        [3:0]    TrapPlugin_logic_harts_0_trap_fsm_stateNext;
  wire                when_TrapPlugin_l453;
  wire                when_TrapPlugin_l481;
  wire                when_TrapPlugin_l615;
  wire                when_TrapPlugin_l712;
  wire       [1:0]    switch_TrapPlugin_l713;
  wire                when_TrapPlugin_l406;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onExit_RESET;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onExit_RUNNING;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onExit_COMPUTE;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onExit_TRAP_EPC;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onExit_TRAP_TVAL;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onExit_TRAP_TVEC;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onExit_TRAP_WAIT;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onExit_TRAP_APPLY;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onExit_XRET_EPC;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onExit_XRET_APPLY;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onExit_JUMP;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onEntry_RESET;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onEntry_RUNNING;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onEntry_COMPUTE;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onEntry_TRAP_EPC;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onEntry_TRAP_TVAL;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onEntry_TRAP_TVEC;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onEntry_TRAP_WAIT;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onEntry_TRAP_APPLY;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onEntry_XRET_EPC;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onEntry_XRET_APPLY;
  wire                TrapPlugin_logic_harts_0_trap_fsm_onEntry_JUMP;
  reg        [1:0]    CsrAccessPlugin_logic_fsm_stateReg;
  reg        [1:0]    CsrAccessPlugin_logic_fsm_stateNext;
  wire                when_CsrAccessPlugin_l302;
  wire                when_CsrAccessPlugin_l331;
  wire                when_CsrAccessPlugin_l214;
  wire                when_CsrAccessPlugin_l215;
  wire                when_CsrAccessPlugin_l227;
  wire                CsrAccessPlugin_logic_fsm_onExit_IDLE;
  wire                CsrAccessPlugin_logic_fsm_onExit_READ;
  wire                CsrAccessPlugin_logic_fsm_onExit_WRITE;
  wire                CsrAccessPlugin_logic_fsm_onExit_COMPLETION;
  wire                CsrAccessPlugin_logic_fsm_onEntry_IDLE;
  wire                CsrAccessPlugin_logic_fsm_onEntry_READ;
  wire                CsrAccessPlugin_logic_fsm_onEntry_WRITE;
  wire                CsrAccessPlugin_logic_fsm_onEntry_COMPLETION;
  `ifndef SYNTHESIS
  reg [79:0] execute_ctrl2_up_early0_EnvPlugin_OP_lane0_string;
  reg [31:0] execute_ctrl2_up_BranchPlugin_BRANCH_CTRL_lane0_string;
  reg [39:0] execute_ctrl2_up_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string;
  reg [79:0] execute_ctrl1_down_early0_EnvPlugin_OP_lane0_string;
  reg [31:0] execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_string;
  reg [39:0] execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string;
  reg [79:0] execute_ctrl2_down_early0_EnvPlugin_OP_lane0_string;
  reg [31:0] execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0_string;
  reg [39:0] execute_ctrl2_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string;
  reg [39:0] _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string;
  reg [39:0] _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_1_string;
  reg [39:0] _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_2_string;
  reg [31:0] _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_string;
  reg [31:0] _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_1_string;
  reg [31:0] _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_2_string;
  reg [79:0] _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1_string;
  reg [79:0] _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2_string;
  reg [79:0] _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3_string;
  reg [79:0] TrapPlugin_logic_harts_0_trap_fsm_stateReg_string;
  reg [79:0] TrapPlugin_logic_harts_0_trap_fsm_stateNext_string;
  reg [79:0] CsrAccessPlugin_logic_fsm_stateReg_string;
  reg [79:0] CsrAccessPlugin_logic_fsm_stateNext_string;
  `endif

  (* ram_style = "distributed" *) reg [32:0] FetchCachelessPlugin_logic_buffer_words [0:1];
  reg [31:0] CsrRamPlugin_logic_mem [0:3];
  function [1:0] zz_FetchCachelessPlugin_logic_trapPort_payload_arg(input dummy);
    begin
      zz_FetchCachelessPlugin_logic_trapPort_payload_arg = 2'b00;
      zz_FetchCachelessPlugin_logic_trapPort_payload_arg[1 : 0] = 2'b10;
    end
  endfunction
  wire [1:0] _zz_9;

  assign _zz_early0_IntAluPlugin_logic_alu_result = (early0_IntAluPlugin_logic_alu_bitwise | _zz_early0_IntAluPlugin_logic_alu_result_1);
  assign _zz_early0_IntAluPlugin_logic_alu_result_1 = (execute_ctrl2_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0 ? execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0 : 32'h0);
  assign _zz_early0_IntAluPlugin_logic_alu_result_2 = (execute_ctrl2_down_early0_IntAluPlugin_ALU_SLTX_lane0 ? _zz_early0_IntAluPlugin_logic_alu_result_3 : 32'h0);
  assign _zz_early0_IntAluPlugin_logic_alu_result_3 = _zz_early0_IntAluPlugin_logic_alu_result_4;
  assign _zz_early0_IntAluPlugin_logic_alu_result_5 = execute_ctrl2_down_early0_SrcPlugin_LESS_lane0;
  assign _zz_early0_IntAluPlugin_logic_alu_result_4 = {31'd0, _zz_early0_IntAluPlugin_logic_alu_result_5};
  assign _zz_early0_BarrelShifterPlugin_logic_shift_amplitude = execute_ctrl2_down_early0_SrcPlugin_SRC2_lane0[4 : 0];
  assign _zz_early0_BarrelShifterPlugin_logic_shift_reversed = {execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[0],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[1],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[2],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[3],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[4],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[5],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[6],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[7],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[8],{_zz_early0_BarrelShifterPlugin_logic_shift_reversed_1,{_zz_early0_BarrelShifterPlugin_logic_shift_reversed_2,_zz_early0_BarrelShifterPlugin_logic_shift_reversed_3}}}}}}}}}}};
  assign _zz_early0_BarrelShifterPlugin_logic_shift_shifted = ($signed(_zz_early0_BarrelShifterPlugin_logic_shift_shifted_1) >>> early0_BarrelShifterPlugin_logic_shift_amplitude);
  assign _zz_early0_BarrelShifterPlugin_logic_shift_shifted_1 = {(execute_ctrl2_down_BarrelShifterPlugin_SIGNED_lane0 && execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[31]),early0_BarrelShifterPlugin_logic_shift_reversed};
  assign _zz_early0_BarrelShifterPlugin_logic_shift_patched = {early0_BarrelShifterPlugin_logic_shift_shifted[0],{early0_BarrelShifterPlugin_logic_shift_shifted[1],{early0_BarrelShifterPlugin_logic_shift_shifted[2],{early0_BarrelShifterPlugin_logic_shift_shifted[3],{early0_BarrelShifterPlugin_logic_shift_shifted[4],{early0_BarrelShifterPlugin_logic_shift_shifted[5],{early0_BarrelShifterPlugin_logic_shift_shifted[6],{early0_BarrelShifterPlugin_logic_shift_shifted[7],{early0_BarrelShifterPlugin_logic_shift_shifted[8],{_zz_early0_BarrelShifterPlugin_logic_shift_patched_1,{_zz_early0_BarrelShifterPlugin_logic_shift_patched_2,_zz_early0_BarrelShifterPlugin_logic_shift_patched_3}}}}}}}}}}};
  assign _zz_early0_BranchPlugin_pcCalc_target_b = {{{{execute_ctrl2_down_Decode_UOP_lane0[31],execute_ctrl2_down_Decode_UOP_lane0[19 : 12]},execute_ctrl2_down_Decode_UOP_lane0[20]},execute_ctrl2_down_Decode_UOP_lane0[30 : 21]},1'b0};
  assign _zz_early0_BranchPlugin_pcCalc_target_b_1 = execute_ctrl2_down_Decode_UOP_lane0[31 : 20];
  assign _zz_early0_BranchPlugin_pcCalc_target_b_2 = {{{{execute_ctrl2_down_Decode_UOP_lane0[31],execute_ctrl2_down_Decode_UOP_lane0[7]},execute_ctrl2_down_Decode_UOP_lane0[30 : 25]},execute_ctrl2_down_Decode_UOP_lane0[11 : 8]},1'b0};
  assign _zz_early0_BranchPlugin_pcCalc_slices_1 = 1'b0;
  assign _zz_early0_BranchPlugin_pcCalc_slices = {1'd0, _zz_early0_BranchPlugin_pcCalc_slices_1};
  assign _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_TRUE_lane0 = ($signed(early0_BranchPlugin_pcCalc_target_a) + $signed(early0_BranchPlugin_pcCalc_target_b));
  assign _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_FALSE_lane0_1 = ({2'd0,early0_BranchPlugin_pcCalc_slices} <<< 2'd2);
  assign _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_FALSE_lane0 = {28'd0, _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_FALSE_lane0_1};
  assign _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_LAST_SLICE_lane0_1 = 2'b00;
  assign _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_LAST_SLICE_lane0 = {30'd0, _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_LAST_SLICE_lane0_1};
  assign _zz_WhiteboxerPlugin_logic_decodes_0_pc = {32'd0, decode_ctrls_0_down_PC_0};
  assign _zz__zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0 = execute_ctrl1_down_Decode_UOP_lane0[31 : 20];
  assign _zz__zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0_1 = {execute_ctrl1_down_Decode_UOP_lane0[31 : 25],execute_ctrl1_down_Decode_UOP_lane0[11 : 7]};
  assign _zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0 = ($signed(execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0) + $signed(early0_SrcPlugin_logic_addsub_combined_rs2Patched));
  assign _zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0_1 = _zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0_2;
  assign _zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0_3 = execute_ctrl2_down_SrcStageables_REVERT_lane0;
  assign _zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0_2 = {31'd0, _zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0_3};
  assign _zz_early0_EnvPlugin_logic_trapPort_payload_code = {2'd0, early0_EnvPlugin_logic_exe_privilege};
  assign _zz_decode_ctrls_1_down_RS1_ENABLE_0 = (|{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00000044) == 32'h0),{_zz_decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0,{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00006004) == 32'h00002000),((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00005004) == 32'h00001000)}}});
  assign _zz_decode_ctrls_1_down_RS1_PHYS_0 = decode_ctrls_1_down_Decode_INSTRUCTION_0[19 : 15];
  assign _zz_decode_ctrls_1_down_RS2_ENABLE_0 = (|{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00000034) == 32'h00000020),((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00000064) == 32'h00000020)});
  assign _zz_decode_ctrls_1_down_RS2_PHYS_0 = decode_ctrls_1_down_Decode_INSTRUCTION_0[24 : 20];
  assign _zz_decode_ctrls_1_down_RD_ENABLE_0 = (|{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00000048) == 32'h00000048),{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00001010) == 32'h00001010),{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & _zz_decode_ctrls_1_down_RD_ENABLE_0_1) == 32'h00002010),{(_zz_decode_ctrls_1_down_RD_ENABLE_0_2 == _zz_decode_ctrls_1_down_RD_ENABLE_0_3),{_zz_decode_ctrls_1_down_RD_ENABLE_0_4,_zz_decode_ctrls_1_down_RD_ENABLE_0_5}}}}});
  assign _zz_decode_ctrls_1_down_RD_PHYS_0 = decode_ctrls_1_down_Decode_INSTRUCTION_0[11 : 7];
  assign _zz_LsuCachelessPlugin_logic_trapPort_payload_code = (execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_MISS_ALIGNED_lane0 ? (execute_ctrl2_down_AguPlugin_STORE_lane0 ? 3'b110 : 3'b100) : 3'b000);
  assign _zz_LsuCachelessPlugin_logic_onWb_rspShifted_2 = execute_ctrl4_down_early0_SrcPlugin_ADD_SUB_lane0[1 : 0];
  assign _zz_LsuCachelessPlugin_logic_onWb_rspShifted_5 = execute_ctrl4_down_early0_SrcPlugin_ADD_SUB_lane0[1 : 1];
  assign _zz_LsuCachelessPlugin_pmaBuilder_onTransfers_0_addressHit = (|((LsuCachelessPlugin_pmaBuilder_addressBits & 32'h0) == 32'h0));
  assign _zz_LsuCachelessPlugin_logic_onPma_port_rsp_io = (|_zz_LsuCachelessPlugin_logic_onPma_port_rsp_fault);
  assign _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_FPU_0 = _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_FPU_0_1[0];
  assign _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_FPU_0_1 = 1'b0;
  assign _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_RM_0 = _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_RM_0_1[0];
  assign _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_RM_0_1 = 1'b0;
  assign _zz_decode_ctrls_1_down_DispatchPlugin_logic_LANES_LAYER_HIT_0_0 = _zz_decode_ctrls_1_down_DispatchPlugin_logic_LANES_LAYER_HIT_0_0_1[0];
  assign _zz_decode_ctrls_1_down_DispatchPlugin_logic_LANES_LAYER_HIT_0_0_1 = (|_zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0);
  assign _zz_decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0_1 = _zz_decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0_2[0];
  assign _zz_decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0_2 = (|{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00000040) == 32'h00000040),{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00001010) == 32'h00001000),_zz_decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0}});
  assign _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_0 = _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_0_1[0];
  assign _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_0_1 = 1'b0;
  assign _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0_2 = _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0_3[0];
  assign _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0_3 = (|{_zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0_1,_zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0});
  assign _zz_decode_ctrls_1_down_DispatchPlugin_FENCE_OLDER_0 = _zz_decode_ctrls_1_down_DispatchPlugin_FENCE_OLDER_0_1[0];
  assign _zz_decode_ctrls_1_down_DispatchPlugin_FENCE_OLDER_0_1 = (|{_zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0_1,_zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0});
  assign _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0_0 = _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0_0_1[0];
  assign _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0_0_1 = (|_zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0);
  assign _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0_1 = _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0_2[0];
  assign _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0_2 = (|_zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0);
  assign _zz_TrapPlugin_logic_harts_0_trap_fsm_jumpTarget_1 = ({2'd0,TrapPlugin_logic_harts_0_trap_fsm_jumpOffset} <<< 2'd2);
  assign _zz_TrapPlugin_logic_harts_0_trap_fsm_jumpTarget = {29'd0, _zz_TrapPlugin_logic_harts_0_trap_fsm_jumpTarget_1};
  assign _zz_PcPlugin_logic_harts_0_self_pc_1 = (PcPlugin_logic_harts_0_self_increment ? 3'b100 : 3'b000);
  assign _zz_PcPlugin_logic_harts_0_self_pc = {29'd0, _zz_PcPlugin_logic_harts_0_self_pc_1};
  assign _zz_PcPlugin_logic_harts_0_aggregator_fault = (((_zz_PcPlugin_logic_harts_0_aggregator_target ? TrapPlugin_logic_harts_0_trap_pcPort_payload_fault : 1'b0) | (_zz_PcPlugin_logic_harts_0_aggregator_target_1 ? early0_BranchPlugin_logic_pcPort_payload_fault : 1'b0)) | (_zz_PcPlugin_logic_harts_0_aggregator_target_2 ? PcPlugin_logic_harts_0_self_flow_payload_fault : 1'b0));
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_7 = ((_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue && REG_CSR_3858) ? 6'h2e : 6'h0);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_6 = {26'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_7};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_10 = ({7'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_1 ? PrivilegedPlugin_logic_harts_0_m_status_mpie : 1'b0)} <<< 3'd7);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_9 = {24'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_10};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_12 = ({3'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_1 ? PrivilegedPlugin_logic_harts_0_m_status_mie : 1'b0)} <<< 2'd3);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_11 = {28'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_12};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_14 = ({11'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_1 ? PrivilegedPlugin_logic_harts_0_m_status_mpp : 2'b00)} <<< 4'd11);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_13 = {19'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_14};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_15 = ({31'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_1 ? PrivilegedPlugin_logic_harts_0_m_status_sd : 1'b0)} <<< 5'd31);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_17 = ({17'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_1 ? PrivilegedPlugin_logic_harts_0_m_status_mprv : 1'b0)} <<< 5'd17);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_16 = {14'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_17};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_18 = ({31'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_2 ? PrivilegedPlugin_logic_harts_0_m_cause_interrupt : 1'b0)} <<< 5'd31);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_20 = (_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_2 ? PrivilegedPlugin_logic_harts_0_m_cause_code : 4'b0000);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_19 = {28'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_20};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_22 = ({11'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_3 ? PrivilegedPlugin_logic_harts_0_m_ip_meip : 1'b0)} <<< 4'd11);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_21 = {20'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_22};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_24 = ({7'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_3 ? PrivilegedPlugin_logic_harts_0_m_ip_mtip : 1'b0)} <<< 3'd7);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_23 = {24'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_24};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_26 = ({3'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_3 ? PrivilegedPlugin_logic_harts_0_m_ip_msip : 1'b0)} <<< 2'd3);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_25 = {28'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_26};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_28 = ({11'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_4 ? PrivilegedPlugin_logic_harts_0_m_ie_meie : 1'b0)} <<< 4'd11);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_27 = {20'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_28};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_30 = ({7'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_4 ? PrivilegedPlugin_logic_harts_0_m_ie_mtie : 1'b0)} <<< 3'd7);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_29 = {24'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_30};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_32 = ({3'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_4 ? PrivilegedPlugin_logic_harts_0_m_ie_msie : 1'b0)} <<< 2'd3);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_31 = {28'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_32};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_34 = (_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_5 ? PrivilegedPlugin_logic_harts_0_m_topi_priority : 1'b0);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_33 = {31'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_34};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_36 = ({16'd0,(_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_5 ? PrivilegedPlugin_logic_harts_0_m_topi_interrupt : 4'b0000)} <<< 5'd16);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_35 = {12'd0, _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_36};
  assign _zz_CsrAccessPlugin_logic_fsm_writeLogic_alu_mask_1 = CsrAccessPlugin_logic_fsm_interface_uop[19 : 15];
  assign _zz_CsrAccessPlugin_logic_fsm_writeLogic_alu_mask = {27'd0, _zz_CsrAccessPlugin_logic_fsm_writeLogic_alu_mask_1};
  assign _zz_CsrRamPlugin_logic_writeLogic_hits_ohFirst_masked = (CsrRamPlugin_logic_writeLogic_hits_ohFirst_input - 3'b001);
  assign _zz_CsrRamPlugin_logic_readLogic_hits_ohFirst_masked = (CsrRamPlugin_logic_readLogic_hits_ohFirst_input - 2'b01);
  assign _zz_CsrRamPlugin_logic_flush_counter_1 = (! CsrRamPlugin_logic_flush_done);
  assign _zz_CsrRamPlugin_logic_flush_counter = {2'd0, _zz_CsrRamPlugin_logic_flush_counter_1};
  assign _zz_execute_ctrl1_down_early0_IntAluPlugin_SEL_lane0 = _zz_execute_ctrl1_down_early0_IntAluPlugin_SEL_lane0_1[0];
  assign _zz_execute_ctrl1_down_early0_IntAluPlugin_SEL_lane0_1 = (|{((execute_lane0_logic_decoding_decodingBits & 32'h00002050) == 32'h00002010),{((execute_lane0_logic_decoding_decodingBits & 32'h0000004c) == 32'h00000004),((execute_lane0_logic_decoding_decodingBits & 32'h00001050) == 32'h00000010)}});
  assign _zz_execute_ctrl1_down_early0_BarrelShifterPlugin_SEL_lane0 = _zz_execute_ctrl1_down_early0_BarrelShifterPlugin_SEL_lane0_1[0];
  assign _zz_execute_ctrl1_down_early0_BarrelShifterPlugin_SEL_lane0_1 = (|((execute_lane0_logic_decoding_decodingBits & 32'h00003054) == 32'h00001010));
  assign _zz_execute_ctrl1_down_early0_BranchPlugin_SEL_lane0 = _zz_execute_ctrl1_down_early0_BranchPlugin_SEL_lane0_1[0];
  assign _zz_execute_ctrl1_down_early0_BranchPlugin_SEL_lane0_1 = (|_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0);
  assign _zz_execute_ctrl1_down_early0_EnvPlugin_SEL_lane0 = _zz_execute_ctrl1_down_early0_EnvPlugin_SEL_lane0_1[0];
  assign _zz_execute_ctrl1_down_early0_EnvPlugin_SEL_lane0_1 = (|{((execute_lane0_logic_decoding_decodingBits & 32'h00001048) == 32'h00001008),((execute_lane0_logic_decoding_decodingBits & 32'h00003050) == 32'h00000050)});
  assign _zz_execute_ctrl1_down_CsrAccessPlugin_SEL_lane0 = _zz_execute_ctrl1_down_CsrAccessPlugin_SEL_lane0_1[0];
  assign _zz_execute_ctrl1_down_CsrAccessPlugin_SEL_lane0_1 = (|{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_1,_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0});
  assign _zz_execute_ctrl1_down_AguPlugin_SEL_lane0 = _zz_execute_ctrl1_down_AguPlugin_SEL_lane0_1[0];
  assign _zz_execute_ctrl1_down_AguPlugin_SEL_lane0_1 = (|((execute_lane0_logic_decoding_decodingBits & 32'h00000058) == 32'h0));
  assign _zz_execute_ctrl1_down_LsuCachelessPlugin_FENCE_lane0 = _zz_execute_ctrl1_down_LsuCachelessPlugin_FENCE_lane0_1[0];
  assign _zz_execute_ctrl1_down_LsuCachelessPlugin_FENCE_lane0_1 = (|((execute_lane0_logic_decoding_decodingBits & 32'h00001048) == 32'h00000008));
  assign _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_1 = _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_2[0];
  assign _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_2 = (|{((execute_lane0_logic_decoding_decodingBits & 32'h00000048) == 32'h00000048),{((execute_lane0_logic_decoding_decodingBits & 32'h00001010) == 32'h00001010),{((execute_lane0_logic_decoding_decodingBits & 32'h00002010) == 32'h00002010),{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_1,{_zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0,(_zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_3 == _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_4)}}}}});
  assign _zz_execute_ctrl1_down_COMPLETION_AT_2_lane0 = _zz_execute_ctrl1_down_COMPLETION_AT_2_lane0_1[0];
  assign _zz_execute_ctrl1_down_COMPLETION_AT_2_lane0_1 = (|{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_3,{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_1,{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0,_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_2}}});
  assign _zz_execute_ctrl1_down_COMPLETION_AT_3_lane0 = _zz_execute_ctrl1_down_COMPLETION_AT_3_lane0_1[0];
  assign _zz_execute_ctrl1_down_COMPLETION_AT_3_lane0_1 = (|{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_1,{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0,_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_2}});
  assign _zz_execute_ctrl1_down_COMPLETION_AT_4_lane0 = _zz_execute_ctrl1_down_COMPLETION_AT_4_lane0_1[0];
  assign _zz_execute_ctrl1_down_COMPLETION_AT_4_lane0_1 = (|_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0);
  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_4 = _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_5[0];
  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_5 = (|{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_3,{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_1,{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0,_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_2}}});
  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_3 = _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_4[0];
  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_4 = (|{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_1,{_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0,_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_2}});
  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0_1 = _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0_2[0];
  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0_2 = (|_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0);
  assign _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0_1 = _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0_2[0];
  assign _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0_2 = (|{_zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0,((execute_lane0_logic_decoding_decodingBits & 32'h00006000) == 32'h0)});
  assign _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_SLTX_lane0 = _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_SLTX_lane0_1[0];
  assign _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_SLTX_lane0_1 = (|((execute_lane0_logic_decoding_decodingBits & 32'h00006004) == 32'h00002000));
  assign _zz_execute_ctrl1_down_SrcStageables_REVERT_lane0 = _zz_execute_ctrl1_down_SrcStageables_REVERT_lane0_1[0];
  assign _zz_execute_ctrl1_down_SrcStageables_REVERT_lane0_1 = (|{((execute_lane0_logic_decoding_decodingBits & 32'h00000040) == 32'h00000040),{((execute_lane0_logic_decoding_decodingBits & 32'h00002014) == 32'h00002010),((execute_lane0_logic_decoding_decodingBits & 32'h40000034) == 32'h40000030)}});
  assign _zz_execute_ctrl1_down_SrcStageables_ZERO_lane0 = _zz_execute_ctrl1_down_SrcStageables_ZERO_lane0_1[0];
  assign _zz_execute_ctrl1_down_SrcStageables_ZERO_lane0_1 = (|((execute_lane0_logic_decoding_decodingBits & 32'h00000024) == 32'h00000024));
  assign _zz_execute_ctrl1_down_lane0_IntFormatPlugin_logic_SIGNED_lane0 = _zz_execute_ctrl1_down_lane0_IntFormatPlugin_logic_SIGNED_lane0_1[0];
  assign _zz_execute_ctrl1_down_lane0_IntFormatPlugin_logic_SIGNED_lane0_1 = (|((execute_lane0_logic_decoding_decodingBits & 32'h00004010) == 32'h0));
  assign _zz_execute_ctrl1_down_BYPASSED_AT_1_lane0 = _zz_execute_ctrl1_down_BYPASSED_AT_1_lane0_1[0];
  assign _zz_execute_ctrl1_down_BYPASSED_AT_1_lane0_1 = 1'b0;
  assign _zz_execute_ctrl1_down_BYPASSED_AT_2_lane0 = _zz_execute_ctrl1_down_BYPASSED_AT_2_lane0_1[0];
  assign _zz_execute_ctrl1_down_BYPASSED_AT_2_lane0_1 = 1'b0;
  assign _zz_execute_ctrl1_down_BYPASSED_AT_3_lane0 = _zz_execute_ctrl1_down_BYPASSED_AT_3_lane0_1[0];
  assign _zz_execute_ctrl1_down_BYPASSED_AT_3_lane0_1 = 1'b0;
  assign _zz_execute_ctrl1_down_BYPASSED_AT_4_lane0 = _zz_execute_ctrl1_down_BYPASSED_AT_4_lane0_1[0];
  assign _zz_execute_ctrl1_down_BYPASSED_AT_4_lane0_1 = 1'b0;
  assign _zz_execute_ctrl1_down_SrcStageables_UNSIGNED_lane0 = _zz_execute_ctrl1_down_SrcStageables_UNSIGNED_lane0_1[0];
  assign _zz_execute_ctrl1_down_SrcStageables_UNSIGNED_lane0_1 = (|{((execute_lane0_logic_decoding_decodingBits & 32'h00002010) == 32'h00002000),((execute_lane0_logic_decoding_decodingBits & 32'h00005000) == 32'h00001000)});
  assign _zz_execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0_1 = _zz_execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0_2[0];
  assign _zz_execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0_2 = (|_zz_execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0);
  assign _zz_execute_ctrl1_down_BarrelShifterPlugin_SIGNED_lane0 = _zz_execute_ctrl1_down_BarrelShifterPlugin_SIGNED_lane0_1[0];
  assign _zz_execute_ctrl1_down_BarrelShifterPlugin_SIGNED_lane0_1 = (|((execute_lane0_logic_decoding_decodingBits & 32'h40000000) == 32'h40000000));
  assign _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_IMM_lane0 = _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_IMM_lane0_1[0];
  assign _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_IMM_lane0_1 = (|((execute_lane0_logic_decoding_decodingBits & 32'h00004000) == 32'h00004000));
  assign _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0_1 = _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0_2[0];
  assign _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0_2 = (|_zz_execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0);
  assign _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0_1 = _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0_2[0];
  assign _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0_2 = (|_zz_execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0);
  assign _zz_execute_ctrl1_down_AguPlugin_LOAD_lane0 = _zz_execute_ctrl1_down_AguPlugin_LOAD_lane0_1[0];
  assign _zz_execute_ctrl1_down_AguPlugin_LOAD_lane0_1 = (|((execute_lane0_logic_decoding_decodingBits & 32'h00000020) == 32'h0));
  assign _zz_execute_ctrl1_down_AguPlugin_STORE_lane0 = _zz_execute_ctrl1_down_AguPlugin_STORE_lane0_1[0];
  assign _zz_execute_ctrl1_down_AguPlugin_STORE_lane0_1 = (|((execute_lane0_logic_decoding_decodingBits & 32'h00000020) == 32'h00000020));
  assign _zz_execute_ctrl1_down_AguPlugin_ATOMIC_lane0 = _zz_execute_ctrl1_down_AguPlugin_ATOMIC_lane0_1[0];
  assign _zz_execute_ctrl1_down_AguPlugin_ATOMIC_lane0_1 = 1'b0;
  assign _zz_execute_ctrl1_down_AguPlugin_FLOAT_lane0 = _zz_execute_ctrl1_down_AguPlugin_FLOAT_lane0_1[0];
  assign _zz_execute_ctrl1_down_AguPlugin_FLOAT_lane0_1 = 1'b0;
  assign _zz_execute_ctrl1_down_AguPlugin_CLEAN_lane0 = _zz_execute_ctrl1_down_AguPlugin_CLEAN_lane0_1[0];
  assign _zz_execute_ctrl1_down_AguPlugin_CLEAN_lane0_1 = 1'b0;
  assign _zz_execute_ctrl1_down_AguPlugin_INVALIDATE_lane0 = _zz_execute_ctrl1_down_AguPlugin_INVALIDATE_lane0_1[0];
  assign _zz_execute_ctrl1_down_AguPlugin_INVALIDATE_lane0_1 = 1'b0;
  assign _zz_WhiteboxerPlugin_logic_csr_access_payload_address = CsrAccessPlugin_logic_fsm_interface_uop;
  assign _zz_FetchCachelessPlugin_pmaBuilder_onTransfers_0_addressHit = (|((FetchCachelessPlugin_pmaBuilder_addressBits & 32'h0) == 32'h0));
  assign _zz_FetchCachelessPlugin_logic_onPma_port_rsp_io = (|_zz_FetchCachelessPlugin_logic_onPma_port_rsp_fault);
  assign _zz__zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_1_1 = _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter;
  assign _zz__zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_1 = {59'd0, _zz__zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_1_1};
  assign _zz__zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_1_1 = _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter;
  assign _zz__zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_1 = {59'd0, _zz__zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_1_1};
  assign _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_1_1 = _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0;
  assign _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_1 = {59'd0, _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_1_1};
  assign _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_1_1 = _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1;
  assign _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_1 = {59'd0, _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_1_1};
  assign _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_1_1 = _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0;
  assign _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_1 = {59'd0, _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_1_1};
  assign _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_1_1 = _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1;
  assign _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_1 = {59'd0, _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_1_1};
  assign _zz_FetchCachelessPlugin_logic_buffer_words_port = {FetchCachelessPlugin_logic_buffer_write_payload_data_word,FetchCachelessPlugin_logic_buffer_write_payload_data_error};
  assign _zz_LsuCachelessPlugin_logic_onWb_rspShifted_1 = _zz_LsuCachelessPlugin_logic_onWb_rspShifted_2;
  assign _zz_LsuCachelessPlugin_logic_onWb_rspShifted_4 = _zz_LsuCachelessPlugin_logic_onWb_rspShifted_5;
  assign _zz_WhiteboxerPlugin_logic_perf_candidatesCount_1 = DispatchPlugin_logic_candidates_0_ctx_valid;
  assign _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCount_1 = decode_ctrls_1_up_LANE_SEL_0;
  assign _zz_early0_BarrelShifterPlugin_logic_shift_reversed_1 = execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[9];
  assign _zz_early0_BarrelShifterPlugin_logic_shift_reversed_2 = execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[10];
  assign _zz_early0_BarrelShifterPlugin_logic_shift_reversed_3 = {execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[11],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[12],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[13],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[14],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[15],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[16],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[17],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[18],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[19],{_zz_early0_BarrelShifterPlugin_logic_shift_reversed_4,{_zz_early0_BarrelShifterPlugin_logic_shift_reversed_5,_zz_early0_BarrelShifterPlugin_logic_shift_reversed_6}}}}}}}}}}};
  assign _zz_early0_BarrelShifterPlugin_logic_shift_reversed_4 = execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[20];
  assign _zz_early0_BarrelShifterPlugin_logic_shift_reversed_5 = execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[21];
  assign _zz_early0_BarrelShifterPlugin_logic_shift_reversed_6 = {execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[22],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[23],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[24],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[25],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[26],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[27],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[28],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[29],{execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[30],execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[31]}}}}}}}}};
  assign _zz_early0_BarrelShifterPlugin_logic_shift_patched_1 = early0_BarrelShifterPlugin_logic_shift_shifted[9];
  assign _zz_early0_BarrelShifterPlugin_logic_shift_patched_2 = early0_BarrelShifterPlugin_logic_shift_shifted[10];
  assign _zz_early0_BarrelShifterPlugin_logic_shift_patched_3 = {early0_BarrelShifterPlugin_logic_shift_shifted[11],{early0_BarrelShifterPlugin_logic_shift_shifted[12],{early0_BarrelShifterPlugin_logic_shift_shifted[13],{early0_BarrelShifterPlugin_logic_shift_shifted[14],{early0_BarrelShifterPlugin_logic_shift_shifted[15],{early0_BarrelShifterPlugin_logic_shift_shifted[16],{early0_BarrelShifterPlugin_logic_shift_shifted[17],{early0_BarrelShifterPlugin_logic_shift_shifted[18],{early0_BarrelShifterPlugin_logic_shift_shifted[19],{_zz_early0_BarrelShifterPlugin_logic_shift_patched_4,{_zz_early0_BarrelShifterPlugin_logic_shift_patched_5,_zz_early0_BarrelShifterPlugin_logic_shift_patched_6}}}}}}}}}}};
  assign _zz_early0_BarrelShifterPlugin_logic_shift_patched_4 = early0_BarrelShifterPlugin_logic_shift_shifted[20];
  assign _zz_early0_BarrelShifterPlugin_logic_shift_patched_5 = early0_BarrelShifterPlugin_logic_shift_shifted[21];
  assign _zz_early0_BarrelShifterPlugin_logic_shift_patched_6 = {early0_BarrelShifterPlugin_logic_shift_shifted[22],{early0_BarrelShifterPlugin_logic_shift_shifted[23],{early0_BarrelShifterPlugin_logic_shift_shifted[24],{early0_BarrelShifterPlugin_logic_shift_shifted[25],{early0_BarrelShifterPlugin_logic_shift_shifted[26],{early0_BarrelShifterPlugin_logic_shift_shifted[27],{early0_BarrelShifterPlugin_logic_shift_shifted[28],{early0_BarrelShifterPlugin_logic_shift_shifted[29],{early0_BarrelShifterPlugin_logic_shift_shifted[30],early0_BarrelShifterPlugin_logic_shift_shifted[31]}}}}}}}}};
  assign _zz_decode_ctrls_1_down_RD_ENABLE_0_1 = 32'h00002010;
  assign _zz_decode_ctrls_1_down_RD_ENABLE_0_2 = (decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00000050);
  assign _zz_decode_ctrls_1_down_RD_ENABLE_0_3 = 32'h00000010;
  assign _zz_decode_ctrls_1_down_RD_ENABLE_0_4 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0000000c) == 32'h00000004);
  assign _zz_decode_ctrls_1_down_RD_ENABLE_0_5 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00000028) == 32'h0);
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0 = 32'h0000107f;
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_1 = (decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0000207f);
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_2 = 32'h00002073;
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_3 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0000407f) == 32'h00004063);
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_4 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0000207f) == 32'h00002013);
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_5 = {((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0000107f) == 32'h00000013),{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0000603f) == 32'h00000023),{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & _zz_decode_ctrls_1_down_Decode_LEGAL_0_6) == 32'h00000003),{(_zz_decode_ctrls_1_down_Decode_LEGAL_0_7 == _zz_decode_ctrls_1_down_Decode_LEGAL_0_8),{_zz_decode_ctrls_1_down_Decode_LEGAL_0_9,{_zz_decode_ctrls_1_down_Decode_LEGAL_0_10,_zz_decode_ctrls_1_down_Decode_LEGAL_0_11}}}}}};
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_6 = 32'h0000207f;
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_7 = (decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0000505f);
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_8 = 32'h00000003;
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_9 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0000707b) == 32'h00000063);
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_10 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0000607f) == 32'h0000000f);
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_11 = {((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'hfe00007f) == 32'h00000033),{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'hbc00707f) == 32'h00005013),{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & _zz_decode_ctrls_1_down_Decode_LEGAL_0_12) == 32'h00001013),{(_zz_decode_ctrls_1_down_Decode_LEGAL_0_13 == _zz_decode_ctrls_1_down_Decode_LEGAL_0_14),{_zz_decode_ctrls_1_down_Decode_LEGAL_0_15,{_zz_decode_ctrls_1_down_Decode_LEGAL_0_16,_zz_decode_ctrls_1_down_Decode_LEGAL_0_17}}}}}};
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_12 = 32'hfc00307f;
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_13 = (decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'hbe00707f);
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_14 = 32'h00005033;
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_15 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'hbe00707f) == 32'h00000033);
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_16 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'hffefffff) == 32'h00000073);
  assign _zz_decode_ctrls_1_down_Decode_LEGAL_0_17 = {((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'hffffffff) == 32'h10500073),((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'hffffffff) == 32'h30200073)};
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard = (DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0 && execute_ctrl3_up_RD_ENABLE_lane0);
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_1 = (execute_ctrl3_up_RD_PHYS_lane0 == DispatchPlugin_logic_candidates_0_ctx_hm_RS1_PHYS);
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_2 = ((DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0 && execute_ctrl2_up_RD_ENABLE_lane0) && (execute_ctrl2_up_RD_PHYS_lane0 == DispatchPlugin_logic_candidates_0_ctx_hm_RS1_PHYS));
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_3 = 1'b1;
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_4 = ((DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0 && execute_ctrl1_up_RD_ENABLE_lane0) && (execute_ctrl1_up_RD_PHYS_lane0 == DispatchPlugin_logic_candidates_0_ctx_hm_RS1_PHYS));
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_5 = 1'b1;
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard = (DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0 && execute_ctrl3_up_RD_ENABLE_lane0);
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_1 = (execute_ctrl3_up_RD_PHYS_lane0 == DispatchPlugin_logic_candidates_0_ctx_hm_RS2_PHYS);
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_2 = ((DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0 && execute_ctrl2_up_RD_ENABLE_lane0) && (execute_ctrl2_up_RD_PHYS_lane0 == DispatchPlugin_logic_candidates_0_ctx_hm_RS2_PHYS));
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_3 = 1'b1;
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_4 = ((DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0 && execute_ctrl1_up_RD_ENABLE_lane0) && (execute_ctrl1_up_RD_PHYS_lane0 == DispatchPlugin_logic_candidates_0_ctx_hm_RS2_PHYS));
  assign _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_5 = 1'b1;
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception = (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_2 && 1'b0);
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1 = (! (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_1 && 1'b0));
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_2 = (! (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid && 1'b0));
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_3 = (! (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_3 && 1'b0));
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_4 = (! (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_1 && _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_5));
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_6 = (! (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid && _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_7));
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_8 = (! (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_3 && _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_9));
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_10 = {(! _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_11),(! _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_12)};
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_13 = (! (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_3 && _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_14));
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_15 = {(! _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_16),(! _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_17)};
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_5 = 1'b0;
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_7 = 1'b0;
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_9 = 1'b0;
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_11 = (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_2 && 1'b0);
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_12 = (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid && 1'b0);
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_14 = 1'b0;
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_16 = (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_2 && 1'b0);
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_17 = (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_1 && 1'b0);
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_1 = {early0_EnvPlugin_logic_trapPort_payload_tval,early0_EnvPlugin_logic_trapPort_payload_exception};
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_2 = {LsuCachelessPlugin_logic_trapPort_payload_tval,LsuCachelessPlugin_logic_trapPort_payload_exception};
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_3 = {early0_BranchPlugin_logic_trapPort_payload_tval,early0_BranchPlugin_logic_trapPort_payload_exception};
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_4 = {CsrAccessPlugin_logic_trapPort_payload_tval,CsrAccessPlugin_logic_trapPort_payload_exception};
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception = TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception;
  assign _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception_1 = TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_exception;
  assign _zz_CsrAccessPlugin_logic_fsm_inject_implemented = COMB_CSR_3860;
  assign _zz_CsrAccessPlugin_logic_fsm_inject_implemented_1 = {COMB_CSR_3859,{COMB_CSR_3858,{COMB_CSR_3857,{COMB_CSR_1954,{COMB_CSR_1953,COMB_CSR_1952}}}}};
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_8 = 32'h40000100;
  assign _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_3 = (execute_lane0_logic_decoding_decodingBits & 32'h00000028);
  assign _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_4 = 32'h0;
  assign _zz__zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2 = 32'h20000000;
  assign _zz__zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2_1 = 32'h00100000;
  assign _zz_when_ExecuteLanePlugin_l306_2 = 1'b1;
  assign _zz_when_ExecuteLanePlugin_l306_2_1 = 1'b1;
  assign _zz_when_ExecuteLanePlugin_l306_2_2 = 1'b0;
  assign _zz_when_ExecuteLanePlugin_l306_2_3 = (1'b1 && early0_BranchPlugin_logic_flushPort_payload_self);
  assign _zz_when_ExecuteLanePlugin_l306_2_4 = 1'b1;
  assign _zz_when_ExecuteLanePlugin_l306_2_5 = 1'b0;
  assign _zz_when_ExecuteLanePlugin_l306_2_6 = (1'b1 && LsuCachelessPlugin_logic_flushPort_payload_self);
  always @(posedge clk) begin
    if(_zz_2) begin
      FetchCachelessPlugin_logic_buffer_words[FetchCachelessPlugin_logic_buffer_write_payload_address] <= _zz_FetchCachelessPlugin_logic_buffer_words_port;
    end
  end

  assign FetchCachelessPlugin_logic_buffer_words_spinal_port1 = FetchCachelessPlugin_logic_buffer_words[fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_BUFFER_ID];
  always @(posedge clk) begin
    if(_zz_1) begin
      CsrRamPlugin_logic_mem[CsrRamPlugin_logic_writeLogic_port_payload_address] <= CsrRamPlugin_logic_writeLogic_port_payload_data;
    end
  end

  always @(posedge clk) begin
    if(CsrRamPlugin_logic_readLogic_port_cmd_valid) begin
      CsrRamPlugin_logic_mem_spinal_port1 <= CsrRamPlugin_logic_mem[CsrRamPlugin_logic_readLogic_port_cmd_payload];
    end
  end

  AxiLite4Clint ClintPlicPlugin_logic_clintCtrl (
    .io_bus_aw_valid        (clint_awvalid                                              ), //i
    .io_bus_aw_ready        (ClintPlicPlugin_logic_clintCtrl_io_bus_aw_ready            ), //o
    .io_bus_aw_payload_addr (clint_awaddr[15:0]                                         ), //i
    .io_bus_aw_payload_prot (clint_awprot[2:0]                                          ), //i
    .io_bus_w_valid         (clint_wvalid                                               ), //i
    .io_bus_w_ready         (ClintPlicPlugin_logic_clintCtrl_io_bus_w_ready             ), //o
    .io_bus_w_payload_data  (clint_wdata[31:0]                                          ), //i
    .io_bus_w_payload_strb  (clint_wstrb[3:0]                                           ), //i
    .io_bus_b_valid         (ClintPlicPlugin_logic_clintCtrl_io_bus_b_valid             ), //o
    .io_bus_b_ready         (clint_bready                                               ), //i
    .io_bus_b_payload_resp  (ClintPlicPlugin_logic_clintCtrl_io_bus_b_payload_resp[1:0] ), //o
    .io_bus_ar_valid        (clint_arvalid                                              ), //i
    .io_bus_ar_ready        (ClintPlicPlugin_logic_clintCtrl_io_bus_ar_ready            ), //o
    .io_bus_ar_payload_addr (clint_araddr[15:0]                                         ), //i
    .io_bus_ar_payload_prot (clint_arprot[2:0]                                          ), //i
    .io_bus_r_valid         (ClintPlicPlugin_logic_clintCtrl_io_bus_r_valid             ), //o
    .io_bus_r_ready         (clint_rready                                               ), //i
    .io_bus_r_payload_data  (ClintPlicPlugin_logic_clintCtrl_io_bus_r_payload_data[31:0]), //o
    .io_bus_r_payload_resp  (ClintPlicPlugin_logic_clintCtrl_io_bus_r_payload_resp[1:0] ), //o
    .io_timerInterrupt      (ClintPlicPlugin_logic_clintCtrl_io_timerInterrupt          ), //o
    .io_softwareInterrupt   (ClintPlicPlugin_logic_clintCtrl_io_softwareInterrupt       ), //o
    .io_time                (ClintPlicPlugin_logic_clintCtrl_io_time[63:0]              ), //o
    .clk                    (clk                                                        ), //i
    .reset                  (reset                                                      )  //i
  );
  AxiLite4Plic ClintPlicPlugin_logic_plicCtrl (
    .io_bus_aw_valid        (plic_awvalid                                              ), //i
    .io_bus_aw_ready        (ClintPlicPlugin_logic_plicCtrl_io_bus_aw_ready            ), //o
    .io_bus_aw_payload_addr (plic_awaddr[21:0]                                         ), //i
    .io_bus_aw_payload_prot (plic_awprot[2:0]                                          ), //i
    .io_bus_w_valid         (plic_wvalid                                               ), //i
    .io_bus_w_ready         (ClintPlicPlugin_logic_plicCtrl_io_bus_w_ready             ), //o
    .io_bus_w_payload_data  (plic_wdata[31:0]                                          ), //i
    .io_bus_w_payload_strb  (plic_wstrb[3:0]                                           ), //i
    .io_bus_b_valid         (ClintPlicPlugin_logic_plicCtrl_io_bus_b_valid             ), //o
    .io_bus_b_ready         (plic_bready                                               ), //i
    .io_bus_b_payload_resp  (ClintPlicPlugin_logic_plicCtrl_io_bus_b_payload_resp[1:0] ), //o
    .io_bus_ar_valid        (plic_arvalid                                              ), //i
    .io_bus_ar_ready        (ClintPlicPlugin_logic_plicCtrl_io_bus_ar_ready            ), //o
    .io_bus_ar_payload_addr (plic_araddr[21:0]                                         ), //i
    .io_bus_ar_payload_prot (plic_arprot[2:0]                                          ), //i
    .io_bus_r_valid         (ClintPlicPlugin_logic_plicCtrl_io_bus_r_valid             ), //o
    .io_bus_r_ready         (plic_rready                                               ), //i
    .io_bus_r_payload_data  (ClintPlicPlugin_logic_plicCtrl_io_bus_r_payload_data[31:0]), //o
    .io_bus_r_payload_resp  (ClintPlicPlugin_logic_plicCtrl_io_bus_r_payload_resp[1:0] ), //o
    .io_sources             (ClintPlicPlugin_logic_plicCtrl_io_sources[30:0]           ), //i
    .io_targets             (ClintPlicPlugin_logic_plicCtrl_io_targets[1:0]            ), //o
    .clk                    (clk                                                       ), //i
    .reset                  (reset                                                     )  //i
  );
  StreamArbiter streamArbiter_1 (
    .io_inputs_0_valid                      (LearnPlugin_logic_buffered_0_valid                      ), //i
    .io_inputs_0_ready                      (streamArbiter_1_io_inputs_0_ready                       ), //o
    .io_inputs_0_payload_pcOnLastSlice      (LearnPlugin_logic_buffered_0_payload_pcOnLastSlice[31:0]), //i
    .io_inputs_0_payload_pcTarget           (LearnPlugin_logic_buffered_0_payload_pcTarget[31:0]     ), //i
    .io_inputs_0_payload_taken              (LearnPlugin_logic_buffered_0_payload_taken              ), //i
    .io_inputs_0_payload_isBranch           (LearnPlugin_logic_buffered_0_payload_isBranch           ), //i
    .io_inputs_0_payload_isPush             (LearnPlugin_logic_buffered_0_payload_isPush             ), //i
    .io_inputs_0_payload_isPop              (LearnPlugin_logic_buffered_0_payload_isPop              ), //i
    .io_inputs_0_payload_wasWrong           (LearnPlugin_logic_buffered_0_payload_wasWrong           ), //i
    .io_inputs_0_payload_badPredictedTarget (LearnPlugin_logic_buffered_0_payload_badPredictedTarget ), //i
    .io_inputs_0_payload_uopId              (LearnPlugin_logic_buffered_0_payload_uopId[15:0]        ), //i
    .io_output_valid                        (streamArbiter_1_io_output_valid                         ), //o
    .io_output_ready                        (LearnPlugin_logic_arbitrated_ready                      ), //i
    .io_output_payload_pcOnLastSlice        (streamArbiter_1_io_output_payload_pcOnLastSlice[31:0]   ), //o
    .io_output_payload_pcTarget             (streamArbiter_1_io_output_payload_pcTarget[31:0]        ), //o
    .io_output_payload_taken                (streamArbiter_1_io_output_payload_taken                 ), //o
    .io_output_payload_isBranch             (streamArbiter_1_io_output_payload_isBranch              ), //o
    .io_output_payload_isPush               (streamArbiter_1_io_output_payload_isPush                ), //o
    .io_output_payload_isPop                (streamArbiter_1_io_output_payload_isPop                 ), //o
    .io_output_payload_wasWrong             (streamArbiter_1_io_output_payload_wasWrong              ), //o
    .io_output_payload_badPredictedTarget   (streamArbiter_1_io_output_payload_badPredictedTarget    ), //o
    .io_output_payload_uopId                (streamArbiter_1_io_output_payload_uopId[15:0]           ), //o
    .io_chosenOH                            (streamArbiter_1_io_chosenOH                             ), //o
    .clk                                    (clk                                                     ), //i
    .reset                                  (reset                                                   )  //i
  );
  RegFileMem integer_RegFilePlugin_logic_regfile_fpga (
    .io_writes_0_valid   (integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_valid       ), //i
    .io_writes_0_address (integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_address[4:0]), //i
    .io_writes_0_data    (integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_data[31:0]  ), //i
    .io_writes_0_uopId   (integer_RegFilePlugin_logic_writeMerges_0_bus_uopId[15:0]        ), //i
    .io_reads_0_valid    (execute_lane0_bypasser_integer_RS2_port_valid                    ), //i
    .io_reads_0_address  (execute_lane0_bypasser_integer_RS2_port_address[4:0]             ), //i
    .io_reads_0_data     (integer_RegFilePlugin_logic_regfile_fpga_io_reads_0_data[31:0]   ), //o
    .io_reads_1_valid    (execute_lane0_bypasser_integer_RS1_port_valid                    ), //i
    .io_reads_1_address  (execute_lane0_bypasser_integer_RS1_port_address[4:0]             ), //i
    .io_reads_1_data     (integer_RegFilePlugin_logic_regfile_fpga_io_reads_1_data[31:0]   ), //o
    .clk                 (clk                                                              ), //i
    .reset               (reset                                                            )  //i
  );
  always @(*) begin
    case(FetchCachelessPlugin_logic_buffer_reserveId_value)
      1'b0 : _zz_FetchCachelessPlugin_logic_buffer_full = FetchCachelessPlugin_logic_buffer_inflight_0;
      default : _zz_FetchCachelessPlugin_logic_buffer_full = FetchCachelessPlugin_logic_buffer_inflight_1;
    endcase
  end

  always @(*) begin
    case(LsuCachelessPlugin_logic_onJoin_rspCounter_value)
      1'b0 : begin
        _zz_LsuCachelessPlugin_logic_onJoin_readerValid = LsuCachelessPlugin_logic_onJoin_buffers_0_valid;
        _zz_LsuCachelessPlugin_logic_onJoin_rspPayload_error = LsuCachelessPlugin_logic_onJoin_buffers_0_payload_error;
        _zz_LsuCachelessPlugin_logic_onJoin_rspPayload_data = LsuCachelessPlugin_logic_onJoin_buffers_0_payload_data;
      end
      default : begin
        _zz_LsuCachelessPlugin_logic_onJoin_readerValid = LsuCachelessPlugin_logic_onJoin_buffers_1_valid;
        _zz_LsuCachelessPlugin_logic_onJoin_rspPayload_error = LsuCachelessPlugin_logic_onJoin_buffers_1_payload_error;
        _zz_LsuCachelessPlugin_logic_onJoin_rspPayload_data = LsuCachelessPlugin_logic_onJoin_buffers_1_payload_data;
      end
    endcase
  end

  always @(*) begin
    case(_zz_LsuCachelessPlugin_logic_onWb_rspShifted_1)
      2'b00 : _zz_LsuCachelessPlugin_logic_onWb_rspShifted = LsuCachelessPlugin_logic_onWb_rspSplits_0;
      2'b01 : _zz_LsuCachelessPlugin_logic_onWb_rspShifted = LsuCachelessPlugin_logic_onWb_rspSplits_1;
      2'b10 : _zz_LsuCachelessPlugin_logic_onWb_rspShifted = LsuCachelessPlugin_logic_onWb_rspSplits_2;
      default : _zz_LsuCachelessPlugin_logic_onWb_rspShifted = LsuCachelessPlugin_logic_onWb_rspSplits_3;
    endcase
  end

  always @(*) begin
    case(_zz_LsuCachelessPlugin_logic_onWb_rspShifted_4)
      1'b0 : _zz_LsuCachelessPlugin_logic_onWb_rspShifted_3 = LsuCachelessPlugin_logic_onWb_rspSplits_1;
      default : _zz_LsuCachelessPlugin_logic_onWb_rspShifted_3 = LsuCachelessPlugin_logic_onWb_rspSplits_3;
    endcase
  end

  always @(*) begin
    case(fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_BUFFER_ID)
      1'b0 : _zz_FetchCachelessPlugin_logic_join_haltIt = FetchCachelessPlugin_logic_buffer_inflight_0;
      default : _zz_FetchCachelessPlugin_logic_join_haltIt = FetchCachelessPlugin_logic_buffer_inflight_1;
    endcase
  end

  always @(*) begin
    case(CsrRamPlugin_logic_readLogic_sel)
      1'b0 : _zz_CsrRamPlugin_logic_readLogic_port_cmd_payload = TrapPlugin_logic_harts_0_crsPorts_read_address;
      default : _zz_CsrRamPlugin_logic_readLogic_port_cmd_payload = CsrRamPlugin_csrMapper_read_address;
    endcase
  end

  always @(*) begin
    case(_zz_WhiteboxerPlugin_logic_perf_candidatesCount_1)
      1'b0 : _zz_WhiteboxerPlugin_logic_perf_candidatesCount = 1'b0;
      default : _zz_WhiteboxerPlugin_logic_perf_candidatesCount = 1'b1;
    endcase
  end

  always @(*) begin
    case(_zz_WhiteboxerPlugin_logic_perf_dispatchFeedCount_1)
      1'b0 : _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCount = 1'b0;
      default : _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCount = 1'b1;
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(execute_ctrl2_up_early0_EnvPlugin_OP_lane0)
      EnvPluginOp_ECALL : execute_ctrl2_up_early0_EnvPlugin_OP_lane0_string = "ECALL     ";
      EnvPluginOp_EBREAK : execute_ctrl2_up_early0_EnvPlugin_OP_lane0_string = "EBREAK    ";
      EnvPluginOp_PRIV_RET : execute_ctrl2_up_early0_EnvPlugin_OP_lane0_string = "PRIV_RET  ";
      EnvPluginOp_FENCE_I : execute_ctrl2_up_early0_EnvPlugin_OP_lane0_string = "FENCE_I   ";
      EnvPluginOp_SFENCE_VMA : execute_ctrl2_up_early0_EnvPlugin_OP_lane0_string = "SFENCE_VMA";
      EnvPluginOp_WFI : execute_ctrl2_up_early0_EnvPlugin_OP_lane0_string = "WFI       ";
      default : execute_ctrl2_up_early0_EnvPlugin_OP_lane0_string = "??????????";
    endcase
  end
  always @(*) begin
    case(execute_ctrl2_up_BranchPlugin_BRANCH_CTRL_lane0)
      BranchPlugin_BranchCtrlEnum_B : execute_ctrl2_up_BranchPlugin_BRANCH_CTRL_lane0_string = "B   ";
      BranchPlugin_BranchCtrlEnum_JAL : execute_ctrl2_up_BranchPlugin_BRANCH_CTRL_lane0_string = "JAL ";
      BranchPlugin_BranchCtrlEnum_JALR : execute_ctrl2_up_BranchPlugin_BRANCH_CTRL_lane0_string = "JALR";
      default : execute_ctrl2_up_BranchPlugin_BRANCH_CTRL_lane0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute_ctrl2_up_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0)
      IntAluPlugin_AluBitwiseCtrlEnum_XOR_1 : execute_ctrl2_up_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "XOR_1";
      IntAluPlugin_AluBitwiseCtrlEnum_OR_1 : execute_ctrl2_up_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "OR_1 ";
      IntAluPlugin_AluBitwiseCtrlEnum_AND_1 : execute_ctrl2_up_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "AND_1";
      IntAluPlugin_AluBitwiseCtrlEnum_ZERO : execute_ctrl2_up_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "ZERO ";
      default : execute_ctrl2_up_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_ctrl1_down_early0_EnvPlugin_OP_lane0)
      EnvPluginOp_ECALL : execute_ctrl1_down_early0_EnvPlugin_OP_lane0_string = "ECALL     ";
      EnvPluginOp_EBREAK : execute_ctrl1_down_early0_EnvPlugin_OP_lane0_string = "EBREAK    ";
      EnvPluginOp_PRIV_RET : execute_ctrl1_down_early0_EnvPlugin_OP_lane0_string = "PRIV_RET  ";
      EnvPluginOp_FENCE_I : execute_ctrl1_down_early0_EnvPlugin_OP_lane0_string = "FENCE_I   ";
      EnvPluginOp_SFENCE_VMA : execute_ctrl1_down_early0_EnvPlugin_OP_lane0_string = "SFENCE_VMA";
      EnvPluginOp_WFI : execute_ctrl1_down_early0_EnvPlugin_OP_lane0_string = "WFI       ";
      default : execute_ctrl1_down_early0_EnvPlugin_OP_lane0_string = "??????????";
    endcase
  end
  always @(*) begin
    case(execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0)
      BranchPlugin_BranchCtrlEnum_B : execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_string = "B   ";
      BranchPlugin_BranchCtrlEnum_JAL : execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_string = "JAL ";
      BranchPlugin_BranchCtrlEnum_JALR : execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_string = "JALR";
      default : execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0)
      IntAluPlugin_AluBitwiseCtrlEnum_XOR_1 : execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "XOR_1";
      IntAluPlugin_AluBitwiseCtrlEnum_OR_1 : execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "OR_1 ";
      IntAluPlugin_AluBitwiseCtrlEnum_AND_1 : execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "AND_1";
      IntAluPlugin_AluBitwiseCtrlEnum_ZERO : execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "ZERO ";
      default : execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_ctrl2_down_early0_EnvPlugin_OP_lane0)
      EnvPluginOp_ECALL : execute_ctrl2_down_early0_EnvPlugin_OP_lane0_string = "ECALL     ";
      EnvPluginOp_EBREAK : execute_ctrl2_down_early0_EnvPlugin_OP_lane0_string = "EBREAK    ";
      EnvPluginOp_PRIV_RET : execute_ctrl2_down_early0_EnvPlugin_OP_lane0_string = "PRIV_RET  ";
      EnvPluginOp_FENCE_I : execute_ctrl2_down_early0_EnvPlugin_OP_lane0_string = "FENCE_I   ";
      EnvPluginOp_SFENCE_VMA : execute_ctrl2_down_early0_EnvPlugin_OP_lane0_string = "SFENCE_VMA";
      EnvPluginOp_WFI : execute_ctrl2_down_early0_EnvPlugin_OP_lane0_string = "WFI       ";
      default : execute_ctrl2_down_early0_EnvPlugin_OP_lane0_string = "??????????";
    endcase
  end
  always @(*) begin
    case(execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0)
      BranchPlugin_BranchCtrlEnum_B : execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0_string = "B   ";
      BranchPlugin_BranchCtrlEnum_JAL : execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0_string = "JAL ";
      BranchPlugin_BranchCtrlEnum_JALR : execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0_string = "JALR";
      default : execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute_ctrl2_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0)
      IntAluPlugin_AluBitwiseCtrlEnum_XOR_1 : execute_ctrl2_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "XOR_1";
      IntAluPlugin_AluBitwiseCtrlEnum_OR_1 : execute_ctrl2_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "OR_1 ";
      IntAluPlugin_AluBitwiseCtrlEnum_AND_1 : execute_ctrl2_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "AND_1";
      IntAluPlugin_AluBitwiseCtrlEnum_ZERO : execute_ctrl2_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "ZERO ";
      default : execute_ctrl2_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0)
      IntAluPlugin_AluBitwiseCtrlEnum_XOR_1 : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "XOR_1";
      IntAluPlugin_AluBitwiseCtrlEnum_OR_1 : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "OR_1 ";
      IntAluPlugin_AluBitwiseCtrlEnum_AND_1 : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "AND_1";
      IntAluPlugin_AluBitwiseCtrlEnum_ZERO : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "ZERO ";
      default : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_1)
      IntAluPlugin_AluBitwiseCtrlEnum_XOR_1 : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_1_string = "XOR_1";
      IntAluPlugin_AluBitwiseCtrlEnum_OR_1 : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_1_string = "OR_1 ";
      IntAluPlugin_AluBitwiseCtrlEnum_AND_1 : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_1_string = "AND_1";
      IntAluPlugin_AluBitwiseCtrlEnum_ZERO : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_1_string = "ZERO ";
      default : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_2)
      IntAluPlugin_AluBitwiseCtrlEnum_XOR_1 : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_2_string = "XOR_1";
      IntAluPlugin_AluBitwiseCtrlEnum_OR_1 : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_2_string = "OR_1 ";
      IntAluPlugin_AluBitwiseCtrlEnum_AND_1 : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_2_string = "AND_1";
      IntAluPlugin_AluBitwiseCtrlEnum_ZERO : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_2_string = "ZERO ";
      default : _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_2_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0)
      BranchPlugin_BranchCtrlEnum_B : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_string = "B   ";
      BranchPlugin_BranchCtrlEnum_JAL : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_string = "JAL ";
      BranchPlugin_BranchCtrlEnum_JALR : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_string = "JALR";
      default : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_1)
      BranchPlugin_BranchCtrlEnum_B : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_1_string = "B   ";
      BranchPlugin_BranchCtrlEnum_JAL : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_1_string = "JAL ";
      BranchPlugin_BranchCtrlEnum_JALR : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_1_string = "JALR";
      default : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_2)
      BranchPlugin_BranchCtrlEnum_B : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_2_string = "B   ";
      BranchPlugin_BranchCtrlEnum_JAL : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_2_string = "JAL ";
      BranchPlugin_BranchCtrlEnum_JALR : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_2_string = "JALR";
      default : _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_2_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1)
      EnvPluginOp_ECALL : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1_string = "ECALL     ";
      EnvPluginOp_EBREAK : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1_string = "EBREAK    ";
      EnvPluginOp_PRIV_RET : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1_string = "PRIV_RET  ";
      EnvPluginOp_FENCE_I : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1_string = "FENCE_I   ";
      EnvPluginOp_SFENCE_VMA : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1_string = "SFENCE_VMA";
      EnvPluginOp_WFI : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1_string = "WFI       ";
      default : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2)
      EnvPluginOp_ECALL : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2_string = "ECALL     ";
      EnvPluginOp_EBREAK : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2_string = "EBREAK    ";
      EnvPluginOp_PRIV_RET : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2_string = "PRIV_RET  ";
      EnvPluginOp_FENCE_I : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2_string = "FENCE_I   ";
      EnvPluginOp_SFENCE_VMA : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2_string = "SFENCE_VMA";
      EnvPluginOp_WFI : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2_string = "WFI       ";
      default : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3)
      EnvPluginOp_ECALL : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3_string = "ECALL     ";
      EnvPluginOp_EBREAK : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3_string = "EBREAK    ";
      EnvPluginOp_PRIV_RET : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3_string = "PRIV_RET  ";
      EnvPluginOp_FENCE_I : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3_string = "FENCE_I   ";
      EnvPluginOp_SFENCE_VMA : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3_string = "SFENCE_VMA";
      EnvPluginOp_WFI : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3_string = "WFI       ";
      default : _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3_string = "??????????";
    endcase
  end
  always @(*) begin
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RESET : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "RESET     ";
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "RUNNING   ";
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "COMPUTE   ";
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "TRAP_EPC  ";
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "TRAP_TVAL ";
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "TRAP_TVEC ";
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "TRAP_WAIT ";
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "TRAP_APPLY";
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "XRET_EPC  ";
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "XRET_APPLY";
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "JUMP      ";
      default : TrapPlugin_logic_harts_0_trap_fsm_stateReg_string = "??????????";
    endcase
  end
  always @(*) begin
    case(TrapPlugin_logic_harts_0_trap_fsm_stateNext)
      TrapPlugin_logic_harts_0_trap_fsm_RESET : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "RESET     ";
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "RUNNING   ";
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "COMPUTE   ";
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "TRAP_EPC  ";
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "TRAP_TVAL ";
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "TRAP_TVEC ";
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "TRAP_WAIT ";
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "TRAP_APPLY";
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "XRET_EPC  ";
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "XRET_APPLY";
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "JUMP      ";
      default : TrapPlugin_logic_harts_0_trap_fsm_stateNext_string = "??????????";
    endcase
  end
  always @(*) begin
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_IDLE : CsrAccessPlugin_logic_fsm_stateReg_string = "IDLE      ";
      CsrAccessPlugin_logic_fsm_READ : CsrAccessPlugin_logic_fsm_stateReg_string = "READ      ";
      CsrAccessPlugin_logic_fsm_WRITE : CsrAccessPlugin_logic_fsm_stateReg_string = "WRITE     ";
      CsrAccessPlugin_logic_fsm_COMPLETION : CsrAccessPlugin_logic_fsm_stateReg_string = "COMPLETION";
      default : CsrAccessPlugin_logic_fsm_stateReg_string = "??????????";
    endcase
  end
  always @(*) begin
    case(CsrAccessPlugin_logic_fsm_stateNext)
      CsrAccessPlugin_logic_fsm_IDLE : CsrAccessPlugin_logic_fsm_stateNext_string = "IDLE      ";
      CsrAccessPlugin_logic_fsm_READ : CsrAccessPlugin_logic_fsm_stateNext_string = "READ      ";
      CsrAccessPlugin_logic_fsm_WRITE : CsrAccessPlugin_logic_fsm_stateNext_string = "WRITE     ";
      CsrAccessPlugin_logic_fsm_COMPLETION : CsrAccessPlugin_logic_fsm_stateNext_string = "COMPLETION";
      default : CsrAccessPlugin_logic_fsm_stateNext_string = "??????????";
    endcase
  end
  `endif

  assign execute_ctrl2_down_RD_ENABLE_lane0 = execute_ctrl2_RD_ENABLE_lane0_bypass;
  always @(*) begin
    execute_ctrl2_RD_ENABLE_lane0_bypass = execute_ctrl2_up_RD_ENABLE_lane0;
    if(when_ExecuteLanePlugin_l306_2) begin
      execute_ctrl2_RD_ENABLE_lane0_bypass = 1'b0;
    end
  end

  assign execute_ctrl2_down_LANE_SEL_lane0 = execute_ctrl2_LANE_SEL_lane0_bypass;
  always @(*) begin
    execute_ctrl2_LANE_SEL_lane0_bypass = execute_ctrl2_up_LANE_SEL_lane0;
    if(when_ExecuteLanePlugin_l306_2) begin
      execute_ctrl2_LANE_SEL_lane0_bypass = 1'b0;
    end
  end

  assign execute_ctrl1_down_RD_ENABLE_lane0 = execute_ctrl1_RD_ENABLE_lane0_bypass;
  always @(*) begin
    execute_ctrl1_RD_ENABLE_lane0_bypass = execute_ctrl1_up_RD_ENABLE_lane0;
    if(when_ExecuteLanePlugin_l306_1) begin
      execute_ctrl1_RD_ENABLE_lane0_bypass = 1'b0;
    end
  end

  assign execute_ctrl1_down_LANE_SEL_lane0 = execute_ctrl1_LANE_SEL_lane0_bypass;
  always @(*) begin
    execute_ctrl1_LANE_SEL_lane0_bypass = execute_ctrl1_up_LANE_SEL_lane0;
    if(when_ExecuteLanePlugin_l306_1) begin
      execute_ctrl1_LANE_SEL_lane0_bypass = 1'b0;
    end
  end

  assign execute_ctrl0_down_RD_ENABLE_lane0 = execute_ctrl0_RD_ENABLE_lane0_bypass;
  always @(*) begin
    execute_ctrl0_RD_ENABLE_lane0_bypass = execute_ctrl0_up_RD_ENABLE_lane0;
    if(when_ExecuteLanePlugin_l306) begin
      execute_ctrl0_RD_ENABLE_lane0_bypass = 1'b0;
    end
  end

  assign execute_ctrl0_down_LANE_SEL_lane0 = execute_ctrl0_LANE_SEL_lane0_bypass;
  always @(*) begin
    execute_ctrl0_LANE_SEL_lane0_bypass = execute_ctrl0_up_LANE_SEL_lane0;
    if(when_ExecuteLanePlugin_l306) begin
      execute_ctrl0_LANE_SEL_lane0_bypass = 1'b0;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(CsrRamPlugin_logic_writeLogic_port_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign decode_ctrls_1_down_LANE_SEL_0 = decode_ctrls_1_LANE_SEL_0_bypass;
  always @(*) begin
    decode_ctrls_1_LANE_SEL_0_bypass = decode_ctrls_1_up_LANE_SEL_0;
    if(decode_logic_flushes_1_onLanes_0_doIt) begin
      decode_ctrls_1_LANE_SEL_0_bypass = 1'b0;
    end
  end

  assign decode_ctrls_0_down_LANE_SEL_0 = decode_ctrls_0_LANE_SEL_0_bypass;
  always @(*) begin
    decode_ctrls_0_LANE_SEL_0_bypass = decode_ctrls_0_up_LANE_SEL_0;
    if(decode_logic_flushes_0_onLanes_0_doIt) begin
      decode_ctrls_0_LANE_SEL_0_bypass = 1'b0;
    end
  end

  assign execute_ctrl4_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0 = execute_ctrl4_lane0_integer_WriteBackPlugin_logic_DATA_lane0_bypass;
  assign execute_ctrl3_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0 = execute_ctrl3_lane0_integer_WriteBackPlugin_logic_DATA_lane0_bypass;
  assign execute_ctrl2_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0 = execute_ctrl2_lane0_integer_WriteBackPlugin_logic_DATA_lane0_bypass;
  assign execute_ctrl4_down_COMPLETED_lane0 = execute_ctrl4_COMPLETED_lane0_bypass;
  assign execute_ctrl3_down_COMPLETED_lane0 = execute_ctrl3_COMPLETED_lane0_bypass;
  assign execute_ctrl2_down_COMPLETED_lane0 = execute_ctrl2_COMPLETED_lane0_bypass;
  assign decode_ctrls_1_down_TRAP_0 = decode_ctrls_1_TRAP_0_bypass;
  always @(*) begin
    decode_ctrls_1_TRAP_0_bypass = decode_ctrls_1_up_TRAP_0;
    if(when_DecoderPlugin_l229) begin
      decode_ctrls_1_TRAP_0_bypass = 1'b1;
    end
  end

  assign execute_ctrl2_down_COMMIT_lane0 = execute_ctrl2_COMMIT_lane0_bypass;
  always @(*) begin
    execute_ctrl2_COMMIT_lane0_bypass = execute_ctrl2_up_COMMIT_lane0;
    if(when_BranchPlugin_l251) begin
      execute_ctrl2_COMMIT_lane0_bypass = 1'b0;
    end
    if(when_EnvPlugin_l119) begin
      if(when_EnvPlugin_l123) begin
        execute_ctrl2_COMMIT_lane0_bypass = 1'b0;
      end
    end
    if(when_LsuCachelessPlugin_l315) begin
      execute_ctrl2_COMMIT_lane0_bypass = 1'b0;
    end
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
        if(CsrAccessPlugin_logic_fsm_inject_onDecodeDo) begin
          if(CsrAccessPlugin_logic_fsm_inject_sampled) begin
            if(CsrAccessPlugin_logic_fsm_inject_trapReg) begin
              execute_ctrl2_COMMIT_lane0_bypass = 1'b0;
            end
          end
        end
      end
    endcase
  end

  assign execute_ctrl2_down_TRAP_lane0 = execute_ctrl2_TRAP_lane0_bypass;
  always @(*) begin
    execute_ctrl2_TRAP_lane0_bypass = execute_ctrl2_up_TRAP_lane0;
    if(when_BranchPlugin_l251) begin
      execute_ctrl2_TRAP_lane0_bypass = 1'b1;
    end
    if(when_EnvPlugin_l119) begin
      execute_ctrl2_TRAP_lane0_bypass = 1'b1;
    end
    if(when_LsuCachelessPlugin_l315) begin
      execute_ctrl2_TRAP_lane0_bypass = 1'b1;
    end
    if(CsrAccessPlugin_logic_fsm_inject_flushReg) begin
      execute_ctrl2_TRAP_lane0_bypass = 1'b1;
    end
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
        if(CsrAccessPlugin_logic_fsm_inject_onDecodeDo) begin
          if(CsrAccessPlugin_logic_fsm_inject_sampled) begin
            if(CsrAccessPlugin_logic_fsm_inject_trapReg) begin
              execute_ctrl2_TRAP_lane0_bypass = 1'b1;
            end else begin
              if(CsrAccessPlugin_logic_fsm_inject_busTrapReg) begin
                execute_ctrl2_TRAP_lane0_bypass = 1'b1;
              end
            end
          end
        end
      end
    endcase
  end

  always @(*) begin
    _zz_2 = 1'b0;
    if(FetchCachelessPlugin_logic_buffer_write_valid) begin
      _zz_2 = 1'b1;
    end
  end

  assign AlignerPlugin_api_singleFetch = 1'b0;
  assign AlignerPlugin_api_haltIt = 1'b0;
  assign DispatchPlugin_api_haltDispatch = 1'b0;
  assign CsrRamPlugin_api_holdRead = 1'b0;
  assign CsrRamPlugin_api_holdWrite = 1'b0;
  assign PrivilegedPlugin_api_harts_0_allowInterrupts = 1'b1;
  assign PrivilegedPlugin_api_harts_0_allowException = 1'b1;
  assign PrivilegedPlugin_api_harts_0_allowEbreakException = 1'b1;
  assign PrivilegedPlugin_api_harts_0_fpuEnable = 1'b0;
  always @(*) begin
    TrapPlugin_api_harts_0_redo = 1'b0;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
        if(!when_TrapPlugin_l453) begin
          case(TrapPlugin_logic_harts_0_trap_pending_state_code)
            4'b0000 : begin
            end
            4'b0001 : begin
            end
            4'b0010 : begin
            end
            4'b0100 : begin
              TrapPlugin_api_harts_0_redo = 1'b1;
            end
            4'b0101 : begin
            end
            4'b1000 : begin
            end
            4'b0110 : begin
            end
            default : begin
            end
          endcase
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    TrapPlugin_api_harts_0_askWake = 1'b0;
    if(when_TrapPlugin_l269) begin
      TrapPlugin_api_harts_0_askWake = 1'b1;
    end
  end

  always @(*) begin
    TrapPlugin_api_harts_0_rvTrap = 1'b0;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
        TrapPlugin_api_harts_0_rvTrap = 1'b1;
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  assign TrapPlugin_api_harts_0_holdPrivChange = 1'b0;
  assign clint_awready = ClintPlicPlugin_logic_clintCtrl_io_bus_aw_ready;
  assign clint_wready = ClintPlicPlugin_logic_clintCtrl_io_bus_w_ready;
  assign clint_bvalid = ClintPlicPlugin_logic_clintCtrl_io_bus_b_valid;
  assign clint_bresp = ClintPlicPlugin_logic_clintCtrl_io_bus_b_payload_resp;
  assign clint_arready = ClintPlicPlugin_logic_clintCtrl_io_bus_ar_ready;
  assign clint_rvalid = ClintPlicPlugin_logic_clintCtrl_io_bus_r_valid;
  assign clint_rdata = ClintPlicPlugin_logic_clintCtrl_io_bus_r_payload_data;
  assign clint_rresp = ClintPlicPlugin_logic_clintCtrl_io_bus_r_payload_resp;
  assign plic_awready = ClintPlicPlugin_logic_plicCtrl_io_bus_aw_ready;
  assign plic_wready = ClintPlicPlugin_logic_plicCtrl_io_bus_w_ready;
  assign plic_bvalid = ClintPlicPlugin_logic_plicCtrl_io_bus_b_valid;
  assign plic_bresp = ClintPlicPlugin_logic_plicCtrl_io_bus_b_payload_resp;
  assign plic_arready = ClintPlicPlugin_logic_plicCtrl_io_bus_ar_ready;
  assign plic_rvalid = ClintPlicPlugin_logic_plicCtrl_io_bus_r_valid;
  assign plic_rdata = ClintPlicPlugin_logic_plicCtrl_io_bus_r_payload_data;
  assign plic_rresp = ClintPlicPlugin_logic_plicCtrl_io_bus_r_payload_resp;
  assign ClintPlicPlugin_logic_plicCtrl_io_sources = (plicInterrupts >>> 1'd1);
  always @(*) begin
    case(execute_ctrl2_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0)
      IntAluPlugin_AluBitwiseCtrlEnum_AND_1 : begin
        early0_IntAluPlugin_logic_alu_bitwise = (execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0 & execute_ctrl2_down_early0_SrcPlugin_SRC2_lane0);
      end
      IntAluPlugin_AluBitwiseCtrlEnum_OR_1 : begin
        early0_IntAluPlugin_logic_alu_bitwise = (execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0 | execute_ctrl2_down_early0_SrcPlugin_SRC2_lane0);
      end
      IntAluPlugin_AluBitwiseCtrlEnum_XOR_1 : begin
        early0_IntAluPlugin_logic_alu_bitwise = (execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0 ^ execute_ctrl2_down_early0_SrcPlugin_SRC2_lane0);
      end
      default : begin
        early0_IntAluPlugin_logic_alu_bitwise = 32'h0;
      end
    endcase
  end

  assign early0_IntAluPlugin_logic_alu_result = (_zz_early0_IntAluPlugin_logic_alu_result | _zz_early0_IntAluPlugin_logic_alu_result_2);
  assign execute_ctrl2_down_early0_IntAluPlugin_ALU_RESULT_lane0 = early0_IntAluPlugin_logic_alu_result;
  assign early0_IntAluPlugin_logic_wb_valid = execute_ctrl2_down_early0_IntAluPlugin_SEL_lane0;
  assign early0_IntAluPlugin_logic_wb_payload = execute_ctrl2_down_early0_IntAluPlugin_ALU_RESULT_lane0;
  assign early0_BarrelShifterPlugin_logic_shift_amplitude = _zz_early0_BarrelShifterPlugin_logic_shift_amplitude;
  assign early0_BarrelShifterPlugin_logic_shift_reversed = (execute_ctrl2_down_BarrelShifterPlugin_LEFT_lane0 ? _zz_early0_BarrelShifterPlugin_logic_shift_reversed : execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0);
  assign early0_BarrelShifterPlugin_logic_shift_shifted = _zz_early0_BarrelShifterPlugin_logic_shift_shifted[31:0];
  assign early0_BarrelShifterPlugin_logic_shift_patched = (execute_ctrl2_down_BarrelShifterPlugin_LEFT_lane0 ? _zz_early0_BarrelShifterPlugin_logic_shift_patched : early0_BarrelShifterPlugin_logic_shift_shifted);
  assign execute_ctrl2_down_early0_BarrelShifterPlugin_SHIFT_RESULT_lane0 = early0_BarrelShifterPlugin_logic_shift_patched;
  assign early0_BarrelShifterPlugin_logic_wb_valid = execute_ctrl2_down_early0_BarrelShifterPlugin_SEL_lane0;
  assign early0_BarrelShifterPlugin_logic_wb_payload = execute_ctrl2_down_early0_BarrelShifterPlugin_SHIFT_RESULT_lane0;
  always @(*) begin
    PrivilegedPlugin_logic_harts_0_xretAwayFromMachine = 1'b0;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
        if(when_TrapPlugin_l712) begin
          PrivilegedPlugin_logic_harts_0_xretAwayFromMachine = 1'b1;
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    PrivilegedPlugin_logic_harts_0_int_pending = 1'b0;
    if(TrapPlugin_logic_harts_0_interrupt_pendingInterrupt) begin
      PrivilegedPlugin_logic_harts_0_int_pending = 1'b1;
    end
  end

  assign PrivilegedPlugin_logic_harts_0_withMachinePrivilege = (2'b11 <= PrivilegedPlugin_logic_harts_0_privilege);
  assign PrivilegedPlugin_logic_harts_0_withSupervisorPrivilege = (2'b01 <= PrivilegedPlugin_logic_harts_0_privilege);
  assign PrivilegedPlugin_logic_harts_0_hartRunning = 1'b1;
  assign PrivilegedPlugin_logic_harts_0_debugMode = (! PrivilegedPlugin_logic_harts_0_hartRunning);
  assign PrivilegedPlugin_logic_harts_0_m_status_mpp = 2'b11;
  assign PrivilegedPlugin_logic_harts_0_m_status_sd = 1'b0;
  assign PrivilegedPlugin_logic_harts_0_m_status_tw = 1'b0;
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_1 = (_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue && REG_CSR_768);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_2 = (_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue && REG_CSR_834);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_3 = (_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue && REG_CSR_836);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_4 = (_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue && REG_CSR_772);
  assign _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_valid = (PrivilegedPlugin_logic_harts_0_m_ip_mtip && PrivilegedPlugin_logic_harts_0_m_ie_mtie);
  assign _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_valid = (PrivilegedPlugin_logic_harts_0_m_ip_msip && PrivilegedPlugin_logic_harts_0_m_ie_msie);
  assign _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_valid = (PrivilegedPlugin_logic_harts_0_m_ip_meip && PrivilegedPlugin_logic_harts_0_m_ie_meie);
  always @(*) begin
    PrivilegedPlugin_logic_harts_0_m_topi_interrupt = 4'bxxxx;
    PrivilegedPlugin_logic_harts_0_m_topi_interrupt = TrapPlugin_logic_harts_0_interrupt_xtopi_0_int;
  end

  assign PrivilegedPlugin_logic_harts_0_m_topi_priority = ((PrivilegedPlugin_logic_harts_0_m_topi_interrupt == 4'b0000) ? 1'b0 : 1'b1);
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_5 = (_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue && REG_CSR_4016);
  assign WhiteboxerPlugin_logic_fetch_fire = fetch_logic_ctrls_0_down_isFiring;
  always @(*) begin
    case(execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0)
      BranchPlugin_BranchCtrlEnum_JALR : begin
        early0_BranchPlugin_pcCalc_target_a = execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0;
      end
      default : begin
        early0_BranchPlugin_pcCalc_target_a = execute_ctrl2_down_PC_lane0;
      end
    endcase
  end

  always @(*) begin
    case(execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0)
      BranchPlugin_BranchCtrlEnum_JAL : begin
        early0_BranchPlugin_pcCalc_target_b = {{11{_zz_early0_BranchPlugin_pcCalc_target_b[20]}}, _zz_early0_BranchPlugin_pcCalc_target_b};
      end
      BranchPlugin_BranchCtrlEnum_JALR : begin
        early0_BranchPlugin_pcCalc_target_b = {{20{_zz_early0_BranchPlugin_pcCalc_target_b_1[11]}}, _zz_early0_BranchPlugin_pcCalc_target_b_1};
      end
      default : begin
        early0_BranchPlugin_pcCalc_target_b = {{19{_zz_early0_BranchPlugin_pcCalc_target_b_2[12]}}, _zz_early0_BranchPlugin_pcCalc_target_b_2};
      end
    endcase
  end

  assign early0_BranchPlugin_pcCalc_slices = (_zz_early0_BranchPlugin_pcCalc_slices + {1'b0,1'b1});
  always @(*) begin
    execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_TRUE_lane0 = _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_TRUE_lane0;
    execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_TRUE_lane0[0] = 1'b0;
  end

  assign execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_FALSE_lane0 = (execute_ctrl2_down_PC_lane0 + _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_FALSE_lane0);
  assign execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_LAST_SLICE_lane0 = (execute_ctrl2_down_PC_lane0 + _zz_execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_LAST_SLICE_lane0);
  assign AlignerPlugin_logic_maskGen_frontMasks_0 = 1'b1;
  assign AlignerPlugin_logic_maskGen_backMasks_0 = 1'b1;
  assign fetch_logic_ctrls_1_down_AlignerPlugin_logic_FETCH_MASK = AlignerPlugin_logic_maskGen_frontMasks_0;
  assign fetch_logic_ctrls_1_down_AlignerPlugin_logic_FETCH_LAST = 1'b0;
  assign AlignerPlugin_logic_slicesInstructions_0 = AlignerPlugin_logic_slices_data_0;
  always @(*) begin
    AlignerPlugin_logic_scanners_0_usageMask = 1'b0;
    AlignerPlugin_logic_scanners_0_usageMask[0] = AlignerPlugin_logic_scanners_0_checker_0_required;
  end

  assign AlignerPlugin_logic_scanners_0_checker_0_required = 1'b1;
  assign AlignerPlugin_logic_scanners_0_checker_0_last = (AlignerPlugin_logic_slices_data_0[1 : 0] != 2'b11);
  assign AlignerPlugin_logic_scanners_0_checker_0_redo = 1'b0;
  assign AlignerPlugin_logic_scanners_0_checker_0_present = AlignerPlugin_logic_slices_mask[0];
  assign AlignerPlugin_logic_scanners_0_checker_0_valid = AlignerPlugin_logic_scanners_0_checker_0_present;
  assign AlignerPlugin_logic_scanners_0_redo = (|AlignerPlugin_logic_scanners_0_checker_0_redo);
  assign AlignerPlugin_logic_scanners_0_valid = (AlignerPlugin_logic_scanners_0_checker_0_valid && (1'b1 || (|AlignerPlugin_logic_scanners_0_checker_0_redo)));
  assign AlignerPlugin_logic_usedMask_0 = 1'b0;
  assign AlignerPlugin_logic_extractors_0_first = 1'b1;
  assign AlignerPlugin_logic_extractors_0_usableMask = (AlignerPlugin_logic_scanners_0_valid && (! AlignerPlugin_logic_usedMask_0[0]));
  assign AlignerPlugin_logic_extractors_0_usableMask_bools_0 = AlignerPlugin_logic_extractors_0_usableMask[0];
  assign _zz_AlignerPlugin_logic_extractors_0_slicesOh[0] = (AlignerPlugin_logic_extractors_0_usableMask_bools_0 && (! 1'b0));
  assign AlignerPlugin_logic_extractors_0_slicesOh = _zz_AlignerPlugin_logic_extractors_0_slicesOh;
  always @(*) begin
    AlignerPlugin_logic_extractors_0_redo = AlignerPlugin_logic_scanners_0_redo;
    if(when_AlignerPlugin_l160) begin
      AlignerPlugin_logic_extractors_0_redo = 1'b0;
    end
  end

  assign AlignerPlugin_logic_extractors_0_localMask = AlignerPlugin_logic_scanners_0_checker_0_required;
  always @(*) begin
    AlignerPlugin_logic_extractors_0_usageMask = AlignerPlugin_logic_scanners_0_usageMask;
    if(when_AlignerPlugin_l160) begin
      AlignerPlugin_logic_extractors_0_usageMask = 1'b0;
    end
  end

  assign AlignerPlugin_logic_usedMask_1 = (AlignerPlugin_logic_usedMask_0 | AlignerPlugin_logic_extractors_0_usageMask);
  always @(*) begin
    AlignerPlugin_logic_extractors_0_valid = (|AlignerPlugin_logic_extractors_0_slicesOh);
    if(when_AlignerPlugin_l160) begin
      AlignerPlugin_logic_extractors_0_valid = 1'b0;
    end
  end

  assign when_AlignerPlugin_l160 = (AlignerPlugin_api_haltIt || (AlignerPlugin_api_singleFetch && (! AlignerPlugin_logic_extractors_0_first)));
  assign when_AlignerPlugin_l171 = (decode_ctrls_0_up_isFiring && 1'b1);
  assign AlignerPlugin_logic_feeder_lanes_0_valid = AlignerPlugin_logic_extractors_0_valid;
  assign decode_ctrls_0_up_LANE_SEL_0 = AlignerPlugin_logic_feeder_lanes_0_valid;
  assign decode_ctrls_0_up_Decode_INSTRUCTION_0 = AlignerPlugin_logic_extractors_0_ctx_instruction;
  assign decode_ctrls_0_up_Decode_DECOMPRESSION_FAULT_0 = 1'b0;
  always @(*) begin
    decode_ctrls_0_up_Decode_INSTRUCTION_RAW_0 = AlignerPlugin_logic_extractors_0_ctx_instruction;
    if(AlignerPlugin_logic_feeder_lanes_0_isRvc) begin
      decode_ctrls_0_up_Decode_INSTRUCTION_RAW_0[31 : 16] = 16'h0;
    end
  end

  assign AlignerPlugin_logic_feeder_lanes_0_isRvc = (AlignerPlugin_logic_extractors_0_ctx_instruction[1 : 0] != 2'b11);
  assign decode_ctrls_0_up_PC_0 = AlignerPlugin_logic_extractors_0_ctx_pc;
  assign decode_ctrls_0_up_Decode_DOP_ID_0 = AlignerPlugin_logic_feeder_harts_0_dopId;
  assign decode_ctrls_0_up_Fetch_ID_0 = AlignerPlugin_logic_extractors_0_ctx_hm_Fetch_ID;
  assign decode_ctrls_0_up_TRAP_0 = AlignerPlugin_logic_extractors_0_ctx_trap;
  assign decode_ctrls_0_up_valid = (|AlignerPlugin_logic_feeder_lanes_0_valid);
  assign AlignerPlugin_logic_nobuffer_remaningMask = (AlignerPlugin_logic_nobuffer_mask & (~ AlignerPlugin_logic_usedMask_1));
  assign when_AlignerPlugin_l292 = (decode_ctrls_0_up_isValid && decode_ctrls_0_up_isReady);
  always @(*) begin
    CsrAccessPlugin_bus_decode_exception = 1'b0;
    if(when_PrivilegedPlugin_l771) begin
      CsrAccessPlugin_bus_decode_exception = 1'b1;
    end
    if(when_CsrAccessPlugin_l157) begin
      if(when_CsrService_l121) begin
        CsrAccessPlugin_bus_decode_exception = 1'b1;
      end
    end
    if(when_CsrAccessPlugin_l157_1) begin
      if(when_CsrService_l121_1) begin
        CsrAccessPlugin_bus_decode_exception = 1'b1;
      end
    end
    if(when_CsrAccessPlugin_l157_2) begin
      if(when_CsrService_l121_2) begin
        CsrAccessPlugin_bus_decode_exception = 1'b1;
      end
    end
    if(when_CsrAccessPlugin_l157_3) begin
      if(when_CsrService_l121_3) begin
        CsrAccessPlugin_bus_decode_exception = 1'b1;
      end
    end
  end

  always @(*) begin
    CsrAccessPlugin_bus_decode_trap = 1'b0;
    if(when_CsrAccessPlugin_l157_4) begin
      if(CsrAccessPlugin_bus_decode_write) begin
        CsrAccessPlugin_bus_decode_trap = 1'b1;
      end
    end
  end

  always @(*) begin
    CsrAccessPlugin_bus_decode_trapCode = 4'bxxxx;
    if(when_CsrAccessPlugin_l157_4) begin
      if(CsrAccessPlugin_bus_decode_write) begin
        CsrAccessPlugin_bus_decode_trapCode = 4'b0101;
      end
    end
  end

  assign CsrAccessPlugin_bus_decode_fence = 1'b0;
  always @(*) begin
    CsrAccessPlugin_bus_read_halt = 1'b0;
    if(when_CsrRamPlugin_l90) begin
      CsrAccessPlugin_bus_read_halt = 1'b1;
    end
  end

  always @(*) begin
    CsrAccessPlugin_bus_write_halt = 1'b0;
    if(when_CsrRamPlugin_l101) begin
      CsrAccessPlugin_bus_write_halt = 1'b1;
    end
  end

  always @(*) begin
    FetchCachelessPlugin_logic_buffer_reserveId_willIncrement = 1'b0;
    if(!when_FetchCachelessPlugin_l144) begin
      if(fetch_logic_ctrls_0_up_isMoving) begin
        FetchCachelessPlugin_logic_buffer_reserveId_willIncrement = 1'b1;
      end
    end
  end

  assign FetchCachelessPlugin_logic_buffer_reserveId_willClear = 1'b0;
  assign FetchCachelessPlugin_logic_buffer_reserveId_willOverflowIfInc = (FetchCachelessPlugin_logic_buffer_reserveId_value == 1'b1);
  assign FetchCachelessPlugin_logic_buffer_reserveId_willOverflow = (FetchCachelessPlugin_logic_buffer_reserveId_willOverflowIfInc && FetchCachelessPlugin_logic_buffer_reserveId_willIncrement);
  always @(*) begin
    FetchCachelessPlugin_logic_buffer_reserveId_valueNext = (FetchCachelessPlugin_logic_buffer_reserveId_value + FetchCachelessPlugin_logic_buffer_reserveId_willIncrement);
    if(FetchCachelessPlugin_logic_buffer_reserveId_willClear) begin
      FetchCachelessPlugin_logic_buffer_reserveId_valueNext = 1'b0;
    end
  end

  assign FetchCachelessPlugin_logic_buffer_reservedHits_0 = (fetch_logic_ctrls_1_up_isValid && (fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_BUFFER_ID == FetchCachelessPlugin_logic_buffer_reserveId_value));
  assign FetchCachelessPlugin_logic_buffer_full = ((|FetchCachelessPlugin_logic_buffer_reservedHits_0) || _zz_FetchCachelessPlugin_logic_buffer_full);
  assign _zz_4 = ({1'd0,1'b1} <<< FetchCachelessPlugin_logic_buffer_reserveId_value);
  always @(*) begin
    FetchCachelessPlugin_logic_buffer_write_valid = 1'b0;
    if(FetchCachelessPlugin_logic_bus_rsp_valid) begin
      FetchCachelessPlugin_logic_buffer_write_valid = 1'b1;
    end
  end

  assign FetchCachelessPlugin_logic_buffer_write_payload_address = FetchCachelessPlugin_logic_bus_rsp_payload_id;
  assign FetchCachelessPlugin_logic_buffer_write_payload_data_error = FetchCachelessPlugin_logic_bus_rsp_payload_error;
  assign FetchCachelessPlugin_logic_buffer_write_payload_data_word = FetchCachelessPlugin_logic_bus_rsp_payload_word;
  assign _zz_5 = ({1'd0,1'b1} <<< FetchCachelessPlugin_logic_bus_rsp_payload_id);
  assign FetchCachelessPlugin_logic_onPma_port_cmd_address = fetch_logic_ctrls_0_down_MMU_TRANSLATED;
  assign fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_onPma_RSP_fault = FetchCachelessPlugin_logic_onPma_port_rsp_fault;
  assign fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_onPma_RSP_io = FetchCachelessPlugin_logic_onPma_port_rsp_io;
  assign LsuCachelessPlugin_logic_frontend_defaultsDecodings_0 = 1'b0;
  assign LsuCachelessPlugin_logic_frontend_defaultsDecodings_1 = 1'b0;
  assign LsuCachelessPlugin_logic_frontend_defaultsDecodings_2 = 1'b0;
  assign LsuCachelessPlugin_logic_frontend_defaultsDecodings_3 = 1'b0;
  assign LsuCachelessPlugin_logic_frontend_defaultsDecodings_4 = 1'b0;
  assign LsuCachelessPlugin_logic_frontend_defaultsDecodings_5 = 1'b0;
  assign execute_ctrl0_down_AguPlugin_SIZE_lane0 = execute_ctrl0_down_Decode_UOP_lane0[13 : 12];
  always @(*) begin
    execute_ctrl2_down_LsuCachelessPlugin_logic_onFirst_WRITE_DATA_lane0 = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    execute_ctrl2_down_LsuCachelessPlugin_logic_onFirst_WRITE_DATA_lane0[31 : 0] = execute_ctrl2_up_integer_RS2_lane0;
  end

  assign execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_RAW_ADDRESS_lane0 = execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0;
  assign execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_MISS_ALIGNED_lane0 = (|{((execute_ctrl2_down_AguPlugin_SIZE_lane0 == 2'b10) && (execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_RAW_ADDRESS_lane0[1 : 0] != 2'b00)),((execute_ctrl2_down_AguPlugin_SIZE_lane0 == 2'b01) && (execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_RAW_ADDRESS_lane0[0 : 0] != 1'b0))});
  assign LsuCachelessPlugin_logic_onPma_port_cmd_address = execute_ctrl2_down_MMU_TRANSLATED_lane0;
  assign LsuCachelessPlugin_logic_onPma_port_cmd_size = execute_ctrl2_down_AguPlugin_SIZE_lane0;
  assign LsuCachelessPlugin_logic_onPma_port_cmd_op[0] = execute_ctrl2_down_AguPlugin_STORE_lane0;
  assign execute_ctrl2_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault = LsuCachelessPlugin_logic_onPma_port_rsp_fault;
  assign execute_ctrl2_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_io = LsuCachelessPlugin_logic_onPma_port_rsp_io;
  assign PrivilegedPlugin_api_lsuTriggerBus_load = execute_ctrl2_down_AguPlugin_LOAD_lane0;
  assign PrivilegedPlugin_api_lsuTriggerBus_store = execute_ctrl2_down_AguPlugin_STORE_lane0;
  assign PrivilegedPlugin_api_lsuTriggerBus_virtual = execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_RAW_ADDRESS_lane0;
  assign PrivilegedPlugin_api_lsuTriggerBus_size = execute_ctrl2_down_AguPlugin_SIZE_lane0;
  assign execute_ctrl2_down_LsuCachelessPlugin_logic_onTrigger_HIT_lane0 = 1'b0;
  always @(*) begin
    LsuCachelessPlugin_logic_onFork_skip = 1'b0;
    if(when_LsuCachelessPlugin_l261) begin
      LsuCachelessPlugin_logic_onFork_skip = 1'b1;
    end
    if(when_LsuCachelessPlugin_l267) begin
      LsuCachelessPlugin_logic_onFork_skip = 1'b1;
    end
    if(when_LsuCachelessPlugin_l274) begin
      LsuCachelessPlugin_logic_onFork_skip = 1'b1;
    end
    if(execute_ctrl2_down_MMU_ACCESS_FAULT_lane0) begin
      LsuCachelessPlugin_logic_onFork_skip = 1'b1;
    end
    if(execute_ctrl2_down_MMU_REFILL_lane0) begin
      LsuCachelessPlugin_logic_onFork_skip = 1'b1;
    end
    if(execute_ctrl2_down_MMU_HAZARD_lane0) begin
      LsuCachelessPlugin_logic_onFork_skip = 1'b1;
    end
    if(execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_MISS_ALIGNED_lane0) begin
      LsuCachelessPlugin_logic_onFork_skip = 1'b1;
    end
    if(execute_ctrl2_down_LsuCachelessPlugin_logic_onTrigger_HIT_lane0) begin
      LsuCachelessPlugin_logic_onFork_skip = 1'b1;
    end
  end

  assign when_LsuCachelessPlugin_l215 = (! execute_freeze_valid);
  assign LsuCachelessPlugin_logic_onFork_askFence = (execute_ctrl2_up_LANE_SEL_lane0 && ((execute_ctrl2_down_LsuCachelessPlugin_FENCE_lane0 || (execute_ctrl2_down_AguPlugin_SEL_lane0 && execute_ctrl2_down_AguPlugin_ATOMIC_lane0)) || LsuCachelessPlugin_logic_onFork_askFenceReg));
  assign LsuCachelessPlugin_logic_onFork_doFence = (LsuCachelessPlugin_logic_onFork_askFence && LsuCachelessPlugin_logic_cmdInflights);
  assign LsuCachelessPlugin_logic_bus_cmd_fire = (LsuCachelessPlugin_logic_bus_cmd_valid && LsuCachelessPlugin_logic_bus_cmd_ready);
  always @(*) begin
    LsuCachelessPlugin_logic_onFork_cmdCounter_willIncrement = 1'b0;
    if(LsuCachelessPlugin_logic_bus_cmd_fire) begin
      LsuCachelessPlugin_logic_onFork_cmdCounter_willIncrement = 1'b1;
    end
  end

  assign LsuCachelessPlugin_logic_onFork_cmdCounter_willClear = 1'b0;
  assign LsuCachelessPlugin_logic_onFork_cmdCounter_willOverflowIfInc = (LsuCachelessPlugin_logic_onFork_cmdCounter_value == 1'b1);
  assign LsuCachelessPlugin_logic_onFork_cmdCounter_willOverflow = (LsuCachelessPlugin_logic_onFork_cmdCounter_willOverflowIfInc && LsuCachelessPlugin_logic_onFork_cmdCounter_willIncrement);
  always @(*) begin
    LsuCachelessPlugin_logic_onFork_cmdCounter_valueNext = (LsuCachelessPlugin_logic_onFork_cmdCounter_value + LsuCachelessPlugin_logic_onFork_cmdCounter_willIncrement);
    if(LsuCachelessPlugin_logic_onFork_cmdCounter_willClear) begin
      LsuCachelessPlugin_logic_onFork_cmdCounter_valueNext = 1'b0;
    end
  end

  assign when_LsuCachelessPlugin_l220 = (! execute_freeze_valid);
  assign LsuCachelessPlugin_logic_bus_cmd_isStall = (LsuCachelessPlugin_logic_bus_cmd_valid && (! LsuCachelessPlugin_logic_bus_cmd_ready));
  assign LsuCachelessPlugin_logic_bus_cmd_valid = (((((execute_ctrl2_up_LANE_SEL_lane0 && execute_ctrl2_down_AguPlugin_SEL_lane0) && (! LsuCachelessPlugin_logic_onFork_cmdSent)) && (! execute_lane0_ctrls_2_upIsCancel)) && (! LsuCachelessPlugin_logic_onFork_skip)) && (! LsuCachelessPlugin_logic_onFork_doFence));
  assign LsuCachelessPlugin_logic_bus_cmd_payload_id = LsuCachelessPlugin_logic_onFork_cmdCounter_value;
  assign LsuCachelessPlugin_logic_bus_cmd_payload_write = execute_ctrl2_down_AguPlugin_STORE_lane0;
  assign LsuCachelessPlugin_logic_bus_cmd_payload_address = execute_ctrl2_down_MMU_TRANSLATED_lane0;
  assign LsuCachelessPlugin_logic_onFork_mapping_0_1 = {4{execute_ctrl2_down_LsuCachelessPlugin_logic_onFirst_WRITE_DATA_lane0[7 : 0]}};
  assign LsuCachelessPlugin_logic_onFork_mapping_1_1 = {2{execute_ctrl2_down_LsuCachelessPlugin_logic_onFirst_WRITE_DATA_lane0[15 : 0]}};
  assign LsuCachelessPlugin_logic_onFork_mapping_2_1 = {1{execute_ctrl2_down_LsuCachelessPlugin_logic_onFirst_WRITE_DATA_lane0[31 : 0]}};
  always @(*) begin
    _zz_LsuCachelessPlugin_logic_bus_cmd_payload_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    case(LsuCachelessPlugin_logic_bus_cmd_payload_size)
      2'b00 : begin
        _zz_LsuCachelessPlugin_logic_bus_cmd_payload_data = LsuCachelessPlugin_logic_onFork_mapping_0_1;
      end
      2'b01 : begin
        _zz_LsuCachelessPlugin_logic_bus_cmd_payload_data = LsuCachelessPlugin_logic_onFork_mapping_1_1;
      end
      2'b10 : begin
        _zz_LsuCachelessPlugin_logic_bus_cmd_payload_data = LsuCachelessPlugin_logic_onFork_mapping_2_1;
      end
      default : begin
      end
    endcase
  end

  assign LsuCachelessPlugin_logic_bus_cmd_payload_data = _zz_LsuCachelessPlugin_logic_bus_cmd_payload_data;
  assign LsuCachelessPlugin_logic_bus_cmd_payload_size = execute_ctrl2_down_AguPlugin_SIZE_lane0;
  always @(*) begin
    _zz_LsuCachelessPlugin_logic_bus_cmd_payload_mask = 4'bxxxx;
    case(LsuCachelessPlugin_logic_bus_cmd_payload_size)
      2'b00 : begin
        _zz_LsuCachelessPlugin_logic_bus_cmd_payload_mask = 4'b0001;
      end
      2'b01 : begin
        _zz_LsuCachelessPlugin_logic_bus_cmd_payload_mask = 4'b0011;
      end
      2'b10 : begin
        _zz_LsuCachelessPlugin_logic_bus_cmd_payload_mask = 4'b1111;
      end
      default : begin
      end
    endcase
  end

  assign LsuCachelessPlugin_logic_bus_cmd_payload_mask = (_zz_LsuCachelessPlugin_logic_bus_cmd_payload_mask <<< LsuCachelessPlugin_logic_bus_cmd_payload_address[1 : 0]);
  assign LsuCachelessPlugin_logic_bus_cmd_payload_io = execute_ctrl2_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_io;
  assign LsuCachelessPlugin_logic_bus_cmd_payload_fromHart = 1'b1;
  assign LsuCachelessPlugin_logic_bus_cmd_payload_uopId = execute_ctrl2_down_Decode_UOP_ID_lane0;
  assign LsuCachelessPlugin_logic_onFork_freezeIt = (LsuCachelessPlugin_logic_bus_cmd_isStall || LsuCachelessPlugin_logic_onFork_doFence);
  always @(*) begin
    LsuCachelessPlugin_logic_flushPort_valid = 1'b0;
    if(when_LsuCachelessPlugin_l315) begin
      LsuCachelessPlugin_logic_flushPort_valid = 1'b1;
    end
  end

  assign LsuCachelessPlugin_logic_flushPort_payload_uopId = execute_ctrl2_down_Decode_UOP_ID_lane0;
  assign LsuCachelessPlugin_logic_flushPort_payload_self = 1'b0;
  always @(*) begin
    LsuCachelessPlugin_logic_trapPort_valid = 1'b0;
    if(when_LsuCachelessPlugin_l315) begin
      LsuCachelessPlugin_logic_trapPort_valid = 1'b1;
    end
  end

  assign LsuCachelessPlugin_logic_trapPort_payload_tval = execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_RAW_ADDRESS_lane0;
  always @(*) begin
    LsuCachelessPlugin_logic_trapPort_payload_exception = 1'bx;
    if(when_LsuCachelessPlugin_l261) begin
      LsuCachelessPlugin_logic_trapPort_payload_exception = 1'b0;
    end
    if(when_LsuCachelessPlugin_l267) begin
      LsuCachelessPlugin_logic_trapPort_payload_exception = 1'b1;
    end
    if(when_LsuCachelessPlugin_l274) begin
      LsuCachelessPlugin_logic_trapPort_payload_exception = 1'b1;
    end
    if(execute_ctrl2_down_MMU_ACCESS_FAULT_lane0) begin
      LsuCachelessPlugin_logic_trapPort_payload_exception = 1'b1;
    end
    if(execute_ctrl2_down_MMU_REFILL_lane0) begin
      LsuCachelessPlugin_logic_trapPort_payload_exception = 1'b0;
    end
    if(execute_ctrl2_down_MMU_HAZARD_lane0) begin
      LsuCachelessPlugin_logic_trapPort_payload_exception = 1'b0;
    end
    if(execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_MISS_ALIGNED_lane0) begin
      LsuCachelessPlugin_logic_trapPort_payload_exception = 1'b1;
    end
    if(execute_ctrl2_down_LsuCachelessPlugin_logic_onTrigger_HIT_lane0) begin
      LsuCachelessPlugin_logic_trapPort_payload_exception = 1'b0;
    end
  end

  always @(*) begin
    LsuCachelessPlugin_logic_trapPort_payload_code = 4'bxxxx;
    if(when_LsuCachelessPlugin_l261) begin
      LsuCachelessPlugin_logic_trapPort_payload_code = 4'b0100;
    end
    if(when_LsuCachelessPlugin_l267) begin
      LsuCachelessPlugin_logic_trapPort_payload_code = 4'b0101;
      if(execute_ctrl2_down_AguPlugin_STORE_lane0) begin
        LsuCachelessPlugin_logic_trapPort_payload_code[1] = 1'b1;
      end
    end
    if(when_LsuCachelessPlugin_l274) begin
      LsuCachelessPlugin_logic_trapPort_payload_code = 4'b1101;
      if(execute_ctrl2_down_AguPlugin_STORE_lane0) begin
        LsuCachelessPlugin_logic_trapPort_payload_code[1] = 1'b1;
      end
    end
    if(execute_ctrl2_down_MMU_ACCESS_FAULT_lane0) begin
      LsuCachelessPlugin_logic_trapPort_payload_code = 4'b0101;
      if(execute_ctrl2_down_AguPlugin_STORE_lane0) begin
        LsuCachelessPlugin_logic_trapPort_payload_code[1] = 1'b1;
      end
    end
    if(execute_ctrl2_down_MMU_REFILL_lane0) begin
      LsuCachelessPlugin_logic_trapPort_payload_code = 4'b0111;
    end
    if(execute_ctrl2_down_MMU_HAZARD_lane0) begin
      LsuCachelessPlugin_logic_trapPort_payload_code = 4'b0100;
    end
    if(execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_MISS_ALIGNED_lane0) begin
      LsuCachelessPlugin_logic_trapPort_payload_code = {1'd0, _zz_LsuCachelessPlugin_logic_trapPort_payload_code};
    end
    if(execute_ctrl2_down_LsuCachelessPlugin_logic_onTrigger_HIT_lane0) begin
      LsuCachelessPlugin_logic_trapPort_payload_code = 4'b0011;
    end
  end

  always @(*) begin
    LsuCachelessPlugin_logic_trapPort_payload_arg = 2'b00;
    LsuCachelessPlugin_logic_trapPort_payload_arg[1 : 0] = (execute_ctrl2_down_AguPlugin_STORE_lane0 ? 2'b01 : 2'b00);
  end

  assign WhiteboxerPlugin_logic_fetch_fetchId = fetch_logic_ctrls_0_down_Fetch_ID;
  assign WhiteboxerPlugin_logic_decodes_0_fire = ((decode_ctrls_0_up_LANE_SEL_0 && decode_ctrls_0_up_isReady) && (! decode_ctrls_0_lane0_upIsCancel));
  assign when_CtrlLaneApi_l50 = (decode_ctrls_0_up_isReady || decode_ctrls_0_lane0_upIsCancel);
  assign WhiteboxerPlugin_logic_decodes_0_spawn = (decode_ctrls_0_up_LANE_SEL_0 && (! decode_ctrls_0_up_LANE_SEL_0_regNext));
  assign WhiteboxerPlugin_logic_decodes_0_pc = _zz_WhiteboxerPlugin_logic_decodes_0_pc;
  assign WhiteboxerPlugin_logic_decodes_0_fetchId = decode_ctrls_0_down_Fetch_ID_0;
  assign WhiteboxerPlugin_logic_decodes_0_decodeId = decode_ctrls_0_down_Decode_DOP_ID_0;
  assign execute_ctrl2_down_early0_BranchPlugin_logic_alu_EQ_lane0 = ($signed(execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0) == $signed(execute_ctrl2_down_early0_SrcPlugin_SRC2_lane0));
  assign early0_BranchPlugin_logic_alu_expectedMsb = 1'b0;
  assign execute_ctrl2_down_early0_BranchPlugin_logic_alu_MSB_FAILED_lane0 = ((execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0 == BranchPlugin_BranchCtrlEnum_JALR) && 1'b0);
  assign switch_Misc_l245 = execute_ctrl2_down_Decode_UOP_lane0[14 : 12];
  always @(*) begin
    casez(switch_Misc_l245)
      3'b000 : begin
        _zz_execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0 = execute_ctrl2_down_early0_BranchPlugin_logic_alu_EQ_lane0;
      end
      3'b001 : begin
        _zz_execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0 = (! execute_ctrl2_down_early0_BranchPlugin_logic_alu_EQ_lane0);
      end
      3'b1?1 : begin
        _zz_execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0 = (! execute_ctrl2_down_early0_SrcPlugin_LESS_lane0);
      end
      default : begin
        _zz_execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0 = execute_ctrl2_down_early0_SrcPlugin_LESS_lane0;
      end
    endcase
  end

  always @(*) begin
    case(execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0)
      BranchPlugin_BranchCtrlEnum_JALR : begin
        _zz_execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0_1 = 1'b1;
      end
      BranchPlugin_BranchCtrlEnum_JAL : begin
        _zz_execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0_1 = 1'b1;
      end
      default : begin
        _zz_execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0_1 = _zz_execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0;
      end
    endcase
  end

  assign execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0 = _zz_execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0_1;
  assign early0_BranchPlugin_logic_jumpLogic_needFix = (execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0 || execute_ctrl2_down_early0_BranchPlugin_logic_alu_MSB_FAILED_lane0);
  assign early0_BranchPlugin_logic_jumpLogic_doIt = ((execute_ctrl2_up_LANE_SEL_lane0 && execute_ctrl2_down_early0_BranchPlugin_SEL_lane0) && early0_BranchPlugin_logic_jumpLogic_needFix);
  assign early0_BranchPlugin_logic_pcPort_valid = early0_BranchPlugin_logic_jumpLogic_doIt;
  assign early0_BranchPlugin_logic_pcPort_payload_fault = execute_ctrl2_down_early0_BranchPlugin_logic_alu_MSB_FAILED_lane0;
  assign early0_BranchPlugin_logic_pcPort_payload_pc = execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_TRUE_lane0;
  assign early0_BranchPlugin_logic_flushPort_valid = early0_BranchPlugin_logic_jumpLogic_doIt;
  assign early0_BranchPlugin_logic_flushPort_payload_uopId = execute_ctrl2_down_Decode_UOP_ID_lane0;
  assign early0_BranchPlugin_logic_flushPort_payload_self = 1'b0;
  assign execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_MISSALIGNED_lane0 = ((execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_TRUE_lane0[1 : 0] != 2'b00) && execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0);
  always @(*) begin
    early0_BranchPlugin_logic_trapPort_valid = 1'b0;
    if(when_BranchPlugin_l251) begin
      early0_BranchPlugin_logic_trapPort_valid = 1'b1;
    end
  end

  assign early0_BranchPlugin_logic_trapPort_payload_exception = 1'b1;
  assign early0_BranchPlugin_logic_trapPort_payload_code = 4'b0000;
  assign early0_BranchPlugin_logic_trapPort_payload_tval = execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_TRUE_lane0;
  assign early0_BranchPlugin_logic_trapPort_payload_arg = 2'b00;
  assign when_BranchPlugin_l251 = (early0_BranchPlugin_logic_jumpLogic_doIt && execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_MISSALIGNED_lane0);
  assign execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_IS_JAL_lane0 = (execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0 == BranchPlugin_BranchCtrlEnum_JAL);
  assign execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_IS_JALR_lane0 = (execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0 == BranchPlugin_BranchCtrlEnum_JALR);
  assign early0_BranchPlugin_logic_jumpLogic_rdLink = (|{(execute_ctrl2_down_Decode_UOP_lane0[11 : 7] == 5'h05),(execute_ctrl2_down_Decode_UOP_lane0[11 : 7] == 5'h01)});
  assign early0_BranchPlugin_logic_jumpLogic_rs1Link = (|{(execute_ctrl2_down_Decode_UOP_lane0[19 : 15] == 5'h05),(execute_ctrl2_down_Decode_UOP_lane0[19 : 15] == 5'h01)});
  assign early0_BranchPlugin_logic_jumpLogic_rdEquRs1 = (execute_ctrl2_down_Decode_UOP_lane0[11 : 7] == execute_ctrl2_down_Decode_UOP_lane0[19 : 15]);
  assign early0_BranchPlugin_logic_jumpLogic_learn_valid = (((execute_ctrl2_up_LANE_SEL_lane0 && execute_ctrl2_down_isReady) && (! execute_lane0_ctrls_2_upIsCancel)) && (|execute_ctrl2_down_early0_BranchPlugin_SEL_lane0));
  assign early0_BranchPlugin_logic_jumpLogic_learn_payload_taken = execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_COND_lane0;
  assign early0_BranchPlugin_logic_jumpLogic_learn_payload_pcTarget = execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_TRUE_lane0;
  assign early0_BranchPlugin_logic_jumpLogic_learn_payload_pcOnLastSlice = execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_LAST_SLICE_lane0;
  assign early0_BranchPlugin_logic_jumpLogic_learn_payload_isBranch = (execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0 == BranchPlugin_BranchCtrlEnum_B);
  assign early0_BranchPlugin_logic_jumpLogic_learn_payload_isPush = ((execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_IS_JAL_lane0 || execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_IS_JALR_lane0) && early0_BranchPlugin_logic_jumpLogic_rdLink);
  assign early0_BranchPlugin_logic_jumpLogic_learn_payload_isPop = (execute_ctrl2_down_early0_BranchPlugin_logic_jumpLogic_IS_JALR_lane0 && (((! early0_BranchPlugin_logic_jumpLogic_rdLink) && early0_BranchPlugin_logic_jumpLogic_rs1Link) || ((early0_BranchPlugin_logic_jumpLogic_rdLink && early0_BranchPlugin_logic_jumpLogic_rs1Link) && (! early0_BranchPlugin_logic_jumpLogic_rdEquRs1))));
  assign early0_BranchPlugin_logic_jumpLogic_learn_payload_wasWrong = early0_BranchPlugin_logic_jumpLogic_needFix;
  assign early0_BranchPlugin_logic_jumpLogic_learn_payload_badPredictedTarget = 1'b0;
  assign early0_BranchPlugin_logic_jumpLogic_learn_payload_uopId = execute_ctrl2_down_Decode_UOP_ID_lane0;
  assign early0_BranchPlugin_logic_wb_valid = execute_ctrl2_down_early0_BranchPlugin_SEL_lane0;
  assign early0_BranchPlugin_logic_wb_payload = execute_ctrl2_down_early0_BranchPlugin_pcCalc_PC_FALSE_lane0;
  always @(*) begin
    early0_EnvPlugin_logic_flushPort_valid = 1'b0;
    if(when_EnvPlugin_l119) begin
      early0_EnvPlugin_logic_flushPort_valid = 1'b1;
    end
  end

  assign early0_EnvPlugin_logic_flushPort_payload_uopId = execute_ctrl2_down_Decode_UOP_ID_lane0;
  assign early0_EnvPlugin_logic_flushPort_payload_self = 1'b0;
  always @(*) begin
    early0_EnvPlugin_logic_trapPort_valid = 1'b0;
    if(when_EnvPlugin_l119) begin
      early0_EnvPlugin_logic_trapPort_valid = 1'b1;
    end
  end

  always @(*) begin
    early0_EnvPlugin_logic_trapPort_payload_exception = 1'b1;
    case(execute_ctrl2_down_early0_EnvPlugin_OP_lane0)
      EnvPluginOp_PRIV_RET : begin
        if(when_EnvPlugin_l86) begin
          early0_EnvPlugin_logic_trapPort_payload_exception = 1'b0;
        end
      end
      EnvPluginOp_WFI : begin
        if(when_EnvPlugin_l95) begin
          early0_EnvPlugin_logic_trapPort_payload_exception = 1'b0;
        end
      end
      EnvPluginOp_FENCE_I : begin
        early0_EnvPlugin_logic_trapPort_payload_exception = 1'b0;
      end
      default : begin
      end
    endcase
  end

  assign early0_EnvPlugin_logic_trapPort_payload_tval = ((execute_ctrl2_down_early0_EnvPlugin_OP_lane0 == EnvPluginOp_EBREAK) ? execute_ctrl2_down_PC_lane0 : 32'h0);
  always @(*) begin
    early0_EnvPlugin_logic_trapPort_payload_code = 4'b0010;
    case(execute_ctrl2_down_early0_EnvPlugin_OP_lane0)
      EnvPluginOp_EBREAK : begin
        early0_EnvPlugin_logic_trapPort_payload_code = 4'b0011;
      end
      EnvPluginOp_ECALL : begin
        early0_EnvPlugin_logic_trapPort_payload_code = (_zz_early0_EnvPlugin_logic_trapPort_payload_code | 4'b1000);
      end
      EnvPluginOp_PRIV_RET : begin
        if(when_EnvPlugin_l86) begin
          early0_EnvPlugin_logic_trapPort_payload_code = 4'b0001;
        end
      end
      EnvPluginOp_WFI : begin
        if(when_EnvPlugin_l95) begin
          early0_EnvPlugin_logic_trapPort_payload_code = 4'b1000;
        end
      end
      EnvPluginOp_FENCE_I : begin
        early0_EnvPlugin_logic_trapPort_payload_code = 4'b0010;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    early0_EnvPlugin_logic_trapPort_payload_arg = 2'bxx;
    case(execute_ctrl2_down_early0_EnvPlugin_OP_lane0)
      EnvPluginOp_PRIV_RET : begin
        if(when_EnvPlugin_l86) begin
          early0_EnvPlugin_logic_trapPort_payload_arg[1 : 0] = early0_EnvPlugin_logic_exe_xretPriv;
        end
      end
      default : begin
      end
    endcase
  end

  assign PrivilegedPlugin_logic_defaultTrap_csrPrivilege = CsrAccessPlugin_bus_decode_address[9 : 8];
  assign PrivilegedPlugin_logic_defaultTrap_csrReadOnly = (CsrAccessPlugin_bus_decode_address[11 : 10] == 2'b11);
  assign when_PrivilegedPlugin_l771 = ((PrivilegedPlugin_logic_defaultTrap_csrReadOnly && CsrAccessPlugin_bus_decode_write) || (PrivilegedPlugin_logic_harts_0_privilege < PrivilegedPlugin_logic_defaultTrap_csrPrivilege));
  always @(*) begin
    _zz_execute_ctrl1_down_early0_SrcPlugin_SRC1_lane0 = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    case(execute_ctrl1_down_early0_SrcPlugin_logic_SRC1_CTRL_lane0)
      1'b0 : begin
        _zz_execute_ctrl1_down_early0_SrcPlugin_SRC1_lane0 = execute_ctrl1_down_integer_RS1_lane0;
      end
      default : begin
        _zz_execute_ctrl1_down_early0_SrcPlugin_SRC1_lane0 = {execute_ctrl1_down_Decode_UOP_lane0[31 : 12],12'h0};
      end
    endcase
  end

  assign execute_ctrl1_down_early0_SrcPlugin_SRC1_lane0 = _zz_execute_ctrl1_down_early0_SrcPlugin_SRC1_lane0;
  always @(*) begin
    _zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0 = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    case(execute_ctrl1_down_early0_SrcPlugin_logic_SRC2_CTRL_lane0)
      2'b00 : begin
        _zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0 = execute_ctrl1_down_integer_RS2_lane0;
      end
      2'b01 : begin
        _zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0 = {{20{_zz__zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0[11]}}, _zz__zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0};
      end
      2'b10 : begin
        _zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0 = execute_ctrl1_down_PC_lane0;
      end
      default : begin
        _zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0 = {{20{_zz__zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0_1[11]}}, _zz__zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0_1};
      end
    endcase
  end

  assign execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0 = _zz_execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0;
  always @(*) begin
    early0_SrcPlugin_logic_addsub_combined_rs2Patched = execute_ctrl2_down_early0_SrcPlugin_SRC2_lane0;
    if(execute_ctrl2_down_SrcStageables_REVERT_lane0) begin
      early0_SrcPlugin_logic_addsub_combined_rs2Patched = (~ execute_ctrl2_down_early0_SrcPlugin_SRC2_lane0);
    end
    if(execute_ctrl2_down_SrcStageables_ZERO_lane0) begin
      early0_SrcPlugin_logic_addsub_combined_rs2Patched = 32'h0;
    end
  end

  assign execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0 = ($signed(_zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0) + $signed(_zz_execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0_1));
  assign execute_ctrl2_down_early0_SrcPlugin_LESS_lane0 = ((execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[31] == execute_ctrl2_down_early0_SrcPlugin_SRC2_lane0[31]) ? execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0[31] : (execute_ctrl2_down_SrcStageables_UNSIGNED_lane0 ? execute_ctrl2_down_early0_SrcPlugin_SRC2_lane0[31] : execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0[31]));
  assign lane0_IntFormatPlugin_logic_stages_0_hits = {early0_BarrelShifterPlugin_logic_wb_valid,early0_IntAluPlugin_logic_wb_valid};
  assign lane0_IntFormatPlugin_logic_stages_0_wb_valid = (execute_ctrl2_up_LANE_SEL_lane0 && (|lane0_IntFormatPlugin_logic_stages_0_hits));
  assign lane0_IntFormatPlugin_logic_stages_0_raw = ((lane0_IntFormatPlugin_logic_stages_0_hits[0] ? early0_IntAluPlugin_logic_wb_payload : 32'h0) | (lane0_IntFormatPlugin_logic_stages_0_hits[1] ? early0_BarrelShifterPlugin_logic_wb_payload : 32'h0));
  assign lane0_IntFormatPlugin_logic_stages_0_wb_payload = lane0_IntFormatPlugin_logic_stages_0_raw;
  assign lane0_IntFormatPlugin_logic_stages_1_hits = CsrAccessPlugin_logic_wbWi_valid;
  assign lane0_IntFormatPlugin_logic_stages_1_wb_valid = (execute_ctrl3_up_LANE_SEL_lane0 && (|lane0_IntFormatPlugin_logic_stages_1_hits));
  assign lane0_IntFormatPlugin_logic_stages_1_raw = CsrAccessPlugin_logic_wbWi_payload;
  assign lane0_IntFormatPlugin_logic_stages_1_wb_payload = lane0_IntFormatPlugin_logic_stages_1_raw;
  assign lane0_IntFormatPlugin_logic_stages_2_hits = LsuCachelessPlugin_logic_iwb_valid;
  assign lane0_IntFormatPlugin_logic_stages_2_wb_valid = (execute_ctrl4_up_LANE_SEL_lane0 && (|lane0_IntFormatPlugin_logic_stages_2_hits));
  assign lane0_IntFormatPlugin_logic_stages_2_raw = LsuCachelessPlugin_logic_iwb_payload;
  always @(*) begin
    lane0_IntFormatPlugin_logic_stages_2_wb_payload = lane0_IntFormatPlugin_logic_stages_2_raw;
    if(lane0_IntFormatPlugin_logic_stages_2_segments_0_doIt) begin
      lane0_IntFormatPlugin_logic_stages_2_wb_payload[15 : 8] = {8{lane0_IntFormatPlugin_logic_stages_2_segments_0_sign_value}};
    end
    if(lane0_IntFormatPlugin_logic_stages_2_segments_1_doIt) begin
      lane0_IntFormatPlugin_logic_stages_2_wb_payload[31 : 16] = {16{lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_value}};
    end
  end

  assign lane0_IntFormatPlugin_logic_stages_2_segments_0_sign_sels_0 = lane0_IntFormatPlugin_logic_stages_2_raw[7];
  always @(*) begin
    _zz_lane0_IntFormatPlugin_logic_stages_2_segments_0_sign_value = 1'bx;
    case(execute_ctrl4_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0)
      2'b00 : begin
        _zz_lane0_IntFormatPlugin_logic_stages_2_segments_0_sign_value = lane0_IntFormatPlugin_logic_stages_2_segments_0_sign_sels_0;
      end
      default : begin
      end
    endcase
  end

  assign lane0_IntFormatPlugin_logic_stages_2_segments_0_sign_value = (execute_ctrl4_down_lane0_IntFormatPlugin_logic_SIGNED_lane0 && _zz_lane0_IntFormatPlugin_logic_stages_2_segments_0_sign_value);
  assign lane0_IntFormatPlugin_logic_stages_2_segments_0_doIt = (execute_ctrl4_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0 < 2'b01);
  assign lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_sels_0 = lane0_IntFormatPlugin_logic_stages_2_raw[7];
  assign lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_sels_1 = lane0_IntFormatPlugin_logic_stages_2_raw[15];
  always @(*) begin
    _zz_lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_value = 1'bx;
    case(execute_ctrl4_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0)
      2'b00 : begin
        _zz_lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_value = lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_sels_0;
      end
      2'b01 : begin
        _zz_lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_value = lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_sels_1;
      end
      default : begin
      end
    endcase
  end

  assign lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_value = (execute_ctrl4_down_lane0_IntFormatPlugin_logic_SIGNED_lane0 && _zz_lane0_IntFormatPlugin_logic_stages_2_segments_1_sign_value);
  assign lane0_IntFormatPlugin_logic_stages_2_segments_1_doIt = (execute_ctrl4_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0 < 2'b10);
  assign LearnPlugin_logic_buffered_0_valid = early0_BranchPlugin_logic_jumpLogic_learn_valid;
  assign early0_BranchPlugin_logic_jumpLogic_learn_ready = LearnPlugin_logic_buffered_0_ready;
  assign LearnPlugin_logic_buffered_0_payload_pcOnLastSlice = early0_BranchPlugin_logic_jumpLogic_learn_payload_pcOnLastSlice;
  assign LearnPlugin_logic_buffered_0_payload_pcTarget = early0_BranchPlugin_logic_jumpLogic_learn_payload_pcTarget;
  assign LearnPlugin_logic_buffered_0_payload_taken = early0_BranchPlugin_logic_jumpLogic_learn_payload_taken;
  assign LearnPlugin_logic_buffered_0_payload_isBranch = early0_BranchPlugin_logic_jumpLogic_learn_payload_isBranch;
  assign LearnPlugin_logic_buffered_0_payload_isPush = early0_BranchPlugin_logic_jumpLogic_learn_payload_isPush;
  assign LearnPlugin_logic_buffered_0_payload_isPop = early0_BranchPlugin_logic_jumpLogic_learn_payload_isPop;
  assign LearnPlugin_logic_buffered_0_payload_wasWrong = early0_BranchPlugin_logic_jumpLogic_learn_payload_wasWrong;
  assign LearnPlugin_logic_buffered_0_payload_badPredictedTarget = early0_BranchPlugin_logic_jumpLogic_learn_payload_badPredictedTarget;
  assign LearnPlugin_logic_buffered_0_payload_uopId = early0_BranchPlugin_logic_jumpLogic_learn_payload_uopId;
  assign LearnPlugin_logic_buffered_0_ready = streamArbiter_1_io_inputs_0_ready;
  assign LearnPlugin_logic_arbitrated_valid = streamArbiter_1_io_output_valid;
  assign LearnPlugin_logic_arbitrated_payload_pcOnLastSlice = streamArbiter_1_io_output_payload_pcOnLastSlice;
  assign LearnPlugin_logic_arbitrated_payload_pcTarget = streamArbiter_1_io_output_payload_pcTarget;
  assign LearnPlugin_logic_arbitrated_payload_taken = streamArbiter_1_io_output_payload_taken;
  assign LearnPlugin_logic_arbitrated_payload_isBranch = streamArbiter_1_io_output_payload_isBranch;
  assign LearnPlugin_logic_arbitrated_payload_isPush = streamArbiter_1_io_output_payload_isPush;
  assign LearnPlugin_logic_arbitrated_payload_isPop = streamArbiter_1_io_output_payload_isPop;
  assign LearnPlugin_logic_arbitrated_payload_wasWrong = streamArbiter_1_io_output_payload_wasWrong;
  assign LearnPlugin_logic_arbitrated_payload_badPredictedTarget = streamArbiter_1_io_output_payload_badPredictedTarget;
  assign LearnPlugin_logic_arbitrated_payload_uopId = streamArbiter_1_io_output_payload_uopId;
  assign LearnPlugin_logic_arbitrated_ready = 1'b1;
  assign LearnPlugin_logic_arbitrated_toFlow_valid = LearnPlugin_logic_arbitrated_valid;
  assign LearnPlugin_logic_arbitrated_toFlow_payload_pcOnLastSlice = LearnPlugin_logic_arbitrated_payload_pcOnLastSlice;
  assign LearnPlugin_logic_arbitrated_toFlow_payload_pcTarget = LearnPlugin_logic_arbitrated_payload_pcTarget;
  assign LearnPlugin_logic_arbitrated_toFlow_payload_taken = LearnPlugin_logic_arbitrated_payload_taken;
  assign LearnPlugin_logic_arbitrated_toFlow_payload_isBranch = LearnPlugin_logic_arbitrated_payload_isBranch;
  assign LearnPlugin_logic_arbitrated_toFlow_payload_isPush = LearnPlugin_logic_arbitrated_payload_isPush;
  assign LearnPlugin_logic_arbitrated_toFlow_payload_isPop = LearnPlugin_logic_arbitrated_payload_isPop;
  assign LearnPlugin_logic_arbitrated_toFlow_payload_wasWrong = LearnPlugin_logic_arbitrated_payload_wasWrong;
  assign LearnPlugin_logic_arbitrated_toFlow_payload_badPredictedTarget = LearnPlugin_logic_arbitrated_payload_badPredictedTarget;
  assign LearnPlugin_logic_arbitrated_toFlow_payload_uopId = LearnPlugin_logic_arbitrated_payload_uopId;
  assign LearnPlugin_logic_learn_valid = LearnPlugin_logic_arbitrated_toFlow_valid;
  assign LearnPlugin_logic_learn_payload_pcOnLastSlice = LearnPlugin_logic_arbitrated_toFlow_payload_pcOnLastSlice;
  assign LearnPlugin_logic_learn_payload_pcTarget = LearnPlugin_logic_arbitrated_toFlow_payload_pcTarget;
  assign LearnPlugin_logic_learn_payload_taken = LearnPlugin_logic_arbitrated_toFlow_payload_taken;
  assign LearnPlugin_logic_learn_payload_isBranch = LearnPlugin_logic_arbitrated_toFlow_payload_isBranch;
  assign LearnPlugin_logic_learn_payload_isPush = LearnPlugin_logic_arbitrated_toFlow_payload_isPush;
  assign LearnPlugin_logic_learn_payload_isPop = LearnPlugin_logic_arbitrated_toFlow_payload_isPop;
  assign LearnPlugin_logic_learn_payload_wasWrong = LearnPlugin_logic_arbitrated_toFlow_payload_wasWrong;
  assign LearnPlugin_logic_learn_payload_badPredictedTarget = LearnPlugin_logic_arbitrated_toFlow_payload_badPredictedTarget;
  assign LearnPlugin_logic_learn_payload_uopId = LearnPlugin_logic_arbitrated_toFlow_payload_uopId;
  assign early0_EnvPlugin_logic_exe_privilege = PrivilegedPlugin_logic_harts_0_privilege;
  assign early0_EnvPlugin_logic_exe_xretPriv = execute_ctrl2_down_Decode_UOP_lane0[29 : 28];
  always @(*) begin
    early0_EnvPlugin_logic_exe_commit = 1'b0;
    case(execute_ctrl2_down_early0_EnvPlugin_OP_lane0)
      EnvPluginOp_PRIV_RET : begin
        if(when_EnvPlugin_l86) begin
          early0_EnvPlugin_logic_exe_commit = 1'b1;
        end
      end
      EnvPluginOp_WFI : begin
        if(when_EnvPlugin_l95) begin
          early0_EnvPlugin_logic_exe_commit = 1'b1;
        end
      end
      EnvPluginOp_FENCE_I : begin
        early0_EnvPlugin_logic_exe_commit = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign early0_EnvPlugin_logic_exe_retKo = 1'b0;
  assign early0_EnvPlugin_logic_exe_vmaKo = 1'b0;
  assign when_EnvPlugin_l86 = ((early0_EnvPlugin_logic_exe_xretPriv <= PrivilegedPlugin_logic_harts_0_privilege) && (! early0_EnvPlugin_logic_exe_retKo));
  assign when_EnvPlugin_l95 = ((early0_EnvPlugin_logic_exe_privilege == 2'b11) || ((! PrivilegedPlugin_logic_harts_0_m_status_tw) && (1'b1 || (early0_EnvPlugin_logic_exe_privilege == 2'b01))));
  assign when_EnvPlugin_l119 = (execute_ctrl2_up_LANE_SEL_lane0 && execute_ctrl2_down_early0_EnvPlugin_SEL_lane0);
  assign when_EnvPlugin_l123 = (! early0_EnvPlugin_logic_exe_commit);
  assign when_DecoderPlugin_l143 = (decode_ctrls_1_up_isMoving && 1'b1);
  assign DecoderPlugin_logic_interrupt_async = PrivilegedPlugin_logic_harts_0_int_pending;
  assign when_DecoderPlugin_l151 = (((! decode_ctrls_1_up_valid) || decode_ctrls_1_up_ready) || decode_ctrls_1_up_isCanceling);
  assign _zz_decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00000018) == 32'h0);
  assign decode_ctrls_1_down_RS1_ENABLE_0 = _zz_decode_ctrls_1_down_RS1_ENABLE_0[0];
  assign decode_ctrls_1_down_RS1_PHYS_0 = _zz_decode_ctrls_1_down_RS1_PHYS_0[4 : 0];
  assign decode_ctrls_1_down_RS2_ENABLE_0 = _zz_decode_ctrls_1_down_RS2_ENABLE_0[0];
  assign decode_ctrls_1_down_RS2_PHYS_0 = _zz_decode_ctrls_1_down_RS2_PHYS_0[4 : 0];
  always @(*) begin
    decode_ctrls_1_down_RD_ENABLE_0 = _zz_decode_ctrls_1_down_RD_ENABLE_0[0];
    if(when_DecoderPlugin_l247) begin
      decode_ctrls_1_down_RD_ENABLE_0 = 1'b0;
    end
  end

  assign decode_ctrls_1_down_RD_PHYS_0 = _zz_decode_ctrls_1_down_RD_PHYS_0[4 : 0];
  assign decode_ctrls_1_down_Decode_LEGAL_0 = ((|{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0000005f) == 32'h00000017),{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0000007f) == 32'h0000006f),{((decode_ctrls_1_down_Decode_INSTRUCTION_0 & _zz_decode_ctrls_1_down_Decode_LEGAL_0) == 32'h00001073),{(_zz_decode_ctrls_1_down_Decode_LEGAL_0_1 == _zz_decode_ctrls_1_down_Decode_LEGAL_0_2),{_zz_decode_ctrls_1_down_Decode_LEGAL_0_3,{_zz_decode_ctrls_1_down_Decode_LEGAL_0_4,_zz_decode_ctrls_1_down_Decode_LEGAL_0_5}}}}}}) && (! decode_ctrls_1_down_Decode_DECOMPRESSION_FAULT_0));
  assign DecoderPlugin_logic_laneLogic_0_interruptPending = DecoderPlugin_logic_interrupt_buffered[0];
  always @(*) begin
    DecoderPlugin_logic_laneLogic_0_trapPort_valid = 1'b0;
    if(when_DecoderPlugin_l229) begin
      DecoderPlugin_logic_laneLogic_0_trapPort_valid = ((! decode_ctrls_1_up_TRAP_0) || DecoderPlugin_logic_laneLogic_0_interruptPending);
    end
  end

  always @(*) begin
    DecoderPlugin_logic_laneLogic_0_trapPort_payload_exception = 1'b1;
    if(DecoderPlugin_logic_laneLogic_0_interruptPending) begin
      DecoderPlugin_logic_laneLogic_0_trapPort_payload_exception = 1'b0;
    end
  end

  assign DecoderPlugin_logic_laneLogic_0_trapPort_payload_tval = decode_ctrls_1_down_Decode_INSTRUCTION_RAW_0;
  always @(*) begin
    DecoderPlugin_logic_laneLogic_0_trapPort_payload_code = 4'b0010;
    if(DecoderPlugin_logic_laneLogic_0_interruptPending) begin
      DecoderPlugin_logic_laneLogic_0_trapPort_payload_code = 4'b0000;
    end
  end

  assign DecoderPlugin_logic_laneLogic_0_trapPort_payload_laneAge = 1'b0;
  assign DecoderPlugin_logic_laneLogic_0_trapPort_payload_arg = 2'b00;
  assign when_CtrlLaneApi_l50_1 = (decode_ctrls_1_up_isReady || decode_ctrls_1_lane0_upIsCancel);
  assign DecoderPlugin_logic_laneLogic_0_completionPort_valid = ((decode_ctrls_1_up_LANE_SEL_0 && decode_ctrls_1_down_TRAP_0) && (decode_ctrls_1_up_LANE_SEL_0 && (! decode_ctrls_1_up_LANE_SEL_0_regNext)));
  assign DecoderPlugin_logic_laneLogic_0_completionPort_payload_uopId = decode_ctrls_1_down_Decode_UOP_ID_0;
  assign DecoderPlugin_logic_laneLogic_0_completionPort_payload_trap = 1'b1;
  assign DecoderPlugin_logic_laneLogic_0_completionPort_payload_commit = 1'b0;
  assign when_DecoderPlugin_l229 = (decode_ctrls_1_up_LANE_SEL_0 && (((! decode_ctrls_1_down_Decode_LEGAL_0) || DecoderPlugin_logic_laneLogic_0_interruptPending) || 1'b0));
  assign DecoderPlugin_logic_laneLogic_0_flushPort_valid = (decode_ctrls_1_up_LANE_SEL_0 && decode_ctrls_1_down_TRAP_0);
  assign DecoderPlugin_logic_laneLogic_0_flushPort_payload_uopId = decode_ctrls_1_down_Decode_UOP_ID_0;
  assign DecoderPlugin_logic_laneLogic_0_flushPort_payload_self = 1'b0;
  assign when_DecoderPlugin_l247 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0[11 : 7] == 5'h0) && (|1'b1));
  assign decode_ctrls_1_down_Decode_UOP_0 = decode_ctrls_1_down_Decode_INSTRUCTION_0;
  assign DecoderPlugin_logic_laneLogic_0_uopIdBase = DecoderPlugin_logic_harts_0_uopId;
  assign decode_ctrls_1_down_Decode_UOP_ID_0 = (DecoderPlugin_logic_laneLogic_0_uopIdBase + 16'h0);
  assign execute_ctrl2_COMPLETED_lane0_bypass = (execute_ctrl2_up_COMPLETED_lane0 || execute_ctrl2_down_COMPLETION_AT_2_lane0);
  assign execute_ctrl3_COMPLETED_lane0_bypass = (execute_ctrl3_up_COMPLETED_lane0 || execute_ctrl3_down_COMPLETION_AT_3_lane0);
  assign execute_ctrl4_COMPLETED_lane0_bypass = (execute_ctrl4_up_COMPLETED_lane0 || execute_ctrl4_down_COMPLETION_AT_4_lane0);
  assign execute_lane0_api_hartsInflight[0] = (|{(execute_ctrl4_up_LANE_SEL_lane0 && 1'b1),{(execute_ctrl3_up_LANE_SEL_lane0 && 1'b1),{(execute_ctrl2_up_LANE_SEL_lane0 && 1'b1),(execute_ctrl1_up_LANE_SEL_lane0 && 1'b1)}}});
  assign when_LsuCachelessPlugin_l261 = ((execute_ctrl2_down_AguPlugin_LOAD_lane0 && execute_ctrl2_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_io) && 1'b0);
  assign when_LsuCachelessPlugin_l267 = ((execute_ctrl2_down_MMU_ACCESS_FAULT_lane0 || execute_ctrl2_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault) || execute_ctrl2_down_LsuCachelessPlugin_logic_pmpPort_ACCESS_FAULT_lane0);
  assign when_LsuCachelessPlugin_l274 = (execute_ctrl2_down_MMU_PAGE_FAULT_lane0 || (execute_ctrl2_down_AguPlugin_STORE_lane0 ? (! execute_ctrl2_down_MMU_ALLOW_WRITE_lane0) : (! execute_ctrl2_down_MMU_ALLOW_READ_lane0)));
  assign when_LsuCachelessPlugin_l315 = ((execute_ctrl2_up_LANE_SEL_lane0 && execute_ctrl2_down_AguPlugin_SEL_lane0) && LsuCachelessPlugin_logic_onFork_skip);
  assign execute_ctrl2_down_LsuCachelessPlugin_WITH_RSP_lane0 = (LsuCachelessPlugin_logic_bus_cmd_valid || LsuCachelessPlugin_logic_onFork_cmdSent);
  assign LsuCachelessPlugin_logic_cmdInflights = (|{LsuCachelessPlugin_logic_onJoin_buffers_1_inflight,LsuCachelessPlugin_logic_onJoin_buffers_0_inflight});
  assign LsuCachelessPlugin_logic_onJoin_busRspWithoutId_error = LsuCachelessPlugin_logic_bus_rsp_payload_error;
  assign LsuCachelessPlugin_logic_onJoin_busRspWithoutId_data = LsuCachelessPlugin_logic_bus_rsp_payload_data;
  assign LsuCachelessPlugin_logic_onJoin_pop = (execute_ctrl3_down_LsuCachelessPlugin_WITH_RSP_lane0 && (! execute_freeze_valid));
  always @(*) begin
    LsuCachelessPlugin_logic_onJoin_rspCounter_willIncrement = 1'b0;
    if(LsuCachelessPlugin_logic_onJoin_pop) begin
      LsuCachelessPlugin_logic_onJoin_rspCounter_willIncrement = 1'b1;
    end
  end

  assign LsuCachelessPlugin_logic_onJoin_rspCounter_willClear = 1'b0;
  assign LsuCachelessPlugin_logic_onJoin_rspCounter_willOverflowIfInc = (LsuCachelessPlugin_logic_onJoin_rspCounter_value == 1'b1);
  assign LsuCachelessPlugin_logic_onJoin_rspCounter_willOverflow = (LsuCachelessPlugin_logic_onJoin_rspCounter_willOverflowIfInc && LsuCachelessPlugin_logic_onJoin_rspCounter_willIncrement);
  always @(*) begin
    LsuCachelessPlugin_logic_onJoin_rspCounter_valueNext = (LsuCachelessPlugin_logic_onJoin_rspCounter_value + LsuCachelessPlugin_logic_onJoin_rspCounter_willIncrement);
    if(LsuCachelessPlugin_logic_onJoin_rspCounter_willClear) begin
      LsuCachelessPlugin_logic_onJoin_rspCounter_valueNext = 1'b0;
    end
  end

  assign LsuCachelessPlugin_logic_onJoin_readerValid = _zz_LsuCachelessPlugin_logic_onJoin_readerValid;
  assign LsuCachelessPlugin_logic_onJoin_busRspHit = (LsuCachelessPlugin_logic_bus_rsp_valid && (LsuCachelessPlugin_logic_bus_rsp_payload_id == LsuCachelessPlugin_logic_onJoin_rspCounter_value));
  assign LsuCachelessPlugin_logic_onJoin_rspValid = (LsuCachelessPlugin_logic_onJoin_readerValid || LsuCachelessPlugin_logic_onJoin_busRspHit);
  assign LsuCachelessPlugin_logic_onJoin_rspPayload_error = (LsuCachelessPlugin_logic_onJoin_readerValid ? _zz_LsuCachelessPlugin_logic_onJoin_rspPayload_error : LsuCachelessPlugin_logic_onJoin_busRspWithoutId_error);
  assign LsuCachelessPlugin_logic_onJoin_rspPayload_data = (LsuCachelessPlugin_logic_onJoin_readerValid ? _zz_LsuCachelessPlugin_logic_onJoin_rspPayload_data : LsuCachelessPlugin_logic_onJoin_busRspWithoutId_data);
  assign execute_ctrl3_down_LsuCachelessPlugin_logic_onJoin_SC_MISS_lane0 = 1'b0;
  assign execute_ctrl3_down_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0 = LsuCachelessPlugin_logic_onJoin_rspPayload_data;
  assign execute_ctrl3_up_LsuCachelessPlugin_WITH_ACCESS_lane0 = 1'b0;
  assign LsuCachelessPlugin_logic_onWb_rspSplits_0 = execute_ctrl4_down_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0[7 : 0];
  assign LsuCachelessPlugin_logic_onWb_rspSplits_1 = execute_ctrl4_down_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0[15 : 8];
  assign LsuCachelessPlugin_logic_onWb_rspSplits_2 = execute_ctrl4_down_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0[23 : 16];
  assign LsuCachelessPlugin_logic_onWb_rspSplits_3 = execute_ctrl4_down_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0[31 : 24];
  always @(*) begin
    LsuCachelessPlugin_logic_onWb_rspShifted[7 : 0] = _zz_LsuCachelessPlugin_logic_onWb_rspShifted;
    LsuCachelessPlugin_logic_onWb_rspShifted[15 : 8] = _zz_LsuCachelessPlugin_logic_onWb_rspShifted_3;
    LsuCachelessPlugin_logic_onWb_rspShifted[23 : 16] = LsuCachelessPlugin_logic_onWb_rspSplits_2;
    LsuCachelessPlugin_logic_onWb_rspShifted[31 : 24] = LsuCachelessPlugin_logic_onWb_rspSplits_3;
  end

  assign LsuCachelessPlugin_logic_iwb_valid = (execute_ctrl4_down_AguPlugin_SEL_lane0 && (! execute_ctrl4_down_AguPlugin_FLOAT_lane0));
  assign LsuCachelessPlugin_logic_iwb_payload = LsuCachelessPlugin_logic_onWb_rspShifted;
  assign DispatchPlugin_logic_trapPendings[0] = 1'b0;
  assign DispatchPlugin_logic_candidates_0_moving = (((! DispatchPlugin_logic_candidates_0_ctx_valid) || DispatchPlugin_logic_candidates_0_fire) || DispatchPlugin_logic_candidates_0_cancel);
  assign DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard = (DispatchPlugin_logic_candidates_0_ctx_hm_RS1_ENABLE && (|{((((DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0 && execute_ctrl4_up_RD_ENABLE_lane0) && (execute_ctrl4_up_RD_PHYS_lane0 == DispatchPlugin_logic_candidates_0_ctx_hm_RS1_PHYS)) && 1'b1) && (! execute_ctrl4_down_BYPASSED_AT_4_lane0)),{(((_zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard && _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_1) && 1'b1) && (! execute_ctrl3_down_BYPASSED_AT_3_lane0)),{((_zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_2 && _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_3) && (! execute_ctrl2_down_BYPASSED_AT_2_lane0)),((_zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_4 && _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard_5) && (! execute_ctrl1_down_BYPASSED_AT_1_lane0))}}}));
  assign DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard = (DispatchPlugin_logic_candidates_0_ctx_hm_RS2_ENABLE && (|{((((DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0 && execute_ctrl4_up_RD_ENABLE_lane0) && (execute_ctrl4_up_RD_PHYS_lane0 == DispatchPlugin_logic_candidates_0_ctx_hm_RS2_PHYS)) && 1'b1) && (! execute_ctrl4_down_BYPASSED_AT_4_lane0)),{(((_zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard && _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_1) && 1'b1) && (! execute_ctrl3_down_BYPASSED_AT_3_lane0)),{((_zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_2 && _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_3) && (! execute_ctrl2_down_BYPASSED_AT_2_lane0)),((_zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_4 && _zz_DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard_5) && (! execute_ctrl1_down_BYPASSED_AT_1_lane0))}}}));
  assign DispatchPlugin_logic_candidates_0_rsHazards[0] = (|{DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_1_hazard,DispatchPlugin_logic_rsHazardChecker_0_onLl_0_onRs_0_hazard});
  assign DispatchPlugin_logic_reservationChecker_0_onLl_0_hit = 1'b0;
  assign DispatchPlugin_logic_candidates_0_reservationHazards[0] = DispatchPlugin_logic_reservationChecker_0_onLl_0_hit;
  assign DispatchPlugin_logic_flushChecker_0_oldersHazard = 1'b0;
  assign DispatchPlugin_logic_candidates_0_flushHazards = (1'b0 || (DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_DONT_FLUSH_FROM_LANES && DispatchPlugin_logic_flushChecker_0_oldersHazard));
  assign DispatchPlugin_logic_fenceChecker_olderInflights = (|execute_lane0_api_hartsInflight[0]);
  assign DispatchPlugin_logic_candidates_0_fenceOlderHazards = (DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_FENCE_OLDER && (DispatchPlugin_logic_fenceChecker_olderInflights[0] || 1'b0));
  always @(*) begin
    decode_ctrls_1_down_ready = 1'b1;
    if(when_DispatchPlugin_l368) begin
      decode_ctrls_1_down_ready = 1'b0;
    end
  end

  assign DispatchPlugin_logic_feeds_0_sending = DispatchPlugin_logic_candidates_0_fire;
  assign DispatchPlugin_logic_candidates_0_cancel = decode_ctrls_1_lane0_upIsCancel;
  assign DispatchPlugin_logic_candidates_0_ctx_valid = ((decode_ctrls_1_up_isValid && decode_ctrls_1_up_LANE_SEL_0) && (! DispatchPlugin_logic_feeds_0_sent));
  always @(*) begin
    DispatchPlugin_logic_candidates_0_ctx_laneLayerHits = decode_ctrls_1_down_DispatchPlugin_logic_LANES_LAYER_HIT_0_0;
    if(decode_ctrls_1_down_TRAP_0) begin
      DispatchPlugin_logic_candidates_0_ctx_laneLayerHits = 1'b1;
    end
  end

  assign DispatchPlugin_logic_candidates_0_ctx_uop = decode_ctrls_1_down_Decode_UOP_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_FENCE_OLDER = decode_ctrls_1_down_DispatchPlugin_FENCE_OLDER_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_MAY_FLUSH = decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_DONT_FLUSH = decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_DONT_FLUSH_FROM_LANES = decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_PC = decode_ctrls_1_down_PC_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_TRAP = decode_ctrls_1_down_TRAP_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_Decode_UOP_ID = decode_ctrls_1_down_Decode_UOP_ID_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_RS1_ENABLE = decode_ctrls_1_down_RS1_ENABLE_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_RS1_PHYS = decode_ctrls_1_down_RS1_PHYS_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_RS2_ENABLE = decode_ctrls_1_down_RS2_ENABLE_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_RS2_PHYS = decode_ctrls_1_down_RS2_PHYS_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_RD_ENABLE = decode_ctrls_1_down_RD_ENABLE_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_RD_PHYS = decode_ctrls_1_down_RD_PHYS_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0 = decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0_0;
  assign DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0 = decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0;
  assign when_DispatchPlugin_l368 = ((decode_ctrls_1_up_LANE_SEL_0 && (! DispatchPlugin_logic_feeds_0_sent)) && (! DispatchPlugin_logic_candidates_0_fire));
  assign DispatchPlugin_logic_scheduler_eusFree_0 = 1'b1;
  assign DispatchPlugin_logic_scheduler_hartFree_0 = 1'b1;
  assign DispatchPlugin_logic_scheduler_arbiters_0_candHazard = 1'b0;
  assign DispatchPlugin_logic_scheduler_arbiters_0_layersHits = (((DispatchPlugin_logic_candidates_0_ctx_laneLayerHits & (~ DispatchPlugin_logic_candidates_0_rsHazards)) & (~ DispatchPlugin_logic_candidates_0_reservationHazards)) & DispatchPlugin_logic_scheduler_eusFree_0[0]);
  assign DispatchPlugin_logic_scheduler_arbiters_0_layersHits_bools_0 = DispatchPlugin_logic_scheduler_arbiters_0_layersHits[0];
  assign _zz_DispatchPlugin_logic_scheduler_arbiters_0_layerOh[0] = (DispatchPlugin_logic_scheduler_arbiters_0_layersHits_bools_0 && (! 1'b0));
  assign DispatchPlugin_logic_scheduler_arbiters_0_layerOh = _zz_DispatchPlugin_logic_scheduler_arbiters_0_layerOh;
  assign DispatchPlugin_logic_scheduler_arbiters_0_eusOh = (|DispatchPlugin_logic_scheduler_arbiters_0_layerOh[0]);
  assign DispatchPlugin_logic_scheduler_arbiters_0_doIt = (((((DispatchPlugin_logic_candidates_0_ctx_valid && (! DispatchPlugin_logic_candidates_0_flushHazards)) && (! DispatchPlugin_logic_candidates_0_fenceOlderHazards)) && (|DispatchPlugin_logic_scheduler_arbiters_0_layerOh)) && DispatchPlugin_logic_scheduler_hartFree_0[0]) && (! DispatchPlugin_logic_scheduler_arbiters_0_candHazard));
  assign DispatchPlugin_logic_scheduler_eusFree_1 = (DispatchPlugin_logic_scheduler_eusFree_0 & ((! DispatchPlugin_logic_scheduler_arbiters_0_doIt) ? 1'b1 : (~ DispatchPlugin_logic_scheduler_arbiters_0_eusOh)));
  assign DispatchPlugin_logic_scheduler_hartFree_1 = (DispatchPlugin_logic_scheduler_hartFree_0 & (((! DispatchPlugin_logic_candidates_0_ctx_valid) || DispatchPlugin_logic_scheduler_arbiters_0_doIt) ? 1'b1 : (~ 1'b1)));
  assign DispatchPlugin_logic_candidates_0_fire = ((DispatchPlugin_logic_scheduler_arbiters_0_doIt && (! execute_freeze_valid)) && (! DispatchPlugin_api_haltDispatch));
  assign DispatchPlugin_logic_inserter_0_oh = (DispatchPlugin_logic_scheduler_arbiters_0_doIt && DispatchPlugin_logic_scheduler_arbiters_0_eusOh[0]);
  assign DispatchPlugin_logic_inserter_0_trap = DispatchPlugin_logic_candidates_0_ctx_hm_TRAP;
  assign execute_ctrl0_up_LANE_SEL_lane0 = (((|DispatchPlugin_logic_inserter_0_oh) && (! DispatchPlugin_logic_candidates_0_cancel)) && (! DispatchPlugin_api_haltDispatch));
  assign execute_ctrl0_up_Decode_UOP_lane0 = DispatchPlugin_logic_candidates_0_ctx_uop;
  assign execute_ctrl0_up_DispatchPlugin_FENCE_OLDER_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_FENCE_OLDER;
  always @(*) begin
    execute_ctrl0_up_DispatchPlugin_MAY_FLUSH_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_MAY_FLUSH;
    if(when_DispatchPlugin_l439) begin
      execute_ctrl0_up_DispatchPlugin_MAY_FLUSH_lane0 = 1'b0;
    end
  end

  assign execute_ctrl0_up_DispatchPlugin_DONT_FLUSH_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_DONT_FLUSH;
  assign execute_ctrl0_up_DispatchPlugin_DONT_FLUSH_FROM_LANES_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_DONT_FLUSH_FROM_LANES;
  assign execute_ctrl0_up_PC_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_PC;
  assign execute_ctrl0_up_TRAP_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_TRAP;
  assign execute_ctrl0_up_Decode_UOP_ID_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_Decode_UOP_ID;
  assign execute_ctrl0_up_RS1_ENABLE_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_RS1_ENABLE;
  assign execute_ctrl0_up_RS1_PHYS_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_RS1_PHYS;
  assign execute_ctrl0_up_RS2_ENABLE_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_RS2_ENABLE;
  assign execute_ctrl0_up_RS2_PHYS_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_RS2_PHYS;
  always @(*) begin
    execute_ctrl0_up_RD_ENABLE_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_RD_ENABLE;
    if(when_DispatchPlugin_l439) begin
      execute_ctrl0_up_RD_ENABLE_lane0 = 1'b0;
    end
  end

  assign execute_ctrl0_up_RD_PHYS_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_RD_PHYS;
  assign execute_ctrl0_up_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0;
  assign execute_ctrl0_up_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_lane0 = DispatchPlugin_logic_candidates_0_ctx_hm_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0;
  assign when_DispatchPlugin_l439 = ((! execute_ctrl0_up_LANE_SEL_lane0) || DispatchPlugin_logic_inserter_0_trap);
  assign execute_ctrl0_up_COMPLETED_lane0 = DispatchPlugin_logic_inserter_0_trap;
  assign DispatchPlugin_logic_inserter_0_layerOhUnfiltred = (DispatchPlugin_logic_inserter_0_oh[0] ? DispatchPlugin_logic_scheduler_arbiters_0_layerOh : 1'b0);
  assign DispatchPlugin_logic_inserter_0_layer_0_1 = DispatchPlugin_logic_inserter_0_layerOhUnfiltred[0];
  assign lane0_integer_WriteBackPlugin_logic_stages_0_hits = {lane0_IntFormatPlugin_logic_stages_0_wb_valid,early0_BranchPlugin_logic_wb_valid};
  assign lane0_integer_WriteBackPlugin_logic_stages_0_muxed = ((lane0_integer_WriteBackPlugin_logic_stages_0_hits[0] ? early0_BranchPlugin_logic_wb_payload : 32'h0) | (lane0_integer_WriteBackPlugin_logic_stages_0_hits[1] ? lane0_IntFormatPlugin_logic_stages_0_wb_payload : 32'h0));
  assign execute_ctrl2_lane0_integer_WriteBackPlugin_logic_DATA_lane0_bypass = lane0_integer_WriteBackPlugin_logic_stages_0_muxed;
  assign lane0_integer_WriteBackPlugin_logic_stages_0_write_valid = (((((execute_ctrl2_down_LANE_SEL_lane0 && execute_ctrl2_down_isReady) && (! execute_lane0_ctrls_2_downIsCancel)) && (|lane0_integer_WriteBackPlugin_logic_stages_0_hits)) && execute_ctrl2_up_RD_ENABLE_lane0) && execute_ctrl2_down_COMMIT_lane0);
  assign lane0_integer_WriteBackPlugin_logic_stages_0_write_payload_uopId = execute_ctrl2_down_Decode_UOP_ID_lane0;
  assign lane0_integer_WriteBackPlugin_logic_stages_0_write_payload_data = lane0_integer_WriteBackPlugin_logic_stages_0_muxed;
  assign lane0_integer_WriteBackPlugin_logic_stages_1_hits = lane0_IntFormatPlugin_logic_stages_1_wb_valid;
  assign lane0_integer_WriteBackPlugin_logic_stages_1_muxed = (lane0_integer_WriteBackPlugin_logic_stages_1_hits[0] ? lane0_IntFormatPlugin_logic_stages_1_wb_payload : 32'h0);
  assign lane0_integer_WriteBackPlugin_logic_stages_1_merged = (execute_ctrl3_up_lane0_integer_WriteBackPlugin_logic_DATA_lane0 | lane0_integer_WriteBackPlugin_logic_stages_1_muxed);
  assign execute_ctrl3_lane0_integer_WriteBackPlugin_logic_DATA_lane0_bypass = lane0_integer_WriteBackPlugin_logic_stages_1_merged;
  assign lane0_integer_WriteBackPlugin_logic_stages_1_write_valid = (((((execute_ctrl3_down_LANE_SEL_lane0 && execute_ctrl3_down_isReady) && (! execute_lane0_ctrls_3_downIsCancel)) && (|lane0_integer_WriteBackPlugin_logic_stages_1_hits)) && execute_ctrl3_up_RD_ENABLE_lane0) && execute_ctrl3_down_COMMIT_lane0);
  assign lane0_integer_WriteBackPlugin_logic_stages_1_write_payload_uopId = execute_ctrl3_down_Decode_UOP_ID_lane0;
  assign lane0_integer_WriteBackPlugin_logic_stages_1_write_payload_data = lane0_integer_WriteBackPlugin_logic_stages_1_muxed;
  assign lane0_integer_WriteBackPlugin_logic_stages_2_hits = lane0_IntFormatPlugin_logic_stages_2_wb_valid;
  assign lane0_integer_WriteBackPlugin_logic_stages_2_muxed = (lane0_integer_WriteBackPlugin_logic_stages_2_hits[0] ? lane0_IntFormatPlugin_logic_stages_2_wb_payload : 32'h0);
  assign lane0_integer_WriteBackPlugin_logic_stages_2_merged = (execute_ctrl4_up_lane0_integer_WriteBackPlugin_logic_DATA_lane0 | lane0_integer_WriteBackPlugin_logic_stages_2_muxed);
  assign execute_ctrl4_lane0_integer_WriteBackPlugin_logic_DATA_lane0_bypass = lane0_integer_WriteBackPlugin_logic_stages_2_merged;
  assign lane0_integer_WriteBackPlugin_logic_stages_2_write_valid = (((((execute_ctrl4_down_LANE_SEL_lane0 && execute_ctrl4_down_isReady) && (! execute_lane0_ctrls_4_downIsCancel)) && (|lane0_integer_WriteBackPlugin_logic_stages_2_hits)) && execute_ctrl4_up_RD_ENABLE_lane0) && execute_ctrl4_down_COMMIT_lane0);
  assign lane0_integer_WriteBackPlugin_logic_stages_2_write_payload_uopId = execute_ctrl4_down_Decode_UOP_ID_lane0;
  assign lane0_integer_WriteBackPlugin_logic_stages_2_write_payload_data = lane0_integer_WriteBackPlugin_logic_stages_2_muxed;
  assign lane0_integer_WriteBackPlugin_logic_write_port_valid = (((((execute_ctrl4_up_LANE_SEL_lane0 && execute_ctrl4_down_isReady) && (! execute_lane0_ctrls_4_upIsCancel)) && execute_ctrl4_up_RD_ENABLE_lane0) && execute_ctrl4_down_lane0_integer_WriteBackPlugin_SEL_lane0) && execute_ctrl4_down_COMMIT_lane0);
  assign lane0_integer_WriteBackPlugin_logic_write_port_address = execute_ctrl4_down_RD_PHYS_lane0[4 : 0];
  assign lane0_integer_WriteBackPlugin_logic_write_port_data = execute_ctrl4_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
  assign lane0_integer_WriteBackPlugin_logic_write_port_uopId = execute_ctrl4_down_Decode_UOP_ID_lane0;
  assign _zz_CsrRamPlugin_csrMapper_ramAddress = CsrAccessPlugin_bus_decode_address;
  assign CsrRamPlugin_csrMapper_ramAddress = {(|{((_zz_CsrRamPlugin_csrMapper_ramAddress & 12'h002) == 12'h002),((_zz_CsrRamPlugin_csrMapper_ramAddress & 12'h040) == 12'h0)}),(|((_zz_CsrRamPlugin_csrMapper_ramAddress & 12'h003) == 12'h001))};
  always @(*) begin
    CsrRamPlugin_csrMapper_withRead = 1'b0;
    if(when_CsrAccessPlugin_l258) begin
      CsrRamPlugin_csrMapper_withRead = 1'b1;
    end
  end

  assign CsrRamPlugin_csrMapper_read_valid = (CsrRamPlugin_csrMapper_withRead && (! CsrRamPlugin_api_holdRead));
  assign CsrRamPlugin_csrMapper_read_address = CsrRamPlugin_csrMapper_ramAddress;
  assign when_CsrRamPlugin_l90 = (CsrRamPlugin_csrMapper_withRead && (! CsrRamPlugin_csrMapper_read_ready));
  always @(*) begin
    CsrRamPlugin_csrMapper_doWrite = 1'b0;
    if(when_CsrAccessPlugin_l349_2) begin
      CsrRamPlugin_csrMapper_doWrite = 1'b1;
    end
  end

  assign when_CsrRamPlugin_l97 = (CsrRamPlugin_csrMapper_write_valid && CsrRamPlugin_csrMapper_write_ready);
  assign CsrRamPlugin_csrMapper_write_valid = ((CsrRamPlugin_csrMapper_doWrite && (! CsrRamPlugin_csrMapper_fired)) && (! CsrRamPlugin_api_holdWrite));
  assign CsrRamPlugin_csrMapper_write_address = CsrRamPlugin_csrMapper_ramAddress;
  assign CsrRamPlugin_csrMapper_write_data = CsrAccessPlugin_bus_write_bits;
  assign when_CsrRamPlugin_l101 = ((CsrRamPlugin_csrMapper_doWrite && (! CsrRamPlugin_csrMapper_fired)) && (! CsrRamPlugin_csrMapper_write_ready));
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdHash = LsuCachelessPlugin_logic_bus_cmd_payload_address[9 : 2];
  assign LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_hazard = (LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_valid && (((LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_hash == LsuCachelessAxi4Plugin_logic_bridge_cmdHash) && (|(LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_mask & LsuCachelessPlugin_logic_bus_cmd_payload_mask))) || (LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_io && LsuCachelessPlugin_logic_bus_cmd_payload_io)));
  assign LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_hazard = (LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_valid && (((LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_hash == LsuCachelessAxi4Plugin_logic_bridge_cmdHash) && (|(LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_mask & LsuCachelessPlugin_logic_bus_cmd_payload_mask))) || (LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_io && LsuCachelessPlugin_logic_bus_cmd_payload_io)));
  assign LsuCachelessAxi4Plugin_logic_bridge_tracker_hazard = (|{LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_hazard,LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_hazard});
  assign _zz_LsuCachelessPlugin_logic_bus_cmd_ready = (! LsuCachelessAxi4Plugin_logic_bridge_tracker_hazard);
  assign LsuCachelessPlugin_logic_bus_cmd_haltWhen_valid = (LsuCachelessPlugin_logic_bus_cmd_valid && _zz_LsuCachelessPlugin_logic_bus_cmd_ready);
  assign LsuCachelessPlugin_logic_bus_cmd_ready = (LsuCachelessPlugin_logic_bus_cmd_haltWhen_ready && _zz_LsuCachelessPlugin_logic_bus_cmd_ready);
  assign LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_id = LsuCachelessPlugin_logic_bus_cmd_payload_id;
  assign LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_write = LsuCachelessPlugin_logic_bus_cmd_payload_write;
  assign LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_address = LsuCachelessPlugin_logic_bus_cmd_payload_address;
  assign LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_data = LsuCachelessPlugin_logic_bus_cmd_payload_data;
  assign LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_size = LsuCachelessPlugin_logic_bus_cmd_payload_size;
  assign LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_mask = LsuCachelessPlugin_logic_bus_cmd_payload_mask;
  assign LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_io = LsuCachelessPlugin_logic_bus_cmd_payload_io;
  assign LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_fromHart = LsuCachelessPlugin_logic_bus_cmd_payload_fromHart;
  assign LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_uopId = LsuCachelessPlugin_logic_bus_cmd_payload_uopId;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_valid = LsuCachelessPlugin_logic_bus_cmd_haltWhen_valid;
  assign LsuCachelessPlugin_logic_bus_cmd_haltWhen_ready = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_ready;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_id = LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_id;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_write = LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_write;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_address = LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_address;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_data = LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_data;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_size = LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_size;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_mask = LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_mask;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_io = LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_io;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_fromHart = LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_fromHart;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_uopId = LsuCachelessPlugin_logic_bus_cmd_haltWhen_payload_uopId;
  always @(*) begin
    LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_ready = 1'b1;
    if(when_Stream_l1253) begin
      LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_ready = 1'b0;
    end
    if(when_Stream_l1253_1) begin
      LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_ready = 1'b0;
    end
  end

  assign when_Stream_l1253 = ((! LsuCachelessAxi4Plugin_logic_bridge_cmdFork_ready) && LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_0);
  assign when_Stream_l1253_1 = ((! LsuCachelessAxi4Plugin_logic_bridge_dataFork_ready) && LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_1);
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_valid = (LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_valid && LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_0);
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_id = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_id;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_write = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_write;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_address = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_address;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_data = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_data;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_size = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_size;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_mask = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_mask;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_io = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_io;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_fromHart = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_fromHart;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_uopId = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_uopId;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_fire = (LsuCachelessAxi4Plugin_logic_bridge_cmdFork_valid && LsuCachelessAxi4Plugin_logic_bridge_cmdFork_ready);
  assign LsuCachelessAxi4Plugin_logic_bridge_dataFork_valid = (LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_valid && LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_1);
  assign LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_id = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_id;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_write = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_write;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_address = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_address;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_data = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_data;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_size = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_size;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_mask = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_mask;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_io = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_io;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_fromHart = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_fromHart;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_uopId = LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_payload_uopId;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataFork_fire = (LsuCachelessAxi4Plugin_logic_bridge_dataFork_valid && LsuCachelessAxi4Plugin_logic_bridge_dataFork_ready);
  assign LsuCachelessAxi4Plugin_logic_bridge_down_arw_valid = LsuCachelessAxi4Plugin_logic_bridge_cmdFork_valid;
  assign LsuCachelessAxi4Plugin_logic_bridge_cmdFork_ready = LsuCachelessAxi4Plugin_logic_bridge_down_arw_ready;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_write = LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_write;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_prot = 3'b010;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_cache = (LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_io ? 4'b0000 : 4'b1111);
  assign LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_size = {1'd0, LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_size};
  assign LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_addr = LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_address;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_id = LsuCachelessAxi4Plugin_logic_bridge_cmdFork_payload_id;
  assign when_Stream_l581 = (! LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_write);
  always @(*) begin
    LsuCachelessAxi4Plugin_logic_bridge_dataStage_valid = LsuCachelessAxi4Plugin_logic_bridge_dataFork_valid;
    if(when_Stream_l581) begin
      LsuCachelessAxi4Plugin_logic_bridge_dataStage_valid = 1'b0;
    end
  end

  always @(*) begin
    LsuCachelessAxi4Plugin_logic_bridge_dataFork_ready = LsuCachelessAxi4Plugin_logic_bridge_dataStage_ready;
    if(when_Stream_l581) begin
      LsuCachelessAxi4Plugin_logic_bridge_dataFork_ready = 1'b1;
    end
  end

  assign LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_id = LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_id;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_write = LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_write;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_address = LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_address;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_data = LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_data;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_size = LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_size;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_mask = LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_mask;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_io = LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_io;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_fromHart = LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_fromHart;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_uopId = LsuCachelessAxi4Plugin_logic_bridge_dataFork_payload_uopId;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_w_valid = LsuCachelessAxi4Plugin_logic_bridge_dataStage_valid;
  assign LsuCachelessAxi4Plugin_logic_bridge_dataStage_ready = LsuCachelessAxi4Plugin_logic_bridge_down_w_ready;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_w_payload_last = 1'b1;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_w_payload_data = LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_data;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_w_payload_strb = LsuCachelessAxi4Plugin_logic_bridge_dataStage_payload_mask;
  always @(*) begin
    LsuCachelessPlugin_logic_bus_rsp_valid = LsuCachelessAxi4Plugin_logic_bridge_down_b_valid;
    if(LsuCachelessAxi4Plugin_logic_bridge_down_r_valid) begin
      LsuCachelessPlugin_logic_bus_rsp_valid = LsuCachelessAxi4Plugin_logic_bridge_down_r_valid;
    end
  end

  always @(*) begin
    LsuCachelessPlugin_logic_bus_rsp_payload_error = (! (LsuCachelessAxi4Plugin_logic_bridge_down_b_payload_resp == 2'b00));
    if(LsuCachelessAxi4Plugin_logic_bridge_down_r_valid) begin
      LsuCachelessPlugin_logic_bus_rsp_payload_error = (! (LsuCachelessAxi4Plugin_logic_bridge_down_r_payload_resp == 2'b00));
    end
  end

  always @(*) begin
    LsuCachelessPlugin_logic_bus_rsp_payload_id = LsuCachelessAxi4Plugin_logic_bridge_down_b_payload_id;
    if(LsuCachelessAxi4Plugin_logic_bridge_down_r_valid) begin
      LsuCachelessPlugin_logic_bus_rsp_payload_id = LsuCachelessAxi4Plugin_logic_bridge_down_r_payload_id;
    end
  end

  assign LsuCachelessPlugin_logic_bus_rsp_payload_data = LsuCachelessAxi4Plugin_logic_bridge_down_r_payload_data;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_r_ready = 1'b1;
  always @(*) begin
    LsuCachelessAxi4Plugin_logic_bridge_down_b_ready = 1'b1;
    if(LsuCachelessAxi4Plugin_logic_bridge_down_r_valid) begin
      LsuCachelessAxi4Plugin_logic_bridge_down_b_ready = 1'b0;
    end
  end

  assign LsuCachelessAxi4Plugin_logic_axi_ar_payload_addr = LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_addr;
  assign LsuCachelessAxi4Plugin_logic_axi_ar_payload_id = LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_id;
  assign LsuCachelessAxi4Plugin_logic_axi_ar_payload_size = LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_size;
  assign LsuCachelessAxi4Plugin_logic_axi_ar_payload_cache = LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_cache;
  assign LsuCachelessAxi4Plugin_logic_axi_ar_payload_prot = LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_prot;
  assign LsuCachelessAxi4Plugin_logic_axi_aw_payload_addr = LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_addr;
  assign LsuCachelessAxi4Plugin_logic_axi_aw_payload_id = LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_id;
  assign LsuCachelessAxi4Plugin_logic_axi_aw_payload_size = LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_size;
  assign LsuCachelessAxi4Plugin_logic_axi_aw_payload_cache = LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_cache;
  assign LsuCachelessAxi4Plugin_logic_axi_aw_payload_prot = LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_prot;
  assign LsuCachelessAxi4Plugin_logic_axi_ar_valid = (LsuCachelessAxi4Plugin_logic_bridge_down_arw_valid && (! LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_write));
  assign LsuCachelessAxi4Plugin_logic_axi_aw_valid = (LsuCachelessAxi4Plugin_logic_bridge_down_arw_valid && LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_write);
  assign LsuCachelessAxi4Plugin_logic_bridge_down_arw_ready = (LsuCachelessAxi4Plugin_logic_bridge_down_arw_payload_write ? LsuCachelessAxi4Plugin_logic_axi_aw_ready : LsuCachelessAxi4Plugin_logic_axi_ar_ready);
  assign LsuCachelessAxi4Plugin_logic_axi_w_valid = LsuCachelessAxi4Plugin_logic_bridge_down_w_valid;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_w_ready = LsuCachelessAxi4Plugin_logic_axi_w_ready;
  assign LsuCachelessAxi4Plugin_logic_axi_w_payload_data = LsuCachelessAxi4Plugin_logic_bridge_down_w_payload_data;
  assign LsuCachelessAxi4Plugin_logic_axi_w_payload_strb = LsuCachelessAxi4Plugin_logic_bridge_down_w_payload_strb;
  assign LsuCachelessAxi4Plugin_logic_axi_w_payload_last = LsuCachelessAxi4Plugin_logic_bridge_down_w_payload_last;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_r_valid = LsuCachelessAxi4Plugin_logic_axi_r_valid;
  assign LsuCachelessAxi4Plugin_logic_axi_r_ready = LsuCachelessAxi4Plugin_logic_bridge_down_r_ready;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_r_payload_data = LsuCachelessAxi4Plugin_logic_axi_r_payload_data;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_r_payload_id = LsuCachelessAxi4Plugin_logic_axi_r_payload_id;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_r_payload_resp = LsuCachelessAxi4Plugin_logic_axi_r_payload_resp;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_r_payload_last = LsuCachelessAxi4Plugin_logic_axi_r_payload_last;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_b_valid = LsuCachelessAxi4Plugin_logic_axi_b_valid;
  assign LsuCachelessAxi4Plugin_logic_axi_b_ready = LsuCachelessAxi4Plugin_logic_bridge_down_b_ready;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_b_payload_id = LsuCachelessAxi4Plugin_logic_axi_b_payload_id;
  assign LsuCachelessAxi4Plugin_logic_bridge_down_b_payload_resp = LsuCachelessAxi4Plugin_logic_axi_b_payload_resp;
  assign LsuCachelessPlugin_pmaBuilder_addressBits = LsuCachelessPlugin_logic_onPma_port_cmd_address;
  assign LsuCachelessPlugin_pmaBuilder_argsBits = {LsuCachelessPlugin_logic_onPma_port_cmd_size,LsuCachelessPlugin_logic_onPma_port_cmd_op};
  assign LsuCachelessPlugin_pmaBuilder_onTransfers_0_addressHit = _zz_LsuCachelessPlugin_pmaBuilder_onTransfers_0_addressHit[0];
  assign LsuCachelessPlugin_pmaBuilder_onTransfers_0_argsHit = (|((LsuCachelessPlugin_pmaBuilder_argsBits & 3'b000) == 3'b000));
  assign LsuCachelessPlugin_pmaBuilder_onTransfers_0_hit = (LsuCachelessPlugin_pmaBuilder_onTransfers_0_argsHit && LsuCachelessPlugin_pmaBuilder_onTransfers_0_addressHit);
  assign _zz_LsuCachelessPlugin_logic_onPma_port_rsp_fault = ((LsuCachelessPlugin_pmaBuilder_addressBits & 32'h80000000) == 32'h80000000);
  assign LsuCachelessPlugin_logic_onPma_port_rsp_fault = (! ((|{_zz_LsuCachelessPlugin_logic_onPma_port_rsp_fault,((LsuCachelessPlugin_pmaBuilder_addressBits & 32'hf0000000) == 32'h10000000)}) && (|LsuCachelessPlugin_pmaBuilder_onTransfers_0_hit)));
  assign LsuCachelessPlugin_logic_onPma_port_rsp_io = (! _zz_LsuCachelessPlugin_logic_onPma_port_rsp_io[0]);
  assign decode_ctrls_1_down_DecoderPlugin_logic_NEED_FPU_0 = _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_FPU_0[0];
  assign decode_ctrls_1_down_DecoderPlugin_logic_NEED_RM_0 = _zz_decode_ctrls_1_down_DecoderPlugin_logic_NEED_RM_0[0];
  assign _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h0) == 32'h0);
  assign decode_ctrls_1_down_DispatchPlugin_logic_LANES_LAYER_HIT_0_0 = _zz_decode_ctrls_1_down_DispatchPlugin_logic_LANES_LAYER_HIT_0_0[0];
  assign decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0 = _zz_decode_ctrls_1_down_DispatchPlugin_MAY_FLUSH_0_1[0];
  assign decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_0 = _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_0[0];
  assign _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00002050) == 32'h00002050);
  assign _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0_1 = ((decode_ctrls_1_down_Decode_INSTRUCTION_0 & 32'h00001050) == 32'h00001050);
  assign decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0 = _zz_decode_ctrls_1_down_DispatchPlugin_DONT_FLUSH_FROM_LANES_0_2[0];
  assign decode_ctrls_1_down_DispatchPlugin_FENCE_OLDER_0 = _zz_decode_ctrls_1_down_DispatchPlugin_FENCE_OLDER_0[0];
  assign decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0_0 = _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_0_ENABLES_0_0[0];
  assign decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0 = _zz_decode_ctrls_1_down_DispatchPlugin_logic_hcs_0_onRs_1_ENABLES_0_0_1[0];
  assign when_CtrlLaneApi_l50_2 = (decode_ctrls_1_up_isReady || decode_ctrls_1_lane0_upIsCancel);
  assign WhiteboxerPlugin_logic_serializeds_0_fire = (decode_ctrls_1_up_LANE_SEL_0 && (! decode_ctrls_1_up_LANE_SEL_0_regNext_1));
  assign WhiteboxerPlugin_logic_serializeds_0_decodeId = decode_ctrls_1_down_Decode_DOP_ID_0;
  assign WhiteboxerPlugin_logic_serializeds_0_microOpId = decode_ctrls_1_down_Decode_UOP_ID_0;
  assign WhiteboxerPlugin_logic_serializeds_0_microOp = decode_ctrls_1_down_Decode_UOP_0;
  assign when_CtrlLaneApi_l50_3 = (execute_ctrl0_down_isReady || execute_lane0_ctrls_0_downIsCancel);
  assign WhiteboxerPlugin_logic_dispatches_0_fire = (execute_ctrl0_down_LANE_SEL_lane0 && (! execute_ctrl0_down_LANE_SEL_lane0_regNext));
  assign WhiteboxerPlugin_logic_dispatches_0_microOpId = execute_ctrl0_down_Decode_UOP_ID_lane0;
  assign when_CtrlLaneApi_l50_4 = (execute_ctrl2_down_isReady || execute_lane0_ctrls_2_downIsCancel);
  assign WhiteboxerPlugin_logic_executes_0_fire = ((execute_ctrl2_down_LANE_SEL_lane0 && (! execute_ctrl2_down_LANE_SEL_lane0_regNext)) && execute_ctrl2_down_COMMIT_lane0);
  assign WhiteboxerPlugin_logic_executes_0_microOpId = execute_ctrl2_down_Decode_UOP_ID_lane0;
  assign AlignerPlugin_logic_nobuffer_flushIt = (|{(DecoderPlugin_logic_laneLogic_0_flushPort_valid && 1'b1),{(early0_EnvPlugin_logic_flushPort_valid && 1'b1),{(CsrAccessPlugin_logic_flushPort_valid && 1'b1),{(early0_BranchPlugin_logic_flushPort_valid && 1'b1),(LsuCachelessPlugin_logic_flushPort_valid && 1'b1)}}}});
  assign when_AlignerPlugin_l298 = ((AlignerPlugin_logic_nobuffer_flushIt || (! fetch_logic_ctrls_1_down_isValid)) || fetch_logic_ctrls_1_down_isReady);
  assign AlignerPlugin_logic_slices_data_0 = fetch_logic_ctrls_1_down_Fetch_WORD[31 : 0];
  assign AlignerPlugin_logic_slices_mask = ((fetch_logic_ctrls_1_down_valid ? fetch_logic_ctrls_1_down_AlignerPlugin_logic_FETCH_MASK : 1'b0) & 1'b1);
  assign AlignerPlugin_logic_slices_last = 1'b0;
  assign fetch_logic_ctrls_1_down_ready = ((! fetch_logic_ctrls_1_down_valid) || ((decode_ctrls_0_up_isReady && (! AlignerPlugin_api_haltIt)) && (AlignerPlugin_logic_nobuffer_remaningMask == 1'b0)));
  assign AlignerPlugin_logic_extractors_0_ctx_instruction = AlignerPlugin_logic_slicesInstructions_0;
  assign AlignerPlugin_logic_extractors_0_ctx_pc = fetch_logic_ctrls_1_down_Fetch_WORD_PC;
  assign AlignerPlugin_logic_extractors_0_ctx_trap = fetch_logic_ctrls_1_down_TRAP;
  assign AlignerPlugin_logic_extractors_0_ctx_hm_Fetch_ID = fetch_logic_ctrls_1_down_Fetch_ID;
  assign AlignerPlugin_api_downMoving = decode_ctrls_0_up_isMoving;
  always @(*) begin
    TrapPlugin_logic_harts_0_crsPorts_read_valid = 1'b0;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
        TrapPlugin_logic_harts_0_crsPorts_read_valid = 1'b1;
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
        TrapPlugin_logic_harts_0_crsPorts_read_valid = 1'b1;
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    TrapPlugin_logic_harts_0_crsPorts_read_address = 2'bxx;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
        TrapPlugin_logic_harts_0_crsPorts_read_address = 2'b11;
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
        TrapPlugin_logic_harts_0_crsPorts_read_address = 2'b01;
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  assign decode_logic_flushes_0_onLanes_0_doIt = (|{(DecoderPlugin_logic_laneLogic_0_flushPort_valid && 1'b1),{(early0_EnvPlugin_logic_flushPort_valid && 1'b1),{(CsrAccessPlugin_logic_flushPort_valid && 1'b1),{(early0_BranchPlugin_logic_flushPort_valid && 1'b1),(LsuCachelessPlugin_logic_flushPort_valid && 1'b1)}}}});
  assign decode_ctrls_0_lane0_downIsCancel = 1'b0;
  assign decode_ctrls_0_lane0_upIsCancel = decode_logic_flushes_0_onLanes_0_doIt;
  assign decode_logic_flushes_1_onLanes_0_doIt = (|{((DecoderPlugin_logic_laneLogic_0_flushPort_valid && 1'b1) && (1'b0 || (1'b1 && DecoderPlugin_logic_laneLogic_0_flushPort_payload_self))),{(early0_EnvPlugin_logic_flushPort_valid && 1'b1),{(CsrAccessPlugin_logic_flushPort_valid && 1'b1),{(early0_BranchPlugin_logic_flushPort_valid && 1'b1),(LsuCachelessPlugin_logic_flushPort_valid && 1'b1)}}}});
  assign decode_ctrls_1_lane0_downIsCancel = 1'b0;
  assign decode_ctrls_1_lane0_upIsCancel = decode_logic_flushes_1_onLanes_0_doIt;
  assign decode_logic_trapPending[0] = (|{((decode_ctrls_1_up_LANE_SEL_0 && 1'b1) && decode_ctrls_1_down_TRAP_0),((decode_ctrls_0_up_LANE_SEL_0 && 1'b1) && decode_ctrls_0_down_TRAP_0)});
  always @(*) begin
    TrapPlugin_logic_harts_0_crsPorts_write_valid = 1'b0;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
        TrapPlugin_logic_harts_0_crsPorts_write_valid = 1'b1;
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
        TrapPlugin_logic_harts_0_crsPorts_write_valid = 1'b1;
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    TrapPlugin_logic_harts_0_crsPorts_write_address = 2'bxx;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
        TrapPlugin_logic_harts_0_crsPorts_write_address = 2'b01;
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
        TrapPlugin_logic_harts_0_crsPorts_write_address = 2'b10;
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    TrapPlugin_logic_harts_0_crsPorts_write_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
        TrapPlugin_logic_harts_0_crsPorts_write_data = TrapPlugin_logic_harts_0_trap_pending_pc;
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
        TrapPlugin_logic_harts_0_crsPorts_write_data = TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_tval;
        if(TrapPlugin_logic_harts_0_trap_fsm_triggerEbreakReg) begin
          TrapPlugin_logic_harts_0_crsPorts_write_data = TrapPlugin_logic_harts_0_trap_pending_pc;
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_id = 4'b0111;
  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_priority = 4'b0011;
  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_privilege = 2'b11;
  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_valid = ((_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_valid && 1'b1) && (! 1'b0));
  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_id = 4'b0011;
  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_priority = 4'b0010;
  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_privilege = 2'b11;
  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_valid = ((_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_valid && 1'b1) && (! 1'b0));
  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_id = 4'b1011;
  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_priority = 4'b0001;
  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_privilege = 2'b11;
  assign TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_valid = ((_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_valid && 1'b1) && (! 1'b0));
  assign _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id = ((! TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_valid) || (TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_valid && ((TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_privilege < TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_privilege) || ((TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_privilege == TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_privilege) && (TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_priority < TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_priority)))));
  assign _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_priority = (_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id ? TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_priority : TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_priority);
  assign _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_privilege = (_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id ? TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_privilege : TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_privilege);
  assign _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_valid = (_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id ? TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_valid : TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_valid);
  assign _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id_1 = ((! TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_valid) || (_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_valid && ((TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_privilege < _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_privilege) || ((_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_privilege == TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_privilege) && (_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_priority < TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_priority)))));
  assign TrapPlugin_logic_harts_0_interrupt_xtopi_0_int = (TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_valid ? TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id : 4'b0000);
  assign TrapPlugin_logic_harts_0_interrupt_result_id = TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id;
  assign TrapPlugin_logic_harts_0_interrupt_result_priority = TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_priority;
  assign TrapPlugin_logic_harts_0_interrupt_result_privilege = TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_privilege;
  assign TrapPlugin_logic_harts_0_interrupt_result_valid = (TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_valid && (PrivilegedPlugin_logic_harts_0_m_status_mie || (! PrivilegedPlugin_logic_harts_0_withMachinePrivilege)));
  assign TrapPlugin_logic_harts_0_interrupt_valid = TrapPlugin_logic_harts_0_interrupt_result_valid;
  assign TrapPlugin_logic_harts_0_interrupt_code = TrapPlugin_logic_harts_0_interrupt_result_id;
  assign TrapPlugin_logic_harts_0_interrupt_targetPrivilege = TrapPlugin_logic_harts_0_interrupt_result_privilege;
  assign TrapPlugin_logic_harts_0_interrupt_pendingInterrupt = (TrapPlugin_logic_harts_0_interrupt_validBuffer && PrivilegedPlugin_api_harts_0_allowInterrupts);
  assign when_TrapPlugin_l269 = (|{_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_valid,{_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_valid,_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_valid}});
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid = (early0_EnvPlugin_logic_trapPort_valid && 1'b1);
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_valid = (FetchCachelessPlugin_logic_trapPort_valid && 1'b1);
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_1 = (LsuCachelessPlugin_logic_trapPort_valid && 1'b1);
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_2 = (early0_BranchPlugin_logic_trapPort_valid && 1'b1);
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_3 = (CsrAccessPlugin_logic_trapPort_valid && 1'b1);
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_valid = (DecoderPlugin_logic_laneLogic_0_trapPort_valid && 1'b1);
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception = {(_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_3 && (&{(! _zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception),{_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1,_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_2}})),{(_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_2 && (&{_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_3,{_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_4,_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_6}})),{(_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_1 && (&{_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_8,_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_10})),(_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid && (&{_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_13,_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_15}))}}};
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid = (|{_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_3,{_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_2,{_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_1,_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid}}});
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1 = (((_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception[0] ? {early0_EnvPlugin_logic_trapPort_payload_arg,{early0_EnvPlugin_logic_trapPort_payload_code,_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_1}} : 39'h0) | (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception[1] ? {LsuCachelessPlugin_logic_trapPort_payload_arg,{LsuCachelessPlugin_logic_trapPort_payload_code,_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_2}} : 39'h0)) | ((_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception[2] ? {early0_BranchPlugin_logic_trapPort_payload_arg,{early0_BranchPlugin_logic_trapPort_payload_code,_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_3}} : 39'h0) | (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception[3] ? {CsrAccessPlugin_logic_trapPort_payload_arg,{CsrAccessPlugin_logic_trapPort_payload_code,_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1_4}} : 39'h0)));
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception = _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1[0];
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_tval = _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1[32 : 1];
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_code = _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1[36 : 33];
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_arg = _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_exception_1[38 : 37];
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_valid = (|_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_valid);
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_exception = DecoderPlugin_logic_laneLogic_0_trapPort_payload_exception;
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_tval = DecoderPlugin_logic_laneLogic_0_trapPort_payload_tval;
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_code = DecoderPlugin_logic_laneLogic_0_trapPort_payload_code;
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_arg = DecoderPlugin_logic_laneLogic_0_trapPort_payload_arg;
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_valid = (|_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_valid);
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_exception = FetchCachelessPlugin_logic_trapPort_payload_exception;
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_tval = FetchCachelessPlugin_logic_trapPort_payload_tval;
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_code = FetchCachelessPlugin_logic_trapPort_payload_code;
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_arg = FetchCachelessPlugin_logic_trapPort_payload_arg;
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh = {TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_valid,{TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_valid,TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid}};
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_1 = _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh[0];
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_2 = _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh[1];
  always @(*) begin
    _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_3[0] = (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_1 && (! 1'b0));
    _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_3[1] = (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_2 && (! _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_1));
    _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_3[2] = (_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh[2] && (! (|{_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_2,_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_1})));
  end

  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_oh = _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_oh_3;
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_down_valid = (|{_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_valid,{_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_3,{_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_2,{_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid_1,{_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_valid,_zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_valid}}}}});
  assign _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception = (((TrapPlugin_logic_harts_0_trap_pending_arbiter_oh[0] ? {TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_arg,{TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_code,{TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_0_payload_tval,_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception}}} : 39'h0) | (TrapPlugin_logic_harts_0_trap_pending_arbiter_oh[1] ? {TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_arg,{TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_code,{TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_1_payload_tval,_zz__zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception_1}}} : 39'h0)) | (TrapPlugin_logic_harts_0_trap_pending_arbiter_oh[2] ? {TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_arg,{TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_code,{TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_tval,TrapPlugin_logic_harts_0_trap_pending_arbiter_ports_2_payload_exception}}} : 39'h0));
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception = _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception[0];
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_tval = _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception[32 : 1];
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_code = _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception[36 : 33];
  assign TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_arg = _zz_TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception[38 : 37];
  assign TrapPlugin_logic_harts_0_trap_pending_xret_sourcePrivilege = TrapPlugin_logic_harts_0_trap_pending_state_arg[1 : 0];
  assign TrapPlugin_logic_harts_0_trap_pending_xret_targetPrivilege = PrivilegedPlugin_logic_harts_0_m_status_mpp;
  assign TrapPlugin_logic_harts_0_trap_exception_exceptionTargetPrivilegeUncapped = 2'b11;
  assign TrapPlugin_logic_harts_0_trap_exception_code = TrapPlugin_logic_harts_0_trap_pending_state_code;
  assign TrapPlugin_logic_harts_0_trap_exception_targetPrivilege = ((PrivilegedPlugin_logic_harts_0_privilege < TrapPlugin_logic_harts_0_trap_exception_exceptionTargetPrivilegeUncapped) ? TrapPlugin_logic_harts_0_trap_exception_exceptionTargetPrivilegeUncapped : PrivilegedPlugin_logic_harts_0_privilege);
  assign PrivilegedPlugin_logic_harts_0_commitMask = (((execute_ctrl5_down_LANE_SEL_lane0 && execute_ctrl5_down_isReady) && (! execute_lane0_ctrls_5_downIsCancel)) && execute_ctrl5_down_COMMIT_lane0);
  assign TrapPlugin_logic_harts_0_trap_trigger_oh = (((execute_ctrl4_down_LANE_SEL_lane0 && execute_ctrl4_down_isReady) && (! execute_lane0_ctrls_4_downIsCancel)) && execute_ctrl4_down_TRAP_lane0);
  assign TrapPlugin_logic_harts_0_trap_trigger_valid = (|TrapPlugin_logic_harts_0_trap_trigger_oh);
  always @(*) begin
    TrapPlugin_logic_harts_0_trap_whitebox_trap = 1'b0;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
        TrapPlugin_logic_harts_0_trap_whitebox_trap = 1'b1;
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    TrapPlugin_logic_harts_0_trap_whitebox_interrupt = 1'bx;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
        TrapPlugin_logic_harts_0_trap_whitebox_interrupt = TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_interrupt;
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    TrapPlugin_logic_harts_0_trap_whitebox_code = 4'bxxxx;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
        TrapPlugin_logic_harts_0_trap_whitebox_code = TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_code;
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    TrapPlugin_logic_harts_0_trap_pcPort_valid = 1'b0;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
        if(!when_TrapPlugin_l453) begin
          case(TrapPlugin_logic_harts_0_trap_pending_state_code)
            4'b0000 : begin
              TrapPlugin_logic_harts_0_trap_pcPort_valid = 1'b1;
            end
            4'b0001 : begin
            end
            4'b0010 : begin
            end
            4'b0100 : begin
            end
            4'b0101 : begin
            end
            4'b1000 : begin
            end
            4'b0110 : begin
            end
            default : begin
            end
          endcase
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
        TrapPlugin_logic_harts_0_trap_pcPort_valid = 1'b1;
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
        TrapPlugin_logic_harts_0_trap_pcPort_valid = 1'b1;
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
        TrapPlugin_logic_harts_0_trap_pcPort_valid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign TrapPlugin_logic_harts_0_trap_pcPort_payload_fault = 1'b0;
  always @(*) begin
    TrapPlugin_logic_harts_0_trap_pcPort_payload_pc = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
        if(!when_TrapPlugin_l453) begin
          case(TrapPlugin_logic_harts_0_trap_pending_state_code)
            4'b0000 : begin
              TrapPlugin_logic_harts_0_trap_pcPort_payload_pc = TrapPlugin_logic_harts_0_trap_pending_pc;
            end
            4'b0001 : begin
            end
            4'b0010 : begin
            end
            4'b0100 : begin
            end
            4'b0101 : begin
            end
            4'b1000 : begin
            end
            4'b0110 : begin
            end
            default : begin
            end
          endcase
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
        TrapPlugin_logic_harts_0_trap_pcPort_payload_pc = TrapPlugin_logic_harts_0_trap_fsm_readed;
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
        TrapPlugin_logic_harts_0_trap_pcPort_payload_pc = TrapPlugin_logic_harts_0_trap_fsm_readed;
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
        TrapPlugin_logic_harts_0_trap_pcPort_payload_pc = TrapPlugin_logic_harts_0_trap_fsm_jumpTarget;
      end
      default : begin
      end
    endcase
  end

  assign TrapPlugin_logic_harts_0_trap_fsm_wantExit = 1'b0;
  always @(*) begin
    TrapPlugin_logic_harts_0_trap_fsm_wantStart = 1'b0;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
        TrapPlugin_logic_harts_0_trap_fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign TrapPlugin_logic_harts_0_trap_fsm_wantKill = 1'b0;
  assign TrapPlugin_logic_harts_0_trap_fsm_inflightTrap = (|{execute_lane0_logic_trapPending[0],{DispatchPlugin_logic_trapPendings[0],decode_logic_trapPending[0]}});
  assign TrapPlugin_logic_harts_0_trap_fsm_holdPort = (TrapPlugin_logic_harts_0_trap_fsm_inflightTrap || (! (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_RUNNING)));
  assign TrapPlugin_api_harts_0_fsmBusy = (! (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_RUNNING));
  always @(*) begin
    TrapPlugin_logic_harts_0_trap_fsm_wfi = 1'b0;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
        if(!when_TrapPlugin_l453) begin
          case(TrapPlugin_logic_harts_0_trap_pending_state_code)
            4'b0000 : begin
            end
            4'b0001 : begin
            end
            4'b0010 : begin
            end
            4'b0100 : begin
            end
            4'b0101 : begin
            end
            4'b1000 : begin
              TrapPlugin_logic_harts_0_trap_fsm_wfi = 1'b1;
            end
            4'b0110 : begin
            end
            default : begin
            end
          endcase
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    TrapPlugin_logic_harts_0_trap_fsm_buffer_sampleIt = 1'b0;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
        if(TrapPlugin_logic_harts_0_trap_trigger_valid) begin
          TrapPlugin_logic_harts_0_trap_fsm_buffer_sampleIt = 1'b1;
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
  end

  assign TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_interrupt = ((TrapPlugin_logic_harts_0_trap_pending_state_code == 4'b0000) && TrapPlugin_logic_harts_0_trap_fsm_buffer_i_valid);
  assign TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_targetPrivilege = (TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_interrupt ? TrapPlugin_logic_harts_0_trap_fsm_buffer_i_targetPrivilege : TrapPlugin_logic_harts_0_trap_exception_targetPrivilege);
  assign TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_tval = ((! TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_interrupt) ? TrapPlugin_logic_harts_0_trap_pending_state_tval : 32'h0);
  assign TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_code = (TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_interrupt ? TrapPlugin_logic_harts_0_trap_fsm_buffer_i_code : TrapPlugin_logic_harts_0_trap_pending_state_code);
  assign TrapPlugin_logic_harts_0_trap_fsm_resetToRunConditions_0 = (! TrapPlugin_logic_initHold);
  assign TrapPlugin_logic_harts_0_trap_fsm_jumpOffset = ((|{(TrapPlugin_logic_harts_0_trap_pending_state_code == 4'b1000),{(TrapPlugin_logic_harts_0_trap_pending_state_code == 4'b0110),{(TrapPlugin_logic_harts_0_trap_pending_state_code == 4'b0010),(TrapPlugin_logic_harts_0_trap_pending_state_code == 4'b0101)}}}) ? TrapPlugin_logic_harts_0_trap_pending_slices : 1'b0);
  assign TrapPlugin_logic_harts_0_trap_fsm_triggerEbreak = 1'b0;
  assign when_TrapPlugin_l602 = (TrapPlugin_logic_harts_0_crsPorts_read_valid && TrapPlugin_logic_harts_0_crsPorts_read_ready);
  assign TrapPlugin_logic_harts_0_trap_fsm_xretPrivilege = TrapPlugin_logic_harts_0_trap_pending_state_arg[1 : 0];
  assign PcPlugin_logic_forcedSpawn = (|{TrapPlugin_logic_harts_0_trap_pcPort_valid,early0_BranchPlugin_logic_pcPort_valid});
  assign PcPlugin_logic_harts_0_self_pc = (PcPlugin_logic_harts_0_self_state + _zz_PcPlugin_logic_harts_0_self_pc);
  assign PcPlugin_logic_harts_0_self_flow_valid = 1'b1;
  assign PcPlugin_logic_harts_0_self_flow_payload_fault = PcPlugin_logic_harts_0_self_fault;
  assign PcPlugin_logic_harts_0_self_flow_payload_pc = PcPlugin_logic_harts_0_self_pc;
  assign PcPlugin_logic_harts_0_aggregator_sortedByPriority_1_laneValid = 1'b1;
  assign PcPlugin_logic_harts_0_aggregator_sortedByPriority_0_laneValid = 1'b1;
  assign PcPlugin_logic_harts_0_aggregator_sortedByPriority_2_laneValid = 1'b1;
  assign PcPlugin_logic_harts_0_aggregator_valids_0 = ((TrapPlugin_logic_harts_0_trap_pcPort_valid && 1'b1) && PcPlugin_logic_harts_0_aggregator_sortedByPriority_0_laneValid);
  assign PcPlugin_logic_harts_0_aggregator_valids_1 = ((early0_BranchPlugin_logic_pcPort_valid && 1'b1) && PcPlugin_logic_harts_0_aggregator_sortedByPriority_1_laneValid);
  assign PcPlugin_logic_harts_0_aggregator_valids_2 = ((PcPlugin_logic_harts_0_self_flow_valid && 1'b1) && PcPlugin_logic_harts_0_aggregator_sortedByPriority_2_laneValid);
  assign _zz_PcPlugin_logic_harts_0_aggregator_oh = {PcPlugin_logic_harts_0_aggregator_valids_2,{PcPlugin_logic_harts_0_aggregator_valids_1,PcPlugin_logic_harts_0_aggregator_valids_0}};
  assign _zz_PcPlugin_logic_harts_0_aggregator_oh_1 = _zz_PcPlugin_logic_harts_0_aggregator_oh[0];
  assign _zz_PcPlugin_logic_harts_0_aggregator_oh_2 = _zz_PcPlugin_logic_harts_0_aggregator_oh[1];
  always @(*) begin
    _zz_PcPlugin_logic_harts_0_aggregator_oh_3[0] = (_zz_PcPlugin_logic_harts_0_aggregator_oh_1 && (! 1'b0));
    _zz_PcPlugin_logic_harts_0_aggregator_oh_3[1] = (_zz_PcPlugin_logic_harts_0_aggregator_oh_2 && (! _zz_PcPlugin_logic_harts_0_aggregator_oh_1));
    _zz_PcPlugin_logic_harts_0_aggregator_oh_3[2] = (_zz_PcPlugin_logic_harts_0_aggregator_oh[2] && (! (|{_zz_PcPlugin_logic_harts_0_aggregator_oh_2,_zz_PcPlugin_logic_harts_0_aggregator_oh_1})));
  end

  assign PcPlugin_logic_harts_0_aggregator_oh = _zz_PcPlugin_logic_harts_0_aggregator_oh_3;
  assign _zz_PcPlugin_logic_harts_0_aggregator_target = PcPlugin_logic_harts_0_aggregator_oh[0];
  assign _zz_PcPlugin_logic_harts_0_aggregator_target_1 = PcPlugin_logic_harts_0_aggregator_oh[1];
  assign _zz_PcPlugin_logic_harts_0_aggregator_target_2 = PcPlugin_logic_harts_0_aggregator_oh[2];
  assign PcPlugin_logic_harts_0_aggregator_target = (((_zz_PcPlugin_logic_harts_0_aggregator_target ? TrapPlugin_logic_harts_0_trap_pcPort_payload_pc : 32'h0) | (_zz_PcPlugin_logic_harts_0_aggregator_target_1 ? early0_BranchPlugin_logic_pcPort_payload_pc : 32'h0)) | (_zz_PcPlugin_logic_harts_0_aggregator_target_2 ? PcPlugin_logic_harts_0_self_flow_payload_pc : 32'h0));
  assign PcPlugin_logic_harts_0_aggregator_fault = _zz_PcPlugin_logic_harts_0_aggregator_fault[0];
  assign PcPlugin_logic_harts_0_holdComb = (|TrapPlugin_logic_harts_0_trap_fsm_holdPort);
  assign PcPlugin_logic_harts_0_output_valid = (! PcPlugin_logic_harts_0_holdReg);
  assign PcPlugin_logic_harts_0_output_payload_fault = PcPlugin_logic_harts_0_aggregator_fault;
  always @(*) begin
    PcPlugin_logic_harts_0_output_payload_pc = PcPlugin_logic_harts_0_aggregator_target;
    PcPlugin_logic_harts_0_output_payload_pc[1 : 0] = 2'b00;
  end

  assign PcPlugin_logic_harts_0_output_fire = (PcPlugin_logic_harts_0_output_valid && PcPlugin_logic_harts_0_output_ready);
  assign fetch_logic_ctrls_0_up_valid = PcPlugin_logic_harts_0_output_valid;
  assign PcPlugin_logic_harts_0_output_ready = fetch_logic_ctrls_0_up_ready;
  assign fetch_logic_ctrls_0_up_Fetch_WORD_PC = PcPlugin_logic_harts_0_output_payload_pc;
  assign fetch_logic_ctrls_0_up_Fetch_PC_FAULT = PcPlugin_logic_harts_0_output_payload_fault;
  always @(*) begin
    fetch_logic_ctrls_0_up_Fetch_ID = 10'bxxxxxxxxxx;
    fetch_logic_ctrls_0_up_Fetch_ID = PcPlugin_logic_harts_0_self_id;
  end

  assign PcPlugin_logic_holdHalter_doIt = PcPlugin_logic_harts_0_holdComb;
  assign fetch_logic_ctrls_0_haltRequest_PcPlugin_l133 = PcPlugin_logic_holdHalter_doIt;
  assign CsrAccessPlugin_logic_fsm_wantExit = 1'b0;
  always @(*) begin
    CsrAccessPlugin_logic_fsm_wantStart = 1'b0;
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
        CsrAccessPlugin_logic_fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign CsrAccessPlugin_logic_fsm_wantKill = 1'b0;
  always @(*) begin
    CsrAccessPlugin_logic_fsm_interface_fire = 1'b0;
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
        if(execute_ctrl2_down_isReady) begin
          CsrAccessPlugin_logic_fsm_interface_fire = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign CsrAccessPlugin_logic_fsm_inject_csrAddress = execute_ctrl2_down_Decode_UOP_lane0[31 : 20];
  assign CsrAccessPlugin_logic_fsm_inject_immZero = (execute_ctrl2_down_Decode_UOP_lane0[19 : 15] == 5'h0);
  assign CsrAccessPlugin_logic_fsm_inject_srcZero = (execute_ctrl2_down_CsrAccessPlugin_CSR_IMM_lane0 ? CsrAccessPlugin_logic_fsm_inject_immZero : (execute_ctrl2_down_Decode_UOP_lane0[19 : 15] == 5'h0));
  assign CsrAccessPlugin_logic_fsm_inject_csrWrite = (! (execute_ctrl2_down_CsrAccessPlugin_CSR_MASK_lane0 && CsrAccessPlugin_logic_fsm_inject_srcZero));
  assign CsrAccessPlugin_logic_fsm_inject_csrRead = (! ((! execute_ctrl2_down_CsrAccessPlugin_CSR_MASK_lane0) && (! execute_ctrl2_up_RD_ENABLE_lane0)));
  assign COMB_CSR_1952 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h7a0);
  assign COMB_CSR_1953 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h7a1);
  assign COMB_CSR_1954 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h7a2);
  assign COMB_CSR_3857 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'hf11);
  assign COMB_CSR_3858 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'hf12);
  assign COMB_CSR_3859 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'hf13);
  assign COMB_CSR_3860 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'hf14);
  assign COMB_CSR_769 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h301);
  assign COMB_CSR_768 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h300);
  assign COMB_CSR_834 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h342);
  assign COMB_CSR_836 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h344);
  assign COMB_CSR_772 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h304);
  assign COMB_CSR_4016 = (CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'hfb0);
  assign COMB_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_tvecFilter = (|(CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h305));
  assign COMB_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_epcFilter = (|(CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h341));
  assign COMB_CSR_CsrRamPlugin_csrMapper_selFilter = (|{(CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h340),{(CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h341),{(CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h343),(CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h305)}}});
  assign COMB_CSR_CsrAccessPlugin_logic_trapNextOnWriteFilter = (|(CsrAccessPlugin_logic_fsm_inject_csrAddress == 12'h300));
  assign CsrAccessPlugin_logic_fsm_inject_implemented = (|{COMB_CSR_CsrAccessPlugin_logic_trapNextOnWriteFilter,{COMB_CSR_CsrRamPlugin_csrMapper_selFilter,{COMB_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_epcFilter,{COMB_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_tvecFilter,{COMB_CSR_4016,{COMB_CSR_772,{COMB_CSR_836,{COMB_CSR_834,{COMB_CSR_768,{COMB_CSR_769,{_zz_CsrAccessPlugin_logic_fsm_inject_implemented,_zz_CsrAccessPlugin_logic_fsm_inject_implemented_1}}}}}}}}}}});
  assign CsrAccessPlugin_logic_fsm_inject_onDecodeDo = ((execute_ctrl2_up_LANE_SEL_lane0 && execute_ctrl2_down_CsrAccessPlugin_SEL_lane0) && (CsrAccessPlugin_logic_fsm_stateReg == CsrAccessPlugin_logic_fsm_IDLE));
  assign when_CsrAccessPlugin_l157 = (CsrAccessPlugin_logic_fsm_inject_onDecodeDo && COMB_CSR_1952);
  assign when_CsrService_l121 = (! 1'b1);
  assign when_CsrAccessPlugin_l157_1 = (CsrAccessPlugin_logic_fsm_inject_onDecodeDo && COMB_CSR_1953);
  assign when_CsrService_l121_1 = (! 1'b1);
  assign when_CsrAccessPlugin_l157_2 = (CsrAccessPlugin_logic_fsm_inject_onDecodeDo && COMB_CSR_1954);
  assign when_CsrService_l121_2 = (! 1'b1);
  assign when_CsrAccessPlugin_l157_3 = (CsrAccessPlugin_logic_fsm_inject_onDecodeDo && COMB_CSR_CsrRamPlugin_csrMapper_selFilter);
  assign when_CsrService_l121_3 = (! 1'b1);
  assign when_CsrAccessPlugin_l157_4 = (CsrAccessPlugin_logic_fsm_inject_onDecodeDo && COMB_CSR_CsrAccessPlugin_logic_trapNextOnWriteFilter);
  assign CsrAccessPlugin_logic_fsm_inject_trap = ((! CsrAccessPlugin_logic_fsm_inject_implemented) || CsrAccessPlugin_bus_decode_exception);
  assign CsrAccessPlugin_bus_decode_read = CsrAccessPlugin_logic_fsm_inject_csrRead;
  assign CsrAccessPlugin_bus_decode_write = CsrAccessPlugin_logic_fsm_inject_csrWrite;
  assign CsrAccessPlugin_bus_decode_address = CsrAccessPlugin_logic_fsm_inject_csrAddress;
  assign CsrAccessPlugin_logic_fsm_interface_uopId = execute_ctrl2_down_Decode_UOP_ID_lane0;
  assign CsrAccessPlugin_logic_fsm_interface_rs1 = execute_ctrl2_up_integer_RS1_lane0;
  assign CsrAccessPlugin_logic_fsm_interface_uop = execute_ctrl2_down_Decode_UOP_lane0;
  assign CsrAccessPlugin_logic_fsm_interface_doImm = execute_ctrl2_down_CsrAccessPlugin_CSR_IMM_lane0;
  assign CsrAccessPlugin_logic_fsm_interface_doMask = execute_ctrl2_down_CsrAccessPlugin_CSR_MASK_lane0;
  assign CsrAccessPlugin_logic_fsm_interface_doClear = execute_ctrl2_down_CsrAccessPlugin_CSR_CLEAR_lane0;
  assign CsrAccessPlugin_logic_fsm_interface_rdEnable = execute_ctrl2_up_RD_ENABLE_lane0;
  assign CsrAccessPlugin_logic_fsm_interface_rdPhys = execute_ctrl2_down_RD_PHYS_lane0;
  assign CsrAccessPlugin_logic_fsm_inject_freeze = ((execute_ctrl2_up_LANE_SEL_lane0 && execute_ctrl2_down_CsrAccessPlugin_SEL_lane0) && (! CsrAccessPlugin_logic_fsm_inject_unfreeze));
  always @(*) begin
    CsrAccessPlugin_logic_flushPort_valid = 1'b0;
    if(CsrAccessPlugin_logic_fsm_inject_flushReg) begin
      CsrAccessPlugin_logic_flushPort_valid = 1'b1;
    end
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
        if(CsrAccessPlugin_logic_fsm_inject_onDecodeDo) begin
          if(CsrAccessPlugin_logic_fsm_inject_sampled) begin
            if(CsrAccessPlugin_logic_fsm_inject_trapReg) begin
              CsrAccessPlugin_logic_flushPort_valid = 1'b1;
            end else begin
              if(CsrAccessPlugin_logic_fsm_inject_busTrapReg) begin
                CsrAccessPlugin_logic_flushPort_valid = 1'b1;
              end
            end
          end
        end
      end
    endcase
  end

  assign CsrAccessPlugin_logic_flushPort_payload_uopId = execute_ctrl2_down_Decode_UOP_ID_lane0;
  assign CsrAccessPlugin_logic_flushPort_payload_self = 1'b0;
  always @(*) begin
    CsrAccessPlugin_logic_trapPort_valid = 1'b0;
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
        if(CsrAccessPlugin_logic_fsm_inject_onDecodeDo) begin
          if(CsrAccessPlugin_logic_fsm_inject_sampled) begin
            if(CsrAccessPlugin_logic_fsm_inject_trapReg) begin
              CsrAccessPlugin_logic_trapPort_valid = 1'b1;
            end else begin
              if(CsrAccessPlugin_logic_fsm_inject_busTrapReg) begin
                CsrAccessPlugin_logic_trapPort_valid = 1'b1;
              end
            end
          end
        end
      end
    endcase
  end

  always @(*) begin
    CsrAccessPlugin_logic_trapPort_payload_exception = 1'b1;
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
        if(CsrAccessPlugin_logic_fsm_inject_onDecodeDo) begin
          if(CsrAccessPlugin_logic_fsm_inject_sampled) begin
            if(!CsrAccessPlugin_logic_fsm_inject_trapReg) begin
              if(CsrAccessPlugin_logic_fsm_inject_busTrapReg) begin
                CsrAccessPlugin_logic_trapPort_payload_exception = 1'b0;
              end
            end
          end
        end
      end
    endcase
  end

  always @(*) begin
    CsrAccessPlugin_logic_trapPort_payload_code = 4'b0010;
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
        if(CsrAccessPlugin_logic_fsm_inject_onDecodeDo) begin
          if(CsrAccessPlugin_logic_fsm_inject_sampled) begin
            if(!CsrAccessPlugin_logic_fsm_inject_trapReg) begin
              if(CsrAccessPlugin_logic_fsm_inject_busTrapReg) begin
                CsrAccessPlugin_logic_trapPort_payload_code = CsrAccessPlugin_logic_fsm_inject_busTrapCodeReg;
              end
            end
          end
        end
      end
    endcase
  end

  assign CsrAccessPlugin_logic_trapPort_payload_tval = execute_ctrl2_down_Decode_UOP_lane0;
  assign CsrAccessPlugin_logic_trapPort_payload_arg = 2'b00;
  assign when_CsrAccessPlugin_l199 = (! execute_freeze_valid);
  always @(*) begin
    CsrAccessPlugin_logic_fsm_readLogic_onReadsDo = 1'b0;
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
        CsrAccessPlugin_logic_fsm_readLogic_onReadsDo = CsrAccessPlugin_logic_fsm_interface_read;
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    CsrAccessPlugin_logic_fsm_readLogic_onReadsFireDo = 1'b0;
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
        if(when_CsrAccessPlugin_l302) begin
          CsrAccessPlugin_logic_fsm_readLogic_onReadsFireDo = CsrAccessPlugin_logic_fsm_interface_read;
        end
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
      end
    endcase
  end

  assign CsrAccessPlugin_bus_read_valid = CsrAccessPlugin_logic_fsm_readLogic_onReadsDo;
  assign CsrAccessPlugin_bus_read_address = CsrAccessPlugin_logic_fsm_interface_uop[31 : 20];
  assign CsrAccessPlugin_bus_read_moving = (! CsrAccessPlugin_bus_read_halt);
  assign when_CsrAccessPlugin_l258 = (CsrAccessPlugin_logic_fsm_readLogic_onReadsDo && REG_CSR_CsrRamPlugin_csrMapper_selFilter);
  assign CsrAccessPlugin_logic_fsm_readLogic_csrValue = (((((32'h0 | _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_6) | (32'h0 | 32'h0)) | ((((_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue && REG_CSR_769) ? _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_8 : 32'h0) | _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_9) | (_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_11 | _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_13))) | (((_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_15 | _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_16) | (_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_18 | _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_19)) | ((_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_21 | _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_23) | (_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_25 | _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_27)))) | (((_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_29 | _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_31) | (_zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_33 | _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue_35)) | (CsrRamPlugin_csrMapper_withRead ? CsrRamPlugin_csrMapper_read_data : 32'h0)));
  assign CsrAccessPlugin_bus_read_data = CsrAccessPlugin_logic_fsm_readLogic_csrValue;
  assign CsrAccessPlugin_bus_read_toWriteBits = CsrAccessPlugin_logic_fsm_readLogic_csrValue;
  assign _zz_CsrAccessPlugin_logic_fsm_readLogic_csrValue = 1'b1;
  assign CsrAccessPlugin_bus_write_moving = (! CsrAccessPlugin_bus_write_halt);
  assign CsrAccessPlugin_logic_fsm_writeLogic_alu_mask = (CsrAccessPlugin_logic_fsm_interface_doImm ? _zz_CsrAccessPlugin_logic_fsm_writeLogic_alu_mask : CsrAccessPlugin_logic_fsm_interface_rs1);
  assign CsrAccessPlugin_logic_fsm_writeLogic_alu_masked = (CsrAccessPlugin_logic_fsm_interface_doClear ? (CsrAccessPlugin_logic_fsm_interface_aluInput & (~ CsrAccessPlugin_logic_fsm_writeLogic_alu_mask)) : (CsrAccessPlugin_logic_fsm_interface_aluInput | CsrAccessPlugin_logic_fsm_writeLogic_alu_mask));
  assign CsrAccessPlugin_logic_fsm_writeLogic_alu_result = (CsrAccessPlugin_logic_fsm_interface_doMask ? CsrAccessPlugin_logic_fsm_writeLogic_alu_masked : CsrAccessPlugin_logic_fsm_writeLogic_alu_mask);
  always @(*) begin
    CsrAccessPlugin_bus_write_bits = CsrAccessPlugin_logic_fsm_writeLogic_alu_result;
    if(when_CsrAccessPlugin_l349) begin
      CsrAccessPlugin_bus_write_bits[1 : 0] = 2'b00;
    end
    if(when_CsrAccessPlugin_l349_1) begin
      CsrAccessPlugin_bus_write_bits[1 : 0] = 2'b00;
    end
  end

  assign CsrAccessPlugin_bus_write_address = CsrAccessPlugin_logic_fsm_interface_uop[31 : 20];
  always @(*) begin
    CsrAccessPlugin_logic_fsm_writeLogic_onWritesDo = 1'b0;
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
        CsrAccessPlugin_logic_fsm_writeLogic_onWritesDo = CsrAccessPlugin_logic_fsm_interface_write;
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    CsrAccessPlugin_logic_fsm_writeLogic_onWritesFireDo = 1'b0;
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
        if(when_CsrAccessPlugin_l331) begin
          CsrAccessPlugin_logic_fsm_writeLogic_onWritesFireDo = CsrAccessPlugin_logic_fsm_interface_write;
        end
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
      end
    endcase
  end

  assign CsrAccessPlugin_bus_write_valid = CsrAccessPlugin_logic_fsm_writeLogic_onWritesDo;
  assign when_CsrAccessPlugin_l352 = (CsrAccessPlugin_logic_fsm_writeLogic_onWritesFireDo && REG_CSR_768);
  assign when_CsrAccessPlugin_l352_1 = (CsrAccessPlugin_logic_fsm_writeLogic_onWritesFireDo && REG_CSR_834);
  assign when_CsrAccessPlugin_l352_2 = (CsrAccessPlugin_logic_fsm_writeLogic_onWritesFireDo && REG_CSR_772);
  assign when_CsrAccessPlugin_l349 = (CsrAccessPlugin_logic_fsm_writeLogic_onWritesDo && REG_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_tvecFilter);
  assign when_CsrAccessPlugin_l349_1 = (CsrAccessPlugin_logic_fsm_writeLogic_onWritesDo && REG_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_epcFilter);
  assign when_CsrAccessPlugin_l349_2 = (CsrAccessPlugin_logic_fsm_writeLogic_onWritesDo && REG_CSR_CsrRamPlugin_csrMapper_selFilter);
  assign CsrAccessPlugin_logic_wbWi_valid = execute_ctrl3_down_CsrAccessPlugin_SEL_lane0;
  assign CsrAccessPlugin_logic_wbWi_payload = CsrAccessPlugin_logic_fsm_interface_csrValue;
  always @(*) begin
    _zz_FetchCachelessPlugin_logic_fork_forked_valid = FetchCachelessPlugin_logic_fork_forked_fired;
    if(PcPlugin_logic_forcedSpawn) begin
      _zz_FetchCachelessPlugin_logic_fork_forked_valid = 1'b0;
    end
  end

  assign FetchCachelessPlugin_logic_fork_forked_valid = (fetch_logic_ctrls_0_up_isValid && (! _zz_FetchCachelessPlugin_logic_fork_forked_valid));
  assign fetch_logic_ctrls_0_haltRequest_CtrlLink_l112 = ((! _zz_FetchCachelessPlugin_logic_fork_forked_valid) && (! FetchCachelessPlugin_logic_fork_forked_ready));
  assign FetchCachelessPlugin_logic_fork_forked_fire = (FetchCachelessPlugin_logic_fork_forked_valid && FetchCachelessPlugin_logic_fork_forked_ready);
  assign _zz_FetchCachelessPlugin_logic_fork_forked_ready = (! FetchCachelessPlugin_logic_buffer_full);
  always @(*) begin
    FetchCachelessPlugin_logic_fork_halted_valid = (FetchCachelessPlugin_logic_fork_forked_valid && _zz_FetchCachelessPlugin_logic_fork_forked_ready);
    if(when_FetchCachelessPlugin_l144) begin
      FetchCachelessPlugin_logic_fork_halted_valid = 1'b0;
    end
  end

  assign FetchCachelessPlugin_logic_fork_forked_ready = (FetchCachelessPlugin_logic_fork_halted_ready && _zz_FetchCachelessPlugin_logic_fork_forked_ready);
  assign FetchCachelessPlugin_logic_fork_translated_valid = FetchCachelessPlugin_logic_fork_halted_valid;
  assign FetchCachelessPlugin_logic_fork_halted_ready = FetchCachelessPlugin_logic_fork_translated_ready;
  assign FetchCachelessPlugin_logic_fork_translated_payload_id = FetchCachelessPlugin_logic_buffer_reserveId_value;
  assign FetchCachelessPlugin_logic_fork_translated_payload_address = fetch_logic_ctrls_0_down_MMU_TRANSLATED;
  assign FetchCachelessPlugin_logic_fork_translated_ready = FetchCachelessPlugin_logic_fork_translated_rValidN;
  assign FetchCachelessPlugin_logic_fork_persistent_valid = (FetchCachelessPlugin_logic_fork_translated_valid || (! FetchCachelessPlugin_logic_fork_translated_rValidN));
  assign FetchCachelessPlugin_logic_fork_persistent_payload_id = (FetchCachelessPlugin_logic_fork_translated_rValidN ? FetchCachelessPlugin_logic_fork_translated_payload_id : FetchCachelessPlugin_logic_fork_translated_rData_id);
  assign FetchCachelessPlugin_logic_fork_persistent_payload_address = (FetchCachelessPlugin_logic_fork_translated_rValidN ? FetchCachelessPlugin_logic_fork_translated_payload_address : FetchCachelessPlugin_logic_fork_translated_rData_address);
  assign FetchCachelessPlugin_logic_bus_cmd_valid = FetchCachelessPlugin_logic_fork_persistent_valid;
  assign FetchCachelessPlugin_logic_fork_persistent_ready = FetchCachelessPlugin_logic_bus_cmd_ready;
  assign FetchCachelessPlugin_logic_bus_cmd_payload_id = FetchCachelessPlugin_logic_fork_persistent_payload_id;
  assign FetchCachelessPlugin_logic_bus_cmd_payload_address = FetchCachelessPlugin_logic_fork_persistent_payload_address;
  assign FetchCachelessPlugin_logic_fork_translated_fire = (FetchCachelessPlugin_logic_fork_translated_valid && FetchCachelessPlugin_logic_fork_translated_ready);
  assign FetchCachelessPlugin_logic_buffer_inflightSpawn = FetchCachelessPlugin_logic_fork_translated_fire;
  assign FetchCachelessPlugin_logic_bus_cmd_isStall = (FetchCachelessPlugin_logic_bus_cmd_valid && (! FetchCachelessPlugin_logic_bus_cmd_ready));
  assign fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_BUFFER_ID = FetchCachelessPlugin_logic_buffer_reserveId_value;
  assign fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_fork_PMA_FAULT = fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_onPma_RSP_fault;
  assign when_FetchCachelessPlugin_l144 = ((fetch_logic_ctrls_0_down_MMU_HAZARD || fetch_logic_ctrls_0_down_MMU_REFILL) || fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_fork_PMA_FAULT);
  always @(*) begin
    FetchCachelessPlugin_logic_join_haltIt = _zz_FetchCachelessPlugin_logic_join_haltIt;
    if(when_FetchCachelessPlugin_l159) begin
      FetchCachelessPlugin_logic_join_haltIt = 1'b0;
    end
  end

  assign _zz_FetchCachelessPlugin_logic_join_rsp_error = FetchCachelessPlugin_logic_buffer_words_spinal_port1;
  always @(*) begin
    FetchCachelessPlugin_logic_join_rsp_error = _zz_FetchCachelessPlugin_logic_join_rsp_error[0];
    if(when_FetchCachelessPlugin_l159) begin
      FetchCachelessPlugin_logic_join_rsp_error = FetchCachelessPlugin_logic_bus_rsp_payload_error;
    end
  end

  always @(*) begin
    FetchCachelessPlugin_logic_join_rsp_word = _zz_FetchCachelessPlugin_logic_join_rsp_error[32 : 1];
    if(when_FetchCachelessPlugin_l159) begin
      FetchCachelessPlugin_logic_join_rsp_word = FetchCachelessPlugin_logic_bus_rsp_payload_word;
    end
  end

  assign when_FetchCachelessPlugin_l159 = (FetchCachelessPlugin_logic_bus_rsp_valid && (FetchCachelessPlugin_logic_bus_rsp_payload_id == fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_BUFFER_ID));
  assign fetch_logic_ctrls_1_down_Fetch_WORD = FetchCachelessPlugin_logic_join_rsp_word;
  always @(*) begin
    fetch_logic_ctrls_1_down_TRAP = 1'b0;
    if(when_FetchCachelessPlugin_l178) begin
      fetch_logic_ctrls_1_down_TRAP = 1'b1;
    end
    if(when_FetchCachelessPlugin_l184) begin
      fetch_logic_ctrls_1_down_TRAP = 1'b1;
    end
    if(fetch_logic_ctrls_1_down_MMU_ACCESS_FAULT) begin
      fetch_logic_ctrls_1_down_TRAP = 1'b1;
    end
    if(fetch_logic_ctrls_1_down_MMU_REFILL) begin
      fetch_logic_ctrls_1_down_TRAP = 1'b1;
    end
    if(fetch_logic_ctrls_1_down_MMU_HAZARD) begin
      fetch_logic_ctrls_1_down_TRAP = 1'b1;
    end
    if(when_FetchCachelessPlugin_l209) begin
      fetch_logic_ctrls_1_down_TRAP = 1'b0;
    end
  end

  assign FetchCachelessPlugin_logic_trapPort_valid = (fetch_logic_ctrls_1_down_TRAP && (! FetchCachelessPlugin_logic_join_trapSent));
  assign FetchCachelessPlugin_logic_trapPort_payload_tval = fetch_logic_ctrls_1_down_Fetch_WORD_PC;
  always @(*) begin
    FetchCachelessPlugin_logic_trapPort_payload_exception = 1'bx;
    if(when_FetchCachelessPlugin_l178) begin
      FetchCachelessPlugin_logic_trapPort_payload_exception = 1'b1;
    end
    if(when_FetchCachelessPlugin_l184) begin
      FetchCachelessPlugin_logic_trapPort_payload_exception = 1'b1;
    end
    if(fetch_logic_ctrls_1_down_MMU_ACCESS_FAULT) begin
      FetchCachelessPlugin_logic_trapPort_payload_exception = 1'b1;
    end
    if(fetch_logic_ctrls_1_down_MMU_REFILL) begin
      FetchCachelessPlugin_logic_trapPort_payload_exception = 1'b0;
    end
    if(fetch_logic_ctrls_1_down_MMU_HAZARD) begin
      FetchCachelessPlugin_logic_trapPort_payload_exception = 1'b0;
    end
  end

  always @(*) begin
    FetchCachelessPlugin_logic_trapPort_payload_code = 4'bxxxx;
    if(when_FetchCachelessPlugin_l178) begin
      FetchCachelessPlugin_logic_trapPort_payload_code = 4'b0001;
    end
    if(when_FetchCachelessPlugin_l184) begin
      FetchCachelessPlugin_logic_trapPort_payload_code = 4'b1100;
    end
    if(fetch_logic_ctrls_1_down_MMU_ACCESS_FAULT) begin
      FetchCachelessPlugin_logic_trapPort_payload_code = 4'b0001;
    end
    if(fetch_logic_ctrls_1_down_MMU_REFILL) begin
      FetchCachelessPlugin_logic_trapPort_payload_code = 4'b0111;
    end
    if(fetch_logic_ctrls_1_down_MMU_HAZARD) begin
      FetchCachelessPlugin_logic_trapPort_payload_code = 4'b0100;
    end
  end

  assign _zz_9 = zz_FetchCachelessPlugin_logic_trapPort_payload_arg(1'b0);
  always @(*) FetchCachelessPlugin_logic_trapPort_payload_arg = _zz_9;
  assign when_FetchCachelessPlugin_l178 = ((FetchCachelessPlugin_logic_join_rsp_error || fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_fork_PMA_FAULT) || fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_pmpPort_ACCESS_FAULT);
  assign when_FetchCachelessPlugin_l184 = (fetch_logic_ctrls_1_down_MMU_PAGE_FAULT || (! fetch_logic_ctrls_1_down_MMU_ALLOW_EXECUTE));
  assign when_FetchCachelessPlugin_l209 = ((! fetch_logic_ctrls_1_up_isValid) || FetchCachelessPlugin_logic_join_haltIt);
  assign fetch_logic_ctrls_1_haltRequest_FetchCachelessPlugin_l211 = FetchCachelessPlugin_logic_join_haltIt;
  assign CsrRamPlugin_logic_writeLogic_hits = {CsrRamPlugin_setup_initPort_valid,{CsrRamPlugin_csrMapper_write_valid,TrapPlugin_logic_harts_0_crsPorts_write_valid}};
  assign CsrRamPlugin_logic_writeLogic_hit = (|CsrRamPlugin_logic_writeLogic_hits);
  assign CsrRamPlugin_logic_writeLogic_hits_ohFirst_input = CsrRamPlugin_logic_writeLogic_hits;
  assign CsrRamPlugin_logic_writeLogic_hits_ohFirst_masked = (CsrRamPlugin_logic_writeLogic_hits_ohFirst_input & (~ _zz_CsrRamPlugin_logic_writeLogic_hits_ohFirst_masked));
  assign CsrRamPlugin_logic_writeLogic_oh = CsrRamPlugin_logic_writeLogic_hits_ohFirst_masked;
  assign _zz_TrapPlugin_logic_harts_0_crsPorts_write_ready = CsrRamPlugin_logic_writeLogic_oh[0];
  assign _zz_CsrRamPlugin_csrMapper_write_ready = CsrRamPlugin_logic_writeLogic_oh[1];
  assign _zz_CsrRamPlugin_setup_initPort_ready = CsrRamPlugin_logic_writeLogic_oh[2];
  assign CsrRamPlugin_logic_writeLogic_port_valid = CsrRamPlugin_logic_writeLogic_hit;
  assign CsrRamPlugin_logic_writeLogic_port_payload_address = (((_zz_TrapPlugin_logic_harts_0_crsPorts_write_ready ? TrapPlugin_logic_harts_0_crsPorts_write_address : 2'b00) | (_zz_CsrRamPlugin_csrMapper_write_ready ? CsrRamPlugin_csrMapper_write_address : 2'b00)) | (_zz_CsrRamPlugin_setup_initPort_ready ? CsrRamPlugin_setup_initPort_address : 2'b00));
  assign CsrRamPlugin_logic_writeLogic_port_payload_data = (((_zz_TrapPlugin_logic_harts_0_crsPorts_write_ready ? TrapPlugin_logic_harts_0_crsPorts_write_data : 32'h0) | (_zz_CsrRamPlugin_csrMapper_write_ready ? CsrRamPlugin_csrMapper_write_data : 32'h0)) | (_zz_CsrRamPlugin_setup_initPort_ready ? CsrRamPlugin_setup_initPort_data : 32'h0));
  assign TrapPlugin_logic_harts_0_crsPorts_write_ready = _zz_TrapPlugin_logic_harts_0_crsPorts_write_ready;
  assign CsrRamPlugin_csrMapper_write_ready = _zz_CsrRamPlugin_csrMapper_write_ready;
  assign CsrRamPlugin_setup_initPort_ready = _zz_CsrRamPlugin_setup_initPort_ready;
  assign CsrRamPlugin_logic_readLogic_hits = {CsrRamPlugin_csrMapper_read_valid,TrapPlugin_logic_harts_0_crsPorts_read_valid};
  assign CsrRamPlugin_logic_readLogic_hit = (|CsrRamPlugin_logic_readLogic_hits);
  assign CsrRamPlugin_logic_readLogic_hits_ohFirst_input = CsrRamPlugin_logic_readLogic_hits;
  assign CsrRamPlugin_logic_readLogic_hits_ohFirst_masked = (CsrRamPlugin_logic_readLogic_hits_ohFirst_input & (~ _zz_CsrRamPlugin_logic_readLogic_hits_ohFirst_masked));
  assign CsrRamPlugin_logic_readLogic_oh = CsrRamPlugin_logic_readLogic_hits_ohFirst_masked;
  assign _zz_CsrRamPlugin_logic_readLogic_sel = CsrRamPlugin_logic_readLogic_oh[1];
  assign CsrRamPlugin_logic_readLogic_sel = _zz_CsrRamPlugin_logic_readLogic_sel;
  assign CsrRamPlugin_logic_readLogic_port_rsp = CsrRamPlugin_logic_mem_spinal_port1;
  assign CsrRamPlugin_logic_readLogic_port_cmd_valid = (((|CsrRamPlugin_logic_readLogic_oh) && (! CsrRamPlugin_logic_writeLogic_port_valid)) && (! CsrRamPlugin_logic_readLogic_busy));
  assign CsrRamPlugin_logic_readLogic_port_cmd_payload = _zz_CsrRamPlugin_logic_readLogic_port_cmd_payload;
  assign TrapPlugin_logic_harts_0_crsPorts_read_ready = CsrRamPlugin_logic_readLogic_ohReg[0];
  assign CsrRamPlugin_csrMapper_read_ready = CsrRamPlugin_logic_readLogic_ohReg[1];
  assign TrapPlugin_logic_harts_0_crsPorts_read_data = CsrRamPlugin_logic_readLogic_port_rsp;
  assign CsrRamPlugin_csrMapper_read_data = CsrRamPlugin_logic_readLogic_port_rsp;
  assign CsrRamPlugin_logic_flush_done = CsrRamPlugin_logic_flush_counter[2];
  assign CsrRamPlugin_setup_initPort_valid = (! CsrRamPlugin_logic_flush_done);
  assign CsrRamPlugin_setup_initPort_address = CsrRamPlugin_logic_flush_counter[1:0];
  assign CsrRamPlugin_setup_initPort_data = 32'h0;
  assign execute_lane0_bypasser_integer_RS2_port_valid = (! execute_freeze_valid);
  assign execute_lane0_bypasser_integer_RS2_port_address = execute_ctrl0_down_RS2_PHYS_lane0[4 : 0];
  always @(*) begin
    execute_lane0_bypasser_integer_RS2_bypassEnables[0] = (((execute_ctrl5_up_LANE_SEL_lane0 && execute_ctrl5_up_RD_ENABLE_lane0) && (execute_ctrl5_down_RD_PHYS_lane0 == execute_ctrl1_down_RS2_PHYS_lane0)) && 1'b1);
    execute_lane0_bypasser_integer_RS2_bypassEnables[1] = 1'b1;
  end

  assign _zz_execute_lane0_bypasser_integer_RS2_bypassEnables_bools_0 = execute_lane0_bypasser_integer_RS2_bypassEnables;
  assign execute_lane0_bypasser_integer_RS2_bypassEnables_bools_0 = _zz_execute_lane0_bypasser_integer_RS2_bypassEnables_bools_0[0];
  assign execute_lane0_bypasser_integer_RS2_bypassEnables_bools_1 = _zz_execute_lane0_bypasser_integer_RS2_bypassEnables_bools_0[1];
  always @(*) begin
    _zz_execute_lane0_bypasser_integer_RS2_sel[0] = (execute_lane0_bypasser_integer_RS2_bypassEnables_bools_0 && (! 1'b0));
    _zz_execute_lane0_bypasser_integer_RS2_sel[1] = (execute_lane0_bypasser_integer_RS2_bypassEnables_bools_1 && (! execute_lane0_bypasser_integer_RS2_bypassEnables_bools_0));
  end

  assign execute_lane0_bypasser_integer_RS2_sel = _zz_execute_lane0_bypasser_integer_RS2_sel;
  assign execute_ctrl1_down_integer_RS2_lane0 = ((execute_lane0_bypasser_integer_RS2_sel[0] ? execute_ctrl5_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0 : 32'h0) | (execute_lane0_bypasser_integer_RS2_sel[1] ? execute_lane0_bypasser_integer_RS2_port_data : 32'h0));
  assign execute_lane0_bypasser_integer_RS1_port_valid = (! execute_freeze_valid);
  assign execute_lane0_bypasser_integer_RS1_port_address = execute_ctrl0_down_RS1_PHYS_lane0[4 : 0];
  always @(*) begin
    execute_lane0_bypasser_integer_RS1_bypassEnables[0] = (((execute_ctrl5_up_LANE_SEL_lane0 && execute_ctrl5_up_RD_ENABLE_lane0) && (execute_ctrl5_down_RD_PHYS_lane0 == execute_ctrl1_down_RS1_PHYS_lane0)) && 1'b1);
    execute_lane0_bypasser_integer_RS1_bypassEnables[1] = 1'b1;
  end

  assign _zz_execute_lane0_bypasser_integer_RS1_bypassEnables_bools_0 = execute_lane0_bypasser_integer_RS1_bypassEnables;
  assign execute_lane0_bypasser_integer_RS1_bypassEnables_bools_0 = _zz_execute_lane0_bypasser_integer_RS1_bypassEnables_bools_0[0];
  assign execute_lane0_bypasser_integer_RS1_bypassEnables_bools_1 = _zz_execute_lane0_bypasser_integer_RS1_bypassEnables_bools_0[1];
  always @(*) begin
    _zz_execute_lane0_bypasser_integer_RS1_sel[0] = (execute_lane0_bypasser_integer_RS1_bypassEnables_bools_0 && (! 1'b0));
    _zz_execute_lane0_bypasser_integer_RS1_sel[1] = (execute_lane0_bypasser_integer_RS1_bypassEnables_bools_1 && (! execute_lane0_bypasser_integer_RS1_bypassEnables_bools_0));
  end

  assign execute_lane0_bypasser_integer_RS1_sel = _zz_execute_lane0_bypasser_integer_RS1_sel;
  assign execute_ctrl1_down_integer_RS1_lane0 = ((execute_lane0_bypasser_integer_RS1_sel[0] ? execute_ctrl5_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0 : 32'h0) | (execute_lane0_bypasser_integer_RS1_sel[1] ? execute_lane0_bypasser_integer_RS1_port_data : 32'h0));
  assign execute_lane0_logic_completions_onCtrl_0_port_valid = (((execute_ctrl2_down_LANE_SEL_lane0 && execute_ctrl2_down_isReady) && (! execute_lane0_ctrls_2_downIsCancel)) && execute_ctrl2_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0);
  assign execute_lane0_logic_completions_onCtrl_0_port_payload_uopId = execute_ctrl2_down_Decode_UOP_ID_lane0;
  assign execute_lane0_logic_completions_onCtrl_0_port_payload_trap = execute_ctrl2_down_TRAP_lane0;
  assign execute_lane0_logic_completions_onCtrl_0_port_payload_commit = execute_ctrl2_down_COMMIT_lane0;
  assign execute_lane0_logic_completions_onCtrl_1_port_valid = (((execute_ctrl3_down_LANE_SEL_lane0 && execute_ctrl3_down_isReady) && (! execute_lane0_ctrls_3_downIsCancel)) && execute_ctrl3_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0);
  assign execute_lane0_logic_completions_onCtrl_1_port_payload_uopId = execute_ctrl3_down_Decode_UOP_ID_lane0;
  assign execute_lane0_logic_completions_onCtrl_1_port_payload_trap = execute_ctrl3_down_TRAP_lane0;
  assign execute_lane0_logic_completions_onCtrl_1_port_payload_commit = execute_ctrl3_down_COMMIT_lane0;
  assign execute_lane0_logic_completions_onCtrl_2_port_valid = (((execute_ctrl4_down_LANE_SEL_lane0 && execute_ctrl4_down_isReady) && (! execute_lane0_ctrls_4_downIsCancel)) && execute_ctrl4_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0);
  assign execute_lane0_logic_completions_onCtrl_2_port_payload_uopId = execute_ctrl4_down_Decode_UOP_ID_lane0;
  assign execute_lane0_logic_completions_onCtrl_2_port_payload_trap = execute_ctrl4_down_TRAP_lane0;
  assign execute_lane0_logic_completions_onCtrl_2_port_payload_commit = execute_ctrl4_down_COMMIT_lane0;
  assign execute_lane0_logic_decoding_decodingBits = execute_ctrl1_down_Decode_UOP_lane0;
  always @(*) begin
    execute_ctrl1_down_early0_IntAluPlugin_SEL_lane0 = _zz_execute_ctrl1_down_early0_IntAluPlugin_SEL_lane0[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_early0_IntAluPlugin_SEL_lane0 = 1'b0;
    end
  end

  always @(*) begin
    execute_ctrl1_down_early0_BarrelShifterPlugin_SEL_lane0 = _zz_execute_ctrl1_down_early0_BarrelShifterPlugin_SEL_lane0[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_early0_BarrelShifterPlugin_SEL_lane0 = 1'b0;
    end
  end

  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0 = ((execute_lane0_logic_decoding_decodingBits & 32'h00000050) == 32'h00000040);
  always @(*) begin
    execute_ctrl1_down_early0_BranchPlugin_SEL_lane0 = _zz_execute_ctrl1_down_early0_BranchPlugin_SEL_lane0[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_early0_BranchPlugin_SEL_lane0 = 1'b0;
    end
  end

  always @(*) begin
    execute_ctrl1_down_early0_EnvPlugin_SEL_lane0 = _zz_execute_ctrl1_down_early0_EnvPlugin_SEL_lane0[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_early0_EnvPlugin_SEL_lane0 = 1'b0;
    end
  end

  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0 = ((execute_lane0_logic_decoding_decodingBits & 32'h00002050) == 32'h00002050);
  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_1 = ((execute_lane0_logic_decoding_decodingBits & 32'h00001050) == 32'h00001050);
  always @(*) begin
    execute_ctrl1_down_CsrAccessPlugin_SEL_lane0 = _zz_execute_ctrl1_down_CsrAccessPlugin_SEL_lane0[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_CsrAccessPlugin_SEL_lane0 = 1'b0;
    end
  end

  always @(*) begin
    execute_ctrl1_down_AguPlugin_SEL_lane0 = _zz_execute_ctrl1_down_AguPlugin_SEL_lane0[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_AguPlugin_SEL_lane0 = 1'b0;
    end
  end

  always @(*) begin
    execute_ctrl1_down_LsuCachelessPlugin_FENCE_lane0 = _zz_execute_ctrl1_down_LsuCachelessPlugin_FENCE_lane0[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_LsuCachelessPlugin_FENCE_lane0 = 1'b0;
    end
  end

  assign _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0 = ((execute_lane0_logic_decoding_decodingBits & 32'h0000000c) == 32'h00000004);
  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_1 = ((execute_lane0_logic_decoding_decodingBits & 32'h00000050) == 32'h00000010);
  always @(*) begin
    execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0 = _zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0_1[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0 = 1'b0;
    end
  end

  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_2 = ((execute_lane0_logic_decoding_decodingBits & 32'h00003040) == 32'h00000040);
  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_3 = ((execute_lane0_logic_decoding_decodingBits & 32'h00000008) == 32'h00000008);
  always @(*) begin
    execute_ctrl1_down_COMPLETION_AT_2_lane0 = _zz_execute_ctrl1_down_COMPLETION_AT_2_lane0[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_COMPLETION_AT_2_lane0 = 1'b0;
    end
  end

  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_2 = ((execute_lane0_logic_decoding_decodingBits & 32'h00000070) == 32'h00000020);
  always @(*) begin
    execute_ctrl1_down_COMPLETION_AT_3_lane0 = _zz_execute_ctrl1_down_COMPLETION_AT_3_lane0[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_COMPLETION_AT_3_lane0 = 1'b0;
    end
  end

  assign _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0 = ((execute_lane0_logic_decoding_decodingBits & 32'h00000038) == 32'h0);
  always @(*) begin
    execute_ctrl1_down_COMPLETION_AT_4_lane0 = _zz_execute_ctrl1_down_COMPLETION_AT_4_lane0[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_COMPLETION_AT_4_lane0 = 1'b0;
    end
  end

  always @(*) begin
    execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0 = _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_4[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0 = 1'b0;
    end
  end

  always @(*) begin
    execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0 = _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_3[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0 = 1'b0;
    end
  end

  always @(*) begin
    execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0 = _zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0_1[0];
    if(execute_ctrl1_down_TRAP_lane0) begin
      execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0 = 1'b0;
    end
  end

  assign _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0 = ((execute_lane0_logic_decoding_decodingBits & 32'h00000004) == 32'h00000004);
  assign execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0 = _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0_1[0];
  assign execute_ctrl1_down_early0_IntAluPlugin_ALU_SLTX_lane0 = _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_SLTX_lane0[0];
  assign _zz_execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0 = ((execute_lane0_logic_decoding_decodingBits & 32'h00004000) == 32'h0);
  assign _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0 = ((execute_lane0_logic_decoding_decodingBits & 32'h00001000) == 32'h00001000);
  assign _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_1 = {(|{_zz_execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0,{_zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0,_zz_execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0}}),(|{_zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0,{_zz_execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0,((execute_lane0_logic_decoding_decodingBits & 32'h00003000) == 32'h00002000)}})};
  assign _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0 = _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_1;
  assign _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_2 = _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0;
  assign execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0 = _zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0_2;
  assign execute_ctrl1_down_SrcStageables_REVERT_lane0 = _zz_execute_ctrl1_down_SrcStageables_REVERT_lane0[0];
  assign execute_ctrl1_down_SrcStageables_ZERO_lane0 = _zz_execute_ctrl1_down_SrcStageables_ZERO_lane0[0];
  assign execute_ctrl1_down_early0_SrcPlugin_logic_SRC1_CTRL_lane0 = (|((execute_lane0_logic_decoding_decodingBits & 32'h00000044) == 32'h00000004));
  assign execute_ctrl1_down_early0_SrcPlugin_logic_SRC2_CTRL_lane0 = {(|{_zz_execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0,_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0_2}),(|{((execute_lane0_logic_decoding_decodingBits & 32'h00000050) == 32'h0),((execute_lane0_logic_decoding_decodingBits & 32'h00000024) == 32'h0)})};
  assign execute_ctrl1_down_lane0_IntFormatPlugin_logic_SIGNED_lane0 = _zz_execute_ctrl1_down_lane0_IntFormatPlugin_logic_SIGNED_lane0[0];
  assign _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0 = ((execute_lane0_logic_decoding_decodingBits & 32'h00002000) == 32'h00002000);
  assign execute_ctrl1_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0 = {(|{((execute_lane0_logic_decoding_decodingBits & 32'h00000010) == 32'h00000010),_zz_execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0}),(|((execute_lane0_logic_decoding_decodingBits & 32'h00001010) == 32'h00001000))};
  assign execute_ctrl1_down_BYPASSED_AT_1_lane0 = _zz_execute_ctrl1_down_BYPASSED_AT_1_lane0[0];
  assign execute_ctrl1_down_BYPASSED_AT_2_lane0 = _zz_execute_ctrl1_down_BYPASSED_AT_2_lane0[0];
  assign execute_ctrl1_down_BYPASSED_AT_3_lane0 = _zz_execute_ctrl1_down_BYPASSED_AT_3_lane0[0];
  assign execute_ctrl1_down_BYPASSED_AT_4_lane0 = _zz_execute_ctrl1_down_BYPASSED_AT_4_lane0[0];
  assign execute_ctrl1_down_SrcStageables_UNSIGNED_lane0 = _zz_execute_ctrl1_down_SrcStageables_UNSIGNED_lane0[0];
  assign execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0 = _zz_execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0_1[0];
  assign execute_ctrl1_down_BarrelShifterPlugin_SIGNED_lane0 = _zz_execute_ctrl1_down_BarrelShifterPlugin_SIGNED_lane0[0];
  assign _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_1 = {(|_zz_execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0),(|_zz_execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0_3)};
  assign _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0 = _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_1;
  assign _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_2 = _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0;
  assign execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0 = _zz_execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0_2;
  assign execute_ctrl1_down_CsrAccessPlugin_CSR_IMM_lane0 = _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_IMM_lane0[0];
  assign execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0 = _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0_1[0];
  assign execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0 = _zz_execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0_1[0];
  assign execute_ctrl1_down_AguPlugin_LOAD_lane0 = _zz_execute_ctrl1_down_AguPlugin_LOAD_lane0[0];
  assign execute_ctrl1_down_AguPlugin_STORE_lane0 = _zz_execute_ctrl1_down_AguPlugin_STORE_lane0[0];
  assign execute_ctrl1_down_AguPlugin_ATOMIC_lane0 = _zz_execute_ctrl1_down_AguPlugin_ATOMIC_lane0[0];
  assign execute_ctrl1_down_AguPlugin_FLOAT_lane0 = _zz_execute_ctrl1_down_AguPlugin_FLOAT_lane0[0];
  assign execute_ctrl1_down_AguPlugin_CLEAN_lane0 = _zz_execute_ctrl1_down_AguPlugin_CLEAN_lane0[0];
  assign execute_ctrl1_down_AguPlugin_INVALIDATE_lane0 = _zz_execute_ctrl1_down_AguPlugin_INVALIDATE_lane0[0];
  assign _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0 = ((execute_lane0_logic_decoding_decodingBits & 32'h00000040) == 32'h0);
  assign _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2 = {(|((execute_lane0_logic_decoding_decodingBits & 32'h30001000) == 32'h10000000)),{(|{((execute_lane0_logic_decoding_decodingBits & _zz__zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2) == 32'h20000000),_zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0}),(|{((execute_lane0_logic_decoding_decodingBits & _zz__zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2_1) == 32'h00100000),_zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0})}};
  assign _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1 = _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_2;
  assign _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3 = _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_1;
  assign execute_ctrl1_down_early0_EnvPlugin_OP_lane0 = _zz_execute_ctrl1_down_early0_EnvPlugin_OP_lane0_3;
  assign when_ExecuteLanePlugin_l306 = (|{(early0_EnvPlugin_logic_flushPort_valid && 1'b1),{(CsrAccessPlugin_logic_flushPort_valid && 1'b1),{(early0_BranchPlugin_logic_flushPort_valid && 1'b1),(LsuCachelessPlugin_logic_flushPort_valid && 1'b1)}}});
  assign execute_lane0_ctrls_0_downIsCancel = 1'b0;
  assign execute_lane0_ctrls_0_upIsCancel = when_ExecuteLanePlugin_l306;
  assign when_ExecuteLanePlugin_l306_1 = (|{(early0_EnvPlugin_logic_flushPort_valid && 1'b1),{(CsrAccessPlugin_logic_flushPort_valid && 1'b1),{(early0_BranchPlugin_logic_flushPort_valid && 1'b1),(LsuCachelessPlugin_logic_flushPort_valid && 1'b1)}}});
  assign execute_lane0_ctrls_1_downIsCancel = 1'b0;
  assign execute_lane0_ctrls_1_upIsCancel = when_ExecuteLanePlugin_l306_1;
  assign when_ExecuteLanePlugin_l306_2 = (|{((early0_EnvPlugin_logic_flushPort_valid && 1'b1) && (1'b0 || (1'b1 && early0_EnvPlugin_logic_flushPort_payload_self))),{((CsrAccessPlugin_logic_flushPort_valid && 1'b1) && (1'b0 || (_zz_when_ExecuteLanePlugin_l306_2 && CsrAccessPlugin_logic_flushPort_payload_self))),{((early0_BranchPlugin_logic_flushPort_valid && _zz_when_ExecuteLanePlugin_l306_2_1) && (_zz_when_ExecuteLanePlugin_l306_2_2 || _zz_when_ExecuteLanePlugin_l306_2_3)),((LsuCachelessPlugin_logic_flushPort_valid && _zz_when_ExecuteLanePlugin_l306_2_4) && (_zz_when_ExecuteLanePlugin_l306_2_5 || _zz_when_ExecuteLanePlugin_l306_2_6))}}});
  assign execute_lane0_ctrls_2_downIsCancel = 1'b0;
  assign execute_lane0_ctrls_2_upIsCancel = when_ExecuteLanePlugin_l306_2;
  assign execute_lane0_ctrls_3_downIsCancel = 1'b0;
  assign execute_lane0_ctrls_3_upIsCancel = 1'b0;
  assign execute_lane0_ctrls_4_downIsCancel = 1'b0;
  assign execute_lane0_ctrls_4_upIsCancel = 1'b0;
  assign execute_lane0_ctrls_5_downIsCancel = 1'b0;
  assign execute_lane0_ctrls_5_upIsCancel = 1'b0;
  assign execute_lane0_logic_trapPending[0] = (|{((execute_ctrl4_up_LANE_SEL_lane0 && 1'b1) && execute_ctrl4_down_TRAP_lane0),{((execute_ctrl3_up_LANE_SEL_lane0 && 1'b1) && execute_ctrl3_down_TRAP_lane0),{((execute_ctrl2_up_LANE_SEL_lane0 && 1'b1) && execute_ctrl2_down_TRAP_lane0),((execute_ctrl1_up_LANE_SEL_lane0 && 1'b1) && execute_ctrl1_down_TRAP_lane0)}}});
  assign execute_ctrl2_up_COMMIT_lane0 = (! execute_ctrl2_up_TRAP_lane0);
  assign WhiteboxerPlugin_logic_csr_access_valid = CsrAccessPlugin_logic_fsm_interface_fire;
  assign WhiteboxerPlugin_logic_csr_access_payload_uopId = CsrAccessPlugin_logic_fsm_interface_uopId;
  assign WhiteboxerPlugin_logic_csr_access_payload_address = _zz_WhiteboxerPlugin_logic_csr_access_payload_address[31 : 20];
  assign WhiteboxerPlugin_logic_csr_access_payload_write = CsrAccessPlugin_logic_fsm_interface_onWriteBits;
  assign WhiteboxerPlugin_logic_csr_access_payload_read = CsrAccessPlugin_logic_fsm_interface_csrValue;
  assign WhiteboxerPlugin_logic_csr_access_payload_writeDone = CsrAccessPlugin_logic_fsm_interface_write;
  assign WhiteboxerPlugin_logic_csr_access_payload_readDone = CsrAccessPlugin_logic_fsm_interface_read;
  assign WhiteboxerPlugin_logic_csr_port_valid = WhiteboxerPlugin_logic_csr_access_valid;
  assign WhiteboxerPlugin_logic_csr_port_payload_uopId = WhiteboxerPlugin_logic_csr_access_payload_uopId;
  assign WhiteboxerPlugin_logic_csr_port_payload_address = WhiteboxerPlugin_logic_csr_access_payload_address;
  assign WhiteboxerPlugin_logic_csr_port_payload_write = WhiteboxerPlugin_logic_csr_access_payload_write;
  assign WhiteboxerPlugin_logic_csr_port_payload_read = WhiteboxerPlugin_logic_csr_access_payload_read;
  assign WhiteboxerPlugin_logic_csr_port_payload_writeDone = WhiteboxerPlugin_logic_csr_access_payload_writeDone;
  assign WhiteboxerPlugin_logic_csr_port_payload_readDone = WhiteboxerPlugin_logic_csr_access_payload_readDone;
  assign WhiteboxerPlugin_logic_rfWrites_ports_0_valid = lane0_integer_WriteBackPlugin_logic_stages_0_write_valid;
  assign WhiteboxerPlugin_logic_rfWrites_ports_0_payload_uopId = lane0_integer_WriteBackPlugin_logic_stages_0_write_payload_uopId;
  assign WhiteboxerPlugin_logic_rfWrites_ports_0_payload_data = lane0_integer_WriteBackPlugin_logic_stages_0_write_payload_data;
  assign WhiteboxerPlugin_logic_rfWrites_ports_1_valid = lane0_integer_WriteBackPlugin_logic_stages_1_write_valid;
  assign WhiteboxerPlugin_logic_rfWrites_ports_1_payload_uopId = lane0_integer_WriteBackPlugin_logic_stages_1_write_payload_uopId;
  assign WhiteboxerPlugin_logic_rfWrites_ports_1_payload_data = lane0_integer_WriteBackPlugin_logic_stages_1_write_payload_data;
  assign WhiteboxerPlugin_logic_rfWrites_ports_2_valid = lane0_integer_WriteBackPlugin_logic_stages_2_write_valid;
  assign WhiteboxerPlugin_logic_rfWrites_ports_2_payload_uopId = lane0_integer_WriteBackPlugin_logic_stages_2_write_payload_uopId;
  assign WhiteboxerPlugin_logic_rfWrites_ports_2_payload_data = lane0_integer_WriteBackPlugin_logic_stages_2_write_payload_data;
  assign WhiteboxerPlugin_logic_completions_ports_0_valid = DecoderPlugin_logic_laneLogic_0_completionPort_valid;
  assign WhiteboxerPlugin_logic_completions_ports_0_payload_uopId = DecoderPlugin_logic_laneLogic_0_completionPort_payload_uopId;
  assign WhiteboxerPlugin_logic_completions_ports_0_payload_trap = DecoderPlugin_logic_laneLogic_0_completionPort_payload_trap;
  assign WhiteboxerPlugin_logic_completions_ports_0_payload_commit = DecoderPlugin_logic_laneLogic_0_completionPort_payload_commit;
  assign WhiteboxerPlugin_logic_completions_ports_1_valid = execute_lane0_logic_completions_onCtrl_0_port_valid;
  assign WhiteboxerPlugin_logic_completions_ports_1_payload_uopId = execute_lane0_logic_completions_onCtrl_0_port_payload_uopId;
  assign WhiteboxerPlugin_logic_completions_ports_1_payload_trap = execute_lane0_logic_completions_onCtrl_0_port_payload_trap;
  assign WhiteboxerPlugin_logic_completions_ports_1_payload_commit = execute_lane0_logic_completions_onCtrl_0_port_payload_commit;
  assign WhiteboxerPlugin_logic_completions_ports_2_valid = execute_lane0_logic_completions_onCtrl_1_port_valid;
  assign WhiteboxerPlugin_logic_completions_ports_2_payload_uopId = execute_lane0_logic_completions_onCtrl_1_port_payload_uopId;
  assign WhiteboxerPlugin_logic_completions_ports_2_payload_trap = execute_lane0_logic_completions_onCtrl_1_port_payload_trap;
  assign WhiteboxerPlugin_logic_completions_ports_2_payload_commit = execute_lane0_logic_completions_onCtrl_1_port_payload_commit;
  assign WhiteboxerPlugin_logic_completions_ports_3_valid = execute_lane0_logic_completions_onCtrl_2_port_valid;
  assign WhiteboxerPlugin_logic_completions_ports_3_payload_uopId = execute_lane0_logic_completions_onCtrl_2_port_payload_uopId;
  assign WhiteboxerPlugin_logic_completions_ports_3_payload_trap = execute_lane0_logic_completions_onCtrl_2_port_payload_trap;
  assign WhiteboxerPlugin_logic_completions_ports_3_payload_commit = execute_lane0_logic_completions_onCtrl_2_port_payload_commit;
  assign WhiteboxerPlugin_logic_commits_ports_0_oh_0 = ((((execute_ctrl4_down_LANE_SEL_lane0 && execute_ctrl4_down_isReady) && (! execute_lane0_ctrls_4_downIsCancel)) && execute_ctrl4_down_COMMIT_lane0) && 1'b1);
  assign WhiteboxerPlugin_logic_commits_ports_0_valid = (|WhiteboxerPlugin_logic_commits_ports_0_oh_0);
  assign WhiteboxerPlugin_logic_commits_ports_0_pc = (WhiteboxerPlugin_logic_commits_ports_0_oh_0 ? execute_ctrl4_down_PC_lane0 : 32'h0);
  assign WhiteboxerPlugin_logic_commits_ports_0_uop = (WhiteboxerPlugin_logic_commits_ports_0_oh_0 ? execute_ctrl4_down_Decode_UOP_lane0 : 32'h0);
  assign WhiteboxerPlugin_logic_reschedules_flushes_0_valid = LsuCachelessPlugin_logic_flushPort_valid;
  assign WhiteboxerPlugin_logic_reschedules_flushes_0_payload_uopId = LsuCachelessPlugin_logic_flushPort_payload_uopId;
  assign WhiteboxerPlugin_logic_reschedules_flushes_0_payload_self = LsuCachelessPlugin_logic_flushPort_payload_self;
  assign WhiteboxerPlugin_logic_reschedules_flushes_1_valid = early0_BranchPlugin_logic_flushPort_valid;
  assign WhiteboxerPlugin_logic_reschedules_flushes_1_payload_uopId = early0_BranchPlugin_logic_flushPort_payload_uopId;
  assign WhiteboxerPlugin_logic_reschedules_flushes_1_payload_self = early0_BranchPlugin_logic_flushPort_payload_self;
  assign WhiteboxerPlugin_logic_reschedules_flushes_2_valid = CsrAccessPlugin_logic_flushPort_valid;
  assign WhiteboxerPlugin_logic_reschedules_flushes_2_payload_uopId = CsrAccessPlugin_logic_flushPort_payload_uopId;
  assign WhiteboxerPlugin_logic_reschedules_flushes_2_payload_self = CsrAccessPlugin_logic_flushPort_payload_self;
  assign WhiteboxerPlugin_logic_reschedules_flushes_3_valid = early0_EnvPlugin_logic_flushPort_valid;
  assign WhiteboxerPlugin_logic_reschedules_flushes_3_payload_uopId = early0_EnvPlugin_logic_flushPort_payload_uopId;
  assign WhiteboxerPlugin_logic_reschedules_flushes_3_payload_self = early0_EnvPlugin_logic_flushPort_payload_self;
  assign WhiteboxerPlugin_logic_reschedules_flushes_4_valid = DecoderPlugin_logic_laneLogic_0_flushPort_valid;
  assign WhiteboxerPlugin_logic_reschedules_flushes_4_payload_uopId = DecoderPlugin_logic_laneLogic_0_flushPort_payload_uopId;
  assign WhiteboxerPlugin_logic_reschedules_flushes_4_payload_self = DecoderPlugin_logic_laneLogic_0_flushPort_payload_self;
  assign early0_BranchPlugin_logic_jumpLogic_learn_asFlow_valid = early0_BranchPlugin_logic_jumpLogic_learn_valid;
  assign early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_pcOnLastSlice = early0_BranchPlugin_logic_jumpLogic_learn_payload_pcOnLastSlice;
  assign early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_pcTarget = early0_BranchPlugin_logic_jumpLogic_learn_payload_pcTarget;
  assign early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_taken = early0_BranchPlugin_logic_jumpLogic_learn_payload_taken;
  assign early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_isBranch = early0_BranchPlugin_logic_jumpLogic_learn_payload_isBranch;
  assign early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_isPush = early0_BranchPlugin_logic_jumpLogic_learn_payload_isPush;
  assign early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_isPop = early0_BranchPlugin_logic_jumpLogic_learn_payload_isPop;
  assign early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_wasWrong = early0_BranchPlugin_logic_jumpLogic_learn_payload_wasWrong;
  assign early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_badPredictedTarget = early0_BranchPlugin_logic_jumpLogic_learn_payload_badPredictedTarget;
  assign early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_uopId = early0_BranchPlugin_logic_jumpLogic_learn_payload_uopId;
  assign WhiteboxerPlugin_logic_prediction_learns_0_valid = early0_BranchPlugin_logic_jumpLogic_learn_asFlow_valid;
  assign WhiteboxerPlugin_logic_prediction_learns_0_payload_pcOnLastSlice = early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_pcOnLastSlice;
  assign WhiteboxerPlugin_logic_prediction_learns_0_payload_pcTarget = early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_pcTarget;
  assign WhiteboxerPlugin_logic_prediction_learns_0_payload_taken = early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_taken;
  assign WhiteboxerPlugin_logic_prediction_learns_0_payload_isBranch = early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_isBranch;
  assign WhiteboxerPlugin_logic_prediction_learns_0_payload_isPush = early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_isPush;
  assign WhiteboxerPlugin_logic_prediction_learns_0_payload_isPop = early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_isPop;
  assign WhiteboxerPlugin_logic_prediction_learns_0_payload_wasWrong = early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_wasWrong;
  assign WhiteboxerPlugin_logic_prediction_learns_0_payload_badPredictedTarget = early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_badPredictedTarget;
  assign WhiteboxerPlugin_logic_prediction_learns_0_payload_uopId = early0_BranchPlugin_logic_jumpLogic_learn_asFlow_payload_uopId;
  assign WhiteboxerPlugin_logic_loadExecute_fire = ((((((execute_ctrl4_down_LANE_SEL_lane0 && execute_ctrl4_down_isReady) && (! execute_lane0_ctrls_4_downIsCancel)) && execute_ctrl4_down_AguPlugin_SEL_lane0) && execute_ctrl4_down_AguPlugin_LOAD_lane0) && (! execute_ctrl4_down_TRAP_lane0)) && (! execute_ctrl4_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_io));
  assign WhiteboxerPlugin_logic_loadExecute_uopId = execute_ctrl4_down_Decode_UOP_ID_lane0;
  assign WhiteboxerPlugin_logic_loadExecute_size = execute_ctrl4_down_AguPlugin_SIZE_lane0;
  assign WhiteboxerPlugin_logic_loadExecute_address = execute_ctrl4_down_MMU_TRANSLATED_lane0;
  assign WhiteboxerPlugin_logic_loadExecute_data = lane0_IntFormatPlugin_logic_stages_2_wb_payload;
  assign WhiteboxerPlugin_logic_storeCommit_fire = ((LsuCachelessPlugin_logic_bus_cmd_fire && LsuCachelessPlugin_logic_bus_cmd_payload_write) && (! LsuCachelessPlugin_logic_bus_cmd_payload_io));
  assign WhiteboxerPlugin_logic_storeCommit_uopId = execute_ctrl2_down_Decode_UOP_ID_lane0;
  assign WhiteboxerPlugin_logic_storeCommit_size = LsuCachelessPlugin_logic_bus_cmd_payload_size;
  assign WhiteboxerPlugin_logic_storeCommit_address = LsuCachelessPlugin_logic_bus_cmd_payload_address;
  assign WhiteboxerPlugin_logic_storeCommit_data = LsuCachelessPlugin_logic_bus_cmd_payload_data;
  assign WhiteboxerPlugin_logic_storeCommit_storeId = execute_ctrl2_down_Decode_UOP_ID_lane0[11:0];
  assign WhiteboxerPlugin_logic_storeCommit_amo = 1'b0;
  assign WhiteboxerPlugin_logic_storeConditional_fire = (((((execute_ctrl4_down_LANE_SEL_lane0 && execute_ctrl4_down_isReady) && (! execute_lane0_ctrls_4_downIsCancel)) && execute_ctrl4_down_AguPlugin_SEL_lane0) && (execute_ctrl4_down_AguPlugin_ATOMIC_lane0 && (! execute_ctrl4_down_AguPlugin_LOAD_lane0))) && (! execute_ctrl4_down_TRAP_lane0));
  assign WhiteboxerPlugin_logic_storeConditional_uopId = execute_ctrl4_down_Decode_UOP_ID_lane0;
  assign WhiteboxerPlugin_logic_storeConditional_miss = execute_ctrl4_down_LsuCachelessPlugin_logic_onJoin_SC_MISS_lane0;
  assign WhiteboxerPlugin_logic_storeBroadcast_fire = WhiteboxerPlugin_logic_storeCommit_fire;
  assign WhiteboxerPlugin_logic_storeBroadcast_storeId = WhiteboxerPlugin_logic_storeCommit_storeId;
  assign fetch_logic_flushes_0_doIt = (|{(DecoderPlugin_logic_laneLogic_0_flushPort_valid && 1'b1),{(early0_EnvPlugin_logic_flushPort_valid && 1'b1),{(CsrAccessPlugin_logic_flushPort_valid && 1'b1),{(early0_BranchPlugin_logic_flushPort_valid && 1'b1),(LsuCachelessPlugin_logic_flushPort_valid && 1'b1)}}}});
  assign fetch_logic_ctrls_1_forgetsSingleRequest_FetchPipelinePlugin_l50 = fetch_logic_flushes_0_doIt;
  assign fetch_logic_ctrls_0_down_MMU_REFILL = 1'b0;
  assign fetch_logic_ctrls_0_down_MMU_HAZARD = 1'b0;
  assign fetch_logic_ctrls_0_down_MMU_TRANSLATED = fetch_logic_ctrls_0_down_Fetch_WORD_PC;
  assign fetch_logic_ctrls_0_down_MMU_ALLOW_EXECUTE = 1'b1;
  assign fetch_logic_ctrls_0_down_MMU_ALLOW_READ = 1'b1;
  assign fetch_logic_ctrls_0_down_MMU_ALLOW_WRITE = 1'b1;
  assign fetch_logic_ctrls_0_down_MMU_PAGE_FAULT = 1'b0;
  assign fetch_logic_ctrls_0_down_MMU_ACCESS_FAULT = 1'b0;
  assign fetch_logic_ctrls_0_down_MMU_BYPASS_TRANSLATION = 1'b1;
  assign execute_ctrl2_down_MMU_REFILL_lane0 = 1'b0;
  assign execute_ctrl2_down_MMU_HAZARD_lane0 = 1'b0;
  assign execute_ctrl2_down_MMU_TRANSLATED_lane0 = execute_ctrl2_down_LsuCachelessPlugin_logic_onAddress_RAW_ADDRESS_lane0;
  assign execute_ctrl2_down_MMU_ALLOW_EXECUTE_lane0 = 1'b1;
  assign execute_ctrl2_down_MMU_ALLOW_READ_lane0 = 1'b1;
  assign execute_ctrl2_down_MMU_ALLOW_WRITE_lane0 = 1'b1;
  assign execute_ctrl2_down_MMU_PAGE_FAULT_lane0 = 1'b0;
  assign execute_ctrl2_down_MMU_ACCESS_FAULT_lane0 = 1'b0;
  assign execute_ctrl2_down_MMU_BYPASS_TRANSLATION_lane0 = 1'b1;
  assign PmpPlugin_logic_isMachine = (PrivilegedPlugin_logic_harts_0_privilege == 2'b11);
  assign PmpPlugin_logic_instructionShouldHit = (! PmpPlugin_logic_isMachine);
  assign PmpPlugin_logic_dataShouldHit = ((! PmpPlugin_logic_isMachine) || (PrivilegedPlugin_logic_harts_0_m_status_mprv && (PrivilegedPlugin_logic_harts_0_m_status_mpp != 2'b11)));
  assign FetchCachelessPlugin_logic_pmpPort_logic_dataShouldHitPort = (PmpPlugin_logic_dataShouldHit || 1'b0);
  assign FetchCachelessPlugin_logic_pmpPort_logic_torCmpAddress = (fetch_logic_ctrls_0_down_MMU_TRANSLATED >>> 4'd12);
  assign fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_pmpPort_logic_NEED_HIT = ((PmpPlugin_logic_instructionShouldHit && 1'b1) || (FetchCachelessPlugin_logic_pmpPort_logic_dataShouldHitPort && (1'b0 || 1'b0)));
  assign fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_pmpPort_ACCESS_FAULT = 1'b0;
  assign LsuCachelessPlugin_logic_pmpPort_logic_dataShouldHitPort = (PmpPlugin_logic_dataShouldHit || 1'b0);
  assign LsuCachelessPlugin_logic_pmpPort_logic_torCmpAddress = (execute_ctrl2_down_MMU_TRANSLATED_lane0 >>> 4'd12);
  assign execute_ctrl2_down_LsuCachelessPlugin_logic_pmpPort_logic_NEED_HIT_lane0 = ((PmpPlugin_logic_instructionShouldHit && 1'b0) || (LsuCachelessPlugin_logic_pmpPort_logic_dataShouldHitPort && (execute_ctrl2_down_AguPlugin_LOAD_lane0 || execute_ctrl2_down_AguPlugin_STORE_lane0)));
  assign execute_ctrl2_down_LsuCachelessPlugin_logic_pmpPort_ACCESS_FAULT_lane0 = 1'b0;
  assign FetchCachelessPlugin_pmaBuilder_addressBits = FetchCachelessPlugin_logic_onPma_port_cmd_address;
  assign FetchCachelessPlugin_pmaBuilder_onTransfers_0_addressHit = _zz_FetchCachelessPlugin_pmaBuilder_onTransfers_0_addressHit[0];
  assign FetchCachelessPlugin_pmaBuilder_onTransfers_0_argsHit = (|1'b1);
  assign FetchCachelessPlugin_pmaBuilder_onTransfers_0_hit = (FetchCachelessPlugin_pmaBuilder_onTransfers_0_argsHit && FetchCachelessPlugin_pmaBuilder_onTransfers_0_addressHit);
  assign _zz_FetchCachelessPlugin_logic_onPma_port_rsp_fault = ((FetchCachelessPlugin_pmaBuilder_addressBits & 32'h80000000) == 32'h80000000);
  assign FetchCachelessPlugin_logic_onPma_port_rsp_fault = (! ((|{_zz_FetchCachelessPlugin_logic_onPma_port_rsp_fault,((FetchCachelessPlugin_pmaBuilder_addressBits & 32'hf0000000) == 32'h10000000)}) && (|FetchCachelessPlugin_pmaBuilder_onTransfers_0_hit)));
  assign FetchCachelessPlugin_logic_onPma_port_rsp_io = (! _zz_FetchCachelessPlugin_logic_onPma_port_rsp_io[0]);
  assign FetchCachelessAxi4Plugin_logic_bridge_axi_ar_valid = FetchCachelessPlugin_logic_bus_cmd_valid;
  assign FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_addr = FetchCachelessPlugin_logic_bus_cmd_payload_address;
  assign FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_id = FetchCachelessPlugin_logic_bus_cmd_payload_id;
  assign FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_size = 3'b010;
  assign FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_prot = 3'b110;
  assign FetchCachelessAxi4Plugin_logic_bridge_axi_ar_payload_cache = 4'b1111;
  assign FetchCachelessPlugin_logic_bus_cmd_ready = FetchCachelessAxi4Plugin_logic_bridge_axi_ar_ready;
  assign FetchCachelessPlugin_logic_bus_rsp_valid = FetchCachelessAxi4Plugin_logic_bridge_axi_r_valid;
  assign FetchCachelessPlugin_logic_bus_rsp_payload_id = FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_id;
  assign FetchCachelessPlugin_logic_bus_rsp_payload_word = FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_data;
  assign FetchCachelessPlugin_logic_bus_rsp_payload_error = (! (FetchCachelessAxi4Plugin_logic_bridge_axi_r_payload_resp == 2'b00));
  assign FetchCachelessAxi4Plugin_logic_bridge_axi_r_ready = 1'b1;
  assign integer_RegFilePlugin_logic_writeMerges_0_bus_valid = (|lane0_integer_WriteBackPlugin_logic_write_port_valid);
  assign integer_RegFilePlugin_logic_writeMerges_0_bus_address = lane0_integer_WriteBackPlugin_logic_write_port_address;
  assign integer_RegFilePlugin_logic_writeMerges_0_bus_data = lane0_integer_WriteBackPlugin_logic_write_port_data;
  assign integer_RegFilePlugin_logic_writeMerges_0_bus_uopId = lane0_integer_WriteBackPlugin_logic_write_port_uopId;
  assign execute_lane0_bypasser_integer_RS2_port_data = integer_RegFilePlugin_logic_regfile_fpga_io_reads_0_data;
  assign execute_lane0_bypasser_integer_RS1_port_data = integer_RegFilePlugin_logic_regfile_fpga_io_reads_1_data;
  always @(*) begin
    integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_valid = integer_RegFilePlugin_logic_writeMerges_0_bus_valid;
    if(when_RegFilePlugin_l132) begin
      integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_valid = 1'b1;
    end
  end

  always @(*) begin
    integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_address = integer_RegFilePlugin_logic_writeMerges_0_bus_address;
    if(when_RegFilePlugin_l132) begin
      integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_address = integer_RegFilePlugin_logic_initalizer_counter[4:0];
    end
  end

  always @(*) begin
    integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_data = integer_RegFilePlugin_logic_writeMerges_0_bus_data;
    if(when_RegFilePlugin_l132) begin
      integer_RegFilePlugin_logic_regfile_fpga_io_writes_0_data = 32'h0;
    end
  end

  assign integer_RegFilePlugin_logic_initalizer_done = integer_RegFilePlugin_logic_initalizer_counter[5];
  assign when_RegFilePlugin_l132 = (! integer_RegFilePlugin_logic_initalizer_done);
  assign integer_write_0_valid = integer_RegFilePlugin_logic_writeMerges_0_bus_valid;
  assign integer_write_0_address = integer_RegFilePlugin_logic_writeMerges_0_bus_address;
  assign integer_write_0_data = integer_RegFilePlugin_logic_writeMerges_0_bus_data;
  assign integer_write_0_uopId = integer_RegFilePlugin_logic_writeMerges_0_bus_uopId;
  assign execute_freeze_valid = (|{CsrAccessPlugin_logic_fsm_inject_freeze,{(execute_ctrl3_down_LsuCachelessPlugin_WITH_RSP_lane0 && (! LsuCachelessPlugin_logic_onJoin_rspValid)),LsuCachelessPlugin_logic_onFork_freezeIt}});
  assign execute_ctrl5_down_ready = (! execute_freeze_valid);
  assign TrapPlugin_logic_initHold = (|{(! CsrRamPlugin_logic_flush_done),(! integer_RegFilePlugin_logic_initalizer_done)});
  assign WhiteboxerPlugin_logic_wfi = TrapPlugin_logic_harts_0_trap_fsm_wfi;
  assign WhiteboxerPlugin_logic_perf_executeFreezed = execute_freeze_valid;
  assign WhiteboxerPlugin_logic_perf_dispatchHazards = (|(DispatchPlugin_logic_candidates_0_ctx_valid && (! DispatchPlugin_logic_candidates_0_fire)));
  assign WhiteboxerPlugin_logic_perf_candidatesCount = _zz_WhiteboxerPlugin_logic_perf_candidatesCount;
  assign WhiteboxerPlugin_logic_perf_dispatchFeedCount = _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCount;
  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter = 1'b0;
    if(WhiteboxerPlugin_logic_perf_executeFreezed) begin
      _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter = 1'b1;
    end
  end

  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_1 = (_zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_2 + _zz__zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_1);
    if(1'b0) begin
      _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_1 = 60'h0;
    end
  end

  assign WhiteboxerPlugin_logic_perf_executeFreezedCounter = _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_2;
  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter = 1'b0;
    if(WhiteboxerPlugin_logic_perf_dispatchHazards) begin
      _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter = 1'b1;
    end
  end

  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_1 = (_zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_2 + _zz__zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_1);
    if(1'b0) begin
      _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_1 = 60'h0;
    end
  end

  assign WhiteboxerPlugin_logic_perf_dispatchHazardsCounter = _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_2;
  assign when_Utils_l593 = (WhiteboxerPlugin_logic_perf_candidatesCount == 1'b0);
  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0 = 1'b0;
    if(when_Utils_l593) begin
      _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0 = 1'b1;
    end
  end

  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_1 = (_zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_2 + _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_1);
    if(1'b0) begin
      _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_1 = 60'h0;
    end
  end

  assign WhiteboxerPlugin_logic_perf_candidatesCountCounters_0 = _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_2;
  assign when_Utils_l593_1 = (WhiteboxerPlugin_logic_perf_candidatesCount == 1'b1);
  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1 = 1'b0;
    if(when_Utils_l593_1) begin
      _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1 = 1'b1;
    end
  end

  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_1 = (_zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_2 + _zz__zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_1);
    if(1'b0) begin
      _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_1 = 60'h0;
    end
  end

  assign WhiteboxerPlugin_logic_perf_candidatesCountCounters_1 = _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_2;
  assign when_Utils_l593_2 = (WhiteboxerPlugin_logic_perf_dispatchFeedCount == 1'b0);
  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0 = 1'b0;
    if(when_Utils_l593_2) begin
      _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0 = 1'b1;
    end
  end

  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_1 = (_zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_2 + _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_1);
    if(1'b0) begin
      _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_1 = 60'h0;
    end
  end

  assign WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0 = _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_2;
  assign when_Utils_l593_3 = (WhiteboxerPlugin_logic_perf_dispatchFeedCount == 1'b1);
  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1 = 1'b0;
    if(when_Utils_l593_3) begin
      _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1 = 1'b1;
    end
  end

  always @(*) begin
    _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_1 = (_zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_2 + _zz__zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_1);
    if(1'b0) begin
      _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_1 = 60'h0;
    end
  end

  assign WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1 = _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_2;
  assign WhiteboxerPlugin_logic_trap_ports_0_valid = TrapPlugin_logic_harts_0_trap_whitebox_trap;
  assign WhiteboxerPlugin_logic_trap_ports_0_interrupt = TrapPlugin_logic_harts_0_trap_whitebox_interrupt;
  assign WhiteboxerPlugin_logic_trap_ports_0_cause = TrapPlugin_logic_harts_0_trap_whitebox_code;
  assign fetch_logic_ctrls_1_up_forgetOne = (|fetch_logic_ctrls_1_forgetsSingleRequest_FetchPipelinePlugin_l50);
  assign fetch_logic_ctrls_1_up_cancel = (|fetch_logic_flushes_0_doIt);
  assign fetch_logic_ctrls_0_down_ready = fetch_logic_ctrls_1_up_ready;
  always @(*) begin
    fetch_logic_ctrls_0_down_valid = fetch_logic_ctrls_0_up_valid;
    if(when_CtrlLink_l191) begin
      fetch_logic_ctrls_0_down_valid = 1'b0;
    end
  end

  always @(*) begin
    fetch_logic_ctrls_0_up_ready = fetch_logic_ctrls_0_down_isReady;
    if(when_CtrlLink_l191) begin
      fetch_logic_ctrls_0_up_ready = 1'b0;
    end
  end

  assign when_CtrlLink_l191 = (|{fetch_logic_ctrls_0_haltRequest_CtrlLink_l112,fetch_logic_ctrls_0_haltRequest_PcPlugin_l133});
  assign fetch_logic_ctrls_0_down_Fetch_WORD_PC = fetch_logic_ctrls_0_up_Fetch_WORD_PC;
  assign fetch_logic_ctrls_0_down_Fetch_ID = fetch_logic_ctrls_0_up_Fetch_ID;
  always @(*) begin
    fetch_logic_ctrls_1_down_valid = fetch_logic_ctrls_1_up_valid;
    if(when_CtrlLink_l191_1) begin
      fetch_logic_ctrls_1_down_valid = 1'b0;
    end
  end

  always @(*) begin
    fetch_logic_ctrls_1_up_ready = fetch_logic_ctrls_1_down_isReady;
    if(when_CtrlLink_l191_1) begin
      fetch_logic_ctrls_1_up_ready = 1'b0;
    end
  end

  assign when_CtrlLink_l191_1 = (|fetch_logic_ctrls_1_haltRequest_FetchCachelessPlugin_l211);
  assign fetch_logic_ctrls_1_down_Fetch_WORD_PC = fetch_logic_ctrls_1_up_Fetch_WORD_PC;
  assign fetch_logic_ctrls_1_down_Fetch_ID = fetch_logic_ctrls_1_up_Fetch_ID;
  assign fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_BUFFER_ID = fetch_logic_ctrls_1_up_FetchCachelessPlugin_logic_BUFFER_ID;
  assign fetch_logic_ctrls_1_down_FetchCachelessPlugin_logic_fork_PMA_FAULT = fetch_logic_ctrls_1_up_FetchCachelessPlugin_logic_fork_PMA_FAULT;
  assign fetch_logic_ctrls_1_down_MMU_HAZARD = fetch_logic_ctrls_1_up_MMU_HAZARD;
  assign fetch_logic_ctrls_1_down_MMU_REFILL = fetch_logic_ctrls_1_up_MMU_REFILL;
  assign fetch_logic_ctrls_1_down_MMU_ALLOW_EXECUTE = fetch_logic_ctrls_1_up_MMU_ALLOW_EXECUTE;
  assign fetch_logic_ctrls_1_down_MMU_PAGE_FAULT = fetch_logic_ctrls_1_up_MMU_PAGE_FAULT;
  assign fetch_logic_ctrls_1_down_MMU_ACCESS_FAULT = fetch_logic_ctrls_1_up_MMU_ACCESS_FAULT;
  always @(*) begin
    decode_ctrls_0_down_ready = decode_ctrls_1_up_ready;
    if(when_StageLink_l71) begin
      decode_ctrls_0_down_ready = 1'b1;
    end
  end

  assign when_StageLink_l71 = (! decode_ctrls_1_up_isValid);
  assign when_DecodePipelinePlugin_l70 = ((! decode_ctrls_1_up_isReady) && decode_ctrls_1_lane0_upIsCancel);
  assign decode_ctrls_0_down_valid = decode_ctrls_0_up_valid;
  assign decode_ctrls_0_up_ready = decode_ctrls_0_down_isReady;
  assign decode_ctrls_0_down_Decode_INSTRUCTION_0 = decode_ctrls_0_up_Decode_INSTRUCTION_0;
  assign decode_ctrls_0_down_Decode_DECOMPRESSION_FAULT_0 = decode_ctrls_0_up_Decode_DECOMPRESSION_FAULT_0;
  assign decode_ctrls_0_down_Decode_INSTRUCTION_RAW_0 = decode_ctrls_0_up_Decode_INSTRUCTION_RAW_0;
  assign decode_ctrls_0_down_PC_0 = decode_ctrls_0_up_PC_0;
  assign decode_ctrls_0_down_Decode_DOP_ID_0 = decode_ctrls_0_up_Decode_DOP_ID_0;
  assign decode_ctrls_0_down_Fetch_ID_0 = decode_ctrls_0_up_Fetch_ID_0;
  assign decode_ctrls_0_down_TRAP_0 = decode_ctrls_0_up_TRAP_0;
  assign decode_ctrls_1_down_valid = decode_ctrls_1_up_valid;
  assign decode_ctrls_1_up_ready = decode_ctrls_1_down_isReady;
  assign decode_ctrls_1_down_Decode_INSTRUCTION_0 = decode_ctrls_1_up_Decode_INSTRUCTION_0;
  assign decode_ctrls_1_down_Decode_DECOMPRESSION_FAULT_0 = decode_ctrls_1_up_Decode_DECOMPRESSION_FAULT_0;
  assign decode_ctrls_1_down_Decode_INSTRUCTION_RAW_0 = decode_ctrls_1_up_Decode_INSTRUCTION_RAW_0;
  assign decode_ctrls_1_down_PC_0 = decode_ctrls_1_up_PC_0;
  assign decode_ctrls_1_down_Decode_DOP_ID_0 = decode_ctrls_1_up_Decode_DOP_ID_0;
  assign execute_ctrl0_down_ready = execute_ctrl1_up_ready;
  assign execute_ctrl1_down_ready = execute_ctrl2_up_ready;
  assign execute_ctrl2_down_ready = execute_ctrl3_up_ready;
  assign execute_ctrl3_down_ready = execute_ctrl4_up_ready;
  assign execute_ctrl4_down_ready = execute_ctrl5_up_ready;
  assign execute_ctrl0_up_ready = execute_ctrl0_down_isReady;
  assign execute_ctrl0_down_Decode_UOP_lane0 = execute_ctrl0_up_Decode_UOP_lane0;
  assign execute_ctrl0_down_PC_lane0 = execute_ctrl0_up_PC_lane0;
  assign execute_ctrl0_down_TRAP_lane0 = execute_ctrl0_up_TRAP_lane0;
  assign execute_ctrl0_down_Decode_UOP_ID_lane0 = execute_ctrl0_up_Decode_UOP_ID_lane0;
  assign execute_ctrl0_down_RS1_PHYS_lane0 = execute_ctrl0_up_RS1_PHYS_lane0;
  assign execute_ctrl0_down_RS2_PHYS_lane0 = execute_ctrl0_up_RS2_PHYS_lane0;
  assign execute_ctrl0_down_RD_PHYS_lane0 = execute_ctrl0_up_RD_PHYS_lane0;
  assign execute_ctrl0_down_COMPLETED_lane0 = execute_ctrl0_up_COMPLETED_lane0;
  assign execute_ctrl1_up_ready = execute_ctrl1_down_isReady;
  assign execute_ctrl1_down_Decode_UOP_lane0 = execute_ctrl1_up_Decode_UOP_lane0;
  assign execute_ctrl1_down_PC_lane0 = execute_ctrl1_up_PC_lane0;
  assign execute_ctrl1_down_TRAP_lane0 = execute_ctrl1_up_TRAP_lane0;
  assign execute_ctrl1_down_Decode_UOP_ID_lane0 = execute_ctrl1_up_Decode_UOP_ID_lane0;
  assign execute_ctrl1_down_RS1_PHYS_lane0 = execute_ctrl1_up_RS1_PHYS_lane0;
  assign execute_ctrl1_down_RS2_PHYS_lane0 = execute_ctrl1_up_RS2_PHYS_lane0;
  assign execute_ctrl1_down_RD_PHYS_lane0 = execute_ctrl1_up_RD_PHYS_lane0;
  assign execute_ctrl1_down_COMPLETED_lane0 = execute_ctrl1_up_COMPLETED_lane0;
  assign execute_ctrl1_down_AguPlugin_SIZE_lane0 = execute_ctrl1_up_AguPlugin_SIZE_lane0;
  assign execute_ctrl2_up_ready = execute_ctrl2_down_isReady;
  assign execute_ctrl2_down_Decode_UOP_lane0 = execute_ctrl2_up_Decode_UOP_lane0;
  assign execute_ctrl2_down_PC_lane0 = execute_ctrl2_up_PC_lane0;
  assign execute_ctrl2_down_Decode_UOP_ID_lane0 = execute_ctrl2_up_Decode_UOP_ID_lane0;
  assign execute_ctrl2_down_RD_PHYS_lane0 = execute_ctrl2_up_RD_PHYS_lane0;
  assign execute_ctrl2_down_AguPlugin_SIZE_lane0 = execute_ctrl2_up_AguPlugin_SIZE_lane0;
  assign execute_ctrl2_down_early0_SrcPlugin_SRC1_lane0 = execute_ctrl2_up_early0_SrcPlugin_SRC1_lane0;
  assign execute_ctrl2_down_early0_SrcPlugin_SRC2_lane0 = execute_ctrl2_up_early0_SrcPlugin_SRC2_lane0;
  assign execute_ctrl2_down_early0_IntAluPlugin_SEL_lane0 = execute_ctrl2_up_early0_IntAluPlugin_SEL_lane0;
  assign execute_ctrl2_down_early0_BarrelShifterPlugin_SEL_lane0 = execute_ctrl2_up_early0_BarrelShifterPlugin_SEL_lane0;
  assign execute_ctrl2_down_early0_BranchPlugin_SEL_lane0 = execute_ctrl2_up_early0_BranchPlugin_SEL_lane0;
  assign execute_ctrl2_down_early0_EnvPlugin_SEL_lane0 = execute_ctrl2_up_early0_EnvPlugin_SEL_lane0;
  assign execute_ctrl2_down_CsrAccessPlugin_SEL_lane0 = execute_ctrl2_up_CsrAccessPlugin_SEL_lane0;
  assign execute_ctrl2_down_AguPlugin_SEL_lane0 = execute_ctrl2_up_AguPlugin_SEL_lane0;
  assign execute_ctrl2_down_LsuCachelessPlugin_FENCE_lane0 = execute_ctrl2_up_LsuCachelessPlugin_FENCE_lane0;
  assign execute_ctrl2_down_lane0_integer_WriteBackPlugin_SEL_lane0 = execute_ctrl2_up_lane0_integer_WriteBackPlugin_SEL_lane0;
  assign execute_ctrl2_down_COMPLETION_AT_2_lane0 = execute_ctrl2_up_COMPLETION_AT_2_lane0;
  assign execute_ctrl2_down_COMPLETION_AT_3_lane0 = execute_ctrl2_up_COMPLETION_AT_3_lane0;
  assign execute_ctrl2_down_COMPLETION_AT_4_lane0 = execute_ctrl2_up_COMPLETION_AT_4_lane0;
  assign execute_ctrl2_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0 = execute_ctrl2_up_lane0_logic_completions_onCtrl_0_ENABLE_lane0;
  assign execute_ctrl2_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0 = execute_ctrl2_up_lane0_logic_completions_onCtrl_1_ENABLE_lane0;
  assign execute_ctrl2_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0 = execute_ctrl2_up_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
  assign execute_ctrl2_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0 = execute_ctrl2_up_early0_IntAluPlugin_ALU_ADD_SUB_lane0;
  assign execute_ctrl2_down_early0_IntAluPlugin_ALU_SLTX_lane0 = execute_ctrl2_up_early0_IntAluPlugin_ALU_SLTX_lane0;
  assign execute_ctrl2_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0 = execute_ctrl2_up_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0;
  assign execute_ctrl2_down_SrcStageables_REVERT_lane0 = execute_ctrl2_up_SrcStageables_REVERT_lane0;
  assign execute_ctrl2_down_SrcStageables_ZERO_lane0 = execute_ctrl2_up_SrcStageables_ZERO_lane0;
  assign execute_ctrl2_down_lane0_IntFormatPlugin_logic_SIGNED_lane0 = execute_ctrl2_up_lane0_IntFormatPlugin_logic_SIGNED_lane0;
  assign execute_ctrl2_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0 = execute_ctrl2_up_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
  assign execute_ctrl2_down_BYPASSED_AT_2_lane0 = execute_ctrl2_up_BYPASSED_AT_2_lane0;
  assign execute_ctrl2_down_BYPASSED_AT_3_lane0 = execute_ctrl2_up_BYPASSED_AT_3_lane0;
  assign execute_ctrl2_down_BYPASSED_AT_4_lane0 = execute_ctrl2_up_BYPASSED_AT_4_lane0;
  assign execute_ctrl2_down_SrcStageables_UNSIGNED_lane0 = execute_ctrl2_up_SrcStageables_UNSIGNED_lane0;
  assign execute_ctrl2_down_BarrelShifterPlugin_LEFT_lane0 = execute_ctrl2_up_BarrelShifterPlugin_LEFT_lane0;
  assign execute_ctrl2_down_BarrelShifterPlugin_SIGNED_lane0 = execute_ctrl2_up_BarrelShifterPlugin_SIGNED_lane0;
  assign execute_ctrl2_down_BranchPlugin_BRANCH_CTRL_lane0 = execute_ctrl2_up_BranchPlugin_BRANCH_CTRL_lane0;
  assign execute_ctrl2_down_CsrAccessPlugin_CSR_IMM_lane0 = execute_ctrl2_up_CsrAccessPlugin_CSR_IMM_lane0;
  assign execute_ctrl2_down_CsrAccessPlugin_CSR_MASK_lane0 = execute_ctrl2_up_CsrAccessPlugin_CSR_MASK_lane0;
  assign execute_ctrl2_down_CsrAccessPlugin_CSR_CLEAR_lane0 = execute_ctrl2_up_CsrAccessPlugin_CSR_CLEAR_lane0;
  assign execute_ctrl2_down_AguPlugin_LOAD_lane0 = execute_ctrl2_up_AguPlugin_LOAD_lane0;
  assign execute_ctrl2_down_AguPlugin_STORE_lane0 = execute_ctrl2_up_AguPlugin_STORE_lane0;
  assign execute_ctrl2_down_AguPlugin_ATOMIC_lane0 = execute_ctrl2_up_AguPlugin_ATOMIC_lane0;
  assign execute_ctrl2_down_AguPlugin_FLOAT_lane0 = execute_ctrl2_up_AguPlugin_FLOAT_lane0;
  assign execute_ctrl2_down_early0_EnvPlugin_OP_lane0 = execute_ctrl2_up_early0_EnvPlugin_OP_lane0;
  assign execute_ctrl3_up_ready = execute_ctrl3_down_isReady;
  assign execute_ctrl3_down_LANE_SEL_lane0 = execute_ctrl3_up_LANE_SEL_lane0;
  assign execute_ctrl3_down_Decode_UOP_lane0 = execute_ctrl3_up_Decode_UOP_lane0;
  assign execute_ctrl3_down_PC_lane0 = execute_ctrl3_up_PC_lane0;
  assign execute_ctrl3_down_TRAP_lane0 = execute_ctrl3_up_TRAP_lane0;
  assign execute_ctrl3_down_Decode_UOP_ID_lane0 = execute_ctrl3_up_Decode_UOP_ID_lane0;
  assign execute_ctrl3_down_RD_ENABLE_lane0 = execute_ctrl3_up_RD_ENABLE_lane0;
  assign execute_ctrl3_down_RD_PHYS_lane0 = execute_ctrl3_up_RD_PHYS_lane0;
  assign execute_ctrl3_down_AguPlugin_SIZE_lane0 = execute_ctrl3_up_AguPlugin_SIZE_lane0;
  assign execute_ctrl3_down_CsrAccessPlugin_SEL_lane0 = execute_ctrl3_up_CsrAccessPlugin_SEL_lane0;
  assign execute_ctrl3_down_AguPlugin_SEL_lane0 = execute_ctrl3_up_AguPlugin_SEL_lane0;
  assign execute_ctrl3_down_lane0_integer_WriteBackPlugin_SEL_lane0 = execute_ctrl3_up_lane0_integer_WriteBackPlugin_SEL_lane0;
  assign execute_ctrl3_down_COMPLETION_AT_3_lane0 = execute_ctrl3_up_COMPLETION_AT_3_lane0;
  assign execute_ctrl3_down_COMPLETION_AT_4_lane0 = execute_ctrl3_up_COMPLETION_AT_4_lane0;
  assign execute_ctrl3_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0 = execute_ctrl3_up_lane0_logic_completions_onCtrl_1_ENABLE_lane0;
  assign execute_ctrl3_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0 = execute_ctrl3_up_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
  assign execute_ctrl3_down_lane0_IntFormatPlugin_logic_SIGNED_lane0 = execute_ctrl3_up_lane0_IntFormatPlugin_logic_SIGNED_lane0;
  assign execute_ctrl3_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0 = execute_ctrl3_up_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
  assign execute_ctrl3_down_BYPASSED_AT_3_lane0 = execute_ctrl3_up_BYPASSED_AT_3_lane0;
  assign execute_ctrl3_down_BYPASSED_AT_4_lane0 = execute_ctrl3_up_BYPASSED_AT_4_lane0;
  assign execute_ctrl3_down_AguPlugin_LOAD_lane0 = execute_ctrl3_up_AguPlugin_LOAD_lane0;
  assign execute_ctrl3_down_AguPlugin_STORE_lane0 = execute_ctrl3_up_AguPlugin_STORE_lane0;
  assign execute_ctrl3_down_AguPlugin_ATOMIC_lane0 = execute_ctrl3_up_AguPlugin_ATOMIC_lane0;
  assign execute_ctrl3_down_AguPlugin_FLOAT_lane0 = execute_ctrl3_up_AguPlugin_FLOAT_lane0;
  assign execute_ctrl3_down_COMMIT_lane0 = execute_ctrl3_up_COMMIT_lane0;
  assign execute_ctrl3_down_early0_SrcPlugin_ADD_SUB_lane0 = execute_ctrl3_up_early0_SrcPlugin_ADD_SUB_lane0;
  assign execute_ctrl3_down_MMU_TRANSLATED_lane0 = execute_ctrl3_up_MMU_TRANSLATED_lane0;
  assign execute_ctrl3_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault = execute_ctrl3_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault;
  assign execute_ctrl3_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_io = execute_ctrl3_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_io;
  assign execute_ctrl3_down_LsuCachelessPlugin_WITH_RSP_lane0 = execute_ctrl3_up_LsuCachelessPlugin_WITH_RSP_lane0;
  assign execute_ctrl4_up_ready = execute_ctrl4_down_isReady;
  assign execute_ctrl4_down_LANE_SEL_lane0 = execute_ctrl4_up_LANE_SEL_lane0;
  assign execute_ctrl4_down_Decode_UOP_lane0 = execute_ctrl4_up_Decode_UOP_lane0;
  assign execute_ctrl4_down_PC_lane0 = execute_ctrl4_up_PC_lane0;
  assign execute_ctrl4_down_TRAP_lane0 = execute_ctrl4_up_TRAP_lane0;
  assign execute_ctrl4_down_Decode_UOP_ID_lane0 = execute_ctrl4_up_Decode_UOP_ID_lane0;
  assign execute_ctrl4_down_RD_ENABLE_lane0 = execute_ctrl4_up_RD_ENABLE_lane0;
  assign execute_ctrl4_down_RD_PHYS_lane0 = execute_ctrl4_up_RD_PHYS_lane0;
  assign execute_ctrl4_down_AguPlugin_SIZE_lane0 = execute_ctrl4_up_AguPlugin_SIZE_lane0;
  assign execute_ctrl4_down_AguPlugin_SEL_lane0 = execute_ctrl4_up_AguPlugin_SEL_lane0;
  assign execute_ctrl4_down_lane0_integer_WriteBackPlugin_SEL_lane0 = execute_ctrl4_up_lane0_integer_WriteBackPlugin_SEL_lane0;
  assign execute_ctrl4_down_COMPLETION_AT_4_lane0 = execute_ctrl4_up_COMPLETION_AT_4_lane0;
  assign execute_ctrl4_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0 = execute_ctrl4_up_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
  assign execute_ctrl4_down_lane0_IntFormatPlugin_logic_SIGNED_lane0 = execute_ctrl4_up_lane0_IntFormatPlugin_logic_SIGNED_lane0;
  assign execute_ctrl4_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0 = execute_ctrl4_up_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
  assign execute_ctrl4_down_BYPASSED_AT_4_lane0 = execute_ctrl4_up_BYPASSED_AT_4_lane0;
  assign execute_ctrl4_down_AguPlugin_LOAD_lane0 = execute_ctrl4_up_AguPlugin_LOAD_lane0;
  assign execute_ctrl4_down_AguPlugin_ATOMIC_lane0 = execute_ctrl4_up_AguPlugin_ATOMIC_lane0;
  assign execute_ctrl4_down_AguPlugin_FLOAT_lane0 = execute_ctrl4_up_AguPlugin_FLOAT_lane0;
  assign execute_ctrl4_down_COMMIT_lane0 = execute_ctrl4_up_COMMIT_lane0;
  assign execute_ctrl4_down_early0_SrcPlugin_ADD_SUB_lane0 = execute_ctrl4_up_early0_SrcPlugin_ADD_SUB_lane0;
  assign execute_ctrl4_down_MMU_TRANSLATED_lane0 = execute_ctrl4_up_MMU_TRANSLATED_lane0;
  assign execute_ctrl4_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault = execute_ctrl4_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault;
  assign execute_ctrl4_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_io = execute_ctrl4_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_io;
  assign execute_ctrl4_down_LsuCachelessPlugin_logic_onJoin_SC_MISS_lane0 = execute_ctrl4_up_LsuCachelessPlugin_logic_onJoin_SC_MISS_lane0;
  assign execute_ctrl4_down_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0 = execute_ctrl4_up_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0;
  assign execute_ctrl5_up_ready = execute_ctrl5_down_isReady;
  assign execute_ctrl5_down_LANE_SEL_lane0 = execute_ctrl5_up_LANE_SEL_lane0;
  assign execute_ctrl5_down_RD_PHYS_lane0 = execute_ctrl5_up_RD_PHYS_lane0;
  assign execute_ctrl5_down_COMMIT_lane0 = execute_ctrl5_up_COMMIT_lane0;
  assign execute_ctrl5_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0 = execute_ctrl5_up_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
  assign fetch_logic_ctrls_0_down_isFiring = (fetch_logic_ctrls_0_down_isValid && fetch_logic_ctrls_0_down_isReady);
  assign fetch_logic_ctrls_0_down_isValid = fetch_logic_ctrls_0_down_valid;
  assign fetch_logic_ctrls_0_down_isReady = fetch_logic_ctrls_0_down_ready;
  assign fetch_logic_ctrls_1_up_isValid = fetch_logic_ctrls_1_up_valid;
  assign fetch_logic_ctrls_1_up_isCancel = fetch_logic_ctrls_1_up_cancel;
  assign fetch_logic_ctrls_0_up_isFiring = (fetch_logic_ctrls_0_up_isValid && fetch_logic_ctrls_0_up_isReady);
  assign fetch_logic_ctrls_0_up_isMoving = (fetch_logic_ctrls_0_up_isValid && fetch_logic_ctrls_0_up_isReady);
  assign fetch_logic_ctrls_0_up_isValid = fetch_logic_ctrls_0_up_valid;
  assign fetch_logic_ctrls_0_up_isReady = fetch_logic_ctrls_0_up_ready;
  assign fetch_logic_ctrls_1_down_isValid = fetch_logic_ctrls_1_down_valid;
  assign fetch_logic_ctrls_1_down_isReady = fetch_logic_ctrls_1_down_ready;
  assign decode_ctrls_0_down_isValid = decode_ctrls_0_down_valid;
  assign decode_ctrls_0_down_isReady = decode_ctrls_0_down_ready;
  assign decode_ctrls_1_up_isMoving = (decode_ctrls_1_up_isValid && decode_ctrls_1_up_isReady);
  assign decode_ctrls_1_up_isValid = decode_ctrls_1_up_valid;
  assign decode_ctrls_1_up_isReady = decode_ctrls_1_up_ready;
  assign decode_ctrls_1_up_isCanceling = 1'b0;
  assign decode_ctrls_0_up_isFiring = (decode_ctrls_0_up_isValid && decode_ctrls_0_up_isReady);
  assign decode_ctrls_0_up_isMoving = (decode_ctrls_0_up_isValid && decode_ctrls_0_up_isReady);
  assign decode_ctrls_0_up_isValid = decode_ctrls_0_up_valid;
  assign decode_ctrls_0_up_isReady = decode_ctrls_0_up_ready;
  assign decode_ctrls_1_down_isReady = decode_ctrls_1_down_ready;
  assign execute_ctrl0_down_isReady = execute_ctrl0_down_ready;
  assign execute_ctrl1_down_isReady = execute_ctrl1_down_ready;
  assign execute_ctrl2_down_isReady = execute_ctrl2_down_ready;
  assign execute_ctrl3_down_isReady = execute_ctrl3_down_ready;
  assign execute_ctrl4_down_isReady = execute_ctrl4_down_ready;
  assign execute_ctrl5_down_isReady = execute_ctrl5_down_ready;
  always @(*) begin
    TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_stateReg;
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
        if(TrapPlugin_logic_harts_0_trap_trigger_valid) begin
          TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_COMPUTE;
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
        if(when_TrapPlugin_l453) begin
          TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL;
        end else begin
          case(TrapPlugin_logic_harts_0_trap_pending_state_code)
            4'b0000 : begin
              TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_RUNNING;
            end
            4'b0001 : begin
              if(when_TrapPlugin_l481) begin
                TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC;
              end
            end
            4'b0010 : begin
              TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_JUMP;
            end
            4'b0100 : begin
              TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_JUMP;
            end
            4'b0101 : begin
              TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_JUMP;
            end
            4'b1000 : begin
              if(TrapPlugin_api_harts_0_askWake) begin
                TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_JUMP;
              end
            end
            4'b0110 : begin
              TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_JUMP;
            end
            default : begin
            end
          endcase
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
        if(TrapPlugin_logic_harts_0_crsPorts_write_ready) begin
          TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC;
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
        if(TrapPlugin_logic_harts_0_crsPorts_write_ready) begin
          TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC;
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
        if(TrapPlugin_logic_harts_0_crsPorts_read_ready) begin
          TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT;
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
        if(when_TrapPlugin_l615) begin
          TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY;
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
        TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_RUNNING;
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
        if(TrapPlugin_logic_harts_0_crsPorts_read_ready) begin
          TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY;
        end
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
        TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_RUNNING;
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
        TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_RUNNING;
      end
      default : begin
        if(when_TrapPlugin_l406) begin
          TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_RUNNING;
        end
      end
    endcase
    if(TrapPlugin_logic_harts_0_trap_fsm_wantKill) begin
      TrapPlugin_logic_harts_0_trap_fsm_stateNext = TrapPlugin_logic_harts_0_trap_fsm_RESET;
    end
  end

  assign when_TrapPlugin_l453 = ((TrapPlugin_logic_harts_0_trap_pending_state_exception || TrapPlugin_logic_harts_0_trap_fsm_triggerEbreak) || TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_interrupt);
  assign when_TrapPlugin_l481 = (! TrapPlugin_api_harts_0_holdPrivChange);
  assign when_TrapPlugin_l615 = (! TrapPlugin_api_harts_0_holdPrivChange);
  assign when_TrapPlugin_l712 = (TrapPlugin_logic_harts_0_trap_pending_xret_targetPrivilege != 2'b11);
  assign switch_TrapPlugin_l713 = TrapPlugin_logic_harts_0_trap_pending_state_arg[1 : 0];
  assign when_TrapPlugin_l406 = (&TrapPlugin_logic_harts_0_trap_fsm_resetToRunConditions_0);
  assign TrapPlugin_logic_harts_0_trap_fsm_onExit_RESET = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext != TrapPlugin_logic_harts_0_trap_fsm_RESET) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_RESET));
  assign TrapPlugin_logic_harts_0_trap_fsm_onExit_RUNNING = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext != TrapPlugin_logic_harts_0_trap_fsm_RUNNING) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_RUNNING));
  assign TrapPlugin_logic_harts_0_trap_fsm_onExit_COMPUTE = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext != TrapPlugin_logic_harts_0_trap_fsm_COMPUTE) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_COMPUTE));
  assign TrapPlugin_logic_harts_0_trap_fsm_onExit_TRAP_EPC = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext != TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC));
  assign TrapPlugin_logic_harts_0_trap_fsm_onExit_TRAP_TVAL = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext != TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL));
  assign TrapPlugin_logic_harts_0_trap_fsm_onExit_TRAP_TVEC = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext != TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC));
  assign TrapPlugin_logic_harts_0_trap_fsm_onExit_TRAP_WAIT = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext != TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT));
  assign TrapPlugin_logic_harts_0_trap_fsm_onExit_TRAP_APPLY = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext != TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY));
  assign TrapPlugin_logic_harts_0_trap_fsm_onExit_XRET_EPC = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext != TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC));
  assign TrapPlugin_logic_harts_0_trap_fsm_onExit_XRET_APPLY = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext != TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY));
  assign TrapPlugin_logic_harts_0_trap_fsm_onExit_JUMP = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext != TrapPlugin_logic_harts_0_trap_fsm_JUMP) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg == TrapPlugin_logic_harts_0_trap_fsm_JUMP));
  assign TrapPlugin_logic_harts_0_trap_fsm_onEntry_RESET = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext == TrapPlugin_logic_harts_0_trap_fsm_RESET) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg != TrapPlugin_logic_harts_0_trap_fsm_RESET));
  assign TrapPlugin_logic_harts_0_trap_fsm_onEntry_RUNNING = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext == TrapPlugin_logic_harts_0_trap_fsm_RUNNING) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg != TrapPlugin_logic_harts_0_trap_fsm_RUNNING));
  assign TrapPlugin_logic_harts_0_trap_fsm_onEntry_COMPUTE = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext == TrapPlugin_logic_harts_0_trap_fsm_COMPUTE) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg != TrapPlugin_logic_harts_0_trap_fsm_COMPUTE));
  assign TrapPlugin_logic_harts_0_trap_fsm_onEntry_TRAP_EPC = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext == TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg != TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC));
  assign TrapPlugin_logic_harts_0_trap_fsm_onEntry_TRAP_TVAL = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext == TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg != TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL));
  assign TrapPlugin_logic_harts_0_trap_fsm_onEntry_TRAP_TVEC = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext == TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg != TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC));
  assign TrapPlugin_logic_harts_0_trap_fsm_onEntry_TRAP_WAIT = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext == TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg != TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT));
  assign TrapPlugin_logic_harts_0_trap_fsm_onEntry_TRAP_APPLY = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext == TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg != TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY));
  assign TrapPlugin_logic_harts_0_trap_fsm_onEntry_XRET_EPC = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext == TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg != TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC));
  assign TrapPlugin_logic_harts_0_trap_fsm_onEntry_XRET_APPLY = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext == TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg != TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY));
  assign TrapPlugin_logic_harts_0_trap_fsm_onEntry_JUMP = ((TrapPlugin_logic_harts_0_trap_fsm_stateNext == TrapPlugin_logic_harts_0_trap_fsm_JUMP) && (TrapPlugin_logic_harts_0_trap_fsm_stateReg != TrapPlugin_logic_harts_0_trap_fsm_JUMP));
  always @(*) begin
    CsrAccessPlugin_logic_fsm_stateNext = CsrAccessPlugin_logic_fsm_stateReg;
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
        if(when_CsrAccessPlugin_l302) begin
          CsrAccessPlugin_logic_fsm_stateNext = CsrAccessPlugin_logic_fsm_WRITE;
        end
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
        if(when_CsrAccessPlugin_l331) begin
          CsrAccessPlugin_logic_fsm_stateNext = CsrAccessPlugin_logic_fsm_COMPLETION;
        end
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
        if(execute_ctrl2_down_isReady) begin
          CsrAccessPlugin_logic_fsm_stateNext = CsrAccessPlugin_logic_fsm_IDLE;
        end
      end
      default : begin
        if(CsrAccessPlugin_logic_fsm_inject_onDecodeDo) begin
          if(when_CsrAccessPlugin_l214) begin
            if(when_CsrAccessPlugin_l215) begin
              CsrAccessPlugin_logic_fsm_stateNext = CsrAccessPlugin_logic_fsm_READ;
            end
          end
          if(CsrAccessPlugin_logic_fsm_inject_sampled) begin
            if(!CsrAccessPlugin_logic_fsm_inject_trapReg) begin
              if(when_CsrAccessPlugin_l227) begin
                CsrAccessPlugin_logic_fsm_stateNext = CsrAccessPlugin_logic_fsm_READ;
              end
            end
          end
        end
      end
    endcase
    if(CsrAccessPlugin_logic_fsm_wantKill) begin
      CsrAccessPlugin_logic_fsm_stateNext = CsrAccessPlugin_logic_fsm_IDLE;
    end
  end

  assign when_CsrAccessPlugin_l302 = (! CsrAccessPlugin_bus_read_halt);
  assign when_CsrAccessPlugin_l331 = (! CsrAccessPlugin_bus_write_halt);
  assign when_CsrAccessPlugin_l214 = ((! CsrAccessPlugin_logic_fsm_inject_trap) && (! CsrAccessPlugin_bus_decode_trap));
  assign when_CsrAccessPlugin_l215 = (! CsrAccessPlugin_bus_decode_fence);
  assign when_CsrAccessPlugin_l227 = (! CsrAccessPlugin_bus_decode_fence);
  assign CsrAccessPlugin_logic_fsm_onExit_IDLE = ((CsrAccessPlugin_logic_fsm_stateNext != CsrAccessPlugin_logic_fsm_IDLE) && (CsrAccessPlugin_logic_fsm_stateReg == CsrAccessPlugin_logic_fsm_IDLE));
  assign CsrAccessPlugin_logic_fsm_onExit_READ = ((CsrAccessPlugin_logic_fsm_stateNext != CsrAccessPlugin_logic_fsm_READ) && (CsrAccessPlugin_logic_fsm_stateReg == CsrAccessPlugin_logic_fsm_READ));
  assign CsrAccessPlugin_logic_fsm_onExit_WRITE = ((CsrAccessPlugin_logic_fsm_stateNext != CsrAccessPlugin_logic_fsm_WRITE) && (CsrAccessPlugin_logic_fsm_stateReg == CsrAccessPlugin_logic_fsm_WRITE));
  assign CsrAccessPlugin_logic_fsm_onExit_COMPLETION = ((CsrAccessPlugin_logic_fsm_stateNext != CsrAccessPlugin_logic_fsm_COMPLETION) && (CsrAccessPlugin_logic_fsm_stateReg == CsrAccessPlugin_logic_fsm_COMPLETION));
  assign CsrAccessPlugin_logic_fsm_onEntry_IDLE = ((CsrAccessPlugin_logic_fsm_stateNext == CsrAccessPlugin_logic_fsm_IDLE) && (CsrAccessPlugin_logic_fsm_stateReg != CsrAccessPlugin_logic_fsm_IDLE));
  assign CsrAccessPlugin_logic_fsm_onEntry_READ = ((CsrAccessPlugin_logic_fsm_stateNext == CsrAccessPlugin_logic_fsm_READ) && (CsrAccessPlugin_logic_fsm_stateReg != CsrAccessPlugin_logic_fsm_READ));
  assign CsrAccessPlugin_logic_fsm_onEntry_WRITE = ((CsrAccessPlugin_logic_fsm_stateNext == CsrAccessPlugin_logic_fsm_WRITE) && (CsrAccessPlugin_logic_fsm_stateReg != CsrAccessPlugin_logic_fsm_WRITE));
  assign CsrAccessPlugin_logic_fsm_onEntry_COMPLETION = ((CsrAccessPlugin_logic_fsm_stateNext == CsrAccessPlugin_logic_fsm_COMPLETION) && (CsrAccessPlugin_logic_fsm_stateReg != CsrAccessPlugin_logic_fsm_COMPLETION));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      PrivilegedPlugin_logic_harts_0_privilege <= 2'b11;
      PrivilegedPlugin_logic_harts_0_m_status_mie <= 1'b0;
      PrivilegedPlugin_logic_harts_0_m_status_mpie <= 1'b0;
      PrivilegedPlugin_logic_harts_0_m_status_mprv <= 1'b0;
      PrivilegedPlugin_logic_harts_0_m_cause_interrupt <= 1'b0;
      PrivilegedPlugin_logic_harts_0_m_cause_code <= 4'b0000;
      PrivilegedPlugin_logic_harts_0_m_ip_meip <= 1'b0;
      PrivilegedPlugin_logic_harts_0_m_ip_mtip <= 1'b0;
      PrivilegedPlugin_logic_harts_0_m_ip_msip <= 1'b0;
      PrivilegedPlugin_logic_harts_0_m_ie_meie <= 1'b0;
      PrivilegedPlugin_logic_harts_0_m_ie_mtie <= 1'b0;
      PrivilegedPlugin_logic_harts_0_m_ie_msie <= 1'b0;
      AlignerPlugin_logic_feeder_harts_0_dopId <= 10'h0;
      AlignerPlugin_logic_nobuffer_mask <= 1'b1;
      FetchCachelessPlugin_logic_buffer_reserveId_value <= 1'b0;
      FetchCachelessPlugin_logic_buffer_inflight_0 <= 1'b0;
      FetchCachelessPlugin_logic_buffer_inflight_1 <= 1'b0;
      LsuCachelessPlugin_logic_onFork_askFenceReg <= 1'b0;
      LsuCachelessPlugin_logic_onFork_cmdCounter_value <= 1'b0;
      LsuCachelessPlugin_logic_onFork_cmdSent <= 1'b0;
      LsuCachelessPlugin_logic_bus_cmd_valid_regNext <= 1'b0;
      LsuCachelessPlugin_logic_bus_cmd_ready_regNext <= 1'b0;
      LsuCachelessPlugin_logic_bus_cmd_isStall_regNext <= 1'b0;
      decode_ctrls_0_up_LANE_SEL_0_regNext <= 1'b0;
      DecoderPlugin_logic_harts_0_uopId <= 16'h0;
      DecoderPlugin_logic_interrupt_buffered <= 1'b0;
      decode_ctrls_1_up_LANE_SEL_0_regNext <= 1'b0;
      LsuCachelessPlugin_logic_onJoin_buffers_0_valid <= 1'b0;
      LsuCachelessPlugin_logic_onJoin_buffers_0_inflight <= 1'b0;
      LsuCachelessPlugin_logic_onJoin_buffers_1_valid <= 1'b0;
      LsuCachelessPlugin_logic_onJoin_buffers_1_inflight <= 1'b0;
      LsuCachelessPlugin_logic_onJoin_rspCounter_value <= 1'b0;
      execute_ctrl3_up_LsuCachelessPlugin_WITH_RSP_lane0 <= 1'b0;
      DispatchPlugin_logic_feeds_0_sent <= 1'b0;
      CsrRamPlugin_csrMapper_fired <= 1'b0;
      LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_valid <= 1'b0;
      LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_valid <= 1'b0;
      LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_0 <= 1'b1;
      LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_1 <= 1'b1;
      decode_ctrls_1_up_LANE_SEL_0_regNext_1 <= 1'b0;
      execute_ctrl0_down_LANE_SEL_lane0_regNext <= 1'b0;
      execute_ctrl2_down_LANE_SEL_lane0_regNext <= 1'b0;
      decode_ctrls_1_up_LANE_SEL_0 <= 1'b0;
      TrapPlugin_logic_harts_0_interrupt_validBuffer <= 1'b0;
      TrapPlugin_logic_harts_0_trap_fsm_trapEnterDebug <= 1'b0;
      PcPlugin_logic_harts_0_self_id <= 10'h0;
      PcPlugin_logic_harts_0_self_increment <= 1'b0;
      PcPlugin_logic_harts_0_self_fault <= 1'b0;
      PcPlugin_logic_harts_0_self_state <= 32'h80000000;
      PcPlugin_logic_harts_0_holdReg <= 1'b1;
      CsrAccessPlugin_logic_fsm_inject_unfreeze <= 1'b0;
      CsrAccessPlugin_logic_fsm_inject_flushReg <= 1'b0;
      CsrAccessPlugin_logic_fsm_inject_sampled <= 1'b0;
      FetchCachelessPlugin_logic_fork_forked_fired <= 1'b0;
      FetchCachelessPlugin_logic_fork_translated_rValidN <= 1'b1;
      FetchCachelessPlugin_logic_bus_cmd_valid_regNext <= 1'b0;
      FetchCachelessPlugin_logic_bus_cmd_ready_regNext <= 1'b0;
      FetchCachelessPlugin_logic_bus_cmd_isStall_regNext <= 1'b0;
      FetchCachelessPlugin_logic_join_trapSent <= 1'b0;
      CsrRamPlugin_logic_readLogic_ohReg <= 2'b00;
      CsrRamPlugin_logic_readLogic_busy <= 1'b0;
      CsrRamPlugin_logic_flush_counter <= 3'b000;
      execute_ctrl1_up_LANE_SEL_lane0 <= 1'b0;
      execute_ctrl2_up_LANE_SEL_lane0 <= 1'b0;
      execute_ctrl3_up_LANE_SEL_lane0 <= 1'b0;
      execute_ctrl4_up_LANE_SEL_lane0 <= 1'b0;
      execute_ctrl5_up_LANE_SEL_lane0 <= 1'b0;
      integer_RegFilePlugin_logic_initalizer_counter <= 6'h0;
      _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_2 <= 60'h0;
      _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_2 <= 60'h0;
      _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_2 <= 60'h0;
      _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_2 <= 60'h0;
      _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_2 <= 60'h0;
      _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_2 <= 60'h0;
      fetch_logic_ctrls_1_up_valid <= 1'b0;
      decode_ctrls_1_up_valid <= 1'b0;
      TrapPlugin_logic_harts_0_trap_fsm_stateReg <= TrapPlugin_logic_harts_0_trap_fsm_RESET;
      CsrAccessPlugin_logic_fsm_stateReg <= CsrAccessPlugin_logic_fsm_IDLE;
    end else begin
      if(PrivilegedPlugin_logic_harts_0_xretAwayFromMachine) begin
        PrivilegedPlugin_logic_harts_0_m_status_mprv <= 1'b0;
      end
      PrivilegedPlugin_logic_harts_0_m_ip_meip <= PrivilegedPlugin_logic_harts_0_int_m_external;
      PrivilegedPlugin_logic_harts_0_m_ip_mtip <= PrivilegedPlugin_logic_harts_0_int_m_timer;
      PrivilegedPlugin_logic_harts_0_m_ip_msip <= PrivilegedPlugin_logic_harts_0_int_m_software;
      if(when_AlignerPlugin_l171) begin
        AlignerPlugin_logic_feeder_harts_0_dopId <= (decode_ctrls_0_down_Decode_DOP_ID_0 + 10'h001);
      end
      if(when_AlignerPlugin_l292) begin
        AlignerPlugin_logic_nobuffer_mask <= AlignerPlugin_logic_nobuffer_remaningMask;
      end
      FetchCachelessPlugin_logic_buffer_reserveId_value <= FetchCachelessPlugin_logic_buffer_reserveId_valueNext;
      if(FetchCachelessPlugin_logic_buffer_inflightSpawn) begin
        if(_zz_4[0]) begin
          FetchCachelessPlugin_logic_buffer_inflight_0 <= 1'b1;
        end
        if(_zz_4[1]) begin
          FetchCachelessPlugin_logic_buffer_inflight_1 <= 1'b1;
        end
      end
      if(FetchCachelessPlugin_logic_bus_rsp_valid) begin
        if(_zz_5[0]) begin
          FetchCachelessPlugin_logic_buffer_inflight_0 <= 1'b0;
        end
        if(_zz_5[1]) begin
          FetchCachelessPlugin_logic_buffer_inflight_1 <= 1'b0;
        end
      end
      if(when_LsuCachelessPlugin_l215) begin
        LsuCachelessPlugin_logic_onFork_askFenceReg <= ((execute_ctrl2_up_LANE_SEL_lane0 && execute_ctrl2_down_AguPlugin_SEL_lane0) && execute_ctrl2_down_AguPlugin_ATOMIC_lane0);
      end
      LsuCachelessPlugin_logic_onFork_cmdCounter_value <= LsuCachelessPlugin_logic_onFork_cmdCounter_valueNext;
      if(LsuCachelessPlugin_logic_bus_cmd_fire) begin
        LsuCachelessPlugin_logic_onFork_cmdSent <= 1'b1;
      end
      if(when_LsuCachelessPlugin_l220) begin
        LsuCachelessPlugin_logic_onFork_cmdSent <= 1'b0;
      end
      LsuCachelessPlugin_logic_bus_cmd_valid_regNext <= LsuCachelessPlugin_logic_bus_cmd_valid;
      LsuCachelessPlugin_logic_bus_cmd_ready_regNext <= LsuCachelessPlugin_logic_bus_cmd_ready;
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! (((! LsuCachelessPlugin_logic_bus_cmd_valid) && LsuCachelessPlugin_logic_bus_cmd_valid_regNext) && (! LsuCachelessPlugin_logic_bus_cmd_ready_regNext)))); // Stream.scala:L658
        `else
          if(!(! (((! LsuCachelessPlugin_logic_bus_cmd_valid) && LsuCachelessPlugin_logic_bus_cmd_valid_regNext) && (! LsuCachelessPlugin_logic_bus_cmd_ready_regNext)))) begin
            $display("FAILURE Stream valid persistence failed"); // Stream.scala:L658
            $finish;
          end
        `endif
      `endif
      LsuCachelessPlugin_logic_bus_cmd_isStall_regNext <= LsuCachelessPlugin_logic_bus_cmd_isStall;
      if(LsuCachelessPlugin_logic_bus_cmd_isStall_regNext) begin
        `ifndef SYNTHESIS
          `ifdef FORMAL
            assert(((((((((((LsuCachelessPlugin_logic_bus_cmd_payload_id == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_id) && (LsuCachelessPlugin_logic_bus_cmd_payload_write == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_write)) && (LsuCachelessPlugin_logic_bus_cmd_payload_address == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_address)) && (LsuCachelessPlugin_logic_bus_cmd_payload_data == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_data)) && (LsuCachelessPlugin_logic_bus_cmd_payload_size == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_size)) && (LsuCachelessPlugin_logic_bus_cmd_payload_mask == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_mask)) && (LsuCachelessPlugin_logic_bus_cmd_payload_io == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_io)) && (LsuCachelessPlugin_logic_bus_cmd_payload_fromHart == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_fromHart)) && (LsuCachelessPlugin_logic_bus_cmd_payload_uopId == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_uopId)) && 1'b1)); // Stream.scala:L662
          `else
            if(!((((((((((LsuCachelessPlugin_logic_bus_cmd_payload_id == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_id) && (LsuCachelessPlugin_logic_bus_cmd_payload_write == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_write)) && (LsuCachelessPlugin_logic_bus_cmd_payload_address == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_address)) && (LsuCachelessPlugin_logic_bus_cmd_payload_data == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_data)) && (LsuCachelessPlugin_logic_bus_cmd_payload_size == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_size)) && (LsuCachelessPlugin_logic_bus_cmd_payload_mask == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_mask)) && (LsuCachelessPlugin_logic_bus_cmd_payload_io == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_io)) && (LsuCachelessPlugin_logic_bus_cmd_payload_fromHart == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_fromHart)) && (LsuCachelessPlugin_logic_bus_cmd_payload_uopId == LsuCachelessPlugin_logic_bus_cmd_payload_regNext_uopId)) && 1'b1)) begin
              $display("FAILURE Stream payload persistence failed"); // Stream.scala:L662
              $finish;
            end
          `endif
        `endif
      end
      decode_ctrls_0_up_LANE_SEL_0_regNext <= decode_ctrls_0_up_LANE_SEL_0;
      if(when_CtrlLaneApi_l50) begin
        decode_ctrls_0_up_LANE_SEL_0_regNext <= 1'b0;
      end
      if(when_DecoderPlugin_l143) begin
        DecoderPlugin_logic_harts_0_uopId <= (DecoderPlugin_logic_harts_0_uopId + 16'h0001);
      end
      if(when_DecoderPlugin_l151) begin
        DecoderPlugin_logic_interrupt_buffered <= DecoderPlugin_logic_interrupt_async;
      end
      decode_ctrls_1_up_LANE_SEL_0_regNext <= decode_ctrls_1_up_LANE_SEL_0;
      if(when_CtrlLaneApi_l50_1) begin
        decode_ctrls_1_up_LANE_SEL_0_regNext <= 1'b0;
      end
      if(LsuCachelessPlugin_logic_bus_cmd_fire) begin
        case(LsuCachelessPlugin_logic_bus_cmd_payload_id)
          1'b0 : begin
            LsuCachelessPlugin_logic_onJoin_buffers_0_inflight <= 1'b1;
          end
          default : begin
            LsuCachelessPlugin_logic_onJoin_buffers_1_inflight <= 1'b1;
          end
        endcase
      end
      if(LsuCachelessPlugin_logic_bus_rsp_valid) begin
        case(LsuCachelessPlugin_logic_bus_rsp_payload_id)
          1'b0 : begin
            LsuCachelessPlugin_logic_onJoin_buffers_0_valid <= 1'b1;
            LsuCachelessPlugin_logic_onJoin_buffers_0_inflight <= 1'b0;
          end
          default : begin
            LsuCachelessPlugin_logic_onJoin_buffers_1_valid <= 1'b1;
            LsuCachelessPlugin_logic_onJoin_buffers_1_inflight <= 1'b0;
          end
        endcase
      end
      LsuCachelessPlugin_logic_onJoin_rspCounter_value <= LsuCachelessPlugin_logic_onJoin_rspCounter_valueNext;
      if(LsuCachelessPlugin_logic_onJoin_pop) begin
        case(LsuCachelessPlugin_logic_onJoin_rspCounter_value)
          1'b0 : begin
            LsuCachelessPlugin_logic_onJoin_buffers_0_valid <= 1'b0;
          end
          default : begin
            LsuCachelessPlugin_logic_onJoin_buffers_1_valid <= 1'b0;
          end
        endcase
      end
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! ((((execute_ctrl3_up_LANE_SEL_lane0 && execute_lane0_ctrls_3_upIsCancel) && execute_ctrl3_down_AguPlugin_SEL_lane0) && execute_ctrl3_down_AguPlugin_STORE_lane0) && (! execute_ctrl3_up_TRAP_lane0)))); // LsuCachelessPlugin.scala:L380
        `else
          if(!(! ((((execute_ctrl3_up_LANE_SEL_lane0 && execute_lane0_ctrls_3_upIsCancel) && execute_ctrl3_down_AguPlugin_SEL_lane0) && execute_ctrl3_down_AguPlugin_STORE_lane0) && (! execute_ctrl3_up_TRAP_lane0)))) begin
            $display("FAILURE LsuCachelessPlugin saw unexpected select && STORE && cancel request"); // LsuCachelessPlugin.scala:L380
            $finish;
          end
        `endif
      `endif
      if(DispatchPlugin_logic_feeds_0_sending) begin
        DispatchPlugin_logic_feeds_0_sent <= 1'b1;
      end
      if(decode_ctrls_1_up_isMoving) begin
        DispatchPlugin_logic_feeds_0_sent <= 1'b0;
      end
      if(when_CsrRamPlugin_l97) begin
        CsrRamPlugin_csrMapper_fired <= 1'b1;
      end
      if(CsrAccessPlugin_bus_write_moving) begin
        CsrRamPlugin_csrMapper_fired <= 1'b0;
      end
      if(LsuCachelessPlugin_logic_bus_rsp_valid) begin
        case(LsuCachelessPlugin_logic_bus_rsp_payload_id)
          1'b0 : begin
            LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_valid <= 1'b0;
          end
          default : begin
            LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_valid <= 1'b0;
          end
        endcase
      end
      if(LsuCachelessPlugin_logic_bus_cmd_fire) begin
        case(LsuCachelessPlugin_logic_bus_cmd_payload_id)
          1'b0 : begin
            LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_valid <= 1'b1;
          end
          default : begin
            LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_valid <= 1'b1;
          end
        endcase
      end
      if(LsuCachelessAxi4Plugin_logic_bridge_cmdFork_fire) begin
        LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_0 <= 1'b0;
      end
      if(LsuCachelessAxi4Plugin_logic_bridge_dataFork_fire) begin
        LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_1 <= 1'b0;
      end
      if(LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_ready) begin
        LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_0 <= 1'b1;
        LsuCachelessAxi4Plugin_logic_bridge_cmdHalted_fork2_logic_linkEnable_1 <= 1'b1;
      end
      decode_ctrls_1_up_LANE_SEL_0_regNext_1 <= decode_ctrls_1_up_LANE_SEL_0;
      if(when_CtrlLaneApi_l50_2) begin
        decode_ctrls_1_up_LANE_SEL_0_regNext_1 <= 1'b0;
      end
      execute_ctrl0_down_LANE_SEL_lane0_regNext <= execute_ctrl0_down_LANE_SEL_lane0;
      if(when_CtrlLaneApi_l50_3) begin
        execute_ctrl0_down_LANE_SEL_lane0_regNext <= 1'b0;
      end
      execute_ctrl2_down_LANE_SEL_lane0_regNext <= execute_ctrl2_down_LANE_SEL_lane0;
      if(when_CtrlLaneApi_l50_4) begin
        execute_ctrl2_down_LANE_SEL_lane0_regNext <= 1'b0;
      end
      if(when_AlignerPlugin_l298) begin
        AlignerPlugin_logic_nobuffer_mask <= 1'b1;
      end
      TrapPlugin_logic_harts_0_interrupt_validBuffer <= TrapPlugin_logic_harts_0_interrupt_valid;
      PcPlugin_logic_harts_0_holdReg <= PcPlugin_logic_harts_0_holdComb;
      PcPlugin_logic_harts_0_self_state <= PcPlugin_logic_harts_0_output_payload_pc;
      PcPlugin_logic_harts_0_self_fault <= PcPlugin_logic_harts_0_output_payload_fault;
      PcPlugin_logic_harts_0_self_increment <= 1'b0;
      if(PcPlugin_logic_harts_0_output_fire) begin
        PcPlugin_logic_harts_0_self_increment <= 1'b1;
      end
      if(fetch_logic_ctrls_0_up_isFiring) begin
        PcPlugin_logic_harts_0_self_id <= (PcPlugin_logic_harts_0_self_id + 10'h001);
      end
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! ((execute_ctrl2_up_LANE_SEL_lane0 && execute_ctrl2_down_CsrAccessPlugin_SEL_lane0) && execute_lane0_ctrls_2_upIsCancel))); // CsrAccessPlugin.scala:L137
        `else
          if(!(! ((execute_ctrl2_up_LANE_SEL_lane0 && execute_ctrl2_down_CsrAccessPlugin_SEL_lane0) && execute_lane0_ctrls_2_upIsCancel))) begin
            $display("FAILURE CsrAccessPlugin saw forbidden select && cancel request"); // CsrAccessPlugin.scala:L137
            $finish;
          end
        `endif
      `endif
      CsrAccessPlugin_logic_fsm_inject_unfreeze <= 1'b0;
      if(CsrAccessPlugin_logic_flushPort_valid) begin
        CsrAccessPlugin_logic_fsm_inject_flushReg <= 1'b1;
      end
      if(when_CsrAccessPlugin_l199) begin
        CsrAccessPlugin_logic_fsm_inject_flushReg <= 1'b0;
      end
      CsrAccessPlugin_logic_fsm_inject_sampled <= execute_freeze_valid;
      if(when_CsrAccessPlugin_l352) begin
        PrivilegedPlugin_logic_harts_0_m_status_mpie <= CsrAccessPlugin_bus_write_bits[7];
        PrivilegedPlugin_logic_harts_0_m_status_mie <= CsrAccessPlugin_bus_write_bits[3];
        PrivilegedPlugin_logic_harts_0_m_status_mprv <= CsrAccessPlugin_bus_write_bits[17];
      end
      if(when_CsrAccessPlugin_l352_1) begin
        PrivilegedPlugin_logic_harts_0_m_cause_interrupt <= CsrAccessPlugin_bus_write_bits[31];
        PrivilegedPlugin_logic_harts_0_m_cause_code <= CsrAccessPlugin_bus_write_bits[3 : 0];
      end
      if(when_CsrAccessPlugin_l352_2) begin
        PrivilegedPlugin_logic_harts_0_m_ie_meie <= CsrAccessPlugin_bus_write_bits[11];
        PrivilegedPlugin_logic_harts_0_m_ie_mtie <= CsrAccessPlugin_bus_write_bits[7];
        PrivilegedPlugin_logic_harts_0_m_ie_msie <= CsrAccessPlugin_bus_write_bits[3];
      end
      if(PcPlugin_logic_forcedSpawn) begin
        FetchCachelessPlugin_logic_fork_forked_fired <= 1'b0;
      end
      if(FetchCachelessPlugin_logic_fork_forked_fire) begin
        FetchCachelessPlugin_logic_fork_forked_fired <= 1'b1;
      end
      if(fetch_logic_ctrls_0_up_isMoving) begin
        FetchCachelessPlugin_logic_fork_forked_fired <= 1'b0;
      end
      if(FetchCachelessPlugin_logic_fork_translated_valid) begin
        FetchCachelessPlugin_logic_fork_translated_rValidN <= 1'b0;
      end
      if(FetchCachelessPlugin_logic_fork_persistent_ready) begin
        FetchCachelessPlugin_logic_fork_translated_rValidN <= 1'b1;
      end
      FetchCachelessPlugin_logic_bus_cmd_valid_regNext <= FetchCachelessPlugin_logic_bus_cmd_valid;
      FetchCachelessPlugin_logic_bus_cmd_ready_regNext <= FetchCachelessPlugin_logic_bus_cmd_ready;
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! (((! FetchCachelessPlugin_logic_bus_cmd_valid) && FetchCachelessPlugin_logic_bus_cmd_valid_regNext) && (! FetchCachelessPlugin_logic_bus_cmd_ready_regNext)))); // Stream.scala:L658
        `else
          if(!(! (((! FetchCachelessPlugin_logic_bus_cmd_valid) && FetchCachelessPlugin_logic_bus_cmd_valid_regNext) && (! FetchCachelessPlugin_logic_bus_cmd_ready_regNext)))) begin
            $display("FAILURE Stream valid persistence failed"); // Stream.scala:L658
            $finish;
          end
        `endif
      `endif
      FetchCachelessPlugin_logic_bus_cmd_isStall_regNext <= FetchCachelessPlugin_logic_bus_cmd_isStall;
      if(FetchCachelessPlugin_logic_bus_cmd_isStall_regNext) begin
        `ifndef SYNTHESIS
          `ifdef FORMAL
            assert(((FetchCachelessPlugin_logic_bus_cmd_payload_id == FetchCachelessPlugin_logic_bus_cmd_payload_regNext_id) && (FetchCachelessPlugin_logic_bus_cmd_payload_address == FetchCachelessPlugin_logic_bus_cmd_payload_regNext_address))); // Stream.scala:L662
          `else
            if(!((FetchCachelessPlugin_logic_bus_cmd_payload_id == FetchCachelessPlugin_logic_bus_cmd_payload_regNext_id) && (FetchCachelessPlugin_logic_bus_cmd_payload_address == FetchCachelessPlugin_logic_bus_cmd_payload_regNext_address))) begin
              $display("FAILURE Stream payload persistence failed"); // Stream.scala:L662
              $finish;
            end
          `endif
        `endif
      end
      if(FetchCachelessPlugin_logic_trapPort_valid) begin
        FetchCachelessPlugin_logic_join_trapSent <= 1'b1;
      end
      if(fetch_logic_ctrls_1_up_isCancel) begin
        FetchCachelessPlugin_logic_join_trapSent <= 1'b0;
      end
      CsrRamPlugin_logic_readLogic_ohReg <= (CsrRamPlugin_logic_readLogic_port_cmd_valid ? CsrRamPlugin_logic_readLogic_oh : 2'b00);
      CsrRamPlugin_logic_readLogic_busy <= CsrRamPlugin_logic_readLogic_port_cmd_valid;
      CsrRamPlugin_logic_flush_counter <= (CsrRamPlugin_logic_flush_counter + _zz_CsrRamPlugin_logic_flush_counter);
      if(when_RegFilePlugin_l132) begin
        integer_RegFilePlugin_logic_initalizer_counter <= (integer_RegFilePlugin_logic_initalizer_counter + 6'h01);
      end
      _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_2 <= _zz_WhiteboxerPlugin_logic_perf_executeFreezedCounter_1;
      _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_2 <= _zz_WhiteboxerPlugin_logic_perf_dispatchHazardsCounter_1;
      _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_2 <= _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_0_1;
      _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_2 <= _zz_WhiteboxerPlugin_logic_perf_candidatesCountCounters_1_1;
      _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_2 <= _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_0_1;
      _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_2 <= _zz_WhiteboxerPlugin_logic_perf_dispatchFeedCounters_1_1;
      if(fetch_logic_ctrls_1_up_forgetOne) begin
        fetch_logic_ctrls_1_up_valid <= 1'b0;
      end
      if(fetch_logic_ctrls_0_down_isReady) begin
        fetch_logic_ctrls_1_up_valid <= fetch_logic_ctrls_0_down_isValid;
      end
      if(decode_ctrls_0_down_isReady) begin
        decode_ctrls_1_up_valid <= decode_ctrls_0_down_isValid;
      end
      if(decode_ctrls_0_down_isReady) begin
        decode_ctrls_1_up_LANE_SEL_0 <= decode_ctrls_0_down_LANE_SEL_0;
      end
      if(when_DecodePipelinePlugin_l70) begin
        decode_ctrls_1_up_LANE_SEL_0 <= 1'b0;
      end
      if(execute_ctrl0_down_isReady) begin
        execute_ctrl1_up_LANE_SEL_lane0 <= execute_ctrl0_down_LANE_SEL_lane0;
      end
      if(execute_ctrl1_down_isReady) begin
        execute_ctrl2_up_LANE_SEL_lane0 <= execute_ctrl1_down_LANE_SEL_lane0;
      end
      if(execute_ctrl2_down_isReady) begin
        execute_ctrl3_up_LANE_SEL_lane0 <= execute_ctrl2_down_LANE_SEL_lane0;
        execute_ctrl3_up_LsuCachelessPlugin_WITH_RSP_lane0 <= execute_ctrl2_down_LsuCachelessPlugin_WITH_RSP_lane0;
      end
      if(execute_ctrl3_down_isReady) begin
        execute_ctrl4_up_LANE_SEL_lane0 <= execute_ctrl3_down_LANE_SEL_lane0;
      end
      if(execute_ctrl4_down_isReady) begin
        execute_ctrl5_up_LANE_SEL_lane0 <= execute_ctrl4_down_LANE_SEL_lane0;
      end
      TrapPlugin_logic_harts_0_trap_fsm_stateReg <= TrapPlugin_logic_harts_0_trap_fsm_stateNext;
      case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
        TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
        end
        TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
          TrapPlugin_logic_harts_0_trap_fsm_trapEnterDebug <= 1'b0;
          if(!when_TrapPlugin_l453) begin
            case(TrapPlugin_logic_harts_0_trap_pending_state_code)
              4'b0000 : begin
                `ifndef SYNTHESIS
                  `ifdef FORMAL
                    assert((! TrapPlugin_logic_harts_0_trap_fsm_buffer_i_valid)); // TrapPlugin.scala:L475
                  `else
                    if(!(! TrapPlugin_logic_harts_0_trap_fsm_buffer_i_valid)) begin
                      $display("FAILURE "); // TrapPlugin.scala:L475
                      $finish;
                    end
                  `endif
                `endif
              end
              4'b0001 : begin
              end
              4'b0010 : begin
              end
              4'b0100 : begin
              end
              4'b0101 : begin
              end
              4'b1000 : begin
              end
              4'b0110 : begin
              end
              default : begin
                `ifndef SYNTHESIS
                  `ifdef FORMAL
                    assert(1'b0); // TrapPlugin.scala:L528
                  `else
                    if(!1'b0) begin
                      $display("FAILURE Unexpected trap reason"); // TrapPlugin.scala:L528
                      $finish;
                    end
                  `endif
                `endif
              end
            endcase
          end
        end
        TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
        end
        TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
        end
        TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
        end
        TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
        end
        TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
          PrivilegedPlugin_logic_harts_0_privilege <= TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_targetPrivilege;
          case(TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_targetPrivilege)
            2'b11 : begin
              PrivilegedPlugin_logic_harts_0_m_status_mie <= 1'b0;
              PrivilegedPlugin_logic_harts_0_m_status_mpie <= PrivilegedPlugin_logic_harts_0_m_status_mie;
              PrivilegedPlugin_logic_harts_0_m_cause_code <= TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_code;
              PrivilegedPlugin_logic_harts_0_m_cause_interrupt <= TrapPlugin_logic_harts_0_trap_fsm_buffer_trap_interrupt;
            end
            default : begin
            end
          endcase
        end
        TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
        end
        TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
          PrivilegedPlugin_logic_harts_0_privilege <= TrapPlugin_logic_harts_0_trap_pending_xret_targetPrivilege;
          case(switch_TrapPlugin_l713)
            2'b11 : begin
              PrivilegedPlugin_logic_harts_0_m_status_mie <= PrivilegedPlugin_logic_harts_0_m_status_mpie;
              PrivilegedPlugin_logic_harts_0_m_status_mpie <= 1'b1;
            end
            default : begin
            end
          endcase
        end
        TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
        end
        default : begin
        end
      endcase
      CsrAccessPlugin_logic_fsm_stateReg <= CsrAccessPlugin_logic_fsm_stateNext;
      case(CsrAccessPlugin_logic_fsm_stateReg)
        CsrAccessPlugin_logic_fsm_READ : begin
        end
        CsrAccessPlugin_logic_fsm_WRITE : begin
        end
        CsrAccessPlugin_logic_fsm_COMPLETION : begin
        end
        default : begin
          if(CsrAccessPlugin_logic_fsm_inject_onDecodeDo) begin
            if(CsrAccessPlugin_logic_fsm_inject_sampled) begin
              if(CsrAccessPlugin_logic_fsm_inject_trapReg) begin
                CsrAccessPlugin_logic_fsm_inject_unfreeze <= execute_freeze_valid;
              end
            end
          end
        end
      endcase
      case(CsrAccessPlugin_logic_fsm_stateNext)
        CsrAccessPlugin_logic_fsm_READ : begin
        end
        CsrAccessPlugin_logic_fsm_WRITE : begin
        end
        CsrAccessPlugin_logic_fsm_COMPLETION : begin
          CsrAccessPlugin_logic_fsm_inject_unfreeze <= 1'b1;
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clk) begin
    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_id <= LsuCachelessPlugin_logic_bus_cmd_payload_id;
    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_write <= LsuCachelessPlugin_logic_bus_cmd_payload_write;
    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_address <= LsuCachelessPlugin_logic_bus_cmd_payload_address;
    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_data <= LsuCachelessPlugin_logic_bus_cmd_payload_data;
    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_size <= LsuCachelessPlugin_logic_bus_cmd_payload_size;
    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_mask <= LsuCachelessPlugin_logic_bus_cmd_payload_mask;
    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_io <= LsuCachelessPlugin_logic_bus_cmd_payload_io;
    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_fromHart <= LsuCachelessPlugin_logic_bus_cmd_payload_fromHart;
    LsuCachelessPlugin_logic_bus_cmd_payload_regNext_uopId <= LsuCachelessPlugin_logic_bus_cmd_payload_uopId;
    if(LsuCachelessPlugin_logic_bus_rsp_valid) begin
      case(LsuCachelessPlugin_logic_bus_rsp_payload_id)
        1'b0 : begin
          LsuCachelessPlugin_logic_onJoin_buffers_0_payload_error <= LsuCachelessPlugin_logic_onJoin_busRspWithoutId_error;
          LsuCachelessPlugin_logic_onJoin_buffers_0_payload_data <= LsuCachelessPlugin_logic_onJoin_busRspWithoutId_data;
        end
        default : begin
          LsuCachelessPlugin_logic_onJoin_buffers_1_payload_error <= LsuCachelessPlugin_logic_onJoin_busRspWithoutId_error;
          LsuCachelessPlugin_logic_onJoin_buffers_1_payload_data <= LsuCachelessPlugin_logic_onJoin_busRspWithoutId_data;
        end
      endcase
    end
    if(LsuCachelessPlugin_logic_bus_cmd_fire) begin
      case(LsuCachelessPlugin_logic_bus_cmd_payload_id)
        1'b0 : begin
          LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_hash <= LsuCachelessAxi4Plugin_logic_bridge_cmdHash;
          LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_mask <= LsuCachelessPlugin_logic_bus_cmd_payload_mask;
          LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_0_io <= LsuCachelessPlugin_logic_bus_cmd_payload_io;
        end
        default : begin
          LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_hash <= LsuCachelessAxi4Plugin_logic_bridge_cmdHash;
          LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_mask <= LsuCachelessPlugin_logic_bus_cmd_payload_mask;
          LsuCachelessAxi4Plugin_logic_bridge_tracker_pendings_1_io <= LsuCachelessPlugin_logic_bus_cmd_payload_io;
        end
      endcase
    end
    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id <= (_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id_1 ? (_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id ? TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_0_id : TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_1_id) : TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_id);
    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_priority <= (_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id_1 ? _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_priority : TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_priority);
    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_privilege <= (_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id_1 ? _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_privilege : TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_privilege);
    TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_valid <= (_zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_id_1 ? _zz_TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_triggered_valid : TrapPlugin_logic_harts_0_interrupt_privilegeTriggers_0_interrupts_2_valid);
    if(TrapPlugin_logic_harts_0_trap_pending_arbiter_down_valid) begin
      TrapPlugin_logic_harts_0_trap_pending_state_exception <= TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_exception;
      TrapPlugin_logic_harts_0_trap_pending_state_tval <= TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_tval;
      TrapPlugin_logic_harts_0_trap_pending_state_code <= TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_code;
      TrapPlugin_logic_harts_0_trap_pending_state_arg <= TrapPlugin_logic_harts_0_trap_pending_arbiter_down_payload_arg;
    end
    if(TrapPlugin_logic_harts_0_trap_trigger_valid) begin
      TrapPlugin_logic_harts_0_trap_pending_pc <= execute_ctrl4_down_PC_lane0;
      TrapPlugin_logic_harts_0_trap_pending_slices <= (1'b0 + 1'b1);
    end
    if(TrapPlugin_logic_harts_0_trap_fsm_buffer_sampleIt) begin
      TrapPlugin_logic_harts_0_trap_fsm_buffer_i_valid <= TrapPlugin_logic_harts_0_interrupt_valid;
    end
    if(TrapPlugin_logic_harts_0_trap_fsm_buffer_sampleIt) begin
      TrapPlugin_logic_harts_0_trap_fsm_buffer_i_code <= TrapPlugin_logic_harts_0_interrupt_code;
    end
    if(TrapPlugin_logic_harts_0_trap_fsm_buffer_sampleIt) begin
      TrapPlugin_logic_harts_0_trap_fsm_buffer_i_targetPrivilege <= TrapPlugin_logic_harts_0_interrupt_targetPrivilege;
    end
    TrapPlugin_logic_harts_0_trap_fsm_jumpTarget <= (TrapPlugin_logic_harts_0_trap_pending_pc + _zz_TrapPlugin_logic_harts_0_trap_fsm_jumpTarget);
    if(when_TrapPlugin_l602) begin
      TrapPlugin_logic_harts_0_trap_fsm_readed <= TrapPlugin_logic_harts_0_crsPorts_read_data;
    end
    CsrAccessPlugin_logic_fsm_interface_read <= ((execute_ctrl2_down_CsrAccessPlugin_SEL_lane0 && (! CsrAccessPlugin_logic_fsm_inject_trap)) && CsrAccessPlugin_logic_fsm_inject_csrRead);
    CsrAccessPlugin_logic_fsm_interface_write <= ((execute_ctrl2_down_CsrAccessPlugin_SEL_lane0 && (! CsrAccessPlugin_logic_fsm_inject_trap)) && CsrAccessPlugin_logic_fsm_inject_csrWrite);
    CsrAccessPlugin_logic_fsm_inject_trapReg <= CsrAccessPlugin_logic_fsm_inject_trap;
    CsrAccessPlugin_logic_fsm_inject_busTrapReg <= CsrAccessPlugin_bus_decode_trap;
    CsrAccessPlugin_logic_fsm_inject_busTrapCodeReg <= CsrAccessPlugin_bus_decode_trapCode;
    CsrAccessPlugin_logic_fsm_interface_onWriteBits <= CsrAccessPlugin_logic_fsm_writeLogic_alu_result;
    if(FetchCachelessPlugin_logic_fork_translated_ready) begin
      FetchCachelessPlugin_logic_fork_translated_rData_id <= FetchCachelessPlugin_logic_fork_translated_payload_id;
      FetchCachelessPlugin_logic_fork_translated_rData_address <= FetchCachelessPlugin_logic_fork_translated_payload_address;
    end
    FetchCachelessPlugin_logic_bus_cmd_payload_regNext_id <= FetchCachelessPlugin_logic_bus_cmd_payload_id;
    FetchCachelessPlugin_logic_bus_cmd_payload_regNext_address <= FetchCachelessPlugin_logic_bus_cmd_payload_address;
    if(fetch_logic_ctrls_0_down_isReady) begin
      fetch_logic_ctrls_1_up_Fetch_WORD_PC <= fetch_logic_ctrls_0_down_Fetch_WORD_PC;
      fetch_logic_ctrls_1_up_Fetch_ID <= fetch_logic_ctrls_0_down_Fetch_ID;
      fetch_logic_ctrls_1_up_FetchCachelessPlugin_logic_BUFFER_ID <= fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_BUFFER_ID;
      fetch_logic_ctrls_1_up_FetchCachelessPlugin_logic_fork_PMA_FAULT <= fetch_logic_ctrls_0_down_FetchCachelessPlugin_logic_fork_PMA_FAULT;
      fetch_logic_ctrls_1_up_MMU_HAZARD <= fetch_logic_ctrls_0_down_MMU_HAZARD;
      fetch_logic_ctrls_1_up_MMU_REFILL <= fetch_logic_ctrls_0_down_MMU_REFILL;
      fetch_logic_ctrls_1_up_MMU_ALLOW_EXECUTE <= fetch_logic_ctrls_0_down_MMU_ALLOW_EXECUTE;
      fetch_logic_ctrls_1_up_MMU_PAGE_FAULT <= fetch_logic_ctrls_0_down_MMU_PAGE_FAULT;
      fetch_logic_ctrls_1_up_MMU_ACCESS_FAULT <= fetch_logic_ctrls_0_down_MMU_ACCESS_FAULT;
    end
    if(decode_ctrls_0_down_isReady) begin
      decode_ctrls_1_up_Decode_INSTRUCTION_0 <= decode_ctrls_0_down_Decode_INSTRUCTION_0;
      decode_ctrls_1_up_Decode_DECOMPRESSION_FAULT_0 <= decode_ctrls_0_down_Decode_DECOMPRESSION_FAULT_0;
      decode_ctrls_1_up_Decode_INSTRUCTION_RAW_0 <= decode_ctrls_0_down_Decode_INSTRUCTION_RAW_0;
      decode_ctrls_1_up_PC_0 <= decode_ctrls_0_down_PC_0;
      decode_ctrls_1_up_Decode_DOP_ID_0 <= decode_ctrls_0_down_Decode_DOP_ID_0;
      decode_ctrls_1_up_TRAP_0 <= decode_ctrls_0_down_TRAP_0;
    end
    if(execute_ctrl0_down_isReady) begin
      execute_ctrl1_up_Decode_UOP_lane0 <= execute_ctrl0_down_Decode_UOP_lane0;
      execute_ctrl1_up_PC_lane0 <= execute_ctrl0_down_PC_lane0;
      execute_ctrl1_up_TRAP_lane0 <= execute_ctrl0_down_TRAP_lane0;
      execute_ctrl1_up_Decode_UOP_ID_lane0 <= execute_ctrl0_down_Decode_UOP_ID_lane0;
      execute_ctrl1_up_RS1_PHYS_lane0 <= execute_ctrl0_down_RS1_PHYS_lane0;
      execute_ctrl1_up_RS2_PHYS_lane0 <= execute_ctrl0_down_RS2_PHYS_lane0;
      execute_ctrl1_up_RD_ENABLE_lane0 <= execute_ctrl0_down_RD_ENABLE_lane0;
      execute_ctrl1_up_RD_PHYS_lane0 <= execute_ctrl0_down_RD_PHYS_lane0;
      execute_ctrl1_up_COMPLETED_lane0 <= execute_ctrl0_down_COMPLETED_lane0;
      execute_ctrl1_up_AguPlugin_SIZE_lane0 <= execute_ctrl0_down_AguPlugin_SIZE_lane0;
    end
    if(execute_ctrl1_down_isReady) begin
      execute_ctrl2_up_Decode_UOP_lane0 <= execute_ctrl1_down_Decode_UOP_lane0;
      execute_ctrl2_up_PC_lane0 <= execute_ctrl1_down_PC_lane0;
      execute_ctrl2_up_TRAP_lane0 <= execute_ctrl1_down_TRAP_lane0;
      execute_ctrl2_up_Decode_UOP_ID_lane0 <= execute_ctrl1_down_Decode_UOP_ID_lane0;
      execute_ctrl2_up_RD_ENABLE_lane0 <= execute_ctrl1_down_RD_ENABLE_lane0;
      execute_ctrl2_up_RD_PHYS_lane0 <= execute_ctrl1_down_RD_PHYS_lane0;
      execute_ctrl2_up_COMPLETED_lane0 <= execute_ctrl1_down_COMPLETED_lane0;
      execute_ctrl2_up_AguPlugin_SIZE_lane0 <= execute_ctrl1_down_AguPlugin_SIZE_lane0;
      execute_ctrl2_up_early0_SrcPlugin_SRC1_lane0 <= execute_ctrl1_down_early0_SrcPlugin_SRC1_lane0;
      execute_ctrl2_up_integer_RS1_lane0 <= execute_ctrl1_down_integer_RS1_lane0;
      execute_ctrl2_up_early0_SrcPlugin_SRC2_lane0 <= execute_ctrl1_down_early0_SrcPlugin_SRC2_lane0;
      execute_ctrl2_up_integer_RS2_lane0 <= execute_ctrl1_down_integer_RS2_lane0;
      execute_ctrl2_up_early0_IntAluPlugin_SEL_lane0 <= execute_ctrl1_down_early0_IntAluPlugin_SEL_lane0;
      execute_ctrl2_up_early0_BarrelShifterPlugin_SEL_lane0 <= execute_ctrl1_down_early0_BarrelShifterPlugin_SEL_lane0;
      execute_ctrl2_up_early0_BranchPlugin_SEL_lane0 <= execute_ctrl1_down_early0_BranchPlugin_SEL_lane0;
      execute_ctrl2_up_early0_EnvPlugin_SEL_lane0 <= execute_ctrl1_down_early0_EnvPlugin_SEL_lane0;
      execute_ctrl2_up_CsrAccessPlugin_SEL_lane0 <= execute_ctrl1_down_CsrAccessPlugin_SEL_lane0;
      execute_ctrl2_up_AguPlugin_SEL_lane0 <= execute_ctrl1_down_AguPlugin_SEL_lane0;
      execute_ctrl2_up_LsuCachelessPlugin_FENCE_lane0 <= execute_ctrl1_down_LsuCachelessPlugin_FENCE_lane0;
      execute_ctrl2_up_lane0_integer_WriteBackPlugin_SEL_lane0 <= execute_ctrl1_down_lane0_integer_WriteBackPlugin_SEL_lane0;
      execute_ctrl2_up_COMPLETION_AT_2_lane0 <= execute_ctrl1_down_COMPLETION_AT_2_lane0;
      execute_ctrl2_up_COMPLETION_AT_3_lane0 <= execute_ctrl1_down_COMPLETION_AT_3_lane0;
      execute_ctrl2_up_COMPLETION_AT_4_lane0 <= execute_ctrl1_down_COMPLETION_AT_4_lane0;
      execute_ctrl2_up_lane0_logic_completions_onCtrl_0_ENABLE_lane0 <= execute_ctrl1_down_lane0_logic_completions_onCtrl_0_ENABLE_lane0;
      execute_ctrl2_up_lane0_logic_completions_onCtrl_1_ENABLE_lane0 <= execute_ctrl1_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0;
      execute_ctrl2_up_lane0_logic_completions_onCtrl_2_ENABLE_lane0 <= execute_ctrl1_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
      execute_ctrl2_up_early0_IntAluPlugin_ALU_ADD_SUB_lane0 <= execute_ctrl1_down_early0_IntAluPlugin_ALU_ADD_SUB_lane0;
      execute_ctrl2_up_early0_IntAluPlugin_ALU_SLTX_lane0 <= execute_ctrl1_down_early0_IntAluPlugin_ALU_SLTX_lane0;
      execute_ctrl2_up_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0 <= execute_ctrl1_down_early0_IntAluPlugin_ALU_BITWISE_CTRL_lane0;
      execute_ctrl2_up_SrcStageables_REVERT_lane0 <= execute_ctrl1_down_SrcStageables_REVERT_lane0;
      execute_ctrl2_up_SrcStageables_ZERO_lane0 <= execute_ctrl1_down_SrcStageables_ZERO_lane0;
      execute_ctrl2_up_lane0_IntFormatPlugin_logic_SIGNED_lane0 <= execute_ctrl1_down_lane0_IntFormatPlugin_logic_SIGNED_lane0;
      execute_ctrl2_up_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0 <= execute_ctrl1_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
      execute_ctrl2_up_BYPASSED_AT_2_lane0 <= execute_ctrl1_down_BYPASSED_AT_2_lane0;
      execute_ctrl2_up_BYPASSED_AT_3_lane0 <= execute_ctrl1_down_BYPASSED_AT_3_lane0;
      execute_ctrl2_up_BYPASSED_AT_4_lane0 <= execute_ctrl1_down_BYPASSED_AT_4_lane0;
      execute_ctrl2_up_SrcStageables_UNSIGNED_lane0 <= execute_ctrl1_down_SrcStageables_UNSIGNED_lane0;
      execute_ctrl2_up_BarrelShifterPlugin_LEFT_lane0 <= execute_ctrl1_down_BarrelShifterPlugin_LEFT_lane0;
      execute_ctrl2_up_BarrelShifterPlugin_SIGNED_lane0 <= execute_ctrl1_down_BarrelShifterPlugin_SIGNED_lane0;
      execute_ctrl2_up_BranchPlugin_BRANCH_CTRL_lane0 <= execute_ctrl1_down_BranchPlugin_BRANCH_CTRL_lane0;
      execute_ctrl2_up_CsrAccessPlugin_CSR_IMM_lane0 <= execute_ctrl1_down_CsrAccessPlugin_CSR_IMM_lane0;
      execute_ctrl2_up_CsrAccessPlugin_CSR_MASK_lane0 <= execute_ctrl1_down_CsrAccessPlugin_CSR_MASK_lane0;
      execute_ctrl2_up_CsrAccessPlugin_CSR_CLEAR_lane0 <= execute_ctrl1_down_CsrAccessPlugin_CSR_CLEAR_lane0;
      execute_ctrl2_up_AguPlugin_LOAD_lane0 <= execute_ctrl1_down_AguPlugin_LOAD_lane0;
      execute_ctrl2_up_AguPlugin_STORE_lane0 <= execute_ctrl1_down_AguPlugin_STORE_lane0;
      execute_ctrl2_up_AguPlugin_ATOMIC_lane0 <= execute_ctrl1_down_AguPlugin_ATOMIC_lane0;
      execute_ctrl2_up_AguPlugin_FLOAT_lane0 <= execute_ctrl1_down_AguPlugin_FLOAT_lane0;
      execute_ctrl2_up_early0_EnvPlugin_OP_lane0 <= execute_ctrl1_down_early0_EnvPlugin_OP_lane0;
    end
    if(execute_ctrl2_down_isReady) begin
      execute_ctrl3_up_Decode_UOP_lane0 <= execute_ctrl2_down_Decode_UOP_lane0;
      execute_ctrl3_up_PC_lane0 <= execute_ctrl2_down_PC_lane0;
      execute_ctrl3_up_TRAP_lane0 <= execute_ctrl2_down_TRAP_lane0;
      execute_ctrl3_up_Decode_UOP_ID_lane0 <= execute_ctrl2_down_Decode_UOP_ID_lane0;
      execute_ctrl3_up_RD_ENABLE_lane0 <= execute_ctrl2_down_RD_ENABLE_lane0;
      execute_ctrl3_up_RD_PHYS_lane0 <= execute_ctrl2_down_RD_PHYS_lane0;
      execute_ctrl3_up_COMPLETED_lane0 <= execute_ctrl2_down_COMPLETED_lane0;
      execute_ctrl3_up_AguPlugin_SIZE_lane0 <= execute_ctrl2_down_AguPlugin_SIZE_lane0;
      execute_ctrl3_up_CsrAccessPlugin_SEL_lane0 <= execute_ctrl2_down_CsrAccessPlugin_SEL_lane0;
      execute_ctrl3_up_AguPlugin_SEL_lane0 <= execute_ctrl2_down_AguPlugin_SEL_lane0;
      execute_ctrl3_up_lane0_integer_WriteBackPlugin_SEL_lane0 <= execute_ctrl2_down_lane0_integer_WriteBackPlugin_SEL_lane0;
      execute_ctrl3_up_COMPLETION_AT_3_lane0 <= execute_ctrl2_down_COMPLETION_AT_3_lane0;
      execute_ctrl3_up_COMPLETION_AT_4_lane0 <= execute_ctrl2_down_COMPLETION_AT_4_lane0;
      execute_ctrl3_up_lane0_logic_completions_onCtrl_1_ENABLE_lane0 <= execute_ctrl2_down_lane0_logic_completions_onCtrl_1_ENABLE_lane0;
      execute_ctrl3_up_lane0_logic_completions_onCtrl_2_ENABLE_lane0 <= execute_ctrl2_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
      execute_ctrl3_up_lane0_IntFormatPlugin_logic_SIGNED_lane0 <= execute_ctrl2_down_lane0_IntFormatPlugin_logic_SIGNED_lane0;
      execute_ctrl3_up_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0 <= execute_ctrl2_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
      execute_ctrl3_up_BYPASSED_AT_3_lane0 <= execute_ctrl2_down_BYPASSED_AT_3_lane0;
      execute_ctrl3_up_BYPASSED_AT_4_lane0 <= execute_ctrl2_down_BYPASSED_AT_4_lane0;
      execute_ctrl3_up_AguPlugin_LOAD_lane0 <= execute_ctrl2_down_AguPlugin_LOAD_lane0;
      execute_ctrl3_up_AguPlugin_STORE_lane0 <= execute_ctrl2_down_AguPlugin_STORE_lane0;
      execute_ctrl3_up_AguPlugin_ATOMIC_lane0 <= execute_ctrl2_down_AguPlugin_ATOMIC_lane0;
      execute_ctrl3_up_AguPlugin_FLOAT_lane0 <= execute_ctrl2_down_AguPlugin_FLOAT_lane0;
      execute_ctrl3_up_COMMIT_lane0 <= execute_ctrl2_down_COMMIT_lane0;
      execute_ctrl3_up_early0_SrcPlugin_ADD_SUB_lane0 <= execute_ctrl2_down_early0_SrcPlugin_ADD_SUB_lane0;
      execute_ctrl3_up_MMU_TRANSLATED_lane0 <= execute_ctrl2_down_MMU_TRANSLATED_lane0;
      execute_ctrl3_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault <= execute_ctrl2_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault;
      execute_ctrl3_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_io <= execute_ctrl2_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_io;
      execute_ctrl3_up_lane0_integer_WriteBackPlugin_logic_DATA_lane0 <= execute_ctrl2_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
    end
    if(execute_ctrl3_down_isReady) begin
      execute_ctrl4_up_Decode_UOP_lane0 <= execute_ctrl3_down_Decode_UOP_lane0;
      execute_ctrl4_up_PC_lane0 <= execute_ctrl3_down_PC_lane0;
      execute_ctrl4_up_TRAP_lane0 <= execute_ctrl3_down_TRAP_lane0;
      execute_ctrl4_up_Decode_UOP_ID_lane0 <= execute_ctrl3_down_Decode_UOP_ID_lane0;
      execute_ctrl4_up_RD_ENABLE_lane0 <= execute_ctrl3_down_RD_ENABLE_lane0;
      execute_ctrl4_up_RD_PHYS_lane0 <= execute_ctrl3_down_RD_PHYS_lane0;
      execute_ctrl4_up_COMPLETED_lane0 <= execute_ctrl3_down_COMPLETED_lane0;
      execute_ctrl4_up_AguPlugin_SIZE_lane0 <= execute_ctrl3_down_AguPlugin_SIZE_lane0;
      execute_ctrl4_up_AguPlugin_SEL_lane0 <= execute_ctrl3_down_AguPlugin_SEL_lane0;
      execute_ctrl4_up_lane0_integer_WriteBackPlugin_SEL_lane0 <= execute_ctrl3_down_lane0_integer_WriteBackPlugin_SEL_lane0;
      execute_ctrl4_up_COMPLETION_AT_4_lane0 <= execute_ctrl3_down_COMPLETION_AT_4_lane0;
      execute_ctrl4_up_lane0_logic_completions_onCtrl_2_ENABLE_lane0 <= execute_ctrl3_down_lane0_logic_completions_onCtrl_2_ENABLE_lane0;
      execute_ctrl4_up_lane0_IntFormatPlugin_logic_SIGNED_lane0 <= execute_ctrl3_down_lane0_IntFormatPlugin_logic_SIGNED_lane0;
      execute_ctrl4_up_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0 <= execute_ctrl3_down_lane0_IntFormatPlugin_logic_WIDTH_ID_lane0;
      execute_ctrl4_up_BYPASSED_AT_4_lane0 <= execute_ctrl3_down_BYPASSED_AT_4_lane0;
      execute_ctrl4_up_AguPlugin_LOAD_lane0 <= execute_ctrl3_down_AguPlugin_LOAD_lane0;
      execute_ctrl4_up_AguPlugin_ATOMIC_lane0 <= execute_ctrl3_down_AguPlugin_ATOMIC_lane0;
      execute_ctrl4_up_AguPlugin_FLOAT_lane0 <= execute_ctrl3_down_AguPlugin_FLOAT_lane0;
      execute_ctrl4_up_COMMIT_lane0 <= execute_ctrl3_down_COMMIT_lane0;
      execute_ctrl4_up_early0_SrcPlugin_ADD_SUB_lane0 <= execute_ctrl3_down_early0_SrcPlugin_ADD_SUB_lane0;
      execute_ctrl4_up_MMU_TRANSLATED_lane0 <= execute_ctrl3_down_MMU_TRANSLATED_lane0;
      execute_ctrl4_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault <= execute_ctrl3_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_fault;
      execute_ctrl4_up_LsuCachelessPlugin_logic_onPma_RSP_lane0_io <= execute_ctrl3_down_LsuCachelessPlugin_logic_onPma_RSP_lane0_io;
      execute_ctrl4_up_lane0_integer_WriteBackPlugin_logic_DATA_lane0 <= execute_ctrl3_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
      execute_ctrl4_up_LsuCachelessPlugin_logic_onJoin_SC_MISS_lane0 <= execute_ctrl3_down_LsuCachelessPlugin_logic_onJoin_SC_MISS_lane0;
      execute_ctrl4_up_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0 <= execute_ctrl3_down_LsuCachelessPlugin_logic_onJoin_READ_DATA_lane0;
    end
    if(execute_ctrl4_down_isReady) begin
      execute_ctrl5_up_RD_ENABLE_lane0 <= execute_ctrl4_down_RD_ENABLE_lane0;
      execute_ctrl5_up_RD_PHYS_lane0 <= execute_ctrl4_down_RD_PHYS_lane0;
      execute_ctrl5_up_COMMIT_lane0 <= execute_ctrl4_down_COMMIT_lane0;
      execute_ctrl5_up_lane0_integer_WriteBackPlugin_logic_DATA_lane0 <= execute_ctrl4_down_lane0_integer_WriteBackPlugin_logic_DATA_lane0;
    end
    case(TrapPlugin_logic_harts_0_trap_fsm_stateReg)
      TrapPlugin_logic_harts_0_trap_fsm_RUNNING : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_COMPUTE : begin
        TrapPlugin_logic_harts_0_trap_fsm_triggerEbreakReg <= TrapPlugin_logic_harts_0_trap_fsm_triggerEbreak;
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVAL : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_TVEC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_WAIT : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_TRAP_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_EPC : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_XRET_APPLY : begin
      end
      TrapPlugin_logic_harts_0_trap_fsm_JUMP : begin
      end
      default : begin
      end
    endcase
    case(CsrAccessPlugin_logic_fsm_stateReg)
      CsrAccessPlugin_logic_fsm_READ : begin
        CsrAccessPlugin_logic_fsm_interface_aluInput <= CsrAccessPlugin_bus_read_toWriteBits;
        CsrAccessPlugin_logic_fsm_interface_csrValue <= CsrAccessPlugin_logic_fsm_readLogic_csrValue;
      end
      CsrAccessPlugin_logic_fsm_WRITE : begin
      end
      CsrAccessPlugin_logic_fsm_COMPLETION : begin
      end
      default : begin
        REG_CSR_1952 <= COMB_CSR_1952;
        REG_CSR_1953 <= COMB_CSR_1953;
        REG_CSR_1954 <= COMB_CSR_1954;
        REG_CSR_3857 <= COMB_CSR_3857;
        REG_CSR_3858 <= COMB_CSR_3858;
        REG_CSR_3859 <= COMB_CSR_3859;
        REG_CSR_3860 <= COMB_CSR_3860;
        REG_CSR_769 <= COMB_CSR_769;
        REG_CSR_768 <= COMB_CSR_768;
        REG_CSR_834 <= COMB_CSR_834;
        REG_CSR_836 <= COMB_CSR_836;
        REG_CSR_772 <= COMB_CSR_772;
        REG_CSR_4016 <= COMB_CSR_4016;
        REG_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_tvecFilter <= COMB_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_tvecFilter;
        REG_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_epcFilter <= COMB_CSR_PrivilegedPlugin_logic_readAnyWriteLegal_epcFilter;
        REG_CSR_CsrRamPlugin_csrMapper_selFilter <= COMB_CSR_CsrRamPlugin_csrMapper_selFilter;
        REG_CSR_CsrAccessPlugin_logic_trapNextOnWriteFilter <= COMB_CSR_CsrAccessPlugin_logic_trapNextOnWriteFilter;
      end
    endcase
  end


endmodule

module RegFileMem (
  input  wire          io_writes_0_valid,
  input  wire [4:0]    io_writes_0_address,
  input  wire [31:0]   io_writes_0_data,
  input  wire [15:0]   io_writes_0_uopId,
  input  wire          io_reads_0_valid,
  input  wire [4:0]    io_reads_0_address,
  output wire [31:0]   io_reads_0_data,
  input  wire          io_reads_1_valid,
  input  wire [4:0]    io_reads_1_address,
  output wire [31:0]   io_reads_1_data,
  input  wire          clk,
  input  wire          reset
);

  reg        [31:0]   asMem_ram_spinal_port1;
  reg        [31:0]   asMem_ram_spinal_port2;
  reg                 _zz_1;
  wire                conv_writes_0_valid;
  wire       [4:0]    conv_writes_0_payload_address;
  wire       [31:0]   conv_writes_0_payload_data;
  wire                conv_read_0_cmd_valid;
  wire       [4:0]    conv_read_0_cmd_payload;
  wire       [31:0]   conv_read_0_rsp;
  wire                conv_read_1_cmd_valid;
  wire       [4:0]    conv_read_1_cmd_payload;
  wire       [31:0]   conv_read_1_rsp;
  wire                asMem_writes_0_port_valid;
  wire       [4:0]    asMem_writes_0_port_payload_address;
  wire       [31:0]   asMem_writes_0_port_payload_data;
  wire                asMem_reads_0_sync_port_cmd_valid;
  wire       [4:0]    asMem_reads_0_sync_port_cmd_payload;
  wire       [31:0]   asMem_reads_0_sync_port_rsp;
  wire                asMem_reads_1_sync_port_cmd_valid;
  wire       [4:0]    asMem_reads_1_sync_port_cmd_payload;
  wire       [31:0]   asMem_reads_1_sync_port_rsp;
  reg [31:0] asMem_ram [0:31] /* verilator public */ ;

  always @(posedge clk) begin
    if(_zz_1) begin
      asMem_ram[asMem_writes_0_port_payload_address] <= asMem_writes_0_port_payload_data;
    end
  end

  always @(posedge clk) begin
    if(asMem_reads_0_sync_port_cmd_valid) begin
      asMem_ram_spinal_port1 <= asMem_ram[asMem_reads_0_sync_port_cmd_payload];
    end
  end

  always @(posedge clk) begin
    if(asMem_reads_1_sync_port_cmd_valid) begin
      asMem_ram_spinal_port2 <= asMem_ram[asMem_reads_1_sync_port_cmd_payload];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(asMem_writes_0_port_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign conv_writes_0_valid = io_writes_0_valid;
  assign conv_writes_0_payload_address = io_writes_0_address;
  assign conv_writes_0_payload_data = io_writes_0_data;
  assign conv_read_0_cmd_valid = io_reads_0_valid;
  assign conv_read_0_cmd_payload = io_reads_0_address;
  assign io_reads_0_data = conv_read_0_rsp;
  assign conv_read_1_cmd_valid = io_reads_1_valid;
  assign conv_read_1_cmd_payload = io_reads_1_address;
  assign io_reads_1_data = conv_read_1_rsp;
  assign asMem_writes_0_port_valid = conv_writes_0_valid;
  assign asMem_writes_0_port_payload_address = conv_writes_0_payload_address;
  assign asMem_writes_0_port_payload_data = conv_writes_0_payload_data;
  assign asMem_reads_0_sync_port_rsp = asMem_ram_spinal_port1;
  assign asMem_reads_0_sync_port_cmd_valid = conv_read_0_cmd_valid;
  assign asMem_reads_0_sync_port_cmd_payload = conv_read_0_cmd_payload;
  assign conv_read_0_rsp = asMem_reads_0_sync_port_rsp;
  assign asMem_reads_1_sync_port_rsp = asMem_ram_spinal_port2;
  assign asMem_reads_1_sync_port_cmd_valid = conv_read_1_cmd_valid;
  assign asMem_reads_1_sync_port_cmd_payload = conv_read_1_cmd_payload;
  assign conv_read_1_rsp = asMem_reads_1_sync_port_rsp;

endmodule

module StreamArbiter (
  input  wire          io_inputs_0_valid,
  output wire          io_inputs_0_ready,
  input  wire [31:0]   io_inputs_0_payload_pcOnLastSlice,
  input  wire [31:0]   io_inputs_0_payload_pcTarget,
  input  wire          io_inputs_0_payload_taken,
  input  wire          io_inputs_0_payload_isBranch,
  input  wire          io_inputs_0_payload_isPush,
  input  wire          io_inputs_0_payload_isPop,
  input  wire          io_inputs_0_payload_wasWrong,
  input  wire          io_inputs_0_payload_badPredictedTarget,
  input  wire [15:0]   io_inputs_0_payload_uopId,
  output wire          io_output_valid,
  input  wire          io_output_ready,
  output wire [31:0]   io_output_payload_pcOnLastSlice,
  output wire [31:0]   io_output_payload_pcTarget,
  output wire          io_output_payload_taken,
  output wire          io_output_payload_isBranch,
  output wire          io_output_payload_isPush,
  output wire          io_output_payload_isPop,
  output wire          io_output_payload_wasWrong,
  output wire          io_output_payload_badPredictedTarget,
  output wire [15:0]   io_output_payload_uopId,
  output wire [0:0]    io_chosenOH,
  input  wire          clk,
  input  wire          reset
);

  wire       [1:0]    _zz__zz_maskProposal_0_2;
  wire       [1:0]    _zz__zz_maskProposal_0_2_1;
  wire       [0:0]    _zz__zz_maskProposal_0_2_2;
  wire       [0:0]    _zz_maskProposal_0_3;
  wire                locked;
  wire                maskProposal_0;
  reg                 maskLocked_0;
  wire                maskRouted_0;
  wire       [0:0]    _zz_maskProposal_0;
  wire       [1:0]    _zz_maskProposal_0_1;
  wire       [1:0]    _zz_maskProposal_0_2;

  assign _zz__zz_maskProposal_0_2 = (_zz_maskProposal_0_1 - _zz__zz_maskProposal_0_2_1);
  assign _zz__zz_maskProposal_0_2_2 = maskLocked_0;
  assign _zz__zz_maskProposal_0_2_1 = {1'd0, _zz__zz_maskProposal_0_2_2};
  assign _zz_maskProposal_0_3 = (_zz_maskProposal_0_2[1 : 1] | _zz_maskProposal_0_2[0 : 0]);
  assign locked = 1'b0;
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign _zz_maskProposal_0 = io_inputs_0_valid;
  assign _zz_maskProposal_0_1 = {_zz_maskProposal_0,_zz_maskProposal_0};
  assign _zz_maskProposal_0_2 = (_zz_maskProposal_0_1 & (~ _zz__zz_maskProposal_0_2));
  assign maskProposal_0 = _zz_maskProposal_0_3[0];
  assign io_output_valid = (io_inputs_0_valid && maskRouted_0);
  assign io_output_payload_pcOnLastSlice = io_inputs_0_payload_pcOnLastSlice;
  assign io_output_payload_pcTarget = io_inputs_0_payload_pcTarget;
  assign io_output_payload_taken = io_inputs_0_payload_taken;
  assign io_output_payload_isBranch = io_inputs_0_payload_isBranch;
  assign io_output_payload_isPush = io_inputs_0_payload_isPush;
  assign io_output_payload_isPop = io_inputs_0_payload_isPop;
  assign io_output_payload_wasWrong = io_inputs_0_payload_wasWrong;
  assign io_output_payload_badPredictedTarget = io_inputs_0_payload_badPredictedTarget;
  assign io_output_payload_uopId = io_inputs_0_payload_uopId;
  assign io_inputs_0_ready = ((1'b0 || maskRouted_0) && io_output_ready);
  assign io_chosenOH = maskRouted_0;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      maskLocked_0 <= 1'b1;
    end else begin
      if(io_output_valid) begin
        maskLocked_0 <= maskRouted_0;
      end
    end
  end


endmodule

module AxiLite4Plic (
  input  wire          io_bus_aw_valid,
  output wire          io_bus_aw_ready,
  input  wire [21:0]   io_bus_aw_payload_addr,
  input  wire [2:0]    io_bus_aw_payload_prot,
  input  wire          io_bus_w_valid,
  output wire          io_bus_w_ready,
  input  wire [31:0]   io_bus_w_payload_data,
  input  wire [3:0]    io_bus_w_payload_strb,
  output wire          io_bus_b_valid,
  input  wire          io_bus_b_ready,
  output wire [1:0]    io_bus_b_payload_resp,
  input  wire          io_bus_ar_valid,
  output wire          io_bus_ar_ready,
  input  wire [21:0]   io_bus_ar_payload_addr,
  input  wire [2:0]    io_bus_ar_payload_prot,
  output wire          io_bus_r_valid,
  input  wire          io_bus_r_ready,
  output wire [31:0]   io_bus_r_payload_data,
  output wire [1:0]    io_bus_r_payload_resp,
  input  wire [30:0]   io_sources,
  output wire [1:0]    io_targets,
  input  wire          clk,
  input  wire          reset
);

  wire       [4:0]    _zz_targets_0_bestRequest_id_82;
  wire       [4:0]    _zz_targets_0_bestRequest_id_83;
  wire       [4:0]    _zz_targets_0_bestRequest_id_84;
  wire       [4:0]    _zz_targets_0_bestRequest_id_85;
  wire       [4:0]    _zz_targets_0_bestRequest_id_86;
  wire       [4:0]    _zz_targets_0_bestRequest_id_87;
  wire       [4:0]    _zz_targets_0_bestRequest_id_88;
  wire       [4:0]    _zz_targets_0_bestRequest_id_89;
  wire       [4:0]    _zz_targets_0_bestRequest_id_90;
  wire       [4:0]    _zz_targets_0_bestRequest_id_91;
  wire       [4:0]    _zz_targets_0_bestRequest_id_92;
  wire       [4:0]    _zz_targets_0_bestRequest_id_93;
  wire       [4:0]    _zz_targets_0_bestRequest_id_94;
  wire       [4:0]    _zz_targets_0_bestRequest_id_95;
  wire       [4:0]    _zz_targets_0_bestRequest_id_96;
  wire       [4:0]    _zz_targets_0_bestRequest_id_97;
  wire       [4:0]    _zz_targets_1_bestRequest_id_82;
  wire       [4:0]    _zz_targets_1_bestRequest_id_83;
  wire       [4:0]    _zz_targets_1_bestRequest_id_84;
  wire       [4:0]    _zz_targets_1_bestRequest_id_85;
  wire       [4:0]    _zz_targets_1_bestRequest_id_86;
  wire       [4:0]    _zz_targets_1_bestRequest_id_87;
  wire       [4:0]    _zz_targets_1_bestRequest_id_88;
  wire       [4:0]    _zz_targets_1_bestRequest_id_89;
  wire       [4:0]    _zz_targets_1_bestRequest_id_90;
  wire       [4:0]    _zz_targets_1_bestRequest_id_91;
  wire       [4:0]    _zz_targets_1_bestRequest_id_92;
  wire       [4:0]    _zz_targets_1_bestRequest_id_93;
  wire       [4:0]    _zz_targets_1_bestRequest_id_94;
  wire       [4:0]    _zz_targets_1_bestRequest_id_95;
  wire       [4:0]    _zz_targets_1_bestRequest_id_96;
  wire       [4:0]    _zz_targets_1_bestRequest_id_97;
  wire                _zz_gateways_0_ip;
  wire                _zz_gateways_1_ip;
  wire                _zz_gateways_2_ip;
  wire                _zz_gateways_3_ip;
  wire                _zz_gateways_4_ip;
  wire                _zz_gateways_5_ip;
  wire                _zz_gateways_6_ip;
  wire                _zz_gateways_7_ip;
  wire                _zz_gateways_8_ip;
  wire                _zz_gateways_9_ip;
  wire                _zz_gateways_10_ip;
  wire                _zz_gateways_11_ip;
  wire                _zz_gateways_12_ip;
  wire                _zz_gateways_13_ip;
  wire                _zz_gateways_14_ip;
  wire                _zz_gateways_15_ip;
  wire                _zz_gateways_16_ip;
  wire                _zz_gateways_17_ip;
  wire                _zz_gateways_18_ip;
  wire                _zz_gateways_19_ip;
  wire                _zz_gateways_20_ip;
  wire                _zz_gateways_21_ip;
  wire                _zz_gateways_22_ip;
  wire                _zz_gateways_23_ip;
  wire                _zz_gateways_24_ip;
  wire                _zz_gateways_25_ip;
  wire                _zz_gateways_26_ip;
  wire                _zz_gateways_27_ip;
  wire                _zz_gateways_28_ip;
  wire                _zz_gateways_29_ip;
  wire                _zz_gateways_30_ip;
  wire       [1:0]    gateways_0_priority;
  reg                 gateways_0_ip;
  reg                 gateways_0_waitCompletion;
  wire                when_PlicGateway_l21;
  wire       [1:0]    gateways_1_priority;
  reg                 gateways_1_ip;
  reg                 gateways_1_waitCompletion;
  wire                when_PlicGateway_l21_1;
  wire       [1:0]    gateways_2_priority;
  reg                 gateways_2_ip;
  reg                 gateways_2_waitCompletion;
  wire                when_PlicGateway_l21_2;
  wire       [1:0]    gateways_3_priority;
  reg                 gateways_3_ip;
  reg                 gateways_3_waitCompletion;
  wire                when_PlicGateway_l21_3;
  wire       [1:0]    gateways_4_priority;
  reg                 gateways_4_ip;
  reg                 gateways_4_waitCompletion;
  wire                when_PlicGateway_l21_4;
  wire       [1:0]    gateways_5_priority;
  reg                 gateways_5_ip;
  reg                 gateways_5_waitCompletion;
  wire                when_PlicGateway_l21_5;
  wire       [1:0]    gateways_6_priority;
  reg                 gateways_6_ip;
  reg                 gateways_6_waitCompletion;
  wire                when_PlicGateway_l21_6;
  wire       [1:0]    gateways_7_priority;
  reg                 gateways_7_ip;
  reg                 gateways_7_waitCompletion;
  wire                when_PlicGateway_l21_7;
  wire       [1:0]    gateways_8_priority;
  reg                 gateways_8_ip;
  reg                 gateways_8_waitCompletion;
  wire                when_PlicGateway_l21_8;
  wire       [1:0]    gateways_9_priority;
  reg                 gateways_9_ip;
  reg                 gateways_9_waitCompletion;
  wire                when_PlicGateway_l21_9;
  wire       [1:0]    gateways_10_priority;
  reg                 gateways_10_ip;
  reg                 gateways_10_waitCompletion;
  wire                when_PlicGateway_l21_10;
  wire       [1:0]    gateways_11_priority;
  reg                 gateways_11_ip;
  reg                 gateways_11_waitCompletion;
  wire                when_PlicGateway_l21_11;
  wire       [1:0]    gateways_12_priority;
  reg                 gateways_12_ip;
  reg                 gateways_12_waitCompletion;
  wire                when_PlicGateway_l21_12;
  wire       [1:0]    gateways_13_priority;
  reg                 gateways_13_ip;
  reg                 gateways_13_waitCompletion;
  wire                when_PlicGateway_l21_13;
  wire       [1:0]    gateways_14_priority;
  reg                 gateways_14_ip;
  reg                 gateways_14_waitCompletion;
  wire                when_PlicGateway_l21_14;
  wire       [1:0]    gateways_15_priority;
  reg                 gateways_15_ip;
  reg                 gateways_15_waitCompletion;
  wire                when_PlicGateway_l21_15;
  wire       [1:0]    gateways_16_priority;
  reg                 gateways_16_ip;
  reg                 gateways_16_waitCompletion;
  wire                when_PlicGateway_l21_16;
  wire       [1:0]    gateways_17_priority;
  reg                 gateways_17_ip;
  reg                 gateways_17_waitCompletion;
  wire                when_PlicGateway_l21_17;
  wire       [1:0]    gateways_18_priority;
  reg                 gateways_18_ip;
  reg                 gateways_18_waitCompletion;
  wire                when_PlicGateway_l21_18;
  wire       [1:0]    gateways_19_priority;
  reg                 gateways_19_ip;
  reg                 gateways_19_waitCompletion;
  wire                when_PlicGateway_l21_19;
  wire       [1:0]    gateways_20_priority;
  reg                 gateways_20_ip;
  reg                 gateways_20_waitCompletion;
  wire                when_PlicGateway_l21_20;
  wire       [1:0]    gateways_21_priority;
  reg                 gateways_21_ip;
  reg                 gateways_21_waitCompletion;
  wire                when_PlicGateway_l21_21;
  wire       [1:0]    gateways_22_priority;
  reg                 gateways_22_ip;
  reg                 gateways_22_waitCompletion;
  wire                when_PlicGateway_l21_22;
  wire       [1:0]    gateways_23_priority;
  reg                 gateways_23_ip;
  reg                 gateways_23_waitCompletion;
  wire                when_PlicGateway_l21_23;
  wire       [1:0]    gateways_24_priority;
  reg                 gateways_24_ip;
  reg                 gateways_24_waitCompletion;
  wire                when_PlicGateway_l21_24;
  wire       [1:0]    gateways_25_priority;
  reg                 gateways_25_ip;
  reg                 gateways_25_waitCompletion;
  wire                when_PlicGateway_l21_25;
  wire       [1:0]    gateways_26_priority;
  reg                 gateways_26_ip;
  reg                 gateways_26_waitCompletion;
  wire                when_PlicGateway_l21_26;
  wire       [1:0]    gateways_27_priority;
  reg                 gateways_27_ip;
  reg                 gateways_27_waitCompletion;
  wire                when_PlicGateway_l21_27;
  wire       [1:0]    gateways_28_priority;
  reg                 gateways_28_ip;
  reg                 gateways_28_waitCompletion;
  wire                when_PlicGateway_l21_28;
  wire       [1:0]    gateways_29_priority;
  reg                 gateways_29_ip;
  reg                 gateways_29_waitCompletion;
  wire                when_PlicGateway_l21_29;
  wire       [1:0]    gateways_30_priority;
  reg                 gateways_30_ip;
  reg                 gateways_30_waitCompletion;
  wire                when_PlicGateway_l21_30;
  wire                targets_0_ie_0;
  wire                targets_0_ie_1;
  wire                targets_0_ie_2;
  wire                targets_0_ie_3;
  wire                targets_0_ie_4;
  wire                targets_0_ie_5;
  wire                targets_0_ie_6;
  wire                targets_0_ie_7;
  wire                targets_0_ie_8;
  wire                targets_0_ie_9;
  wire                targets_0_ie_10;
  wire                targets_0_ie_11;
  wire                targets_0_ie_12;
  wire                targets_0_ie_13;
  wire                targets_0_ie_14;
  wire                targets_0_ie_15;
  wire                targets_0_ie_16;
  wire                targets_0_ie_17;
  wire                targets_0_ie_18;
  wire                targets_0_ie_19;
  wire                targets_0_ie_20;
  wire                targets_0_ie_21;
  wire                targets_0_ie_22;
  wire                targets_0_ie_23;
  wire                targets_0_ie_24;
  wire                targets_0_ie_25;
  wire                targets_0_ie_26;
  wire                targets_0_ie_27;
  wire                targets_0_ie_28;
  wire                targets_0_ie_29;
  wire                targets_0_ie_30;
  wire       [1:0]    targets_0_threshold;
  wire       [1:0]    targets_0_requests_0_priority;
  wire       [4:0]    targets_0_requests_0_id;
  wire                targets_0_requests_0_valid;
  wire       [1:0]    targets_0_requests_1_priority;
  wire       [4:0]    targets_0_requests_1_id;
  wire                targets_0_requests_1_valid;
  wire       [1:0]    targets_0_requests_2_priority;
  wire       [4:0]    targets_0_requests_2_id;
  wire                targets_0_requests_2_valid;
  wire       [1:0]    targets_0_requests_3_priority;
  wire       [4:0]    targets_0_requests_3_id;
  wire                targets_0_requests_3_valid;
  wire       [1:0]    targets_0_requests_4_priority;
  wire       [4:0]    targets_0_requests_4_id;
  wire                targets_0_requests_4_valid;
  wire       [1:0]    targets_0_requests_5_priority;
  wire       [4:0]    targets_0_requests_5_id;
  wire                targets_0_requests_5_valid;
  wire       [1:0]    targets_0_requests_6_priority;
  wire       [4:0]    targets_0_requests_6_id;
  wire                targets_0_requests_6_valid;
  wire       [1:0]    targets_0_requests_7_priority;
  wire       [4:0]    targets_0_requests_7_id;
  wire                targets_0_requests_7_valid;
  wire       [1:0]    targets_0_requests_8_priority;
  wire       [4:0]    targets_0_requests_8_id;
  wire                targets_0_requests_8_valid;
  wire       [1:0]    targets_0_requests_9_priority;
  wire       [4:0]    targets_0_requests_9_id;
  wire                targets_0_requests_9_valid;
  wire       [1:0]    targets_0_requests_10_priority;
  wire       [4:0]    targets_0_requests_10_id;
  wire                targets_0_requests_10_valid;
  wire       [1:0]    targets_0_requests_11_priority;
  wire       [4:0]    targets_0_requests_11_id;
  wire                targets_0_requests_11_valid;
  wire       [1:0]    targets_0_requests_12_priority;
  wire       [4:0]    targets_0_requests_12_id;
  wire                targets_0_requests_12_valid;
  wire       [1:0]    targets_0_requests_13_priority;
  wire       [4:0]    targets_0_requests_13_id;
  wire                targets_0_requests_13_valid;
  wire       [1:0]    targets_0_requests_14_priority;
  wire       [4:0]    targets_0_requests_14_id;
  wire                targets_0_requests_14_valid;
  wire       [1:0]    targets_0_requests_15_priority;
  wire       [4:0]    targets_0_requests_15_id;
  wire                targets_0_requests_15_valid;
  wire       [1:0]    targets_0_requests_16_priority;
  wire       [4:0]    targets_0_requests_16_id;
  wire                targets_0_requests_16_valid;
  wire       [1:0]    targets_0_requests_17_priority;
  wire       [4:0]    targets_0_requests_17_id;
  wire                targets_0_requests_17_valid;
  wire       [1:0]    targets_0_requests_18_priority;
  wire       [4:0]    targets_0_requests_18_id;
  wire                targets_0_requests_18_valid;
  wire       [1:0]    targets_0_requests_19_priority;
  wire       [4:0]    targets_0_requests_19_id;
  wire                targets_0_requests_19_valid;
  wire       [1:0]    targets_0_requests_20_priority;
  wire       [4:0]    targets_0_requests_20_id;
  wire                targets_0_requests_20_valid;
  wire       [1:0]    targets_0_requests_21_priority;
  wire       [4:0]    targets_0_requests_21_id;
  wire                targets_0_requests_21_valid;
  wire       [1:0]    targets_0_requests_22_priority;
  wire       [4:0]    targets_0_requests_22_id;
  wire                targets_0_requests_22_valid;
  wire       [1:0]    targets_0_requests_23_priority;
  wire       [4:0]    targets_0_requests_23_id;
  wire                targets_0_requests_23_valid;
  wire       [1:0]    targets_0_requests_24_priority;
  wire       [4:0]    targets_0_requests_24_id;
  wire                targets_0_requests_24_valid;
  wire       [1:0]    targets_0_requests_25_priority;
  wire       [4:0]    targets_0_requests_25_id;
  wire                targets_0_requests_25_valid;
  wire       [1:0]    targets_0_requests_26_priority;
  wire       [4:0]    targets_0_requests_26_id;
  wire                targets_0_requests_26_valid;
  wire       [1:0]    targets_0_requests_27_priority;
  wire       [4:0]    targets_0_requests_27_id;
  wire                targets_0_requests_27_valid;
  wire       [1:0]    targets_0_requests_28_priority;
  wire       [4:0]    targets_0_requests_28_id;
  wire                targets_0_requests_28_valid;
  wire       [1:0]    targets_0_requests_29_priority;
  wire       [4:0]    targets_0_requests_29_id;
  wire                targets_0_requests_29_valid;
  wire       [1:0]    targets_0_requests_30_priority;
  wire       [4:0]    targets_0_requests_30_id;
  wire                targets_0_requests_30_valid;
  wire       [1:0]    targets_0_requests_31_priority;
  wire       [4:0]    targets_0_requests_31_id;
  wire                targets_0_requests_31_valid;
  wire                _zz_targets_0_bestRequest_id;
  wire       [1:0]    _zz_targets_0_bestRequest_id_1;
  wire                _zz_targets_0_bestRequest_id_2;
  wire                _zz_targets_0_bestRequest_id_3;
  wire       [1:0]    _zz_targets_0_bestRequest_id_4;
  wire                _zz_targets_0_bestRequest_id_5;
  wire                _zz_targets_0_bestRequest_id_6;
  wire       [1:0]    _zz_targets_0_bestRequest_id_7;
  wire                _zz_targets_0_bestRequest_id_8;
  wire                _zz_targets_0_bestRequest_id_9;
  wire       [1:0]    _zz_targets_0_bestRequest_id_10;
  wire                _zz_targets_0_bestRequest_id_11;
  wire                _zz_targets_0_bestRequest_id_12;
  wire       [1:0]    _zz_targets_0_bestRequest_id_13;
  wire                _zz_targets_0_bestRequest_id_14;
  wire                _zz_targets_0_bestRequest_id_15;
  wire       [1:0]    _zz_targets_0_bestRequest_id_16;
  wire                _zz_targets_0_bestRequest_id_17;
  wire                _zz_targets_0_bestRequest_id_18;
  wire       [1:0]    _zz_targets_0_bestRequest_id_19;
  wire                _zz_targets_0_bestRequest_id_20;
  wire                _zz_targets_0_bestRequest_id_21;
  wire       [1:0]    _zz_targets_0_bestRequest_id_22;
  wire                _zz_targets_0_bestRequest_id_23;
  wire                _zz_targets_0_bestRequest_id_24;
  wire       [1:0]    _zz_targets_0_bestRequest_id_25;
  wire                _zz_targets_0_bestRequest_id_26;
  wire                _zz_targets_0_bestRequest_id_27;
  wire       [1:0]    _zz_targets_0_bestRequest_id_28;
  wire                _zz_targets_0_bestRequest_id_29;
  wire                _zz_targets_0_bestRequest_id_30;
  wire       [1:0]    _zz_targets_0_bestRequest_id_31;
  wire                _zz_targets_0_bestRequest_id_32;
  wire                _zz_targets_0_bestRequest_id_33;
  wire       [1:0]    _zz_targets_0_bestRequest_id_34;
  wire                _zz_targets_0_bestRequest_id_35;
  wire                _zz_targets_0_bestRequest_id_36;
  wire       [1:0]    _zz_targets_0_bestRequest_id_37;
  wire                _zz_targets_0_bestRequest_id_38;
  wire                _zz_targets_0_bestRequest_id_39;
  wire       [1:0]    _zz_targets_0_bestRequest_id_40;
  wire                _zz_targets_0_bestRequest_id_41;
  wire                _zz_targets_0_bestRequest_id_42;
  wire       [1:0]    _zz_targets_0_bestRequest_id_43;
  wire                _zz_targets_0_bestRequest_id_44;
  wire                _zz_targets_0_bestRequest_id_45;
  wire       [1:0]    _zz_targets_0_bestRequest_id_46;
  wire                _zz_targets_0_bestRequest_id_47;
  wire                _zz_targets_0_bestRequest_id_48;
  wire       [1:0]    _zz_targets_0_bestRequest_id_49;
  wire                _zz_targets_0_bestRequest_id_50;
  wire                _zz_targets_0_bestRequest_id_51;
  wire       [1:0]    _zz_targets_0_bestRequest_id_52;
  wire                _zz_targets_0_bestRequest_id_53;
  wire                _zz_targets_0_bestRequest_id_54;
  wire       [1:0]    _zz_targets_0_bestRequest_id_55;
  wire                _zz_targets_0_bestRequest_id_56;
  wire                _zz_targets_0_bestRequest_id_57;
  wire       [1:0]    _zz_targets_0_bestRequest_id_58;
  wire                _zz_targets_0_bestRequest_id_59;
  wire                _zz_targets_0_bestRequest_id_60;
  wire       [1:0]    _zz_targets_0_bestRequest_id_61;
  wire                _zz_targets_0_bestRequest_id_62;
  wire                _zz_targets_0_bestRequest_id_63;
  wire       [1:0]    _zz_targets_0_bestRequest_id_64;
  wire                _zz_targets_0_bestRequest_id_65;
  wire                _zz_targets_0_bestRequest_id_66;
  wire       [1:0]    _zz_targets_0_bestRequest_id_67;
  wire                _zz_targets_0_bestRequest_id_68;
  wire                _zz_targets_0_bestRequest_id_69;
  wire       [1:0]    _zz_targets_0_bestRequest_id_70;
  wire                _zz_targets_0_bestRequest_id_71;
  wire                _zz_targets_0_bestRequest_id_72;
  wire       [1:0]    _zz_targets_0_bestRequest_priority;
  wire                _zz_targets_0_bestRequest_id_73;
  wire                _zz_targets_0_bestRequest_id_74;
  wire       [1:0]    _zz_targets_0_bestRequest_priority_1;
  wire                _zz_targets_0_bestRequest_id_75;
  wire                _zz_targets_0_bestRequest_id_76;
  wire       [1:0]    _zz_targets_0_bestRequest_priority_2;
  wire                _zz_targets_0_bestRequest_id_77;
  wire                _zz_targets_0_bestRequest_id_78;
  wire       [1:0]    _zz_targets_0_bestRequest_priority_3;
  wire                _zz_targets_0_bestRequest_id_79;
  wire                _zz_targets_0_bestRequest_id_80;
  wire       [1:0]    _zz_targets_0_bestRequest_priority_4;
  wire                _zz_targets_0_bestRequest_valid;
  wire                _zz_targets_0_bestRequest_id_81;
  wire       [1:0]    _zz_targets_0_bestRequest_priority_5;
  wire                _zz_targets_0_bestRequest_valid_1;
  wire                _zz_targets_0_bestRequest_priority_6;
  reg        [1:0]    targets_0_bestRequest_priority;
  reg        [4:0]    targets_0_bestRequest_id;
  reg                 targets_0_bestRequest_valid;
  wire                targets_0_iep;
  wire       [4:0]    targets_0_claim;
  wire                targets_1_ie_0;
  wire                targets_1_ie_1;
  wire                targets_1_ie_2;
  wire                targets_1_ie_3;
  wire                targets_1_ie_4;
  wire                targets_1_ie_5;
  wire                targets_1_ie_6;
  wire                targets_1_ie_7;
  wire                targets_1_ie_8;
  wire                targets_1_ie_9;
  wire                targets_1_ie_10;
  wire                targets_1_ie_11;
  wire                targets_1_ie_12;
  wire                targets_1_ie_13;
  wire                targets_1_ie_14;
  wire                targets_1_ie_15;
  wire                targets_1_ie_16;
  wire                targets_1_ie_17;
  wire                targets_1_ie_18;
  wire                targets_1_ie_19;
  wire                targets_1_ie_20;
  wire                targets_1_ie_21;
  wire                targets_1_ie_22;
  wire                targets_1_ie_23;
  wire                targets_1_ie_24;
  wire                targets_1_ie_25;
  wire                targets_1_ie_26;
  wire                targets_1_ie_27;
  wire                targets_1_ie_28;
  wire                targets_1_ie_29;
  wire                targets_1_ie_30;
  wire       [1:0]    targets_1_threshold;
  wire       [1:0]    targets_1_requests_0_priority;
  wire       [4:0]    targets_1_requests_0_id;
  wire                targets_1_requests_0_valid;
  wire       [1:0]    targets_1_requests_1_priority;
  wire       [4:0]    targets_1_requests_1_id;
  wire                targets_1_requests_1_valid;
  wire       [1:0]    targets_1_requests_2_priority;
  wire       [4:0]    targets_1_requests_2_id;
  wire                targets_1_requests_2_valid;
  wire       [1:0]    targets_1_requests_3_priority;
  wire       [4:0]    targets_1_requests_3_id;
  wire                targets_1_requests_3_valid;
  wire       [1:0]    targets_1_requests_4_priority;
  wire       [4:0]    targets_1_requests_4_id;
  wire                targets_1_requests_4_valid;
  wire       [1:0]    targets_1_requests_5_priority;
  wire       [4:0]    targets_1_requests_5_id;
  wire                targets_1_requests_5_valid;
  wire       [1:0]    targets_1_requests_6_priority;
  wire       [4:0]    targets_1_requests_6_id;
  wire                targets_1_requests_6_valid;
  wire       [1:0]    targets_1_requests_7_priority;
  wire       [4:0]    targets_1_requests_7_id;
  wire                targets_1_requests_7_valid;
  wire       [1:0]    targets_1_requests_8_priority;
  wire       [4:0]    targets_1_requests_8_id;
  wire                targets_1_requests_8_valid;
  wire       [1:0]    targets_1_requests_9_priority;
  wire       [4:0]    targets_1_requests_9_id;
  wire                targets_1_requests_9_valid;
  wire       [1:0]    targets_1_requests_10_priority;
  wire       [4:0]    targets_1_requests_10_id;
  wire                targets_1_requests_10_valid;
  wire       [1:0]    targets_1_requests_11_priority;
  wire       [4:0]    targets_1_requests_11_id;
  wire                targets_1_requests_11_valid;
  wire       [1:0]    targets_1_requests_12_priority;
  wire       [4:0]    targets_1_requests_12_id;
  wire                targets_1_requests_12_valid;
  wire       [1:0]    targets_1_requests_13_priority;
  wire       [4:0]    targets_1_requests_13_id;
  wire                targets_1_requests_13_valid;
  wire       [1:0]    targets_1_requests_14_priority;
  wire       [4:0]    targets_1_requests_14_id;
  wire                targets_1_requests_14_valid;
  wire       [1:0]    targets_1_requests_15_priority;
  wire       [4:0]    targets_1_requests_15_id;
  wire                targets_1_requests_15_valid;
  wire       [1:0]    targets_1_requests_16_priority;
  wire       [4:0]    targets_1_requests_16_id;
  wire                targets_1_requests_16_valid;
  wire       [1:0]    targets_1_requests_17_priority;
  wire       [4:0]    targets_1_requests_17_id;
  wire                targets_1_requests_17_valid;
  wire       [1:0]    targets_1_requests_18_priority;
  wire       [4:0]    targets_1_requests_18_id;
  wire                targets_1_requests_18_valid;
  wire       [1:0]    targets_1_requests_19_priority;
  wire       [4:0]    targets_1_requests_19_id;
  wire                targets_1_requests_19_valid;
  wire       [1:0]    targets_1_requests_20_priority;
  wire       [4:0]    targets_1_requests_20_id;
  wire                targets_1_requests_20_valid;
  wire       [1:0]    targets_1_requests_21_priority;
  wire       [4:0]    targets_1_requests_21_id;
  wire                targets_1_requests_21_valid;
  wire       [1:0]    targets_1_requests_22_priority;
  wire       [4:0]    targets_1_requests_22_id;
  wire                targets_1_requests_22_valid;
  wire       [1:0]    targets_1_requests_23_priority;
  wire       [4:0]    targets_1_requests_23_id;
  wire                targets_1_requests_23_valid;
  wire       [1:0]    targets_1_requests_24_priority;
  wire       [4:0]    targets_1_requests_24_id;
  wire                targets_1_requests_24_valid;
  wire       [1:0]    targets_1_requests_25_priority;
  wire       [4:0]    targets_1_requests_25_id;
  wire                targets_1_requests_25_valid;
  wire       [1:0]    targets_1_requests_26_priority;
  wire       [4:0]    targets_1_requests_26_id;
  wire                targets_1_requests_26_valid;
  wire       [1:0]    targets_1_requests_27_priority;
  wire       [4:0]    targets_1_requests_27_id;
  wire                targets_1_requests_27_valid;
  wire       [1:0]    targets_1_requests_28_priority;
  wire       [4:0]    targets_1_requests_28_id;
  wire                targets_1_requests_28_valid;
  wire       [1:0]    targets_1_requests_29_priority;
  wire       [4:0]    targets_1_requests_29_id;
  wire                targets_1_requests_29_valid;
  wire       [1:0]    targets_1_requests_30_priority;
  wire       [4:0]    targets_1_requests_30_id;
  wire                targets_1_requests_30_valid;
  wire       [1:0]    targets_1_requests_31_priority;
  wire       [4:0]    targets_1_requests_31_id;
  wire                targets_1_requests_31_valid;
  wire                _zz_targets_1_bestRequest_id;
  wire       [1:0]    _zz_targets_1_bestRequest_id_1;
  wire                _zz_targets_1_bestRequest_id_2;
  wire                _zz_targets_1_bestRequest_id_3;
  wire       [1:0]    _zz_targets_1_bestRequest_id_4;
  wire                _zz_targets_1_bestRequest_id_5;
  wire                _zz_targets_1_bestRequest_id_6;
  wire       [1:0]    _zz_targets_1_bestRequest_id_7;
  wire                _zz_targets_1_bestRequest_id_8;
  wire                _zz_targets_1_bestRequest_id_9;
  wire       [1:0]    _zz_targets_1_bestRequest_id_10;
  wire                _zz_targets_1_bestRequest_id_11;
  wire                _zz_targets_1_bestRequest_id_12;
  wire       [1:0]    _zz_targets_1_bestRequest_id_13;
  wire                _zz_targets_1_bestRequest_id_14;
  wire                _zz_targets_1_bestRequest_id_15;
  wire       [1:0]    _zz_targets_1_bestRequest_id_16;
  wire                _zz_targets_1_bestRequest_id_17;
  wire                _zz_targets_1_bestRequest_id_18;
  wire       [1:0]    _zz_targets_1_bestRequest_id_19;
  wire                _zz_targets_1_bestRequest_id_20;
  wire                _zz_targets_1_bestRequest_id_21;
  wire       [1:0]    _zz_targets_1_bestRequest_id_22;
  wire                _zz_targets_1_bestRequest_id_23;
  wire                _zz_targets_1_bestRequest_id_24;
  wire       [1:0]    _zz_targets_1_bestRequest_id_25;
  wire                _zz_targets_1_bestRequest_id_26;
  wire                _zz_targets_1_bestRequest_id_27;
  wire       [1:0]    _zz_targets_1_bestRequest_id_28;
  wire                _zz_targets_1_bestRequest_id_29;
  wire                _zz_targets_1_bestRequest_id_30;
  wire       [1:0]    _zz_targets_1_bestRequest_id_31;
  wire                _zz_targets_1_bestRequest_id_32;
  wire                _zz_targets_1_bestRequest_id_33;
  wire       [1:0]    _zz_targets_1_bestRequest_id_34;
  wire                _zz_targets_1_bestRequest_id_35;
  wire                _zz_targets_1_bestRequest_id_36;
  wire       [1:0]    _zz_targets_1_bestRequest_id_37;
  wire                _zz_targets_1_bestRequest_id_38;
  wire                _zz_targets_1_bestRequest_id_39;
  wire       [1:0]    _zz_targets_1_bestRequest_id_40;
  wire                _zz_targets_1_bestRequest_id_41;
  wire                _zz_targets_1_bestRequest_id_42;
  wire       [1:0]    _zz_targets_1_bestRequest_id_43;
  wire                _zz_targets_1_bestRequest_id_44;
  wire                _zz_targets_1_bestRequest_id_45;
  wire       [1:0]    _zz_targets_1_bestRequest_id_46;
  wire                _zz_targets_1_bestRequest_id_47;
  wire                _zz_targets_1_bestRequest_id_48;
  wire       [1:0]    _zz_targets_1_bestRequest_id_49;
  wire                _zz_targets_1_bestRequest_id_50;
  wire                _zz_targets_1_bestRequest_id_51;
  wire       [1:0]    _zz_targets_1_bestRequest_id_52;
  wire                _zz_targets_1_bestRequest_id_53;
  wire                _zz_targets_1_bestRequest_id_54;
  wire       [1:0]    _zz_targets_1_bestRequest_id_55;
  wire                _zz_targets_1_bestRequest_id_56;
  wire                _zz_targets_1_bestRequest_id_57;
  wire       [1:0]    _zz_targets_1_bestRequest_id_58;
  wire                _zz_targets_1_bestRequest_id_59;
  wire                _zz_targets_1_bestRequest_id_60;
  wire       [1:0]    _zz_targets_1_bestRequest_id_61;
  wire                _zz_targets_1_bestRequest_id_62;
  wire                _zz_targets_1_bestRequest_id_63;
  wire       [1:0]    _zz_targets_1_bestRequest_id_64;
  wire                _zz_targets_1_bestRequest_id_65;
  wire                _zz_targets_1_bestRequest_id_66;
  wire       [1:0]    _zz_targets_1_bestRequest_id_67;
  wire                _zz_targets_1_bestRequest_id_68;
  wire                _zz_targets_1_bestRequest_id_69;
  wire       [1:0]    _zz_targets_1_bestRequest_id_70;
  wire                _zz_targets_1_bestRequest_id_71;
  wire                _zz_targets_1_bestRequest_id_72;
  wire       [1:0]    _zz_targets_1_bestRequest_priority;
  wire                _zz_targets_1_bestRequest_id_73;
  wire                _zz_targets_1_bestRequest_id_74;
  wire       [1:0]    _zz_targets_1_bestRequest_priority_1;
  wire                _zz_targets_1_bestRequest_id_75;
  wire                _zz_targets_1_bestRequest_id_76;
  wire       [1:0]    _zz_targets_1_bestRequest_priority_2;
  wire                _zz_targets_1_bestRequest_id_77;
  wire                _zz_targets_1_bestRequest_id_78;
  wire       [1:0]    _zz_targets_1_bestRequest_priority_3;
  wire                _zz_targets_1_bestRequest_id_79;
  wire                _zz_targets_1_bestRequest_id_80;
  wire       [1:0]    _zz_targets_1_bestRequest_priority_4;
  wire                _zz_targets_1_bestRequest_valid;
  wire                _zz_targets_1_bestRequest_id_81;
  wire       [1:0]    _zz_targets_1_bestRequest_priority_5;
  wire                _zz_targets_1_bestRequest_valid_1;
  wire                _zz_targets_1_bestRequest_priority_6;
  reg        [1:0]    targets_1_bestRequest_priority;
  reg        [4:0]    targets_1_bestRequest_id;
  reg                 targets_1_bestRequest_valid;
  wire                targets_1_iep;
  wire       [4:0]    targets_1_claim;
  wire                bus_readErrorFlag;
  wire                bus_writeErrorFlag;
  reg                 bus_readHaltRequest;
  wire                bus_writeHaltRequest;
  wire                bus_writeJoinEvent_valid;
  wire                bus_writeJoinEvent_ready;
  wire                bus_writeOccur;
  reg        [1:0]    bus_writeRsp_resp;
  wire                bus_writeJoinEvent_translated_valid;
  wire                bus_writeJoinEvent_translated_ready;
  wire       [1:0]    bus_writeJoinEvent_translated_payload_resp;
  wire                _zz_bus_writeJoinEvent_translated_ready;
  wire                bus_writeJoinEvent_translated_haltWhen_valid;
  wire                bus_writeJoinEvent_translated_haltWhen_ready;
  wire       [1:0]    bus_writeJoinEvent_translated_haltWhen_payload_resp;
  wire                bus_writeJoinEvent_translated_haltWhen_halfPipe_valid;
  wire                bus_writeJoinEvent_translated_haltWhen_halfPipe_ready;
  wire       [1:0]    bus_writeJoinEvent_translated_haltWhen_halfPipe_payload_resp;
  reg                 bus_writeJoinEvent_translated_haltWhen_rValid;
  wire                bus_writeJoinEvent_translated_haltWhen_halfPipe_fire;
  reg        [1:0]    bus_writeJoinEvent_translated_haltWhen_rData_resp;
  wire                bus_readDataStage_valid;
  wire                bus_readDataStage_ready;
  wire       [21:0]   bus_readDataStage_payload_addr;
  wire       [2:0]    bus_readDataStage_payload_prot;
  reg                 io_bus_ar_rValid;
  wire                bus_readDataStage_fire;
  reg        [21:0]   io_bus_ar_rData_addr;
  reg        [2:0]    io_bus_ar_rData_prot;
  reg        [31:0]   bus_readRsp_data;
  reg        [1:0]    bus_readRsp_resp;
  wire                _zz_bus_readDataStage_ready;
  wire                bus_readDataStage_haltWhen_valid;
  wire                bus_readDataStage_haltWhen_ready;
  wire       [21:0]   bus_readDataStage_haltWhen_payload_addr;
  wire       [2:0]    bus_readDataStage_haltWhen_payload_prot;
  wire                bus_readDataStage_haltWhen_translated_valid;
  wire                bus_readDataStage_haltWhen_translated_ready;
  wire       [31:0]   bus_readDataStage_haltWhen_translated_payload_data;
  wire       [1:0]    bus_readDataStage_haltWhen_translated_payload_resp;
  wire       [21:0]   bus_readAddressMasked;
  wire       [21:0]   bus_writeAddressMasked;
  wire                bus_readOccur;
  reg        [1:0]    gateways_0_priority_driver;
  reg        [1:0]    gateways_1_priority_driver;
  reg        [1:0]    gateways_2_priority_driver;
  reg        [1:0]    gateways_3_priority_driver;
  reg        [1:0]    gateways_4_priority_driver;
  reg        [1:0]    gateways_5_priority_driver;
  reg        [1:0]    gateways_6_priority_driver;
  reg        [1:0]    gateways_7_priority_driver;
  reg        [1:0]    gateways_8_priority_driver;
  reg        [1:0]    gateways_9_priority_driver;
  reg        [1:0]    gateways_10_priority_driver;
  reg        [1:0]    gateways_11_priority_driver;
  reg        [1:0]    gateways_12_priority_driver;
  reg        [1:0]    gateways_13_priority_driver;
  reg        [1:0]    gateways_14_priority_driver;
  reg        [1:0]    gateways_15_priority_driver;
  reg        [1:0]    gateways_16_priority_driver;
  reg        [1:0]    gateways_17_priority_driver;
  reg        [1:0]    gateways_18_priority_driver;
  reg        [1:0]    gateways_19_priority_driver;
  reg        [1:0]    gateways_20_priority_driver;
  reg        [1:0]    gateways_21_priority_driver;
  reg        [1:0]    gateways_22_priority_driver;
  reg        [1:0]    gateways_23_priority_driver;
  reg        [1:0]    gateways_24_priority_driver;
  reg        [1:0]    gateways_25_priority_driver;
  reg        [1:0]    gateways_26_priority_driver;
  reg        [1:0]    gateways_27_priority_driver;
  reg        [1:0]    gateways_28_priority_driver;
  reg        [1:0]    gateways_29_priority_driver;
  reg        [1:0]    gateways_30_priority_driver;
  reg                 mapping_claim_valid;
  reg        [4:0]    mapping_claim_payload;
  reg                 mapping_completion_valid;
  reg        [4:0]    mapping_completion_payload;
  reg                 mapping_coherencyStall_willIncrement;
  wire                mapping_coherencyStall_willClear;
  reg        [0:0]    mapping_coherencyStall_valueNext;
  reg        [0:0]    mapping_coherencyStall_value;
  wire                mapping_coherencyStall_willOverflowIfInc;
  wire                mapping_coherencyStall_willOverflow;
  wire                when_PlicMapper_l122;
  reg        [1:0]    targets_0_threshold_driver;
  reg                 mapping_targetMapping_0_targetCompletion_valid;
  wire       [4:0]    mapping_targetMapping_0_targetCompletion_payload;
  reg                 targets_0_ie_0_driver;
  reg                 targets_0_ie_1_driver;
  reg                 targets_0_ie_2_driver;
  reg                 targets_0_ie_3_driver;
  reg                 targets_0_ie_4_driver;
  reg                 targets_0_ie_5_driver;
  reg                 targets_0_ie_6_driver;
  reg                 targets_0_ie_7_driver;
  reg                 targets_0_ie_8_driver;
  reg                 targets_0_ie_9_driver;
  reg                 targets_0_ie_10_driver;
  reg                 targets_0_ie_11_driver;
  reg                 targets_0_ie_12_driver;
  reg                 targets_0_ie_13_driver;
  reg                 targets_0_ie_14_driver;
  reg                 targets_0_ie_15_driver;
  reg                 targets_0_ie_16_driver;
  reg                 targets_0_ie_17_driver;
  reg                 targets_0_ie_18_driver;
  reg                 targets_0_ie_19_driver;
  reg                 targets_0_ie_20_driver;
  reg                 targets_0_ie_21_driver;
  reg                 targets_0_ie_22_driver;
  reg                 targets_0_ie_23_driver;
  reg                 targets_0_ie_24_driver;
  reg                 targets_0_ie_25_driver;
  reg                 targets_0_ie_26_driver;
  reg                 targets_0_ie_27_driver;
  reg                 targets_0_ie_28_driver;
  reg                 targets_0_ie_29_driver;
  reg                 targets_0_ie_30_driver;
  reg        [1:0]    targets_1_threshold_driver;
  reg                 mapping_targetMapping_1_targetCompletion_valid;
  wire       [4:0]    mapping_targetMapping_1_targetCompletion_payload;
  reg                 targets_1_ie_0_driver;
  reg                 targets_1_ie_1_driver;
  reg                 targets_1_ie_2_driver;
  reg                 targets_1_ie_3_driver;
  reg                 targets_1_ie_4_driver;
  reg                 targets_1_ie_5_driver;
  reg                 targets_1_ie_6_driver;
  reg                 targets_1_ie_7_driver;
  reg                 targets_1_ie_8_driver;
  reg                 targets_1_ie_9_driver;
  reg                 targets_1_ie_10_driver;
  reg                 targets_1_ie_11_driver;
  reg                 targets_1_ie_12_driver;
  reg                 targets_1_ie_13_driver;
  reg                 targets_1_ie_14_driver;
  reg                 targets_1_ie_15_driver;
  reg                 targets_1_ie_16_driver;
  reg                 targets_1_ie_17_driver;
  reg                 targets_1_ie_18_driver;
  reg                 targets_1_ie_19_driver;
  reg                 targets_1_ie_20_driver;
  reg                 targets_1_ie_21_driver;
  reg                 targets_1_ie_22_driver;
  reg                 targets_1_ie_23_driver;
  reg                 targets_1_ie_24_driver;
  reg                 targets_1_ie_25_driver;
  reg                 targets_1_ie_26_driver;
  reg                 targets_1_ie_27_driver;
  reg                 targets_1_ie_28_driver;
  reg                 targets_1_ie_29_driver;
  reg                 targets_1_ie_30_driver;
  wire                when_AxiLite4SlaveFactory_l68;
  wire                when_AxiLite4SlaveFactory_l86;

  assign _zz_targets_0_bestRequest_id_82 = (_zz_targets_0_bestRequest_id ? targets_0_requests_0_id : targets_0_requests_1_id);
  assign _zz_targets_0_bestRequest_id_83 = (_zz_targets_0_bestRequest_id_3 ? targets_0_requests_2_id : targets_0_requests_3_id);
  assign _zz_targets_0_bestRequest_id_84 = (_zz_targets_0_bestRequest_id_6 ? targets_0_requests_4_id : targets_0_requests_5_id);
  assign _zz_targets_0_bestRequest_id_85 = (_zz_targets_0_bestRequest_id_9 ? targets_0_requests_6_id : targets_0_requests_7_id);
  assign _zz_targets_0_bestRequest_id_86 = (_zz_targets_0_bestRequest_id_12 ? targets_0_requests_8_id : targets_0_requests_9_id);
  assign _zz_targets_0_bestRequest_id_87 = (_zz_targets_0_bestRequest_id_15 ? targets_0_requests_10_id : targets_0_requests_11_id);
  assign _zz_targets_0_bestRequest_id_88 = (_zz_targets_0_bestRequest_id_18 ? targets_0_requests_12_id : targets_0_requests_13_id);
  assign _zz_targets_0_bestRequest_id_89 = (_zz_targets_0_bestRequest_id_21 ? targets_0_requests_14_id : targets_0_requests_15_id);
  assign _zz_targets_0_bestRequest_id_90 = (_zz_targets_0_bestRequest_id_24 ? targets_0_requests_16_id : targets_0_requests_17_id);
  assign _zz_targets_0_bestRequest_id_91 = (_zz_targets_0_bestRequest_id_27 ? targets_0_requests_18_id : targets_0_requests_19_id);
  assign _zz_targets_0_bestRequest_id_92 = (_zz_targets_0_bestRequest_id_30 ? targets_0_requests_20_id : targets_0_requests_21_id);
  assign _zz_targets_0_bestRequest_id_93 = (_zz_targets_0_bestRequest_id_33 ? targets_0_requests_22_id : targets_0_requests_23_id);
  assign _zz_targets_0_bestRequest_id_94 = (_zz_targets_0_bestRequest_id_36 ? targets_0_requests_24_id : targets_0_requests_25_id);
  assign _zz_targets_0_bestRequest_id_95 = (_zz_targets_0_bestRequest_id_39 ? targets_0_requests_26_id : targets_0_requests_27_id);
  assign _zz_targets_0_bestRequest_id_96 = (_zz_targets_0_bestRequest_id_42 ? targets_0_requests_28_id : targets_0_requests_29_id);
  assign _zz_targets_0_bestRequest_id_97 = (_zz_targets_0_bestRequest_id_45 ? targets_0_requests_30_id : targets_0_requests_31_id);
  assign _zz_targets_1_bestRequest_id_82 = (_zz_targets_1_bestRequest_id ? targets_1_requests_0_id : targets_1_requests_1_id);
  assign _zz_targets_1_bestRequest_id_83 = (_zz_targets_1_bestRequest_id_3 ? targets_1_requests_2_id : targets_1_requests_3_id);
  assign _zz_targets_1_bestRequest_id_84 = (_zz_targets_1_bestRequest_id_6 ? targets_1_requests_4_id : targets_1_requests_5_id);
  assign _zz_targets_1_bestRequest_id_85 = (_zz_targets_1_bestRequest_id_9 ? targets_1_requests_6_id : targets_1_requests_7_id);
  assign _zz_targets_1_bestRequest_id_86 = (_zz_targets_1_bestRequest_id_12 ? targets_1_requests_8_id : targets_1_requests_9_id);
  assign _zz_targets_1_bestRequest_id_87 = (_zz_targets_1_bestRequest_id_15 ? targets_1_requests_10_id : targets_1_requests_11_id);
  assign _zz_targets_1_bestRequest_id_88 = (_zz_targets_1_bestRequest_id_18 ? targets_1_requests_12_id : targets_1_requests_13_id);
  assign _zz_targets_1_bestRequest_id_89 = (_zz_targets_1_bestRequest_id_21 ? targets_1_requests_14_id : targets_1_requests_15_id);
  assign _zz_targets_1_bestRequest_id_90 = (_zz_targets_1_bestRequest_id_24 ? targets_1_requests_16_id : targets_1_requests_17_id);
  assign _zz_targets_1_bestRequest_id_91 = (_zz_targets_1_bestRequest_id_27 ? targets_1_requests_18_id : targets_1_requests_19_id);
  assign _zz_targets_1_bestRequest_id_92 = (_zz_targets_1_bestRequest_id_30 ? targets_1_requests_20_id : targets_1_requests_21_id);
  assign _zz_targets_1_bestRequest_id_93 = (_zz_targets_1_bestRequest_id_33 ? targets_1_requests_22_id : targets_1_requests_23_id);
  assign _zz_targets_1_bestRequest_id_94 = (_zz_targets_1_bestRequest_id_36 ? targets_1_requests_24_id : targets_1_requests_25_id);
  assign _zz_targets_1_bestRequest_id_95 = (_zz_targets_1_bestRequest_id_39 ? targets_1_requests_26_id : targets_1_requests_27_id);
  assign _zz_targets_1_bestRequest_id_96 = (_zz_targets_1_bestRequest_id_42 ? targets_1_requests_28_id : targets_1_requests_29_id);
  assign _zz_targets_1_bestRequest_id_97 = (_zz_targets_1_bestRequest_id_45 ? targets_1_requests_30_id : targets_1_requests_31_id);
  assign _zz_gateways_0_ip = io_sources[0];
  assign _zz_gateways_1_ip = io_sources[1];
  assign _zz_gateways_2_ip = io_sources[2];
  assign _zz_gateways_3_ip = io_sources[3];
  assign _zz_gateways_4_ip = io_sources[4];
  assign _zz_gateways_5_ip = io_sources[5];
  assign _zz_gateways_6_ip = io_sources[6];
  assign _zz_gateways_7_ip = io_sources[7];
  assign _zz_gateways_8_ip = io_sources[8];
  assign _zz_gateways_9_ip = io_sources[9];
  assign _zz_gateways_10_ip = io_sources[10];
  assign _zz_gateways_11_ip = io_sources[11];
  assign _zz_gateways_12_ip = io_sources[12];
  assign _zz_gateways_13_ip = io_sources[13];
  assign _zz_gateways_14_ip = io_sources[14];
  assign _zz_gateways_15_ip = io_sources[15];
  assign _zz_gateways_16_ip = io_sources[16];
  assign _zz_gateways_17_ip = io_sources[17];
  assign _zz_gateways_18_ip = io_sources[18];
  assign _zz_gateways_19_ip = io_sources[19];
  assign _zz_gateways_20_ip = io_sources[20];
  assign _zz_gateways_21_ip = io_sources[21];
  assign _zz_gateways_22_ip = io_sources[22];
  assign _zz_gateways_23_ip = io_sources[23];
  assign _zz_gateways_24_ip = io_sources[24];
  assign _zz_gateways_25_ip = io_sources[25];
  assign _zz_gateways_26_ip = io_sources[26];
  assign _zz_gateways_27_ip = io_sources[27];
  assign _zz_gateways_28_ip = io_sources[28];
  assign _zz_gateways_29_ip = io_sources[29];
  assign _zz_gateways_30_ip = io_sources[30];
  assign when_PlicGateway_l21 = (! gateways_0_waitCompletion);
  assign when_PlicGateway_l21_1 = (! gateways_1_waitCompletion);
  assign when_PlicGateway_l21_2 = (! gateways_2_waitCompletion);
  assign when_PlicGateway_l21_3 = (! gateways_3_waitCompletion);
  assign when_PlicGateway_l21_4 = (! gateways_4_waitCompletion);
  assign when_PlicGateway_l21_5 = (! gateways_5_waitCompletion);
  assign when_PlicGateway_l21_6 = (! gateways_6_waitCompletion);
  assign when_PlicGateway_l21_7 = (! gateways_7_waitCompletion);
  assign when_PlicGateway_l21_8 = (! gateways_8_waitCompletion);
  assign when_PlicGateway_l21_9 = (! gateways_9_waitCompletion);
  assign when_PlicGateway_l21_10 = (! gateways_10_waitCompletion);
  assign when_PlicGateway_l21_11 = (! gateways_11_waitCompletion);
  assign when_PlicGateway_l21_12 = (! gateways_12_waitCompletion);
  assign when_PlicGateway_l21_13 = (! gateways_13_waitCompletion);
  assign when_PlicGateway_l21_14 = (! gateways_14_waitCompletion);
  assign when_PlicGateway_l21_15 = (! gateways_15_waitCompletion);
  assign when_PlicGateway_l21_16 = (! gateways_16_waitCompletion);
  assign when_PlicGateway_l21_17 = (! gateways_17_waitCompletion);
  assign when_PlicGateway_l21_18 = (! gateways_18_waitCompletion);
  assign when_PlicGateway_l21_19 = (! gateways_19_waitCompletion);
  assign when_PlicGateway_l21_20 = (! gateways_20_waitCompletion);
  assign when_PlicGateway_l21_21 = (! gateways_21_waitCompletion);
  assign when_PlicGateway_l21_22 = (! gateways_22_waitCompletion);
  assign when_PlicGateway_l21_23 = (! gateways_23_waitCompletion);
  assign when_PlicGateway_l21_24 = (! gateways_24_waitCompletion);
  assign when_PlicGateway_l21_25 = (! gateways_25_waitCompletion);
  assign when_PlicGateway_l21_26 = (! gateways_26_waitCompletion);
  assign when_PlicGateway_l21_27 = (! gateways_27_waitCompletion);
  assign when_PlicGateway_l21_28 = (! gateways_28_waitCompletion);
  assign when_PlicGateway_l21_29 = (! gateways_29_waitCompletion);
  assign when_PlicGateway_l21_30 = (! gateways_30_waitCompletion);
  assign targets_0_requests_0_priority = 2'b00;
  assign targets_0_requests_0_id = 5'h0;
  assign targets_0_requests_0_valid = 1'b1;
  assign targets_0_requests_1_priority = gateways_0_priority;
  assign targets_0_requests_1_id = 5'h01;
  assign targets_0_requests_1_valid = (gateways_0_ip && targets_0_ie_0);
  assign targets_0_requests_2_priority = gateways_1_priority;
  assign targets_0_requests_2_id = 5'h02;
  assign targets_0_requests_2_valid = (gateways_1_ip && targets_0_ie_1);
  assign targets_0_requests_3_priority = gateways_2_priority;
  assign targets_0_requests_3_id = 5'h03;
  assign targets_0_requests_3_valid = (gateways_2_ip && targets_0_ie_2);
  assign targets_0_requests_4_priority = gateways_3_priority;
  assign targets_0_requests_4_id = 5'h04;
  assign targets_0_requests_4_valid = (gateways_3_ip && targets_0_ie_3);
  assign targets_0_requests_5_priority = gateways_4_priority;
  assign targets_0_requests_5_id = 5'h05;
  assign targets_0_requests_5_valid = (gateways_4_ip && targets_0_ie_4);
  assign targets_0_requests_6_priority = gateways_5_priority;
  assign targets_0_requests_6_id = 5'h06;
  assign targets_0_requests_6_valid = (gateways_5_ip && targets_0_ie_5);
  assign targets_0_requests_7_priority = gateways_6_priority;
  assign targets_0_requests_7_id = 5'h07;
  assign targets_0_requests_7_valid = (gateways_6_ip && targets_0_ie_6);
  assign targets_0_requests_8_priority = gateways_7_priority;
  assign targets_0_requests_8_id = 5'h08;
  assign targets_0_requests_8_valid = (gateways_7_ip && targets_0_ie_7);
  assign targets_0_requests_9_priority = gateways_8_priority;
  assign targets_0_requests_9_id = 5'h09;
  assign targets_0_requests_9_valid = (gateways_8_ip && targets_0_ie_8);
  assign targets_0_requests_10_priority = gateways_9_priority;
  assign targets_0_requests_10_id = 5'h0a;
  assign targets_0_requests_10_valid = (gateways_9_ip && targets_0_ie_9);
  assign targets_0_requests_11_priority = gateways_10_priority;
  assign targets_0_requests_11_id = 5'h0b;
  assign targets_0_requests_11_valid = (gateways_10_ip && targets_0_ie_10);
  assign targets_0_requests_12_priority = gateways_11_priority;
  assign targets_0_requests_12_id = 5'h0c;
  assign targets_0_requests_12_valid = (gateways_11_ip && targets_0_ie_11);
  assign targets_0_requests_13_priority = gateways_12_priority;
  assign targets_0_requests_13_id = 5'h0d;
  assign targets_0_requests_13_valid = (gateways_12_ip && targets_0_ie_12);
  assign targets_0_requests_14_priority = gateways_13_priority;
  assign targets_0_requests_14_id = 5'h0e;
  assign targets_0_requests_14_valid = (gateways_13_ip && targets_0_ie_13);
  assign targets_0_requests_15_priority = gateways_14_priority;
  assign targets_0_requests_15_id = 5'h0f;
  assign targets_0_requests_15_valid = (gateways_14_ip && targets_0_ie_14);
  assign targets_0_requests_16_priority = gateways_15_priority;
  assign targets_0_requests_16_id = 5'h10;
  assign targets_0_requests_16_valid = (gateways_15_ip && targets_0_ie_15);
  assign targets_0_requests_17_priority = gateways_16_priority;
  assign targets_0_requests_17_id = 5'h11;
  assign targets_0_requests_17_valid = (gateways_16_ip && targets_0_ie_16);
  assign targets_0_requests_18_priority = gateways_17_priority;
  assign targets_0_requests_18_id = 5'h12;
  assign targets_0_requests_18_valid = (gateways_17_ip && targets_0_ie_17);
  assign targets_0_requests_19_priority = gateways_18_priority;
  assign targets_0_requests_19_id = 5'h13;
  assign targets_0_requests_19_valid = (gateways_18_ip && targets_0_ie_18);
  assign targets_0_requests_20_priority = gateways_19_priority;
  assign targets_0_requests_20_id = 5'h14;
  assign targets_0_requests_20_valid = (gateways_19_ip && targets_0_ie_19);
  assign targets_0_requests_21_priority = gateways_20_priority;
  assign targets_0_requests_21_id = 5'h15;
  assign targets_0_requests_21_valid = (gateways_20_ip && targets_0_ie_20);
  assign targets_0_requests_22_priority = gateways_21_priority;
  assign targets_0_requests_22_id = 5'h16;
  assign targets_0_requests_22_valid = (gateways_21_ip && targets_0_ie_21);
  assign targets_0_requests_23_priority = gateways_22_priority;
  assign targets_0_requests_23_id = 5'h17;
  assign targets_0_requests_23_valid = (gateways_22_ip && targets_0_ie_22);
  assign targets_0_requests_24_priority = gateways_23_priority;
  assign targets_0_requests_24_id = 5'h18;
  assign targets_0_requests_24_valid = (gateways_23_ip && targets_0_ie_23);
  assign targets_0_requests_25_priority = gateways_24_priority;
  assign targets_0_requests_25_id = 5'h19;
  assign targets_0_requests_25_valid = (gateways_24_ip && targets_0_ie_24);
  assign targets_0_requests_26_priority = gateways_25_priority;
  assign targets_0_requests_26_id = 5'h1a;
  assign targets_0_requests_26_valid = (gateways_25_ip && targets_0_ie_25);
  assign targets_0_requests_27_priority = gateways_26_priority;
  assign targets_0_requests_27_id = 5'h1b;
  assign targets_0_requests_27_valid = (gateways_26_ip && targets_0_ie_26);
  assign targets_0_requests_28_priority = gateways_27_priority;
  assign targets_0_requests_28_id = 5'h1c;
  assign targets_0_requests_28_valid = (gateways_27_ip && targets_0_ie_27);
  assign targets_0_requests_29_priority = gateways_28_priority;
  assign targets_0_requests_29_id = 5'h1d;
  assign targets_0_requests_29_valid = (gateways_28_ip && targets_0_ie_28);
  assign targets_0_requests_30_priority = gateways_29_priority;
  assign targets_0_requests_30_id = 5'h1e;
  assign targets_0_requests_30_valid = (gateways_29_ip && targets_0_ie_29);
  assign targets_0_requests_31_priority = gateways_30_priority;
  assign targets_0_requests_31_id = 5'h1f;
  assign targets_0_requests_31_valid = (gateways_30_ip && targets_0_ie_30);
  assign _zz_targets_0_bestRequest_id = ((! targets_0_requests_1_valid) || (targets_0_requests_0_valid && (targets_0_requests_1_priority <= targets_0_requests_0_priority)));
  assign _zz_targets_0_bestRequest_id_1 = (_zz_targets_0_bestRequest_id ? targets_0_requests_0_priority : targets_0_requests_1_priority);
  assign _zz_targets_0_bestRequest_id_2 = (_zz_targets_0_bestRequest_id ? targets_0_requests_0_valid : targets_0_requests_1_valid);
  assign _zz_targets_0_bestRequest_id_3 = ((! targets_0_requests_3_valid) || (targets_0_requests_2_valid && (targets_0_requests_3_priority <= targets_0_requests_2_priority)));
  assign _zz_targets_0_bestRequest_id_4 = (_zz_targets_0_bestRequest_id_3 ? targets_0_requests_2_priority : targets_0_requests_3_priority);
  assign _zz_targets_0_bestRequest_id_5 = (_zz_targets_0_bestRequest_id_3 ? targets_0_requests_2_valid : targets_0_requests_3_valid);
  assign _zz_targets_0_bestRequest_id_6 = ((! targets_0_requests_5_valid) || (targets_0_requests_4_valid && (targets_0_requests_5_priority <= targets_0_requests_4_priority)));
  assign _zz_targets_0_bestRequest_id_7 = (_zz_targets_0_bestRequest_id_6 ? targets_0_requests_4_priority : targets_0_requests_5_priority);
  assign _zz_targets_0_bestRequest_id_8 = (_zz_targets_0_bestRequest_id_6 ? targets_0_requests_4_valid : targets_0_requests_5_valid);
  assign _zz_targets_0_bestRequest_id_9 = ((! targets_0_requests_7_valid) || (targets_0_requests_6_valid && (targets_0_requests_7_priority <= targets_0_requests_6_priority)));
  assign _zz_targets_0_bestRequest_id_10 = (_zz_targets_0_bestRequest_id_9 ? targets_0_requests_6_priority : targets_0_requests_7_priority);
  assign _zz_targets_0_bestRequest_id_11 = (_zz_targets_0_bestRequest_id_9 ? targets_0_requests_6_valid : targets_0_requests_7_valid);
  assign _zz_targets_0_bestRequest_id_12 = ((! targets_0_requests_9_valid) || (targets_0_requests_8_valid && (targets_0_requests_9_priority <= targets_0_requests_8_priority)));
  assign _zz_targets_0_bestRequest_id_13 = (_zz_targets_0_bestRequest_id_12 ? targets_0_requests_8_priority : targets_0_requests_9_priority);
  assign _zz_targets_0_bestRequest_id_14 = (_zz_targets_0_bestRequest_id_12 ? targets_0_requests_8_valid : targets_0_requests_9_valid);
  assign _zz_targets_0_bestRequest_id_15 = ((! targets_0_requests_11_valid) || (targets_0_requests_10_valid && (targets_0_requests_11_priority <= targets_0_requests_10_priority)));
  assign _zz_targets_0_bestRequest_id_16 = (_zz_targets_0_bestRequest_id_15 ? targets_0_requests_10_priority : targets_0_requests_11_priority);
  assign _zz_targets_0_bestRequest_id_17 = (_zz_targets_0_bestRequest_id_15 ? targets_0_requests_10_valid : targets_0_requests_11_valid);
  assign _zz_targets_0_bestRequest_id_18 = ((! targets_0_requests_13_valid) || (targets_0_requests_12_valid && (targets_0_requests_13_priority <= targets_0_requests_12_priority)));
  assign _zz_targets_0_bestRequest_id_19 = (_zz_targets_0_bestRequest_id_18 ? targets_0_requests_12_priority : targets_0_requests_13_priority);
  assign _zz_targets_0_bestRequest_id_20 = (_zz_targets_0_bestRequest_id_18 ? targets_0_requests_12_valid : targets_0_requests_13_valid);
  assign _zz_targets_0_bestRequest_id_21 = ((! targets_0_requests_15_valid) || (targets_0_requests_14_valid && (targets_0_requests_15_priority <= targets_0_requests_14_priority)));
  assign _zz_targets_0_bestRequest_id_22 = (_zz_targets_0_bestRequest_id_21 ? targets_0_requests_14_priority : targets_0_requests_15_priority);
  assign _zz_targets_0_bestRequest_id_23 = (_zz_targets_0_bestRequest_id_21 ? targets_0_requests_14_valid : targets_0_requests_15_valid);
  assign _zz_targets_0_bestRequest_id_24 = ((! targets_0_requests_17_valid) || (targets_0_requests_16_valid && (targets_0_requests_17_priority <= targets_0_requests_16_priority)));
  assign _zz_targets_0_bestRequest_id_25 = (_zz_targets_0_bestRequest_id_24 ? targets_0_requests_16_priority : targets_0_requests_17_priority);
  assign _zz_targets_0_bestRequest_id_26 = (_zz_targets_0_bestRequest_id_24 ? targets_0_requests_16_valid : targets_0_requests_17_valid);
  assign _zz_targets_0_bestRequest_id_27 = ((! targets_0_requests_19_valid) || (targets_0_requests_18_valid && (targets_0_requests_19_priority <= targets_0_requests_18_priority)));
  assign _zz_targets_0_bestRequest_id_28 = (_zz_targets_0_bestRequest_id_27 ? targets_0_requests_18_priority : targets_0_requests_19_priority);
  assign _zz_targets_0_bestRequest_id_29 = (_zz_targets_0_bestRequest_id_27 ? targets_0_requests_18_valid : targets_0_requests_19_valid);
  assign _zz_targets_0_bestRequest_id_30 = ((! targets_0_requests_21_valid) || (targets_0_requests_20_valid && (targets_0_requests_21_priority <= targets_0_requests_20_priority)));
  assign _zz_targets_0_bestRequest_id_31 = (_zz_targets_0_bestRequest_id_30 ? targets_0_requests_20_priority : targets_0_requests_21_priority);
  assign _zz_targets_0_bestRequest_id_32 = (_zz_targets_0_bestRequest_id_30 ? targets_0_requests_20_valid : targets_0_requests_21_valid);
  assign _zz_targets_0_bestRequest_id_33 = ((! targets_0_requests_23_valid) || (targets_0_requests_22_valid && (targets_0_requests_23_priority <= targets_0_requests_22_priority)));
  assign _zz_targets_0_bestRequest_id_34 = (_zz_targets_0_bestRequest_id_33 ? targets_0_requests_22_priority : targets_0_requests_23_priority);
  assign _zz_targets_0_bestRequest_id_35 = (_zz_targets_0_bestRequest_id_33 ? targets_0_requests_22_valid : targets_0_requests_23_valid);
  assign _zz_targets_0_bestRequest_id_36 = ((! targets_0_requests_25_valid) || (targets_0_requests_24_valid && (targets_0_requests_25_priority <= targets_0_requests_24_priority)));
  assign _zz_targets_0_bestRequest_id_37 = (_zz_targets_0_bestRequest_id_36 ? targets_0_requests_24_priority : targets_0_requests_25_priority);
  assign _zz_targets_0_bestRequest_id_38 = (_zz_targets_0_bestRequest_id_36 ? targets_0_requests_24_valid : targets_0_requests_25_valid);
  assign _zz_targets_0_bestRequest_id_39 = ((! targets_0_requests_27_valid) || (targets_0_requests_26_valid && (targets_0_requests_27_priority <= targets_0_requests_26_priority)));
  assign _zz_targets_0_bestRequest_id_40 = (_zz_targets_0_bestRequest_id_39 ? targets_0_requests_26_priority : targets_0_requests_27_priority);
  assign _zz_targets_0_bestRequest_id_41 = (_zz_targets_0_bestRequest_id_39 ? targets_0_requests_26_valid : targets_0_requests_27_valid);
  assign _zz_targets_0_bestRequest_id_42 = ((! targets_0_requests_29_valid) || (targets_0_requests_28_valid && (targets_0_requests_29_priority <= targets_0_requests_28_priority)));
  assign _zz_targets_0_bestRequest_id_43 = (_zz_targets_0_bestRequest_id_42 ? targets_0_requests_28_priority : targets_0_requests_29_priority);
  assign _zz_targets_0_bestRequest_id_44 = (_zz_targets_0_bestRequest_id_42 ? targets_0_requests_28_valid : targets_0_requests_29_valid);
  assign _zz_targets_0_bestRequest_id_45 = ((! targets_0_requests_31_valid) || (targets_0_requests_30_valid && (targets_0_requests_31_priority <= targets_0_requests_30_priority)));
  assign _zz_targets_0_bestRequest_id_46 = (_zz_targets_0_bestRequest_id_45 ? targets_0_requests_30_priority : targets_0_requests_31_priority);
  assign _zz_targets_0_bestRequest_id_47 = (_zz_targets_0_bestRequest_id_45 ? targets_0_requests_30_valid : targets_0_requests_31_valid);
  assign _zz_targets_0_bestRequest_id_48 = ((! _zz_targets_0_bestRequest_id_5) || (_zz_targets_0_bestRequest_id_2 && (_zz_targets_0_bestRequest_id_4 <= _zz_targets_0_bestRequest_id_1)));
  assign _zz_targets_0_bestRequest_id_49 = (_zz_targets_0_bestRequest_id_48 ? _zz_targets_0_bestRequest_id_1 : _zz_targets_0_bestRequest_id_4);
  assign _zz_targets_0_bestRequest_id_50 = (_zz_targets_0_bestRequest_id_48 ? _zz_targets_0_bestRequest_id_2 : _zz_targets_0_bestRequest_id_5);
  assign _zz_targets_0_bestRequest_id_51 = ((! _zz_targets_0_bestRequest_id_11) || (_zz_targets_0_bestRequest_id_8 && (_zz_targets_0_bestRequest_id_10 <= _zz_targets_0_bestRequest_id_7)));
  assign _zz_targets_0_bestRequest_id_52 = (_zz_targets_0_bestRequest_id_51 ? _zz_targets_0_bestRequest_id_7 : _zz_targets_0_bestRequest_id_10);
  assign _zz_targets_0_bestRequest_id_53 = (_zz_targets_0_bestRequest_id_51 ? _zz_targets_0_bestRequest_id_8 : _zz_targets_0_bestRequest_id_11);
  assign _zz_targets_0_bestRequest_id_54 = ((! _zz_targets_0_bestRequest_id_17) || (_zz_targets_0_bestRequest_id_14 && (_zz_targets_0_bestRequest_id_16 <= _zz_targets_0_bestRequest_id_13)));
  assign _zz_targets_0_bestRequest_id_55 = (_zz_targets_0_bestRequest_id_54 ? _zz_targets_0_bestRequest_id_13 : _zz_targets_0_bestRequest_id_16);
  assign _zz_targets_0_bestRequest_id_56 = (_zz_targets_0_bestRequest_id_54 ? _zz_targets_0_bestRequest_id_14 : _zz_targets_0_bestRequest_id_17);
  assign _zz_targets_0_bestRequest_id_57 = ((! _zz_targets_0_bestRequest_id_23) || (_zz_targets_0_bestRequest_id_20 && (_zz_targets_0_bestRequest_id_22 <= _zz_targets_0_bestRequest_id_19)));
  assign _zz_targets_0_bestRequest_id_58 = (_zz_targets_0_bestRequest_id_57 ? _zz_targets_0_bestRequest_id_19 : _zz_targets_0_bestRequest_id_22);
  assign _zz_targets_0_bestRequest_id_59 = (_zz_targets_0_bestRequest_id_57 ? _zz_targets_0_bestRequest_id_20 : _zz_targets_0_bestRequest_id_23);
  assign _zz_targets_0_bestRequest_id_60 = ((! _zz_targets_0_bestRequest_id_29) || (_zz_targets_0_bestRequest_id_26 && (_zz_targets_0_bestRequest_id_28 <= _zz_targets_0_bestRequest_id_25)));
  assign _zz_targets_0_bestRequest_id_61 = (_zz_targets_0_bestRequest_id_60 ? _zz_targets_0_bestRequest_id_25 : _zz_targets_0_bestRequest_id_28);
  assign _zz_targets_0_bestRequest_id_62 = (_zz_targets_0_bestRequest_id_60 ? _zz_targets_0_bestRequest_id_26 : _zz_targets_0_bestRequest_id_29);
  assign _zz_targets_0_bestRequest_id_63 = ((! _zz_targets_0_bestRequest_id_35) || (_zz_targets_0_bestRequest_id_32 && (_zz_targets_0_bestRequest_id_34 <= _zz_targets_0_bestRequest_id_31)));
  assign _zz_targets_0_bestRequest_id_64 = (_zz_targets_0_bestRequest_id_63 ? _zz_targets_0_bestRequest_id_31 : _zz_targets_0_bestRequest_id_34);
  assign _zz_targets_0_bestRequest_id_65 = (_zz_targets_0_bestRequest_id_63 ? _zz_targets_0_bestRequest_id_32 : _zz_targets_0_bestRequest_id_35);
  assign _zz_targets_0_bestRequest_id_66 = ((! _zz_targets_0_bestRequest_id_41) || (_zz_targets_0_bestRequest_id_38 && (_zz_targets_0_bestRequest_id_40 <= _zz_targets_0_bestRequest_id_37)));
  assign _zz_targets_0_bestRequest_id_67 = (_zz_targets_0_bestRequest_id_66 ? _zz_targets_0_bestRequest_id_37 : _zz_targets_0_bestRequest_id_40);
  assign _zz_targets_0_bestRequest_id_68 = (_zz_targets_0_bestRequest_id_66 ? _zz_targets_0_bestRequest_id_38 : _zz_targets_0_bestRequest_id_41);
  assign _zz_targets_0_bestRequest_id_69 = ((! _zz_targets_0_bestRequest_id_47) || (_zz_targets_0_bestRequest_id_44 && (_zz_targets_0_bestRequest_id_46 <= _zz_targets_0_bestRequest_id_43)));
  assign _zz_targets_0_bestRequest_id_70 = (_zz_targets_0_bestRequest_id_69 ? _zz_targets_0_bestRequest_id_43 : _zz_targets_0_bestRequest_id_46);
  assign _zz_targets_0_bestRequest_id_71 = (_zz_targets_0_bestRequest_id_69 ? _zz_targets_0_bestRequest_id_44 : _zz_targets_0_bestRequest_id_47);
  assign _zz_targets_0_bestRequest_id_72 = ((! _zz_targets_0_bestRequest_id_53) || (_zz_targets_0_bestRequest_id_50 && (_zz_targets_0_bestRequest_id_52 <= _zz_targets_0_bestRequest_id_49)));
  assign _zz_targets_0_bestRequest_priority = (_zz_targets_0_bestRequest_id_72 ? _zz_targets_0_bestRequest_id_49 : _zz_targets_0_bestRequest_id_52);
  assign _zz_targets_0_bestRequest_id_73 = (_zz_targets_0_bestRequest_id_72 ? _zz_targets_0_bestRequest_id_50 : _zz_targets_0_bestRequest_id_53);
  assign _zz_targets_0_bestRequest_id_74 = ((! _zz_targets_0_bestRequest_id_59) || (_zz_targets_0_bestRequest_id_56 && (_zz_targets_0_bestRequest_id_58 <= _zz_targets_0_bestRequest_id_55)));
  assign _zz_targets_0_bestRequest_priority_1 = (_zz_targets_0_bestRequest_id_74 ? _zz_targets_0_bestRequest_id_55 : _zz_targets_0_bestRequest_id_58);
  assign _zz_targets_0_bestRequest_id_75 = (_zz_targets_0_bestRequest_id_74 ? _zz_targets_0_bestRequest_id_56 : _zz_targets_0_bestRequest_id_59);
  assign _zz_targets_0_bestRequest_id_76 = ((! _zz_targets_0_bestRequest_id_65) || (_zz_targets_0_bestRequest_id_62 && (_zz_targets_0_bestRequest_id_64 <= _zz_targets_0_bestRequest_id_61)));
  assign _zz_targets_0_bestRequest_priority_2 = (_zz_targets_0_bestRequest_id_76 ? _zz_targets_0_bestRequest_id_61 : _zz_targets_0_bestRequest_id_64);
  assign _zz_targets_0_bestRequest_id_77 = (_zz_targets_0_bestRequest_id_76 ? _zz_targets_0_bestRequest_id_62 : _zz_targets_0_bestRequest_id_65);
  assign _zz_targets_0_bestRequest_id_78 = ((! _zz_targets_0_bestRequest_id_71) || (_zz_targets_0_bestRequest_id_68 && (_zz_targets_0_bestRequest_id_70 <= _zz_targets_0_bestRequest_id_67)));
  assign _zz_targets_0_bestRequest_priority_3 = (_zz_targets_0_bestRequest_id_78 ? _zz_targets_0_bestRequest_id_67 : _zz_targets_0_bestRequest_id_70);
  assign _zz_targets_0_bestRequest_id_79 = (_zz_targets_0_bestRequest_id_78 ? _zz_targets_0_bestRequest_id_68 : _zz_targets_0_bestRequest_id_71);
  assign _zz_targets_0_bestRequest_id_80 = ((! _zz_targets_0_bestRequest_id_75) || (_zz_targets_0_bestRequest_id_73 && (_zz_targets_0_bestRequest_priority_1 <= _zz_targets_0_bestRequest_priority)));
  assign _zz_targets_0_bestRequest_priority_4 = (_zz_targets_0_bestRequest_id_80 ? _zz_targets_0_bestRequest_priority : _zz_targets_0_bestRequest_priority_1);
  assign _zz_targets_0_bestRequest_valid = (_zz_targets_0_bestRequest_id_80 ? _zz_targets_0_bestRequest_id_73 : _zz_targets_0_bestRequest_id_75);
  assign _zz_targets_0_bestRequest_id_81 = ((! _zz_targets_0_bestRequest_id_79) || (_zz_targets_0_bestRequest_id_77 && (_zz_targets_0_bestRequest_priority_3 <= _zz_targets_0_bestRequest_priority_2)));
  assign _zz_targets_0_bestRequest_priority_5 = (_zz_targets_0_bestRequest_id_81 ? _zz_targets_0_bestRequest_priority_2 : _zz_targets_0_bestRequest_priority_3);
  assign _zz_targets_0_bestRequest_valid_1 = (_zz_targets_0_bestRequest_id_81 ? _zz_targets_0_bestRequest_id_77 : _zz_targets_0_bestRequest_id_79);
  assign _zz_targets_0_bestRequest_priority_6 = ((! _zz_targets_0_bestRequest_valid_1) || (_zz_targets_0_bestRequest_valid && (_zz_targets_0_bestRequest_priority_5 <= _zz_targets_0_bestRequest_priority_4)));
  assign targets_0_iep = (targets_0_threshold < targets_0_bestRequest_priority);
  assign targets_0_claim = (targets_0_iep ? targets_0_bestRequest_id : 5'h0);
  assign targets_1_requests_0_priority = 2'b00;
  assign targets_1_requests_0_id = 5'h0;
  assign targets_1_requests_0_valid = 1'b1;
  assign targets_1_requests_1_priority = gateways_0_priority;
  assign targets_1_requests_1_id = 5'h01;
  assign targets_1_requests_1_valid = (gateways_0_ip && targets_1_ie_0);
  assign targets_1_requests_2_priority = gateways_1_priority;
  assign targets_1_requests_2_id = 5'h02;
  assign targets_1_requests_2_valid = (gateways_1_ip && targets_1_ie_1);
  assign targets_1_requests_3_priority = gateways_2_priority;
  assign targets_1_requests_3_id = 5'h03;
  assign targets_1_requests_3_valid = (gateways_2_ip && targets_1_ie_2);
  assign targets_1_requests_4_priority = gateways_3_priority;
  assign targets_1_requests_4_id = 5'h04;
  assign targets_1_requests_4_valid = (gateways_3_ip && targets_1_ie_3);
  assign targets_1_requests_5_priority = gateways_4_priority;
  assign targets_1_requests_5_id = 5'h05;
  assign targets_1_requests_5_valid = (gateways_4_ip && targets_1_ie_4);
  assign targets_1_requests_6_priority = gateways_5_priority;
  assign targets_1_requests_6_id = 5'h06;
  assign targets_1_requests_6_valid = (gateways_5_ip && targets_1_ie_5);
  assign targets_1_requests_7_priority = gateways_6_priority;
  assign targets_1_requests_7_id = 5'h07;
  assign targets_1_requests_7_valid = (gateways_6_ip && targets_1_ie_6);
  assign targets_1_requests_8_priority = gateways_7_priority;
  assign targets_1_requests_8_id = 5'h08;
  assign targets_1_requests_8_valid = (gateways_7_ip && targets_1_ie_7);
  assign targets_1_requests_9_priority = gateways_8_priority;
  assign targets_1_requests_9_id = 5'h09;
  assign targets_1_requests_9_valid = (gateways_8_ip && targets_1_ie_8);
  assign targets_1_requests_10_priority = gateways_9_priority;
  assign targets_1_requests_10_id = 5'h0a;
  assign targets_1_requests_10_valid = (gateways_9_ip && targets_1_ie_9);
  assign targets_1_requests_11_priority = gateways_10_priority;
  assign targets_1_requests_11_id = 5'h0b;
  assign targets_1_requests_11_valid = (gateways_10_ip && targets_1_ie_10);
  assign targets_1_requests_12_priority = gateways_11_priority;
  assign targets_1_requests_12_id = 5'h0c;
  assign targets_1_requests_12_valid = (gateways_11_ip && targets_1_ie_11);
  assign targets_1_requests_13_priority = gateways_12_priority;
  assign targets_1_requests_13_id = 5'h0d;
  assign targets_1_requests_13_valid = (gateways_12_ip && targets_1_ie_12);
  assign targets_1_requests_14_priority = gateways_13_priority;
  assign targets_1_requests_14_id = 5'h0e;
  assign targets_1_requests_14_valid = (gateways_13_ip && targets_1_ie_13);
  assign targets_1_requests_15_priority = gateways_14_priority;
  assign targets_1_requests_15_id = 5'h0f;
  assign targets_1_requests_15_valid = (gateways_14_ip && targets_1_ie_14);
  assign targets_1_requests_16_priority = gateways_15_priority;
  assign targets_1_requests_16_id = 5'h10;
  assign targets_1_requests_16_valid = (gateways_15_ip && targets_1_ie_15);
  assign targets_1_requests_17_priority = gateways_16_priority;
  assign targets_1_requests_17_id = 5'h11;
  assign targets_1_requests_17_valid = (gateways_16_ip && targets_1_ie_16);
  assign targets_1_requests_18_priority = gateways_17_priority;
  assign targets_1_requests_18_id = 5'h12;
  assign targets_1_requests_18_valid = (gateways_17_ip && targets_1_ie_17);
  assign targets_1_requests_19_priority = gateways_18_priority;
  assign targets_1_requests_19_id = 5'h13;
  assign targets_1_requests_19_valid = (gateways_18_ip && targets_1_ie_18);
  assign targets_1_requests_20_priority = gateways_19_priority;
  assign targets_1_requests_20_id = 5'h14;
  assign targets_1_requests_20_valid = (gateways_19_ip && targets_1_ie_19);
  assign targets_1_requests_21_priority = gateways_20_priority;
  assign targets_1_requests_21_id = 5'h15;
  assign targets_1_requests_21_valid = (gateways_20_ip && targets_1_ie_20);
  assign targets_1_requests_22_priority = gateways_21_priority;
  assign targets_1_requests_22_id = 5'h16;
  assign targets_1_requests_22_valid = (gateways_21_ip && targets_1_ie_21);
  assign targets_1_requests_23_priority = gateways_22_priority;
  assign targets_1_requests_23_id = 5'h17;
  assign targets_1_requests_23_valid = (gateways_22_ip && targets_1_ie_22);
  assign targets_1_requests_24_priority = gateways_23_priority;
  assign targets_1_requests_24_id = 5'h18;
  assign targets_1_requests_24_valid = (gateways_23_ip && targets_1_ie_23);
  assign targets_1_requests_25_priority = gateways_24_priority;
  assign targets_1_requests_25_id = 5'h19;
  assign targets_1_requests_25_valid = (gateways_24_ip && targets_1_ie_24);
  assign targets_1_requests_26_priority = gateways_25_priority;
  assign targets_1_requests_26_id = 5'h1a;
  assign targets_1_requests_26_valid = (gateways_25_ip && targets_1_ie_25);
  assign targets_1_requests_27_priority = gateways_26_priority;
  assign targets_1_requests_27_id = 5'h1b;
  assign targets_1_requests_27_valid = (gateways_26_ip && targets_1_ie_26);
  assign targets_1_requests_28_priority = gateways_27_priority;
  assign targets_1_requests_28_id = 5'h1c;
  assign targets_1_requests_28_valid = (gateways_27_ip && targets_1_ie_27);
  assign targets_1_requests_29_priority = gateways_28_priority;
  assign targets_1_requests_29_id = 5'h1d;
  assign targets_1_requests_29_valid = (gateways_28_ip && targets_1_ie_28);
  assign targets_1_requests_30_priority = gateways_29_priority;
  assign targets_1_requests_30_id = 5'h1e;
  assign targets_1_requests_30_valid = (gateways_29_ip && targets_1_ie_29);
  assign targets_1_requests_31_priority = gateways_30_priority;
  assign targets_1_requests_31_id = 5'h1f;
  assign targets_1_requests_31_valid = (gateways_30_ip && targets_1_ie_30);
  assign _zz_targets_1_bestRequest_id = ((! targets_1_requests_1_valid) || (targets_1_requests_0_valid && (targets_1_requests_1_priority <= targets_1_requests_0_priority)));
  assign _zz_targets_1_bestRequest_id_1 = (_zz_targets_1_bestRequest_id ? targets_1_requests_0_priority : targets_1_requests_1_priority);
  assign _zz_targets_1_bestRequest_id_2 = (_zz_targets_1_bestRequest_id ? targets_1_requests_0_valid : targets_1_requests_1_valid);
  assign _zz_targets_1_bestRequest_id_3 = ((! targets_1_requests_3_valid) || (targets_1_requests_2_valid && (targets_1_requests_3_priority <= targets_1_requests_2_priority)));
  assign _zz_targets_1_bestRequest_id_4 = (_zz_targets_1_bestRequest_id_3 ? targets_1_requests_2_priority : targets_1_requests_3_priority);
  assign _zz_targets_1_bestRequest_id_5 = (_zz_targets_1_bestRequest_id_3 ? targets_1_requests_2_valid : targets_1_requests_3_valid);
  assign _zz_targets_1_bestRequest_id_6 = ((! targets_1_requests_5_valid) || (targets_1_requests_4_valid && (targets_1_requests_5_priority <= targets_1_requests_4_priority)));
  assign _zz_targets_1_bestRequest_id_7 = (_zz_targets_1_bestRequest_id_6 ? targets_1_requests_4_priority : targets_1_requests_5_priority);
  assign _zz_targets_1_bestRequest_id_8 = (_zz_targets_1_bestRequest_id_6 ? targets_1_requests_4_valid : targets_1_requests_5_valid);
  assign _zz_targets_1_bestRequest_id_9 = ((! targets_1_requests_7_valid) || (targets_1_requests_6_valid && (targets_1_requests_7_priority <= targets_1_requests_6_priority)));
  assign _zz_targets_1_bestRequest_id_10 = (_zz_targets_1_bestRequest_id_9 ? targets_1_requests_6_priority : targets_1_requests_7_priority);
  assign _zz_targets_1_bestRequest_id_11 = (_zz_targets_1_bestRequest_id_9 ? targets_1_requests_6_valid : targets_1_requests_7_valid);
  assign _zz_targets_1_bestRequest_id_12 = ((! targets_1_requests_9_valid) || (targets_1_requests_8_valid && (targets_1_requests_9_priority <= targets_1_requests_8_priority)));
  assign _zz_targets_1_bestRequest_id_13 = (_zz_targets_1_bestRequest_id_12 ? targets_1_requests_8_priority : targets_1_requests_9_priority);
  assign _zz_targets_1_bestRequest_id_14 = (_zz_targets_1_bestRequest_id_12 ? targets_1_requests_8_valid : targets_1_requests_9_valid);
  assign _zz_targets_1_bestRequest_id_15 = ((! targets_1_requests_11_valid) || (targets_1_requests_10_valid && (targets_1_requests_11_priority <= targets_1_requests_10_priority)));
  assign _zz_targets_1_bestRequest_id_16 = (_zz_targets_1_bestRequest_id_15 ? targets_1_requests_10_priority : targets_1_requests_11_priority);
  assign _zz_targets_1_bestRequest_id_17 = (_zz_targets_1_bestRequest_id_15 ? targets_1_requests_10_valid : targets_1_requests_11_valid);
  assign _zz_targets_1_bestRequest_id_18 = ((! targets_1_requests_13_valid) || (targets_1_requests_12_valid && (targets_1_requests_13_priority <= targets_1_requests_12_priority)));
  assign _zz_targets_1_bestRequest_id_19 = (_zz_targets_1_bestRequest_id_18 ? targets_1_requests_12_priority : targets_1_requests_13_priority);
  assign _zz_targets_1_bestRequest_id_20 = (_zz_targets_1_bestRequest_id_18 ? targets_1_requests_12_valid : targets_1_requests_13_valid);
  assign _zz_targets_1_bestRequest_id_21 = ((! targets_1_requests_15_valid) || (targets_1_requests_14_valid && (targets_1_requests_15_priority <= targets_1_requests_14_priority)));
  assign _zz_targets_1_bestRequest_id_22 = (_zz_targets_1_bestRequest_id_21 ? targets_1_requests_14_priority : targets_1_requests_15_priority);
  assign _zz_targets_1_bestRequest_id_23 = (_zz_targets_1_bestRequest_id_21 ? targets_1_requests_14_valid : targets_1_requests_15_valid);
  assign _zz_targets_1_bestRequest_id_24 = ((! targets_1_requests_17_valid) || (targets_1_requests_16_valid && (targets_1_requests_17_priority <= targets_1_requests_16_priority)));
  assign _zz_targets_1_bestRequest_id_25 = (_zz_targets_1_bestRequest_id_24 ? targets_1_requests_16_priority : targets_1_requests_17_priority);
  assign _zz_targets_1_bestRequest_id_26 = (_zz_targets_1_bestRequest_id_24 ? targets_1_requests_16_valid : targets_1_requests_17_valid);
  assign _zz_targets_1_bestRequest_id_27 = ((! targets_1_requests_19_valid) || (targets_1_requests_18_valid && (targets_1_requests_19_priority <= targets_1_requests_18_priority)));
  assign _zz_targets_1_bestRequest_id_28 = (_zz_targets_1_bestRequest_id_27 ? targets_1_requests_18_priority : targets_1_requests_19_priority);
  assign _zz_targets_1_bestRequest_id_29 = (_zz_targets_1_bestRequest_id_27 ? targets_1_requests_18_valid : targets_1_requests_19_valid);
  assign _zz_targets_1_bestRequest_id_30 = ((! targets_1_requests_21_valid) || (targets_1_requests_20_valid && (targets_1_requests_21_priority <= targets_1_requests_20_priority)));
  assign _zz_targets_1_bestRequest_id_31 = (_zz_targets_1_bestRequest_id_30 ? targets_1_requests_20_priority : targets_1_requests_21_priority);
  assign _zz_targets_1_bestRequest_id_32 = (_zz_targets_1_bestRequest_id_30 ? targets_1_requests_20_valid : targets_1_requests_21_valid);
  assign _zz_targets_1_bestRequest_id_33 = ((! targets_1_requests_23_valid) || (targets_1_requests_22_valid && (targets_1_requests_23_priority <= targets_1_requests_22_priority)));
  assign _zz_targets_1_bestRequest_id_34 = (_zz_targets_1_bestRequest_id_33 ? targets_1_requests_22_priority : targets_1_requests_23_priority);
  assign _zz_targets_1_bestRequest_id_35 = (_zz_targets_1_bestRequest_id_33 ? targets_1_requests_22_valid : targets_1_requests_23_valid);
  assign _zz_targets_1_bestRequest_id_36 = ((! targets_1_requests_25_valid) || (targets_1_requests_24_valid && (targets_1_requests_25_priority <= targets_1_requests_24_priority)));
  assign _zz_targets_1_bestRequest_id_37 = (_zz_targets_1_bestRequest_id_36 ? targets_1_requests_24_priority : targets_1_requests_25_priority);
  assign _zz_targets_1_bestRequest_id_38 = (_zz_targets_1_bestRequest_id_36 ? targets_1_requests_24_valid : targets_1_requests_25_valid);
  assign _zz_targets_1_bestRequest_id_39 = ((! targets_1_requests_27_valid) || (targets_1_requests_26_valid && (targets_1_requests_27_priority <= targets_1_requests_26_priority)));
  assign _zz_targets_1_bestRequest_id_40 = (_zz_targets_1_bestRequest_id_39 ? targets_1_requests_26_priority : targets_1_requests_27_priority);
  assign _zz_targets_1_bestRequest_id_41 = (_zz_targets_1_bestRequest_id_39 ? targets_1_requests_26_valid : targets_1_requests_27_valid);
  assign _zz_targets_1_bestRequest_id_42 = ((! targets_1_requests_29_valid) || (targets_1_requests_28_valid && (targets_1_requests_29_priority <= targets_1_requests_28_priority)));
  assign _zz_targets_1_bestRequest_id_43 = (_zz_targets_1_bestRequest_id_42 ? targets_1_requests_28_priority : targets_1_requests_29_priority);
  assign _zz_targets_1_bestRequest_id_44 = (_zz_targets_1_bestRequest_id_42 ? targets_1_requests_28_valid : targets_1_requests_29_valid);
  assign _zz_targets_1_bestRequest_id_45 = ((! targets_1_requests_31_valid) || (targets_1_requests_30_valid && (targets_1_requests_31_priority <= targets_1_requests_30_priority)));
  assign _zz_targets_1_bestRequest_id_46 = (_zz_targets_1_bestRequest_id_45 ? targets_1_requests_30_priority : targets_1_requests_31_priority);
  assign _zz_targets_1_bestRequest_id_47 = (_zz_targets_1_bestRequest_id_45 ? targets_1_requests_30_valid : targets_1_requests_31_valid);
  assign _zz_targets_1_bestRequest_id_48 = ((! _zz_targets_1_bestRequest_id_5) || (_zz_targets_1_bestRequest_id_2 && (_zz_targets_1_bestRequest_id_4 <= _zz_targets_1_bestRequest_id_1)));
  assign _zz_targets_1_bestRequest_id_49 = (_zz_targets_1_bestRequest_id_48 ? _zz_targets_1_bestRequest_id_1 : _zz_targets_1_bestRequest_id_4);
  assign _zz_targets_1_bestRequest_id_50 = (_zz_targets_1_bestRequest_id_48 ? _zz_targets_1_bestRequest_id_2 : _zz_targets_1_bestRequest_id_5);
  assign _zz_targets_1_bestRequest_id_51 = ((! _zz_targets_1_bestRequest_id_11) || (_zz_targets_1_bestRequest_id_8 && (_zz_targets_1_bestRequest_id_10 <= _zz_targets_1_bestRequest_id_7)));
  assign _zz_targets_1_bestRequest_id_52 = (_zz_targets_1_bestRequest_id_51 ? _zz_targets_1_bestRequest_id_7 : _zz_targets_1_bestRequest_id_10);
  assign _zz_targets_1_bestRequest_id_53 = (_zz_targets_1_bestRequest_id_51 ? _zz_targets_1_bestRequest_id_8 : _zz_targets_1_bestRequest_id_11);
  assign _zz_targets_1_bestRequest_id_54 = ((! _zz_targets_1_bestRequest_id_17) || (_zz_targets_1_bestRequest_id_14 && (_zz_targets_1_bestRequest_id_16 <= _zz_targets_1_bestRequest_id_13)));
  assign _zz_targets_1_bestRequest_id_55 = (_zz_targets_1_bestRequest_id_54 ? _zz_targets_1_bestRequest_id_13 : _zz_targets_1_bestRequest_id_16);
  assign _zz_targets_1_bestRequest_id_56 = (_zz_targets_1_bestRequest_id_54 ? _zz_targets_1_bestRequest_id_14 : _zz_targets_1_bestRequest_id_17);
  assign _zz_targets_1_bestRequest_id_57 = ((! _zz_targets_1_bestRequest_id_23) || (_zz_targets_1_bestRequest_id_20 && (_zz_targets_1_bestRequest_id_22 <= _zz_targets_1_bestRequest_id_19)));
  assign _zz_targets_1_bestRequest_id_58 = (_zz_targets_1_bestRequest_id_57 ? _zz_targets_1_bestRequest_id_19 : _zz_targets_1_bestRequest_id_22);
  assign _zz_targets_1_bestRequest_id_59 = (_zz_targets_1_bestRequest_id_57 ? _zz_targets_1_bestRequest_id_20 : _zz_targets_1_bestRequest_id_23);
  assign _zz_targets_1_bestRequest_id_60 = ((! _zz_targets_1_bestRequest_id_29) || (_zz_targets_1_bestRequest_id_26 && (_zz_targets_1_bestRequest_id_28 <= _zz_targets_1_bestRequest_id_25)));
  assign _zz_targets_1_bestRequest_id_61 = (_zz_targets_1_bestRequest_id_60 ? _zz_targets_1_bestRequest_id_25 : _zz_targets_1_bestRequest_id_28);
  assign _zz_targets_1_bestRequest_id_62 = (_zz_targets_1_bestRequest_id_60 ? _zz_targets_1_bestRequest_id_26 : _zz_targets_1_bestRequest_id_29);
  assign _zz_targets_1_bestRequest_id_63 = ((! _zz_targets_1_bestRequest_id_35) || (_zz_targets_1_bestRequest_id_32 && (_zz_targets_1_bestRequest_id_34 <= _zz_targets_1_bestRequest_id_31)));
  assign _zz_targets_1_bestRequest_id_64 = (_zz_targets_1_bestRequest_id_63 ? _zz_targets_1_bestRequest_id_31 : _zz_targets_1_bestRequest_id_34);
  assign _zz_targets_1_bestRequest_id_65 = (_zz_targets_1_bestRequest_id_63 ? _zz_targets_1_bestRequest_id_32 : _zz_targets_1_bestRequest_id_35);
  assign _zz_targets_1_bestRequest_id_66 = ((! _zz_targets_1_bestRequest_id_41) || (_zz_targets_1_bestRequest_id_38 && (_zz_targets_1_bestRequest_id_40 <= _zz_targets_1_bestRequest_id_37)));
  assign _zz_targets_1_bestRequest_id_67 = (_zz_targets_1_bestRequest_id_66 ? _zz_targets_1_bestRequest_id_37 : _zz_targets_1_bestRequest_id_40);
  assign _zz_targets_1_bestRequest_id_68 = (_zz_targets_1_bestRequest_id_66 ? _zz_targets_1_bestRequest_id_38 : _zz_targets_1_bestRequest_id_41);
  assign _zz_targets_1_bestRequest_id_69 = ((! _zz_targets_1_bestRequest_id_47) || (_zz_targets_1_bestRequest_id_44 && (_zz_targets_1_bestRequest_id_46 <= _zz_targets_1_bestRequest_id_43)));
  assign _zz_targets_1_bestRequest_id_70 = (_zz_targets_1_bestRequest_id_69 ? _zz_targets_1_bestRequest_id_43 : _zz_targets_1_bestRequest_id_46);
  assign _zz_targets_1_bestRequest_id_71 = (_zz_targets_1_bestRequest_id_69 ? _zz_targets_1_bestRequest_id_44 : _zz_targets_1_bestRequest_id_47);
  assign _zz_targets_1_bestRequest_id_72 = ((! _zz_targets_1_bestRequest_id_53) || (_zz_targets_1_bestRequest_id_50 && (_zz_targets_1_bestRequest_id_52 <= _zz_targets_1_bestRequest_id_49)));
  assign _zz_targets_1_bestRequest_priority = (_zz_targets_1_bestRequest_id_72 ? _zz_targets_1_bestRequest_id_49 : _zz_targets_1_bestRequest_id_52);
  assign _zz_targets_1_bestRequest_id_73 = (_zz_targets_1_bestRequest_id_72 ? _zz_targets_1_bestRequest_id_50 : _zz_targets_1_bestRequest_id_53);
  assign _zz_targets_1_bestRequest_id_74 = ((! _zz_targets_1_bestRequest_id_59) || (_zz_targets_1_bestRequest_id_56 && (_zz_targets_1_bestRequest_id_58 <= _zz_targets_1_bestRequest_id_55)));
  assign _zz_targets_1_bestRequest_priority_1 = (_zz_targets_1_bestRequest_id_74 ? _zz_targets_1_bestRequest_id_55 : _zz_targets_1_bestRequest_id_58);
  assign _zz_targets_1_bestRequest_id_75 = (_zz_targets_1_bestRequest_id_74 ? _zz_targets_1_bestRequest_id_56 : _zz_targets_1_bestRequest_id_59);
  assign _zz_targets_1_bestRequest_id_76 = ((! _zz_targets_1_bestRequest_id_65) || (_zz_targets_1_bestRequest_id_62 && (_zz_targets_1_bestRequest_id_64 <= _zz_targets_1_bestRequest_id_61)));
  assign _zz_targets_1_bestRequest_priority_2 = (_zz_targets_1_bestRequest_id_76 ? _zz_targets_1_bestRequest_id_61 : _zz_targets_1_bestRequest_id_64);
  assign _zz_targets_1_bestRequest_id_77 = (_zz_targets_1_bestRequest_id_76 ? _zz_targets_1_bestRequest_id_62 : _zz_targets_1_bestRequest_id_65);
  assign _zz_targets_1_bestRequest_id_78 = ((! _zz_targets_1_bestRequest_id_71) || (_zz_targets_1_bestRequest_id_68 && (_zz_targets_1_bestRequest_id_70 <= _zz_targets_1_bestRequest_id_67)));
  assign _zz_targets_1_bestRequest_priority_3 = (_zz_targets_1_bestRequest_id_78 ? _zz_targets_1_bestRequest_id_67 : _zz_targets_1_bestRequest_id_70);
  assign _zz_targets_1_bestRequest_id_79 = (_zz_targets_1_bestRequest_id_78 ? _zz_targets_1_bestRequest_id_68 : _zz_targets_1_bestRequest_id_71);
  assign _zz_targets_1_bestRequest_id_80 = ((! _zz_targets_1_bestRequest_id_75) || (_zz_targets_1_bestRequest_id_73 && (_zz_targets_1_bestRequest_priority_1 <= _zz_targets_1_bestRequest_priority)));
  assign _zz_targets_1_bestRequest_priority_4 = (_zz_targets_1_bestRequest_id_80 ? _zz_targets_1_bestRequest_priority : _zz_targets_1_bestRequest_priority_1);
  assign _zz_targets_1_bestRequest_valid = (_zz_targets_1_bestRequest_id_80 ? _zz_targets_1_bestRequest_id_73 : _zz_targets_1_bestRequest_id_75);
  assign _zz_targets_1_bestRequest_id_81 = ((! _zz_targets_1_bestRequest_id_79) || (_zz_targets_1_bestRequest_id_77 && (_zz_targets_1_bestRequest_priority_3 <= _zz_targets_1_bestRequest_priority_2)));
  assign _zz_targets_1_bestRequest_priority_5 = (_zz_targets_1_bestRequest_id_81 ? _zz_targets_1_bestRequest_priority_2 : _zz_targets_1_bestRequest_priority_3);
  assign _zz_targets_1_bestRequest_valid_1 = (_zz_targets_1_bestRequest_id_81 ? _zz_targets_1_bestRequest_id_77 : _zz_targets_1_bestRequest_id_79);
  assign _zz_targets_1_bestRequest_priority_6 = ((! _zz_targets_1_bestRequest_valid_1) || (_zz_targets_1_bestRequest_valid && (_zz_targets_1_bestRequest_priority_5 <= _zz_targets_1_bestRequest_priority_4)));
  assign targets_1_iep = (targets_1_threshold < targets_1_bestRequest_priority);
  assign targets_1_claim = (targets_1_iep ? targets_1_bestRequest_id : 5'h0);
  assign io_targets = {targets_1_iep,targets_0_iep};
  assign bus_readErrorFlag = 1'b0;
  assign bus_writeErrorFlag = 1'b0;
  always @(*) begin
    bus_readHaltRequest = 1'b0;
    if(when_PlicMapper_l122) begin
      bus_readHaltRequest = 1'b1;
    end
  end

  assign bus_writeHaltRequest = 1'b0;
  assign bus_writeOccur = (bus_writeJoinEvent_valid && bus_writeJoinEvent_ready);
  assign bus_writeJoinEvent_valid = (io_bus_aw_valid && io_bus_w_valid);
  assign io_bus_aw_ready = bus_writeOccur;
  assign io_bus_w_ready = bus_writeOccur;
  assign bus_writeJoinEvent_translated_valid = bus_writeJoinEvent_valid;
  assign bus_writeJoinEvent_ready = bus_writeJoinEvent_translated_ready;
  assign bus_writeJoinEvent_translated_payload_resp = bus_writeRsp_resp;
  assign _zz_bus_writeJoinEvent_translated_ready = (! bus_writeHaltRequest);
  assign bus_writeJoinEvent_translated_haltWhen_valid = (bus_writeJoinEvent_translated_valid && _zz_bus_writeJoinEvent_translated_ready);
  assign bus_writeJoinEvent_translated_ready = (bus_writeJoinEvent_translated_haltWhen_ready && _zz_bus_writeJoinEvent_translated_ready);
  assign bus_writeJoinEvent_translated_haltWhen_payload_resp = bus_writeJoinEvent_translated_payload_resp;
  assign bus_writeJoinEvent_translated_haltWhen_halfPipe_fire = (bus_writeJoinEvent_translated_haltWhen_halfPipe_valid && bus_writeJoinEvent_translated_haltWhen_halfPipe_ready);
  assign bus_writeJoinEvent_translated_haltWhen_ready = (! bus_writeJoinEvent_translated_haltWhen_rValid);
  assign bus_writeJoinEvent_translated_haltWhen_halfPipe_valid = bus_writeJoinEvent_translated_haltWhen_rValid;
  assign bus_writeJoinEvent_translated_haltWhen_halfPipe_payload_resp = bus_writeJoinEvent_translated_haltWhen_rData_resp;
  assign io_bus_b_valid = bus_writeJoinEvent_translated_haltWhen_halfPipe_valid;
  assign bus_writeJoinEvent_translated_haltWhen_halfPipe_ready = io_bus_b_ready;
  assign io_bus_b_payload_resp = bus_writeJoinEvent_translated_haltWhen_halfPipe_payload_resp;
  assign bus_readDataStage_fire = (bus_readDataStage_valid && bus_readDataStage_ready);
  assign io_bus_ar_ready = (! io_bus_ar_rValid);
  assign bus_readDataStage_valid = io_bus_ar_rValid;
  assign bus_readDataStage_payload_addr = io_bus_ar_rData_addr;
  assign bus_readDataStage_payload_prot = io_bus_ar_rData_prot;
  assign _zz_bus_readDataStage_ready = (! bus_readHaltRequest);
  assign bus_readDataStage_haltWhen_valid = (bus_readDataStage_valid && _zz_bus_readDataStage_ready);
  assign bus_readDataStage_ready = (bus_readDataStage_haltWhen_ready && _zz_bus_readDataStage_ready);
  assign bus_readDataStage_haltWhen_payload_addr = bus_readDataStage_payload_addr;
  assign bus_readDataStage_haltWhen_payload_prot = bus_readDataStage_payload_prot;
  assign bus_readDataStage_haltWhen_translated_valid = bus_readDataStage_haltWhen_valid;
  assign bus_readDataStage_haltWhen_ready = bus_readDataStage_haltWhen_translated_ready;
  assign bus_readDataStage_haltWhen_translated_payload_data = bus_readRsp_data;
  assign bus_readDataStage_haltWhen_translated_payload_resp = bus_readRsp_resp;
  assign io_bus_r_valid = bus_readDataStage_haltWhen_translated_valid;
  assign bus_readDataStage_haltWhen_translated_ready = io_bus_r_ready;
  assign io_bus_r_payload_data = bus_readDataStage_haltWhen_translated_payload_data;
  assign io_bus_r_payload_resp = bus_readDataStage_haltWhen_translated_payload_resp;
  always @(*) begin
    if(bus_writeErrorFlag) begin
      bus_writeRsp_resp = 2'b10;
    end else begin
      bus_writeRsp_resp = 2'b00;
    end
  end

  always @(*) begin
    if(bus_readErrorFlag) begin
      bus_readRsp_resp = 2'b10;
    end else begin
      bus_readRsp_resp = 2'b00;
    end
  end

  always @(*) begin
    bus_readRsp_data = 32'h0;
    case(bus_readAddressMasked)
      22'h000004 : begin
        bus_readRsp_data[1 : 0] = gateways_0_priority;
      end
      22'h001000 : begin
        bus_readRsp_data[1 : 1] = gateways_0_ip;
        bus_readRsp_data[2 : 2] = gateways_1_ip;
        bus_readRsp_data[3 : 3] = gateways_2_ip;
        bus_readRsp_data[4 : 4] = gateways_3_ip;
        bus_readRsp_data[5 : 5] = gateways_4_ip;
        bus_readRsp_data[6 : 6] = gateways_5_ip;
        bus_readRsp_data[7 : 7] = gateways_6_ip;
        bus_readRsp_data[8 : 8] = gateways_7_ip;
        bus_readRsp_data[9 : 9] = gateways_8_ip;
        bus_readRsp_data[10 : 10] = gateways_9_ip;
        bus_readRsp_data[11 : 11] = gateways_10_ip;
        bus_readRsp_data[12 : 12] = gateways_11_ip;
        bus_readRsp_data[13 : 13] = gateways_12_ip;
        bus_readRsp_data[14 : 14] = gateways_13_ip;
        bus_readRsp_data[15 : 15] = gateways_14_ip;
        bus_readRsp_data[16 : 16] = gateways_15_ip;
        bus_readRsp_data[17 : 17] = gateways_16_ip;
        bus_readRsp_data[18 : 18] = gateways_17_ip;
        bus_readRsp_data[19 : 19] = gateways_18_ip;
        bus_readRsp_data[20 : 20] = gateways_19_ip;
        bus_readRsp_data[21 : 21] = gateways_20_ip;
        bus_readRsp_data[22 : 22] = gateways_21_ip;
        bus_readRsp_data[23 : 23] = gateways_22_ip;
        bus_readRsp_data[24 : 24] = gateways_23_ip;
        bus_readRsp_data[25 : 25] = gateways_24_ip;
        bus_readRsp_data[26 : 26] = gateways_25_ip;
        bus_readRsp_data[27 : 27] = gateways_26_ip;
        bus_readRsp_data[28 : 28] = gateways_27_ip;
        bus_readRsp_data[29 : 29] = gateways_28_ip;
        bus_readRsp_data[30 : 30] = gateways_29_ip;
        bus_readRsp_data[31 : 31] = gateways_30_ip;
      end
      22'h000008 : begin
        bus_readRsp_data[1 : 0] = gateways_1_priority;
      end
      22'h00000c : begin
        bus_readRsp_data[1 : 0] = gateways_2_priority;
      end
      22'h000010 : begin
        bus_readRsp_data[1 : 0] = gateways_3_priority;
      end
      22'h000014 : begin
        bus_readRsp_data[1 : 0] = gateways_4_priority;
      end
      22'h000018 : begin
        bus_readRsp_data[1 : 0] = gateways_5_priority;
      end
      22'h00001c : begin
        bus_readRsp_data[1 : 0] = gateways_6_priority;
      end
      22'h000020 : begin
        bus_readRsp_data[1 : 0] = gateways_7_priority;
      end
      22'h000024 : begin
        bus_readRsp_data[1 : 0] = gateways_8_priority;
      end
      22'h000028 : begin
        bus_readRsp_data[1 : 0] = gateways_9_priority;
      end
      22'h00002c : begin
        bus_readRsp_data[1 : 0] = gateways_10_priority;
      end
      22'h000030 : begin
        bus_readRsp_data[1 : 0] = gateways_11_priority;
      end
      22'h000034 : begin
        bus_readRsp_data[1 : 0] = gateways_12_priority;
      end
      22'h000038 : begin
        bus_readRsp_data[1 : 0] = gateways_13_priority;
      end
      22'h00003c : begin
        bus_readRsp_data[1 : 0] = gateways_14_priority;
      end
      22'h000040 : begin
        bus_readRsp_data[1 : 0] = gateways_15_priority;
      end
      22'h000044 : begin
        bus_readRsp_data[1 : 0] = gateways_16_priority;
      end
      22'h000048 : begin
        bus_readRsp_data[1 : 0] = gateways_17_priority;
      end
      22'h00004c : begin
        bus_readRsp_data[1 : 0] = gateways_18_priority;
      end
      22'h000050 : begin
        bus_readRsp_data[1 : 0] = gateways_19_priority;
      end
      22'h000054 : begin
        bus_readRsp_data[1 : 0] = gateways_20_priority;
      end
      22'h000058 : begin
        bus_readRsp_data[1 : 0] = gateways_21_priority;
      end
      22'h00005c : begin
        bus_readRsp_data[1 : 0] = gateways_22_priority;
      end
      22'h000060 : begin
        bus_readRsp_data[1 : 0] = gateways_23_priority;
      end
      22'h000064 : begin
        bus_readRsp_data[1 : 0] = gateways_24_priority;
      end
      22'h000068 : begin
        bus_readRsp_data[1 : 0] = gateways_25_priority;
      end
      22'h00006c : begin
        bus_readRsp_data[1 : 0] = gateways_26_priority;
      end
      22'h000070 : begin
        bus_readRsp_data[1 : 0] = gateways_27_priority;
      end
      22'h000074 : begin
        bus_readRsp_data[1 : 0] = gateways_28_priority;
      end
      22'h000078 : begin
        bus_readRsp_data[1 : 0] = gateways_29_priority;
      end
      22'h00007c : begin
        bus_readRsp_data[1 : 0] = gateways_30_priority;
      end
      22'h200000 : begin
        bus_readRsp_data[1 : 0] = targets_0_threshold;
      end
      22'h200004 : begin
        bus_readRsp_data[4 : 0] = targets_0_claim;
      end
      22'h002000 : begin
        bus_readRsp_data[1 : 1] = targets_0_ie_0;
        bus_readRsp_data[2 : 2] = targets_0_ie_1;
        bus_readRsp_data[3 : 3] = targets_0_ie_2;
        bus_readRsp_data[4 : 4] = targets_0_ie_3;
        bus_readRsp_data[5 : 5] = targets_0_ie_4;
        bus_readRsp_data[6 : 6] = targets_0_ie_5;
        bus_readRsp_data[7 : 7] = targets_0_ie_6;
        bus_readRsp_data[8 : 8] = targets_0_ie_7;
        bus_readRsp_data[9 : 9] = targets_0_ie_8;
        bus_readRsp_data[10 : 10] = targets_0_ie_9;
        bus_readRsp_data[11 : 11] = targets_0_ie_10;
        bus_readRsp_data[12 : 12] = targets_0_ie_11;
        bus_readRsp_data[13 : 13] = targets_0_ie_12;
        bus_readRsp_data[14 : 14] = targets_0_ie_13;
        bus_readRsp_data[15 : 15] = targets_0_ie_14;
        bus_readRsp_data[16 : 16] = targets_0_ie_15;
        bus_readRsp_data[17 : 17] = targets_0_ie_16;
        bus_readRsp_data[18 : 18] = targets_0_ie_17;
        bus_readRsp_data[19 : 19] = targets_0_ie_18;
        bus_readRsp_data[20 : 20] = targets_0_ie_19;
        bus_readRsp_data[21 : 21] = targets_0_ie_20;
        bus_readRsp_data[22 : 22] = targets_0_ie_21;
        bus_readRsp_data[23 : 23] = targets_0_ie_22;
        bus_readRsp_data[24 : 24] = targets_0_ie_23;
        bus_readRsp_data[25 : 25] = targets_0_ie_24;
        bus_readRsp_data[26 : 26] = targets_0_ie_25;
        bus_readRsp_data[27 : 27] = targets_0_ie_26;
        bus_readRsp_data[28 : 28] = targets_0_ie_27;
        bus_readRsp_data[29 : 29] = targets_0_ie_28;
        bus_readRsp_data[30 : 30] = targets_0_ie_29;
        bus_readRsp_data[31 : 31] = targets_0_ie_30;
      end
      22'h201000 : begin
        bus_readRsp_data[1 : 0] = targets_1_threshold;
      end
      22'h201004 : begin
        bus_readRsp_data[4 : 0] = targets_1_claim;
      end
      22'h002080 : begin
        bus_readRsp_data[1 : 1] = targets_1_ie_0;
        bus_readRsp_data[2 : 2] = targets_1_ie_1;
        bus_readRsp_data[3 : 3] = targets_1_ie_2;
        bus_readRsp_data[4 : 4] = targets_1_ie_3;
        bus_readRsp_data[5 : 5] = targets_1_ie_4;
        bus_readRsp_data[6 : 6] = targets_1_ie_5;
        bus_readRsp_data[7 : 7] = targets_1_ie_6;
        bus_readRsp_data[8 : 8] = targets_1_ie_7;
        bus_readRsp_data[9 : 9] = targets_1_ie_8;
        bus_readRsp_data[10 : 10] = targets_1_ie_9;
        bus_readRsp_data[11 : 11] = targets_1_ie_10;
        bus_readRsp_data[12 : 12] = targets_1_ie_11;
        bus_readRsp_data[13 : 13] = targets_1_ie_12;
        bus_readRsp_data[14 : 14] = targets_1_ie_13;
        bus_readRsp_data[15 : 15] = targets_1_ie_14;
        bus_readRsp_data[16 : 16] = targets_1_ie_15;
        bus_readRsp_data[17 : 17] = targets_1_ie_16;
        bus_readRsp_data[18 : 18] = targets_1_ie_17;
        bus_readRsp_data[19 : 19] = targets_1_ie_18;
        bus_readRsp_data[20 : 20] = targets_1_ie_19;
        bus_readRsp_data[21 : 21] = targets_1_ie_20;
        bus_readRsp_data[22 : 22] = targets_1_ie_21;
        bus_readRsp_data[23 : 23] = targets_1_ie_22;
        bus_readRsp_data[24 : 24] = targets_1_ie_23;
        bus_readRsp_data[25 : 25] = targets_1_ie_24;
        bus_readRsp_data[26 : 26] = targets_1_ie_25;
        bus_readRsp_data[27 : 27] = targets_1_ie_26;
        bus_readRsp_data[28 : 28] = targets_1_ie_27;
        bus_readRsp_data[29 : 29] = targets_1_ie_28;
        bus_readRsp_data[30 : 30] = targets_1_ie_29;
        bus_readRsp_data[31 : 31] = targets_1_ie_30;
      end
      default : begin
      end
    endcase
  end

  assign bus_readAddressMasked = (bus_readDataStage_payload_addr & (~ 22'h000003));
  assign bus_writeAddressMasked = (io_bus_aw_payload_addr & (~ 22'h000003));
  assign bus_readOccur = (io_bus_r_valid && io_bus_r_ready);
  assign gateways_0_priority = gateways_0_priority_driver;
  assign gateways_1_priority = gateways_1_priority_driver;
  assign gateways_2_priority = gateways_2_priority_driver;
  assign gateways_3_priority = gateways_3_priority_driver;
  assign gateways_4_priority = gateways_4_priority_driver;
  assign gateways_5_priority = gateways_5_priority_driver;
  assign gateways_6_priority = gateways_6_priority_driver;
  assign gateways_7_priority = gateways_7_priority_driver;
  assign gateways_8_priority = gateways_8_priority_driver;
  assign gateways_9_priority = gateways_9_priority_driver;
  assign gateways_10_priority = gateways_10_priority_driver;
  assign gateways_11_priority = gateways_11_priority_driver;
  assign gateways_12_priority = gateways_12_priority_driver;
  assign gateways_13_priority = gateways_13_priority_driver;
  assign gateways_14_priority = gateways_14_priority_driver;
  assign gateways_15_priority = gateways_15_priority_driver;
  assign gateways_16_priority = gateways_16_priority_driver;
  assign gateways_17_priority = gateways_17_priority_driver;
  assign gateways_18_priority = gateways_18_priority_driver;
  assign gateways_19_priority = gateways_19_priority_driver;
  assign gateways_20_priority = gateways_20_priority_driver;
  assign gateways_21_priority = gateways_21_priority_driver;
  assign gateways_22_priority = gateways_22_priority_driver;
  assign gateways_23_priority = gateways_23_priority_driver;
  assign gateways_24_priority = gateways_24_priority_driver;
  assign gateways_25_priority = gateways_25_priority_driver;
  assign gateways_26_priority = gateways_26_priority_driver;
  assign gateways_27_priority = gateways_27_priority_driver;
  assign gateways_28_priority = gateways_28_priority_driver;
  assign gateways_29_priority = gateways_29_priority_driver;
  assign gateways_30_priority = gateways_30_priority_driver;
  always @(*) begin
    mapping_claim_valid = 1'b0;
    case(bus_readAddressMasked)
      22'h200004 : begin
        if(bus_readOccur) begin
          mapping_claim_valid = 1'b1;
        end
      end
      22'h201004 : begin
        if(bus_readOccur) begin
          mapping_claim_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    mapping_claim_payload = 5'bxxxxx;
    case(bus_readAddressMasked)
      22'h200004 : begin
        if(bus_readOccur) begin
          mapping_claim_payload = targets_0_claim;
        end
      end
      22'h201004 : begin
        if(bus_readOccur) begin
          mapping_claim_payload = targets_1_claim;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    mapping_completion_valid = 1'b0;
    if(mapping_targetMapping_0_targetCompletion_valid) begin
      mapping_completion_valid = 1'b1;
    end
    if(mapping_targetMapping_1_targetCompletion_valid) begin
      mapping_completion_valid = 1'b1;
    end
  end

  always @(*) begin
    mapping_completion_payload = 5'bxxxxx;
    if(mapping_targetMapping_0_targetCompletion_valid) begin
      mapping_completion_payload = mapping_targetMapping_0_targetCompletion_payload;
    end
    if(mapping_targetMapping_1_targetCompletion_valid) begin
      mapping_completion_payload = mapping_targetMapping_1_targetCompletion_payload;
    end
  end

  always @(*) begin
    mapping_coherencyStall_willIncrement = 1'b0;
    if(when_PlicMapper_l122) begin
      mapping_coherencyStall_willIncrement = 1'b1;
    end
    if(when_AxiLite4SlaveFactory_l68) begin
      if(bus_writeJoinEvent_valid) begin
        mapping_coherencyStall_willIncrement = 1'b1;
      end
    end
    if(when_AxiLite4SlaveFactory_l86) begin
      if(bus_readDataStage_valid) begin
        mapping_coherencyStall_willIncrement = 1'b1;
      end
    end
  end

  assign mapping_coherencyStall_willClear = 1'b0;
  assign mapping_coherencyStall_willOverflowIfInc = (mapping_coherencyStall_value == 1'b1);
  assign mapping_coherencyStall_willOverflow = (mapping_coherencyStall_willOverflowIfInc && mapping_coherencyStall_willIncrement);
  always @(*) begin
    mapping_coherencyStall_valueNext = (mapping_coherencyStall_value + mapping_coherencyStall_willIncrement);
    if(mapping_coherencyStall_willClear) begin
      mapping_coherencyStall_valueNext = 1'b0;
    end
  end

  assign when_PlicMapper_l122 = (mapping_coherencyStall_value != 1'b0);
  assign targets_0_threshold = targets_0_threshold_driver;
  always @(*) begin
    mapping_targetMapping_0_targetCompletion_valid = 1'b0;
    case(bus_writeAddressMasked)
      22'h200004 : begin
        if(bus_writeOccur) begin
          mapping_targetMapping_0_targetCompletion_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign targets_0_ie_0 = targets_0_ie_0_driver;
  assign targets_0_ie_1 = targets_0_ie_1_driver;
  assign targets_0_ie_2 = targets_0_ie_2_driver;
  assign targets_0_ie_3 = targets_0_ie_3_driver;
  assign targets_0_ie_4 = targets_0_ie_4_driver;
  assign targets_0_ie_5 = targets_0_ie_5_driver;
  assign targets_0_ie_6 = targets_0_ie_6_driver;
  assign targets_0_ie_7 = targets_0_ie_7_driver;
  assign targets_0_ie_8 = targets_0_ie_8_driver;
  assign targets_0_ie_9 = targets_0_ie_9_driver;
  assign targets_0_ie_10 = targets_0_ie_10_driver;
  assign targets_0_ie_11 = targets_0_ie_11_driver;
  assign targets_0_ie_12 = targets_0_ie_12_driver;
  assign targets_0_ie_13 = targets_0_ie_13_driver;
  assign targets_0_ie_14 = targets_0_ie_14_driver;
  assign targets_0_ie_15 = targets_0_ie_15_driver;
  assign targets_0_ie_16 = targets_0_ie_16_driver;
  assign targets_0_ie_17 = targets_0_ie_17_driver;
  assign targets_0_ie_18 = targets_0_ie_18_driver;
  assign targets_0_ie_19 = targets_0_ie_19_driver;
  assign targets_0_ie_20 = targets_0_ie_20_driver;
  assign targets_0_ie_21 = targets_0_ie_21_driver;
  assign targets_0_ie_22 = targets_0_ie_22_driver;
  assign targets_0_ie_23 = targets_0_ie_23_driver;
  assign targets_0_ie_24 = targets_0_ie_24_driver;
  assign targets_0_ie_25 = targets_0_ie_25_driver;
  assign targets_0_ie_26 = targets_0_ie_26_driver;
  assign targets_0_ie_27 = targets_0_ie_27_driver;
  assign targets_0_ie_28 = targets_0_ie_28_driver;
  assign targets_0_ie_29 = targets_0_ie_29_driver;
  assign targets_0_ie_30 = targets_0_ie_30_driver;
  assign targets_1_threshold = targets_1_threshold_driver;
  always @(*) begin
    mapping_targetMapping_1_targetCompletion_valid = 1'b0;
    case(bus_writeAddressMasked)
      22'h201004 : begin
        if(bus_writeOccur) begin
          mapping_targetMapping_1_targetCompletion_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign targets_1_ie_0 = targets_1_ie_0_driver;
  assign targets_1_ie_1 = targets_1_ie_1_driver;
  assign targets_1_ie_2 = targets_1_ie_2_driver;
  assign targets_1_ie_3 = targets_1_ie_3_driver;
  assign targets_1_ie_4 = targets_1_ie_4_driver;
  assign targets_1_ie_5 = targets_1_ie_5_driver;
  assign targets_1_ie_6 = targets_1_ie_6_driver;
  assign targets_1_ie_7 = targets_1_ie_7_driver;
  assign targets_1_ie_8 = targets_1_ie_8_driver;
  assign targets_1_ie_9 = targets_1_ie_9_driver;
  assign targets_1_ie_10 = targets_1_ie_10_driver;
  assign targets_1_ie_11 = targets_1_ie_11_driver;
  assign targets_1_ie_12 = targets_1_ie_12_driver;
  assign targets_1_ie_13 = targets_1_ie_13_driver;
  assign targets_1_ie_14 = targets_1_ie_14_driver;
  assign targets_1_ie_15 = targets_1_ie_15_driver;
  assign targets_1_ie_16 = targets_1_ie_16_driver;
  assign targets_1_ie_17 = targets_1_ie_17_driver;
  assign targets_1_ie_18 = targets_1_ie_18_driver;
  assign targets_1_ie_19 = targets_1_ie_19_driver;
  assign targets_1_ie_20 = targets_1_ie_20_driver;
  assign targets_1_ie_21 = targets_1_ie_21_driver;
  assign targets_1_ie_22 = targets_1_ie_22_driver;
  assign targets_1_ie_23 = targets_1_ie_23_driver;
  assign targets_1_ie_24 = targets_1_ie_24_driver;
  assign targets_1_ie_25 = targets_1_ie_25_driver;
  assign targets_1_ie_26 = targets_1_ie_26_driver;
  assign targets_1_ie_27 = targets_1_ie_27_driver;
  assign targets_1_ie_28 = targets_1_ie_28_driver;
  assign targets_1_ie_29 = targets_1_ie_29_driver;
  assign targets_1_ie_30 = targets_1_ie_30_driver;
  assign mapping_targetMapping_0_targetCompletion_payload = io_bus_w_payload_data[4 : 0];
  assign mapping_targetMapping_1_targetCompletion_payload = io_bus_w_payload_data[4 : 0];
  assign when_AxiLite4SlaveFactory_l68 = 1'b1;
  assign when_AxiLite4SlaveFactory_l86 = 1'b1;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      gateways_0_ip <= 1'b0;
      gateways_0_waitCompletion <= 1'b0;
      gateways_1_ip <= 1'b0;
      gateways_1_waitCompletion <= 1'b0;
      gateways_2_ip <= 1'b0;
      gateways_2_waitCompletion <= 1'b0;
      gateways_3_ip <= 1'b0;
      gateways_3_waitCompletion <= 1'b0;
      gateways_4_ip <= 1'b0;
      gateways_4_waitCompletion <= 1'b0;
      gateways_5_ip <= 1'b0;
      gateways_5_waitCompletion <= 1'b0;
      gateways_6_ip <= 1'b0;
      gateways_6_waitCompletion <= 1'b0;
      gateways_7_ip <= 1'b0;
      gateways_7_waitCompletion <= 1'b0;
      gateways_8_ip <= 1'b0;
      gateways_8_waitCompletion <= 1'b0;
      gateways_9_ip <= 1'b0;
      gateways_9_waitCompletion <= 1'b0;
      gateways_10_ip <= 1'b0;
      gateways_10_waitCompletion <= 1'b0;
      gateways_11_ip <= 1'b0;
      gateways_11_waitCompletion <= 1'b0;
      gateways_12_ip <= 1'b0;
      gateways_12_waitCompletion <= 1'b0;
      gateways_13_ip <= 1'b0;
      gateways_13_waitCompletion <= 1'b0;
      gateways_14_ip <= 1'b0;
      gateways_14_waitCompletion <= 1'b0;
      gateways_15_ip <= 1'b0;
      gateways_15_waitCompletion <= 1'b0;
      gateways_16_ip <= 1'b0;
      gateways_16_waitCompletion <= 1'b0;
      gateways_17_ip <= 1'b0;
      gateways_17_waitCompletion <= 1'b0;
      gateways_18_ip <= 1'b0;
      gateways_18_waitCompletion <= 1'b0;
      gateways_19_ip <= 1'b0;
      gateways_19_waitCompletion <= 1'b0;
      gateways_20_ip <= 1'b0;
      gateways_20_waitCompletion <= 1'b0;
      gateways_21_ip <= 1'b0;
      gateways_21_waitCompletion <= 1'b0;
      gateways_22_ip <= 1'b0;
      gateways_22_waitCompletion <= 1'b0;
      gateways_23_ip <= 1'b0;
      gateways_23_waitCompletion <= 1'b0;
      gateways_24_ip <= 1'b0;
      gateways_24_waitCompletion <= 1'b0;
      gateways_25_ip <= 1'b0;
      gateways_25_waitCompletion <= 1'b0;
      gateways_26_ip <= 1'b0;
      gateways_26_waitCompletion <= 1'b0;
      gateways_27_ip <= 1'b0;
      gateways_27_waitCompletion <= 1'b0;
      gateways_28_ip <= 1'b0;
      gateways_28_waitCompletion <= 1'b0;
      gateways_29_ip <= 1'b0;
      gateways_29_waitCompletion <= 1'b0;
      gateways_30_ip <= 1'b0;
      gateways_30_waitCompletion <= 1'b0;
      bus_writeJoinEvent_translated_haltWhen_rValid <= 1'b0;
      io_bus_ar_rValid <= 1'b0;
      gateways_0_priority_driver <= 2'b00;
      gateways_1_priority_driver <= 2'b00;
      gateways_2_priority_driver <= 2'b00;
      gateways_3_priority_driver <= 2'b00;
      gateways_4_priority_driver <= 2'b00;
      gateways_5_priority_driver <= 2'b00;
      gateways_6_priority_driver <= 2'b00;
      gateways_7_priority_driver <= 2'b00;
      gateways_8_priority_driver <= 2'b00;
      gateways_9_priority_driver <= 2'b00;
      gateways_10_priority_driver <= 2'b00;
      gateways_11_priority_driver <= 2'b00;
      gateways_12_priority_driver <= 2'b00;
      gateways_13_priority_driver <= 2'b00;
      gateways_14_priority_driver <= 2'b00;
      gateways_15_priority_driver <= 2'b00;
      gateways_16_priority_driver <= 2'b00;
      gateways_17_priority_driver <= 2'b00;
      gateways_18_priority_driver <= 2'b00;
      gateways_19_priority_driver <= 2'b00;
      gateways_20_priority_driver <= 2'b00;
      gateways_21_priority_driver <= 2'b00;
      gateways_22_priority_driver <= 2'b00;
      gateways_23_priority_driver <= 2'b00;
      gateways_24_priority_driver <= 2'b00;
      gateways_25_priority_driver <= 2'b00;
      gateways_26_priority_driver <= 2'b00;
      gateways_27_priority_driver <= 2'b00;
      gateways_28_priority_driver <= 2'b00;
      gateways_29_priority_driver <= 2'b00;
      gateways_30_priority_driver <= 2'b00;
      mapping_coherencyStall_value <= 1'b0;
      targets_0_threshold_driver <= 2'b00;
      targets_0_ie_0_driver <= 1'b0;
      targets_0_ie_1_driver <= 1'b0;
      targets_0_ie_2_driver <= 1'b0;
      targets_0_ie_3_driver <= 1'b0;
      targets_0_ie_4_driver <= 1'b0;
      targets_0_ie_5_driver <= 1'b0;
      targets_0_ie_6_driver <= 1'b0;
      targets_0_ie_7_driver <= 1'b0;
      targets_0_ie_8_driver <= 1'b0;
      targets_0_ie_9_driver <= 1'b0;
      targets_0_ie_10_driver <= 1'b0;
      targets_0_ie_11_driver <= 1'b0;
      targets_0_ie_12_driver <= 1'b0;
      targets_0_ie_13_driver <= 1'b0;
      targets_0_ie_14_driver <= 1'b0;
      targets_0_ie_15_driver <= 1'b0;
      targets_0_ie_16_driver <= 1'b0;
      targets_0_ie_17_driver <= 1'b0;
      targets_0_ie_18_driver <= 1'b0;
      targets_0_ie_19_driver <= 1'b0;
      targets_0_ie_20_driver <= 1'b0;
      targets_0_ie_21_driver <= 1'b0;
      targets_0_ie_22_driver <= 1'b0;
      targets_0_ie_23_driver <= 1'b0;
      targets_0_ie_24_driver <= 1'b0;
      targets_0_ie_25_driver <= 1'b0;
      targets_0_ie_26_driver <= 1'b0;
      targets_0_ie_27_driver <= 1'b0;
      targets_0_ie_28_driver <= 1'b0;
      targets_0_ie_29_driver <= 1'b0;
      targets_0_ie_30_driver <= 1'b0;
      targets_1_threshold_driver <= 2'b00;
      targets_1_ie_0_driver <= 1'b0;
      targets_1_ie_1_driver <= 1'b0;
      targets_1_ie_2_driver <= 1'b0;
      targets_1_ie_3_driver <= 1'b0;
      targets_1_ie_4_driver <= 1'b0;
      targets_1_ie_5_driver <= 1'b0;
      targets_1_ie_6_driver <= 1'b0;
      targets_1_ie_7_driver <= 1'b0;
      targets_1_ie_8_driver <= 1'b0;
      targets_1_ie_9_driver <= 1'b0;
      targets_1_ie_10_driver <= 1'b0;
      targets_1_ie_11_driver <= 1'b0;
      targets_1_ie_12_driver <= 1'b0;
      targets_1_ie_13_driver <= 1'b0;
      targets_1_ie_14_driver <= 1'b0;
      targets_1_ie_15_driver <= 1'b0;
      targets_1_ie_16_driver <= 1'b0;
      targets_1_ie_17_driver <= 1'b0;
      targets_1_ie_18_driver <= 1'b0;
      targets_1_ie_19_driver <= 1'b0;
      targets_1_ie_20_driver <= 1'b0;
      targets_1_ie_21_driver <= 1'b0;
      targets_1_ie_22_driver <= 1'b0;
      targets_1_ie_23_driver <= 1'b0;
      targets_1_ie_24_driver <= 1'b0;
      targets_1_ie_25_driver <= 1'b0;
      targets_1_ie_26_driver <= 1'b0;
      targets_1_ie_27_driver <= 1'b0;
      targets_1_ie_28_driver <= 1'b0;
      targets_1_ie_29_driver <= 1'b0;
      targets_1_ie_30_driver <= 1'b0;
    end else begin
      if(when_PlicGateway_l21) begin
        gateways_0_ip <= _zz_gateways_0_ip;
        gateways_0_waitCompletion <= _zz_gateways_0_ip;
      end
      if(when_PlicGateway_l21_1) begin
        gateways_1_ip <= _zz_gateways_1_ip;
        gateways_1_waitCompletion <= _zz_gateways_1_ip;
      end
      if(when_PlicGateway_l21_2) begin
        gateways_2_ip <= _zz_gateways_2_ip;
        gateways_2_waitCompletion <= _zz_gateways_2_ip;
      end
      if(when_PlicGateway_l21_3) begin
        gateways_3_ip <= _zz_gateways_3_ip;
        gateways_3_waitCompletion <= _zz_gateways_3_ip;
      end
      if(when_PlicGateway_l21_4) begin
        gateways_4_ip <= _zz_gateways_4_ip;
        gateways_4_waitCompletion <= _zz_gateways_4_ip;
      end
      if(when_PlicGateway_l21_5) begin
        gateways_5_ip <= _zz_gateways_5_ip;
        gateways_5_waitCompletion <= _zz_gateways_5_ip;
      end
      if(when_PlicGateway_l21_6) begin
        gateways_6_ip <= _zz_gateways_6_ip;
        gateways_6_waitCompletion <= _zz_gateways_6_ip;
      end
      if(when_PlicGateway_l21_7) begin
        gateways_7_ip <= _zz_gateways_7_ip;
        gateways_7_waitCompletion <= _zz_gateways_7_ip;
      end
      if(when_PlicGateway_l21_8) begin
        gateways_8_ip <= _zz_gateways_8_ip;
        gateways_8_waitCompletion <= _zz_gateways_8_ip;
      end
      if(when_PlicGateway_l21_9) begin
        gateways_9_ip <= _zz_gateways_9_ip;
        gateways_9_waitCompletion <= _zz_gateways_9_ip;
      end
      if(when_PlicGateway_l21_10) begin
        gateways_10_ip <= _zz_gateways_10_ip;
        gateways_10_waitCompletion <= _zz_gateways_10_ip;
      end
      if(when_PlicGateway_l21_11) begin
        gateways_11_ip <= _zz_gateways_11_ip;
        gateways_11_waitCompletion <= _zz_gateways_11_ip;
      end
      if(when_PlicGateway_l21_12) begin
        gateways_12_ip <= _zz_gateways_12_ip;
        gateways_12_waitCompletion <= _zz_gateways_12_ip;
      end
      if(when_PlicGateway_l21_13) begin
        gateways_13_ip <= _zz_gateways_13_ip;
        gateways_13_waitCompletion <= _zz_gateways_13_ip;
      end
      if(when_PlicGateway_l21_14) begin
        gateways_14_ip <= _zz_gateways_14_ip;
        gateways_14_waitCompletion <= _zz_gateways_14_ip;
      end
      if(when_PlicGateway_l21_15) begin
        gateways_15_ip <= _zz_gateways_15_ip;
        gateways_15_waitCompletion <= _zz_gateways_15_ip;
      end
      if(when_PlicGateway_l21_16) begin
        gateways_16_ip <= _zz_gateways_16_ip;
        gateways_16_waitCompletion <= _zz_gateways_16_ip;
      end
      if(when_PlicGateway_l21_17) begin
        gateways_17_ip <= _zz_gateways_17_ip;
        gateways_17_waitCompletion <= _zz_gateways_17_ip;
      end
      if(when_PlicGateway_l21_18) begin
        gateways_18_ip <= _zz_gateways_18_ip;
        gateways_18_waitCompletion <= _zz_gateways_18_ip;
      end
      if(when_PlicGateway_l21_19) begin
        gateways_19_ip <= _zz_gateways_19_ip;
        gateways_19_waitCompletion <= _zz_gateways_19_ip;
      end
      if(when_PlicGateway_l21_20) begin
        gateways_20_ip <= _zz_gateways_20_ip;
        gateways_20_waitCompletion <= _zz_gateways_20_ip;
      end
      if(when_PlicGateway_l21_21) begin
        gateways_21_ip <= _zz_gateways_21_ip;
        gateways_21_waitCompletion <= _zz_gateways_21_ip;
      end
      if(when_PlicGateway_l21_22) begin
        gateways_22_ip <= _zz_gateways_22_ip;
        gateways_22_waitCompletion <= _zz_gateways_22_ip;
      end
      if(when_PlicGateway_l21_23) begin
        gateways_23_ip <= _zz_gateways_23_ip;
        gateways_23_waitCompletion <= _zz_gateways_23_ip;
      end
      if(when_PlicGateway_l21_24) begin
        gateways_24_ip <= _zz_gateways_24_ip;
        gateways_24_waitCompletion <= _zz_gateways_24_ip;
      end
      if(when_PlicGateway_l21_25) begin
        gateways_25_ip <= _zz_gateways_25_ip;
        gateways_25_waitCompletion <= _zz_gateways_25_ip;
      end
      if(when_PlicGateway_l21_26) begin
        gateways_26_ip <= _zz_gateways_26_ip;
        gateways_26_waitCompletion <= _zz_gateways_26_ip;
      end
      if(when_PlicGateway_l21_27) begin
        gateways_27_ip <= _zz_gateways_27_ip;
        gateways_27_waitCompletion <= _zz_gateways_27_ip;
      end
      if(when_PlicGateway_l21_28) begin
        gateways_28_ip <= _zz_gateways_28_ip;
        gateways_28_waitCompletion <= _zz_gateways_28_ip;
      end
      if(when_PlicGateway_l21_29) begin
        gateways_29_ip <= _zz_gateways_29_ip;
        gateways_29_waitCompletion <= _zz_gateways_29_ip;
      end
      if(when_PlicGateway_l21_30) begin
        gateways_30_ip <= _zz_gateways_30_ip;
        gateways_30_waitCompletion <= _zz_gateways_30_ip;
      end
      if(bus_writeJoinEvent_translated_haltWhen_valid) begin
        bus_writeJoinEvent_translated_haltWhen_rValid <= 1'b1;
      end
      if(bus_writeJoinEvent_translated_haltWhen_halfPipe_fire) begin
        bus_writeJoinEvent_translated_haltWhen_rValid <= 1'b0;
      end
      if(io_bus_ar_valid) begin
        io_bus_ar_rValid <= 1'b1;
      end
      if(bus_readDataStage_fire) begin
        io_bus_ar_rValid <= 1'b0;
      end
      if(mapping_claim_valid) begin
        case(mapping_claim_payload)
          5'h01 : begin
            gateways_0_ip <= 1'b0;
          end
          5'h02 : begin
            gateways_1_ip <= 1'b0;
          end
          5'h03 : begin
            gateways_2_ip <= 1'b0;
          end
          5'h04 : begin
            gateways_3_ip <= 1'b0;
          end
          5'h05 : begin
            gateways_4_ip <= 1'b0;
          end
          5'h06 : begin
            gateways_5_ip <= 1'b0;
          end
          5'h07 : begin
            gateways_6_ip <= 1'b0;
          end
          5'h08 : begin
            gateways_7_ip <= 1'b0;
          end
          5'h09 : begin
            gateways_8_ip <= 1'b0;
          end
          5'h0a : begin
            gateways_9_ip <= 1'b0;
          end
          5'h0b : begin
            gateways_10_ip <= 1'b0;
          end
          5'h0c : begin
            gateways_11_ip <= 1'b0;
          end
          5'h0d : begin
            gateways_12_ip <= 1'b0;
          end
          5'h0e : begin
            gateways_13_ip <= 1'b0;
          end
          5'h0f : begin
            gateways_14_ip <= 1'b0;
          end
          5'h10 : begin
            gateways_15_ip <= 1'b0;
          end
          5'h11 : begin
            gateways_16_ip <= 1'b0;
          end
          5'h12 : begin
            gateways_17_ip <= 1'b0;
          end
          5'h13 : begin
            gateways_18_ip <= 1'b0;
          end
          5'h14 : begin
            gateways_19_ip <= 1'b0;
          end
          5'h15 : begin
            gateways_20_ip <= 1'b0;
          end
          5'h16 : begin
            gateways_21_ip <= 1'b0;
          end
          5'h17 : begin
            gateways_22_ip <= 1'b0;
          end
          5'h18 : begin
            gateways_23_ip <= 1'b0;
          end
          5'h19 : begin
            gateways_24_ip <= 1'b0;
          end
          5'h1a : begin
            gateways_25_ip <= 1'b0;
          end
          5'h1b : begin
            gateways_26_ip <= 1'b0;
          end
          5'h1c : begin
            gateways_27_ip <= 1'b0;
          end
          5'h1d : begin
            gateways_28_ip <= 1'b0;
          end
          5'h1e : begin
            gateways_29_ip <= 1'b0;
          end
          5'h1f : begin
            gateways_30_ip <= 1'b0;
          end
          default : begin
          end
        endcase
      end
      if(mapping_completion_valid) begin
        case(mapping_completion_payload)
          5'h01 : begin
            gateways_0_waitCompletion <= 1'b0;
          end
          5'h02 : begin
            gateways_1_waitCompletion <= 1'b0;
          end
          5'h03 : begin
            gateways_2_waitCompletion <= 1'b0;
          end
          5'h04 : begin
            gateways_3_waitCompletion <= 1'b0;
          end
          5'h05 : begin
            gateways_4_waitCompletion <= 1'b0;
          end
          5'h06 : begin
            gateways_5_waitCompletion <= 1'b0;
          end
          5'h07 : begin
            gateways_6_waitCompletion <= 1'b0;
          end
          5'h08 : begin
            gateways_7_waitCompletion <= 1'b0;
          end
          5'h09 : begin
            gateways_8_waitCompletion <= 1'b0;
          end
          5'h0a : begin
            gateways_9_waitCompletion <= 1'b0;
          end
          5'h0b : begin
            gateways_10_waitCompletion <= 1'b0;
          end
          5'h0c : begin
            gateways_11_waitCompletion <= 1'b0;
          end
          5'h0d : begin
            gateways_12_waitCompletion <= 1'b0;
          end
          5'h0e : begin
            gateways_13_waitCompletion <= 1'b0;
          end
          5'h0f : begin
            gateways_14_waitCompletion <= 1'b0;
          end
          5'h10 : begin
            gateways_15_waitCompletion <= 1'b0;
          end
          5'h11 : begin
            gateways_16_waitCompletion <= 1'b0;
          end
          5'h12 : begin
            gateways_17_waitCompletion <= 1'b0;
          end
          5'h13 : begin
            gateways_18_waitCompletion <= 1'b0;
          end
          5'h14 : begin
            gateways_19_waitCompletion <= 1'b0;
          end
          5'h15 : begin
            gateways_20_waitCompletion <= 1'b0;
          end
          5'h16 : begin
            gateways_21_waitCompletion <= 1'b0;
          end
          5'h17 : begin
            gateways_22_waitCompletion <= 1'b0;
          end
          5'h18 : begin
            gateways_23_waitCompletion <= 1'b0;
          end
          5'h19 : begin
            gateways_24_waitCompletion <= 1'b0;
          end
          5'h1a : begin
            gateways_25_waitCompletion <= 1'b0;
          end
          5'h1b : begin
            gateways_26_waitCompletion <= 1'b0;
          end
          5'h1c : begin
            gateways_27_waitCompletion <= 1'b0;
          end
          5'h1d : begin
            gateways_28_waitCompletion <= 1'b0;
          end
          5'h1e : begin
            gateways_29_waitCompletion <= 1'b0;
          end
          5'h1f : begin
            gateways_30_waitCompletion <= 1'b0;
          end
          default : begin
          end
        endcase
      end
      mapping_coherencyStall_value <= mapping_coherencyStall_valueNext;
      case(bus_writeAddressMasked)
        22'h000004 : begin
          if(bus_writeOccur) begin
            gateways_0_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000008 : begin
          if(bus_writeOccur) begin
            gateways_1_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h00000c : begin
          if(bus_writeOccur) begin
            gateways_2_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000010 : begin
          if(bus_writeOccur) begin
            gateways_3_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000014 : begin
          if(bus_writeOccur) begin
            gateways_4_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000018 : begin
          if(bus_writeOccur) begin
            gateways_5_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h00001c : begin
          if(bus_writeOccur) begin
            gateways_6_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000020 : begin
          if(bus_writeOccur) begin
            gateways_7_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000024 : begin
          if(bus_writeOccur) begin
            gateways_8_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000028 : begin
          if(bus_writeOccur) begin
            gateways_9_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h00002c : begin
          if(bus_writeOccur) begin
            gateways_10_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000030 : begin
          if(bus_writeOccur) begin
            gateways_11_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000034 : begin
          if(bus_writeOccur) begin
            gateways_12_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000038 : begin
          if(bus_writeOccur) begin
            gateways_13_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h00003c : begin
          if(bus_writeOccur) begin
            gateways_14_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000040 : begin
          if(bus_writeOccur) begin
            gateways_15_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000044 : begin
          if(bus_writeOccur) begin
            gateways_16_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000048 : begin
          if(bus_writeOccur) begin
            gateways_17_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h00004c : begin
          if(bus_writeOccur) begin
            gateways_18_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000050 : begin
          if(bus_writeOccur) begin
            gateways_19_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000054 : begin
          if(bus_writeOccur) begin
            gateways_20_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000058 : begin
          if(bus_writeOccur) begin
            gateways_21_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h00005c : begin
          if(bus_writeOccur) begin
            gateways_22_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000060 : begin
          if(bus_writeOccur) begin
            gateways_23_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000064 : begin
          if(bus_writeOccur) begin
            gateways_24_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000068 : begin
          if(bus_writeOccur) begin
            gateways_25_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h00006c : begin
          if(bus_writeOccur) begin
            gateways_26_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000070 : begin
          if(bus_writeOccur) begin
            gateways_27_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000074 : begin
          if(bus_writeOccur) begin
            gateways_28_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h000078 : begin
          if(bus_writeOccur) begin
            gateways_29_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h00007c : begin
          if(bus_writeOccur) begin
            gateways_30_priority_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h200000 : begin
          if(bus_writeOccur) begin
            targets_0_threshold_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h002000 : begin
          if(bus_writeOccur) begin
            targets_0_ie_0_driver <= io_bus_w_payload_data[1];
            targets_0_ie_1_driver <= io_bus_w_payload_data[2];
            targets_0_ie_2_driver <= io_bus_w_payload_data[3];
            targets_0_ie_3_driver <= io_bus_w_payload_data[4];
            targets_0_ie_4_driver <= io_bus_w_payload_data[5];
            targets_0_ie_5_driver <= io_bus_w_payload_data[6];
            targets_0_ie_6_driver <= io_bus_w_payload_data[7];
            targets_0_ie_7_driver <= io_bus_w_payload_data[8];
            targets_0_ie_8_driver <= io_bus_w_payload_data[9];
            targets_0_ie_9_driver <= io_bus_w_payload_data[10];
            targets_0_ie_10_driver <= io_bus_w_payload_data[11];
            targets_0_ie_11_driver <= io_bus_w_payload_data[12];
            targets_0_ie_12_driver <= io_bus_w_payload_data[13];
            targets_0_ie_13_driver <= io_bus_w_payload_data[14];
            targets_0_ie_14_driver <= io_bus_w_payload_data[15];
            targets_0_ie_15_driver <= io_bus_w_payload_data[16];
            targets_0_ie_16_driver <= io_bus_w_payload_data[17];
            targets_0_ie_17_driver <= io_bus_w_payload_data[18];
            targets_0_ie_18_driver <= io_bus_w_payload_data[19];
            targets_0_ie_19_driver <= io_bus_w_payload_data[20];
            targets_0_ie_20_driver <= io_bus_w_payload_data[21];
            targets_0_ie_21_driver <= io_bus_w_payload_data[22];
            targets_0_ie_22_driver <= io_bus_w_payload_data[23];
            targets_0_ie_23_driver <= io_bus_w_payload_data[24];
            targets_0_ie_24_driver <= io_bus_w_payload_data[25];
            targets_0_ie_25_driver <= io_bus_w_payload_data[26];
            targets_0_ie_26_driver <= io_bus_w_payload_data[27];
            targets_0_ie_27_driver <= io_bus_w_payload_data[28];
            targets_0_ie_28_driver <= io_bus_w_payload_data[29];
            targets_0_ie_29_driver <= io_bus_w_payload_data[30];
            targets_0_ie_30_driver <= io_bus_w_payload_data[31];
          end
        end
        22'h201000 : begin
          if(bus_writeOccur) begin
            targets_1_threshold_driver <= io_bus_w_payload_data[1 : 0];
          end
        end
        22'h002080 : begin
          if(bus_writeOccur) begin
            targets_1_ie_0_driver <= io_bus_w_payload_data[1];
            targets_1_ie_1_driver <= io_bus_w_payload_data[2];
            targets_1_ie_2_driver <= io_bus_w_payload_data[3];
            targets_1_ie_3_driver <= io_bus_w_payload_data[4];
            targets_1_ie_4_driver <= io_bus_w_payload_data[5];
            targets_1_ie_5_driver <= io_bus_w_payload_data[6];
            targets_1_ie_6_driver <= io_bus_w_payload_data[7];
            targets_1_ie_7_driver <= io_bus_w_payload_data[8];
            targets_1_ie_8_driver <= io_bus_w_payload_data[9];
            targets_1_ie_9_driver <= io_bus_w_payload_data[10];
            targets_1_ie_10_driver <= io_bus_w_payload_data[11];
            targets_1_ie_11_driver <= io_bus_w_payload_data[12];
            targets_1_ie_12_driver <= io_bus_w_payload_data[13];
            targets_1_ie_13_driver <= io_bus_w_payload_data[14];
            targets_1_ie_14_driver <= io_bus_w_payload_data[15];
            targets_1_ie_15_driver <= io_bus_w_payload_data[16];
            targets_1_ie_16_driver <= io_bus_w_payload_data[17];
            targets_1_ie_17_driver <= io_bus_w_payload_data[18];
            targets_1_ie_18_driver <= io_bus_w_payload_data[19];
            targets_1_ie_19_driver <= io_bus_w_payload_data[20];
            targets_1_ie_20_driver <= io_bus_w_payload_data[21];
            targets_1_ie_21_driver <= io_bus_w_payload_data[22];
            targets_1_ie_22_driver <= io_bus_w_payload_data[23];
            targets_1_ie_23_driver <= io_bus_w_payload_data[24];
            targets_1_ie_24_driver <= io_bus_w_payload_data[25];
            targets_1_ie_25_driver <= io_bus_w_payload_data[26];
            targets_1_ie_26_driver <= io_bus_w_payload_data[27];
            targets_1_ie_27_driver <= io_bus_w_payload_data[28];
            targets_1_ie_28_driver <= io_bus_w_payload_data[29];
            targets_1_ie_29_driver <= io_bus_w_payload_data[30];
            targets_1_ie_30_driver <= io_bus_w_payload_data[31];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clk) begin
    targets_0_bestRequest_priority <= (_zz_targets_0_bestRequest_priority_6 ? _zz_targets_0_bestRequest_priority_4 : _zz_targets_0_bestRequest_priority_5);
    targets_0_bestRequest_id <= (_zz_targets_0_bestRequest_priority_6 ? (_zz_targets_0_bestRequest_id_80 ? (_zz_targets_0_bestRequest_id_72 ? (_zz_targets_0_bestRequest_id_48 ? _zz_targets_0_bestRequest_id_82 : _zz_targets_0_bestRequest_id_83) : (_zz_targets_0_bestRequest_id_51 ? _zz_targets_0_bestRequest_id_84 : _zz_targets_0_bestRequest_id_85)) : (_zz_targets_0_bestRequest_id_74 ? (_zz_targets_0_bestRequest_id_54 ? _zz_targets_0_bestRequest_id_86 : _zz_targets_0_bestRequest_id_87) : (_zz_targets_0_bestRequest_id_57 ? _zz_targets_0_bestRequest_id_88 : _zz_targets_0_bestRequest_id_89))) : (_zz_targets_0_bestRequest_id_81 ? (_zz_targets_0_bestRequest_id_76 ? (_zz_targets_0_bestRequest_id_60 ? _zz_targets_0_bestRequest_id_90 : _zz_targets_0_bestRequest_id_91) : (_zz_targets_0_bestRequest_id_63 ? _zz_targets_0_bestRequest_id_92 : _zz_targets_0_bestRequest_id_93)) : (_zz_targets_0_bestRequest_id_78 ? (_zz_targets_0_bestRequest_id_66 ? _zz_targets_0_bestRequest_id_94 : _zz_targets_0_bestRequest_id_95) : (_zz_targets_0_bestRequest_id_69 ? _zz_targets_0_bestRequest_id_96 : _zz_targets_0_bestRequest_id_97))));
    targets_0_bestRequest_valid <= (_zz_targets_0_bestRequest_priority_6 ? _zz_targets_0_bestRequest_valid : _zz_targets_0_bestRequest_valid_1);
    targets_1_bestRequest_priority <= (_zz_targets_1_bestRequest_priority_6 ? _zz_targets_1_bestRequest_priority_4 : _zz_targets_1_bestRequest_priority_5);
    targets_1_bestRequest_id <= (_zz_targets_1_bestRequest_priority_6 ? (_zz_targets_1_bestRequest_id_80 ? (_zz_targets_1_bestRequest_id_72 ? (_zz_targets_1_bestRequest_id_48 ? _zz_targets_1_bestRequest_id_82 : _zz_targets_1_bestRequest_id_83) : (_zz_targets_1_bestRequest_id_51 ? _zz_targets_1_bestRequest_id_84 : _zz_targets_1_bestRequest_id_85)) : (_zz_targets_1_bestRequest_id_74 ? (_zz_targets_1_bestRequest_id_54 ? _zz_targets_1_bestRequest_id_86 : _zz_targets_1_bestRequest_id_87) : (_zz_targets_1_bestRequest_id_57 ? _zz_targets_1_bestRequest_id_88 : _zz_targets_1_bestRequest_id_89))) : (_zz_targets_1_bestRequest_id_81 ? (_zz_targets_1_bestRequest_id_76 ? (_zz_targets_1_bestRequest_id_60 ? _zz_targets_1_bestRequest_id_90 : _zz_targets_1_bestRequest_id_91) : (_zz_targets_1_bestRequest_id_63 ? _zz_targets_1_bestRequest_id_92 : _zz_targets_1_bestRequest_id_93)) : (_zz_targets_1_bestRequest_id_78 ? (_zz_targets_1_bestRequest_id_66 ? _zz_targets_1_bestRequest_id_94 : _zz_targets_1_bestRequest_id_95) : (_zz_targets_1_bestRequest_id_69 ? _zz_targets_1_bestRequest_id_96 : _zz_targets_1_bestRequest_id_97))));
    targets_1_bestRequest_valid <= (_zz_targets_1_bestRequest_priority_6 ? _zz_targets_1_bestRequest_valid : _zz_targets_1_bestRequest_valid_1);
    if(bus_writeJoinEvent_translated_haltWhen_ready) begin
      bus_writeJoinEvent_translated_haltWhen_rData_resp <= bus_writeJoinEvent_translated_haltWhen_payload_resp;
    end
    if(io_bus_ar_ready) begin
      io_bus_ar_rData_addr <= io_bus_ar_payload_addr;
      io_bus_ar_rData_prot <= io_bus_ar_payload_prot;
    end
  end


endmodule

module AxiLite4Clint (
  input  wire          io_bus_aw_valid,
  output wire          io_bus_aw_ready,
  input  wire [15:0]   io_bus_aw_payload_addr,
  input  wire [2:0]    io_bus_aw_payload_prot,
  input  wire          io_bus_w_valid,
  output wire          io_bus_w_ready,
  input  wire [31:0]   io_bus_w_payload_data,
  input  wire [3:0]    io_bus_w_payload_strb,
  output wire          io_bus_b_valid,
  input  wire          io_bus_b_ready,
  output wire [1:0]    io_bus_b_payload_resp,
  input  wire          io_bus_ar_valid,
  output wire          io_bus_ar_ready,
  input  wire [15:0]   io_bus_ar_payload_addr,
  input  wire [2:0]    io_bus_ar_payload_prot,
  output wire          io_bus_r_valid,
  input  wire          io_bus_r_ready,
  output wire [31:0]   io_bus_r_payload_data,
  output wire [1:0]    io_bus_r_payload_resp,
  output wire [0:0]    io_timerInterrupt,
  output wire [0:0]    io_softwareInterrupt,
  output wire [63:0]   io_time,
  input  wire          clk,
  input  wire          reset
);

  wire                factory_readErrorFlag;
  wire                factory_writeErrorFlag;
  wire                factory_readHaltRequest;
  wire                factory_writeHaltRequest;
  wire                factory_writeJoinEvent_valid;
  wire                factory_writeJoinEvent_ready;
  wire                factory_writeOccur;
  reg        [1:0]    factory_writeRsp_resp;
  wire                factory_writeJoinEvent_translated_valid;
  wire                factory_writeJoinEvent_translated_ready;
  wire       [1:0]    factory_writeJoinEvent_translated_payload_resp;
  wire                _zz_factory_writeJoinEvent_translated_ready;
  wire                factory_writeJoinEvent_translated_haltWhen_valid;
  wire                factory_writeJoinEvent_translated_haltWhen_ready;
  wire       [1:0]    factory_writeJoinEvent_translated_haltWhen_payload_resp;
  wire                factory_writeJoinEvent_translated_haltWhen_halfPipe_valid;
  wire                factory_writeJoinEvent_translated_haltWhen_halfPipe_ready;
  wire       [1:0]    factory_writeJoinEvent_translated_haltWhen_halfPipe_payload_resp;
  reg                 factory_writeJoinEvent_translated_haltWhen_rValid;
  wire                factory_writeJoinEvent_translated_haltWhen_halfPipe_fire;
  reg        [1:0]    factory_writeJoinEvent_translated_haltWhen_rData_resp;
  wire                factory_readDataStage_valid;
  wire                factory_readDataStage_ready;
  wire       [15:0]   factory_readDataStage_payload_addr;
  wire       [2:0]    factory_readDataStage_payload_prot;
  reg                 io_bus_ar_rValid;
  wire                factory_readDataStage_fire;
  reg        [15:0]   io_bus_ar_rData_addr;
  reg        [2:0]    io_bus_ar_rData_prot;
  reg        [31:0]   factory_readRsp_data;
  reg        [1:0]    factory_readRsp_resp;
  wire                _zz_factory_readDataStage_ready;
  wire                factory_readDataStage_haltWhen_valid;
  wire                factory_readDataStage_haltWhen_ready;
  wire       [15:0]   factory_readDataStage_haltWhen_payload_addr;
  wire       [2:0]    factory_readDataStage_haltWhen_payload_prot;
  wire                factory_readDataStage_haltWhen_translated_valid;
  wire                factory_readDataStage_haltWhen_translated_ready;
  wire       [31:0]   factory_readDataStage_haltWhen_translated_payload_data;
  wire       [1:0]    factory_readDataStage_haltWhen_translated_payload_resp;
  wire       [15:0]   factory_readAddressMasked;
  wire       [15:0]   factory_writeAddressMasked;
  wire                factory_readOccur;
  wire                logic_stop;
  reg        [63:0]   logic_time;
  wire                when_Clint_l39;
  reg        [63:0]   logic_harts_0_cmp;
  reg                 logic_harts_0_timerInterrupt;
  reg                 logic_harts_0_softwareInterrupt;
  wire       [63:0]   _zz_factory_readRsp_data;
  wire                when_AxiLite4SlaveFactory_l68;
  wire                when_AxiLite4SlaveFactory_l68_1;
  wire                when_AxiLite4SlaveFactory_l86;
  wire                when_AxiLite4SlaveFactory_l86_1;

  assign factory_readErrorFlag = 1'b0;
  assign factory_writeErrorFlag = 1'b0;
  assign factory_readHaltRequest = 1'b0;
  assign factory_writeHaltRequest = 1'b0;
  assign factory_writeOccur = (factory_writeJoinEvent_valid && factory_writeJoinEvent_ready);
  assign factory_writeJoinEvent_valid = (io_bus_aw_valid && io_bus_w_valid);
  assign io_bus_aw_ready = factory_writeOccur;
  assign io_bus_w_ready = factory_writeOccur;
  assign factory_writeJoinEvent_translated_valid = factory_writeJoinEvent_valid;
  assign factory_writeJoinEvent_ready = factory_writeJoinEvent_translated_ready;
  assign factory_writeJoinEvent_translated_payload_resp = factory_writeRsp_resp;
  assign _zz_factory_writeJoinEvent_translated_ready = (! factory_writeHaltRequest);
  assign factory_writeJoinEvent_translated_haltWhen_valid = (factory_writeJoinEvent_translated_valid && _zz_factory_writeJoinEvent_translated_ready);
  assign factory_writeJoinEvent_translated_ready = (factory_writeJoinEvent_translated_haltWhen_ready && _zz_factory_writeJoinEvent_translated_ready);
  assign factory_writeJoinEvent_translated_haltWhen_payload_resp = factory_writeJoinEvent_translated_payload_resp;
  assign factory_writeJoinEvent_translated_haltWhen_halfPipe_fire = (factory_writeJoinEvent_translated_haltWhen_halfPipe_valid && factory_writeJoinEvent_translated_haltWhen_halfPipe_ready);
  assign factory_writeJoinEvent_translated_haltWhen_ready = (! factory_writeJoinEvent_translated_haltWhen_rValid);
  assign factory_writeJoinEvent_translated_haltWhen_halfPipe_valid = factory_writeJoinEvent_translated_haltWhen_rValid;
  assign factory_writeJoinEvent_translated_haltWhen_halfPipe_payload_resp = factory_writeJoinEvent_translated_haltWhen_rData_resp;
  assign io_bus_b_valid = factory_writeJoinEvent_translated_haltWhen_halfPipe_valid;
  assign factory_writeJoinEvent_translated_haltWhen_halfPipe_ready = io_bus_b_ready;
  assign io_bus_b_payload_resp = factory_writeJoinEvent_translated_haltWhen_halfPipe_payload_resp;
  assign factory_readDataStage_fire = (factory_readDataStage_valid && factory_readDataStage_ready);
  assign io_bus_ar_ready = (! io_bus_ar_rValid);
  assign factory_readDataStage_valid = io_bus_ar_rValid;
  assign factory_readDataStage_payload_addr = io_bus_ar_rData_addr;
  assign factory_readDataStage_payload_prot = io_bus_ar_rData_prot;
  assign _zz_factory_readDataStage_ready = (! factory_readHaltRequest);
  assign factory_readDataStage_haltWhen_valid = (factory_readDataStage_valid && _zz_factory_readDataStage_ready);
  assign factory_readDataStage_ready = (factory_readDataStage_haltWhen_ready && _zz_factory_readDataStage_ready);
  assign factory_readDataStage_haltWhen_payload_addr = factory_readDataStage_payload_addr;
  assign factory_readDataStage_haltWhen_payload_prot = factory_readDataStage_payload_prot;
  assign factory_readDataStage_haltWhen_translated_valid = factory_readDataStage_haltWhen_valid;
  assign factory_readDataStage_haltWhen_ready = factory_readDataStage_haltWhen_translated_ready;
  assign factory_readDataStage_haltWhen_translated_payload_data = factory_readRsp_data;
  assign factory_readDataStage_haltWhen_translated_payload_resp = factory_readRsp_resp;
  assign io_bus_r_valid = factory_readDataStage_haltWhen_translated_valid;
  assign factory_readDataStage_haltWhen_translated_ready = io_bus_r_ready;
  assign io_bus_r_payload_data = factory_readDataStage_haltWhen_translated_payload_data;
  assign io_bus_r_payload_resp = factory_readDataStage_haltWhen_translated_payload_resp;
  always @(*) begin
    if(factory_writeErrorFlag) begin
      factory_writeRsp_resp = 2'b10;
    end else begin
      factory_writeRsp_resp = 2'b00;
    end
  end

  always @(*) begin
    if(factory_readErrorFlag) begin
      factory_readRsp_resp = 2'b10;
    end else begin
      factory_readRsp_resp = 2'b00;
    end
  end

  always @(*) begin
    factory_readRsp_data = 32'h0;
    case(factory_readAddressMasked)
      16'h0 : begin
        factory_readRsp_data[0 : 0] = logic_harts_0_softwareInterrupt;
      end
      default : begin
      end
    endcase
    if(when_AxiLite4SlaveFactory_l86) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data[31 : 0];
    end
    if(when_AxiLite4SlaveFactory_l86_1) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data[63 : 32];
    end
  end

  assign factory_readAddressMasked = (factory_readDataStage_payload_addr & (~ 16'h0003));
  assign factory_writeAddressMasked = (io_bus_aw_payload_addr & (~ 16'h0003));
  assign factory_readOccur = (io_bus_r_valid && io_bus_r_ready);
  assign logic_stop = 1'b0;
  assign when_Clint_l39 = (! logic_stop);
  assign _zz_factory_readRsp_data = logic_time;
  assign io_timerInterrupt[0] = logic_harts_0_timerInterrupt;
  assign io_softwareInterrupt[0] = logic_harts_0_softwareInterrupt;
  assign io_time = logic_time;
  assign when_AxiLite4SlaveFactory_l68 = ((factory_writeAddressMasked & (~ 16'h0003)) == 16'h4000);
  assign when_AxiLite4SlaveFactory_l68_1 = ((factory_writeAddressMasked & (~ 16'h0003)) == 16'h4004);
  assign when_AxiLite4SlaveFactory_l86 = ((factory_readAddressMasked & (~ 16'h0003)) == 16'hbff8);
  assign when_AxiLite4SlaveFactory_l86_1 = ((factory_readAddressMasked & (~ 16'h0003)) == 16'hbffc);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      factory_writeJoinEvent_translated_haltWhen_rValid <= 1'b0;
      io_bus_ar_rValid <= 1'b0;
      logic_time <= 64'h0;
      logic_harts_0_softwareInterrupt <= 1'b0;
    end else begin
      if(factory_writeJoinEvent_translated_haltWhen_valid) begin
        factory_writeJoinEvent_translated_haltWhen_rValid <= 1'b1;
      end
      if(factory_writeJoinEvent_translated_haltWhen_halfPipe_fire) begin
        factory_writeJoinEvent_translated_haltWhen_rValid <= 1'b0;
      end
      if(io_bus_ar_valid) begin
        io_bus_ar_rValid <= 1'b1;
      end
      if(factory_readDataStage_fire) begin
        io_bus_ar_rValid <= 1'b0;
      end
      if(when_Clint_l39) begin
        logic_time <= (logic_time + 64'h0000000000000001);
      end
      case(factory_writeAddressMasked)
        16'h0 : begin
          if(factory_writeOccur) begin
            logic_harts_0_softwareInterrupt <= io_bus_w_payload_data[0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clk) begin
    if(factory_writeJoinEvent_translated_haltWhen_ready) begin
      factory_writeJoinEvent_translated_haltWhen_rData_resp <= factory_writeJoinEvent_translated_haltWhen_payload_resp;
    end
    if(io_bus_ar_ready) begin
      io_bus_ar_rData_addr <= io_bus_ar_payload_addr;
      io_bus_ar_rData_prot <= io_bus_ar_payload_prot;
    end
    logic_harts_0_timerInterrupt <= (logic_harts_0_cmp <= logic_time);
    if(when_AxiLite4SlaveFactory_l68) begin
      if(factory_writeOccur) begin
        logic_harts_0_cmp[31 : 0] <= io_bus_w_payload_data[31 : 0];
      end
    end
    if(when_AxiLite4SlaveFactory_l68_1) begin
      if(factory_writeOccur) begin
        logic_harts_0_cmp[63 : 32] <= io_bus_w_payload_data[31 : 0];
      end
    end
  end


endmodule
