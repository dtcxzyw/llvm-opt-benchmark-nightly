Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/atanhH?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden <2 x half> @__ocml_atanh_2f16(<2 x half> noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = extractelement <2 x half> %0, i64 0      ; 3 uses
  %1 = tail call half @llvm.fabs.f16(half %i.a)   ; 5 uses
  %i.b = fpext half %1 to float                   ; 2 uses
  %i.c = fadd float %i.b, 1.000000e+00
  %i.d = fsub float 1.000000e+00, %i.b
  %i.e = tail call float @llvm.amdgcn.rcp.f32(float %i.d)
  %i.f = fmul float %i.c, %i.e
  %i.g = tail call float @llvm.amdgcn.log.f32(float %i.f)
  %2 = fmul float %i.g, f0x3EB17218
  %3 = fptrunc float %2 to half
  %4 = fcmp olt half %1, 7.812500e-03
  %5 = select i1 %4, half %1, half %3             ; 2 uses
  %6 = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %7 = trunc nuw i8 %6 to i1                      ; 2 uses
  br i1 %7, label %__ocml_atanh_f16.exit, label %8

8:                                                ; preds = %bb.a
  %9 = fcmp oeq half %1, 1.000000e+00
  %10 = select i1 %9, half +inf, half %5
  %11 = fcmp ogt half %1, 1.000000e+00
  %12 = fcmp uno half %i.a, 0.000000e+00
  %13 = or i1 %12, %11
  %14 = select i1 %13, half +qnan, half %10
  br label %__ocml_atanh_f16.exit

__ocml_atanh_f16.exit:                            ; preds = %bb.a, %8
  %.0.i = phi half [ %5, %bb.a ], [ %14, %8 ]
  %15 = extractelement <2 x half> %0, i64 1       ; 3 uses
  %16 = tail call half @llvm.fabs.f16(half %15)   ; 5 uses
  %17 = fpext half %16 to float                   ; 2 uses
  %18 = fadd float %17, 1.000000e+00
  %19 = fsub float 1.000000e+00, %17
  %20 = tail call float @llvm.amdgcn.rcp.f32(float %19)
  %21 = fmul float %18, %20
  %22 = tail call float @llvm.amdgcn.log.f32(float %21)
  %23 = fmul float %22, f0x3EB17218
  %24 = fptrunc float %23 to half
  %25 = fcmp olt half %16, 7.812500e-03
  %26 = select i1 %25, half %16, half %24         ; 2 uses
  br i1 %7, label %__ocml_atanh_f16.exit4, label %27

27:                                               ; preds = %__ocml_atanh_f16.exit
  %28 = fcmp oeq half %16, 1.000000e+00
  %29 = select i1 %28, half +inf, half %26
  %30 = fcmp ogt half %16, 1.000000e+00
  %31 = fcmp uno half %15, 0.000000e+00
  %32 = or i1 %31, %30
  %33 = select i1 %32, half +qnan, half %29
  br label %__ocml_atanh_f16.exit4

__ocml_atanh_f16.exit4:                           ; preds = %__ocml_atanh_f16.exit, %27
  %.0.i3 = phi half [ %26, %__ocml_atanh_f16.exit ], [ %33, %27 ]
  %34 = tail call half @llvm.copysign.f16(half %.0.i, half %i.a)
  %35 = insertelement <2 x half> poison, half %34, i64 0
  %36 = tail call half @llvm.copysign.f16(half %.0.i3, half %15)
  %37 = insertelement <2 x half> %35, half %36, i64 1
  ret <2 x half> %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden half @__ocml_atanh_f16(half noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call half @llvm.fabs.f16(half %0)   ; 5 uses
  %i.b = fpext half %i.a to float                 ; 2 uses
  %i.c = fadd float %i.b, 1.000000e+00
  %i.d = fsub float 1.000000e+00, %i.b
  %i.e = tail call float @llvm.amdgcn.rcp.f32(float %i.d)
  %i.f = fmul float %i.c, %i.e
  %i.g = tail call float @llvm.amdgcn.log.f32(float %i.f)
  %i.h = fmul float %i.g, f0x3EB17218
  %i.i = fptrunc float %i.h to half
  %i.j = fcmp olt half %i.a, 7.812500e-03
  %i.k = select i1 %i.j, half %i.a, half %i.i     ; 2 uses
  %i.l = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %8, label %1

1:                                                ; preds = %bb.a
  %2 = fcmp oeq half %i.a, 1.000000e+00
  %3 = select i1 %2, half +inf, half %i.k
  %4 = fcmp ogt half %i.a, 1.000000e+00
  %5 = fcmp uno half %0, 0.000000e+00
  %6 = or i1 %5, %4
  %7 = select i1 %6, half +qnan, half %3
  br label %8

8:                                                ; preds = %1, %bb.a
  %.0 = phi half [ %i.k, %bb.a ], [ %7, %1 ]
  %9 = tail call half @llvm.copysign.f16(half %.0, half %0)
  ret half %9
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.fabs.f16(half) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.rcp.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.log.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.copysign.f16(half, half) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!opencl.ocl.version = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 2, i32 0}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
end_hunk_0
