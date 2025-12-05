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
    id 1833 \
    name theta \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename theta \
    op interface \
    ports { theta_address0 { O 3 vector } theta_ce0 { O 1 bit } theta_we0 { O 1 bit } theta_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'theta'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1761 \
    name G_inv_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_load \
    op interface \
    ports { G_inv_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1762 \
    name G_inv_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_8_load \
    op interface \
    ports { G_inv_8_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1763 \
    name G_inv_16_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_16_load \
    op interface \
    ports { G_inv_16_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1764 \
    name G_inv_24_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_24_load \
    op interface \
    ports { G_inv_24_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1765 \
    name G_inv_32_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_32_load \
    op interface \
    ports { G_inv_32_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1766 \
    name G_inv_40_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_40_load \
    op interface \
    ports { G_inv_40_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1767 \
    name G_inv_48_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_48_load \
    op interface \
    ports { G_inv_48_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1768 \
    name G_inv_56_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_56_load \
    op interface \
    ports { G_inv_56_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1769 \
    name b_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_reload \
    op interface \
    ports { b_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1770 \
    name G_inv_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_1_load \
    op interface \
    ports { G_inv_1_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1771 \
    name G_inv_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_9_load \
    op interface \
    ports { G_inv_9_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1772 \
    name G_inv_17_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_17_load \
    op interface \
    ports { G_inv_17_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1773 \
    name G_inv_25_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_25_load \
    op interface \
    ports { G_inv_25_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1774 \
    name G_inv_33_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_33_load \
    op interface \
    ports { G_inv_33_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1775 \
    name G_inv_41_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_41_load \
    op interface \
    ports { G_inv_41_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1776 \
    name G_inv_49_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_49_load \
    op interface \
    ports { G_inv_49_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1777 \
    name G_inv_57_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_57_load \
    op interface \
    ports { G_inv_57_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1778 \
    name b_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_1_reload \
    op interface \
    ports { b_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1779 \
    name G_inv_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_2_load \
    op interface \
    ports { G_inv_2_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1780 \
    name G_inv_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_10_load \
    op interface \
    ports { G_inv_10_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1781 \
    name G_inv_18_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_18_load \
    op interface \
    ports { G_inv_18_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1782 \
    name G_inv_26_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_26_load \
    op interface \
    ports { G_inv_26_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1783 \
    name G_inv_34_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_34_load \
    op interface \
    ports { G_inv_34_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1784 \
    name G_inv_42_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_42_load \
    op interface \
    ports { G_inv_42_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1785 \
    name G_inv_50_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_50_load \
    op interface \
    ports { G_inv_50_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1786 \
    name G_inv_58_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_58_load \
    op interface \
    ports { G_inv_58_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1787 \
    name b_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_2_reload \
    op interface \
    ports { b_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1788 \
    name G_inv_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_3_load \
    op interface \
    ports { G_inv_3_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1789 \
    name G_inv_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_11_load \
    op interface \
    ports { G_inv_11_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1790 \
    name G_inv_19_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_19_load \
    op interface \
    ports { G_inv_19_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1791 \
    name G_inv_27_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_27_load \
    op interface \
    ports { G_inv_27_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1792 \
    name G_inv_35_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_35_load \
    op interface \
    ports { G_inv_35_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1793 \
    name G_inv_43_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_43_load \
    op interface \
    ports { G_inv_43_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1794 \
    name G_inv_51_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_51_load \
    op interface \
    ports { G_inv_51_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1795 \
    name G_inv_59_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_59_load \
    op interface \
    ports { G_inv_59_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1796 \
    name b_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_3_reload \
    op interface \
    ports { b_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1797 \
    name G_inv_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_4_load \
    op interface \
    ports { G_inv_4_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1798 \
    name G_inv_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_12_load \
    op interface \
    ports { G_inv_12_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1799 \
    name G_inv_20_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_20_load \
    op interface \
    ports { G_inv_20_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1800 \
    name G_inv_28_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_28_load \
    op interface \
    ports { G_inv_28_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1801 \
    name G_inv_36_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_36_load \
    op interface \
    ports { G_inv_36_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1802 \
    name G_inv_44_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_44_load \
    op interface \
    ports { G_inv_44_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1803 \
    name G_inv_52_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_52_load \
    op interface \
    ports { G_inv_52_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1804 \
    name G_inv_60_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_60_load \
    op interface \
    ports { G_inv_60_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1805 \
    name b_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_4_reload \
    op interface \
    ports { b_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1806 \
    name G_inv_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_5_load \
    op interface \
    ports { G_inv_5_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1807 \
    name G_inv_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_13_load \
    op interface \
    ports { G_inv_13_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1808 \
    name G_inv_21_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_21_load \
    op interface \
    ports { G_inv_21_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1809 \
    name G_inv_29_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_29_load \
    op interface \
    ports { G_inv_29_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1810 \
    name G_inv_37_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_37_load \
    op interface \
    ports { G_inv_37_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1811 \
    name G_inv_45_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_45_load \
    op interface \
    ports { G_inv_45_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1812 \
    name G_inv_53_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_53_load \
    op interface \
    ports { G_inv_53_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1813 \
    name G_inv_61_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_61_load \
    op interface \
    ports { G_inv_61_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1814 \
    name b_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_5_reload \
    op interface \
    ports { b_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1815 \
    name G_inv_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_6_load \
    op interface \
    ports { G_inv_6_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1816 \
    name G_inv_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_14_load \
    op interface \
    ports { G_inv_14_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1817 \
    name G_inv_22_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_22_load \
    op interface \
    ports { G_inv_22_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1818 \
    name G_inv_30_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_30_load \
    op interface \
    ports { G_inv_30_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1819 \
    name G_inv_38_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_38_load \
    op interface \
    ports { G_inv_38_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1820 \
    name G_inv_46_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_46_load \
    op interface \
    ports { G_inv_46_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1821 \
    name G_inv_54_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_54_load \
    op interface \
    ports { G_inv_54_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1822 \
    name G_inv_62_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_62_load \
    op interface \
    ports { G_inv_62_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1823 \
    name b_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_6_reload \
    op interface \
    ports { b_6_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1824 \
    name G_inv_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_7_load \
    op interface \
    ports { G_inv_7_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1825 \
    name G_inv_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_15_load \
    op interface \
    ports { G_inv_15_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1826 \
    name G_inv_23_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_23_load \
    op interface \
    ports { G_inv_23_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1827 \
    name G_inv_31_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_31_load \
    op interface \
    ports { G_inv_31_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1828 \
    name G_inv_39_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_39_load \
    op interface \
    ports { G_inv_39_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1829 \
    name G_inv_47_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_47_load \
    op interface \
    ports { G_inv_47_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1830 \
    name G_inv_55_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_55_load \
    op interface \
    ports { G_inv_55_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1831 \
    name G_inv_63_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G_inv_63_load \
    op interface \
    ports { G_inv_63_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1832 \
    name b_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_7_reload \
    op interface \
    ports { b_7_reload { I 32 vector } } \
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
set InstName omp_reconstruction_flow_control_loop_pipe_sequential_init_U
set CompName omp_reconstruction_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix omp_reconstruction_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


