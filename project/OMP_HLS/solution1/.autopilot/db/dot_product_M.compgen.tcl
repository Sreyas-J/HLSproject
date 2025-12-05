# This script segment is generated automatically by AutoPilot

set name omp_reconstruction_fadd_32ns_32ns_32_2_full_dsp_0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 1 ALLOW_PRAGMA 1
}


set name omp_reconstruction_fmul_32ns_32ns_32_2_max_dsp_0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name v1_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_0_val \
    op interface \
    ports { v1_0_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name v1_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_1_val \
    op interface \
    ports { v1_1_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name v1_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_2_val \
    op interface \
    ports { v1_2_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name v1_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_3_val \
    op interface \
    ports { v1_3_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name v1_4_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_4_val \
    op interface \
    ports { v1_4_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name v1_5_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_5_val \
    op interface \
    ports { v1_5_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name v1_6_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_6_val \
    op interface \
    ports { v1_6_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name v1_7_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_7_val \
    op interface \
    ports { v1_7_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name v1_8_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_8_val \
    op interface \
    ports { v1_8_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name v1_9_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_9_val \
    op interface \
    ports { v1_9_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name v1_10_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_10_val \
    op interface \
    ports { v1_10_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name v1_11_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_11_val \
    op interface \
    ports { v1_11_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name v1_12_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_12_val \
    op interface \
    ports { v1_12_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name v1_13_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_13_val \
    op interface \
    ports { v1_13_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name v1_14_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_14_val \
    op interface \
    ports { v1_14_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name v1_15_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_15_val \
    op interface \
    ports { v1_15_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name v1_16_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_16_val \
    op interface \
    ports { v1_16_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name v1_17_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_17_val \
    op interface \
    ports { v1_17_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name v1_18_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_18_val \
    op interface \
    ports { v1_18_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name v1_19_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_19_val \
    op interface \
    ports { v1_19_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name v1_20_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_20_val \
    op interface \
    ports { v1_20_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name v1_21_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_21_val \
    op interface \
    ports { v1_21_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name v1_22_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_22_val \
    op interface \
    ports { v1_22_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name v1_23_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_23_val \
    op interface \
    ports { v1_23_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name v1_24_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_24_val \
    op interface \
    ports { v1_24_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name v1_25_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_25_val \
    op interface \
    ports { v1_25_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name v1_26_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_26_val \
    op interface \
    ports { v1_26_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name v1_27_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_27_val \
    op interface \
    ports { v1_27_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name v1_28_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_28_val \
    op interface \
    ports { v1_28_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name v1_29_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_29_val \
    op interface \
    ports { v1_29_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name v1_30_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_30_val \
    op interface \
    ports { v1_30_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name v1_31_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_31_val \
    op interface \
    ports { v1_31_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name v1_32_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_32_val \
    op interface \
    ports { v1_32_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name v1_33_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_33_val \
    op interface \
    ports { v1_33_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name v1_34_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_34_val \
    op interface \
    ports { v1_34_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name v1_35_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_35_val \
    op interface \
    ports { v1_35_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name v1_36_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_36_val \
    op interface \
    ports { v1_36_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name v1_37_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_37_val \
    op interface \
    ports { v1_37_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name v1_38_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_38_val \
    op interface \
    ports { v1_38_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name v1_39_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_39_val \
    op interface \
    ports { v1_39_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name v1_40_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_40_val \
    op interface \
    ports { v1_40_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name v1_41_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_41_val \
    op interface \
    ports { v1_41_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name v1_42_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_42_val \
    op interface \
    ports { v1_42_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name v1_43_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_43_val \
    op interface \
    ports { v1_43_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name v1_44_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_44_val \
    op interface \
    ports { v1_44_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name v1_45_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_45_val \
    op interface \
    ports { v1_45_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name v1_46_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_46_val \
    op interface \
    ports { v1_46_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name v1_47_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v1_47_val \
    op interface \
    ports { v1_47_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name v2_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_0_val \
    op interface \
    ports { v2_0_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name v2_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_1_val \
    op interface \
    ports { v2_1_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name v2_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_2_val \
    op interface \
    ports { v2_2_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name v2_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_3_val \
    op interface \
    ports { v2_3_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name v2_4_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_4_val \
    op interface \
    ports { v2_4_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name v2_5_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_5_val \
    op interface \
    ports { v2_5_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name v2_6_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_6_val \
    op interface \
    ports { v2_6_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name v2_7_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_7_val \
    op interface \
    ports { v2_7_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name v2_8_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_8_val \
    op interface \
    ports { v2_8_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name v2_9_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_9_val \
    op interface \
    ports { v2_9_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name v2_10_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_10_val \
    op interface \
    ports { v2_10_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name v2_11_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_11_val \
    op interface \
    ports { v2_11_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name v2_12_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_12_val \
    op interface \
    ports { v2_12_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name v2_13_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_13_val \
    op interface \
    ports { v2_13_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name v2_14_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_14_val \
    op interface \
    ports { v2_14_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name v2_15_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_15_val \
    op interface \
    ports { v2_15_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name v2_16_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_16_val \
    op interface \
    ports { v2_16_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name v2_17_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_17_val \
    op interface \
    ports { v2_17_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name v2_18_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_18_val \
    op interface \
    ports { v2_18_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name v2_19_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_19_val \
    op interface \
    ports { v2_19_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name v2_20_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_20_val \
    op interface \
    ports { v2_20_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name v2_21_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_21_val \
    op interface \
    ports { v2_21_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name v2_22_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_22_val \
    op interface \
    ports { v2_22_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name v2_23_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_23_val \
    op interface \
    ports { v2_23_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name v2_24_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_24_val \
    op interface \
    ports { v2_24_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name v2_25_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_25_val \
    op interface \
    ports { v2_25_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name v2_26_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_26_val \
    op interface \
    ports { v2_26_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name v2_27_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_27_val \
    op interface \
    ports { v2_27_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name v2_28_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_28_val \
    op interface \
    ports { v2_28_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name v2_29_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_29_val \
    op interface \
    ports { v2_29_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name v2_30_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_30_val \
    op interface \
    ports { v2_30_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name v2_31_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_31_val \
    op interface \
    ports { v2_31_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name v2_32_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_32_val \
    op interface \
    ports { v2_32_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name v2_33_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_33_val \
    op interface \
    ports { v2_33_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name v2_34_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_34_val \
    op interface \
    ports { v2_34_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name v2_35_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_35_val \
    op interface \
    ports { v2_35_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name v2_36_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_36_val \
    op interface \
    ports { v2_36_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name v2_37_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_37_val \
    op interface \
    ports { v2_37_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name v2_38_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_38_val \
    op interface \
    ports { v2_38_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name v2_39_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_39_val \
    op interface \
    ports { v2_39_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name v2_40_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_40_val \
    op interface \
    ports { v2_40_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name v2_41_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_41_val \
    op interface \
    ports { v2_41_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name v2_42_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_42_val \
    op interface \
    ports { v2_42_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name v2_43_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_43_val \
    op interface \
    ports { v2_43_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name v2_44_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_44_val \
    op interface \
    ports { v2_44_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name v2_45_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_45_val \
    op interface \
    ports { v2_45_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name v2_46_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_46_val \
    op interface \
    ports { v2_46_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name v2_47_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2_47_val \
    op interface \
    ports { v2_47_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 32 vector } } \
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


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


