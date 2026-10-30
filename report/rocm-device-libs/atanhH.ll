Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/atanhH?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden <2 x half> @__ocml_atanh_2f16(<2 x half> noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %2 = trunc nuw i8 %1 to i1
  %3 = tail call <2 x half> @llvm.fabs.v2f16(<2 x half> %0) ; 6 uses
  %i.a = extractelement <2 x half> %3, i64 0
  %4 = fpext half %i.a to float                   ; 2 uses
  %5 = fadd float %4, 1.000000e+00
  %6 = fsub float 1.000000e+00, %4
  %7 = tail call float @llvm.amdgcn.rcp.f32(float %6)
  %8 = fmul float %5, %7
  %9 = tail call float @llvm.amdgcn.log.f32(float %8)
  %10 = extractelement <2 x half> %3, i64 1
  %i.b = fpext half %10 to float                  ; 2 uses
  %i.c = fadd float %i.b, 1.000000e+00
  %i.d = fsub float 1.000000e+00, %i.b
  %i.e = tail call float @llvm.amdgcn.rcp.f32(float %i.d)
  %i.f = fmul float %i.c, %i.e
  %i.g = tail call float @llvm.amdgcn.log.f32(float %i.f)
  %11 = insertelement <2 x float> poison, float %9, i64 0
  %12 = insertelement <2 x float> %11, float %i.g, i64 1
  %13 = fmul <2 x float> %12, splat (float f0x3EB17218)
  %14 = fptrunc <2 x float> %13 to <2 x half>
  %15 = fcmp olt <2 x half> %3, splat (half 7.812500e-03)
  %16 = select <2 x i1> %15, <2 x half> %3, <2 x half> %14 ; 2 uses
  %17 = fcmp oeq <2 x half> %3, splat (half 1.000000e+00)
  %18 = select <2 x i1> %17, <2 x half> splat (half +inf), <2 x half> %16
  %19 = fcmp ugt <2 x half> %3, splat (half 1.000000e+00)
  %20 = select <2 x i1> %19, <2 x half> splat (half +qnan), <2 x half> %18
  %21 = insertelement <2 x i1> poison, i1 %2, i64 0
  %22 = shufflevector <2 x i1> %21, <2 x i1> poison, <2 x i32> zeroinitializer
  %23 = select <2 x i1> %22, <2 x half> %16, <2 x half> %20
  %24 = tail call <2 x half> @llvm.copysign.v2f16(<2 x half> %23, <2 x half> %0)
  ret <2 x half> %24
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
  %1 = fcmp oeq half %i.a, 1.000000e+00
  %2 = select i1 %1, half +inf, half %i.k
  %3 = fcmp ugt half %i.a, 1.000000e+00
  %4 = select i1 %3, half +qnan, half %2
  %.0 = select i1 %i.m, half %i.k, half %4
  %5 = tail call half @llvm.copysign.f16(half %.0, half %0)
  ret half %5
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.fabs.f16(half) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.rcp.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.log.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.copysign.f16(half, half) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x half> @llvm.fabs.v2f16(<2 x half>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x half> @llvm.copysign.v2f16(<2 x half>, <2 x half>) #1

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
