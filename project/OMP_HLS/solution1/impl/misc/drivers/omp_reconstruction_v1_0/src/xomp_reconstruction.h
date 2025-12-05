// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XOMP_RECONSTRUCTION_H
#define XOMP_RECONSTRUCTION_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xomp_reconstruction_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XOmp_reconstruction_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XOmp_reconstruction;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XOmp_reconstruction_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XOmp_reconstruction_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XOmp_reconstruction_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XOmp_reconstruction_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XOmp_reconstruction_Initialize(XOmp_reconstruction *InstancePtr, u16 DeviceId);
XOmp_reconstruction_Config* XOmp_reconstruction_LookupConfig(u16 DeviceId);
int XOmp_reconstruction_CfgInitialize(XOmp_reconstruction *InstancePtr, XOmp_reconstruction_Config *ConfigPtr);
#else
int XOmp_reconstruction_Initialize(XOmp_reconstruction *InstancePtr, const char* InstanceName);
int XOmp_reconstruction_Release(XOmp_reconstruction *InstancePtr);
#endif

void XOmp_reconstruction_Start(XOmp_reconstruction *InstancePtr);
u32 XOmp_reconstruction_IsDone(XOmp_reconstruction *InstancePtr);
u32 XOmp_reconstruction_IsIdle(XOmp_reconstruction *InstancePtr);
u32 XOmp_reconstruction_IsReady(XOmp_reconstruction *InstancePtr);
void XOmp_reconstruction_EnableAutoRestart(XOmp_reconstruction *InstancePtr);
void XOmp_reconstruction_DisableAutoRestart(XOmp_reconstruction *InstancePtr);

void XOmp_reconstruction_Set_y(XOmp_reconstruction *InstancePtr, u64 Data);
u64 XOmp_reconstruction_Get_y(XOmp_reconstruction *InstancePtr);
void XOmp_reconstruction_Set_A(XOmp_reconstruction *InstancePtr, u64 Data);
u64 XOmp_reconstruction_Get_A(XOmp_reconstruction *InstancePtr);
void XOmp_reconstruction_Set_x_out(XOmp_reconstruction *InstancePtr, u64 Data);
u64 XOmp_reconstruction_Get_x_out(XOmp_reconstruction *InstancePtr);

void XOmp_reconstruction_InterruptGlobalEnable(XOmp_reconstruction *InstancePtr);
void XOmp_reconstruction_InterruptGlobalDisable(XOmp_reconstruction *InstancePtr);
void XOmp_reconstruction_InterruptEnable(XOmp_reconstruction *InstancePtr, u32 Mask);
void XOmp_reconstruction_InterruptDisable(XOmp_reconstruction *InstancePtr, u32 Mask);
void XOmp_reconstruction_InterruptClear(XOmp_reconstruction *InstancePtr, u32 Mask);
u32 XOmp_reconstruction_InterruptGetEnabled(XOmp_reconstruction *InstancePtr);
u32 XOmp_reconstruction_InterruptGetStatus(XOmp_reconstruction *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
