Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/cdivD?download=true
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden <2 x double> @__ocml_cdiv_f64(<2 x double> noundef %0, <2 x double> noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = extractelement <2 x double> %1, i64 0    ; 7 uses
  %i.b = extractelement <2 x double> %1, i64 1    ; 6 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.a) ; 3 uses
  %i.d = tail call double @llvm.fabs.f64(double %i.b) ; 3 uses
  %i.e = fcmp ogt double %i.c, %i.d               ; 3 uses
  %i.f = select i1 %i.e, double %i.a, double %i.b
  %i.g = tail call { double, i32 } @llvm.frexp.f64.i32(double %i.f)
  %i.h = extractvalue { double, i32 } %i.g, 1     ; 2 uses
  %i.i = extractelement <2 x double> %0, i64 0    ; 7 uses
  %i.j = tail call double @llvm.fabs.f64(double %i.i) ; 3 uses
  %i.k = extractelement <2 x double> %0, i64 1    ; 8 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k) ; 3 uses
  %i.m = tail call nsz double @llvm.maxnum.f64(double %i.j, double %i.l)
  %i.n = tail call { double, i32 } @llvm.frexp.f64.i32(double %i.m)
  %i.o = extractvalue { double, i32 } %i.n, 1
  %i.p = sub nsw i32 1022, %i.h                   ; 3 uses
  %i.q = sub nsw i32 %i.p, %i.h
  %i.r = sub nsw i32 %i.p, %i.o
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.q)
  %. = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.r)
  %i.t = ashr i32 %., 1                           ; 4 uses
  %i.u = tail call double @llvm.ldexp.f64.i32(double %i.b, i32 %i.t) ; 3 uses
  %i.v = tail call double @llvm.ldexp.f64.i32(double %i.a, i32 %i.t) ; 3 uses
  %i.w = select i1 %i.e, double %i.v, double %i.u ; 2 uses
  %i.x = select i1 %i.e, double %i.u, double %i.v ; 2 uses
  %i.y = fmul double %i.x, %i.x
  %i.z = tail call double @llvm.fma.f64(double %i.w, double %i.w, double %i.y) ; 2 uses
  %i.aa = tail call double @llvm.ldexp.f64.i32(double %i.u, i32 %i.t) ; 3 uses
  %i.ab = tail call double @llvm.ldexp.f64.i32(double %i.v, i32 %i.t) ; 2 uses
  %2 = fneg double %i.i                           ; 3 uses
  %3 = fmul double %i.aa, %2                      ; 2 uses
  %i.ac = fmul double %i.k, %i.aa                 ; 2 uses
  %4 = insertelement <2 x double> poison, double %i.ac, i64 0
  %5 = insertelement <2 x double> %4, double %3, i64 1
  %6 = fneg <2 x double> %5
  %7 = shufflevector <2 x double> %0, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %8 = insertelement <2 x double> %7, double %2, i64 1
  %9 = insertelement <2 x double> poison, double %i.aa, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %8, <2 x double> %10, <2 x double> %6)
  %i.ad = tail call double @llvm.fma.f64(double %i.k, double %i.ab, double %3)
  %i.ae = tail call double @llvm.fma.f64(double %i.i, double %i.ab, double %i.ac)
  %12 = insertelement <2 x double> poison, double %i.ae, i64 0
  %13 = insertelement <2 x double> %12, double %i.ad, i64 1
  %14 = fadd <2 x double> %13, %11
  %15 = insertelement <2 x double> poison, double %i.z, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = fdiv <2 x double> %14, %16                ; 2 uses
  %i.af = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.ag = trunc nuw i8 %i.af to i1
  %.not = xor i1 %i.ag, true
  %18 = extractelement <2 x double> %17, i64 0    ; 3 uses
  %i.ah = fcmp uno double %18, 0.000000e+00
  %or.cond = select i1 %.not, i1 %i.ah, i1 false
  %19 = extractelement <2 x double> %17, i64 1    ; 3 uses
  %i.ai = fcmp uno double %19, 0.000000e+00
  %or.cond135 = select i1 %or.cond, i1 %i.ai, i1 false
  br i1 %or.cond135, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.aj = fcmp oeq double %i.z, 0.000000e+00
  br i1 %i.aj, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ak = fcmp uno double %i.i, 0.000000e+00
  %i.al = fcmp uno double %i.k, 0.000000e+00
  %or.cond136 = and i1 %i.ak, %i.al
  br i1 %or.cond136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = tail call double @llvm.copysign.f64(double +inf, double %i.a) ; 2 uses
  %i.an = fmul double %i.i, %i.am
  %i.ao = fmul double %i.k, %i.am
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.ap = fcmp une double %i.j, +inf              ; 2 uses
  %i.aq = fcmp une double %i.l, +inf              ; 2 uses
  %or.cond138.not151 = and i1 %i.ap, %i.aq
  %i.ar = fcmp ueq double %i.c, +inf
  %or.cond140 = or i1 %or.cond138.not151, %i.ar
  %i.as = fcmp ueq double %i.d, +inf
  %or.cond142 = or i1 %i.as, %or.cond140
  br i1 %or.cond142, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = select i1 %i.ap, double 0.000000e+00, double 1.000000e+00
  %i.au = tail call double @llvm.copysign.f64(double %i.at, double %i.i) ; 2 uses
  %i.av = select i1 %i.aq, double 0.000000e+00, double 1.000000e+00
  %i.aw = tail call double @llvm.copysign.f64(double %i.av, double %i.k) ; 2 uses
  %i.ax = fmul nnan double %i.b, %i.aw
  %i.ay = tail call double @llvm.fma.f64(double %i.au, double %i.a, double %i.ax)
  %i.az = fmul double %i.ay, +inf
  %i.ba = fneg double %i.au
  %i.bb = fmul nnan double %i.b, %i.ba
  %i.bc = tail call double @llvm.fma.f64(double %i.aw, double %i.a, double %i.bb)
  %i.bd = fmul double %i.bc, +inf
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.be = fcmp une double %i.c, +inf              ; 2 uses
  %i.bf = fcmp une double %i.d, +inf              ; 2 uses
  %or.cond144.not154 = and i1 %i.be, %i.bf
  %i.bg = fcmp ueq double %i.j, +inf
  %or.cond146 = or i1 %i.bg, %or.cond144.not154
  %i.bh = fcmp ueq double %i.l, +inf
  %or.cond148 = or i1 %i.bh, %or.cond146
  br i1 %or.cond148, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = select i1 %i.be, double 0.000000e+00, double 1.000000e+00
  %i.bj = tail call double @llvm.copysign.f64(double %i.bi, double %i.a) ; 2 uses
  %i.bk = select i1 %i.bf, double 0.000000e+00, double 1.000000e+00
  %i.bl = tail call double @llvm.copysign.f64(double %i.bk, double %i.b) ; 2 uses
  %i.bm = fmul nnan double %i.k, %i.bl
  %i.bn = tail call double @llvm.fma.f64(double %i.i, double %i.bj, double %i.bm)
  %i.bo = fmul double %i.bn, 0.000000e+00
  %i.bp = fmul nnan double %i.bl, %2
  %i.bq = tail call double @llvm.fma.f64(double %i.k, double %i.bj, double %i.bp)
  %i.br = fmul double %i.bq, 0.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h, %bb.d, %bb.a
  %.0132 = phi double [ %18, %bb.a ], [ %i.az, %bb.f ], [ %i.bo, %bb.h ], [ %18, %bb.g ], [ %i.an, %bb.d ]
  %.0 = phi double [ %19, %bb.a ], [ %i.bd, %bb.f ], [ %i.br, %bb.h ], [ %19, %bb.g ], [ %i.ao, %bb.d ]
  %i.bs = insertelement <2 x double> poison, double %.0132, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %.0, i64 1
  ret <2 x double> %i.bt
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { double, i32 } @llvm.frexp.f64.i32(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ldexp.f64.i32(double, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fma.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

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
