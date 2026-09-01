Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/convergent-curve-ordering?download=true
inline.NumInlined: 71
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.msdfgen::Vector2" = type { double, double }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 2) i32 @_ZN7msdfgen23convergentCurveOrderingEPKNS_7Vector2Eii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  %i.b = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16
  %.sroa.2172.0..sroa_idx = getelementptr inbounds i8, ptr %0, i64 -8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !8 ; 4 uses
  %.sroa.2172.0.copyload = load double, ptr %.sroa.2172.0..sroa_idx, align 8, !tbaa !8 ; 2 uses
  %i.f = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 2 uses
  %3 = load <2 x double>, ptr %i.d, align 8, !tbaa !8 ; 4 uses
  %.sroa.2166.0.copyload = load double, ptr %.sroa.2166.0..sroa_idx, align 8, !tbaa !8 ; 2 uses
  %4 = shufflevector <2 x double> %i.e, <2 x double> %3, <2 x i32> <i32 0, i32 2>
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fsub <2 x double> %4, %i.g               ; 3 uses
  %i.i = shufflevector <2 x double> %i.e, <2 x double> %3, <2 x i32> <i32 1, i32 3>
  %5 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.j = fsub <2 x double> %i.i, %5               ; 3 uses
  %i.k = icmp samesign ugt i32 %1, 1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %0, i64 -32
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !8
  %i.n = insertelement <2 x double> %i.e, double %.sroa.2172.0.copyload, i64 1
  %i.o = fsub <2 x double> %i.m, %i.n
  %i.p = shufflevector <2 x double> %i.h, <2 x double> %i.j, <2 x i32> <i32 0, i32 2>
  %i.q = fsub <2 x double> %i.o, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi <2 x double> [ %i.q, %bb.c ], [ zeroinitializer, %bb.b ] ; 3 uses
  %i.s = icmp samesign ugt i32 %2, 1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !8
  %i.v = insertelement <2 x double> %3, double %.sroa.2166.0.copyload, i64 1
  %i.w = fsub <2 x double> %i.u, %i.v
  %i.x = shufflevector <2 x double> %i.h, <2 x double> %i.j, <2 x i32> <i32 1, i32 3>
  %i.y = fsub <2 x double> %i.w, %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi <2 x double> [ %i.y, %bb.e ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.aa = icmp samesign ugt i32 %1, 2
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -48
  %i.ac = getelementptr inbounds i8, ptr %0, i64 -32
  %i.ad = load <2 x double>, ptr %i.ab, align 8, !tbaa !8
  %i.ae = load <2 x double>, ptr %i.ac, align 8, !tbaa !8 ; 2 uses
  %i.af = fsub <2 x double> %i.ad, %i.ae
  %i.ag = insertelement <2 x double> %i.e, double %.sroa.2172.0.copyload, i64 1
  %i.ah = fsub <2 x double> %i.ae, %i.ag
  %i.ai = fsub <2 x double> %i.af, %i.ah
  %i.aj = fsub <2 x double> %i.ai, %i.r
  %i.ak = fmul <2 x double> %i.r, splat (double 3.000000e+00)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = phi <2 x double> [ %i.ak, %bb.g ], [ %i.r, %bb.f ] ; 7 uses
  %i.am = phi <2 x double> [ %i.aj, %bb.g ], [ zeroinitializer, %bb.f ] ; 5 uses
  %i.an = extractelement <2 x double> %i.al, i64 1 ; 3 uses
  %i.ao = extractelement <2 x double> %i.al, i64 0 ; 3 uses
  %i.ap = icmp samesign ugt i32 %2, 2
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load <2 x double>, ptr %i.aq, align 8, !tbaa !8
  %i.at = load <2 x double>, ptr %i.ar, align 8, !tbaa !8 ; 2 uses
  %i.au = fsub <2 x double> %i.as, %i.at
  %i.av = insertelement <2 x double> %3, double %.sroa.2166.0.copyload, i64 1
  %i.aw = fsub <2 x double> %i.at, %i.av
  %i.ax = fsub <2 x double> %i.au, %i.aw
  %i.ay = fsub <2 x double> %i.ax, %i.z
  %i.az = fmul <2 x double> %i.z, splat (double 3.000000e+00)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = phi <2 x double> [ %i.az, %bb.i ], [ %i.z, %bb.h ] ; 6 uses
  %i.bb = phi <2 x double> [ %i.ay, %bb.i ], [ zeroinitializer, %bb.h ] ; 4 uses
  %i.bc = extractelement <2 x double> %i.ba, i64 1 ; 3 uses
  %i.bd = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  %i.be = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.bf = insertelement <2 x i32> %i.be, i32 %2, i64 1
  %i.bg = uitofp <2 x i32> %i.bf to <2 x double>  ; 2 uses
  %i.bh = fmul <2 x double> %i.h, %i.bg           ; 7 uses
  %i.bi = fmul <2 x double> %i.j, %i.bg           ; 8 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bk = fcmp une double %i.bj, 0.000000e+00
  %i.bl = extractelement <2 x double> %i.bi, i64 0 ; 2 uses
  %i.bm = fcmp une double %i.bl, 0.000000e+00
  %i.bn = select i1 %i.bk, i1 true, i1 %i.bm
  %i.bo = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  %i.bp = extractelement <2 x double> %i.bi, i64 1 ; 2 uses
  %i.bq = extractelement <2 x double> %i.am, i64 0 ; 3 uses
  %i.br = extractelement <2 x double> %i.am, i64 1 ; 3 uses
  br i1 %i.bn, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.bs = fcmp une double %i.bo, 0.000000e+00
  %i.bt = fcmp une double %i.bp, 0.000000e+00
  %i.bu = select i1 %i.bs, i1 true, i1 %i.bt
  %i.bv = extractelement <2 x double> %i.bb, i64 0 ; 2 uses
  %i.bw = extractelement <2 x double> %i.bb, i64 1 ; 3 uses
  br i1 %i.bu, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bx = fmul <2 x double> %i.bi, %i.bi
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bh, <2 x double> %i.bx)
  %i.bz = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.by) ; 5 uses
  %6 = extractelement <2 x double> %i.bz, i64 1   ; 3 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0 ; 2 uses
  %i.cb = shufflevector <2 x double> %i.ba, <2 x double> %i.bh, <2 x i32> <i32 0, i32 3>
  %i.cc = fneg <2 x double> %i.cb                 ; 4 uses
  %i.cd = shufflevector <2 x double> %i.bi, <2 x double> %i.al, <2 x i32> <i32 0, i32 3>
  %i.ce = fmul <2 x double> %i.cd, %i.cc
  %i.cf = shufflevector <2 x double> %i.bh, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.cg = shufflevector <2 x double> %i.ba, <2 x double> %i.al, <2 x i32> <i32 1, i32 2>
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.cg, <2 x double> %i.ce) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.bz, %i.ch
  %i.ci = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.cj = extractelement <2 x double> %i.ch, i64 0
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cj, double %i.ci) ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = fcmp ogt double %i.ck, 0.000000e+00
  %i.cn = zext i1 %i.cm to i32
  %i.co = fcmp olt double %i.ck, 0.000000e+00
  %.neg.i = sext i1 %i.co to i32
  %i.cp = add nsw i32 %.neg.i, %i.cn
  br label %bb.af

bb.n:                                             ; preds = %bb.l
  %i.cq = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x double> %i.cq, %i.bz          ; 2 uses
  %i.cs = fneg double %i.bv                       ; 3 uses
  %i.ct = shufflevector <2 x double> %i.bi, <2 x double> %i.al, <2 x i32> <i32 0, i32 3>
  %i.cu = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.cw = fmul <2 x double> %i.ct, %i.cv
  %i.cx = shufflevector <2 x double> %i.bh, <2 x double> %i.al, <2 x i32> <i32 0, i32 2>
  %i.cy = shufflevector <2 x double> %i.bb, <2 x double> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cy, <2 x double> %i.cw) ; 2 uses
  %7 = fmul double %6, %6
  %i.da = shufflevector <2 x double> %i.am, <2 x double> %i.cr, <2 x i32> <i32 3, i32 1>
  %i.db = shufflevector <2 x double> %i.cz, <2 x double> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.dc = fmul <2 x double> %i.da, %i.db
  %i.dd = shufflevector <2 x double> %i.cr, <2 x double> %i.am, <2 x i32> <i32 0, i32 2>
  %i.de = shufflevector <2 x double> %i.cz, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.de, <2 x double> %i.dc) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  %i.dh = extractelement <2 x double> %i.df, i64 1
  %i.di = tail call double @llvm.fmuladd.f64(double %7, double %i.dh, double %i.dg) ; 3 uses
  %i.dj = fcmp oeq double %i.di, 0.000000e+00
  br i1 %i.dj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = fcmp ogt double %i.di, 0.000000e+00
  %i.dl = zext i1 %i.dk to i32
  %i.dm = fcmp olt double %i.di, 0.000000e+00
  %.neg.i246 = sext i1 %i.dm to i32
  %i.dn = add nsw i32 %.neg.i246, %i.dl
  br label %bb.af

bb.p:                                             ; preds = %bb.n
  %8 = fmul double %i.an, %i.cs
  %9 = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.bw, double %8)
  %10 = extractelement <2 x double> %i.cc, i64 0
  %11 = fmul double %i.br, %10
  %12 = tail call noundef double @llvm.fmuladd.f64(double %i.bq, double %i.bc, double %11)
  %13 = fmul double %6, %12
  %i.do = tail call double @llvm.fmuladd.f64(double %i.ca, double %9, double %13) ; 3 uses
  %i.dp = fcmp oeq double %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = fcmp ogt double %i.do, 0.000000e+00
  %i.dr = zext i1 %i.dq to i32
  %i.ds = fcmp olt double %i.do, 0.000000e+00
  %.neg.i247 = sext i1 %i.ds to i32
  %i.dt = add nsw i32 %.neg.i247, %i.dr
  br label %bb.af

bb.r:                                             ; preds = %bb.p
  %i.du = fmul double %i.br, %i.cs
  %i.dv = tail call noundef double @llvm.fmuladd.f64(double %i.bq, double %i.bw, double %i.du) ; 2 uses
  %i.dw = fcmp ogt double %i.dv, 0.000000e+00
  %i.dx = zext i1 %i.dw to i32
  %i.dy = fcmp olt double %i.dv, 0.000000e+00
  %.neg.i248 = sext i1 %i.dy to i32
  %i.dz = add nsw i32 %.neg.i248, %i.dx
  br label %bb.af

bb.s:                                             ; preds = %bb.k, %bb.j
  %.sroa.16279.2 = phi double [ %i.an, %bb.j ], [ %i.bc, %bb.k ] ; 5 uses
  %.sroa.0277.2 = phi double [ %i.ao, %bb.j ], [ %i.bd, %bb.k ] ; 5 uses
  %.sroa.14276.1 = phi double [ %i.br, %bb.j ], [ %i.bw, %bb.k ] ; 5 uses
  %.sroa.0275.1 = phi double [ %i.bq, %bb.j ], [ %i.bv, %bb.k ] ; 5 uses
  %.sroa.14.0 = phi double [ %i.bp, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  %.sroa.0268.0 = phi double [ %i.bo, %bb.j ], [ %i.bj, %bb.k ] ; 2 uses
  %.sroa.16.2 = phi double [ %i.bc, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.0262.2 = phi double [ %i.bd, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.0208 = phi i32 [ 1, %bb.j ], [ -1, %bb.k ]    ; 5 uses
  %i.ea = phi <2 x double> [ %i.ba, %bb.j ], [ %i.al, %bb.k ] ; 3 uses
  %i.eb = phi <2 x double> [ %i.bb, %bb.j ], [ %i.am, %bb.k ] ; 4 uses
  %i.ec = fcmp une double %.sroa.0268.0, 0.000000e+00
  %i.ed = fcmp une double %.sroa.14.0, 0.000000e+00
  %i.ee = select i1 %i.ec, i1 true, i1 %i.ed
  br i1 %i.ee, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.ef = fneg double %.sroa.0268.0
  %i.eg = fmul double %.sroa.14276.1, %i.ef
  %i.eh = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0275.1, double %.sroa.14.0, double %i.eg) ; 3 uses
  %i.ei = fcmp oeq double %i.eh, 0.000000e+00
  br i1 %i.ei, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = fcmp ogt double %i.eh, 0.000000e+00
  %i.ek = zext i1 %i.ej to i32
  %i.el = fcmp olt double %i.eh, 0.000000e+00
  %.neg.i249 = sext i1 %i.el to i32
  %i.em = add nsw i32 %.neg.i249, %i.ek
  %i.en = mul nsw i32 %.0208, %i.em
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.eo = fneg double %.sroa.0262.2               ; 2 uses
  %i.ep = fmul double %.sroa.16279.2, %i.eo
  %i.eq = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0277.2, double %.sroa.16.2, double %i.ep) ; 3 uses
  %i.er = fcmp oeq double %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = fcmp ogt double %i.eq, 0.000000e+00
  %i.et = zext i1 %i.es to i32
  %i.eu = fcmp olt double %i.eq, 0.000000e+00
  %.neg.i250 = sext i1 %i.eu to i32
  %i.ev = add nsw i32 %.neg.i250, %i.et
  %i.ew = mul nsw i32 %i.ev, %.0208
  br label %bb.af

bb.x:                                             ; preds = %bb.v
  %i.ex = fmul double %.sroa.14276.1, %i.eo
  %i.ey = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0275.1, double %.sroa.16.2, double %i.ex) ; 3 uses
  %i.ez = fcmp oeq double %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = fcmp ogt double %i.ey, 0.000000e+00
  %i.fb = zext i1 %i.fa to i32
  %i.fc = fcmp olt double %i.ey, 0.000000e+00
  %.neg.i251 = sext i1 %i.fc to i32
  %i.fd = add nsw i32 %.neg.i251, %i.fb
  %i.fe = mul nsw i32 %i.fd, %.0208
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.ff = extractelement <2 x double> %i.eb, i64 0
  %i.fg = fneg double %i.ff                       ; 2 uses
  %i.fh = fmul double %.sroa.16279.2, %i.fg
  %i.fi = extractelement <2 x double> %i.eb, i64 1 ; 2 uses
  %i.fj = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0277.2, double %i.fi, double %i.fh) ; 3 uses
  %i.fk = fcmp oeq double %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = fcmp ogt double %i.fj, 0.000000e+00
  %i.fm = zext i1 %i.fl to i32
  %i.fn = fcmp olt double %i.fj, 0.000000e+00
  %.neg.i252 = sext i1 %i.fn to i32
  %i.fo = add nsw i32 %.neg.i252, %i.fm
  %i.fp = mul nsw i32 %i.fo, %.0208
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.fq = fmul double %.sroa.14276.1, %i.fg
  %i.fr = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0275.1, double %i.fi, double %i.fq) ; 2 uses
  %i.fs = fcmp ogt double %i.fr, 0.000000e+00
  %i.ft = zext i1 %i.fs to i32
  %i.fu = fcmp olt double %i.fr, 0.000000e+00
  %.neg.i253 = sext i1 %i.fu to i32
  %i.fv = add nsw i32 %.neg.i253, %i.ft
  %i.fw = mul nsw i32 %i.fv, %.0208
  br label %bb.af

bb.ac:                                            ; preds = %bb.s
  %i.fx = fmul double %.sroa.16279.2, %.sroa.16279.2
  %i.fy = tail call double @llvm.fmuladd.f64(double %.sroa.0277.2, double %.sroa.0277.2, double %i.fx)
  %sqrt.i254 = tail call noundef double @llvm.sqrt.f64(double %i.fy)
  %sqrt309 = tail call double @llvm.sqrt.f64(double %sqrt.i254)
  %i.fz = extractelement <2 x double> %i.eb, i64 0
  %i.ga = fneg double %i.fz                       ; 2 uses
  %i.gb = fmul double %.sroa.16279.2, %i.ga
  %i.gc = extractelement <2 x double> %i.eb, i64 1 ; 2 uses
  %i.gd = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0277.2, double %i.gc, double %i.gb)
  %i.ge = fneg double %.sroa.0262.2
  %i.gf = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.gg = insertelement <2 x double> %i.gf, double %.sroa.14276.1, i64 1
  %i.gh = insertelement <2 x double> %i.gf, double %i.ge, i64 1
  %i.gi = fmul <2 x double> %i.gg, %i.gh
  %i.gj = insertelement <2 x double> %i.ea, double %.sroa.0275.1, i64 1
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.ea, <2 x double> %i.gi) ; 2 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 0
  %sqrt.i255 = tail call noundef double @llvm.sqrt.f64(double %i.gl)
  %sqrt = tail call double @llvm.sqrt.f64(double %sqrt.i255)
  %i.gm = extractelement <2 x double> %i.gk, i64 1
  %i.gn = fmul double %i.gm, %sqrt
  %i.go = tail call double @llvm.fmuladd.f64(double %sqrt309, double %i.gd, double %i.gn) ; 3 uses
  %i.gp = fcmp oeq double %i.go, 0.000000e+00
  br i1 %i.gp, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gq = fcmp ogt double %i.go, 0.000000e+00
  %i.gr = zext i1 %i.gq to i32
  %i.gs = fcmp olt double %i.go, 0.000000e+00
  %.neg.i256 = sext i1 %i.gs to i32
  %i.gt = add nsw i32 %.neg.i256, %i.gr
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.gu = fmul double %.sroa.14276.1, %i.ga
  %i.gv = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0275.1, double %i.gc, double %i.gu) ; 2 uses
  %i.gw = fcmp ogt double %i.gv, 0.000000e+00
  %i.gx = zext i1 %i.gw to i32
  %i.gy = fcmp olt double %i.gv, 0.000000e+00
  %.neg.i257 = sext i1 %i.gy to i32
  %i.gz = add nsw i32 %.neg.i257, %i.gx
  br label %bb.af

bb.af:                                            ; preds = %bb.r, %bb.ae, %bb.ab, %bb.m, %bb.o, %bb.q, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ad, %bb.a
  %.11 = phi i32 [ 0, %bb.a ], [ %i.cp, %bb.m ], [ %i.dz, %bb.r ], [ %i.dt, %bb.q ], [ %i.dn, %bb.o ], [ %i.fw, %bb.ab ], [ %i.fp, %bb.aa ], [ %i.fe, %bb.y ], [ %i.ew, %bb.w ], [ %i.en, %bb.u ], [ %i.gz, %bb.ae ], [ %i.gt, %bb.ad ]
  ret i32 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN7msdfgen23convergentCurveOrderingEPKNS_11EdgeSegmentES2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca [12 x %"struct.msdfgen::Vector2"], align 16 ; 45 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %2, i8 0, i64 192, i1 false), !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(12) %0) ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 3 uses
  %i.k = add i32 %i.f, -1
  %or.cond = icmp ult i32 %i.k, 3
  %i.l = add i32 %i.j, -1
  %i.m = icmp ult i32 %i.l, 3
  %or.cond5 = and i1 %or.cond, %i.m
  %.sink115.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sink115.sroa.gep116 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sink115.sroa.gep117 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sink115.sroa.gep118 = getelementptr inbounds nuw i8, ptr %2, i64 96
end_hunk_0
