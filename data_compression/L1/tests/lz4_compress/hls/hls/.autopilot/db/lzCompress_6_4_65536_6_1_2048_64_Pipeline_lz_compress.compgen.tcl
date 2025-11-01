# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name dict \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dict \
    op interface \
    ports { dict_address0 { O 11 vector } dict_ce0 { O 1 bit } dict_we0 { O 1 bit } dict_d0 { O 432 vector } dict_address1 { O 11 vector } dict_ce1 { O 1 bit } dict_q1 { I 432 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dict'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name arrayidx55_promoted157_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx55_promoted157_reload \
    op interface \
    ports { arrayidx55_promoted157_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name arrayidx46_3_promoted155_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx46_3_promoted155_reload \
    op interface \
    ports { arrayidx46_3_promoted155_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name arrayidx65_promoted153_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx65_promoted153_reload \
    op interface \
    ports { arrayidx65_promoted153_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name arrayidx61_promoted151_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx61_promoted151_reload \
    op interface \
    ports { arrayidx61_promoted151_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name arrayidx58_promoted149_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx58_promoted149_reload \
    op interface \
    ports { arrayidx58_promoted149_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name sub34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub34 \
    op interface \
    ports { sub34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name inStream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inStream \
    op interface \
    ports { inStream_dout { I 8 vector } inStream_empty_n { I 1 bit } inStream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name compressdStream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_compressdStream \
    op interface \
    ports { compressdStream_din { O 32 vector } compressdStream_full_n { I 1 bit } compressdStream_write { O 1 bit } compressdStream_num_data_valid { I 4 vector } compressdStream_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name present_window_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_15_out \
    op interface \
    ports { present_window_15_out { O 8 vector } present_window_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name present_window_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_14_out \
    op interface \
    ports { present_window_14_out { O 8 vector } present_window_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name present_window_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_13_out \
    op interface \
    ports { present_window_13_out { O 8 vector } present_window_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name present_window_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_12_out \
    op interface \
    ports { present_window_12_out { O 8 vector } present_window_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name present_window_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_11_out \
    op interface \
    ports { present_window_11_out { O 8 vector } present_window_11_out_ap_vld { O 1 bit } } \
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


