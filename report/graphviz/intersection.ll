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
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !8 ; 8 uses
  %i.b = extractelement <2 x double> %i.a, i64 1  ; 5 uses
  %i.c = extractelement <2 x double> %i.a, i64 0  ; 3 uses
  %i.d = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 8 uses
  %i.e = extractelement <2 x double> %i.d, i64 1  ; 9 uses
  %i.f = extractelement <2 x double> %i.d, i64 0  ; 5 uses
  %i.g = fsub double %i.b, %i.e                   ; 9 uses
  %foldExtExtBinop = fsub <2 x double> %i.a, %i.d ; 3 uses
  %i.h = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 7 uses
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double 0.000000e+00)
  %i.j = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.i) ; 4 uses
  %i.k = tail call double @sqrt(double noundef %i.j) #3 ; 4 uses
  %i.l = load <2 x double>, ptr %3, align 8, !tbaa !8 ; 8 uses
  %i.m = extractelement <2 x double> %i.l, i64 1  ; 4 uses
  %4 = extractelement <2 x double> %i.l, i64 0    ; 3 uses
  %5 = load <2 x double>, ptr %2, align 8, !tbaa !8 ; 8 uses
  %i.n = extractelement <2 x double> %5, i64 1    ; 8 uses
  %i.o = extractelement <2 x double> %5, i64 0    ; 5 uses
  %i.p = fsub <2 x double> %i.l, %5               ; 4 uses
  %i.q = extractelement <2 x double> %i.p, i64 1  ; 8 uses
  %i.r = extractelement <2 x double> %i.p, i64 0  ; 6 uses
  %i.s = fneg double %i.r                         ; 2 uses
  %i.t = fmul double %i.g, %i.s
  %i.u = shufflevector <2 x double> %i.p, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.v = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.t, i64 1
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.p, <2 x double> %i.v) ; 3 uses
  %i.x = extractelement <2 x double> %i.w, i64 0
  %i.y = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.x) ; 4 uses
  %i.z = tail call double @sqrt(double noundef %i.y) #3 ; 4 uses
  %foldExtExtBinop139 = fsub <2 x double> %i.d, %5 ; 3 uses
  %i.aa = fsub double %i.e, %i.n                  ; 3 uses
  %i.ab = fcmp ugt double %i.y, f0x3C9CD2B297D889BC
  br i1 %i.ab, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ac = extractelement <2 x double> %foldExtExtBinop139, i64 0
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.r, double 0.000000e+00)
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.q, double %i.ad)
  %i.af = fdiv double %i.ae, %i.y                 ; 4 uses
  %i.ag = fcmp oge double %i.af, 0.000000e+00
  %i.ah = fcmp ole double %i.af, 1.000000e+00
  %or.cond.i.i = and i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %.preheader.preheader.i.i, label %bb.c

.preheader.preheader.i.i:                         ; preds = %bb.b
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.af, double %i.r, double %i.o)
  %i.aj = fsub double %i.f, %i.ai                 ; 2 uses
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double 0.000000e+00)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.af, double %i.q, double %i.n)
  %i.am = fsub double %i.e, %i.al                 ; 2 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.ak)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.an)
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ao = fsub <2 x double> %i.d, %i.l            ; 2 uses
  %i.ap = shufflevector <2 x double> %foldExtExtBinop139, <2 x double> %i.ao, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.ap, <2 x double> zeroinitializer)
  %i.ar = insertelement <2 x double> %i.ao, double %i.aa, i64 0 ; 2 uses
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ar, <2 x double> %i.aq)
  %i.at = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.as) ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0 ; 2 uses
  %i.av = extractelement <2 x double> %i.at, i64 1 ; 2 uses
  %i.aw = fcmp olt double %i.au, %i.av
  %i.ax = select i1 %i.aw, double %i.au, double %i.av
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ay = fsub <2 x double> %i.a, %5              ; 2 uses
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> %foldExtExtBinop139, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.az, <2 x double> zeroinitializer)
  %i.bb = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bc = insertelement <2 x double> %i.bb, double %i.aa, i64 1 ; 2 uses
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bc, <2 x double> %i.ba)
  %i.be = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bd)
  br label %point_line_distance.exit30.i

bb.e:                                             ; preds = %bb.c, %.preheader.preheader.i.i
  %.054.i.ph.i = phi double [ %i.ax, %bb.c ], [ %sqrt.i, %.preheader.preheader.i.i ] ; 2 uses
  %foldExtExtBinop141 = fsub <2 x double> %i.a, %5 ; 2 uses
  %i.bf = extractelement <2 x double> %foldExtExtBinop141, i64 0
  %i.bg = fsub double %i.b, %i.n                  ; 2 uses
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.r, double 0.000000e+00)
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.q, double %i.bh)
  %i.bj = fdiv double %i.bi, %i.y                 ; 4 uses
  %i.bk = fcmp oge double %i.bj, 0.000000e+00
  %i.bl = fcmp ole double %i.bj, 1.000000e+00
  %or.cond.i26.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.i26.i, label %.preheader.preheader.i29.i, label %bb.f

.preheader.preheader.i29.i:                       ; preds = %bb.e
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.r, double %i.o)
  %i.bn = fsub double %i.c, %i.bm                 ; 2 uses
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double 0.000000e+00)
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.q, double %i.n)
  %i.bq = fsub double %i.b, %i.bp                 ; 2 uses
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bo)
  %sqrt15.i = tail call double @llvm.sqrt.f64(double %i.br)
  %i.bs = insertelement <2 x double> poison, double %sqrt15.i, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %.054.i.ph.i, i64 1
  br label %point_line_distance.exit30.i

bb.f:                                             ; preds = %bb.e
  %i.bu = fsub <2 x double> %i.a, %i.l            ; 2 uses
  %i.bv = shufflevector <2 x double> %foldExtExtBinop141, <2 x double> %i.bu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bv, <2 x double> zeroinitializer)
  %i.bx = insertelement <2 x double> %i.bu, double %i.bg, i64 0 ; 2 uses
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bx, <2 x double> %i.bw)
  %i.bz = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.by) ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0 ; 2 uses
  %i.cb = extractelement <2 x double> %i.bz, i64 1 ; 2 uses
  %i.cc = fcmp olt double %i.ca, %i.cb
  %i.cd = select i1 %i.cc, double %i.ca, double %i.cb
  %i.ce = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %.054.i.ph.i, i64 1
  br label %point_line_distance.exit30.i

point_line_distance.exit30.i:                     ; preds = %bb.f, %.preheader.preheader.i29.i, %bb.d
  %i.cg = phi <2 x double> [ %i.be, %bb.d ], [ %i.bt, %.preheader.preheader.i29.i ], [ %i.cf, %bb.f ] ; 2 uses
  %foldExtExtBinop143.a = fsub <2 x double> %5, %i.d ; 4 uses
  %6 = fsub double %i.n, %i.e                     ; 4 uses
  %i.ch = fcmp ugt double %i.j, f0x3C9CD2B297D889BC
  br i1 %i.ch, label %bb.g, label %bb.i

bb.g:                                             ; preds = %point_line_distance.exit30.i
  %i.ci = extractelement <2 x double> %foldExtExtBinop143.a, i64 0
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.h, double 0.000000e+00)
  %i.ck = tail call double @llvm.fmuladd.f64(double %6, double %i.g, double %i.cj)
  %i.cl = fdiv double %i.ck, %i.j                 ; 4 uses
  %i.cm = fcmp oge double %i.cl, 0.000000e+00
  %i.cn = fcmp ole double %i.cl, 1.000000e+00
  %or.cond.i33.i = and i1 %i.cm, %i.cn
  br i1 %or.cond.i33.i, label %.preheader.preheader.i36.i, label %bb.h

.preheader.preheader.i36.i:                       ; preds = %bb.g
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.h, double %i.f)
  %i.cp = fsub double %i.o, %i.co                 ; 2 uses
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double 0.000000e+00)
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.g, double %i.e)
  %i.cs = fsub double %i.n, %i.cr                 ; 2 uses
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cs, double %i.cq)
  %sqrt16.i = tail call double @llvm.sqrt.f64(double %i.ct)
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cu = fsub <2 x double> %5, %i.a              ; 2 uses
  %i.cv = shufflevector <2 x double> %foldExtExtBinop143.a, <2 x double> %i.cu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.cv, <2 x double> zeroinitializer)
  %7 = insertelement <2 x double> %i.cu, double %6, i64 0 ; 2 uses
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %7, <2 x double> %i.cw)
  %i.cy = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cx) ; 2 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 0 ; 2 uses
  %i.da = extractelement <2 x double> %i.cy, i64 1 ; 2 uses
  %i.db = fcmp olt double %i.cz, %i.da
  %i.dc = select i1 %i.db, double %i.cz, double %i.da
  br label %bb.j

bb.i:                                             ; preds = %point_line_distance.exit30.i
  %i.dd = fsub <2 x double> %i.l, %i.d            ; 2 uses
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> %foldExtExtBinop143.a, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.de, <2 x double> zeroinitializer)
  %8 = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %9 = insertelement <2 x double> %8, double %6, i64 1 ; 2 uses
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %9, <2 x double> %i.df)
  %i.dh = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dg)
  br label %line_segments_distance.exit

bb.j:                                             ; preds = %bb.h, %.preheader.preheader.i36.i
  %.054.i32.ph.i = phi double [ %i.dc, %bb.h ], [ %sqrt16.i, %.preheader.preheader.i36.i ] ; 2 uses
  %foldExtExtBinop145 = fsub <2 x double> %i.l, %i.d ; 2 uses
  %i.di = extractelement <2 x double> %foldExtExtBinop145, i64 0
  %i.dj = fsub double %i.m, %i.e                  ; 2 uses
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.di, double %i.h, double 0.000000e+00)
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.g, double %i.dk)
  %i.dm = fdiv double %i.dl, %i.j                 ; 4 uses
  %i.dn = fcmp oge double %i.dm, 0.000000e+00
  %i.do = fcmp ole double %i.dm, 1.000000e+00
  %or.cond.i40.i = and i1 %i.dn, %i.do
  br i1 %or.cond.i40.i, label %.preheader.preheader.i43.i, label %bb.k

.preheader.preheader.i43.i:                       ; preds = %bb.j
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.h, double %i.f)
  %i.dq = fsub double %4, %i.dp                   ; 2 uses
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dq, double 0.000000e+00)
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.g, double %i.e)
  %i.dt = fsub double %i.m, %i.ds                 ; 2 uses
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %i.dr)
  %sqrt17.i = tail call double @llvm.sqrt.f64(double %i.du)
  %i.dv = insertelement <2 x double> poison, double %sqrt17.i, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %.054.i32.ph.i, i64 1
  br label %line_segments_distance.exit

bb.k:                                             ; preds = %bb.j
  %i.dx = fsub <2 x double> %i.l, %i.a            ; 2 uses
  %i.dy = shufflevector <2 x double> %foldExtExtBinop145, <2 x double> %i.dx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.dy, <2 x double> zeroinitializer)
  %i.ea = insertelement <2 x double> %i.dx, double %i.dj, i64 0 ; 2 uses
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.ea, <2 x double> %i.dz)
  %i.ec = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.eb) ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 0 ; 2 uses
  %i.ee = extractelement <2 x double> %i.ec, i64 1 ; 2 uses
  %i.ef = fcmp olt double %i.ed, %i.ee
  %i.eg = select i1 %i.ef, double %i.ed, double %i.ee
  %i.eh = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %.054.i32.ph.i, i64 1
  br label %line_segments_distance.exit

line_segments_distance.exit:                      ; preds = %bb.i, %.preheader.preheader.i43.i, %bb.k
  %i.ej = phi <2 x double> [ %i.dh, %bb.i ], [ %i.dw, %.preheader.preheader.i43.i ], [ %i.ei, %bb.k ] ; 2 uses
  %i.ek = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  %i.el = extractelement <2 x double> %i.cg, i64 1 ; 2 uses
  %i.em = fcmp olt double %i.el, %i.ek
  %i.en = select i1 %i.em, double %i.el, double %i.ek ; 2 uses
  %i.eo = extractelement <2 x double> %i.ej, i64 0 ; 2 uses
  %i.ep = extractelement <2 x double> %i.ej, i64 1 ; 2 uses
  %i.eq = fcmp olt double %i.ep, %i.eo
  %i.er = select i1 %i.eq, double %i.ep, double %i.eo ; 2 uses
  %i.es = fcmp olt double %i.en, %i.er
  %i.et = select i1 %i.es, double %i.en, double %i.er
  %i.eu = fcmp ogt double %i.k, %i.z
  %i.ev = select i1 %i.eu, double %i.k, double %i.z
  %i.ew = fmul double %i.ev, 1.000000e-02
  %i.ex = fcmp ole double %i.et, %i.ew            ; 2 uses
  %i.ey = extractelement <2 x double> %i.w, i64 1
  %i.ez = tail call double @llvm.fabs.f64(double %i.ey)
  %i.fa = fmul double %i.z, f0x3F76C1646AE565A7
  %i.fb = fmul double %i.k, %i.fa
  %i.fc = fcmp ugt double %i.ez, %i.fb
  br i1 %i.fc, label %.preheader113.preheader, label %bb.l

.preheader113.preheader:                          ; preds = %line_segments_distance.exit
  %10 = insertelement <2 x double> poison, double %6, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = insertelement <2 x double> poison, double %i.s, i64 0
  %i.fe = fneg <2 x double> %foldExtExtBinop
  %i.ff = shufflevector <2 x double> %i.fd, <2 x double> %i.fe, <2 x i32> <i32 0, i32 2>
  %i.fg = fmul <2 x double> %11, %i.ff
  %i.fh = shufflevector <2 x double> %foldExtExtBinop143.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = insertelement <2 x double> poison, double %i.q, i64 0
  %i.fj = insertelement <2 x double> %i.fi, double %i.g, i64 1
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fj, <2 x double> %i.fg)
  %i.fl = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fm = fdiv <2 x double> %i.fk, %i.fl
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.fo = fcmp ole <4 x double> %i.fn, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.fp = fcmp oge <4 x double> %i.fn, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.fq = shufflevector <4 x i1> %i.fo, <4 x i1> %i.fp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fr = freeze <4 x i1> %i.fq
  %i.fs = bitcast <4 x i1> %i.fr to i4
  %i.ft = icmp eq i4 %i.fs, -1
  %or.cond7 = select i1 %i.ft, i1 true, i1 %i.ex
  br i1 %or.cond7, label %bb.m, label %bb.t

bb.l:                                             ; preds = %line_segments_distance.exit
  %. = select i1 %i.ex, double 1.000000e+00, double -2.000000e+00
  br label %bb.t

bb.m:                                             ; preds = %.preheader113.preheader
  %i.fu = fmul double %i.k, %i.z                  ; 2 uses
  %i.fv = fcmp olt double %i.fu, f0x3C9CD2B297D889BC
  br i1 %i.fv, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.m
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.h, double %i.r, double 0.000000e+00)
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.g, double %i.q, double %i.fw)
  %i.fy = fdiv double %i.fx, %i.fu                ; 5 uses
  %i.fz = fcmp oeq double %i.f, %i.o
  %i.ga = fcmp oeq double %i.e, %i.n
  %or.cond111 = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %or.cond111, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.preheader.preheader
  %i.gb = fcmp oeq double %i.f, %4
  %i.gc = fcmp oeq double %i.e, %i.m
  %or.cond112 = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond112, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gd = fneg double %i.fy
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.ge = fcmp oeq double %i.c, %i.o
  %i.gf = fcmp oeq double %i.b, %i.n
  %or.cond136 = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond136, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gg = fneg double %i.fy
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.gh = fcmp oeq double %i.c, %4
  %i.gi = fcmp oeq double %i.b, %i.m
  %or.cond137 = select i1 %i.gh, i1 %i.gi, i1 false
  br i1 %or.cond137, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gj = tail call double @llvm.fabs.f64(double %i.fy)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.preheader.preheader, %.preheader113.preheader, %bb.o, %bb.q, %bb.s, %bb.m, %bb.l
  %.192 = phi double [ %., %bb.l ], [ %i.fy, %bb.r ], [ %i.gj, %bb.s ], [ 0.000000e+00, %bb.m ], [ %i.gd, %bb.o ], [ %i.gg, %bb.q ], [ %i.fy, %.preheader.preheader ], [ -2.000000e+00, %.preheader113.preheader ]
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
end_hunk_0
