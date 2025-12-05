// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xomp_reconstruction.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XOmp_reconstruction_CfgInitialize(XOmp_reconstruction *InstancePtr, XOmp_reconstruction_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XOmp_reconstruction_Start(XOmp_reconstruction *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_AP_CTRL) & 0x80;
    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XOmp_reconstruction_IsDone(XOmp_reconstruction *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XOmp_reconstruction_IsIdle(XOmp_reconstruction *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XOmp_reconstruction_IsReady(XOmp_reconstruction *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XOmp_reconstruction_EnableAutoRestart(XOmp_reconstruction *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XOmp_reconstruction_DisableAutoRestart(XOmp_reconstruction *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_AP_CTRL, 0);
}

void XOmp_reconstruction_Set_y(XOmp_reconstruction *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_Y_DATA, (u32)(Data));
    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_Y_DATA + 4, (u32)(Data >> 32));
}

u64 XOmp_reconstruction_Get_y(XOmp_reconstruction *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_Y_DATA);
    Data += (u64)XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_Y_DATA + 4) << 32;
    return Data;
}

void XOmp_reconstruction_Set_A(XOmp_reconstruction *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_A_DATA, (u32)(Data));
    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XOmp_reconstruction_Get_A(XOmp_reconstruction *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_A_DATA);
    Data += (u64)XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XOmp_reconstruction_Set_x_out(XOmp_reconstruction *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_X_OUT_DATA, (u32)(Data));
    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_X_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XOmp_reconstruction_Get_x_out(XOmp_reconstruction *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_X_OUT_DATA);
    Data += (u64)XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_X_OUT_DATA + 4) << 32;
    return Data;
}

void XOmp_reconstruction_InterruptGlobalEnable(XOmp_reconstruction *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_GIE, 1);
}

void XOmp_reconstruction_InterruptGlobalDisable(XOmp_reconstruction *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_GIE, 0);
}

void XOmp_reconstruction_InterruptEnable(XOmp_reconstruction *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_IER);
    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_IER, Register | Mask);
}

void XOmp_reconstruction_InterruptDisable(XOmp_reconstruction *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_IER);
    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_IER, Register & (~Mask));
}

void XOmp_reconstruction_InterruptClear(XOmp_reconstruction *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOmp_reconstruction_WriteReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_ISR, Mask);
}

u32 XOmp_reconstruction_InterruptGetEnabled(XOmp_reconstruction *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_IER);
}

u32 XOmp_reconstruction_InterruptGetStatus(XOmp_reconstruction *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XOmp_reconstruction_ReadReg(InstancePtr->Control_BaseAddress, XOMP_RECONSTRUCTION_CONTROL_ADDR_ISR);
}

