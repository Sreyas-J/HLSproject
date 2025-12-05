// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xomp_reconstruction.h"

extern XOmp_reconstruction_Config XOmp_reconstruction_ConfigTable[];

XOmp_reconstruction_Config *XOmp_reconstruction_LookupConfig(u16 DeviceId) {
	XOmp_reconstruction_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XOMP_RECONSTRUCTION_NUM_INSTANCES; Index++) {
		if (XOmp_reconstruction_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XOmp_reconstruction_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XOmp_reconstruction_Initialize(XOmp_reconstruction *InstancePtr, u16 DeviceId) {
	XOmp_reconstruction_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XOmp_reconstruction_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XOmp_reconstruction_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

