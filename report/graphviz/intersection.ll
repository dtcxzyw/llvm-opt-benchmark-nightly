Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/intersection?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define double @intersection_angle(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 13 uses
  %i.b = extractelement <2 x double> %i.a, i64 0  ; 2 uses
  %i.c = extractelement <2 x double> %i.a, i64 1  ; 3 uses
  %i.d = load <2 x double>, ptr %1, align 8, !tbaa !9 ; 11 uses
  %4 = fsub <2 x double> %i.d, %i.a               ; 12 uses
  %i.e = extractelement <2 x double> %4, i64 1    ; 7 uses
  %5 = extractelement <2 x double> %4, i64 0      ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %4, %4
  %i.f = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.g = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.f)
  %i.h = tail call double @sqrt(double noundef %i.g) #3 ; 4 uses
  %i.i = load <2 x double>, ptr %2, align 8, !tbaa !9 ; 13 uses
  %6 = extractelement <2 x double> %i.i, i64 0    ; 2 uses
  %i.j = extractelement <2 x double> %i.i, i64 1  ; 3 uses
  %i.k = load <2 x double>, ptr %3, align 8, !tbaa !9 ; 11 uses
  %7 = fsub <2 x double> %i.k, %i.i               ; 11 uses
  %i.l = extractelement <2 x double> %7, i64 1    ; 5 uses
  %i.m = extractelement <2 x double> %7, i64 0    ; 4 uses
  %foldExtExtBinop139 = fmul <2 x double> %7, %7
  %i.n = extractelement <2 x double> %foldExtExtBinop139, i64 0
  %8 = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.n)
  %9 = tail call double @sqrt(double noundef %8) #3 ; 4 uses
  %i.o = fneg double %i.m                         ; 2 uses
  %foldExtExtBinop141 = fsub <2 x double> %i.a, %i.i ; 3 uses
  %10 = fsub double %i.c, %i.j                    ; 3 uses
  %11 = shufflevector <2 x double> %4, <2 x double> %7, <2 x i32> <i32 1, i32 2>
  %12 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %13 = insertelement <2 x double> %12, double %i.o, i64 0
  %14 = fmul <2 x double> %11, %13
  %15 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %16 = shufflevector <2 x double> %4, <2 x double> %7, <2 x i32> <i32 0, i32 3>
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %16, <2 x double> %14) ; 3 uses
  %18 = extractelement <2 x double> %17, i64 1    ; 3 uses
  %i.p = fcmp ugt double %18, f0x3C9CD2B297D889BC
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.q = extractelement <2 x double> %foldExtExtBinop141, i64 0
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.m, double 0.000000e+00)
  %i.s = tail call double @llvm.fmuladd.f64(double %10, double %i.l, double %i.r)
  %i.t = fdiv double %i.s, %18                    ; 3 uses
  %i.u = fcmp oge double %i.t, 0.000000e+00
  %i.v = fcmp ole double %i.t, 1.000000e+00
  %or.cond.i.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %.preheader.preheader.i.i, label %bb.c

.preheader.preheader.i.i:                         ; preds = %bb.b
  %19 = insertelement <2 x double> poison, double %i.t, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %7, <2 x double> %i.i) ; 2 uses
  %foldExtExtBinop143 = fsub <2 x double> %i.a, %21 ; 2 uses
  %foldExtExtBinop145 = fmul <2 x double> %foldExtExtBinop143, %foldExtExtBinop143
  %22 = extractelement <2 x double> %foldExtExtBinop145, i64 0
  %foldExtExtBinop147 = fsub <2 x double> %i.a, %21
  %23 = extractelement <2 x double> %foldExtExtBinop147, i64 1 ; 2 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %23, double %23, double %22)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.w)
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.x = fsub <2 x double> %i.a, %i.k             ; 2 uses
  %i.y = shufflevector <2 x double> %foldExtExtBinop141, <2 x double> %i.x, <2 x i32> <i32 0, i32 2> ; 2 uses
  %24 = fmul <2 x double> %i.y, %i.y
  %i.z = insertelement <2 x double> %i.x, double %10, i64 0 ; 2 uses
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.z, <2 x double> %24)
  %i.ab = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aa) ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  %i.ad = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  %i.af = select i1 %i.ae, double %i.ac, double %i.ad
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ag = fsub <2 x double> %i.d, %i.i            ; 2 uses
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> %foldExtExtBinop141, <2 x i32> <i32 0, i32 2> ; 2 uses
  %25 = fmul <2 x double> %i.ah, %i.ah
  %i.ai = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x double> %i.ai, double %10, i64 1 ; 2 uses
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.aj, <2 x double> %25)
  %i.al = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ak)
  br label %point_line_distance.exit30.i

bb.e:                                             ; preds = %bb.c, %.preheader.preheader.i.i
  %.054.i.ph.i = phi double [ %i.af, %bb.c ], [ %sqrt.i, %.preheader.preheader.i.i ] ; 2 uses
  %foldExtExtBinop141.a = fsub <2 x double> %i.d, %i.i ; 2 uses
  %i.am = extractelement <2 x double> %foldExtExtBinop141.a, i64 0
  %foldExtExtBinop173 = fsub <2 x double> %i.d, %i.i ; 2 uses
  %26 = extractelement <2 x double> %foldExtExtBinop173, i64 1
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.m, double 0.000000e+00)
  %i.ao = tail call double @llvm.fmuladd.f64(double %26, double %i.l, double %i.an)
  %i.ap = fdiv double %i.ao, %18                  ; 3 uses
  %i.aq = fcmp oge double %i.ap, 0.000000e+00
  %i.ar = fcmp ole double %i.ap, 1.000000e+00
  %or.cond.i26.i = and i1 %i.aq, %i.ar
  br i1 %or.cond.i26.i, label %.preheader.preheader.i29.i, label %bb.f

.preheader.preheader.i29.i:                       ; preds = %bb.e
  %27 = insertelement <2 x double> poison, double %i.ap, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %7, <2 x double> %i.i) ; 2 uses
  %foldExtExtBinop151 = fsub <2 x double> %i.d, %29 ; 2 uses
  %foldExtExtBinop153 = fmul <2 x double> %foldExtExtBinop151, %foldExtExtBinop151
  %30 = extractelement <2 x double> %foldExtExtBinop153, i64 0
  %foldExtExtBinop155 = fsub <2 x double> %i.d, %29
  %31 = extractelement <2 x double> %foldExtExtBinop155, i64 1 ; 2 uses
  %i.as = tail call double @llvm.fmuladd.f64(double %31, double %31, double %30)
  %sqrt15.i = tail call double @llvm.sqrt.f64(double %i.as)
  %i.at = insertelement <2 x double> poison, double %sqrt15.i, i64 0
  %i.au = insertelement <2 x double> %i.at, double %.054.i.ph.i, i64 1
  br label %point_line_distance.exit30.i

bb.f:                                             ; preds = %bb.e
  %i.av = fsub <2 x double> %i.d, %i.k            ; 2 uses
  %i.aw = shufflevector <2 x double> %foldExtExtBinop141.a, <2 x double> %i.av, <2 x i32> <i32 0, i32 2> ; 2 uses
  %32 = fmul <2 x double> %i.aw, %i.aw
  %33 = shufflevector <2 x double> %foldExtExtBinop173, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %34 = shufflevector <2 x double> %33, <2 x double> %i.av, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %34, <2 x double> %32)
  %i.ay = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ax) ; 2 uses
  %i.az = extractelement <2 x double> %i.ay, i64 0 ; 2 uses
  %i.ba = extractelement <2 x double> %i.ay, i64 1 ; 2 uses
  %i.bb = fcmp olt double %i.az, %i.ba
  %i.bc = select i1 %i.bb, double %i.az, double %i.ba
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %.054.i.ph.i, i64 1
  br label %point_line_distance.exit30.i

point_line_distance.exit30.i:                     ; preds = %bb.f, %.preheader.preheader.i29.i, %bb.d
  %i.bf = phi <2 x double> [ %i.al, %bb.d ], [ %i.au, %.preheader.preheader.i29.i ], [ %i.be, %bb.f ] ; 2 uses
  %i.bg = fsub <2 x double> %i.i, %i.a            ; 8 uses
  %foldExtExtBinop157 = fmul <2 x double> %4, %4
  %35 = extractelement <2 x double> %foldExtExtBinop157, i64 0
  %36 = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %35) ; 3 uses
  %i.bh = fcmp ugt double %36, f0x3C9CD2B297D889BC
  br i1 %i.bh, label %bb.g, label %bb.i

bb.g:                                             ; preds = %point_line_distance.exit30.i
  %i.bi = extractelement <2 x double> %i.bg, i64 0
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double %5, double 0.000000e+00)
  %i.bk = extractelement <2 x double> %i.bg, i64 1
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.e, double %i.bj)
  %i.bm = fdiv double %i.bl, %36                  ; 3 uses
  %i.bn = fcmp oge double %i.bm, 0.000000e+00
  %i.bo = fcmp ole double %i.bm, 1.000000e+00
  %or.cond.i33.i = and i1 %i.bn, %i.bo
  br i1 %or.cond.i33.i, label %.preheader.preheader.i36.i, label %bb.h

.preheader.preheader.i36.i:                       ; preds = %bb.g
  %37 = insertelement <2 x double> poison, double %i.bm, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %4, <2 x double> %i.a) ; 2 uses
  %foldExtExtBinop159 = fsub <2 x double> %i.i, %39 ; 2 uses
  %foldExtExtBinop161 = fmul <2 x double> %foldExtExtBinop159, %foldExtExtBinop159
  %40 = extractelement <2 x double> %foldExtExtBinop161, i64 0
  %foldExtExtBinop163 = fsub <2 x double> %i.i, %39
  %41 = extractelement <2 x double> %foldExtExtBinop163, i64 1 ; 2 uses
  %i.bp = tail call double @llvm.fmuladd.f64(double %41, double %41, double %40)
  %sqrt16.i = tail call double @llvm.sqrt.f64(double %i.bp)
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bq = fsub <2 x double> %i.i, %i.d            ; 2 uses
  %i.br = shufflevector <2 x double> %i.bg, <2 x double> %i.bq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %42 = fmul <2 x double> %i.br, %i.br
  %i.bs = shufflevector <2 x double> %i.bg, <2 x double> %i.bq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bs, <2 x double> %42)
  %i.bu = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bt) ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.bw = extractelement <2 x double> %i.bu, i64 1 ; 2 uses
  %i.bx = fcmp olt double %i.bv, %i.bw
  %i.by = select i1 %i.bx, double %i.bv, double %i.bw
  br label %bb.j

bb.i:                                             ; preds = %point_line_distance.exit30.i
  %i.bz = fsub <2 x double> %i.k, %i.a            ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> %i.bg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %43 = fmul <2 x double> %i.ca, %i.ca
  %i.cb = shufflevector <2 x double> %i.bg, <2 x double> %i.bz, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cb, <2 x double> %43)
  %i.cd = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cc)
  br label %line_segments_distance.exit

bb.j:                                             ; preds = %bb.h, %.preheader.preheader.i36.i
  %.054.i32.ph.i = phi double [ %i.by, %bb.h ], [ %sqrt16.i, %.preheader.preheader.i36.i ] ; 2 uses
  %foldExtExtBinop143.a = fsub <2 x double> %i.k, %i.a ; 2 uses
  %i.ce = extractelement <2 x double> %foldExtExtBinop143.a, i64 0
  %foldExtExtBinop175 = fsub <2 x double> %i.k, %i.a ; 2 uses
  %44 = extractelement <2 x double> %foldExtExtBinop175, i64 1
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %5, double 0.000000e+00)
  %i.cg = tail call double @llvm.fmuladd.f64(double %44, double %i.e, double %i.cf)
  %i.ch = fdiv double %i.cg, %36                  ; 3 uses
  %i.ci = fcmp oge double %i.ch, 0.000000e+00
  %i.cj = fcmp ole double %i.ch, 1.000000e+00
  %or.cond.i40.i = and i1 %i.ci, %i.cj
  br i1 %or.cond.i40.i, label %.preheader.preheader.i43.i, label %bb.k

.preheader.preheader.i43.i:                       ; preds = %bb.j
  %45 = insertelement <2 x double> poison, double %i.ch, i64 0
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %46, <2 x double> %4, <2 x double> %i.a) ; 2 uses
  %foldExtExtBinop167 = fsub <2 x double> %i.k, %47 ; 2 uses
  %foldExtExtBinop169 = fmul <2 x double> %foldExtExtBinop167, %foldExtExtBinop167
  %48 = extractelement <2 x double> %foldExtExtBinop169, i64 0
  %foldExtExtBinop171 = fsub <2 x double> %i.k, %47
  %49 = extractelement <2 x double> %foldExtExtBinop171, i64 1 ; 2 uses
  %i.ck = tail call double @llvm.fmuladd.f64(double %49, double %49, double %48)
  %sqrt17.i = tail call double @llvm.sqrt.f64(double %i.ck)
  %i.cl = insertelement <2 x double> poison, double %sqrt17.i, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %.054.i32.ph.i, i64 1
  br label %line_segments_distance.exit

bb.k:                                             ; preds = %bb.j
  %i.cn = fsub <2 x double> %i.k, %i.d            ; 2 uses
  %i.co = shufflevector <2 x double> %foldExtExtBinop143.a, <2 x double> %i.cn, <2 x i32> <i32 0, i32 2> ; 2 uses
  %50 = fmul <2 x double> %i.co, %i.co
  %51 = shufflevector <2 x double> %foldExtExtBinop175, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %52 = shufflevector <2 x double> %51, <2 x double> %i.cn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %52, <2 x double> %50)
  %i.cq = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cp) ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0 ; 2 uses
  %i.cs = extractelement <2 x double> %i.cq, i64 1 ; 2 uses
  %i.ct = fcmp olt double %i.cr, %i.cs
  %i.cu = select i1 %i.ct, double %i.cr, double %i.cs
  %i.cv = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %.054.i32.ph.i, i64 1
  br label %line_segments_distance.exit

line_segments_distance.exit:                      ; preds = %bb.i, %.preheader.preheader.i43.i, %bb.k
  %i.cx = phi <2 x double> [ %i.cd, %bb.i ], [ %i.cm, %.preheader.preheader.i43.i ], [ %i.cw, %bb.k ] ; 2 uses
  %i.cy = extractelement <2 x double> %i.bf, i64 0 ; 2 uses
  %i.cz = extractelement <2 x double> %i.bf, i64 1 ; 2 uses
  %i.da = fcmp olt double %i.cz, %i.cy
  %i.db = select i1 %i.da, double %i.cz, double %i.cy ; 2 uses
  %i.dc = extractelement <2 x double> %i.cx, i64 0 ; 2 uses
  %i.dd = extractelement <2 x double> %i.cx, i64 1 ; 2 uses
  %i.de = fcmp olt double %i.dd, %i.dc
  %i.df = select i1 %i.de, double %i.dd, double %i.dc ; 2 uses
  %i.dg = fcmp olt double %i.db, %i.df
  %i.dh = select i1 %i.dg, double %i.db, double %i.df
  %i.di = fcmp ogt double %i.h, %9
  %i.dj = select i1 %i.di, double %i.h, double %9
  %i.dk = fmul double %i.dj, 1.000000e-02
  %i.dl = fcmp ole double %i.dh, %i.dk            ; 2 uses
  %i.dm = extractelement <2 x double> %17, i64 0
  %i.dn = tail call double @llvm.fabs.f64(double %i.dm)
  %i.do = fmul double %9, f0x3F76C1646AE565A7
  %i.dp = fmul double %i.h, %i.do
  %i.dq = fcmp ugt double %i.dn, %i.dp
  br i1 %i.dq, label %.preheader113.preheader, label %bb.l

.preheader113.preheader:                          ; preds = %line_segments_distance.exit
  %i.dr = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ds = insertelement <2 x double> poison, double %i.o, i64 0
  %i.dt = fneg <2 x double> %4
  %i.du = shufflevector <2 x double> %i.ds, <2 x double> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.dv = fmul <2 x double> %i.dr, %i.du
  %i.dw = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %53 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %54 = shufflevector <2 x double> %53, <2 x double> %4, <2 x i32> <i32 0, i32 3>
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %54, <2 x double> %i.dv)
  %55 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fdiv <2 x double> %i.dx, %55
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ea = fcmp ole <4 x double> %i.dz, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.eb = fcmp oge <4 x double> %i.dz, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.ec = shufflevector <4 x i1> %i.ea, <4 x i1> %i.eb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ed = bitcast <4 x i1> %i.ec to i4
  %i.ee = icmp eq i4 %i.ed, -1
  %or.cond7 = select i1 %i.ee, i1 true, i1 %i.dl
  br i1 %or.cond7, label %bb.m, label %bb.t

bb.l:                                             ; preds = %line_segments_distance.exit
  %. = select i1 %i.dl, double 1.000000e+00, double -2.000000e+00
  br label %bb.t

bb.m:                                             ; preds = %.preheader113.preheader
  %i.ef = fmul double %i.h, %9                    ; 2 uses
  %i.eg = fcmp olt double %i.ef, f0x3C9CD2B297D889BC
  br i1 %i.eg, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.m
  %i.eh = tail call double @llvm.fmuladd.f64(double %5, double %i.m, double 0.000000e+00)
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.e, double %i.l, double %i.eh)
  %i.ej = fdiv double %i.ei, %i.ef                ; 5 uses
  %i.ek = fcmp oeq double %i.b, %6
  %i.el = fcmp oeq double %i.c, %i.j
  %or.cond111 = and i1 %i.ek, %i.el
  br i1 %or.cond111, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.preheader.preheader
  %56 = extractelement <2 x double> %i.k, i64 0   ; 2 uses
  %i.em = fcmp oeq double %i.b, %56
  %57 = extractelement <2 x double> %i.k, i64 1   ; 2 uses
  %i.en = fcmp oeq double %i.c, %57
  %or.cond112 = and i1 %i.em, %i.en
  br i1 %or.cond112, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eo = fneg double %i.ej
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %58 = extractelement <2 x double> %i.d, i64 0   ; 2 uses
  %i.ep = fcmp oeq double %58, %6
  %59 = extractelement <2 x double> %i.d, i64 1   ; 2 uses
  %i.eq = fcmp oeq double %59, %i.j
  %or.cond136 = and i1 %i.ep, %i.eq
  br i1 %or.cond136, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.er = fneg double %i.ej
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.es = fcmp oeq double %58, %56
  %i.et = fcmp oeq double %59, %57
  %or.cond137 = and i1 %i.es, %i.et
  br i1 %or.cond137, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = tail call double @llvm.fabs.f64(double %i.ej)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.preheader.preheader, %.preheader113.preheader, %bb.o, %bb.q, %bb.s, %bb.m, %bb.l
  %.192 = phi double [ %., %bb.l ], [ %i.ej, %bb.r ], [ %i.eu, %bb.s ], [ 0.000000e+00, %bb.m ], [ %i.eo, %bb.o ], [ %i.er, %bb.q ], [ %i.ej, %.preheader.preheader ], [ -2.000000e+00, %.preheader113.preheader ]
  ret double %.192
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
end_hunk_0
