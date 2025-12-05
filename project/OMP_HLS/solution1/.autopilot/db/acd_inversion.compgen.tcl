# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler omp_reconstruction_acd_inversion_L_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


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
    id 1665 \
    name G_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename G_0 \
    op interface \
    ports { G_0_address0 { O 3 vector } G_0_ce0 { O 1 bit } G_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'G_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1666 \
    name G_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename G_1 \
    op interface \
    ports { G_1_address0 { O 3 vector } G_1_ce0 { O 1 bit } G_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'G_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1667 \
    name G_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename G_2 \
    op interface \
    ports { G_2_address0 { O 3 vector } G_2_ce0 { O 1 bit } G_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'G_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1668 \
    name G_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename G_3 \
    op interface \
    ports { G_3_address0 { O 3 vector } G_3_ce0 { O 1 bit } G_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'G_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1669 \
    name G_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename G_4 \
    op interface \
    ports { G_4_address0 { O 3 vector } G_4_ce0 { O 1 bit } G_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'G_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1670 \
    name G_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename G_5 \
    op interface \
    ports { G_5_address0 { O 3 vector } G_5_ce0 { O 1 bit } G_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'G_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1671 \
    name G_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename G_6 \
    op interface \
    ports { G_6_address0 { O 3 vector } G_6_ce0 { O 1 bit } G_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'G_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1672 \
    name G_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename G_7 \
    op interface \
    ports { G_7_address0 { O 3 vector } G_7_ce0 { O 1 bit } G_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'G_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1673 \
    name G_inv_0_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_0_0 \
    op interface \
    ports { G_inv_0_0 { O 32 vector } G_inv_0_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1674 \
    name G_inv_0_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_0_1 \
    op interface \
    ports { G_inv_0_1 { O 32 vector } G_inv_0_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1675 \
    name G_inv_0_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_0_2 \
    op interface \
    ports { G_inv_0_2 { O 32 vector } G_inv_0_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1676 \
    name G_inv_0_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_0_3 \
    op interface \
    ports { G_inv_0_3 { O 32 vector } G_inv_0_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1677 \
    name G_inv_0_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_0_4 \
    op interface \
    ports { G_inv_0_4 { O 32 vector } G_inv_0_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1678 \
    name G_inv_0_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_0_5 \
    op interface \
    ports { G_inv_0_5 { O 32 vector } G_inv_0_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1679 \
    name G_inv_0_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_0_6 \
    op interface \
    ports { G_inv_0_6 { O 32 vector } G_inv_0_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1680 \
    name G_inv_0_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_0_7 \
    op interface \
    ports { G_inv_0_7 { O 32 vector } G_inv_0_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1681 \
    name G_inv_1_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_1_0 \
    op interface \
    ports { G_inv_1_0 { O 32 vector } G_inv_1_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1682 \
    name G_inv_1_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_1_1 \
    op interface \
    ports { G_inv_1_1 { O 32 vector } G_inv_1_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1683 \
    name G_inv_1_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_1_2 \
    op interface \
    ports { G_inv_1_2 { O 32 vector } G_inv_1_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1684 \
    name G_inv_1_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_1_3 \
    op interface \
    ports { G_inv_1_3 { O 32 vector } G_inv_1_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1685 \
    name G_inv_1_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_1_4 \
    op interface \
    ports { G_inv_1_4 { O 32 vector } G_inv_1_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1686 \
    name G_inv_1_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_1_5 \
    op interface \
    ports { G_inv_1_5 { O 32 vector } G_inv_1_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1687 \
    name G_inv_1_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_1_6 \
    op interface \
    ports { G_inv_1_6 { O 32 vector } G_inv_1_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1688 \
    name G_inv_1_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_1_7 \
    op interface \
    ports { G_inv_1_7 { O 32 vector } G_inv_1_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1689 \
    name G_inv_2_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_2_0 \
    op interface \
    ports { G_inv_2_0 { O 32 vector } G_inv_2_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1690 \
    name G_inv_2_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_2_1 \
    op interface \
    ports { G_inv_2_1 { O 32 vector } G_inv_2_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1691 \
    name G_inv_2_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_2_2 \
    op interface \
    ports { G_inv_2_2 { O 32 vector } G_inv_2_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1692 \
    name G_inv_2_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_2_3 \
    op interface \
    ports { G_inv_2_3 { O 32 vector } G_inv_2_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1693 \
    name G_inv_2_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_2_4 \
    op interface \
    ports { G_inv_2_4 { O 32 vector } G_inv_2_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1694 \
    name G_inv_2_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_2_5 \
    op interface \
    ports { G_inv_2_5 { O 32 vector } G_inv_2_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1695 \
    name G_inv_2_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_2_6 \
    op interface \
    ports { G_inv_2_6 { O 32 vector } G_inv_2_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1696 \
    name G_inv_2_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_2_7 \
    op interface \
    ports { G_inv_2_7 { O 32 vector } G_inv_2_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1697 \
    name G_inv_3_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_3_0 \
    op interface \
    ports { G_inv_3_0 { O 32 vector } G_inv_3_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1698 \
    name G_inv_3_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_3_1 \
    op interface \
    ports { G_inv_3_1 { O 32 vector } G_inv_3_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1699 \
    name G_inv_3_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_3_2 \
    op interface \
    ports { G_inv_3_2 { O 32 vector } G_inv_3_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1700 \
    name G_inv_3_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_3_3 \
    op interface \
    ports { G_inv_3_3 { O 32 vector } G_inv_3_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1701 \
    name G_inv_3_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_3_4 \
    op interface \
    ports { G_inv_3_4 { O 32 vector } G_inv_3_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1702 \
    name G_inv_3_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_3_5 \
    op interface \
    ports { G_inv_3_5 { O 32 vector } G_inv_3_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1703 \
    name G_inv_3_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_3_6 \
    op interface \
    ports { G_inv_3_6 { O 32 vector } G_inv_3_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1704 \
    name G_inv_3_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_3_7 \
    op interface \
    ports { G_inv_3_7 { O 32 vector } G_inv_3_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1705 \
    name G_inv_4_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_4_0 \
    op interface \
    ports { G_inv_4_0 { O 32 vector } G_inv_4_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1706 \
    name G_inv_4_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_4_1 \
    op interface \
    ports { G_inv_4_1 { O 32 vector } G_inv_4_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1707 \
    name G_inv_4_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_4_2 \
    op interface \
    ports { G_inv_4_2 { O 32 vector } G_inv_4_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1708 \
    name G_inv_4_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_4_3 \
    op interface \
    ports { G_inv_4_3 { O 32 vector } G_inv_4_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1709 \
    name G_inv_4_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_4_4 \
    op interface \
    ports { G_inv_4_4 { O 32 vector } G_inv_4_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1710 \
    name G_inv_4_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_4_5 \
    op interface \
    ports { G_inv_4_5 { O 32 vector } G_inv_4_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1711 \
    name G_inv_4_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_4_6 \
    op interface \
    ports { G_inv_4_6 { O 32 vector } G_inv_4_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1712 \
    name G_inv_4_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_4_7 \
    op interface \
    ports { G_inv_4_7 { O 32 vector } G_inv_4_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1713 \
    name G_inv_5_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_5_0 \
    op interface \
    ports { G_inv_5_0 { O 32 vector } G_inv_5_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1714 \
    name G_inv_5_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_5_1 \
    op interface \
    ports { G_inv_5_1 { O 32 vector } G_inv_5_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1715 \
    name G_inv_5_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_5_2 \
    op interface \
    ports { G_inv_5_2 { O 32 vector } G_inv_5_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1716 \
    name G_inv_5_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_5_3 \
    op interface \
    ports { G_inv_5_3 { O 32 vector } G_inv_5_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1717 \
    name G_inv_5_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_5_4 \
    op interface \
    ports { G_inv_5_4 { O 32 vector } G_inv_5_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1718 \
    name G_inv_5_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_5_5 \
    op interface \
    ports { G_inv_5_5 { O 32 vector } G_inv_5_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1719 \
    name G_inv_5_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_5_6 \
    op interface \
    ports { G_inv_5_6 { O 32 vector } G_inv_5_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1720 \
    name G_inv_5_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_5_7 \
    op interface \
    ports { G_inv_5_7 { O 32 vector } G_inv_5_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1721 \
    name G_inv_6_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_6_0 \
    op interface \
    ports { G_inv_6_0 { O 32 vector } G_inv_6_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1722 \
    name G_inv_6_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_6_1 \
    op interface \
    ports { G_inv_6_1 { O 32 vector } G_inv_6_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1723 \
    name G_inv_6_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_6_2 \
    op interface \
    ports { G_inv_6_2 { O 32 vector } G_inv_6_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1724 \
    name G_inv_6_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_6_3 \
    op interface \
    ports { G_inv_6_3 { O 32 vector } G_inv_6_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1725 \
    name G_inv_6_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_6_4 \
    op interface \
    ports { G_inv_6_4 { O 32 vector } G_inv_6_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1726 \
    name G_inv_6_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_6_5 \
    op interface \
    ports { G_inv_6_5 { O 32 vector } G_inv_6_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1727 \
    name G_inv_6_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_6_6 \
    op interface \
    ports { G_inv_6_6 { O 32 vector } G_inv_6_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1728 \
    name G_inv_6_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_6_7 \
    op interface \
    ports { G_inv_6_7 { O 32 vector } G_inv_6_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1729 \
    name G_inv_7_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_7_0 \
    op interface \
    ports { G_inv_7_0 { O 32 vector } G_inv_7_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1730 \
    name G_inv_7_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_7_1 \
    op interface \
    ports { G_inv_7_1 { O 32 vector } G_inv_7_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1731 \
    name G_inv_7_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_7_2 \
    op interface \
    ports { G_inv_7_2 { O 32 vector } G_inv_7_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1732 \
    name G_inv_7_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_7_3 \
    op interface \
    ports { G_inv_7_3 { O 32 vector } G_inv_7_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1733 \
    name G_inv_7_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_7_4 \
    op interface \
    ports { G_inv_7_4 { O 32 vector } G_inv_7_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1734 \
    name G_inv_7_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_7_5 \
    op interface \
    ports { G_inv_7_5 { O 32 vector } G_inv_7_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1735 \
    name G_inv_7_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_7_6 \
    op interface \
    ports { G_inv_7_6 { O 32 vector } G_inv_7_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1736 \
    name G_inv_7_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_7_7 \
    op interface \
    ports { G_inv_7_7 { O 32 vector } G_inv_7_7_ap_vld { O 1 bit } } \
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


