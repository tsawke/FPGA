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
    id 2 \
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
    id 3 \
    name present_window_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_4_out \
    op interface \
    ports { present_window_4_out { O 8 vector } present_window_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name present_window_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_3_out \
    op interface \
    ports { present_window_3_out { O 8 vector } present_window_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name present_window_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_2_out \
    op interface \
    ports { present_window_2_out { O 8 vector } present_window_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name present_window_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_1_out \
    op interface \
    ports { present_window_1_out { O 8 vector } present_window_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name present_window_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_present_window_out \
    op interface \
    ports { present_window_out { O 8 vector } present_window_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name arrayidx55_promoted157_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx55_promoted157_out \
    op interface \
    ports { arrayidx55_promoted157_out { O 8 vector } arrayidx55_promoted157_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name arrayidx46_3_promoted155_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx46_3_promoted155_out \
    op interface \
    ports { arrayidx46_3_promoted155_out { O 8 vector } arrayidx46_3_promoted155_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name arrayidx65_promoted153_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx65_promoted153_out \
    op interface \
    ports { arrayidx65_promoted153_out { O 8 vector } arrayidx65_promoted153_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name arrayidx61_promoted151_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx61_promoted151_out \
    op interface \
    ports { arrayidx61_promoted151_out { O 8 vector } arrayidx61_promoted151_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name arrayidx58_promoted149_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx58_promoted149_out \
    op interface \
    ports { arrayidx58_promoted149_out { O 8 vector } arrayidx58_promoted149_out_ap_vld { O 1 bit } } \
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


