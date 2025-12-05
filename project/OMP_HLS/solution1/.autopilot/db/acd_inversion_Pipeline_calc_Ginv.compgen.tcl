# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler omp_reconstruction_acd_inversion_Pipeline_calc_Ginv_L_inv_02_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 1481 \
    name L_inv \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename L_inv \
    op interface \
    ports { L_inv_address0 { O 3 vector } L_inv_ce0 { O 1 bit } L_inv_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_inv'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1483 \
    name L_inv_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename L_inv_1 \
    op interface \
    ports { L_inv_1_address0 { O 3 vector } L_inv_1_ce0 { O 1 bit } L_inv_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_inv_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1485 \
    name L_inv_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename L_inv_2 \
    op interface \
    ports { L_inv_2_address0 { O 3 vector } L_inv_2_ce0 { O 1 bit } L_inv_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_inv_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1487 \
    name L_inv_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename L_inv_3 \
    op interface \
    ports { L_inv_3_address0 { O 3 vector } L_inv_3_ce0 { O 1 bit } L_inv_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_inv_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1489 \
    name L_inv_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename L_inv_4 \
    op interface \
    ports { L_inv_4_address0 { O 3 vector } L_inv_4_ce0 { O 1 bit } L_inv_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_inv_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1491 \
    name L_inv_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename L_inv_5 \
    op interface \
    ports { L_inv_5_address0 { O 3 vector } L_inv_5_ce0 { O 1 bit } L_inv_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_inv_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1493 \
    name L_inv_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename L_inv_6 \
    op interface \
    ports { L_inv_6_address0 { O 3 vector } L_inv_6_ce0 { O 1 bit } L_inv_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'L_inv_6'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1416 \
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
    id 1417 \
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
    id 1418 \
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
    id 1419 \
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
    id 1420 \
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
    id 1421 \
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
    id 1422 \
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
    id 1423 \
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
    id 1424 \
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
    id 1425 \
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
    id 1426 \
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
    id 1427 \
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
    id 1428 \
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
    id 1429 \
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
    id 1430 \
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
    id 1431 \
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
    id 1432 \
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
    id 1433 \
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
    id 1434 \
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
    id 1435 \
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
    id 1436 \
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
    id 1437 \
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
    id 1438 \
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
    id 1439 \
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
    id 1440 \
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
    id 1441 \
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
    id 1442 \
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
    id 1443 \
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
    id 1444 \
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
    id 1445 \
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
    id 1446 \
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
    id 1447 \
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
    id 1448 \
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
    id 1449 \
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
    id 1450 \
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
    id 1451 \
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
    id 1452 \
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
    id 1453 \
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
    id 1454 \
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
    id 1455 \
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
    id 1456 \
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
    id 1457 \
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
    id 1458 \
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
    id 1459 \
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
    id 1460 \
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
    id 1461 \
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
    id 1462 \
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
    id 1463 \
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
    id 1464 \
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
    id 1465 \
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
    id 1466 \
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
    id 1467 \
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
    id 1468 \
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
    id 1469 \
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
    id 1470 \
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
    id 1471 \
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
    id 1472 \
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
    id 1473 \
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
    id 1474 \
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
    id 1475 \
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
    id 1476 \
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
    id 1477 \
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
    id 1478 \
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
    id 1479 \
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
    id 1480 \
    name p_reload1253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1253 \
    op interface \
    ports { p_reload1253 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1482 \
    name p_reload1252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1252 \
    op interface \
    ports { p_reload1252 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1484 \
    name p_reload1251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1251 \
    op interface \
    ports { p_reload1251 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1486 \
    name p_reload1250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1250 \
    op interface \
    ports { p_reload1250 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1488 \
    name p_reload1249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1249 \
    op interface \
    ports { p_reload1249 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1490 \
    name p_reload1248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1248 \
    op interface \
    ports { p_reload1248 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1492 \
    name p_reload1247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1247 \
    op interface \
    ports { p_reload1247 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1494 \
    name p_reload1246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1246 \
    op interface \
    ports { p_reload1246 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1495 \
    name p_reload1245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1245 \
    op interface \
    ports { p_reload1245 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1496 \
    name p_reload1244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1244 \
    op interface \
    ports { p_reload1244 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1497 \
    name p_reload1243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1243 \
    op interface \
    ports { p_reload1243 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1498 \
    name p_reload1242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1242 \
    op interface \
    ports { p_reload1242 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1499 \
    name p_reload1241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1241 \
    op interface \
    ports { p_reload1241 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1500 \
    name p_reload1240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1240 \
    op interface \
    ports { p_reload1240 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1501 \
    name p_reload1239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1239 \
    op interface \
    ports { p_reload1239 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1502 \
    name p_reload1238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1238 \
    op interface \
    ports { p_reload1238 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1503 \
    name p_reload1237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1237 \
    op interface \
    ports { p_reload1237 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1504 \
    name p_reload1236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1236 \
    op interface \
    ports { p_reload1236 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1505 \
    name p_reload1235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1235 \
    op interface \
    ports { p_reload1235 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1506 \
    name p_reload1234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1234 \
    op interface \
    ports { p_reload1234 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1507 \
    name p_reload1233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1233 \
    op interface \
    ports { p_reload1233 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1508 \
    name p_reload1232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1232 \
    op interface \
    ports { p_reload1232 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1509 \
    name p_reload1231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1231 \
    op interface \
    ports { p_reload1231 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1510 \
    name p_reload1230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1230 \
    op interface \
    ports { p_reload1230 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1511 \
    name p_reload1229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1229 \
    op interface \
    ports { p_reload1229 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1512 \
    name p_reload1228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1228 \
    op interface \
    ports { p_reload1228 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1513 \
    name p_reload1227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1227 \
    op interface \
    ports { p_reload1227 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1514 \
    name p_reload1226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1226 \
    op interface \
    ports { p_reload1226 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1515 \
    name p_reload1225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1225 \
    op interface \
    ports { p_reload1225 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1516 \
    name p_reload1224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1224 \
    op interface \
    ports { p_reload1224 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1517 \
    name p_reload1223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1223 \
    op interface \
    ports { p_reload1223 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1518 \
    name p_reload1222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1222 \
    op interface \
    ports { p_reload1222 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1519 \
    name p_reload1221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1221 \
    op interface \
    ports { p_reload1221 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1520 \
    name p_reload1220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1220 \
    op interface \
    ports { p_reload1220 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1521 \
    name p_reload1219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1219 \
    op interface \
    ports { p_reload1219 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1522 \
    name p_reload1218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1218 \
    op interface \
    ports { p_reload1218 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1523 \
    name p_reload1217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1217 \
    op interface \
    ports { p_reload1217 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1524 \
    name p_reload1216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1216 \
    op interface \
    ports { p_reload1216 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1525 \
    name p_reload1215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1215 \
    op interface \
    ports { p_reload1215 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1526 \
    name p_reload1214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1214 \
    op interface \
    ports { p_reload1214 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1527 \
    name p_reload1213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1213 \
    op interface \
    ports { p_reload1213 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1528 \
    name p_reload1212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1212 \
    op interface \
    ports { p_reload1212 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1529 \
    name p_reload1211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1211 \
    op interface \
    ports { p_reload1211 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1530 \
    name p_reload1210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1210 \
    op interface \
    ports { p_reload1210 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1531 \
    name p_reload1209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1209 \
    op interface \
    ports { p_reload1209 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1532 \
    name p_reload1208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1208 \
    op interface \
    ports { p_reload1208 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1533 \
    name p_reload1207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1207 \
    op interface \
    ports { p_reload1207 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1534 \
    name p_reload1206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1206 \
    op interface \
    ports { p_reload1206 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1535 \
    name p_reload1205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1205 \
    op interface \
    ports { p_reload1205 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1536 \
    name p_reload1204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1204 \
    op interface \
    ports { p_reload1204 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1537 \
    name p_reload1203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1203 \
    op interface \
    ports { p_reload1203 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1538 \
    name p_reload1202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1202 \
    op interface \
    ports { p_reload1202 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1539 \
    name p_reload1201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1201 \
    op interface \
    ports { p_reload1201 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1540 \
    name p_reload1200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1200 \
    op interface \
    ports { p_reload1200 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1541 \
    name p_reload1199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1199 \
    op interface \
    ports { p_reload1199 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1542 \
    name p_reload1198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1198 \
    op interface \
    ports { p_reload1198 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1543 \
    name p_reload1197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1197 \
    op interface \
    ports { p_reload1197 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1544 \
    name p_reload1196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1196 \
    op interface \
    ports { p_reload1196 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1545 \
    name p_reload1195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1195 \
    op interface \
    ports { p_reload1195 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1546 \
    name p_reload1194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1194 \
    op interface \
    ports { p_reload1194 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1547 \
    name p_reload1193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1193 \
    op interface \
    ports { p_reload1193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1548 \
    name p_reload1192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1192 \
    op interface \
    ports { p_reload1192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1549 \
    name p_reload1191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload1191 \
    op interface \
    ports { p_reload1191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1550 \
    name p_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload \
    op interface \
    ports { p_reload { I 32 vector } } \
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


