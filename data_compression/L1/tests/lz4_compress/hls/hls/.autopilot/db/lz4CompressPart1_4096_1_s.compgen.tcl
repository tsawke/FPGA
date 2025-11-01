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
    id 80 \
    name boosterStream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boosterStream \
    op interface \
    ports { boosterStream_dout { I 32 vector } boosterStream_empty_n { I 1 bit } boosterStream_read { O 1 bit } boosterStream_num_data_valid { I 4 vector } boosterStream_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name lit_outStream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lit_outStream \
    op interface \
    ports { lit_outStream_din { O 8 vector } lit_outStream_full_n { I 1 bit } lit_outStream_write { O 1 bit } lit_outStream_num_data_valid { I 13 vector } lit_outStream_fifo_cap { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name lenOffset_Stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lenOffset_Stream \
    op interface \
    ports { lenOffset_Stream_din { O 64 vector } lenOffset_Stream_full_n { I 1 bit } lenOffset_Stream_write { O 1 bit } lenOffset_Stream_num_data_valid { I 6 vector } lenOffset_Stream_fifo_cap { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name input_size \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_size \
    op interface \
    ports { input_size_dout { I 32 vector } input_size_empty_n { I 1 bit } input_size_read { O 1 bit } input_size_num_data_valid { I 3 vector } input_size_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name max_lit_limit \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_lit_limit \
    op interface \
    ports { max_lit_limit { O 32 vector } max_lit_limit_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name input_size_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_size_c \
    op interface \
    ports { input_size_c_din { O 32 vector } input_size_c_full_n { I 1 bit } input_size_c_write { O 1 bit } input_size_c_num_data_valid { I 3 vector } input_size_c_fifo_cap { I 3 vector } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


