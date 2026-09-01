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
  %i.ch = fsub <2 x double> %5, %i.d              ; 4 uses
  %6 = fsub double %i.n, %i.e                     ; 4 uses
  %i.ci = fcmp ugt double %i.j, f0x3C9CD2B297D889BC
  br i1 %i.ci, label %bb.g, label %bb.i

bb.g:                                             ; preds = %point_line_distance.exit30.i
  %i.cj = extractelement <2 x double> %i.ch, i64 0
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.h, double 0.000000e+00)
  %i.cl = tail call double @llvm.fmuladd.f64(double %6, double %i.g, double %i.ck)
  %i.cm = fdiv double %i.cl, %i.j                 ; 4 uses
  %i.cn = fcmp oge double %i.cm, 0.000000e+00
  %i.co = fcmp ole double %i.cm, 1.000000e+00
  %or.cond.i33.i = and i1 %i.cn, %i.co
  br i1 %or.cond.i33.i, label %.preheader.preheader.i36.i, label %bb.h

.preheader.preheader.i36.i:                       ; preds = %bb.g
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.h, double %i.f)
  %i.cq = fsub double %i.o, %i.cp                 ; 2 uses
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double 0.000000e+00)
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.g, double %i.e)
  %i.ct = fsub double %i.n, %i.cs                 ; 2 uses
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %i.cr)
  %sqrt16.i = tail call double @llvm.sqrt.f64(double %i.cu)
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cv = fsub <2 x double> %5, %i.a              ; 2 uses
  %i.cw = shufflevector <2 x double> %i.ch, <2 x double> %i.cv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cw, <2 x double> zeroinitializer)
  %7 = insertelement <2 x double> %i.cv, double %6, i64 0 ; 2 uses
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %7, <2 x double> %i.cx)
  %i.cz = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cy) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0 ; 2 uses
  %i.db = extractelement <2 x double> %i.cz, i64 1 ; 2 uses
  %i.dc = fcmp olt double %i.da, %i.db
  %i.dd = select i1 %i.dc, double %i.da, double %i.db
  br label %bb.j

bb.i:                                             ; preds = %point_line_distance.exit30.i
  %i.de = fsub <2 x double> %i.l, %i.d            ; 2 uses
  %i.df = shufflevector <2 x double> %i.de, <2 x double> %i.ch, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.df, <2 x double> zeroinitializer)
  %8 = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %9 = insertelement <2 x double> %8, double %6, i64 1 ; 2 uses
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %9, <2 x double> %i.dg)
  %i.di = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dh)
  br label %line_segments_distance.exit

bb.j:                                             ; preds = %bb.h, %.preheader.preheader.i36.i
  %.054.i32.ph.i = phi double [ %i.dd, %bb.h ], [ %sqrt16.i, %.preheader.preheader.i36.i ] ; 2 uses
  %foldExtExtBinop143 = fsub <2 x double> %i.l, %i.d ; 2 uses
  %i.dj = extractelement <2 x double> %foldExtExtBinop143, i64 0
  %i.dk = fsub double %i.m, %i.e                  ; 2 uses
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.h, double 0.000000e+00)
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.g, double %i.dl)
  %i.dn = fdiv double %i.dm, %i.j                 ; 4 uses
  %i.do = fcmp oge double %i.dn, 0.000000e+00
  %i.dp = fcmp ole double %i.dn, 1.000000e+00
  %or.cond.i40.i = and i1 %i.do, %i.dp
  br i1 %or.cond.i40.i, label %.preheader.preheader.i43.i, label %bb.k

.preheader.preheader.i43.i:                       ; preds = %bb.j
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.h, double %i.f)
  %i.dr = fsub double %4, %i.dq                   ; 2 uses
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.dr, double 0.000000e+00)
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.g, double %i.e)
  %i.du = fsub double %i.m, %i.dt                 ; 2 uses
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double %i.du, double %i.ds)
  %sqrt17.i = tail call double @llvm.sqrt.f64(double %i.dv)
  %i.dw = insertelement <2 x double> poison, double %sqrt17.i, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %.054.i32.ph.i, i64 1
  br label %line_segments_distance.exit

bb.k:                                             ; preds = %bb.j
  %i.dy = fsub <2 x double> %i.l, %i.a            ; 2 uses
  %i.dz = shufflevector <2 x double> %foldExtExtBinop143, <2 x double> %i.dy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.dz, <2 x double> zeroinitializer)
  %i.eb = insertelement <2 x double> %i.dy, double %i.dk, i64 0 ; 2 uses
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.eb, <2 x double> %i.ea)
  %i.ed = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ec) ; 2 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 0 ; 2 uses
  %i.ef = extractelement <2 x double> %i.ed, i64 1 ; 2 uses
  %i.eg = fcmp olt double %i.ee, %i.ef
  %i.eh = select i1 %i.eg, double %i.ee, double %i.ef
  %i.ei = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %.054.i32.ph.i, i64 1
  br label %line_segments_distance.exit

line_segments_distance.exit:                      ; preds = %bb.i, %.preheader.preheader.i43.i, %bb.k
  %i.ek = phi <2 x double> [ %i.di, %bb.i ], [ %i.dx, %.preheader.preheader.i43.i ], [ %i.ej, %bb.k ] ; 2 uses
  %i.el = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  %i.em = extractelement <2 x double> %i.cg, i64 1 ; 2 uses
  %i.en = fcmp olt double %i.em, %i.el
  %i.eo = select i1 %i.en, double %i.em, double %i.el ; 2 uses
  %i.ep = extractelement <2 x double> %i.ek, i64 0 ; 2 uses
  %i.eq = extractelement <2 x double> %i.ek, i64 1 ; 2 uses
  %i.er = fcmp olt double %i.eq, %i.ep
  %i.es = select i1 %i.er, double %i.eq, double %i.ep ; 2 uses
  %i.et = fcmp olt double %i.eo, %i.es
  %i.eu = select i1 %i.et, double %i.eo, double %i.es
  %i.ev = fcmp ogt double %i.k, %i.z
  %i.ew = select i1 %i.ev, double %i.k, double %i.z
  %i.ex = fmul double %i.ew, 1.000000e-02
  %i.ey = fcmp ole double %i.eu, %i.ex            ; 2 uses
  %i.ez = extractelement <2 x double> %i.w, i64 1
  %i.fa = tail call double @llvm.fabs.f64(double %i.ez)
  %i.fb = fmul double %i.z, f0x3F76C1646AE565A7
  %i.fc = fmul double %i.k, %i.fb
  %i.fd = fcmp ugt double %i.fa, %i.fc
  br i1 %i.fd, label %.preheader113.preheader, label %bb.l

.preheader113.preheader:                          ; preds = %line_segments_distance.exit
  %10 = insertelement <2 x double> poison, double %6, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ff = fneg <2 x double> %foldExtExtBinop
  %i.fg = shufflevector <2 x double> %i.fe, <2 x double> %i.ff, <2 x i32> <i32 0, i32 2>
  %i.fh = fmul <2 x double> %11, %i.fg
  %i.fi = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = insertelement <2 x double> poison, double %i.q, i64 0
  %i.fk = insertelement <2 x double> %i.fj, double %i.g, i64 1
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fk, <2 x double> %i.fh)
  %i.fm = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = fdiv <2 x double> %i.fl, %i.fm
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.fp = fcmp ole <4 x double> %i.fo, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.fq = fcmp oge <4 x double> %i.fo, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.fr = shufflevector <4 x i1> %i.fp, <4 x i1> %i.fq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fs = freeze <4 x i1> %i.fr
  %i.ft = bitcast <4 x i1> %i.fs to i4
  %i.fu = icmp eq i4 %i.ft, -1
  %or.cond7 = select i1 %i.fu, i1 true, i1 %i.ey
  br i1 %or.cond7, label %bb.m, label %bb.t

bb.l:                                             ; preds = %line_segments_distance.exit
  %. = select i1 %i.ey, double 1.000000e+00, double -2.000000e+00
  br label %bb.t

bb.m:                                             ; preds = %.preheader113.preheader
  %i.fv = fmul double %i.k, %i.z                  ; 2 uses
  %i.fw = fcmp olt double %i.fv, f0x3C9CD2B297D889BC
  br i1 %i.fw, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.m
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.h, double %i.r, double 0.000000e+00)
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.g, double %i.q, double %i.fx)
  %i.fz = fdiv double %i.fy, %i.fv                ; 5 uses
  %i.ga = fcmp oeq double %i.f, %i.o
  %i.gb = fcmp oeq double %i.e, %i.n
  %or.cond111 = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %or.cond111, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.preheader.preheader
  %i.gc = fcmp oeq double %i.f, %4
  %i.gd = fcmp oeq double %i.e, %i.m
  %or.cond112 = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond112, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ge = fneg double %i.fz
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.gf = fcmp oeq double %i.c, %i.o
  %i.gg = fcmp oeq double %i.b, %i.n
  %or.cond136 = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %or.cond136, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gh = fneg double %i.fz
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.gi = fcmp oeq double %i.c, %4
  %i.gj = fcmp oeq double %i.b, %i.m
  %or.cond137 = select i1 %i.gi, i1 %i.gj, i1 false
  br i1 %or.cond137, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gk = tail call double @llvm.fabs.f64(double %i.fz)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.preheader.preheader, %.preheader113.preheader, %bb.o, %bb.q, %bb.s, %bb.m, %bb.l
  %.192 = phi double [ %., %bb.l ], [ %i.fz, %bb.r ], [ %i.gk, %bb.s ], [ 0.000000e+00, %bb.m ], [ %i.ge, %bb.o ], [ %i.gh, %bb.q ], [ %i.fz, %.preheader.preheader ], [ -2.000000e+00, %.preheader113.preheader ]
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
