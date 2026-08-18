begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden double @SDL_uclibc_log(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %.sroa.02.4.extract.shift = lshr i64 %i.a, 32
  %.sroa.02.4.extract.trunc = trunc nuw i64 %.sroa.02.4.extract.shift to i32 ; 3 uses
  %i.b = icmp slt i32 %.sroa.02.4.extract.trunc, 1048576
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.02.0.extract.trunc = trunc i64 %i.a to i32
  %i.c = and i32 %.sroa.02.4.extract.trunc, 2147483647
  %i.d = or i32 %i.c, %.sroa.02.0.extract.trunc
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.a, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = fsub double %0, %0
  %i.h = fdiv double %i.g, 0.000000e+00
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.i = fmul double %0, f0x4350000000000000      ; 2 uses
  %i.j = bitcast double %i.i to i64
  %.sroa.01.4.extract.shift = lshr i64 %i.j, 32
  %.sroa.01.4.extract.trunc = trunc nuw i64 %.sroa.01.4.extract.shift to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.091 = phi i32 [ %.sroa.01.4.extract.trunc, %bb.e ], [ %.sroa.02.4.extract.trunc, %bb.a ] ; 4 uses
  %.090 = phi i32 [ -54, %bb.e ], [ 0, %bb.a ]
  %.089 = phi double [ %i.i, %bb.e ], [ %0, %bb.a ] ; 3 uses
  %i.k = icmp sgt i32 %.091, 2146435071
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = fadd double %.089, %.089
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.m = ashr i32 %.091, 20
  %1 = add nsw i32 %i.m, -1023
  %2 = add nsw i32 %1, %.090
  %i.n = and i32 %.091, 1048575                   ; 4 uses
  %i.o = add nuw nsw i32 %i.n, 614244             ; 2 uses
  %i.p = and i32 %i.o, 1048576
  %i.q = or disjoint i32 %i.p, %i.n
  %i.r = xor i32 %i.q, 1072693248
  %i.s = bitcast double %.089 to i64
  %.sroa.0.4.insert.ext = zext nneg i32 %i.r to i64
  %.sroa.0.4.insert.shift = shl nuw nsw i64 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.mask = and i64 %i.s, 4294967295
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.4.insert.mask
  %i.t = bitcast i64 %.sroa.0.4.insert.insert to double
  %i.u = lshr i32 %i.o, 20
  %i.v = add nsw i32 %2, %i.u                     ; 7 uses
  %i.w = fadd double %i.t, -1.000000e+00          ; 15 uses
  %i.x = add nsw i32 %.091, 2
  %i.y = and i32 %i.x, 1048575
  %i.z = icmp samesign ult i32 %i.y, 3
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = fcmp oeq double %i.w, 0.000000e+00
  br i1 %i.aa, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ab = icmp eq i32 %i.v, 0
  br i1 %i.ab, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = sitofp i32 %i.v to double               ; 2 uses
  %i.ad = fmul nnan double %i.ac, f0x3DEA39EF35793C76
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ac, double f0x3FE62E42FEE00000, double %i.ad)
  br label %bb.v

bb.l:                                             ; preds = %bb.i
  %i.af = fmul double %i.w, %i.w
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.w, double f0xBFD5555555555555, double 5.000000e-01)
  %i.ah = fmul double %i.af, %i.ag                ; 2 uses
  %i.ai = icmp eq i32 %i.v, 0
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = fsub double %i.w, %i.ah
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.ak = sitofp i32 %i.v to double               ; 2 uses
  %i.al = fneg double %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double f0x3DEA39EF35793C76, double %i.ah)
  %i.an = fsub double %i.am, %i.w
  %i.ao = fneg double %i.an
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ak, double f0x3FE62E42FEE00000, double %i.ao)
  br label %bb.v

bb.o:                                             ; preds = %bb.h
  %i.aq = fadd double %i.w, 2.000000e+00
  %i.ar = fdiv double %i.w, %i.aq                 ; 6 uses
  %i.as = sitofp i32 %i.v to double               ; 4 uses
  %i.at = fmul double %i.ar, %i.ar                ; 3 uses
  %i.au = add nsw i32 %i.n, -398458
  %i.av = fmul double %i.at, %i.at                ; 2 uses
  %i.aw = sub nsw i32 440401, %i.n
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0 ; 2 uses
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> <double f0x3FC39A09D078C69F, double f0x3FC2F112DF3E5244>, <2 x double> <double f0x3FCC71C51D8E78AF, double f0x3FC7466496CB03DE>) ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 1
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.av, double %i.ba, double f0x3FD2492494229359)
  %i.bc = insertelement <2 x double> %i.az, double %i.bb, i64 1
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.bc, <2 x double> <double f0x3FD999999997FA04, double f0x3FE5555555555593>)
  %i.be = insertelement <2 x double> %i.ax, double %i.at, i64 1
  %i.bf = fmul <2 x double> %i.be, %i.bd          ; 2 uses
  %i.bg = or i32 %i.au, %i.aw
  %shift = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bf, %shift
  %i.bh = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bi = icmp sgt i32 %i.bg, 0
  br i1 %i.bi, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bj = fmul double %i.w, 5.000000e-01
  %i.bk = fmul double %i.w, %i.bj                 ; 3 uses
  %i.bl = icmp eq i32 %i.v, 0
  %i.bm = fadd double %i.bk, %i.bh                ; 2 uses
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = fneg double %i.ar
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bm, double %i.bk)
  %i.bp = fsub double %i.w, %i.bo
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bq = fmul nnan double %i.as, f0x3DEA39EF35793C76
  %i.br = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.bm, double %i.bq)
  %i.bs = fsub double %i.bk, %i.br
  %i.bt = fsub double %i.bs, %i.w
  %i.bu = fneg double %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.as, double f0x3FE62E42FEE00000, double %i.bu)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %i.bw = icmp eq i32 %i.v, 0
  %i.bx = fsub double %i.w, %i.bh                 ; 2 uses
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = fneg double %i.ar
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.by, double %i.bx, double %i.w)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ca = fmul nnan double %i.as, f0xBDEA39EF35793C76
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.bx, double %i.ca)
  %i.cc = fsub double %i.cb, %i.w
  %i.cd = fneg double %i.cc
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.as, double f0x3FE62E42FEE00000, double %i.cd)
  br label %bb.v

bb.v:                                             ; preds = %bb.j, %bb.b, %bb.u, %bb.t, %bb.r, %bb.q, %bb.n, %bb.m, %bb.k, %bb.g, %bb.d
  %.0 = phi double [ %i.ce, %bb.u ], [ %i.h, %bb.d ], [ %i.l, %bb.g ], [ -inf, %bb.b ], [ %i.ae, %bb.k ], [ %i.aj, %bb.m ], [ %i.ap, %bb.n ], [ %i.bp, %bb.q ], [ %i.bv, %bb.r ], [ %i.bz, %bb.t ], [ 0.000000e+00, %bb.j ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
end_hunk_0
