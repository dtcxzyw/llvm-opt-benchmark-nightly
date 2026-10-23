Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsptrf?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dsptrf_:bb.a
.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0508652 = phi double [ %.1509.3, %.lr.ph ], [ %.0508652.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0516651 = phi i32 [ %i.dc, %.lr.ph ], [ %.0516651.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bm = sext i32 %.0516651 to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !32 ; 4 uses
  %i.bp = call double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ogt double %i.bp, %.0508652
  %i.br = fcmp oge double %i.bo, 0.000000e+00
  %i.bs = fneg double %i.bo
  %i.bt = select i1 %i.br, double %i.bo, double %i.bs
  %.1509 = select i1 %i.bq, double %i.bt, double %.0508652 ; 2 uses
  %i.bu = trunc i64 %indvars.iv to i32
  %i.bv = add nsw i32 %.0516651, %i.bu            ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !32 ; 4 uses
  %i.bz = call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ogt double %i.bz, %.1509
  %i.cb = fcmp oge double %i.by, 0.000000e+00
  %i.cc = fneg double %i.by
  %i.cd = select i1 %i.cb, double %i.by, double %i.cc
  %.1509.1 = select i1 %i.ca, double %i.cd, double %.1509 ; 2 uses
  %i.ce = trunc i64 %indvars.iv to i32
  %i.cf = add i32 %i.ce, 1
  %i.cg = add nsw i32 %i.bv, %i.cf                ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !32 ; 4 uses
  %i.ck = call double @llvm.fabs.f64(double %i.cj)
  %i.cl = fcmp ogt double %i.ck, %.1509.1
  %i.cm = fcmp oge double %i.cj, 0.000000e+00
  %i.cn = fneg double %i.cj
  %i.co = select i1 %i.cm, double %i.cj, double %i.cn
  %.1509.2 = select i1 %i.cl, double %i.co, double %.1509.1 ; 2 uses
  %i.cp = trunc i64 %indvars.iv to i32
  %i.cq = add i32 %i.cp, 2
  %i.cr = add nsw i32 %i.cg, %i.cq                ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !32 ; 5 uses
  %i.cv = call double @llvm.fabs.f64(double %i.cu)
  %i.cw = fcmp ogt double %i.cv, %.1509.2
  %i.cx = fcmp oge double %i.cu, 0.000000e+00
  %i.cy = fneg double %i.cu
  %i.cz = select i1 %i.cx, double %i.cu, double %i.cy
  %.1509.3 = select i1 %i.cw, double %i.cz, double %.1509.2 ; 2 uses
  %i.da = trunc i64 %indvars.iv to i32
  %i.db = add i32 %i.da, 3
  %i.dc = add nsw i32 %i.cr, %i.db
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.ay, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa866 = phi double [ %.lcssa866.unr, %.lr.ph.prol.loopexit ], [ %i.cu, %.lr.ph ]
  %.1509.lcssa = phi double [ %.1509.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1509.3, %.lr.ph ]
  store double %.lcssa866, ptr %i.b, align 8, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.0508.lcssa = phi double [ %.1509.lcssa, %._crit_edge ], [ 0.000000e+00, %bb.l ] ; 3 uses
  %i.dd = add nsw i32 %.1541, -1                  ; 3 uses
  %i.de = mul nsw i32 %i.dd, %.1541
  %i.df = sdiv i32 %i.de, 2                       ; 3 uses
  %i.dg = add nsw i32 %i.df, 1                    ; 2 uses
  %i.dh = icmp sgt i32 %.1541, 1
  br i1 %i.dh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !30
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.di
  %i.dk = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dj, ptr noundef nonnull @c__1) #4
  %i.dl = add i32 %i.dk, %i.df
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !32 ; 3 uses
  %i.dp = fcmp oge double %i.do, 0.000000e+00
  %i.dq = fneg double %i.do
  %i.dr = select i1 %i.dp, double %i.do, double %i.dq ; 2 uses
  %i.ds = fcmp oge double %.0508.lcssa, %i.dr
  %i.dt = select i1 %i.ds, double %.0508.lcssa, double %i.dr
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2510 = phi double [ %i.dt, %bb.n ], [ %.0508.lcssa, %bb.m ] ; 2 uses
  %i.du = fdiv double %.0514, %.2510
  %i.dv = fmul double %i.aq, %i.du
  %i.dw = fcmp ult double %i.y, %i.dv
  br i1 %i.dw, label %bb.p, label %.thread584

bb.p:                                             ; preds = %bb.o
  %i.dx = add i32 %i.df, %.1541                   ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dy ; 3 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !32 ; 2 uses
  store double %i.ea, ptr %i.b, align 8, !tbaa !32
  %i.eb = call double @llvm.fabs.f64(double %i.ea)
  %i.ec = fmul double %.2510, f0x3FE47E0F66AFED07
  %i.ed = fcmp ult double %i.eb, %i.ec
  %cond.fr = freeze i1 %i.ed                      ; 4 uses
  %.565 = select i1 %cond.fr, i32 -2, i32 -1
  %i.ee = add nsw i32 %.565, %.0530664            ; 5 uses
  %i.ef = add nsw i32 %i.ee, 1
  %reass.sub = sub i32 %.0524667, %.0530664
  %i.eg = add i32 %reass.sub, 1
  %spec.select = select i1 %cond.fr, i32 %i.eg, i32 %.0524667 ; 4 uses
  %.not562 = icmp eq i32 %.1541, %i.ef
  br i1 %.not562, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !30
  %i.eh = sext i32 %spec.select to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.eh
  %i.ej = sext i32 %i.dg to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ej
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ei, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ek, ptr noundef nonnull @c__1) #4
  store i32 %i.ee, ptr %i.a, align 4, !tbaa !30
  %.not563.not653 = icmp slt i32 %.1541, %i.ee
  br i1 %.not563.not653, label %.lr.ph657.preheader, label %._crit_edge658

.lr.ph657.preheader:                              ; preds = %bb.q
  %i.el = sext i32 %.1541 to i64
  %wide.trip.count = sext i32 %i.ee to i64
  br label %.lr.ph657

.lr.ph657:                                        ; preds = %.lr.ph657.preheader, %.lr.ph657
  %indvars.iv703 = phi i64 [ %i.el, %.lr.ph657.preheader ], [ %indvars.iv.next704, %.lr.ph657 ] ; 2 uses
  %.1517655 = phi i32 [ %i.dx, %.lr.ph657.preheader ], [ %i.en, %.lr.ph657 ]
  %indvars.iv.next704 = add nsw i64 %indvars.iv703, 1 ; 2 uses
  %i.em = trunc nsw i64 %indvars.iv703 to i32     ; 2 uses
  %i.en = add i32 %.1517655, %i.em                ; 2 uses
  %i.eo = add i32 %spec.select, %i.em
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ep ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !32
  %i.es = sext i32 %i.en to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !32
  store double %i.eu, ptr %i.eq, align 8, !tbaa !32
  store double %i.er, ptr %i.et, align 8, !tbaa !32
  %exitcond706.not = icmp eq i64 %indvars.iv.next704, %wide.trip.count
  br i1 %exitcond706.not, label %._crit_edge658, label %.lr.ph657, !llvm.loop !10

._crit_edge658:                                   ; preds = %.lr.ph657, %bb.q
  %i.ev = add i32 %i.ee, %spec.select
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ew ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !32
  %i.ez = load double, ptr %i.dz, align 8, !tbaa !32
  store double %i.ez, ptr %i.ex, align 8, !tbaa !32
  store double %i.ey, ptr %i.dz, align 8, !tbaa !32
  br i1 %cond.fr, label %.split, label %.thread584

.split:                                           ; preds = %._crit_edge658
  %i.fa = getelementptr i8, ptr %i.t, i64 -16     ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !32
  %i.fc = add nsw i32 %.1541, %.0524667
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr [8 x i8], ptr %i.e, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -8     ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !32
  store double %i.fg, ptr %i.fa, align 8, !tbaa !32
  store double %i.fb, ptr %i.ff, align 8, !tbaa !32
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  br i1 %cond.fr, label %bb.s, label %.thread584

.thread584:                                       ; preds = %._crit_edge658, %bb.k, %bb.o, %bb.r
  %.0520576583587 = phi i32 [ %.1541, %._crit_edge658 ], [ %.1541, %bb.r ], [ %.0530664, %bb.o ], [ %.0530664, %bb.k ]
  %i.fh = load double, ptr %i.u, align 8, !tbaa !32
  %i.fi = fdiv double 1.000000e+00, %i.fh         ; 2 uses
  store double %i.fi, ptr %i.c, align 8, !tbaa !32
  %i.fj = add nsw i32 %.0530664, -1               ; 2 uses
  store i32 %i.fj, ptr %i.a, align 4, !tbaa !30
  %i.fk = fneg double %i.fi
  store double %i.fk, ptr %i.b, align 8, !tbaa !32
  %i.fl = sext i32 %.0524667 to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fl ; 2 uses
  call void @dspr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fm, ptr noundef nonnull @c__1, ptr noundef nonnull %2) #4
  store i32 %i.fj, ptr %i.a, align 4, !tbaa !30
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.fm, ptr noundef nonnull @c__1) #4
  br label %bb.t

bb.s:                                             ; preds = %.split, %bb.r
  %i.fn = icmp samesign ugt i32 %.0530664, 2
  br i1 %i.fn, label %.lr.ph662.preheader, label %.loopexit647

.lr.ph662.preheader:                              ; preds = %bb.s
  %i.fo = add nsw i32 %.0530664, -1               ; 4 uses
  %i.fp = mul nuw nsw i32 %i.fo, %.0530664
  %i.fq = lshr i32 %i.fp, 1                       ; 3 uses
  %i.fr = add nuw nsw i32 %i.fq, %i.fo
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !32 ; 3 uses
  %i.fv = add nsw i32 %.0530664, -2               ; 3 uses
  %i.fw = mul nuw nsw i32 %i.fv, %i.fo
  %i.fx = lshr i32 %i.fw, 1                       ; 2 uses
  %i.fy = add nuw nsw i32 %i.fx, %i.fo
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !32
  %i.gc = fdiv double %i.gb, %i.fu                ; 2 uses
  %i.gd = add nuw nsw i32 %i.fq, %.0530664
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !32
  %i.gh = fdiv double %i.gg, %i.fu                ; 2 uses
  %i.gi = call double @llvm.fmuladd.f64(double %i.gh, double %i.gc, double -1.000000e+00)
  %i.gj = fdiv double 1.000000e+00, %i.gi
  %i.gk = fdiv double %i.gj, %i.fu                ; 2 uses
  %i.gl = zext i32 %i.fv to i64                   ; 5 uses
  %i.gm = zext nneg i32 %i.fq to i64              ; 3 uses
  %i.gn = zext nneg i32 %i.fx to i64              ; 3 uses
  %invariant.gep759 = getelementptr [8 x i8], ptr %i.e, i64 %i.gn
  %invariant.gep761 = getelementptr [8 x i8], ptr %i.e, i64 %i.gm
  %invariant.gep755 = getelementptr [8 x i8], ptr %i.e, i64 %i.gm ; 2 uses
  %invariant.gep757 = getelementptr [8 x i8], ptr %i.e, i64 %i.gn ; 2 uses
  %i.go = shl nuw nsw i64 %i.gl, 3                ; 6 uses
  %i.gp = add nuw nsw i64 %i.gl, 4294967295
  %i.gq = mul i64 %i.gp, %i.gl
  %i.gr = shl nuw nsw i64 %i.gm, 3                ; 2 uses
  %i.gs = shl nuw nsw i64 %i.gn, 3                ; 2 uses
  %i.gt = getelementptr i8, ptr %2, i64 %i.gs
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.go
  %i.gv = getelementptr i8, ptr %2, i64 %i.gs
  %i.gw = getelementptr i8, ptr %i.gv, i64 -8
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.go
  %i.gy = getelementptr i8, ptr %2, i64 %i.gr
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.go
  %i.ha = getelementptr i8, ptr %2, i64 %i.gr
  %i.hb = getelementptr i8, ptr %i.ha, i64 -8
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.go
  %i.hd = getelementptr i8, ptr %2, i64 %i.go
  %i.he = getelementptr i8, ptr %2, i64 %i.go
  %i.hf = getelementptr i8, ptr %i.he, i64 -8
  br label %.lr.ph662

.lr.ph662:                                        ; preds = %.lr.ph662.preheader, %.loopexit862
  %scev.check.iv = phi i64 [ %i.gq, %.lr.ph662.preheader ], [ %scev.check.iv.next, %.loopexit862 ] ; 2 uses
  %indvar = phi i64 [ 0, %.lr.ph662.preheader ], [ %indvar.next, %.loopexit862 ] ; 4 uses
  %indvars.iv707 = phi i64 [ %i.gl, %.lr.ph662.preheader ], [ %indvars.iv.next708, %.loopexit862 ] ; 11 uses
  %i.hg = trunc i64 %indvar to i32
  %i.hh = sub i64 %indvar, %i.gl
  %reass.sub863 = shl i64 %i.hh, 1
  %i.hi = add i64 %reass.sub863, -4294967294
  %gep760 = getelementptr [8 x i8], ptr %invariant.gep759, i64 %indvars.iv707 ; 2 uses
  %i.hj = load double, ptr %gep760, align 8, !tbaa !32 ; 2 uses
  %gep762 = getelementptr [8 x i8], ptr %invariant.gep761, i64 %indvars.iv707 ; 2 uses
  %i.hk = load double, ptr %gep762, align 8, !tbaa !32 ; 2 uses
  %i.hl = fneg double %i.hk
  %i.hm = call double @llvm.fmuladd.f64(double %i.gh, double %i.hj, double %i.hl)
  %i.hn = fmul double %i.gk, %i.hm                ; 3 uses
  %i.ho = fneg double %i.hj
  %i.hp = call double @llvm.fmuladd.f64(double %i.gc, double %i.hk, double %i.ho)
  %i.hq = fmul double %i.gk, %i.hp                ; 3 uses
  %indvars.iv.next708 = add nsw i64 %indvars.iv707, -1
  %i.hr = add nuw i64 %indvars.iv707, 4294967295
  %i.hs = mul i64 %i.hr, %indvars.iv707
  %i.ht = lshr i64 %i.hs, 1
  %i.hu = and i64 %i.ht, 2147483647
  %invariant.gep = getelementptr [8 x i8], ptr %i.e, i64 %i.hu ; 2 uses
  %5 = sub i32 %i.fv, %i.hg                       ; 2 uses
  %i.hv = call i32 @llvm.smin.i32(i32 %5, i32 1)
  %i.hw = sub i32 %5, %i.hv                       ; 2 uses
  %i.hx = zext i32 %i.hw to i64
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.hw, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph662
  %i.hz = mul nsw i64 %indvar, -8                 ; 6 uses
  %scevgep785 = getelementptr i8, ptr %i.gu, i64 %i.hz
  %scevgep783 = getelementptr i8, ptr %i.gx, i64 %i.hz
  %i.ia = trunc i64 %indvars.iv707 to i32         ; 2 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.ia, i32 1)
  %i.ib = sub i32 %i.ia, %smin
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = mul nsw i64 %i.ic, -8                   ; 2 uses
  %scevgep784 = getelementptr i8, ptr %scevgep783, i64 %i.id
  %scevgep782 = getelementptr i8, ptr %i.gz, i64 %i.hz
  %scevgep780 = getelementptr i8, ptr %i.hc, i64 %i.hz
  %scevgep781 = getelementptr i8, ptr %scevgep780, i64 %i.id
  %scevgep778 = getelementptr i8, ptr %i.hd, i64 %i.hz
  %i.ie = shl i64 %scev.check.iv, 2
  %i.if = and i64 %i.ie, 17179869176              ; 2 uses
  %scevgep779 = getelementptr i8, ptr %scevgep778, i64 %i.if ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hf, i64 %i.hz
  %i.ig = shl nuw nsw i64 %i.ic, 3
  %i.ih = sub nsw i64 %i.if, %i.ig
  %scevgep777 = getelementptr i8, ptr %scevgep, i64 %i.ih ; 2 uses
  %bound0 = icmp ult ptr %scevgep777, %scevgep782
  %bound1 = icmp ult ptr %scevgep781, %scevgep779
  %found.conflict = and i1 %bound0, %bound1
  %bound0786 = icmp ult ptr %scevgep777, %scevgep785
  %bound1787 = icmp ult ptr %scevgep784, %scevgep779
  %found.conflict788 = and i1 %bound0786, %bound1787
  %conflict.rdx = or i1 %found.conflict, %found.conflict788
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hy, 8589934584              ; 3 uses
  %i.ii = sub i64 %indvars.iv707, %n.vec
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.hn, i64 0 ; 2 uses
  %broadcast.splatinsert789 = insertelement <4 x double> poison, double %i.hq, i64 0 ; 2 uses
  %i.ij = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ik = shufflevector <4 x double> %broadcast.splatinsert789, <4 x double> poison, <4 x i32> zeroinitializer
  %i.il = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.im = shufflevector <4 x double> %broadcast.splatinsert789, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.in = sub i64 %indvars.iv707, %index          ; 3 uses
  %i.io = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.in ; 2 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 -24    ; 2 uses
  %i.iq = getelementptr i8, ptr %i.io, i64 -56    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ip, align 8, !tbaa !32, !alias.scope !35, !noalias !36
  %wide.load791 = load <4 x double>, ptr %i.iq, align 8, !tbaa !32, !alias.scope !35, !noalias !36
  %i.ir = getelementptr [8 x i8], ptr %invariant.gep755, i64 %i.in ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 -24
  %i.it = getelementptr i8, ptr %i.ir, i64 -56
  %wide.load793 = load <4 x double>, ptr %i.is, align 8, !tbaa !32, !alias.scope !37
  %wide.load794 = load <4 x double>, ptr %i.it, align 8, !tbaa !32, !alias.scope !37
  %i.iu = fneg <4 x double> %wide.load793
  %i.iv = fneg <4 x double> %wide.load794
  %i.iw = getelementptr [8 x i8], ptr %invariant.gep757, i64 %i.in ; 2 uses
  %i.ix = getelementptr i8, ptr %i.iw, i64 -24
  %i.iy = getelementptr i8, ptr %i.iw, i64 -56
  %wide.load797 = load <4 x double>, ptr %i.ix, align 8, !tbaa !32, !alias.scope !38
  %wide.load798 = load <4 x double>, ptr %i.iy, align 8, !tbaa !32, !alias.scope !38
  %i.iz = fneg <4 x double> %wide.load797
  %i.ja = fneg <4 x double> %wide.load798
  %i.jb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iu, <4 x double> %i.ik, <4 x double> %wide.load)
  %reverse801 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iz, <4 x double> %i.ij, <4 x double> %i.jb)
  %i.jc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.im, <4 x double> %wide.load791)
  %reverse802 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ja, <4 x double> %i.il, <4 x double> %i.jc)
  store <4 x double> %reverse801, ptr %i.ip, align 8, !tbaa !32, !alias.scope !35, !noalias !36
  store <4 x double> %reverse802, ptr %i.iq, align 8, !tbaa !32, !alias.scope !35, !noalias !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jd = icmp eq i64 %index.next, %n.vec
  br i1 %i.jd, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %.loopexit862, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph662, %middle.block
  %indvars.iv709.ph = phi i64 [ %indvars.iv707, %vector.memcheck ], [ %indvars.iv707, %.lr.ph662 ], [ %i.ii, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv709 = phi i64 [ %indvars.iv.next710, %scalar.ph ], [ %indvars.iv709.ph, %scalar.ph.preheader ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv709 ; 2 uses
  %i.je = load double, ptr %gep, align 8, !tbaa !32
  %gep756 = getelementptr [8 x i8], ptr %invariant.gep755, i64 %indvars.iv709
  %i.jf = load double, ptr %gep756, align 8, !tbaa !32
  %i.jg = fneg double %i.jf
  %i.jh = call double @llvm.fmuladd.f64(double %i.jg, double %i.hq, double %i.je)
  %gep758 = getelementptr [8 x i8], ptr %invariant.gep757, i64 %indvars.iv709
  %i.ji = load double, ptr %gep758, align 8, !tbaa !32
  %i.jj = fneg double %i.ji
  %i.jk = call double @llvm.fmuladd.f64(double %i.jj, double %i.hn, double %i.jh)
  store double %i.jk, ptr %gep, align 8, !tbaa !32
  %indvars.iv.next710 = add nsw i64 %indvars.iv709, -1
  %i.jl = trunc nuw i64 %indvars.iv709 to i32
  %i.jm = icmp sgt i32 %i.jl, 1
  br i1 %i.jm, label %scalar.ph, label %.loopexit862, !llvm.loop !16

.loopexit862:                                     ; preds = %scalar.ph, %middle.block
  store double %i.hq, ptr %gep762, align 8, !tbaa !32
  store double %i.hn, ptr %gep760, align 8, !tbaa !32
  %i.jn = icmp samesign ugt i64 %indvars.iv707, 1
  %indvar.next = add i64 %indvar, 1
  %scev.check.iv.next = add i64 %scev.check.iv, %i.hi
  br i1 %i.jn, label %.lr.ph662, label %.loopexit647, !llvm.loop !17

bb.t:                                             ; preds = %.thread584, %bb.j, %bb.i
  %.1521.ph = phi i32 [ %.0530664, %bb.i ], [ %.0530664, %bb.j ], [ %.0520576583587, %.thread584 ]
  %i.jo = zext nneg i32 %.0530664 to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jo
  store i32 %.1521.ph, ptr %i.jp, align 4, !tbaa !30
  br label %bb.u

.loopexit647:                                     ; preds = %.loopexit862, %bb.s
  %i.jq = sub nsw i32 0, %.1541                   ; 2 uses
  %i.jr = zext nneg i32 %.0530664 to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jr ; 2 uses
  store i32 %i.jq, ptr %i.js, align 4, !tbaa !30
  %i.jt = getelementptr i8, ptr %i.js, i64 -4
  store i32 %i.jq, ptr %i.jt, align 4, !tbaa !30
  br label %bb.u

bb.u:                                             ; preds = %.loopexit647, %bb.t
  %.1505601 = phi i32 [ %spec.select, %.loopexit647 ], [ %.0524667, %bb.t ]
  %.1527.neg598 = phi i32 [ -2, %.loopexit647 ], [ -1, %bb.t ]
  %i.ju = add nsw i32 %.1527.neg598, %.0530664    ; 3 uses
  %i.jv = sub nsw i32 %.1505601, %i.ju
  %i.jw = icmp slt i32 %i.ju, 1
  br i1 %i.jw, label %.loopexit646, label %.lr.ph669

bb.v:                                             ; preds = %bb.e
  %i.jx = add nuw nsw i32 %i.h, 1
  %i.jy = mul nuw nsw i32 %i.jx, %i.h
  %i.jz = lshr i32 %i.jy, 1
  %i.ka = icmp eq i32 %i.h, 0
  br i1 %i.ka, label %.loopexit646, label %.lr.ph698

.lr.ph698:                                        ; preds = %bb.v, %bb.ao
  %i.kb = phi i32 [ %i.xk, %bb.ao ], [ %i.h, %bb.v ] ; 2 uses
  %.1531.neg696 = phi i32 [ %.1531.neg, %bb.ao ], [ -1, %bb.v ] ; 5 uses
  %.1525694 = phi i32 [ %i.xn, %bb.ao ], [ 1, %bb.v ] ; 12 uses
  %.1531691 = phi i32 [ %i.xj, %bb.ao ], [ 1, %bb.v ] ; 27 uses
  %.2542690 = phi i32 [ %.3543, %bb.ao ], [ undef, %bb.v ]
  %i.kc = sext i32 %.1525694 to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.kc ; 5 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !32 ; 4 uses
  store double %i.ke, ptr %i.b, align 8, !tbaa !32
  %i.kf = fcmp oge double %i.ke, 0.000000e+00
  %i.kg = fneg double %i.ke
  %i.kh = select i1 %i.kf, double %i.ke, double %i.kg ; 4 uses
  %i.ki = icmp slt i32 %.1531691, %i.kb
  br i1 %i.ki, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph698
  %i.kj = sub nuw nsw i32 %i.kb, %.1531691
  store i32 %i.kj, ptr %i.a, align 4, !tbaa !30
  %i.kk = getelementptr i8, ptr %i.kd, i64 8
  %i.kl = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.kk, ptr noundef nonnull @c__1) #4
  %i.km = add nsw i32 %i.kl, %.1531691            ; 2 uses
  %i.kn = add i32 %.1525694, %.1531.neg696
  %i.ko = add i32 %i.kn, %i.km
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.kp
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !32 ; 4 uses
  store double %i.kr, ptr %i.b, align 8, !tbaa !32
  %i.ks = fcmp oge double %i.kr, 0.000000e+00
  %i.kt = fneg double %i.kr
  %i.ku = select i1 %i.ks, double %i.kr, double %i.kt
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph698, %bb.w
  %.3543 = phi i32 [ %i.km, %bb.w ], [ %.2542690, %.lr.ph698 ] ; 19 uses
  %.1515 = phi double [ %i.ku, %bb.w ], [ 0.000000e+00, %.lr.ph698 ] ; 4 uses
  %i.kv = sub i32 0, %.3543                       ; 2 uses
  %i.kw = fcmp oge double %i.kh, %.1515
  %i.kx = select i1 %i.kw, double %i.kh, double %.1515
  %i.ky = fcmp oeq double %i.kx, 0.000000e+00
  br i1 %i.ky, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.kz = load i32, ptr %4, align 4, !tbaa !30
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.z, label %bb.an

bb.z:                                             ; preds = %bb.y
  store i32 %.1531691, ptr %4, align 4, !tbaa !30
  br label %bb.an

bb.aa:                                            ; preds = %bb.x
  %i.lb = fmul double %.1515, f0x3FE47E0F66AFED07 ; 2 uses
  %i.lc = fcmp ult double %i.kh, %i.lb
  br i1 %i.lc, label %bb.ab, label %.thread620

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
