Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasv2?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"EPS\00", align 1

; Function Attrs: nounwind uwtable
define void @dlasv2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 8)) %3, ptr nofree noundef captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5, ptr nofree noundef captures(none) initializes((0, 8)) %6, ptr nofree noundef captures(none) initializes((0, 8)) %7, ptr nofree noundef captures(none) initializes((0, 8)) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !9   ; 5 uses
  %i.b = fcmp oge double %i.a, 0.000000e+00
  %i.c = fneg double %i.a
  %i.d = select i1 %i.b, double %i.a, double %i.c ; 3 uses
  %i.e = load double, ptr %2, align 8, !tbaa !9   ; 5 uses
  %i.f = fcmp ult double %i.e, 0.000000e+00
  %i.g = fneg double %i.e
  %i.h = select i1 %i.f, double %i.g, double %i.e ; 3 uses
  %i.i = fcmp ogt double %i.h, %i.d               ; 7 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0173 = phi i32 [ 3, %bb.b ], [ 1, %bb.a ]     ; 2 uses
  %.0167 = phi double [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  %.0166 = phi double [ %i.d, %bb.b ], [ %i.h, %bb.a ] ; 6 uses
  %.0165 = phi double [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %.0164 = phi double [ %i.a, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = load double, ptr %1, align 8, !tbaa !9   ; 7 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00       ; 2 uses
  %i.l = fneg double %i.j
  %i.m = select i1 %i.k, double %i.j, double %i.l ; 4 uses
  %i.n = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %.0166, ptr %3, align 8, !tbaa !9
  store double %.0167, ptr %4, align 8, !tbaa !9
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.o = fcmp ogt double %i.m, %.0167
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = fdiv double %.0167, %i.m                 ; 2 uses
  %i.q = tail call double @dlamch_(ptr noundef nonnull @.str) #3
  %i.r = fcmp olt double %i.p, %i.q
  br i1 %i.r, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  store double %i.m, ptr %4, align 8, !tbaa !9
  %i.s = fcmp ogt double %.0166, 1.000000e+00
  %i.t = fmul double %.0166, %i.p
  %i.u = fdiv double %i.m, %.0166
  %i.v = fdiv double %.0167, %i.u
  %storemerge = select i1 %i.s, double %i.v, double %i.t
  store double %storemerge, ptr %3, align 8, !tbaa !9
  %i.w = insertelement <2 x double> poison, double %.0164, i64 0
  %i.x = insertelement <2 x double> %i.w, double %.0165, i64 1
  %i.y = insertelement <2 x double> poison, double %i.j, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fdiv <2 x double> %i.x, %i.z            ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0 ; 2 uses
  %i.ac = extractelement <2 x double> %i.aa, i64 1 ; 2 uses
  %.1160..1158226 = select i1 %i.i, double %i.ac, double %i.ab
  %.1158..1160227 = select i1 %i.i, double %i.ab, double %i.ac
  store double 1.000000e+00, ptr %8, align 8, !tbaa !9
  store double %.1160..1158226, ptr %7, align 8, !tbaa !9
  store double %.1158..1160227, ptr %6, align 8, !tbaa !9
  store double 1.000000e+00, ptr %5, align 8, !tbaa !9
  br label %.thread208

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1174.ph = phi i32 [ %.0173, %bb.e ], [ 2, %bb.f ]
  %i.ad = fsub double %.0167, %.0166              ; 5 uses
  %i.ae = fcmp oeq double %i.ad, %.0167
  %i.af = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ad, i64 1
  %i.ah = insertelement <2 x double> poison, double %.0165, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %.0167, i64 1
  %i.aj = fdiv <2 x double> %i.ag, %i.ai          ; 5 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0 ; 5 uses
  %i.al = extractelement <2 x double> %i.aj, i64 1
  %.0172 = select i1 %i.ae, double 1.000000e+00, double %i.al ; 5 uses
  %i.am = fsub double 2.000000e+00, %.0172        ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.aj, %i.aj
  %i.an = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ao = fmul double %i.am, %i.am
  %i.ap = fadd double %i.ao, %i.an
  %sqrt.a = tail call double @llvm.sqrt.f64(double %i.ap) ; 2 uses
  %i.aq = fcmp oeq double %.0172, 0.000000e+00    ; 2 uses
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = fcmp oge double %i.ak, 0.000000e+00
  %i.as = fneg double %i.ak
  %i.at = select i1 %i.ar, double %i.ak, double %i.as
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.au = tail call double @llvm.fmuladd.f64(double %.0172, double %.0172, double %i.an)
  %sqrt212 = tail call double @llvm.sqrt.f64(double %i.au)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0171 = phi double [ %i.at, %bb.h ], [ %sqrt212, %bb.i ] ; 2 uses
  %i.av = fadd double %sqrt.a, %.0171
  %i.aw = fmul double %i.av, 5.000000e-01         ; 5 uses
  %i.ax = fdiv double %.0166, %i.aw
  store double %i.ax, ptr %3, align 8, !tbaa !9
  %i.ay = fmul double %.0167, %i.aw
  store double %i.ay, ptr %4, align 8, !tbaa !9
  %i.az = fcmp oeq double %i.an, 0.000000e+00
  br i1 %i.az, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ba = fcmp ult double %.0165, 0.000000e+00    ; 2 uses
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %. = select i1 %i.ba, double -2.000000e+00, double 2.000000e+00 ; 2 uses
  %i.bb = fneg double %.
  %i.bc = select i1 %i.k, double %., double %i.bb
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bd = fcmp oge double %i.ad, 0.000000e+00
  %.neg = fneg double %i.ad
  %i.be = xor i1 %i.bd, %i.ba
  %i.bf = select i1 %i.be, double %i.ad, double %.neg
  %i.bg = fdiv double %i.j, %i.bf
  %i.bh = fdiv double %i.ak, %i.am
  %i.bi = fadd double %i.bh, %i.bg
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bj = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %.0172, i64 1
  %i.bl = insertelement <2 x double> poison, double %sqrt.a, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %.0171, i64 1
  %i.bn = fadd <2 x double> %i.bk, %i.bm
  %i.bo = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fdiv <2 x double> %i.bo, %i.bn          ; 2 uses
  %shift = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop241 = fadd <2 x double> %i.bp, %shift
  %i.bq = extractelement <2 x double> %foldExtExtBinop241, i64 0
  %i.br = fadd double %i.aw, 1.000000e+00
  %i.bs = fmul double %i.bq, %i.br
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %.0170 = phi double [ %i.bc, %bb.l ], [ %i.bi, %bb.m ], [ %i.bs, %bb.n ] ; 3 uses
  %i.bt = tail call double @llvm.fmuladd.f64(double %.0170, double %.0170, double 4.000000e+00)
  %sqrt213 = tail call double @llvm.sqrt.f64(double %i.bt) ; 2 uses
  %i.bu = fdiv double 2.000000e+00, %sqrt213      ; 2 uses
  %i.bv = fdiv double %.0170, %sqrt213            ; 3 uses
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.ak, double %i.bu)
  %i.bx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %.0164, i64 1
  %i.bz = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %.0165, i64 1
  %i.cb = fdiv <2 x double> %i.by, %i.ca          ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 1
  %i.cd = fmul double %i.cc, %i.bv
  %i.ce = fdiv double %i.cd, %i.aw
  %i.cf = extractelement <2 x double> %i.cb, i64 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d
  %.2175 = phi i32 [ %.0173, %bb.d ], [ %.1174.ph, %bb.o ]
  %.1162 = phi double [ 1.000000e+00, %bb.d ], [ %i.cf, %bb.o ] ; 2 uses
  %.1160 = phi double [ 1.000000e+00, %bb.d ], [ %i.bu, %bb.o ] ; 2 uses
  %.1158 = phi double [ 0.000000e+00, %bb.d ], [ %i.ce, %bb.o ] ; 2 uses
  %.1 = phi double [ 0.000000e+00, %bb.d ], [ %i.bv, %bb.o ] ; 2 uses
  %.1..1162 = select i1 %i.i, double %.1, double %.1162
  %.1160..1158 = select i1 %i.i, double %.1160, double %.1158
  %.1158..1160 = select i1 %i.i, double %.1158, double %.1160
  %.1162..1 = select i1 %i.i, double %.1162, double %.1 ; 3 uses
  store double %.1..1162, ptr %8, align 8, !tbaa !9
  store double %.1160..1158, ptr %7, align 8, !tbaa !9
  store double %.1158..1160, ptr %6, align 8, !tbaa !9
  store double %.1162..1, ptr %5, align 8, !tbaa !9
  switch i32 %.2175, label %bb.q [
    i32 1, label %.thread205
    i32 2, label %.thread208
  ]

.thread205:                                       ; preds = %bb.p
  %i.cg = load double, ptr %6, align 8, !tbaa !9
  br label %.thread208

bb.q:                                             ; preds = %bb.p
  br label %.thread208

.thread208:                                       ; preds = %bb.p, %.thread, %.thread205, %bb.q
  %.1162..1229.sink = phi double [ %.1162..1, %bb.q ], [ %i.cg, %.thread205 ], [ 1.000000e+00, %.thread ], [ %.1162..1, %bb.p ]
  %.sink238 = phi ptr [ %7, %bb.q ], [ %8, %.thread205 ], [ %8, %.thread ], [ %8, %bb.p ]
  %.sink = phi ptr [ %2, %bb.q ], [ %0, %.thread205 ], [ %1, %.thread ], [ %1, %bb.p ]
  %i.ch = fcmp ult double %.1162..1229.sink, 0.000000e+00
  %.197 = select i1 %i.ch, double -1.000000e+00, double 1.000000e+00 ; 2 uses
  %i.ci = load double, ptr %.sink238, align 8, !tbaa !9
  %i.cj = fcmp ult double %i.ci, 0.000000e+00
  %i.ck = fneg double %.197
  %i.cl = select i1 %i.cj, double %i.ck, double %.197 ; 2 uses
  %i.cm = load double, ptr %.sink, align 8, !tbaa !9
  %i.cn = fcmp ult double %i.cm, 0.000000e+00
  %i.co = fneg double %i.cl
  %i.cp = select i1 %i.cn, double %i.co, double %i.cl ; 3 uses
  %i.cq = fcmp ult double %i.cp, 0.000000e+00
  %i.cr = load double, ptr %4, align 8, !tbaa !9  ; 3 uses
  %i.cs = fcmp ult double %i.cr, 0.000000e+00
  %.neg210 = fneg double %i.cr
  %i.ct = xor i1 %i.cs, %i.cq
  %i.cu = select i1 %i.ct, double %.neg210, double %i.cr
  store double %i.cu, ptr %4, align 8, !tbaa !9
  %i.cv = load double, ptr %0, align 8, !tbaa !9
  %i.cw = fcmp ult double %i.cv, 0.000000e+00
  %i.cx = fneg double %i.cp
  %i.cy = select i1 %i.cw, double %i.cx, double %i.cp ; 2 uses
  %i.cz = load double, ptr %2, align 8, !tbaa !9
  %i.da = fcmp ult double %i.cz, 0.000000e+00
  %i.db = fneg double %i.cy
  %i.dc = select i1 %i.da, double %i.db, double %i.cy
  %i.dd = fcmp ult double %i.dc, 0.000000e+00
  %i.de = load double, ptr %3, align 8, !tbaa !9  ; 3 uses
  %i.df = fcmp ult double %i.de, 0.000000e+00
  %.neg211 = fneg double %i.de
  %i.dg = xor i1 %i.df, %i.dd
  %i.dh = select i1 %i.dg, double %.neg211, double %i.de
  store double %i.dh, ptr %3, align 8, !tbaa !9
  ret void
}

declare double @dlamch_(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
end_hunk_0
