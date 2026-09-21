Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/rhypotH?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden <2 x half> @__ocml_rhypot_2f16(<2 x half> noundef %0, <2 x half> noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = extractelement <2 x half> %0, i64 0      ; 2 uses
  %i.b = extractelement <2 x half> %1, i64 0      ; 2 uses
  %i.c = fpext half %i.a to float                 ; 2 uses
  %i.d = fpext half %i.b to float                 ; 2 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = tail call float @__ocml_fmuladd_f32(float noundef %i.c, float noundef %i.c, float noundef %i.e) #3
  %i.g = tail call float @llvm.amdgcn.rsq.f32(float %i.f)
  %i.h = fptrunc float %i.g to half               ; 2 uses
  %i.i = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  br i1 %i.j, label %__ocml_rhypot_f16.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = tail call half @llvm.fabs.f16(half %i.a)
  %3 = fcmp oeq half %2, +inf
  %4 = tail call half @llvm.fabs.f16(half %i.b)
  %5 = fcmp oeq half %4, +inf
  %6 = or i1 %3, %5
  %i.k = select i1 %6, half 0.000000e+00, half %i.h
  br label %__ocml_rhypot_f16.exit

__ocml_rhypot_f16.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi half [ %i.h, %bb.a ], [ %i.k, %bb.b ]
  %i.l = extractelement <2 x half> %0, i64 1      ; 2 uses
  %i.m = extractelement <2 x half> %1, i64 1      ; 2 uses
  %i.n = fpext half %i.l to float                 ; 2 uses
  %i.o = fpext half %i.m to float                 ; 2 uses
  %i.p = fmul float %i.o, %i.o
  %i.q = tail call float @__ocml_fmuladd_f32(float noundef %i.n, float noundef %i.n, float noundef %i.p) #3
  %i.r = tail call float @llvm.amdgcn.rsq.f32(float %i.q)
  %i.s = fptrunc float %i.r to half               ; 2 uses
  br i1 %i.j, label %__ocml_rhypot_f16.exit6, label %bb.c

bb.c:                                             ; preds = %__ocml_rhypot_f16.exit
  %7 = tail call half @llvm.fabs.f16(half %i.l)
  %8 = fcmp oeq half %7, +inf
  %9 = tail call half @llvm.fabs.f16(half %i.m)
  %10 = fcmp oeq half %9, +inf
  %11 = or i1 %8, %10
  %i.t = select i1 %11, half 0.000000e+00, half %i.s
  br label %__ocml_rhypot_f16.exit6

__ocml_rhypot_f16.exit6:                          ; preds = %__ocml_rhypot_f16.exit, %bb.c
  %.0.i5 = phi half [ %i.s, %__ocml_rhypot_f16.exit ], [ %i.t, %bb.c ]
  %i.u = insertelement <2 x half> poison, half %.0.i, i64 0
  %i.v = insertelement <2 x half> %i.u, half %.0.i5, i64 1
  ret <2 x half> %i.v
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden half @__ocml_rhypot_f16(half noundef %0, half noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fpext half %0 to float                   ; 2 uses
  %i.b = fpext half %1 to float                   ; 2 uses
  %i.c = fmul float %i.b, %i.b
  %i.d = tail call float @__ocml_fmuladd_f32(float noundef %i.a, float noundef %i.a, float noundef %i.c) #3
  %i.e = tail call float @llvm.amdgcn.rsq.f32(float %i.d)
  %i.f = fptrunc float %i.e to half               ; 2 uses
  %i.g = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = tail call half @llvm.fabs.f16(half %0)
  %3 = fcmp oeq half %2, +inf
  %4 = tail call half @llvm.fabs.f16(half %1)
  %5 = fcmp oeq half %4, +inf
  %6 = or i1 %3, %5
  %i.i = select i1 %6, half 0.000000e+00, half %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi half [ %i.f, %bb.a ], [ %i.i, %bb.b ]
  ret half %.0
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare float @__ocml_fmuladd_f32(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.rsq.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.fabs.f16(half) #2

attributes #0 = { convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { convergent nounwind willreturn memory(none) }

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
