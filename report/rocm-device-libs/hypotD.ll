Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/hypotD?download=true
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden double @__ocml_hypot_f64(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.b = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.c = tail call nsz double @llvm.maxnum.f64(double %i.a, double %i.b) ; 2 uses
  %i.d = tail call { double, i32 } @llvm.frexp.f64.i32(double %i.c)
  %i.e = extractvalue { double, i32 } %i.d, 1     ; 2 uses
  %i.f = sub nsw i32 0, %i.e                      ; 2 uses
  %i.g = tail call double @llvm.ldexp.f64.i32(double %i.a, i32 %i.f) ; 2 uses
  %i.h = tail call double @llvm.ldexp.f64.i32(double %i.b, i32 %i.f) ; 2 uses
  %i.i = fmul double %i.h, %i.h
  %i.j = tail call double @llvm.fma.f64(double %i.g, double %i.g, double %i.i) ; 5 uses
  %i.k = tail call double @llvm.amdgcn.rsq.f64(double %i.j) ; 2 uses
  %i.l = fmul double %i.j, %i.k                   ; 3 uses
  %i.m = fmul double %i.k, 5.000000e-01           ; 3 uses
  %i.n = fneg double %i.m
  %i.o = tail call double @llvm.fma.f64(double %i.n, double %i.l, double 5.000000e-01) ; 2 uses
  %i.p = tail call double @llvm.fma.f64(double %i.m, double %i.o, double %i.m)
  %i.q = tail call double @llvm.fma.f64(double %i.l, double %i.o, double %i.l) ; 3 uses
  %i.r = fneg double %i.q
  %i.s = tail call double @llvm.fma.f64(double %i.r, double %i.q, double %i.j)
  %i.t = tail call double @llvm.fma.f64(double %i.s, double %i.p, double %i.q)
  %i.u = fcmp oeq double %i.j, 0.000000e+00
  %i.v = select i1 %i.u, double %i.j, double %i.t
  %i.w = tail call double @llvm.ldexp.f64.i32(double %i.v, i32 %i.e)
  %i.x = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.y = trunc nuw i8 %i.x to i1
  %2 = tail call double @llvm.fabs.f64(double %i.c)
  %i.z = fcmp une double %2, +inf
  %i.aa = or i1 %i.z, %i.y
  %.0 = select i1 %i.aa, double %i.w, double +inf
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { double, i32 } @llvm.frexp.f64.i32(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ldexp.f64.i32(double, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.amdgcn.rsq.f64(double) #1

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
