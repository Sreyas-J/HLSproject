; ModuleID = '/home/pradyumna/Documents/sem7/HLS/project/OMP_HLS/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_omp_reconstruction_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="48" "maxi" %y, [128 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="48" "maxi" %A, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="128" "maxi" %x_out) local_unnamed_addr #0 {
entry:
  %y_copy = alloca [48 x float], align 512
  %malloccall = tail call i8* @malloc(i64 24576)
  %A_copy = bitcast i8* %malloccall to [48 x [128 x float]]*
  %x_out_copy = alloca [128 x float], align 512
  %0 = bitcast float* %y to [48 x float]*
  %1 = bitcast [128 x float]* %A to [48 x [128 x float]]*
  %2 = bitcast float* %x_out to [128 x float]*
  call fastcc void @copy_in([48 x float]* nonnull %0, [48 x float]* nonnull align 512 %y_copy, [48 x [128 x float]]* nonnull %1, [48 x [128 x float]]* %A_copy, [128 x float]* nonnull %2, [128 x float]* nonnull align 512 %x_out_copy)
  call void @apatb_omp_reconstruction_hw([48 x float]* %y_copy, [48 x [128 x float]]* %A_copy, [128 x float]* %x_out_copy)
  call void @copy_back([48 x float]* %0, [48 x float]* %y_copy, [48 x [128 x float]]* %1, [48 x [128 x float]]* %A_copy, [128 x float]* %2, [128 x float]* %x_out_copy)
  tail call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([48 x float]* noalias readonly, [48 x float]* noalias align 512, [48 x [128 x float]]* noalias readonly, [48 x [128 x float]]* noalias, [128 x float]* noalias readonly, [128 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a48f32([48 x float]* align 512 %1, [48 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a48a128f32([48 x [128 x float]]* %3, [48 x [128 x float]]* %2)
  call fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* align 512 %5, [128 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a48f32([48 x float]* noalias align 512 %dst, [48 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [48 x float]* %dst, null
  %1 = icmp eq [48 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a48f32([48 x float]* nonnull %dst, [48 x float]* nonnull %src, i64 48)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a48f32([48 x float]* %dst, [48 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [48 x float]* %src, null
  %1 = icmp eq [48 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [48 x float], [48 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [48 x float], [48 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a48a128f32([48 x [128 x float]]* noalias %dst, [48 x [128 x float]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [48 x [128 x float]]* %dst, null
  %1 = icmp eq [48 x [128 x float]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a48a128f32([48 x [128 x float]]* nonnull %dst, [48 x [128 x float]]* nonnull %src, i64 48)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a48a128f32([48 x [128 x float]]* %dst, [48 x [128 x float]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [48 x [128 x float]]* %src, null
  %1 = icmp eq [48 x [128 x float]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [48 x [128 x float]], [48 x [128 x float]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [48 x [128 x float]], [48 x [128 x float]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a128f32([128 x float]* %dst.addr, [128 x float]* %src.addr, i64 128)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a128f32([128 x float]* %dst, [128 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [128 x float]* %src, null
  %1 = icmp eq [128 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [128 x float], [128 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [128 x float], [128 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* noalias align 512 %dst, [128 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [128 x float]* %dst, null
  %1 = icmp eq [128 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a128f32([128 x float]* nonnull %dst, [128 x float]* nonnull %src, i64 128)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([48 x float]* noalias, [48 x float]* noalias readonly align 512, [48 x [128 x float]]* noalias, [48 x [128 x float]]* noalias readonly, [128 x float]* noalias, [128 x float]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a48f32([48 x float]* %0, [48 x float]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a48a128f32([48 x [128 x float]]* %2, [48 x [128 x float]]* %3)
  call fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* %4, [128 x float]* align 512 %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_omp_reconstruction_hw([48 x float]*, [48 x [128 x float]]*, [128 x float]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([48 x float]* noalias, [48 x float]* noalias readonly align 512, [48 x [128 x float]]* noalias, [48 x [128 x float]]* noalias readonly, [128 x float]* noalias, [128 x float]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128f32([128 x float]* %4, [128 x float]* align 512 %5)
  ret void
}

define void @omp_reconstruction_hw_stub_wrapper([48 x float]*, [48 x [128 x float]]*, [128 x float]*) #5 {
entry:
  call void @copy_out([48 x float]* null, [48 x float]* %0, [48 x [128 x float]]* null, [48 x [128 x float]]* %1, [128 x float]* null, [128 x float]* %2)
  %3 = bitcast [48 x float]* %0 to float*
  %4 = bitcast [48 x [128 x float]]* %1 to [128 x float]*
  %5 = bitcast [128 x float]* %2 to float*
  call void @omp_reconstruction_hw_stub(float* %3, [128 x float]* %4, float* %5)
  call void @copy_in([48 x float]* null, [48 x float]* %0, [48 x [128 x float]]* null, [48 x [128 x float]]* %1, [128 x float]* null, [128 x float]* %2)
  ret void
}

declare void @omp_reconstruction_hw_stub(float*, [128 x float]*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
