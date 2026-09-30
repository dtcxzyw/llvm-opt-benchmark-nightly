Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/powrD?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden double @__ocml_powr_f64(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00
  %spec.store.select = select i1 %i.a, double +qnan, double %0 ; 7 uses
  %i.b = tail call <2 x double> @__ocmlpriv_epln_f64(double noundef %spec.store.select) #3 ; 2 uses
  %i.c = extractelement <2 x double> %i.b, i64 1  ; 2 uses
  %i.d = fmul double %1, %i.c                     ; 5 uses
  %i.e = fneg double %i.d
  %i.f = tail call double @llvm.fma.f64(double %1, double %i.c, double %i.e)
  %i.g = extractelement <2 x double> %i.b, i64 0
  %i.h = tail call double @llvm.fma.f64(double %1, double %i.g, double %i.f) ; 2 uses
  %i.i = fadd double %i.d, %i.h                   ; 2 uses
  %i.j = fsub double %i.i, %i.d
  %i.k = fsub double %i.h, %i.j
  %i.l = tail call double @llvm.fabs.f64(double %i.d)
  %i.m = fcmp oeq double %i.l, +inf
  %i.n = select i1 %i.m, double %i.d, double %i.i ; 2 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp oeq double %i.o, +inf
  %i.q = select i1 %i.p, double 0.000000e+00, double %i.k
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.n, i64 1
  %i.t = tail call double @__ocmlpriv_expep_f64(<2 x double> noundef %i.s) #3
  %i.u = fcmp olt double %1, 0.000000e+00         ; 2 uses
  %i.v = select i1 %i.u, double +inf, double 0.000000e+00 ; 2 uses
  %i.w = select i1 %i.u, double 0.000000e+00, double +inf ; 2 uses
  %i.x = fcmp oeq double %spec.store.select, 0.000000e+00 ; 2 uses
  %2 = fcmp oeq double %1, 0.000000e+00           ; 2 uses
  %i.y = select i1 %2, double +qnan, double %i.v
  %.0 = select i1 %i.x, double %i.y, double %i.t
  %i.z = fcmp oeq double %spec.store.select, +inf
  %3 = fcmp une double %1, 0.000000e+00
  %or.cond = and i1 %3, %i.z
  %.1 = select i1 %or.cond, double %i.w, double %.0
  %i.aa = tail call double @llvm.fabs.f64(double %1)
  %i.ab = fcmp oeq double %i.aa, +inf
  %i.ac = fcmp une double %spec.store.select, 1.000000e+00
  %or.cond3 = and i1 %i.ab, %i.ac
  %i.ad = fcmp olt double %spec.store.select, 1.000000e+00
  %i.ae = select i1 %i.ad, double %i.v, double %i.w
  %.2 = select i1 %or.cond3, double %i.ae, double %.1
  %i.af = tail call double @llvm.fabs.f64(double %spec.store.select)
  %i.ag = fcmp oeq double %i.af, +inf
  %i.ah = or i1 %i.x, %i.ag
  %i.ai = select i1 %i.ah, double +qnan, double 1.000000e+00
  %.3 = select i1 %2, double %i.ai, double %.2
  %i.aj = fcmp uno double %spec.store.select, %1
  %.4 = select i1 %i.aj, double +qnan, double %.3
  ret double %.4
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare double @__ocmlpriv_expep_f64(<2 x double> noundef) local_unnamed_addr #1

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare <2 x double> @__ocmlpriv_epln_f64(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

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
end_hunk_0
