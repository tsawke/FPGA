# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name compare_window_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window_5 \
    op interface \
    ports { compare_window_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name compare_window_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window_4 \
    op interface \
    ports { compare_window_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name compare_window_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window_3 \
    op interface \
    ports { compare_window_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name compare_window_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window_2 \
    op interface \
    ports { compare_window_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name compare_window_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window_1 \
    op interface \
    ports { compare_window_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name compare_window \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window \
    op interface \
    ports { compare_window { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name input_size_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_size_2 \
    op interface \
    ports { input_size_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name compressdStream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compressdStream \
    op interface \
    ports { compressdStream_dout { I 32 vector } compressdStream_empty_n { I 1 bit } compressdStream_read { O 1 bit } compressdStream_num_data_valid { I 4 vector } compressdStream_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name bestMatchStream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bestMatchStream \
    op interface \
    ports { bestMatchStream_din { O 32 vector } bestMatchStream_full_n { I 1 bit } bestMatchStream_write { O 1 bit } bestMatchStream_num_data_valid { I 32 vector } bestMatchStream_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name compare_window_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window_12_out \
    op interface \
    ports { compare_window_12_out { O 32 vector } compare_window_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name compare_window_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window_13_out \
    op interface \
    ports { compare_window_13_out { O 32 vector } compare_window_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name compare_window_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window_14_out \
    op interface \
    ports { compare_window_14_out { O 32 vector } compare_window_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name compare_window_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window_15_out \
    op interface \
    ports { compare_window_15_out { O 32 vector } compare_window_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name compare_window_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window_16_out \
    op interface \
    ports { compare_window_16_out { O 32 vector } compare_window_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name compare_window_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_compare_window_17_out \
    op interface \
    ports { compare_window_17_out { O 32 vector } compare_window_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName lz4CompressEngineRun_flow_control_loop_pipe_sequential_init_U
set CompName lz4CompressEngineRun_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix lz4CompressEngineRun_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


