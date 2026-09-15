Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/powrH?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden <2 x half> @__ocml_powr_2f16(<2 x half> noundef %0, <2 x half> noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = extractelement <2 x half> %1, i64 1
  %i.b = extractelement <2 x half> %1, i64 0
  %i.c = fpext half %i.b to float
  %i.d = fpext half %i.a to float
  %i.e = fcmp olt <2 x half> %0, zeroinitializer
  %i.f = select <2 x i1> %i.e, <2 x half> splat (half +qnan), <2 x half> %0 ; 7 uses
  %i.g = extractelement <2 x half> %i.f, i64 0
  %i.h = fpext half %i.g to float
  %i.i = tail call float @llvm.amdgcn.log.f32(float %i.h)
  %i.j = fmul float %i.i, %i.c
  %i.k = tail call noundef float @llvm.amdgcn.exp2.f32(float %i.j)
  %i.l = extractelement <2 x half> %i.f, i64 1
  %i.m = fpext half %i.l to float
  %i.n = tail call float @llvm.amdgcn.log.f32(float %i.m)
  %i.o = fmul float %i.n, %i.d
  %i.p = tail call noundef float @llvm.amdgcn.exp2.f32(float %i.o)
  %i.q = insertelement <2 x float> poison, float %i.k, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1
  %i.s = fptrunc <2 x float> %i.r to <2 x half>
  %i.t = fcmp olt <2 x half> %1, zeroinitializer  ; 2 uses
  %i.u = select <2 x i1> %i.t, <2 x half> splat (half +inf), <2 x half> zeroinitializer ; 2 uses
  %i.v = select <2 x i1> %i.t, <2 x half> zeroinitializer, <2 x half> splat (half +inf) ; 2 uses
  %i.w = fcmp oeq <2 x half> %i.f, zeroinitializer
  %2 = fcmp oeq <2 x half> %1, zeroinitializer
  %i.x = select <2 x i1> %2, <2 x half> splat (half +qnan), <2 x half> %i.u
  %i.y = select <2 x i1> %i.w, <2 x half> %i.x, <2 x half> %i.s
  %i.z = fcmp oeq <2 x half> %i.f, splat (half +inf)
  %3 = fcmp une <2 x half> %1, zeroinitializer
  %i.aa = and <2 x i1> %3, %i.z
  %i.ab = select <2 x i1> %i.aa, <2 x half> %i.v, <2 x half> %i.y
  %i.ac = tail call <2 x half> @llvm.fabs.v2f16(<2 x half> %1)
  %i.ad = fcmp oeq <2 x half> %i.ac, splat (half +inf)
  %i.ae = fcmp une <2 x half> %i.f, splat (half 1.000000e+00)
  %i.af = and <2 x i1> %i.ad, %i.ae
  %i.ag = fcmp olt <2 x half> %i.f, splat (half 1.000000e+00)
  %i.ah = select <2 x i1> %i.ag, <2 x half> %i.u, <2 x half> %i.v
  %i.ai = select <2 x i1> %i.af, <2 x half> %i.ah, <2 x half> %i.ab
  %i.aj = fcmp uno <2 x half> %i.f, %1
  %i.ak = select <2 x i1> %i.aj, <2 x half> splat (half +qnan), <2 x half> %i.ai
  ret <2 x half> %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden half @__ocml_powr_f16(half noundef %0, half noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt half %0, 0.000000e+00
  %spec.store.select = select i1 %i.a, half +qnan, half %0 ; 6 uses
  %i.b = fpext half %1 to float
  %i.c = fpext half %spec.store.select to float
  %i.d = tail call float @llvm.amdgcn.log.f32(float %i.c)
  %i.e = fmul float %i.d, %i.b
  %i.f = tail call noundef float @llvm.amdgcn.exp2.f32(float %i.e)
  %i.g = fptrunc float %i.f to half
  %i.h = fcmp olt half %1, 0.000000e+00           ; 2 uses
  %i.i = select i1 %i.h, half +inf, half 0.000000e+00 ; 2 uses
  %i.j = select i1 %i.h, half 0.000000e+00, half +inf ; 2 uses
  %i.k = fcmp oeq half %spec.store.select, 0.000000e+00
  %2 = fcmp oeq half %1, 0.000000e+00
  %i.l = select i1 %2, half +qnan, half %i.i
  %.0 = select i1 %i.k, half %i.l, half %i.g
  %i.m = fcmp oeq half %spec.store.select, +inf
  %3 = fcmp une half %1, 0.000000e+00
  %or.cond = and i1 %3, %i.m
  %.1 = select i1 %or.cond, half %i.j, half %.0
  %i.n = tail call half @llvm.fabs.f16(half %1)
  %i.o = fcmp oeq half %i.n, +inf
  %i.p = fcmp une half %spec.store.select, 1.000000e+00
  %or.cond3 = and i1 %i.o, %i.p
  %i.q = fcmp olt half %spec.store.select, 1.000000e+00
  %i.r = select i1 %i.q, half %i.i, half %i.j
  %.2 = select i1 %or.cond3, half %i.r, half %.1
  %i.s = fcmp uno half %spec.store.select, %1
  %.3 = select i1 %i.s, half +qnan, half %.2
  ret half %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.log.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.exp2.f32(float) #1

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
end_hunk_0
