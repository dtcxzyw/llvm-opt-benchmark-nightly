Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/rlen3H?download=true
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden half @__ocml_rlen3_f16(half noundef %0, half noundef %1, half noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fpext half %0 to float                   ; 2 uses
  %i.b = fpext half %1 to float                   ; 2 uses
  %i.c = fpext half %2 to float                   ; 2 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fma.f32(float %i.b, float %i.b, float %i.d)
  %i.f = tail call float @llvm.fma.f32(float %i.a, float %i.a, float %i.e)
  %i.g = tail call float @llvm.amdgcn.rsq.f32(float %i.f)
  %i.h = fptrunc float %i.g to half               ; 2 uses
  %i.i = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = insertelement <2 x half> poison, half %0, i64 0
  %4 = insertelement <2 x half> %3, half %1, i64 1
  %5 = tail call <2 x half> @llvm.fabs.v2f16(<2 x half> %4)
  %6 = fcmp oeq <2 x half> %5, splat (half +inf)
  %7 = bitcast <2 x i1> %6 to i2
  %8 = icmp ne i2 %7, 0
  %i.k = tail call half @llvm.fabs.f16(half %2)
  %i.l = fcmp oeq half %i.k, +inf
  %i.m = or i1 %8, %i.l
  %i.n = select i1 %i.m, half 0.000000e+00, half %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi half [ %i.h, %bb.a ], [ %i.n, %bb.b ]
  ret half %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.rsq.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.fabs.f16(half) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x half> @llvm.fabs.v2f16(<2 x half>) #1

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
