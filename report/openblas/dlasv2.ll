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
  %i.q = tail call double @dlamch_(ptr noundef nonnull @.str) #4
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
  %.1160..1158224 = select i1 %i.i, double %i.ac, double %i.ab
  %.1158..1160225 = select i1 %i.i, double %i.ab, double %i.ac
  store double 1.000000e+00, ptr %8, align 8, !tbaa !9
  store double %.1160..1158224, ptr %7, align 8, !tbaa !9
  store double %.1158..1160225, ptr %6, align 8, !tbaa !9
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
  %i.aq = tail call double @sqrt(double noundef %i.ap) #4 ; 2 uses
  %i.ar = fcmp oeq double %.0172, 0.000000e+00    ; 2 uses
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = fcmp oge double %i.ak, 0.000000e+00
  %i.at = fneg double %i.ak
  %i.au = select i1 %i.as, double %i.ak, double %i.at
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.av = tail call double @llvm.fmuladd.f64(double %.0172, double %.0172, double %i.an)
  %i.aw = tail call double @sqrt(double noundef %i.av) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0171 = phi double [ %i.au, %bb.h ], [ %i.aw, %bb.i ] ; 2 uses
  %i.ax = fadd double %i.aq, %.0171
  %i.ay = fmul double %i.ax, 5.000000e-01         ; 5 uses
  %i.az = fdiv double %.0166, %i.ay
  store double %i.az, ptr %3, align 8, !tbaa !9
  %i.ba = fmul double %.0167, %i.ay
  store double %i.ba, ptr %4, align 8, !tbaa !9
  %i.bb = fcmp oeq double %i.an, 0.000000e+00
  br i1 %i.bb, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bc = fcmp ult double %.0165, 0.000000e+00    ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %. = select i1 %i.bc, double -2.000000e+00, double 2.000000e+00 ; 2 uses
  %i.bd = fneg double %.
  %i.be = select i1 %i.k, double %., double %i.bd
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bf = fcmp oge double %i.ad, 0.000000e+00
  %.neg = fneg double %i.ad
  %i.bg = xor i1 %i.bf, %i.bc
  %i.bh = select i1 %i.bg, double %i.ad, double %.neg
  %i.bi = fdiv double %i.j, %i.bh
  %i.bj = fdiv double %i.ak, %i.am
  %i.bk = fadd double %i.bj, %i.bi
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bl = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %.0172, i64 1
  %i.bn = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %.0171, i64 1
  %i.bp = fadd <2 x double> %i.bm, %i.bo
  %i.bq = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fdiv <2 x double> %i.bq, %i.bp          ; 2 uses
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop239 = fadd <2 x double> %i.br, %shift
  %i.bs = extractelement <2 x double> %foldExtExtBinop239, i64 0
  %i.bt = fadd double %i.ay, 1.000000e+00
  %i.bu = fmul double %i.bs, %i.bt
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %.0170 = phi double [ %i.be, %bb.l ], [ %i.bk, %bb.m ], [ %i.bu, %bb.n ] ; 3 uses
  %i.bv = tail call double @llvm.fmuladd.f64(double %.0170, double %.0170, double 4.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.bv) ; 2 uses
  %i.bw = fdiv double 2.000000e+00, %sqrt         ; 2 uses
  %i.bx = fdiv double %.0170, %sqrt               ; 3 uses
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.ak, double %i.bw)
  %i.bz = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %.0164, i64 1
  %i.cb = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %.0165, i64 1
  %i.cd = fdiv <2 x double> %i.ca, %i.cc          ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 1
  %i.cf = fmul double %i.ce, %i.bx
  %i.cg = fdiv double %i.cf, %i.ay
  %i.ch = extractelement <2 x double> %i.cd, i64 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d
  %.2175 = phi i32 [ %.0173, %bb.d ], [ %.1174.ph, %bb.o ]
  %.1162 = phi double [ 1.000000e+00, %bb.d ], [ %i.ch, %bb.o ] ; 2 uses
  %.1160 = phi double [ 1.000000e+00, %bb.d ], [ %i.bw, %bb.o ] ; 2 uses
  %.1158 = phi double [ 0.000000e+00, %bb.d ], [ %i.cg, %bb.o ] ; 2 uses
  %.1 = phi double [ 0.000000e+00, %bb.d ], [ %i.bx, %bb.o ] ; 2 uses
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
  %i.ci = load double, ptr %6, align 8, !tbaa !9
  br label %.thread208

bb.q:                                             ; preds = %bb.p
  br label %.thread208

.thread208:                                       ; preds = %bb.p, %.thread, %.thread205, %bb.q
  %.1162..1227.sink = phi double [ %.1162..1, %bb.q ], [ %i.ci, %.thread205 ], [ 1.000000e+00, %.thread ], [ %.1162..1, %bb.p ]
  %.sink236 = phi ptr [ %7, %bb.q ], [ %8, %.thread205 ], [ %8, %.thread ], [ %8, %bb.p ]
  %.sink = phi ptr [ %2, %bb.q ], [ %0, %.thread205 ], [ %1, %.thread ], [ %1, %bb.p ]
  %i.cj = fcmp ult double %.1162..1227.sink, 0.000000e+00
  %.197 = select i1 %i.cj, double -1.000000e+00, double 1.000000e+00 ; 2 uses
  %i.ck = load double, ptr %.sink236, align 8, !tbaa !9
  %i.cl = fcmp ult double %i.ck, 0.000000e+00
  %i.cm = fneg double %.197
  %i.cn = select i1 %i.cl, double %i.cm, double %.197 ; 2 uses
  %i.co = load double, ptr %.sink, align 8, !tbaa !9
  %i.cp = fcmp ult double %i.co, 0.000000e+00
  %i.cq = fneg double %i.cn
  %i.cr = select i1 %i.cp, double %i.cq, double %i.cn ; 3 uses
  %i.cs = fcmp ult double %i.cr, 0.000000e+00
  %i.ct = load double, ptr %4, align 8, !tbaa !9  ; 3 uses
  %i.cu = fcmp ult double %i.ct, 0.000000e+00
  %.neg210 = fneg double %i.ct
  %i.cv = xor i1 %i.cu, %i.cs
  %i.cw = select i1 %i.cv, double %.neg210, double %i.ct
  store double %i.cw, ptr %4, align 8, !tbaa !9
  %i.cx = load double, ptr %0, align 8, !tbaa !9
  %i.cy = fcmp ult double %i.cx, 0.000000e+00
  %i.cz = fneg double %i.cr
  %i.da = select i1 %i.cy, double %i.cz, double %i.cr ; 2 uses
  %i.db = load double, ptr %2, align 8, !tbaa !9
  %i.dc = fcmp ult double %i.db, 0.000000e+00
  %i.dd = fneg double %i.da
  %i.de = select i1 %i.dc, double %i.dd, double %i.da
  %i.df = fcmp ult double %i.de, 0.000000e+00
  %i.dg = load double, ptr %3, align 8, !tbaa !9  ; 3 uses
  %i.dh = fcmp ult double %i.dg, 0.000000e+00
  %.neg211 = fneg double %i.dg
  %i.di = xor i1 %i.dh, %i.df
  %i.dj = select i1 %i.di, double %.neg211, double %i.dg
  store double %i.dj, ptr %3, align 8, !tbaa !9
  ret void
}

declare double @dlamch_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
