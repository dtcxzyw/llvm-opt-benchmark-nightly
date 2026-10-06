Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/visibility?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@visibility:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bd, i1 false), !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %i.be, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !20 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  br i1 %i.t, label %.lr.ph68.i, label %compVis.exit

.lr.ph68.i:                                       ; preds = %allocArray.exit
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph68.i
  %indvars.iv71.i = phi i64 [ 0, %.lr.ph68.i ], [ %indvars.iv.next72.i, %._crit_edge.i ] ; 8 uses
  %indvars73.i = trunc i64 %indvars.iv71.i to i32 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv71.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22 ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv71.i ; 3 uses
  %i.bo = sext i32 %i.bm to i64                   ; 3 uses
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bo ; 3 uses
  %i.bq = load double, ptr %i.bn, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = load double, ptr %i.bp, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = fsub double %i.bq, %i.bt                ; 2 uses
  %i.bx = fsub double %i.bs, %i.bv                ; 2 uses
  %i.by = fmul double %i.bx, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.by)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.bz) ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv71.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.bo
  store double %sqrt.i.i, ptr %i.cc, align 8, !tbaa !24
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bo
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv71.i
  store double %sqrt.i.i, ptr %i.cf, align 8, !tbaa !24
  %i.cg = add i32 %indvars73.i, -1                ; 2 uses
  %i.ch = icmp eq i32 %i.bm, %i.cg
  %i.ci = add i32 %indvars73.i, -2
  %.058.i = select i1 %i.ch, i32 %i.ci, i32 %i.cg ; 2 uses
  %i.cj = icmp sgt i32 %.058.i, -1
  br i1 %i.cj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv71.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.cm
  %i.co = zext nneg i32 %.058.i to i64
  br label %bb.i

bb.i:                                             ; preds = %clear.exit.i, %.lr.ph.i
  %indvars.iv.i4 = phi i64 [ %i.co, %.lr.ph.i ], [ %indvars.iv.next.i5, %clear.exit.i ] ; 7 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load <2 x double>, ptr %i.bn, align 8   ; 7 uses
  %i.cs = load double, ptr %i.br, align 8         ; 7 uses
  %i.ct = load <2 x double>, ptr %i.cp, align 8   ; 8 uses
  %i.cu = load double, ptr %i.cq, align 8         ; 8 uses
  %i.cv = extractelement <2 x double> %i.cr, i64 0 ; 5 uses
  %i.cw = load <2 x double>, ptr %i.bp, align 8   ; 3 uses
  %i.cx = load double, ptr %i.bu, align 8
  %i.cy = load <2 x double>, ptr %i.cn, align 8   ; 2 uses
  %i.cz = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x double> %i.cw, double %i.cs, i64 0 ; 3 uses
  %i.dc = fsub <2 x double> %i.da, %i.db
  %i.dd = shufflevector <2 x double> %i.cy, <2 x double> %i.cr, <2 x i32> <i32 0, i32 2>
  %i.de = shufflevector <2 x double> %i.cr, <2 x double> %i.cw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.df = fsub <2 x double> %i.dd, %i.de          ; 2 uses
  %i.dg = shufflevector <2 x double> %i.cy, <2 x double> %i.db, <2 x i32> <i32 1, i32 2>
  %i.dh = fsub <2 x double> %i.dg, %i.db          ; 2 uses
  %i.di = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fsub <2 x double> %i.di, %i.de
  %i.dk = fneg <2 x double> %i.dj
  %i.dl = fmul <2 x double> %i.dh, %i.dk
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.df, <2 x double> %i.dl)
  %i.dn = fcmp uge <2 x double> %i.dm, splat (double -1.000000e-04) ; 2 uses
  %i.do = fsub double %i.cx, %i.cs
  %foldExtExtBinop = fsub <2 x double> %i.cw, %i.cr
  %i.dp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dq = fneg double %i.dp
  %i.dr = extractelement <2 x double> %i.dh, i64 0
  %i.ds = fmul double %i.dr, %i.dq
  %i.dt = extractelement <2 x double> %i.df, i64 0
  %i.du = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dt, double %i.ds)
  %i.dv = fcmp ogt double %i.du, 1.000000e-04
  %i.dw = extractelement <2 x i1> %i.dn, i64 0    ; 2 uses
  %i.dx = extractelement <2 x i1> %i.dn, i64 1    ; 2 uses
  %i.dy = select i1 %i.dx, i1 %i.dw, i1 false
  %i.dz = select i1 %i.dx, i1 true, i1 %i.dw
  %.0.i.i.i = select i1 %i.dv, i1 %i.dy, i1 %i.dz
  br i1 %.0.i.i.i, label %bb.j, label %clear.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ea = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !22
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !22
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ek = extractelement <2 x double> %i.ct, i64 0 ; 5 uses
  %i.el = load <2 x double>, ptr %i.ee, align 8   ; 3 uses
  %i.em = load double, ptr %i.ej, align 8
  %i.en = load <2 x double>, ptr %i.ei, align 8   ; 2 uses
  %i.eo = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = insertelement <2 x double> %i.el, double %i.cu, i64 0 ; 3 uses
  %i.er = fsub <2 x double> %i.ep, %i.eq          ; 4 uses
  %i.es = shufflevector <2 x double> %i.en, <2 x double> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.et = shufflevector <2 x double> %i.ct, <2 x double> %i.el, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eu = fsub <2 x double> %i.es, %i.et          ; 2 uses
  %i.ev = shufflevector <2 x double> %i.en, <2 x double> %i.eq, <2 x i32> <i32 1, i32 2>
  %i.ew = fsub <2 x double> %i.ev, %i.eq          ; 2 uses
  %i.ex = fsub <2 x double> %i.ea, %i.et          ; 2 uses
  %i.ey = fneg <2 x double> %i.ex                 ; 3 uses
  %i.ez = fmul <2 x double> %i.ew, %i.ey
  %i.fa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.eu, <2 x double> %i.ez)
  %i.fb = fcmp uge <2 x double> %i.fa, splat (double -1.000000e-04) ; 2 uses
  %i.fc = fsub double %i.em, %i.cu
  %foldExtExtBinop12 = fsub <2 x double> %i.el, %i.ct
  %i.fd = extractelement <2 x double> %foldExtExtBinop12, i64 0
  %i.fe = fneg double %i.fd
  %i.ff = extractelement <2 x double> %i.ew, i64 0
  %i.fg = fmul double %i.ff, %i.fe
  %i.fh = extractelement <2 x double> %i.eu, i64 0
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fh, double %i.fg)
  %i.fj = fcmp ogt double %i.fi, 1.000000e-04
  %i.fk = extractelement <2 x i1> %i.fb, i64 0    ; 2 uses
  %i.fl = extractelement <2 x i1> %i.fb, i64 1    ; 2 uses
  %i.fm = select i1 %i.fl, i1 %i.fk, i1 false
  %i.fn = select i1 %i.fl, i1 true, i1 %i.fk
  %.0.i.i61.i = select i1 %i.fj, i1 %i.fm, i1 %i.fn
  br i1 %.0.i.i61.i, label %.lr.ph.preheader.i.i, label %clear.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.fo = fcmp une double %i.cv, %i.ek            ; 2 uses
  %i.fp = shufflevector <2 x double> %i.ct, <2 x double> %i.cr, <2 x i32> <i32 0, i32 2>
  %i.fq = shufflevector <2 x double> %i.ct, <2 x double> %i.cr, <2 x i32> <i32 1, i32 3>
  %i.fr = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  %i.fs = insertelement <2 x double> %i.ct, double %i.cu, i64 1 ; 2 uses
  br label %.lr.ph.i.i

bb.k:                                             ; preds = %intersect.exit.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.k ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !22
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.fw
  %i.fy = load <2 x double>, ptr %i.ft, align 8   ; 4 uses
  %i.fz = load <2 x double>, ptr %i.fx, align 8   ; 6 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 1 ; 4 uses
  %i.gb = extractelement <2 x double> %i.fz, i64 0 ; 4 uses
  %i.gc = fsub <2 x double> %i.fy, %i.fs          ; 2 uses
  %shift = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14 = fmul <2 x double> %shift, %i.ey
  %i.gd = extractelement <2 x double> %foldExtExtBinop14, i64 0
  %i.ge = extractelement <2 x double> %i.gc, i64 0
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.ge, double %i.gd) ; 2 uses
  %i.gg = fcmp ogt double %i.gf, 1.000000e-04
  %i.gh = fcmp olt double %i.gf, -1.000000e-04
  %i.gi = sext i1 %i.gh to i32
  %i.gj = select i1 %i.gg, i32 1, i32 %i.gi       ; 2 uses
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  br i1 %i.fo, label %.split.i.i, label %inBetween.exit.i.i

.split.i.i:                                       ; preds = %bb.l
  %i.gl = extractelement <2 x double> %i.fy, i64 0 ; 4 uses
  %i.gm = fcmp olt double %i.cv, %i.gl
  %i.gn = fcmp olt double %i.gl, %i.ek
  %or.cond.i.i.i = and i1 %i.gm, %i.gn
  %i.go = fcmp olt double %i.ek, %i.gl
  %i.gp = fcmp olt double %i.gl, %i.cv
  %i.gq = and i1 %i.go, %i.gp
  %i.gr = or i1 %or.cond.i.i.i, %i.gq
  br i1 %i.gr, label %clear.exit.i, label %bb.m

inBetween.exit.i.i:                               ; preds = %bb.l
  %i.gs = extractelement <2 x double> %i.fy, i64 1 ; 4 uses
  %i.gt = fcmp olt double %i.cs, %i.gs
  %i.gu = fcmp olt double %i.gs, %i.cu
  %or.cond20.i.i.i = and i1 %i.gt, %i.gu
  %i.gv = fcmp olt double %i.cu, %i.gs
  %i.gw = fcmp olt double %i.gs, %i.cs
  %1 = and i1 %i.gv, %i.gw
  %2 = or i1 %or.cond20.i.i.i, %1
  br i1 %2, label %clear.exit.i, label %bb.m

bb.m:                                             ; preds = %inBetween.exit.i.i, %.split.i.i, %.lr.ph.i.i
  %i.gx = fsub <2 x double> %i.fz, %i.fs          ; 2 uses
  %shift16 = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17 = fmul <2 x double> %shift16, %i.ey
  %i.gy = extractelement <2 x double> %foldExtExtBinop17, i64 0
  %i.gz = extractelement <2 x double> %i.gx, i64 0
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.gz, double %i.gy) ; 2 uses
  %i.hb = fcmp ogt double %i.ha, 1.000000e-04
  %i.hc = fcmp olt double %i.ha, -1.000000e-04
  %i.hd = sext i1 %i.hc to i32
  %i.he = select i1 %i.hb, i32 1, i32 %i.hd       ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.n, label %intersect.exit.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.fo, label %.split43.i.i, label %inBetween.exit42.i.i

.split43.i.i:                                     ; preds = %bb.n
  %i.hg = fcmp olt double %i.cv, %i.gb
  %i.hh = fcmp olt double %i.gb, %i.ek
  %or.cond.i41.i.i = and i1 %i.hg, %i.hh
  %i.hi = fcmp olt double %i.ek, %i.gb
  %i.hj = fcmp olt double %i.gb, %i.cv
  %i.hk = and i1 %i.hi, %i.hj
  %i.hl = or i1 %or.cond.i41.i.i, %i.hk
  br i1 %i.hl, label %clear.exit.i, label %intersect.exit.i

inBetween.exit42.i.i:                             ; preds = %bb.n
  %i.hm = fcmp olt double %i.cs, %i.ga
  %i.hn = fcmp olt double %i.ga, %i.cu
  %or.cond20.i39.i.i = and i1 %i.hm, %i.hn
  %i.ho = fcmp olt double %i.cu, %i.ga
  %i.hp = fcmp olt double %i.ga, %i.cs
  %3 = and i1 %i.ho, %i.hp
  %4 = or i1 %or.cond20.i39.i.i, %3
  br i1 %4, label %clear.exit.i, label %intersect.exit.i

intersect.exit.i:                                 ; preds = %inBetween.exit42.i.i, %.split43.i.i, %bb.m
  %i.hq = fsub <2 x double> %i.fy, %i.fz          ; 2 uses
  %i.hr = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = fsub <2 x double> %i.fp, %i.hr
  %i.ht = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fsub <2 x double> %i.fq, %i.ht
  %i.hv = extractelement <2 x double> %i.hq, i64 0
  %i.hw = fneg double %i.hv
  %i.hx = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.hu, %i.hy
  %i.ia = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.hs, <2 x double> %i.hz) ; 3 uses
  %i.ic = extractelement <2 x double> %i.ib, i64 1
  %i.id = fcmp ogt double %i.ic, 1.000000e-04
  %i.ie = fcmp olt <2 x double> %i.ib, splat (double -1.000000e-04) ; 2 uses
  %i.if = extractelement <2 x i1> %i.ie, i64 1
  %i.ig = sext i1 %i.if to i32
  %i.ih = select i1 %i.id, i32 1, i32 %i.ig
  %i.ii = extractelement <2 x double> %i.ib, i64 0
  %i.ij = fcmp ogt double %i.ii, 1.000000e-04
  %i.ik = extractelement <2 x i1> %i.ie, i64 0
  %i.il = sext i1 %i.ik to i32
  %i.im = select i1 %i.ij, i32 1, i32 %i.il
  %i.in = mul nsw i32 %i.he, %i.gj
  %i.io = icmp slt i32 %i.in, 0
  %i.ip = mul nsw i32 %i.ih, %i.im
  %i.iq = icmp slt i32 %i.ip, 0
  %i.ir = select i1 %i.io, i1 %i.iq, i1 false
  br i1 %i.ir, label %clear.exit.i, label %bb.k

.loopexit.i:                                      ; preds = %bb.k
  %foldExtExtBinop19 = fmul <2 x double> %i.er, %i.er
  %i.is = extractelement <2 x double> %foldExtExtBinop19, i64 0
  %i.it = extractelement <2 x double> %i.ex, i64 0 ; 2 uses
  %i.iu = tail call double @llvm.fmuladd.f64(double %i.it, double %i.it, double %i.is)
  %sqrt.i62.i = tail call double @llvm.sqrt.f64(double %i.iu) ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i4
  store double %sqrt.i62.i, ptr %i.iv, align 8, !tbaa !24
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i4
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !31
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv71.i
  store double %sqrt.i62.i, ptr %i.iy, align 8, !tbaa !24
  br label %clear.exit.i

clear.exit.i:                                     ; preds = %intersect.exit.i, %inBetween.exit42.i.i, %.split43.i.i, %inBetween.exit.i.i, %.split.i.i, %.loopexit.i, %bb.j, %bb.i
  %indvars.iv.next.i5 = add nsw i64 %indvars.iv.i4, -1
  %i.iz = icmp sgt i64 %indvars.iv.i4, 0
  br i1 %i.iz, label %bb.i, label %._crit_edge.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %clear.exit.i, %bb.h
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i3, label %compVis.exit, label %bb.h, !llvm.loop !29

compVis.exit:                                     ; preds = %._crit_edge.i, %allocArray.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @ptVis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double %2, double %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = add nsw i32 %i.b, 2                      ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %mul.ov.i = icmp slt i32 %i.b, -2
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.j, i64 noundef 8) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ne i32 %i.i, 0
  %i.n = tail call noalias ptr @calloc(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.j, i64 noundef 8) #14 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  %or.cond3.i = and i1 %i.m, %i.o
  br i1 %or.cond3.i, label %bb.d, label %gv_calloc.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.q = shl nuw nsw i64 %i.j, 3
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.1, i64 noundef %i.q) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit:                                   ; preds = %bb.c
  %i.s = icmp eq i32 %1, -2222
  br i1 %i.s, label %bb.e, label %polyhit.exit

bb.e:                                             ; preds = %gv_calloc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.e ] ; 4 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !38
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.i, %i.v
  br i1 %i.w, label %bb.g, label %polyhit.exit.thread154

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !22  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.ab
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22
  %i.af = sub nsw i32 %i.ae, %i.aa
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call zeroext i1 @in_poly(ptr %i.ac, i64 %i.ag, double %2, double %3) #15
  br i1 %i.ah, label %polyhit.exit.thread, label %bb.f, !llvm.loop !34

polyhit.exit.thread:                              ; preds = %bb.g
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.h

polyhit.exit:                                     ; preds = %gv_calloc.exit
  %i.aj = icmp sgt i32 %1, -1
  br i1 %i.aj, label %bb.h, label %polyhit.exit.thread154

bb.h:                                             ; preds = %polyhit.exit.thread, %polyhit.exit
  %.095153 = phi i32 [ %i.ai, %polyhit.exit.thread ], [ %1, %polyhit.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = zext nneg i32 %.095153 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22
  br label %polyhit.exit.thread154

polyhit.exit.thread154:                           ; preds = %bb.f, %polyhit.exit, %bb.h
  %.093 = phi i32 [ %i.ao, %bb.h ], [ %i.b, %polyhit.exit ], [ %i.b, %bb.f ] ; 6 uses
  %.0 = phi i32 [ %i.aq, %bb.h ], [ %i.b, %polyhit.exit ], [ %i.b, %bb.f ] ; 6 uses
  %i.ar = icmp sgt i32 %.093, 0                   ; 2 uses
  br i1 %i.ar, label %.lr.ph, label %.preheader183

.lr.ph:                                           ; preds = %polyhit.exit.thread154
  %wide.trip.count.i = zext nneg i32 %.093 to i64 ; 2 uses
  %i.as = icmp slt i32 %.0, %i.b
  %i.at = sext i32 %.0 to i64
  %i.au = insertelement <2 x double> poison, double %3, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x double> poison, double %2, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x double> poison, double %3, i64 1
  br label %bb.i

.preheader183:                                    ; preds = %clear.exit.thread166, %polyhit.exit.thread154
  %i.az = icmp slt i32 %.093, %.0
  br i1 %i.az, label %.lr.ph189.preheader, label %.preheader

.lr.ph189.preheader:                              ; preds = %.preheader183
  %i.ba = sext i32 %.093 to i64
  %i.bb = shl nsw i64 %i.ba, 3
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.bb
  %i.bc = xor i32 %.093, -1
  %i.bd = add i32 %.0, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.bg, i1 false), !tbaa !24
  br label %.preheader

bb.i:                                             ; preds = %.lr.ph, %clear.exit.thread166
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %clear.exit.thread166 ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bi = load <2 x double>, ptr %i.bh, align 8, !tbaa !24 ; 7 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0 ; 9 uses
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !24 ; 12 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !22
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !22
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load <2 x double>, ptr %i.bn, align 8   ; 3 uses
  %i.bu = load double, ptr %i.bs, align 8
  %i.bv = load <2 x double>, ptr %i.br, align 8   ; 2 uses
  %i.bw = insertelement <2 x double> %i.bt, double %.sroa.10.0.copyload, i64 0 ; 3 uses
  %i.bx = fsub <2 x double> %i.av, %i.bw          ; 4 uses
  %i.by = shufflevector <2 x double> %i.bv, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.bz = shufflevector <2 x double> %i.bi, <2 x double> %i.bt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ca = fsub <2 x double> %i.by, %i.bz          ; 2 uses
  %i.cb = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.cc = fsub <2 x double> %i.cb, %i.bw          ; 2 uses
  %i.cd = fsub <2 x double> %i.ax, %i.bz          ; 2 uses
  %i.ce = fneg <2 x double> %i.cd                 ; 5 uses
  %i.cf = fmul <2 x double> %i.cc, %i.ce
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.ca, <2 x double> %i.cf)
  %i.ch = fcmp uge <2 x double> %i.cg, splat (double -1.000000e-04) ; 2 uses
  %i.ci = fsub double %i.bu, %.sroa.10.0.copyload
  %foldExtExtBinop = fsub <2 x double> %i.bt, %i.bi
  %i.cj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ck = fneg double %i.cj
  %i.cl = extractelement <2 x double> %i.cc, i64 0
  %i.cm = fmul double %i.cl, %i.ck
  %i.cn = extractelement <2 x double> %i.ca, i64 0
  %i.co = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cn, double %i.cm)
  %i.cp = fcmp ogt double %i.co, 1.000000e-04
  %i.cq = extractelement <2 x i1> %i.ch, i64 0    ; 2 uses
  %i.cr = extractelement <2 x i1> %i.ch, i64 1    ; 2 uses
  %i.cs = select i1 %i.cr, i1 %i.cq, i1 false
  %i.ct = select i1 %i.cr, i1 true, i1 %i.cq
  %.0.i = select i1 %i.cp, i1 %i.cs, i1 %i.ct
  br i1 %.0.i, label %.lr.ph.preheader.i, label %clear.exit.thread166

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.cu = fcmp une double %2, %i.bj               ; 4 uses
  %i.cv = insertelement <2 x double> %i.bi, double %2, i64 1 ; 2 uses
  %i.cw = insertelement <2 x double> %i.ay, double %.sroa.10.0.copyload, i64 0
  %i.cx = extractelement <2 x double> %i.bx, i64 0 ; 4 uses
  %i.cy = insertelement <2 x double> %i.bi, double %.sroa.10.0.copyload, i64 1 ; 4 uses
  br label %.lr.ph.i

bb.j:                                             ; preds = %intersect.exit131
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !0

.preheader.i.loopexit:                            ; preds = %bb.j
  br i1 %i.as, label %.lr.ph27.i.preheader, label %clear.exit.thread164

.lr.ph27.i.preheader:                             ; preds = %.preheader.i.loopexit
  %i.cz = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.da = insertelement <2 x double> %i.cz, double %3, i64 1
  br label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i100, %bb.j ] ; 3 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i99
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i99
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !22
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.de
  %i.dg = load <2 x double>, ptr %i.db, align 8   ; 4 uses
  %i.dh = load <2 x double>, ptr %i.df, align 8   ; 6 uses
  %i.di = extractelement <2 x double> %i.dh, i64 1 ; 4 uses
  %i.dj = extractelement <2 x double> %i.dh, i64 0 ; 4 uses
  %i.dk = fsub <2 x double> %i.dg, %i.cy          ; 2 uses
  %shift = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop217 = fmul <2 x double> %shift, %i.ce
  %i.dl = extractelement <2 x double> %foldExtExtBinop217, i64 0
  %i.dm = extractelement <2 x double> %i.dk, i64 0
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.dm, double %i.dl) ; 2 uses
  %i.do = fcmp ogt double %i.dn, 1.000000e-04
  %i.dp = fcmp olt double %i.dn, -1.000000e-04
  %i.dq = sext i1 %i.dp to i32
  %i.dr = select i1 %i.do, i32 1, i32 %i.dq       ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  br i1 %i.cu, label %.split.i129, label %inBetween.exit.i127

.split.i129:                                      ; preds = %bb.k
  %i.dt = extractelement <2 x double> %i.dg, i64 0 ; 4 uses
  %i.du = fcmp olt double %2, %i.dt
  %i.dv = fcmp olt double %i.dt, %i.bj
  %or.cond.i.i130 = and i1 %i.du, %i.dv
  %i.dw = fcmp olt double %i.bj, %i.dt
  %i.dx = fcmp olt double %i.dt, %2
  %i.dy = and i1 %i.dw, %i.dx
  %i.dz = or i1 %or.cond.i.i130, %i.dy
  br i1 %i.dz, label %clear.exit.thread166, label %bb.l

inBetween.exit.i127:                              ; preds = %bb.k
  %i.ea = extractelement <2 x double> %i.dg, i64 1 ; 4 uses
  %i.eb = fcmp olt double %3, %i.ea
  %i.ec = fcmp olt double %i.ea, %.sroa.10.0.copyload
  %or.cond20.i.i128 = and i1 %i.eb, %i.ec
  %i.ed = fcmp olt double %.sroa.10.0.copyload, %i.ea
  %i.ee = fcmp olt double %i.ea, %3
  %4 = and i1 %i.ed, %i.ee
  %5 = or i1 %or.cond20.i.i128, %4
  br i1 %5, label %clear.exit.thread166, label %bb.l

bb.l:                                             ; preds = %inBetween.exit.i127, %.split.i129, %.lr.ph.i
  %i.ef = fsub <2 x double> %i.dh, %i.cy          ; 2 uses
  %shift219 = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop220 = fmul <2 x double> %shift219, %i.ce
  %i.eg = extractelement <2 x double> %foldExtExtBinop220, i64 0
  %i.eh = extractelement <2 x double> %i.ef, i64 0
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.eh, double %i.eg) ; 2 uses
  %i.ej = fcmp ogt double %i.ei, 1.000000e-04
  %i.ek = fcmp olt double %i.ei, -1.000000e-04
  %i.el = sext i1 %i.ek to i32
  %i.em = select i1 %i.ej, i32 1, i32 %i.el       ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.m, label %intersect.exit131

bb.m:                                             ; preds = %bb.l
  br i1 %i.cu, label %.split43.i125, label %inBetween.exit42.i123

.split43.i125:                                    ; preds = %bb.m
  %i.eo = fcmp olt double %2, %i.dj
  %i.ep = fcmp olt double %i.dj, %i.bj
  %or.cond.i41.i126 = and i1 %i.eo, %i.ep
  %i.eq = fcmp olt double %i.bj, %i.dj
  %i.er = fcmp olt double %i.dj, %2
  %i.es = and i1 %i.eq, %i.er
  %i.et = or i1 %or.cond.i41.i126, %i.es
  br i1 %i.et, label %clear.exit.thread166, label %intersect.exit131

inBetween.exit42.i123:                            ; preds = %bb.m
  %i.eu = fcmp olt double %3, %i.di
  %i.ev = fcmp olt double %i.di, %.sroa.10.0.copyload
  %or.cond20.i39.i124 = and i1 %i.eu, %i.ev
  %i.ew = fcmp olt double %.sroa.10.0.copyload, %i.di
  %i.ex = fcmp olt double %i.di, %3
  %6 = and i1 %i.ew, %i.ex
  %7 = or i1 %or.cond20.i39.i124, %6
  br i1 %7, label %clear.exit.thread166, label %intersect.exit131

intersect.exit131:                                ; preds = %bb.l, %.split43.i125, %inBetween.exit42.i123
  %i.ey = fsub <2 x double> %i.dg, %i.dh          ; 2 uses
  %i.ez = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fsub <2 x double> %i.cv, %i.ez
  %i.fb = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fc = fsub <2 x double> %i.cw, %i.fb
  %i.fd = extractelement <2 x double> %i.ey, i64 0
  %i.fe = fneg double %i.fd
  %i.ff = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x double> %i.fc, %i.fg
  %i.fi = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fa, <2 x double> %i.fh) ; 3 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 1
  %i.fl = fcmp ogt double %i.fk, 1.000000e-04
  %i.fm = fcmp olt <2 x double> %i.fj, splat (double -1.000000e-04) ; 2 uses
  %i.fn = extractelement <2 x i1> %i.fm, i64 1
  %i.fo = sext i1 %i.fn to i32
  %i.fp = select i1 %i.fl, i32 1, i32 %i.fo
  %i.fq = extractelement <2 x double> %i.fj, i64 0
  %i.fr = fcmp ogt double %i.fq, 1.000000e-04
  %i.fs = extractelement <2 x i1> %i.fm, i64 0
  %i.ft = sext i1 %i.fs to i32
  %i.fu = select i1 %i.fr, i32 1, i32 %i.ft
  %i.fv = mul nsw i32 %i.em, %i.dr
  %i.fw = icmp slt i32 %i.fv, 0
  %i.fx = mul nsw i32 %i.fp, %i.fu
  %i.fy = icmp slt i32 %i.fx, 0
  %i.fz = select i1 %i.fw, i1 %i.fy, i1 false
  br i1 %i.fz, label %clear.exit.thread166, label %bb.j

.lr.ph27.i:                                       ; preds = %.lr.ph27.i.preheader, %intersect.exit
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %intersect.exit ], [ %i.at, %.lr.ph27.i.preheader ] ; 3 uses
  %i.ga = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv32.i
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv32.i
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !22
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.gd
  %i.gf = load <2 x double>, ptr %i.ga, align 8   ; 4 uses
  %i.gg = load <2 x double>, ptr %i.ge, align 8   ; 6 uses
  %i.gh = extractelement <2 x double> %i.gg, i64 1 ; 4 uses
  %i.gi = extractelement <2 x double> %i.gg, i64 0 ; 4 uses
  %i.gj = fsub <2 x double> %i.gf, %i.cy          ; 2 uses
  %shift222 = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop223 = fmul <2 x double> %shift222, %i.ce
  %i.gk = extractelement <2 x double> %foldExtExtBinop223, i64 0
  %i.gl = extractelement <2 x double> %i.gj, i64 0
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.gl, double %i.gk) ; 2 uses
  %i.gn = fcmp ogt double %i.gm, 1.000000e-04
  %i.go = fcmp olt double %i.gm, -1.000000e-04
  %i.gp = sext i1 %i.go to i32
  %i.gq = select i1 %i.gn, i32 1, i32 %i.gp       ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph27.i
  br i1 %i.cu, label %.split.i, label %inBetween.exit.i

.split.i:                                         ; preds = %bb.n
  %i.gs = extractelement <2 x double> %i.gf, i64 0 ; 4 uses
  %i.gt = fcmp olt double %2, %i.gs
  %i.gu = fcmp olt double %i.gs, %i.bj
  %or.cond.i.i = and i1 %i.gt, %i.gu
  %i.gv = fcmp olt double %i.bj, %i.gs
  %i.gw = fcmp olt double %i.gs, %2
  %i.gx = and i1 %i.gv, %i.gw
  %i.gy = or i1 %or.cond.i.i, %i.gx
  br i1 %i.gy, label %clear.exit.thread166, label %bb.o

inBetween.exit.i:                                 ; preds = %bb.n
  %i.gz = extractelement <2 x double> %i.gf, i64 1 ; 4 uses
  %i.ha = fcmp olt double %3, %i.gz
  %i.hb = fcmp olt double %i.gz, %.sroa.10.0.copyload
  %or.cond20.i.i = and i1 %i.ha, %i.hb
  %i.hc = fcmp olt double %.sroa.10.0.copyload, %i.gz
  %i.hd = fcmp olt double %i.gz, %3
  %8 = and i1 %i.hc, %i.hd
  %9 = or i1 %or.cond20.i.i, %8
  br i1 %9, label %clear.exit.thread166, label %bb.o

bb.o:                                             ; preds = %inBetween.exit.i, %.split.i, %.lr.ph27.i
  %i.he = fsub <2 x double> %i.gg, %i.cy          ; 2 uses
  %shift225 = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop226 = fmul <2 x double> %shift225, %i.ce
  %i.hf = extractelement <2 x double> %foldExtExtBinop226, i64 0
  %i.hg = extractelement <2 x double> %i.he, i64 0
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.hg, double %i.hf) ; 2 uses
  %i.hi = fcmp ogt double %i.hh, 1.000000e-04
  %i.hj = fcmp olt double %i.hh, -1.000000e-04
  %i.hk = sext i1 %i.hj to i32
  %i.hl = select i1 %i.hi, i32 1, i32 %i.hk       ; 2 uses
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.p, label %intersect.exit

bb.p:                                             ; preds = %bb.o
  br i1 %i.cu, label %.split43.i, label %inBetween.exit42.i

.split43.i:                                       ; preds = %bb.p
  %i.hn = fcmp olt double %2, %i.gi
  %i.ho = fcmp olt double %i.gi, %i.bj
  %or.cond.i41.i = and i1 %i.hn, %i.ho
  %i.hp = fcmp olt double %i.bj, %i.gi
  %i.hq = fcmp olt double %i.gi, %2
  %i.hr = and i1 %i.hp, %i.hq
  %i.hs = or i1 %or.cond.i41.i, %i.hr
  br i1 %i.hs, label %clear.exit.thread166, label %intersect.exit

inBetween.exit42.i:                               ; preds = %bb.p
  %i.ht = fcmp olt double %3, %i.gh
  %i.hu = fcmp olt double %i.gh, %.sroa.10.0.copyload
  %or.cond20.i39.i = and i1 %i.ht, %i.hu
  %i.hv = fcmp olt double %.sroa.10.0.copyload, %i.gh
  %i.hw = fcmp olt double %i.gh, %3
  %10 = and i1 %i.hv, %i.hw
  %11 = or i1 %or.cond20.i39.i, %10
  br i1 %11, label %clear.exit.thread166, label %intersect.exit

intersect.exit:                                   ; preds = %bb.o, %.split43.i, %inBetween.exit42.i
  %i.hx = fsub <2 x double> %i.gf, %i.gg          ; 2 uses
  %i.hy = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fsub <2 x double> %i.cv, %i.hy
  %i.ia = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ib = fsub <2 x double> %i.da, %i.ia
  %i.ic = extractelement <2 x double> %i.hx, i64 0
  %i.id = fneg double %i.ic
  %i.ie = insertelement <2 x double> poison, double %i.id, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x double> %i.ib, %i.if
  %i.ih = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ii = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.hz, <2 x double> %i.ig) ; 3 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 1
  %i.ik = fcmp ogt double %i.ij, 1.000000e-04
  %i.il = fcmp olt <2 x double> %i.ii, splat (double -1.000000e-04) ; 2 uses
  %i.im = extractelement <2 x i1> %i.il, i64 1
  %i.in = sext i1 %i.im to i32
  %i.io = select i1 %i.ik, i32 1, i32 %i.in
  %i.ip = extractelement <2 x double> %i.ii, i64 0
  %i.iq = fcmp ogt double %i.ip, 1.000000e-04
  %i.ir = extractelement <2 x i1> %i.il, i64 0
  %i.is = sext i1 %i.ir to i32
  %i.it = select i1 %i.iq, i32 1, i32 %i.is
  %i.iu = mul nsw i32 %i.hl, %i.gq
  %i.iv = icmp slt i32 %i.iu, 0
  %i.iw = mul nsw i32 %i.io, %i.it
  %i.ix = icmp slt i32 %i.iw, 0
  %i.iy = select i1 %i.iv, i1 %i.ix, i1 false     ; 2 uses
  %indvars.iv.next33.i = add nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next33.i to i32
  %exitcond35.not.i = icmp eq i32 %i.b, %lftr.wideiv.i
  %or.cond.i = select i1 %i.iy, i1 true, i1 %exitcond35.not.i
  br i1 %or.cond.i, label %clear.exit, label %.lr.ph27.i, !llvm.loop !35

clear.exit:                                       ; preds = %intersect.exit
  br i1 %i.iy, label %clear.exit.thread166, label %clear.exit.thread164

clear.exit.thread164:                             ; preds = %.preheader.i.loopexit, %clear.exit
  %foldExtExtBinop228 = fmul <2 x double> %i.bx, %i.bx
  %i.iz = extractelement <2 x double> %foldExtExtBinop228, i64 0
  %i.ja = extractelement <2 x double> %i.cd, i64 0 ; 2 uses
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.ja, double %i.ja, double %i.iz)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.jb)
  br label %clear.exit.thread166

clear.exit.thread166:                             ; preds = %intersect.exit131, %inBetween.exit.i127, %inBetween.exit42.i123, %.split.i129, %.split43.i125, %.split43.i, %.split.i, %inBetween.exit42.i, %inBetween.exit.i, %bb.i, %clear.exit, %clear.exit.thread164
  %sqrt.i.sink = phi double [ %sqrt.i, %clear.exit.thread164 ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %.split43.i ], [ 0.000000e+00, %clear.exit ], [ 0.000000e+00, %inBetween.exit.i ], [ 0.000000e+00, %inBetween.exit42.i ], [ 0.000000e+00, %.split.i ], [ 0.000000e+00, %.split43.i125 ], [ 0.000000e+00, %.split.i129 ], [ 0.000000e+00, %inBetween.exit42.i123 ], [ 0.000000e+00, %inBetween.exit.i127 ], [ 0.000000e+00, %intersect.exit131 ]
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double %sqrt.i.sink, ptr %i.jc, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.preheader183, label %bb.i, !llvm.loop !36

.preheader:                                       ; preds = %.lr.ph189.preheader, %.preheader183
  %i.jd = icmp slt i32 %.0, %i.b
  br i1 %i.jd, label %.lr.ph191, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.b to i64
  br label %._crit_edge

.lr.ph191:                                        ; preds = %.preheader
  %wide.trip.count.i114 = zext nneg i32 %.093 to i64
  %i.je = sext i32 %.0 to i64                     ; 2 uses
  %wide.trip.count203 = sext i32 %i.b to i64      ; 2 uses
  %i.jf = insertelement <2 x double> poison, double %3, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = insertelement <2 x double> poison, double %2, i64 0
  %i.ji = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jj = insertelement <2 x double> poison, double %3, i64 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph191, %clear.exit119.thread179
  %indvars.iv200 = phi i64 [ %i.je, %.lr.ph191 ], [ %indvars.iv.next201, %clear.exit119.thread179 ] ; 5 uses
  %i.jk = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv200 ; 2 uses
  %.sroa.10.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jl = load <2 x double>, ptr %i.jk, align 8, !tbaa !24 ; 9 uses
  %i.jm = extractelement <2 x double> %i.jl, i64 0 ; 10 uses
  %.sroa.10.0.copyload17 = load double, ptr %.sroa.10.0..sroa_idx16, align 8, !tbaa !24 ; 13 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv200
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !22
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv200
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !22
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jw = load <2 x double>, ptr %i.jq, align 8   ; 3 uses
  %i.jx = load double, ptr %i.jv, align 8
  %i.jy = load <2 x double>, ptr %i.ju, align 8   ; 2 uses
  %i.jz = insertelement <2 x double> %i.jw, double %.sroa.10.0.copyload17, i64 0 ; 3 uses
  %i.ka = fsub <2 x double> %i.jg, %i.jz          ; 5 uses
  %i.kb = shufflevector <2 x double> %i.jy, <2 x double> %i.jl, <2 x i32> <i32 0, i32 2>
  %i.kc = shufflevector <2 x double> %i.jl, <2 x double> %i.jw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kd = fsub <2 x double> %i.kb, %i.kc          ; 2 uses
  %i.ke = shufflevector <2 x double> %i.jy, <2 x double> %i.jz, <2 x i32> <i32 1, i32 2>
  %i.kf = fsub <2 x double> %i.ke, %i.jz          ; 2 uses
  %i.kg = fsub <2 x double> %i.ji, %i.kc          ; 2 uses
  %i.kh = fneg <2 x double> %i.kg                 ; 5 uses
  %i.ki = fmul <2 x double> %i.kf, %i.kh
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ka, <2 x double> %i.kd, <2 x double> %i.ki)
  %i.kk = fcmp uge <2 x double> %i.kj, splat (double -1.000000e-04) ; 2 uses
  %i.kl = fsub double %i.jx, %.sroa.10.0.copyload17
  %foldExtExtBinop230 = fsub <2 x double> %i.jw, %i.jl
  %i.km = extractelement <2 x double> %foldExtExtBinop230, i64 0
  %i.kn = fneg double %i.km
  %i.ko = extractelement <2 x double> %i.kf, i64 0
  %i.kp = fmul double %i.ko, %i.kn
  %i.kq = extractelement <2 x double> %i.kd, i64 0
  %i.kr = tail call double @llvm.fmuladd.f64(double %i.kl, double %i.kq, double %i.kp)
  %i.ks = fcmp ogt double %i.kr, 1.000000e-04
  %i.kt = extractelement <2 x i1> %i.kk, i64 0    ; 2 uses
  %i.ku = extractelement <2 x i1> %i.kk, i64 1    ; 2 uses
  %i.kv = select i1 %i.ku, i1 %i.kt, i1 false
  %i.kw = select i1 %i.ku, i1 true, i1 %i.kt
  %.0.i101 = select i1 %i.ks, i1 %i.kv, i1 %i.kw
  br i1 %.0.i101, label %bb.r, label %clear.exit119.thread179

bb.r:                                             ; preds = %bb.q
  br i1 %i.ar, label %.lr.ph.preheader.i113, label %.preheader.i102

.lr.ph.preheader.i113:                            ; preds = %bb.r
  %i.kx = fcmp une double %2, %i.jm               ; 2 uses
  %i.ky = insertelement <2 x double> %i.jl, double %2, i64 1
  %i.kz = insertelement <2 x double> %i.jj, double %.sroa.10.0.copyload17, i64 0
  %i.la = extractelement <2 x double> %i.ka, i64 0 ; 2 uses
  %i.lb = insertelement <2 x double> %i.jl, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph.i115

bb.s:                                             ; preds = %intersect.exit151
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i116, 1 ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i114
  br i1 %exitcond.not.i118, label %.preheader.i102, label %.lr.ph.i115, !llvm.loop !0

.preheader.i102:                                  ; preds = %bb.s, %bb.r
  %i.lc = fcmp une double %2, %i.jm               ; 2 uses
  %i.ld = insertelement <2 x double> %i.jl, double %2, i64 1
  %i.le = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lf = insertelement <2 x double> %i.le, double %3, i64 1
  %i.lg = extractelement <2 x double> %i.ka, i64 0 ; 2 uses
  %i.lh = insertelement <2 x double> %i.jl, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph27.i105

.lr.ph.i115:                                      ; preds = %bb.s, %.lr.ph.preheader.i113
  %indvars.iv.i116 = phi i64 [ 0, %.lr.ph.preheader.i113 ], [ %indvars.iv.next.i117, %bb.s ] ; 3 uses
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i116
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i116
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !22
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.ll
  %i.ln = load <2 x double>, ptr %i.li, align 8   ; 4 uses
  %i.lo = load <2 x double>, ptr %i.lm, align 8   ; 6 uses
  %i.lp = extractelement <2 x double> %i.lo, i64 1 ; 4 uses
  %i.lq = extractelement <2 x double> %i.lo, i64 0 ; 4 uses
  %i.lr = fsub <2 x double> %i.ln, %i.lb          ; 2 uses
  %shift232 = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop233 = fmul <2 x double> %shift232, %i.kh
  %i.ls = extractelement <2 x double> %foldExtExtBinop233, i64 0
  %i.lt = extractelement <2 x double> %i.lr, i64 0
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.la, double %i.lt, double %i.ls) ; 2 uses
  %i.lv = fcmp ogt double %i.lu, 1.000000e-04
  %i.lw = fcmp olt double %i.lu, -1.000000e-04
  %i.lx = sext i1 %i.lw to i32
  %i.ly = select i1 %i.lv, i32 1, i32 %i.lx       ; 2 uses
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i115
  br i1 %i.kx, label %.split.i149, label %inBetween.exit.i147

.split.i149:                                      ; preds = %bb.t
  %i.ma = extractelement <2 x double> %i.ln, i64 0 ; 4 uses
  %i.mb = fcmp olt double %2, %i.ma
  %i.mc = fcmp olt double %i.ma, %i.jm
  %or.cond.i.i150 = and i1 %i.mb, %i.mc
  %i.md = fcmp olt double %i.jm, %i.ma
  %i.me = fcmp olt double %i.ma, %2
  %i.mf = and i1 %i.md, %i.me
  %i.mg = or i1 %or.cond.i.i150, %i.mf
  br i1 %i.mg, label %clear.exit119.thread179, label %bb.u

inBetween.exit.i147:                              ; preds = %bb.t
  %i.mh = extractelement <2 x double> %i.ln, i64 1 ; 4 uses
  %i.mi = fcmp olt double %3, %i.mh
  %i.mj = fcmp olt double %i.mh, %.sroa.10.0.copyload17
  %or.cond20.i.i148 = and i1 %i.mi, %i.mj
  %i.mk = fcmp olt double %.sroa.10.0.copyload17, %i.mh
  %i.ml = fcmp olt double %i.mh, %3
  %12 = and i1 %i.mk, %i.ml
  %13 = or i1 %or.cond20.i.i148, %12
  br i1 %13, label %clear.exit119.thread179, label %bb.u

bb.u:                                             ; preds = %inBetween.exit.i147, %.split.i149, %.lr.ph.i115
  %i.mm = fsub <2 x double> %i.lo, %i.lb          ; 2 uses
  %shift235 = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop236 = fmul <2 x double> %shift235, %i.kh
  %i.mn = extractelement <2 x double> %foldExtExtBinop236, i64 0
  %i.mo = extractelement <2 x double> %i.mm, i64 0
  %i.mp = tail call double @llvm.fmuladd.f64(double %i.la, double %i.mo, double %i.mn) ; 2 uses
  %i.mq = fcmp ogt double %i.mp, 1.000000e-04
  %i.mr = fcmp olt double %i.mp, -1.000000e-04
  %i.ms = sext i1 %i.mr to i32
  %i.mt = select i1 %i.mq, i32 1, i32 %i.ms       ; 2 uses
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %bb.v, label %intersect.exit151

bb.v:                                             ; preds = %bb.u
  br i1 %i.kx, label %.split43.i145, label %inBetween.exit42.i143

.split43.i145:                                    ; preds = %bb.v
  %i.mv = fcmp olt double %2, %i.lq
  %i.mw = fcmp olt double %i.lq, %i.jm
  %or.cond.i41.i146 = and i1 %i.mv, %i.mw
  %i.mx = fcmp olt double %i.jm, %i.lq
  %i.my = fcmp olt double %i.lq, %2
  %i.mz = and i1 %i.mx, %i.my
  %i.na = or i1 %or.cond.i41.i146, %i.mz
  br i1 %i.na, label %clear.exit119.thread179, label %intersect.exit151

inBetween.exit42.i143:                            ; preds = %bb.v
  %i.nb = fcmp olt double %3, %i.lp
  %i.nc = fcmp olt double %i.lp, %.sroa.10.0.copyload17
  %or.cond20.i39.i144 = and i1 %i.nb, %i.nc
  %i.nd = fcmp olt double %.sroa.10.0.copyload17, %i.lp
  %i.ne = fcmp olt double %i.lp, %3
  %14 = and i1 %i.nd, %i.ne
  %15 = or i1 %or.cond20.i39.i144, %14
  br i1 %15, label %clear.exit119.thread179, label %intersect.exit151

intersect.exit151:                                ; preds = %bb.u, %.split43.i145, %inBetween.exit42.i143
  %i.nf = fsub <2 x double> %i.ln, %i.lo          ; 2 uses
  %i.ng = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nh = fsub <2 x double> %i.ky, %i.ng
  %i.ni = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nj = fsub <2 x double> %i.kz, %i.ni
  %i.nk = extractelement <2 x double> %i.nf, i64 0
  %i.nl = fneg double %i.nk
  %i.nm = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.nn = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.no = fmul <2 x double> %i.nj, %i.nn
  %i.np = shufflevector <2 x double> %i.nf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.nh, <2 x double> %i.no) ; 3 uses
  %i.nr = extractelement <2 x double> %i.nq, i64 1
  %i.ns = fcmp ogt double %i.nr, 1.000000e-04
  %i.nt = fcmp olt <2 x double> %i.nq, splat (double -1.000000e-04) ; 2 uses
  %i.nu = extractelement <2 x i1> %i.nt, i64 1
  %i.nv = sext i1 %i.nu to i32
  %i.nw = select i1 %i.ns, i32 1, i32 %i.nv
  %i.nx = extractelement <2 x double> %i.nq, i64 0
  %i.ny = fcmp ogt double %i.nx, 1.000000e-04
  %i.nz = extractelement <2 x i1> %i.nt, i64 0
  %i.oa = sext i1 %i.nz to i32
  %i.ob = select i1 %i.ny, i32 1, i32 %i.oa
  %i.oc = mul nsw i32 %i.mt, %i.ly
  %i.od = icmp slt i32 %i.oc, 0
  %i.oe = mul nsw i32 %i.nw, %i.ob
  %i.of = icmp slt i32 %i.oe, 0
  %i.og = select i1 %i.od, i1 %i.of, i1 false
  br i1 %i.og, label %clear.exit119.thread179, label %bb.s

.lr.ph27.i105:                                    ; preds = %intersect.exit141, %.preheader.i102
  %indvars.iv32.i106 = phi i64 [ %i.je, %.preheader.i102 ], [ %indvars.iv.next33.i107, %intersect.exit141 ] ; 3 uses
  %i.oh = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv32.i106
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv32.i106
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !22
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.ok
  %i.om = load <2 x double>, ptr %i.oh, align 8   ; 4 uses
  %i.on = load <2 x double>, ptr %i.ol, align 8   ; 6 uses
  %i.oo = extractelement <2 x double> %i.on, i64 1 ; 4 uses
  %i.op = extractelement <2 x double> %i.on, i64 0 ; 4 uses
  %i.oq = fsub <2 x double> %i.om, %i.lh          ; 2 uses
  %shift238 = shufflevector <2 x double> %i.oq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop239 = fmul <2 x double> %shift238, %i.kh
  %i.or = extractelement <2 x double> %foldExtExtBinop239, i64 0
  %i.os = extractelement <2 x double> %i.oq, i64 0
  %i.ot = tail call double @llvm.fmuladd.f64(double %i.lg, double %i.os, double %i.or) ; 2 uses
  %i.ou = fcmp ogt double %i.ot, 1.000000e-04
  %i.ov = fcmp olt double %i.ot, -1.000000e-04
  %i.ow = sext i1 %i.ov to i32
  %i.ox = select i1 %i.ou, i32 1, i32 %i.ow       ; 2 uses
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph27.i105
  br i1 %i.lc, label %.split.i139, label %inBetween.exit.i137

.split.i139:                                      ; preds = %bb.w
  %i.oz = extractelement <2 x double> %i.om, i64 0 ; 4 uses
  %i.pa = fcmp olt double %2, %i.oz
  %i.pb = fcmp olt double %i.oz, %i.jm
  %or.cond.i.i140 = and i1 %i.pa, %i.pb
  %i.pc = fcmp olt double %i.jm, %i.oz
  %i.pd = fcmp olt double %i.oz, %2
  %i.pe = and i1 %i.pc, %i.pd
  %i.pf = or i1 %or.cond.i.i140, %i.pe
  br i1 %i.pf, label %clear.exit119.thread179, label %bb.x

inBetween.exit.i137:                              ; preds = %bb.w
  %i.pg = extractelement <2 x double> %i.om, i64 1 ; 4 uses
  %i.ph = fcmp olt double %3, %i.pg
  %i.pi = fcmp olt double %i.pg, %.sroa.10.0.copyload17
  %or.cond20.i.i138 = and i1 %i.ph, %i.pi
  %i.pj = fcmp olt double %.sroa.10.0.copyload17, %i.pg
  %i.pk = fcmp olt double %i.pg, %3
  %16 = and i1 %i.pj, %i.pk
  %17 = or i1 %or.cond20.i.i138, %16
  br i1 %17, label %clear.exit119.thread179, label %bb.x

bb.x:                                             ; preds = %inBetween.exit.i137, %.split.i139, %.lr.ph27.i105
  %i.pl = fsub <2 x double> %i.on, %i.lh          ; 2 uses
  %shift241 = shufflevector <2 x double> %i.pl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop242 = fmul <2 x double> %shift241, %i.kh
  %i.pm = extractelement <2 x double> %foldExtExtBinop242, i64 0
  %i.pn = extractelement <2 x double> %i.pl, i64 0
  %i.po = tail call double @llvm.fmuladd.f64(double %i.lg, double %i.pn, double %i.pm) ; 2 uses
  %i.pp = fcmp ogt double %i.po, 1.000000e-04
  %i.pq = fcmp olt double %i.po, -1.000000e-04
  %i.pr = sext i1 %i.pq to i32
  %i.ps = select i1 %i.pp, i32 1, i32 %i.pr       ; 2 uses
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %bb.y, label %intersect.exit141

bb.y:                                             ; preds = %bb.x
  br i1 %i.lc, label %.split43.i135, label %inBetween.exit42.i133

.split43.i135:                                    ; preds = %bb.y
  %i.pu = fcmp olt double %2, %i.op
  %i.pv = fcmp olt double %i.op, %i.jm
  %or.cond.i41.i136 = and i1 %i.pu, %i.pv
  %i.pw = fcmp olt double %i.jm, %i.op
  %i.px = fcmp olt double %i.op, %2
  %i.py = and i1 %i.pw, %i.px
  %i.pz = or i1 %or.cond.i41.i136, %i.py
  br i1 %i.pz, label %clear.exit119.thread179, label %intersect.exit141

inBetween.exit42.i133:                            ; preds = %bb.y
  %i.qa = fcmp olt double %3, %i.oo
  %i.qb = fcmp olt double %i.oo, %.sroa.10.0.copyload17
  %or.cond20.i39.i134 = and i1 %i.qa, %i.qb
  %i.qc = fcmp olt double %.sroa.10.0.copyload17, %i.oo
  %i.qd = fcmp olt double %i.oo, %3
  %18 = and i1 %i.qc, %i.qd
  %19 = or i1 %or.cond20.i39.i134, %18
  br i1 %19, label %clear.exit119.thread179, label %intersect.exit141

intersect.exit141:                                ; preds = %bb.x, %.split43.i135, %inBetween.exit42.i133
  %i.qe = fsub <2 x double> %i.om, %i.on          ; 2 uses
  %i.qf = shufflevector <2 x double> %i.on, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qg = fsub <2 x double> %i.ld, %i.qf
  %i.qh = shufflevector <2 x double> %i.on, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qi = fsub <2 x double> %i.lf, %i.qh
  %i.qj = extractelement <2 x double> %i.qe, i64 0
  %i.qk = fneg double %i.qj
  %i.ql = insertelement <2 x double> poison, double %i.qk, i64 0
  %i.qm = shufflevector <2 x double> %i.ql, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qn = fmul <2 x double> %i.qi, %i.qm
  %i.qo = shufflevector <2 x double> %i.qe, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qo, <2 x double> %i.qg, <2 x double> %i.qn) ; 3 uses
  %i.qq = extractelement <2 x double> %i.qp, i64 1
  %i.qr = fcmp ogt double %i.qq, 1.000000e-04
  %i.qs = fcmp olt <2 x double> %i.qp, splat (double -1.000000e-04) ; 2 uses
  %i.qt = extractelement <2 x i1> %i.qs, i64 1
  %i.qu = sext i1 %i.qt to i32
  %i.qv = select i1 %i.qr, i32 1, i32 %i.qu
  %i.qw = extractelement <2 x double> %i.qp, i64 0
  %i.qx = fcmp ogt double %i.qw, 1.000000e-04
  %i.qy = extractelement <2 x i1> %i.qs, i64 0
  %i.qz = sext i1 %i.qy to i32
  %i.ra = select i1 %i.qx, i32 1, i32 %i.qz
  %i.rb = mul nsw i32 %i.ps, %i.ox
  %i.rc = icmp slt i32 %i.rb, 0
  %i.rd = mul nsw i32 %i.qv, %i.ra
  %i.re = icmp slt i32 %i.rd, 0
  %i.rf = select i1 %i.rc, i1 %i.re, i1 false     ; 2 uses
  %indvars.iv.next33.i107 = add nsw i64 %indvars.iv32.i106, 1 ; 2 uses
  %lftr.wideiv.i108 = trunc i64 %indvars.iv.next33.i107 to i32
  %exitcond35.not.i109 = icmp eq i32 %i.b, %lftr.wideiv.i108
  %or.cond.i110 = select i1 %i.rf, i1 true, i1 %exitcond35.not.i109
  br i1 %or.cond.i110, label %clear.exit119, label %.lr.ph27.i105, !llvm.loop !35

clear.exit119:                                    ; preds = %intersect.exit141
  br i1 %i.rf, label %clear.exit119.thread179, label %clear.exit119.thread177

clear.exit119.thread177:                          ; preds = %clear.exit119
  %foldExtExtBinop244 = fmul <2 x double> %i.ka, %i.ka
  %i.rg = extractelement <2 x double> %foldExtExtBinop244, i64 0
  %i.rh = extractelement <2 x double> %i.kg, i64 0 ; 2 uses
  %i.ri = tail call double @llvm.fmuladd.f64(double %i.rh, double %i.rh, double %i.rg)
  %sqrt.i120 = tail call double @llvm.sqrt.f64(double %i.ri)
  br label %clear.exit119.thread179

clear.exit119.thread179:                          ; preds = %intersect.exit151, %inBetween.exit.i147, %inBetween.exit42.i143, %.split.i149, %.split43.i145, %.split43.i135, %.split.i139, %inBetween.exit42.i133, %inBetween.exit.i137, %bb.q, %clear.exit119, %clear.exit119.thread177
  %sqrt.i120.sink = phi double [ %sqrt.i120, %clear.exit119.thread177 ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %.split43.i135 ], [ 0.000000e+00, %clear.exit119 ], [ 0.000000e+00, %inBetween.exit.i137 ], [ 0.000000e+00, %inBetween.exit42.i133 ], [ 0.000000e+00, %.split.i139 ], [ 0.000000e+00, %.split43.i145 ], [ 0.000000e+00, %.split.i149 ], [ 0.000000e+00, %inBetween.exit42.i143 ], [ 0.000000e+00, %inBetween.exit.i147 ], [ 0.000000e+00, %intersect.exit151 ]
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv200
  store double %sqrt.i120.sink, ptr %i.rj, align 8, !tbaa !24
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge, label %bb.q, !llvm.loop !37

._crit_edge:                                      ; preds = %clear.exit119.thread179, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %wide.trip.count203, %clear.exit119.thread179 ]
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rk, i8 0, i64 16, i1 false)
  ret ptr %i.n
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @directVis(double %0, double %1, i32 noundef %2, double %3, double %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = icmp slt i32 %2, 0
  %i.h = icmp slt i32 %5, 0                       ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %.preheader, label %.preheader76.sink.split

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %.preheader76.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %. = tail call i32 @llvm.umin.i32(i32 %2, i32 %5)
  %.128 = tail call i32 @llvm.umax.i32(i32 %2, i32 %5)
  %i.k = zext nneg i32 %. to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22   ; 2 uses
  %i.p = zext nneg i32 %.128 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22   ; 2 uses
  %i.u = icmp sgt i32 %i.m, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader76, label %.lr.ph, !llvm.loop !39

.preheader76.sink.split:                          ; preds = %bb.c, %bb.b
  %.sink126 = phi i32 [ %5, %bb.b ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = zext nneg i32 %.sink126 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !22
  br label %.preheader76

.preheader76:                                     ; preds = %bb.e, %.preheader76.sink.split, %bb.d
  %.0107 = phi i32 [ %i.ab, %.preheader76.sink.split ], [ %i.t, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.068106 = phi i32 [ %i.z, %.preheader76.sink.split ], [ %i.r, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.069105 = phi i32 [ 0, %.preheader76.sink.split ], [ %i.o, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.ac = icmp slt i32 %.069105, %.068106
  br i1 %i.ac, label %.lr.ph81.preheader, label %.preheader

.lr.ph81.preheader:                               ; preds = %.preheader76
  %i.ad = sext i32 %.069105 to i64
  br label %.lr.ph81

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.ah ; 2 uses
  %i.aj = load double, ptr %i.ae, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load double, ptr %i.ak, align 8
  %i.am = load double, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = tail call fastcc zeroext i1 @intersect(double %0, double %1, double %3, double %4, double %i.aj, double %i.al, double %i.am, double %i.ao)
  br i1 %i.ap, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %.lr.ph81
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next90 to i32
  %exitcond92.not = icmp eq i32 %.068106, %lftr.wideiv
  br i1 %exitcond92.not, label %.preheader, label %.lr.ph81, !llvm.loop !40

.preheader:                                       ; preds = %bb.f, %bb.b, %.preheader76
  %.0107111 = phi i32 [ %.0107, %.preheader76 ], [ 0, %bb.b ], [ %.0107, %bb.f ] ; 2 uses
  %i.aq = icmp slt i32 %.0107111, %i.b
  br i1 %i.aq, label %.lr.ph83.preheader, label %.loopexit

.lr.ph83.preheader:                               ; preds = %.preheader
  %i.ar = sext i32 %.0107111 to i64
  br label %.lr.ph83

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.f
  %indvars.iv89 = phi i64 [ %i.ad, %.lr.ph81.preheader ], [ %indvars.iv.next90, %bb.f ] ; 3 uses
  %i.as = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv89 ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv89
  %i.au = load i32, ptr %i.at, align 4, !tbaa !22
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.av ; 2 uses
  %i.ax = load double, ptr %i.as, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load double, ptr %i.ay, align 8
  %i.ba = load double, ptr %i.aw, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load double, ptr %i.bb, align 8
  %i.bd = tail call fastcc zeroext i1 @intersect(double %0, double %1, double %3, double %4, double %i.ax, double %i.az, double %i.ba, double %i.bc)
  br i1 %i.bd, label %.loopexit, label %bb.f

.lr.ph83:                                         ; preds = %.lr.ph83, %.lr.ph83.preheader
  %indvars.iv93 = phi i64 [ %i.ar, %.lr.ph83.preheader ], [ %indvars.iv.next94, %.lr.ph83 ] ; 3 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv93 ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv93
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !22
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bh ; 2 uses
  %i.bj = load double, ptr %i.be, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bl = load double, ptr %i.bk, align 8
  %i.bm = load double, ptr %i.bi, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = tail call fastcc zeroext i1 @intersect(double %0, double %1, double %3, double %4, double %i.bj, double %i.bl, double %i.bm, double %i.bo) ; 2 uses
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1 ; 2 uses
  %lftr.wideiv96 = trunc i64 %indvars.iv.next94 to i32
  %exitcond97.not = icmp eq i32 %i.b, %lftr.wideiv96
  %or.cond = select i1 %i.bp, i1 true, i1 %exitcond97.not
  br i1 %or.cond, label %.loopexit.loopexit, label %.lr.ph83, !llvm.loop !41

.loopexit.loopexit:                               ; preds = %.lr.ph83
  %.072.ph = xor i1 %i.bp, true
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph81, %.loopexit.loopexit, %.preheader
  %.072 = phi i1 [ %.072.ph, %.loopexit.loopexit ], [ true, %.preheader ], [ false, %.lr.ph81 ], [ false, %.lr.ph ]
  ret i1 %.072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc zeroext i1 @intersect(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7) unnamed_addr #0 {
bb.a:
  %i.a = fsub double %1, %3                       ; 2 uses
  %i.b = fsub double %4, %2
  %i.c = fsub double %5, %3
  %i.d = fsub double %0, %2
  %i.e = fneg double %i.d                         ; 2 uses
  %i.f = fmul double %i.c, %i.e
  %i.g = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double %i.f) ; 2 uses
  %i.h = fcmp ogt double %i.g, 1.000000e-04
  %i.i = fcmp olt double %i.g, -1.000000e-04
  %i.j = sext i1 %i.i to i32
  %i.k = select i1 %i.h, i32 1, i32 %i.j          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = fcmp une double %0, %2
  br i1 %i.m, label %.split, label %inBetween.exit

.split:                                           ; preds = %bb.b
  %i.n = fcmp olt double %0, %4
  %i.o = fcmp olt double %4, %2
  %or.cond.i = and i1 %i.n, %i.o
  %i.p = fcmp olt double %2, %4
  %i.q = fcmp olt double %4, %0
  %i.r = and i1 %i.p, %i.q
  %i.s = or i1 %or.cond.i, %i.r
  br i1 %i.s, label %bb.f, label %bb.c

inBetween.exit:                                   ; preds = %bb.b
  %i.t = fcmp olt double %1, %5
  %i.u = fcmp olt double %5, %3
  %or.cond20.i = and i1 %i.t, %i.u
  %i.v = fcmp olt double %3, %5
  %i.w = fcmp olt double %5, %1
  %8 = and i1 %i.v, %i.w
  %9 = or i1 %or.cond20.i, %8
  br i1 %9, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.split, %inBetween.exit, %bb.a
  %i.x = fsub double %6, %2
  %i.y = fsub double %7, %3
  %i.z = fmul double %i.y, %i.e
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.a, double %i.x, double %i.z) ; 2 uses
  %i.ab = fcmp ogt double %i.aa, 1.000000e-04
  %i.ac = fcmp olt double %i.aa, -1.000000e-04
  %i.ad = sext i1 %i.ac to i32
  %i.ae = select i1 %i.ab, i32 1, i32 %i.ad       ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = fcmp une double %0, %2
  br i1 %i.ag, label %.split43, label %inBetween.exit42

.split43:                                         ; preds = %bb.d
  %i.ah = fcmp olt double %0, %6
  %i.ai = fcmp olt double %6, %2
  %or.cond.i41 = and i1 %i.ah, %i.ai
  %i.aj = fcmp olt double %2, %6
  %i.ak = fcmp olt double %6, %0
  %i.al = and i1 %i.aj, %i.ak
  %i.am = or i1 %or.cond.i41, %i.al
  br i1 %i.am, label %bb.f, label %bb.e

inBetween.exit42:                                 ; preds = %bb.d
  %i.an = fcmp olt double %1, %7
  %i.ao = fcmp olt double %7, %3
  %or.cond20.i39 = and i1 %i.an, %i.ao
  %i.ap = fcmp olt double %3, %7
  %i.aq = fcmp olt double %7, %1
  %10 = and i1 %i.ap, %i.aq
  %11 = or i1 %or.cond20.i39, %10
  br i1 %11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split43, %inBetween.exit42, %bb.c
  %i.ar = fsub double %5, %7
  %i.as = insertelement <2 x double> poison, double %2, i64 0
  %i.at = insertelement <2 x double> %i.as, double %0, i64 1
  %i.au = insertelement <2 x double> poison, double %6, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fsub <2 x double> %i.at, %i.av
  %i.ax = insertelement <2 x double> poison, double %3, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %1, i64 1
  %i.az = insertelement <2 x double> poison, double %7, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fsub <2 x double> %i.ay, %i.ba
  %i.bc = fsub double %4, %6
  %i.bd = fneg double %i.bc
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x double> %i.bb, %i.bf
  %i.bh = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.aw, <2 x double> %i.bg) ; 3 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 1
  %i.bl = fcmp ogt double %i.bk, 1.000000e-04
  %i.bm = fcmp olt <2 x double> %i.bj, splat (double -1.000000e-04) ; 2 uses
  %i.bn = extractelement <2 x i1> %i.bm, i64 1
  %i.bo = sext i1 %i.bn to i32
  %i.bp = select i1 %i.bl, i32 1, i32 %i.bo
  %i.bq = extractelement <2 x double> %i.bj, i64 0
  %i.br = fcmp ogt double %i.bq, 1.000000e-04
  %i.bs = extractelement <2 x i1> %i.bm, i64 0
  %i.bt = sext i1 %i.bs to i32
  %i.bu = select i1 %i.br, i32 1, i32 %i.bt
  %i.bv = mul nsw i32 %i.ae, %i.k
  %i.bw = icmp slt i32 %i.bv, 0
  %i.bx = mul nsw i32 %i.bp, %i.bu
  %i.by = icmp slt i32 %i.bx, 0
  %i.bz = select i1 %i.bw, i1 %i.by, i1 false
  br label %bb.f

bb.f:                                             ; preds = %.split43, %.split, %inBetween.exit42, %inBetween.exit, %bb.e
  %.0 = phi i1 [ %i.bz, %bb.e ], [ true, %inBetween.exit ], [ true, %inBetween.exit42 ], [ true, %.split ], [ true, %.split43 ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #6 {
bb.a:
  tail call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare zeroext i1 @in_poly(ptr, i64, double, double) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind }
attributes #16 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !18}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS5Pxy_t", !9, i64 0}
!11 = !{!"p1 int", !9, i64 0}
!12 = !{!"any p2 pointer", !9, i64 0}
!13 = !{!"p2 double", !12, i64 0}
!14 = !{!"vconfig_s", !6, i64 0, !6, i64 4, !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !13, i64 40}
!15 = !{!14, !6, i64 4}
!16 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!14, !10, i64 8}
!20 = !{!14, !11, i64 24}
!21 = !{!14, !11, i64 32}
!22 = !{!6, !6, i64 0}
!23 = !{!"double", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!14, !11, i64 16}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !32}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = !{!"p1 double", !9, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!14, !13, i64 40}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = !{!14, !6, i64 0}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
end_hunk_0
