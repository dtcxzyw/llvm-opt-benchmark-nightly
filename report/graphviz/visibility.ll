Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/visibility?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@visibility:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.m ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %i.al, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.m ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.m ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.m ; 2 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %allocArray.exit.loopexit.unr-lcssa, label %gv_calloc.exit23.i, !llvm.loop !26

allocArray.exit.loopexit.unr-lcssa:               ; preds = %gv_calloc.exit23.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %allocArray.exit, label %gv_calloc.exit23.i.epil.preheader

gv_calloc.exit23.i.epil.preheader:                ; preds = %allocArray.exit.loopexit.unr-lcssa, %gv_calloc.exit23.preheader27.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %gv_calloc.exit23.preheader27.i ], [ %indvars.iv.next.i.7, %allocArray.exit.loopexit.unr-lcssa ]
  %.025.i.epil.init = phi ptr [ %i.r, %gv_calloc.exit23.preheader27.i ], [ %i.au, %allocArray.exit.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %gv_calloc.exit23.i.epil

gv_calloc.exit23.i.epil:                          ; preds = %gv_calloc.exit23.i.epil, %gv_calloc.exit23.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %gv_calloc.exit23.i.epil.preheader ], [ %indvars.iv.next.i.epil, %gv_calloc.exit23.i.epil ] ; 2 uses
  %.025.i.epil = phi ptr [ %.025.i.epil.init, %gv_calloc.exit23.i.epil.preheader ], [ %i.aw, %gv_calloc.exit23.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %gv_calloc.exit23.i.epil.preheader ], [ %epil.iter.next, %gv_calloc.exit23.i.epil ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.epil
  store ptr %.025.i.epil, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.025.i.epil, i64 %i.m
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %allocArray.exit, label %gv_calloc.exit23.i.epil, !llvm.loop !27

allocArray.exit:                                  ; preds = %allocArray.exit.loopexit.unr-lcssa, %gv_calloc.exit23.i.epil, %gv_calloc.exit23.preheader.i
  %i.ax = shl nsw i64 %i.m, 3
  %scevgep.i = getelementptr i8, ptr %i.h, i64 %i.ax
  %i.ay = add i32 %i.b, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.ay)
  %i.az = xor i32 %i.b, -1
  %i.ba = add i32 %smax.i, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
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
  %i.fp = shufflevector <2 x double> %i.cr, <2 x double> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.fq = shufflevector <2 x double> %i.cr, <2 x double> %i.ct, <2 x i32> <i32 1, i32 3>
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
  %or.cond20.i.i.i = select i1 %i.gt, i1 %i.gu, i1 false
  %i.gv = fcmp olt double %i.cu, %i.gs
  %i.gw = fcmp olt double %i.gs, %i.cs
  %i.gx = select i1 %i.gv, i1 %i.gw, i1 false
  %i.gy = select i1 %or.cond20.i.i.i, i1 true, i1 %i.gx
  br i1 %i.gy, label %clear.exit.i, label %bb.m

bb.m:                                             ; preds = %inBetween.exit.i.i, %.split.i.i, %.lr.ph.i.i
  %i.gz = fsub <2 x double> %i.fz, %i.fs          ; 2 uses
  %shift16 = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17 = fmul <2 x double> %shift16, %i.ey
  %i.ha = extractelement <2 x double> %foldExtExtBinop17, i64 0
  %i.hb = extractelement <2 x double> %i.gz, i64 0
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.hb, double %i.ha) ; 2 uses
  %i.hd = fcmp ogt double %i.hc, 1.000000e-04
  %i.he = fcmp olt double %i.hc, -1.000000e-04
  %i.hf = sext i1 %i.he to i32
  %i.hg = select i1 %i.hd, i32 1, i32 %i.hf       ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.n, label %intersect.exit.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.fo, label %.split43.i.i, label %inBetween.exit42.i.i

.split43.i.i:                                     ; preds = %bb.n
  %i.hi = fcmp olt double %i.cv, %i.gb
  %i.hj = fcmp olt double %i.gb, %i.ek
  %or.cond.i41.i.i = and i1 %i.hi, %i.hj
  %i.hk = fcmp olt double %i.ek, %i.gb
  %i.hl = fcmp olt double %i.gb, %i.cv
  %i.hm = and i1 %i.hk, %i.hl
  %i.hn = or i1 %or.cond.i41.i.i, %i.hm
  br i1 %i.hn, label %clear.exit.i, label %intersect.exit.i

inBetween.exit42.i.i:                             ; preds = %bb.n
  %i.ho = fcmp olt double %i.cs, %i.ga
  %i.hp = fcmp olt double %i.ga, %i.cu
  %or.cond20.i39.i.i = select i1 %i.ho, i1 %i.hp, i1 false
  %i.hq = fcmp olt double %i.cu, %i.ga
  %i.hr = fcmp olt double %i.ga, %i.cs
  %i.hs = select i1 %i.hq, i1 %i.hr, i1 false
  %i.ht = select i1 %or.cond20.i39.i.i, i1 true, i1 %i.hs
  br i1 %i.ht, label %clear.exit.i, label %intersect.exit.i

intersect.exit.i:                                 ; preds = %inBetween.exit42.i.i, %.split43.i.i, %bb.m
  %i.hu = fsub <2 x double> %i.fy, %i.fz          ; 2 uses
  %i.hv = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fsub <2 x double> %i.fp, %i.hv
  %i.hx = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = fsub <2 x double> %i.fq, %i.hx
  %i.hz = extractelement <2 x double> %i.hu, i64 0
  %i.ia = fneg double %i.hz
  %i.ib = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x double> %i.hy, %i.ic
  %i.ie = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.hw, <2 x double> %i.id) ; 2 uses
  %1 = fcmp ogt <2 x double> %i.if, splat (double 1.000000e-04)
  %i.ig = fcmp olt <2 x double> %i.if, splat (double -1.000000e-04)
  %2 = sext <2 x i1> %i.ig to <2 x i8>
  %3 = select <2 x i1> %1, <2 x i8> splat (i8 1), <2 x i8> %2 ; 2 uses
  %4 = mul nsw i32 %i.hg, %i.gj
  %5 = icmp slt i32 %4, 0
  %6 = extractelement <2 x i8> %3, i64 0
  %7 = extractelement <2 x i8> %3, i64 1
  %narrow = mul nsw i8 %6, %7
  %i.ih = icmp slt i8 %narrow, 0
  %i.ii = select i1 %5, i1 %i.ih, i1 false
  br i1 %i.ii, label %clear.exit.i, label %bb.k

.loopexit.i:                                      ; preds = %bb.k
  %foldExtExtBinop19 = fmul <2 x double> %i.er, %i.er
  %i.ij = extractelement <2 x double> %foldExtExtBinop19, i64 0
  %i.ik = extractelement <2 x double> %i.ex, i64 0 ; 2 uses
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.ik, double %i.ij)
  %sqrt.i62.i = tail call double @llvm.sqrt.f64(double %i.il) ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i4
  store double %sqrt.i62.i, ptr %i.im, align 8, !tbaa !24
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i4
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !31
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv71.i
  store double %sqrt.i62.i, ptr %i.ip, align 8, !tbaa !24
  br label %clear.exit.i

clear.exit.i:                                     ; preds = %intersect.exit.i, %inBetween.exit42.i.i, %.split43.i.i, %inBetween.exit.i.i, %.split.i.i, %.loopexit.i, %bb.j, %bb.i
  %indvars.iv.next.i5 = add nsw i64 %indvars.iv.i4, -1
  %i.iq = icmp sgt i64 %indvars.iv.i4, 0
  br i1 %i.iq, label %bb.i, label %._crit_edge.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %clear.exit.i, %bb.h
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i3, label %compVis.exit, label %bb.h, !llvm.loop !29

compVis.exit:                                     ; preds = %._crit_edge.i, %allocArray.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @ptVis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double %2, double %3) local_unnamed_addr #3 {
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
  %i.bi = load <2 x double>, ptr %i.bh, align 8, !tbaa !24 ; 8 uses
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !24 ; 12 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !22
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !22
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %4 = extractelement <2 x double> %i.bi, i64 0   ; 9 uses
  %i.bs = load <2 x double>, ptr %i.bm, align 8   ; 3 uses
  %i.bt = load double, ptr %i.br, align 8
  %i.bu = load <2 x double>, ptr %i.bq, align 8   ; 2 uses
  %i.bv = insertelement <2 x double> %i.bs, double %.sroa.10.0.copyload, i64 0 ; 3 uses
  %i.bw = fsub <2 x double> %i.av, %i.bv          ; 4 uses
  %5 = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bx = shufflevector <2 x double> %i.bu, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.by = shufflevector <2 x double> %i.bi, <2 x double> %i.bs, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bz = fsub <2 x double> %i.bx, %i.by          ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bu, <2 x double> %i.bv, <2 x i32> <i32 1, i32 2>
  %i.cb = fsub <2 x double> %i.ca, %i.bv          ; 2 uses
  %i.cc = fsub <2 x double> %i.ax, %i.by          ; 2 uses
  %i.cd = fneg <2 x double> %i.cc                 ; 5 uses
  %i.ce = fmul <2 x double> %i.cb, %i.cd
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bz, <2 x double> %i.ce)
  %i.cg = fcmp uge <2 x double> %i.cf, splat (double -1.000000e-04) ; 2 uses
  %i.ch = fsub double %i.bt, %.sroa.10.0.copyload
  %foldExtExtBinop = fsub <2 x double> %i.bs, %i.bi
  %i.ci = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cj = fneg double %i.ci
  %i.ck = extractelement <2 x double> %i.cb, i64 0
  %i.cl = fmul double %i.ck, %i.cj
  %i.cm = extractelement <2 x double> %i.bz, i64 0
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cm, double %i.cl)
  %i.co = fcmp ogt double %i.cn, 1.000000e-04
  %i.cp = extractelement <2 x i1> %i.cg, i64 0    ; 2 uses
  %i.cq = extractelement <2 x i1> %i.cg, i64 1    ; 2 uses
  %i.cr = select i1 %i.cq, i1 %i.cp, i1 false
  %i.cs = select i1 %i.cq, i1 true, i1 %i.cp
  %.0.i = select i1 %i.co, i1 %i.cr, i1 %i.cs
  br i1 %.0.i, label %.lr.ph.preheader.i, label %clear.exit.thread166

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ct = fcmp une double %2, %4                  ; 4 uses
  %i.cu = insertelement <2 x double> %i.bi, double %2, i64 1
  %i.cv = insertelement <2 x double> %i.ay, double %.sroa.10.0.copyload, i64 0
  %i.cw = extractelement <2 x double> %i.bw, i64 0 ; 4 uses
  %i.cx = insertelement <2 x double> %i.bi, double %.sroa.10.0.copyload, i64 1 ; 4 uses
  br label %.lr.ph.i

bb.j:                                             ; preds = %intersect.exit131
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !0

.preheader.i.loopexit:                            ; preds = %bb.j
  br i1 %i.as, label %.lr.ph27.i.preheader, label %clear.exit.thread164

.lr.ph27.i.preheader:                             ; preds = %.preheader.i.loopexit
  %6 = insertelement <2 x double> %5, double %2, i64 0
  %i.cy = insertelement <2 x double> %i.bi, double %3, i64 0
  br label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i100, %bb.j ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i99
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i99
  %i.db = load i32, ptr %i.da, align 4, !tbaa !22
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.dc
  %i.de = load <2 x double>, ptr %i.cz, align 8   ; 4 uses
  %i.df = load <2 x double>, ptr %i.dd, align 8   ; 6 uses
  %i.dg = extractelement <2 x double> %i.df, i64 1 ; 4 uses
  %i.dh = extractelement <2 x double> %i.df, i64 0 ; 4 uses
  %i.di = fsub <2 x double> %i.de, %i.cx          ; 2 uses
  %shift = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop217 = fmul <2 x double> %shift, %i.cd
  %i.dj = extractelement <2 x double> %foldExtExtBinop217, i64 0
  %i.dk = extractelement <2 x double> %i.di, i64 0
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.dk, double %i.dj) ; 2 uses
  %i.dm = fcmp ogt double %i.dl, 1.000000e-04
  %i.dn = fcmp olt double %i.dl, -1.000000e-04
  %i.do = sext i1 %i.dn to i32
  %i.dp = select i1 %i.dm, i32 1, i32 %i.do       ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  br i1 %i.ct, label %.split.i129, label %inBetween.exit.i127

.split.i129:                                      ; preds = %bb.k
  %i.dr = extractelement <2 x double> %i.de, i64 0 ; 4 uses
  %i.ds = fcmp olt double %2, %i.dr
  %i.dt = fcmp olt double %i.dr, %4
  %or.cond.i.i130 = and i1 %i.ds, %i.dt
  %i.du = fcmp olt double %4, %i.dr
  %i.dv = fcmp olt double %i.dr, %2
  %i.dw = and i1 %i.du, %i.dv
  %i.dx = or i1 %or.cond.i.i130, %i.dw
  br i1 %i.dx, label %clear.exit.thread166, label %bb.l

inBetween.exit.i127:                              ; preds = %bb.k
  %i.dy = extractelement <2 x double> %i.de, i64 1 ; 4 uses
  %i.dz = fcmp olt double %3, %i.dy
  %i.ea = fcmp olt double %i.dy, %.sroa.10.0.copyload
  %or.cond20.i.i128 = select i1 %i.dz, i1 %i.ea, i1 false
  %i.eb = fcmp olt double %.sroa.10.0.copyload, %i.dy
  %i.ec = fcmp olt double %i.dy, %3
  %i.ed = select i1 %i.eb, i1 %i.ec, i1 false
  %i.ee = select i1 %or.cond20.i.i128, i1 true, i1 %i.ed
  br i1 %i.ee, label %clear.exit.thread166, label %bb.l

bb.l:                                             ; preds = %inBetween.exit.i127, %.split.i129, %.lr.ph.i
  %i.ef = fsub <2 x double> %i.df, %i.cx          ; 2 uses
  %shift219 = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop220 = fmul <2 x double> %shift219, %i.cd
  %i.eg = extractelement <2 x double> %foldExtExtBinop220, i64 0
  %i.eh = extractelement <2 x double> %i.ef, i64 0
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.eh, double %i.eg) ; 2 uses
  %i.ej = fcmp ogt double %i.ei, 1.000000e-04
  %i.ek = fcmp olt double %i.ei, -1.000000e-04
  %i.el = sext i1 %i.ek to i32
  %i.em = select i1 %i.ej, i32 1, i32 %i.el       ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.m, label %intersect.exit131

bb.m:                                             ; preds = %bb.l
  br i1 %i.ct, label %.split43.i125, label %inBetween.exit42.i123

.split43.i125:                                    ; preds = %bb.m
  %i.eo = fcmp olt double %2, %i.dh
  %i.ep = fcmp olt double %i.dh, %4
  %or.cond.i41.i126 = and i1 %i.eo, %i.ep
  %i.eq = fcmp olt double %4, %i.dh
  %i.er = fcmp olt double %i.dh, %2
  %i.es = and i1 %i.eq, %i.er
  %i.et = or i1 %or.cond.i41.i126, %i.es
  br i1 %i.et, label %clear.exit.thread166, label %intersect.exit131

inBetween.exit42.i123:                            ; preds = %bb.m
  %i.eu = fcmp olt double %3, %i.dg
  %i.ev = fcmp olt double %i.dg, %.sroa.10.0.copyload
  %or.cond20.i39.i124 = select i1 %i.eu, i1 %i.ev, i1 false
  %i.ew = fcmp olt double %.sroa.10.0.copyload, %i.dg
  %i.ex = fcmp olt double %i.dg, %3
  %i.ey = select i1 %i.ew, i1 %i.ex, i1 false
  %i.ez = select i1 %or.cond20.i39.i124, i1 true, i1 %i.ey
  br i1 %i.ez, label %clear.exit.thread166, label %intersect.exit131

intersect.exit131:                                ; preds = %bb.l, %.split43.i125, %inBetween.exit42.i123
  %i.fa = fsub <2 x double> %i.de, %i.df          ; 2 uses
  %7 = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = fsub <2 x double> %i.cv, %7
  %8 = extractelement <2 x double> %i.fa, i64 0
  %9 = fneg double %8
  %10 = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fsub <2 x double> %i.cu, %10
  %i.fc = insertelement <2 x double> poison, double %9, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fmul <2 x double> %i.fb, %i.fd
  %i.ff = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %11, <2 x double> %i.fe) ; 3 uses
  %i.fh = extractelement <2 x double> %i.fg, i64 1
  %i.fi = fcmp ogt double %i.fh, 1.000000e-04
  %i.fj = fcmp olt <2 x double> %i.fg, splat (double -1.000000e-04) ; 2 uses
  %i.fk = extractelement <2 x i1> %i.fj, i64 1
  %i.fl = sext i1 %i.fk to i32
  %i.fm = select i1 %i.fi, i32 1, i32 %i.fl
  %i.fn = extractelement <2 x double> %i.fg, i64 0
  %i.fo = fcmp ogt double %i.fn, 1.000000e-04
  %i.fp = extractelement <2 x i1> %i.fj, i64 0
  %i.fq = sext i1 %i.fp to i32
  %i.fr = select i1 %i.fo, i32 1, i32 %i.fq
  %i.fs = mul nsw i32 %i.em, %i.dp
  %i.ft = icmp slt i32 %i.fs, 0
  %i.fu = mul nsw i32 %i.fm, %i.fr
  %i.fv = icmp slt i32 %i.fu, 0
  %i.fw = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %i.fw, label %clear.exit.thread166, label %bb.j

.lr.ph27.i:                                       ; preds = %.lr.ph27.i.preheader, %intersect.exit
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %intersect.exit ], [ %i.at, %.lr.ph27.i.preheader ] ; 3 uses
  %i.fx = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv32.i
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv32.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !22
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.ga
  %i.gc = load <2 x double>, ptr %i.fx, align 8   ; 4 uses
  %i.gd = load <2 x double>, ptr %i.gb, align 8   ; 6 uses
  %i.ge = extractelement <2 x double> %i.gd, i64 1 ; 4 uses
  %i.gf = extractelement <2 x double> %i.gd, i64 0 ; 4 uses
  %i.gg = fsub <2 x double> %i.gc, %i.cx          ; 2 uses
  %shift222 = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop223 = fmul <2 x double> %shift222, %i.cd
  %i.gh = extractelement <2 x double> %foldExtExtBinop223, i64 0
  %i.gi = extractelement <2 x double> %i.gg, i64 0
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.gi, double %i.gh) ; 2 uses
  %i.gk = fcmp ogt double %i.gj, 1.000000e-04
  %i.gl = fcmp olt double %i.gj, -1.000000e-04
  %i.gm = sext i1 %i.gl to i32
  %i.gn = select i1 %i.gk, i32 1, i32 %i.gm       ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph27.i
  br i1 %i.ct, label %.split.i, label %inBetween.exit.i

.split.i:                                         ; preds = %bb.n
  %i.gp = extractelement <2 x double> %i.gc, i64 0 ; 4 uses
  %i.gq = fcmp olt double %2, %i.gp
  %i.gr = fcmp olt double %i.gp, %4
  %or.cond.i.i = and i1 %i.gq, %i.gr
  %i.gs = fcmp olt double %4, %i.gp
  %i.gt = fcmp olt double %i.gp, %2
  %i.gu = and i1 %i.gs, %i.gt
  %i.gv = or i1 %or.cond.i.i, %i.gu
  br i1 %i.gv, label %clear.exit.thread166, label %bb.o

inBetween.exit.i:                                 ; preds = %bb.n
  %i.gw = extractelement <2 x double> %i.gc, i64 1 ; 4 uses
  %i.gx = fcmp olt double %3, %i.gw
  %i.gy = fcmp olt double %i.gw, %.sroa.10.0.copyload
  %or.cond20.i.i = select i1 %i.gx, i1 %i.gy, i1 false
  %i.gz = fcmp olt double %.sroa.10.0.copyload, %i.gw
  %i.ha = fcmp olt double %i.gw, %3
  %i.hb = select i1 %i.gz, i1 %i.ha, i1 false
  %i.hc = select i1 %or.cond20.i.i, i1 true, i1 %i.hb
  br i1 %i.hc, label %clear.exit.thread166, label %bb.o

bb.o:                                             ; preds = %inBetween.exit.i, %.split.i, %.lr.ph27.i
  %i.hd = fsub <2 x double> %i.gd, %i.cx          ; 2 uses
  %shift225 = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop226 = fmul <2 x double> %shift225, %i.cd
  %i.he = extractelement <2 x double> %foldExtExtBinop226, i64 0
  %i.hf = extractelement <2 x double> %i.hd, i64 0
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.hf, double %i.he) ; 2 uses
  %i.hh = fcmp ogt double %i.hg, 1.000000e-04
  %i.hi = fcmp olt double %i.hg, -1.000000e-04
  %i.hj = sext i1 %i.hi to i32
  %i.hk = select i1 %i.hh, i32 1, i32 %i.hj       ; 2 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.p, label %intersect.exit

bb.p:                                             ; preds = %bb.o
  br i1 %i.ct, label %.split43.i, label %inBetween.exit42.i

.split43.i:                                       ; preds = %bb.p
  %i.hm = fcmp olt double %2, %i.gf
  %i.hn = fcmp olt double %i.gf, %4
  %or.cond.i41.i = and i1 %i.hm, %i.hn
  %i.ho = fcmp olt double %4, %i.gf
  %i.hp = fcmp olt double %i.gf, %2
  %i.hq = and i1 %i.ho, %i.hp
  %i.hr = or i1 %or.cond.i41.i, %i.hq
  br i1 %i.hr, label %clear.exit.thread166, label %intersect.exit

inBetween.exit42.i:                               ; preds = %bb.p
  %i.hs = fcmp olt double %3, %i.ge
  %i.ht = fcmp olt double %i.ge, %.sroa.10.0.copyload
  %or.cond20.i39.i = select i1 %i.hs, i1 %i.ht, i1 false
  %i.hu = fcmp olt double %.sroa.10.0.copyload, %i.ge
  %i.hv = fcmp olt double %i.ge, %3
  %i.hw = select i1 %i.hu, i1 %i.hv, i1 false
  %i.hx = select i1 %or.cond20.i39.i, i1 true, i1 %i.hw
  br i1 %i.hx, label %clear.exit.thread166, label %intersect.exit

intersect.exit:                                   ; preds = %bb.o, %.split43.i, %inBetween.exit42.i
  %i.hy = fsub <2 x double> %i.gc, %i.gd          ; 2 uses
  %i.hz = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = fsub <2 x double> %6, %i.hz
  %i.ib = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ic = fsub <2 x double> %i.cy, %i.ib
  %i.id = extractelement <2 x double> %i.hy, i64 0
  %i.ie = fneg double %i.id
  %i.if = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x double> %i.ic, %i.ig
  %i.ii = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ij = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.ia, <2 x double> %i.ih) ; 2 uses
  %12 = fcmp ogt <2 x double> %i.ij, splat (double 1.000000e-04)
  %i.ik = fcmp olt <2 x double> %i.ij, splat (double -1.000000e-04)
  %13 = sext <2 x i1> %i.ik to <2 x i8>
  %14 = select <2 x i1> %12, <2 x i8> splat (i8 1), <2 x i8> %13 ; 2 uses
  %15 = mul nsw i32 %i.hk, %i.gn
  %16 = icmp slt i32 %15, 0
  %17 = extractelement <2 x i8> %14, i64 0
  %18 = extractelement <2 x i8> %14, i64 1
  %narrow = mul nsw i8 %17, %18
  %i.il = icmp slt i8 %narrow, 0
  %i.im = select i1 %16, i1 %i.il, i1 false       ; 2 uses
  %indvars.iv.next33.i = add nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next33.i to i32
  %exitcond35.not.i = icmp eq i32 %i.b, %lftr.wideiv.i
  %or.cond.i = select i1 %i.im, i1 true, i1 %exitcond35.not.i
  br i1 %or.cond.i, label %clear.exit, label %.lr.ph27.i, !llvm.loop !35

clear.exit:                                       ; preds = %intersect.exit
  br i1 %i.im, label %clear.exit.thread166, label %clear.exit.thread164

clear.exit.thread164:                             ; preds = %.preheader.i.loopexit, %clear.exit
  %foldExtExtBinop228 = fmul <2 x double> %i.bw, %i.bw
  %i.in = extractelement <2 x double> %foldExtExtBinop228, i64 0
  %i.io = extractelement <2 x double> %i.cc, i64 0 ; 2 uses
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double %i.io, double %i.in)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ip)
  br label %clear.exit.thread166

clear.exit.thread166:                             ; preds = %intersect.exit131, %inBetween.exit.i127, %inBetween.exit42.i123, %.split.i129, %.split43.i125, %.split43.i, %.split.i, %inBetween.exit42.i, %inBetween.exit.i, %bb.i, %clear.exit, %clear.exit.thread164
  %sqrt.i.sink = phi double [ %sqrt.i, %clear.exit.thread164 ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %.split43.i ], [ 0.000000e+00, %clear.exit ], [ 0.000000e+00, %inBetween.exit.i ], [ 0.000000e+00, %inBetween.exit42.i ], [ 0.000000e+00, %.split.i ], [ 0.000000e+00, %.split43.i125 ], [ 0.000000e+00, %.split.i129 ], [ 0.000000e+00, %inBetween.exit42.i123 ], [ 0.000000e+00, %inBetween.exit.i127 ], [ 0.000000e+00, %intersect.exit131 ]
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double %sqrt.i.sink, ptr %i.iq, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.preheader183, label %bb.i, !llvm.loop !36

.preheader:                                       ; preds = %.lr.ph189.preheader, %.preheader183
  %i.ir = icmp slt i32 %.0, %i.b
  br i1 %i.ir, label %.lr.ph191, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.b to i64
  br label %._crit_edge

.lr.ph191:                                        ; preds = %.preheader
  %wide.trip.count.i114 = zext nneg i32 %.093 to i64
  %i.is = sext i32 %.0 to i64                     ; 2 uses
  %wide.trip.count203 = sext i32 %i.b to i64      ; 2 uses
  %i.it = insertelement <2 x double> poison, double %3, i64 0
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iv = insertelement <2 x double> poison, double %2, i64 0
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ix = insertelement <2 x double> poison, double %3, i64 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph191, %clear.exit119.thread179
  %indvars.iv200 = phi i64 [ %i.is, %.lr.ph191 ], [ %indvars.iv.next201, %clear.exit119.thread179 ] ; 5 uses
  %i.iy = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv200 ; 2 uses
  %.sroa.10.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.iz = load <2 x double>, ptr %i.iy, align 8, !tbaa !24 ; 9 uses
  %.sroa.10.0.copyload17 = load double, ptr %.sroa.10.0..sroa_idx16, align 8, !tbaa !24 ; 13 uses
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv200
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !22
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv200
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !22
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %19 = extractelement <2 x double> %i.iz, i64 0  ; 10 uses
  %i.jj = load <2 x double>, ptr %i.jd, align 8   ; 3 uses
  %i.jk = load double, ptr %i.ji, align 8
  %i.jl = load <2 x double>, ptr %i.jh, align 8   ; 2 uses
  %i.jm = insertelement <2 x double> %i.jj, double %.sroa.10.0.copyload17, i64 0 ; 3 uses
  %i.jn = fsub <2 x double> %i.iu, %i.jm          ; 5 uses
  %20 = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.jo = shufflevector <2 x double> %i.jl, <2 x double> %i.iz, <2 x i32> <i32 0, i32 2>
  %i.jp = shufflevector <2 x double> %i.iz, <2 x double> %i.jj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.jq = fsub <2 x double> %i.jo, %i.jp          ; 2 uses
  %i.jr = shufflevector <2 x double> %i.jl, <2 x double> %i.jm, <2 x i32> <i32 1, i32 2>
  %i.js = fsub <2 x double> %i.jr, %i.jm          ; 2 uses
  %i.jt = fsub <2 x double> %i.iw, %i.jp          ; 2 uses
  %i.ju = fneg <2 x double> %i.jt                 ; 5 uses
  %i.jv = fmul <2 x double> %i.js, %i.ju
  %i.jw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jq, <2 x double> %i.jv)
  %i.jx = fcmp uge <2 x double> %i.jw, splat (double -1.000000e-04) ; 2 uses
  %i.jy = fsub double %i.jk, %.sroa.10.0.copyload17
  %foldExtExtBinop230 = fsub <2 x double> %i.jj, %i.iz
  %i.jz = extractelement <2 x double> %foldExtExtBinop230, i64 0
  %i.ka = fneg double %i.jz
  %i.kb = extractelement <2 x double> %i.js, i64 0
  %i.kc = fmul double %i.kb, %i.ka
  %i.kd = extractelement <2 x double> %i.jq, i64 0
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.jy, double %i.kd, double %i.kc)
  %i.kf = fcmp ogt double %i.ke, 1.000000e-04
  %i.kg = extractelement <2 x i1> %i.jx, i64 0    ; 2 uses
  %i.kh = extractelement <2 x i1> %i.jx, i64 1    ; 2 uses
  %i.ki = select i1 %i.kh, i1 %i.kg, i1 false
  %i.kj = select i1 %i.kh, i1 true, i1 %i.kg
  %.0.i101 = select i1 %i.kf, i1 %i.ki, i1 %i.kj
  br i1 %.0.i101, label %bb.r, label %clear.exit119.thread179

bb.r:                                             ; preds = %bb.q
  br i1 %i.ar, label %.lr.ph.preheader.i113, label %.preheader.i102

.lr.ph.preheader.i113:                            ; preds = %bb.r
  %i.kk = fcmp une double %2, %19                 ; 2 uses
  %i.kl = insertelement <2 x double> %i.iz, double %2, i64 1
  %i.km = insertelement <2 x double> %i.ix, double %.sroa.10.0.copyload17, i64 0
  %i.kn = extractelement <2 x double> %i.jn, i64 0 ; 2 uses
  %i.ko = insertelement <2 x double> %i.iz, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph.i115

bb.s:                                             ; preds = %intersect.exit151
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i116, 1 ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i114
  br i1 %exitcond.not.i118, label %.preheader.i102, label %.lr.ph.i115, !llvm.loop !0

.preheader.i102:                                  ; preds = %bb.s, %bb.r
  %i.kp = fcmp une double %2, %19                 ; 2 uses
  %i.kq = insertelement <2 x double> %20, double %2, i64 0
  %i.kr = insertelement <2 x double> %i.iz, double %3, i64 0
  %i.ks = extractelement <2 x double> %i.jn, i64 0 ; 2 uses
  %i.kt = insertelement <2 x double> %i.iz, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph27.i105

.lr.ph.i115:                                      ; preds = %bb.s, %.lr.ph.preheader.i113
  %indvars.iv.i116 = phi i64 [ 0, %.lr.ph.preheader.i113 ], [ %indvars.iv.next.i117, %bb.s ] ; 3 uses
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i116
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i116
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !22
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.kx
  %i.kz = load <2 x double>, ptr %i.ku, align 8   ; 4 uses
  %i.la = load <2 x double>, ptr %i.ky, align 8   ; 6 uses
  %i.lb = extractelement <2 x double> %i.la, i64 1 ; 4 uses
  %i.lc = extractelement <2 x double> %i.la, i64 0 ; 4 uses
  %i.ld = fsub <2 x double> %i.kz, %i.ko          ; 2 uses
  %shift232 = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop233 = fmul <2 x double> %shift232, %i.ju
  %i.le = extractelement <2 x double> %foldExtExtBinop233, i64 0
  %i.lf = extractelement <2 x double> %i.ld, i64 0
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.kn, double %i.lf, double %i.le) ; 2 uses
  %i.lh = fcmp ogt double %i.lg, 1.000000e-04
  %i.li = fcmp olt double %i.lg, -1.000000e-04
  %i.lj = sext i1 %i.li to i32
  %i.lk = select i1 %i.lh, i32 1, i32 %i.lj       ; 2 uses
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i115
  br i1 %i.kk, label %.split.i149, label %inBetween.exit.i147

.split.i149:                                      ; preds = %bb.t
  %i.lm = extractelement <2 x double> %i.kz, i64 0 ; 4 uses
  %i.ln = fcmp olt double %2, %i.lm
  %i.lo = fcmp olt double %i.lm, %19
  %or.cond.i.i150 = and i1 %i.ln, %i.lo
  %i.lp = fcmp olt double %19, %i.lm
  %i.lq = fcmp olt double %i.lm, %2
  %i.lr = and i1 %i.lp, %i.lq
  %i.ls = or i1 %or.cond.i.i150, %i.lr
  br i1 %i.ls, label %clear.exit119.thread179, label %bb.u

inBetween.exit.i147:                              ; preds = %bb.t
  %i.lt = extractelement <2 x double> %i.kz, i64 1 ; 4 uses
  %i.lu = fcmp olt double %3, %i.lt
  %i.lv = fcmp olt double %i.lt, %.sroa.10.0.copyload17
  %or.cond20.i.i148 = select i1 %i.lu, i1 %i.lv, i1 false
  %i.lw = fcmp olt double %.sroa.10.0.copyload17, %i.lt
  %i.lx = fcmp olt double %i.lt, %3
  %i.ly = select i1 %i.lw, i1 %i.lx, i1 false
  %i.lz = select i1 %or.cond20.i.i148, i1 true, i1 %i.ly
  br i1 %i.lz, label %clear.exit119.thread179, label %bb.u

bb.u:                                             ; preds = %inBetween.exit.i147, %.split.i149, %.lr.ph.i115
  %i.ma = fsub <2 x double> %i.la, %i.ko          ; 2 uses
  %shift235 = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop236 = fmul <2 x double> %shift235, %i.ju
  %i.mb = extractelement <2 x double> %foldExtExtBinop236, i64 0
  %i.mc = extractelement <2 x double> %i.ma, i64 0
  %i.md = tail call double @llvm.fmuladd.f64(double %i.kn, double %i.mc, double %i.mb) ; 2 uses
  %i.me = fcmp ogt double %i.md, 1.000000e-04
  %i.mf = fcmp olt double %i.md, -1.000000e-04
  %i.mg = sext i1 %i.mf to i32
  %i.mh = select i1 %i.me, i32 1, i32 %i.mg       ; 2 uses
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.v, label %intersect.exit151

bb.v:                                             ; preds = %bb.u
  br i1 %i.kk, label %.split43.i145, label %inBetween.exit42.i143

.split43.i145:                                    ; preds = %bb.v
  %i.mj = fcmp olt double %2, %i.lc
  %i.mk = fcmp olt double %i.lc, %19
  %or.cond.i41.i146 = and i1 %i.mj, %i.mk
  %i.ml = fcmp olt double %19, %i.lc
  %i.mm = fcmp olt double %i.lc, %2
  %i.mn = and i1 %i.ml, %i.mm
  %i.mo = or i1 %or.cond.i41.i146, %i.mn
  br i1 %i.mo, label %clear.exit119.thread179, label %intersect.exit151

inBetween.exit42.i143:                            ; preds = %bb.v
  %i.mp = fcmp olt double %3, %i.lb
  %i.mq = fcmp olt double %i.lb, %.sroa.10.0.copyload17
  %or.cond20.i39.i144 = select i1 %i.mp, i1 %i.mq, i1 false
  %i.mr = fcmp olt double %.sroa.10.0.copyload17, %i.lb
  %i.ms = fcmp olt double %i.lb, %3
  %i.mt = select i1 %i.mr, i1 %i.ms, i1 false
  %i.mu = select i1 %or.cond20.i39.i144, i1 true, i1 %i.mt
  br i1 %i.mu, label %clear.exit119.thread179, label %intersect.exit151

intersect.exit151:                                ; preds = %bb.u, %.split43.i145, %inBetween.exit42.i143
  %i.mv = fsub <2 x double> %i.kz, %i.la          ; 2 uses
  %21 = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mw = fsub <2 x double> %i.km, %21
  %22 = extractelement <2 x double> %i.mv, i64 0
  %23 = fneg double %22
  %24 = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = fsub <2 x double> %i.kl, %24
  %i.mx = insertelement <2 x double> poison, double %23, i64 0
  %i.my = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mz = fmul <2 x double> %i.mw, %i.my
  %i.na = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> %25, <2 x double> %i.mz) ; 3 uses
  %i.nc = extractelement <2 x double> %i.nb, i64 1
  %i.nd = fcmp ogt double %i.nc, 1.000000e-04
  %i.ne = fcmp olt <2 x double> %i.nb, splat (double -1.000000e-04) ; 2 uses
  %i.nf = extractelement <2 x i1> %i.ne, i64 1
  %i.ng = sext i1 %i.nf to i32
  %i.nh = select i1 %i.nd, i32 1, i32 %i.ng
  %i.ni = extractelement <2 x double> %i.nb, i64 0
  %i.nj = fcmp ogt double %i.ni, 1.000000e-04
  %i.nk = extractelement <2 x i1> %i.ne, i64 0
  %i.nl = sext i1 %i.nk to i32
  %i.nm = select i1 %i.nj, i32 1, i32 %i.nl
  %i.nn = mul nsw i32 %i.mh, %i.lk
  %i.no = icmp slt i32 %i.nn, 0
  %i.np = mul nsw i32 %i.nh, %i.nm
  %i.nq = icmp slt i32 %i.np, 0
  %i.nr = select i1 %i.no, i1 %i.nq, i1 false
  br i1 %i.nr, label %clear.exit119.thread179, label %bb.s

.lr.ph27.i105:                                    ; preds = %intersect.exit141, %.preheader.i102
  %indvars.iv32.i106 = phi i64 [ %i.is, %.preheader.i102 ], [ %indvars.iv.next33.i107, %intersect.exit141 ] ; 3 uses
  %i.ns = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv32.i106
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv32.i106
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !22
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.nv
  %i.nx = load <2 x double>, ptr %i.ns, align 8   ; 4 uses
  %i.ny = load <2 x double>, ptr %i.nw, align 8   ; 6 uses
  %i.nz = extractelement <2 x double> %i.ny, i64 1 ; 4 uses
  %i.oa = extractelement <2 x double> %i.ny, i64 0 ; 4 uses
  %i.ob = fsub <2 x double> %i.nx, %i.kt          ; 2 uses
  %shift238 = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop239 = fmul <2 x double> %shift238, %i.ju
  %i.oc = extractelement <2 x double> %foldExtExtBinop239, i64 0
  %i.od = extractelement <2 x double> %i.ob, i64 0
  %i.oe = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.od, double %i.oc) ; 2 uses
  %i.of = fcmp ogt double %i.oe, 1.000000e-04
  %i.og = fcmp olt double %i.oe, -1.000000e-04
  %i.oh = sext i1 %i.og to i32
  %i.oi = select i1 %i.of, i32 1, i32 %i.oh       ; 2 uses
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph27.i105
  br i1 %i.kp, label %.split.i139, label %inBetween.exit.i137

.split.i139:                                      ; preds = %bb.w
  %i.ok = extractelement <2 x double> %i.nx, i64 0 ; 4 uses
  %i.ol = fcmp olt double %2, %i.ok
  %i.om = fcmp olt double %i.ok, %19
  %or.cond.i.i140 = and i1 %i.ol, %i.om
  %i.on = fcmp olt double %19, %i.ok
  %i.oo = fcmp olt double %i.ok, %2
  %i.op = and i1 %i.on, %i.oo
  %i.oq = or i1 %or.cond.i.i140, %i.op
  br i1 %i.oq, label %clear.exit119.thread179, label %bb.x

inBetween.exit.i137:                              ; preds = %bb.w
  %i.or = extractelement <2 x double> %i.nx, i64 1 ; 4 uses
  %i.os = fcmp olt double %3, %i.or
  %i.ot = fcmp olt double %i.or, %.sroa.10.0.copyload17
  %or.cond20.i.i138 = select i1 %i.os, i1 %i.ot, i1 false
  %i.ou = fcmp olt double %.sroa.10.0.copyload17, %i.or
  %i.ov = fcmp olt double %i.or, %3
  %i.ow = select i1 %i.ou, i1 %i.ov, i1 false
  %i.ox = select i1 %or.cond20.i.i138, i1 true, i1 %i.ow
  br i1 %i.ox, label %clear.exit119.thread179, label %bb.x

bb.x:                                             ; preds = %inBetween.exit.i137, %.split.i139, %.lr.ph27.i105
  %i.oy = fsub <2 x double> %i.ny, %i.kt          ; 2 uses
  %shift241 = shufflevector <2 x double> %i.oy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop242 = fmul <2 x double> %shift241, %i.ju
  %i.oz = extractelement <2 x double> %foldExtExtBinop242, i64 0
  %i.pa = extractelement <2 x double> %i.oy, i64 0
  %i.pb = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.pa, double %i.oz) ; 2 uses
  %i.pc = fcmp ogt double %i.pb, 1.000000e-04
  %i.pd = fcmp olt double %i.pb, -1.000000e-04
  %i.pe = sext i1 %i.pd to i32
  %i.pf = select i1 %i.pc, i32 1, i32 %i.pe       ; 2 uses
  %i.pg = icmp eq i32 %i.pf, 0
  br i1 %i.pg, label %bb.y, label %intersect.exit141

bb.y:                                             ; preds = %bb.x
  br i1 %i.kp, label %.split43.i135, label %inBetween.exit42.i133

.split43.i135:                                    ; preds = %bb.y
  %i.ph = fcmp olt double %2, %i.oa
  %i.pi = fcmp olt double %i.oa, %19
  %or.cond.i41.i136 = and i1 %i.ph, %i.pi
  %i.pj = fcmp olt double %19, %i.oa
  %i.pk = fcmp olt double %i.oa, %2
  %i.pl = and i1 %i.pj, %i.pk
  %i.pm = or i1 %or.cond.i41.i136, %i.pl
  br i1 %i.pm, label %clear.exit119.thread179, label %intersect.exit141

inBetween.exit42.i133:                            ; preds = %bb.y
  %i.pn = fcmp olt double %3, %i.nz
  %i.po = fcmp olt double %i.nz, %.sroa.10.0.copyload17
  %or.cond20.i39.i134 = select i1 %i.pn, i1 %i.po, i1 false
  %i.pp = fcmp olt double %.sroa.10.0.copyload17, %i.nz
  %i.pq = fcmp olt double %i.nz, %3
  %i.pr = select i1 %i.pp, i1 %i.pq, i1 false
  %i.ps = select i1 %or.cond20.i39.i134, i1 true, i1 %i.pr
  br i1 %i.ps, label %clear.exit119.thread179, label %intersect.exit141

intersect.exit141:                                ; preds = %bb.x, %.split43.i135, %inBetween.exit42.i133
  %i.pt = fsub <2 x double> %i.nx, %i.ny          ; 2 uses
  %i.pu = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pv = fsub <2 x double> %i.kq, %i.pu
  %i.pw = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.px = fsub <2 x double> %i.kr, %i.pw
  %i.py = extractelement <2 x double> %i.pt, i64 0
  %i.pz = fneg double %i.py
  %i.qa = insertelement <2 x double> poison, double %i.pz, i64 0
  %i.qb = shufflevector <2 x double> %i.qa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qc = fmul <2 x double> %i.px, %i.qb
  %i.qd = shufflevector <2 x double> %i.pt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qd, <2 x double> %i.pv, <2 x double> %i.qc) ; 2 uses
  %26 = fcmp ogt <2 x double> %i.qe, splat (double 1.000000e-04)
  %i.qf = fcmp olt <2 x double> %i.qe, splat (double -1.000000e-04)
  %27 = sext <2 x i1> %i.qf to <2 x i8>
  %28 = select <2 x i1> %26, <2 x i8> splat (i8 1), <2 x i8> %27 ; 2 uses
  %29 = mul nsw i32 %i.pf, %i.oi
  %30 = icmp slt i32 %29, 0
  %31 = extractelement <2 x i8> %28, i64 0
  %32 = extractelement <2 x i8> %28, i64 1
  %narrow246 = mul nsw i8 %31, %32
  %i.qg = icmp slt i8 %narrow246, 0
  %i.qh = select i1 %30, i1 %i.qg, i1 false       ; 2 uses
  %indvars.iv.next33.i107 = add nsw i64 %indvars.iv32.i106, 1 ; 2 uses
  %lftr.wideiv.i108 = trunc i64 %indvars.iv.next33.i107 to i32
  %exitcond35.not.i109 = icmp eq i32 %i.b, %lftr.wideiv.i108
  %or.cond.i110 = select i1 %i.qh, i1 true, i1 %exitcond35.not.i109
  br i1 %or.cond.i110, label %clear.exit119, label %.lr.ph27.i105, !llvm.loop !35

clear.exit119:                                    ; preds = %intersect.exit141
  br i1 %i.qh, label %clear.exit119.thread179, label %clear.exit119.thread177

clear.exit119.thread177:                          ; preds = %clear.exit119
  %foldExtExtBinop244 = fmul <2 x double> %i.jn, %i.jn
  %i.qi = extractelement <2 x double> %foldExtExtBinop244, i64 0
  %i.qj = extractelement <2 x double> %i.jt, i64 0 ; 2 uses
  %i.qk = tail call double @llvm.fmuladd.f64(double %i.qj, double %i.qj, double %i.qi)
  %sqrt.i120 = tail call double @llvm.sqrt.f64(double %i.qk)
  br label %clear.exit119.thread179

clear.exit119.thread179:                          ; preds = %intersect.exit151, %inBetween.exit.i147, %inBetween.exit42.i143, %.split.i149, %.split43.i145, %.split43.i135, %.split.i139, %inBetween.exit42.i133, %inBetween.exit.i137, %bb.q, %clear.exit119, %clear.exit119.thread177
  %sqrt.i120.sink = phi double [ %sqrt.i120, %clear.exit119.thread177 ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %.split43.i135 ], [ 0.000000e+00, %clear.exit119 ], [ 0.000000e+00, %inBetween.exit.i137 ], [ 0.000000e+00, %inBetween.exit42.i133 ], [ 0.000000e+00, %.split.i139 ], [ 0.000000e+00, %.split43.i145 ], [ 0.000000e+00, %.split.i149 ], [ 0.000000e+00, %inBetween.exit42.i143 ], [ 0.000000e+00, %inBetween.exit.i147 ], [ 0.000000e+00, %intersect.exit151 ]
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv200
  store double %sqrt.i120.sink, ptr %i.ql, align 8, !tbaa !24
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge, label %bb.q, !llvm.loop !37

._crit_edge:                                      ; preds = %clear.exit119.thread179, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %wide.trip.count203, %clear.exit119.thread179 ]
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qm, i8 0, i64 16, i1 false)
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
end_hunk_0
