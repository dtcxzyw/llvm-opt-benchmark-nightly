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
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !31 ; 4 uses
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
  %i.by = load double, ptr %i.bx, align 8, !tbaa !31 ; 4 uses
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
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !31 ; 4 uses
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
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !31 ; 5 uses
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
  %.lcssa846 = phi double [ %.lcssa846.unr, %.lr.ph.prol.loopexit ], [ %i.cu, %.lr.ph ]
  %.1509.lcssa = phi double [ %.1509.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1509.3, %.lr.ph ]
  store double %.lcssa846, ptr %i.b, align 8, !tbaa !31
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
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !29
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.di
  %i.dk = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dj, ptr noundef nonnull @c__1) #4
  %i.dl = add i32 %i.dk, %i.df
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !31 ; 3 uses
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
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !31 ; 2 uses
  store double %i.ea, ptr %i.b, align 8, !tbaa !31
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
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !29
  %i.eh = sext i32 %spec.select to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.eh
  %i.ej = sext i32 %i.dg to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ej
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ei, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ek, ptr noundef nonnull @c__1) #4
  store i32 %i.ee, ptr %i.a, align 4, !tbaa !29
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
  %i.er = load double, ptr %i.eq, align 8, !tbaa !31
  %i.es = sext i32 %i.en to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !31
  store double %i.eu, ptr %i.eq, align 8, !tbaa !31
  store double %i.er, ptr %i.et, align 8, !tbaa !31
  %exitcond706.not = icmp eq i64 %indvars.iv.next704, %wide.trip.count
  br i1 %exitcond706.not, label %._crit_edge658, label %.lr.ph657, !llvm.loop !10

._crit_edge658:                                   ; preds = %.lr.ph657, %bb.q
  %i.ev = add i32 %i.ee, %spec.select
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ew ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !31
  %i.ez = load double, ptr %i.dz, align 8, !tbaa !31
  store double %i.ez, ptr %i.ex, align 8, !tbaa !31
  store double %i.ey, ptr %i.dz, align 8, !tbaa !31
  br i1 %cond.fr, label %.split, label %.thread584

.split:                                           ; preds = %._crit_edge658
  %i.fa = getelementptr i8, ptr %i.t, i64 -16     ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !31
  %i.fc = add nsw i32 %.1541, %.0524667
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr [8 x i8], ptr %i.e, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -8     ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !31
  store double %i.fg, ptr %i.fa, align 8, !tbaa !31
  store double %i.fb, ptr %i.ff, align 8, !tbaa !31
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  br i1 %cond.fr, label %bb.s, label %.thread584

.thread584:                                       ; preds = %._crit_edge658, %bb.k, %bb.o, %bb.r
  %.0520576583587 = phi i32 [ %.1541, %._crit_edge658 ], [ %.1541, %bb.r ], [ %.0530664, %bb.o ], [ %.0530664, %bb.k ]
  %i.fh = load double, ptr %i.u, align 8, !tbaa !31
  %i.fi = fdiv double 1.000000e+00, %i.fh         ; 2 uses
  store double %i.fi, ptr %i.c, align 8, !tbaa !31
  %i.fj = add nsw i32 %.0530664, -1               ; 2 uses
  store i32 %i.fj, ptr %i.a, align 4, !tbaa !29
  %i.fk = fneg double %i.fi
  store double %i.fk, ptr %i.b, align 8, !tbaa !31
  %i.fl = sext i32 %.0524667 to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fl ; 2 uses
  call void @dspr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fm, ptr noundef nonnull @c__1, ptr noundef nonnull %2) #4
  store i32 %i.fj, ptr %i.a, align 4, !tbaa !29
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
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !31 ; 3 uses
  %i.fv = add nsw i32 %.0530664, -2               ; 3 uses
  %i.fw = mul nuw nsw i32 %i.fv, %i.fo
  %i.fx = lshr i32 %i.fw, 1                       ; 2 uses
  %i.fy = add nuw nsw i32 %i.fx, %i.fo
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !31
  %i.gc = fdiv double %i.gb, %i.fu                ; 2 uses
  %i.gd = add nuw nsw i32 %i.fq, %.0530664
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !31
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

.lr.ph662:                                        ; preds = %.lr.ph662.preheader, %.loopexit842
  %scev.check.iv = phi i64 [ %i.gq, %.lr.ph662.preheader ], [ %scev.check.iv.next, %.loopexit842 ] ; 2 uses
  %indvar = phi i64 [ 0, %.lr.ph662.preheader ], [ %indvar.next, %.loopexit842 ] ; 4 uses
  %indvars.iv707 = phi i64 [ %i.gl, %.lr.ph662.preheader ], [ %indvars.iv.next708, %.loopexit842 ] ; 11 uses
  %i.hg = sub i64 %indvar, %i.gl
  %reass.sub843 = shl i64 %i.hg, 1
  %i.hh = add i64 %reass.sub843, -4294967294
  %gep760 = getelementptr [8 x i8], ptr %invariant.gep759, i64 %indvars.iv707 ; 2 uses
  %i.hi = load double, ptr %gep760, align 8, !tbaa !31 ; 2 uses
  %gep762 = getelementptr [8 x i8], ptr %invariant.gep761, i64 %indvars.iv707 ; 2 uses
  %i.hj = load double, ptr %gep762, align 8, !tbaa !31 ; 2 uses
  %i.hk = fneg double %i.hj
  %i.hl = call double @llvm.fmuladd.f64(double %i.gh, double %i.hi, double %i.hk)
  %i.hm = fmul double %i.gk, %i.hl                ; 3 uses
  %i.hn = fneg double %i.hi
  %i.ho = call double @llvm.fmuladd.f64(double %i.gc, double %i.hj, double %i.hn)
  %i.hp = fmul double %i.gk, %i.ho                ; 3 uses
  %indvars.iv.next708 = add nsw i64 %indvars.iv707, -1
  %i.hq = add nuw i64 %indvars.iv707, 4294967295
  %i.hr = mul i64 %i.hq, %indvars.iv707
  %i.hs = lshr i64 %i.hr, 1
  %i.ht = and i64 %i.hs, 2147483647
  %invariant.gep = getelementptr [8 x i8], ptr %i.e, i64 %i.ht ; 2 uses
  %5 = trunc i64 %indvar to i32
  %6 = sub i32 %i.fv, %5                          ; 2 uses
  %i.hu = call i32 @llvm.smin.i32(i32 %6, i32 1)
  %i.hv = sub i32 %6, %i.hu                       ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %i.hx = add nuw nsw i64 %i.hw, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.hv, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph662
  %i.hy = mul nsw i64 %indvar, -8                 ; 6 uses
  %scevgep785 = getelementptr i8, ptr %i.gu, i64 %i.hy
  %scevgep783 = getelementptr i8, ptr %i.gx, i64 %i.hy
  %i.hz = trunc i64 %indvars.iv707 to i32         ; 2 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.hz, i32 1)
  %i.ia = sub i32 %i.hz, %smin
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %i.ic = mul nsw i64 %i.ib, -8                   ; 2 uses
  %scevgep784 = getelementptr i8, ptr %scevgep783, i64 %i.ic
  %scevgep782 = getelementptr i8, ptr %i.gz, i64 %i.hy
  %scevgep780 = getelementptr i8, ptr %i.hc, i64 %i.hy
  %scevgep781 = getelementptr i8, ptr %scevgep780, i64 %i.ic
  %scevgep778 = getelementptr i8, ptr %i.hd, i64 %i.hy
  %i.id = shl i64 %scev.check.iv, 2
  %i.ie = and i64 %i.id, 17179869176              ; 2 uses
  %scevgep779 = getelementptr i8, ptr %scevgep778, i64 %i.ie ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hf, i64 %i.hy
  %i.if = shl nuw nsw i64 %i.ib, 3
  %i.ig = sub nsw i64 %i.ie, %i.if
  %scevgep777 = getelementptr i8, ptr %scevgep, i64 %i.ig ; 2 uses
  %bound0 = icmp ult ptr %scevgep777, %scevgep782
  %bound1 = icmp ult ptr %scevgep781, %scevgep779
  %found.conflict = and i1 %bound0, %bound1
  %bound0786 = icmp ult ptr %scevgep777, %scevgep785
  %bound1787 = icmp ult ptr %scevgep784, %scevgep779
  %found.conflict788 = and i1 %bound0786, %bound1787
  %conflict.rdx = or i1 %found.conflict, %found.conflict788
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hx, 8589934584              ; 3 uses
  %i.ih = sub i64 %indvars.iv707, %n.vec
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.hm, i64 0 ; 2 uses
  %broadcast.splatinsert789 = insertelement <4 x double> poison, double %i.hp, i64 0 ; 2 uses
  %i.ii = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ij = shufflevector <4 x double> %broadcast.splatinsert789, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ik = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.il = shufflevector <4 x double> %broadcast.splatinsert789, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.im = sub i64 %indvars.iv707, %index          ; 3 uses
  %i.in = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.im ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 -24    ; 2 uses
  %i.ip = getelementptr i8, ptr %i.in, i64 -56    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.io, align 8, !tbaa !31, !alias.scope !34, !noalias !35
  %wide.load791 = load <4 x double>, ptr %i.ip, align 8, !tbaa !31, !alias.scope !34, !noalias !35
  %i.iq = getelementptr [8 x i8], ptr %invariant.gep755, i64 %i.im ; 2 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 -24
  %i.is = getelementptr i8, ptr %i.iq, i64 -56
  %wide.load793 = load <4 x double>, ptr %i.ir, align 8, !tbaa !31, !alias.scope !36
  %wide.load794 = load <4 x double>, ptr %i.is, align 8, !tbaa !31, !alias.scope !36
  %i.it = fneg <4 x double> %wide.load793
  %i.iu = fneg <4 x double> %wide.load794
  %i.iv = getelementptr [8 x i8], ptr %invariant.gep757, i64 %i.im ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -24
  %i.ix = getelementptr i8, ptr %i.iv, i64 -56
  %wide.load797 = load <4 x double>, ptr %i.iw, align 8, !tbaa !31, !alias.scope !37
  %wide.load798 = load <4 x double>, ptr %i.ix, align 8, !tbaa !31, !alias.scope !37
  %i.iy = fneg <4 x double> %wide.load797
  %i.iz = fneg <4 x double> %wide.load798
  %i.ja = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.it, <4 x double> %i.ij, <4 x double> %wide.load)
  %reverse801 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iy, <4 x double> %i.ii, <4 x double> %i.ja)
  %i.jb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iu, <4 x double> %i.il, <4 x double> %wide.load791)
  %reverse802 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iz, <4 x double> %i.ik, <4 x double> %i.jb)
  store <4 x double> %reverse801, ptr %i.io, align 8, !tbaa !31, !alias.scope !34, !noalias !35
  store <4 x double> %reverse802, ptr %i.ip, align 8, !tbaa !31, !alias.scope !34, !noalias !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jc = icmp eq i64 %index.next, %n.vec
  br i1 %i.jc, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hx, %n.vec
  br i1 %cmp.n, label %.loopexit842, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph662, %middle.block
  %indvars.iv709.ph = phi i64 [ %indvars.iv707, %vector.memcheck ], [ %indvars.iv707, %.lr.ph662 ], [ %i.ih, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv709 = phi i64 [ %indvars.iv.next710, %scalar.ph ], [ %indvars.iv709.ph, %scalar.ph.preheader ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv709 ; 2 uses
  %i.jd = load double, ptr %gep, align 8, !tbaa !31
  %gep756 = getelementptr [8 x i8], ptr %invariant.gep755, i64 %indvars.iv709
  %i.je = load double, ptr %gep756, align 8, !tbaa !31
  %i.jf = fneg double %i.je
  %i.jg = call double @llvm.fmuladd.f64(double %i.jf, double %i.hp, double %i.jd)
  %gep758 = getelementptr [8 x i8], ptr %invariant.gep757, i64 %indvars.iv709
  %i.jh = load double, ptr %gep758, align 8, !tbaa !31
  %i.ji = fneg double %i.jh
  %i.jj = call double @llvm.fmuladd.f64(double %i.ji, double %i.hm, double %i.jg)
  store double %i.jj, ptr %gep, align 8, !tbaa !31
  %indvars.iv.next710 = add nsw i64 %indvars.iv709, -1
  %i.jk = trunc nuw i64 %indvars.iv709 to i32
  %i.jl = icmp sgt i32 %i.jk, 1
  br i1 %i.jl, label %scalar.ph, label %.loopexit842, !llvm.loop !16

.loopexit842:                                     ; preds = %scalar.ph, %middle.block
  store double %i.hp, ptr %gep762, align 8, !tbaa !31
  store double %i.hm, ptr %gep760, align 8, !tbaa !31
  %i.jm = icmp samesign ugt i64 %indvars.iv707, 1
  %indvar.next = add i64 %indvar, 1
  %scev.check.iv.next = add i64 %scev.check.iv, %i.hh
  br i1 %i.jm, label %.lr.ph662, label %.loopexit647, !llvm.loop !17

bb.t:                                             ; preds = %.thread584, %bb.j, %bb.i
  %.1521.ph = phi i32 [ %.0530664, %bb.i ], [ %.0530664, %bb.j ], [ %.0520576583587, %.thread584 ]
  %i.jn = zext nneg i32 %.0530664 to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jn
  store i32 %.1521.ph, ptr %i.jo, align 4, !tbaa !29
  br label %bb.u

.loopexit647:                                     ; preds = %.loopexit842, %bb.s
  %i.jp = sub nsw i32 0, %.1541                   ; 2 uses
  %i.jq = zext nneg i32 %.0530664 to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jq ; 2 uses
  store i32 %i.jp, ptr %i.jr, align 4, !tbaa !29
  %i.js = getelementptr i8, ptr %i.jr, i64 -4
  store i32 %i.jp, ptr %i.js, align 4, !tbaa !29
  br label %bb.u

bb.u:                                             ; preds = %.loopexit647, %bb.t
  %.1505601 = phi i32 [ %spec.select, %.loopexit647 ], [ %.0524667, %bb.t ]
  %.1527.neg598 = phi i32 [ -2, %.loopexit647 ], [ -1, %bb.t ]
  %i.jt = add nsw i32 %.1527.neg598, %.0530664    ; 3 uses
  %i.ju = sub nsw i32 %.1505601, %i.jt
  %i.jv = icmp slt i32 %i.jt, 1
  br i1 %i.jv, label %.loopexit646, label %.lr.ph669

bb.v:                                             ; preds = %bb.e
  %i.jw = add nuw nsw i32 %i.h, 1
  %i.jx = mul nuw nsw i32 %i.jw, %i.h
  %i.jy = lshr i32 %i.jx, 1
  %i.jz = icmp eq i32 %i.h, 0
  br i1 %i.jz, label %.loopexit646, label %.lr.ph698

.lr.ph698:                                        ; preds = %bb.v, %bb.ap
  %i.ka = phi i32 [ %i.wk, %bb.ap ], [ %i.h, %bb.v ] ; 2 uses
  %.1531.neg696 = phi i32 [ %.1531.neg, %bb.ap ], [ -1, %bb.v ] ; 5 uses
  %.1525694 = phi i32 [ %i.wn, %bb.ap ], [ 1, %bb.v ] ; 12 uses
  %.1531691 = phi i32 [ %i.wj, %bb.ap ], [ 1, %bb.v ] ; 27 uses
  %.2542690 = phi i32 [ %.3543, %bb.ap ], [ undef, %bb.v ]
  %i.kb = sext i32 %.1525694 to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.kb ; 5 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !31 ; 4 uses
  store double %i.kd, ptr %i.b, align 8, !tbaa !31
  %i.ke = fcmp oge double %i.kd, 0.000000e+00
  %i.kf = fneg double %i.kd
  %i.kg = select i1 %i.ke, double %i.kd, double %i.kf ; 4 uses
  %i.kh = icmp slt i32 %.1531691, %i.ka
  br i1 %i.kh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph698
  %i.ki = sub nuw nsw i32 %i.ka, %.1531691
  store i32 %i.ki, ptr %i.a, align 4, !tbaa !29
  %i.kj = getelementptr i8, ptr %i.kc, i64 8
  %i.kk = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.kj, ptr noundef nonnull @c__1) #4
  %i.kl = add nsw i32 %i.kk, %.1531691            ; 2 uses
  %i.km = add i32 %.1525694, %.1531.neg696
  %i.kn = add i32 %i.km, %i.kl
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ko
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !31 ; 4 uses
  store double %i.kq, ptr %i.b, align 8, !tbaa !31
  %i.kr = fcmp oge double %i.kq, 0.000000e+00
  %i.ks = fneg double %i.kq
  %i.kt = select i1 %i.kr, double %i.kq, double %i.ks
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph698, %bb.w
  %.3543 = phi i32 [ %i.kl, %bb.w ], [ %.2542690, %.lr.ph698 ] ; 19 uses
  %.1515 = phi double [ %i.kt, %bb.w ], [ 0.000000e+00, %.lr.ph698 ] ; 4 uses
  %i.ku = sub i32 0, %.3543                       ; 2 uses
  %i.kv = fcmp oge double %i.kg, %.1515
  %i.kw = select i1 %i.kv, double %i.kg, double %.1515
  %i.kx = fcmp oeq double %i.kw, 0.000000e+00
  br i1 %i.kx, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ky = load i32, ptr %4, align 4, !tbaa !29
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.z, label %bb.ao

bb.z:                                             ; preds = %bb.y
  store i32 %.1531691, ptr %4, align 4, !tbaa !29
  br label %bb.ao

bb.aa:                                            ; preds = %bb.x
  %i.la = fmul double %.1515, f0x3FE47E0F66AFED07 ; 2 uses
  %i.lb = fcmp ult double %i.kg, %i.la
  br i1 %i.lb, label %bb.ab, label %.thread620

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@dsptrf_:bb.a
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !31
  store double %i.pt, ptr %i.pp, align 8, !tbaa !31
  store double %i.pq, ptr %i.ps, align 8, !tbaa !31
  %indvars.iv.next719.prol = add nuw nsw i64 %indvars.iv718.prol, 1 ; 2 uses
  %prol.iter854.next = add i64 %prol.iter854, 1   ; 2 uses
  %prol.iter854.cmp.not = icmp eq i64 %prol.iter854.next, %xtraiter852
  br i1 %prol.iter854.cmp.not, label %.prol.loopexit851, label %.prol.preheader850, !llvm.loop !20

.prol.loopexit851:                                ; preds = %.prol.preheader850, %.lr.ph683
  %indvars.iv718.unr = phi i64 [ %i.pk, %.lr.ph683 ], [ %indvars.iv.next719.prol, %.prol.preheader850 ]
  %.3519681.unr = phi i32 [ %i.ph, %.lr.ph683 ], [ %.reass.prol, %.prol.preheader850 ]
  %i.pu = sub nsw i64 %i.pk, %wide.trip.count721
  %i.pv = icmp ugt i64 %i.pu, -4
  br i1 %i.pv, label %._crit_edge684, label %.lr.ph683.new

.lr.ph683.new:                                    ; preds = %.prol.loopexit851, %.lr.ph683.new
  %indvars.iv718 = phi i64 [ %indvars.iv.next719.3, %.lr.ph683.new ], [ %indvars.iv718.unr, %.prol.loopexit851 ] ; 5 uses
  %.3519681 = phi i32 [ %.reass.3, %.lr.ph683.new ], [ %.3519681.unr, %.prol.loopexit851 ]
  %i.pw = trunc nsw i64 %indvars.iv718 to i32     ; 2 uses
  %reass.sub699 = sub i32 %.3519681, %i.pw
  %.reass = add i32 %reass.sub699, %invariant.op  ; 2 uses
  %i.px = add i32 %i.pj, %i.pw
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.py ; 2 uses
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !31
  %i.qb = sext i32 %.reass to i64
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qb ; 2 uses
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !31
  store double %i.qd, ptr %i.pz, align 8, !tbaa !31
  store double %i.qa, ptr %i.qc, align 8, !tbaa !31
  %i.qe = trunc i64 %indvars.iv718 to i32
  %i.qf = add i32 %i.qe, 1                        ; 2 uses
  %reass.sub699.1 = sub i32 %.reass, %i.qf
  %.reass.1 = add i32 %reass.sub699.1, %invariant.op ; 2 uses
  %i.qg = add i32 %i.pj, %i.qf
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qh ; 2 uses
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !31
  %i.qk = sext i32 %.reass.1 to i64
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qk ; 2 uses
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !31
  store double %i.qm, ptr %i.qi, align 8, !tbaa !31
  store double %i.qj, ptr %i.ql, align 8, !tbaa !31
  %i.qn = trunc i64 %indvars.iv718 to i32
  %i.qo = add i32 %i.qn, 2                        ; 2 uses
  %reass.sub699.2 = sub i32 %.reass.1, %i.qo
  %.reass.2 = add i32 %reass.sub699.2, %invariant.op ; 2 uses
  %i.qp = add i32 %i.pj, %i.qo
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qq ; 2 uses
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !31
  %i.qt = sext i32 %.reass.2 to i64
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qt ; 2 uses
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !31
  store double %i.qv, ptr %i.qr, align 8, !tbaa !31
  store double %i.qs, ptr %i.qu, align 8, !tbaa !31
  %i.qw = trunc i64 %indvars.iv718 to i32
  %i.qx = add i32 %i.qw, 3                        ; 2 uses
  %reass.sub699.3 = sub i32 %.reass.2, %i.qx
  %.reass.3 = add i32 %reass.sub699.3, %invariant.op ; 2 uses
  %i.qy = add i32 %i.pj, %i.qx
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qz ; 2 uses
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !31
  %i.rc = sext i32 %.reass.3 to i64
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.rc ; 2 uses
  %i.re = load double, ptr %i.rd, align 8, !tbaa !31
  store double %i.re, ptr %i.ra, align 8, !tbaa !31
  store double %i.rb, ptr %i.rd, align 8, !tbaa !31
  %indvars.iv.next719.3 = add nuw nsw i64 %indvars.iv718, 4 ; 2 uses
  %exitcond722.not.3 = icmp eq i64 %indvars.iv.next719.3, %wide.trip.count721
  br i1 %exitcond722.not.3, label %._crit_edge684, label %.lr.ph683.new, !llvm.loop !21

._crit_edge684:                                   ; preds = %.prol.loopexit851, %.lr.ph683.new, %bb.aj
  %i.rf = sext i32 %.2506748 to i64
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.rf ; 2 uses
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !31
  %i.ri = load double, ptr %i.om, align 8, !tbaa !31
  store double %i.ri, ptr %i.rg, align 8, !tbaa !31
  store double %i.rh, ptr %i.om, align 8, !tbaa !31
  br i1 %i.oq, label %.split627, label %.thread620

.split627:                                        ; preds = %._crit_edge684
  %i.rj = getelementptr i8, ptr %i.kc, i64 8      ; 2 uses
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !31
  %i.rl = add i32 %.1525694, %.1531.neg696
  %i.rm = add i32 %i.rl, %.3543
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.rn ; 2 uses
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !31
  store double %i.rp, ptr %i.rj, align 8, !tbaa !31
  store double %i.rk, ptr %i.ro, align 8, !tbaa !31
  br label %bb.al

.thread620:                                       ; preds = %.thread745, %._crit_edge684, %bb.aa, %bb.ae
  %.2522610618625 = phi i32 [ %.1531691, %bb.aa ], [ %.3543, %.thread745 ], [ %.1531691, %bb.ae ], [ %.3543, %._crit_edge684 ] ; 2 uses
  %.2506619624 = phi i32 [ %.1525694, %bb.aa ], [ %.1525694, %.thread745 ], [ %.1525694, %bb.ae ], [ %.2506748, %._crit_edge684 ] ; 2 uses
  %i.rq = load i32, ptr %1, align 4, !tbaa !29    ; 3 uses
  %i.rr = icmp slt i32 %.1531691, %i.rq
  br i1 %i.rr, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %.thread620
  %i.rs = load double, ptr %i.kc, align 8, !tbaa !31
  %i.rt = fdiv double 1.000000e+00, %i.rs         ; 2 uses
  store double %i.rt, ptr %i.c, align 8, !tbaa !31
  %i.ru = sub nuw nsw i32 %i.rq, %.1531691
  store i32 %i.ru, ptr %i.a, align 4, !tbaa !29
  %i.rv = fneg double %i.rt
  store double %i.rv, ptr %i.b, align 8, !tbaa !31
  %i.rw = getelementptr i8, ptr %i.kc, i64 8      ; 2 uses
  %i.rx = add i32 %.1525694, %.1531.neg696
  %i.ry = add i32 %i.rx, %i.rq
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr [8 x i8], ptr %i.e, i64 %i.rz
  %i.sb = getelementptr i8, ptr %i.sa, i64 8
  call void @dspr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.rw, ptr noundef nonnull @c__1, ptr noundef %i.sb) #4
  %i.sc = load i32, ptr %1, align 4, !tbaa !29
  %i.sd = sub nsw i32 %i.sc, %.1531691
  store i32 %i.sd, ptr %i.a, align 4, !tbaa !29
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.rw, ptr noundef nonnull @c__1) #4
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag, %.split627
  %.2506750 = phi i32 [ %.2506748, %.split627 ], [ %i.ow, %bb.ag ]
  %i.se = load i32, ptr %1, align 4, !tbaa !29    ; 6 uses
  %i.sf = add nsw i32 %i.se, -1
  %i.sg = icmp slt i32 %.1531691, %i.sf
  br i1 %i.sg, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.sh = add nuw nsw i32 %.1531691, 1            ; 2 uses
  %i.si = shl i32 %i.se, 1                        ; 3 uses
  %i.sj = sub nsw i32 %i.si, %.1531691
  %i.sk = insertelement <2 x i32> poison, i32 %i.sj, i64 0
  %i.sl = insertelement <2 x i32> %i.sk, i32 %.1531691, i64 1 ; 2 uses
  %i.sm = add nsw <2 x i32> %i.sl, splat (i32 -1)
  %i.sn = shufflevector <2 x i32> %i.sl, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.so = mul nsw <2 x i32> %i.sm, %i.sn
  %i.sp = sdiv <2 x i32> %i.so, splat (i32 2)     ; 2 uses
  %i.sq = extractelement <2 x i32> %i.sp, i64 1   ; 3 uses
  %i.sr = add nsw i32 %i.sq, %i.sh
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ss
  %i.su = load double, ptr %i.st, align 8, !tbaa !31 ; 3 uses
  %i.sv = extractelement <2 x i32> %i.sp, i64 0   ; 2 uses
  %i.sw = add nsw i32 %i.sv, %i.sh
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.sx
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !31
  %i.ta = fdiv double %i.sz, %i.su                ; 2 uses
  %i.tb = add nsw i32 %i.sq, %.1531691
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.tc
  %i.te = load double, ptr %i.td, align 8, !tbaa !31
  %i.tf = fdiv double %i.te, %i.su                ; 2 uses
  %i.tg = call double @llvm.fmuladd.f64(double %i.ta, double %i.tf, double -1.000000e+00)
  %i.th = fdiv double 1.000000e+00, %i.tg
  %i.ti = fdiv double %i.th, %i.su                ; 2 uses
  store i32 %i.se, ptr %i.a, align 4, !tbaa !29
  %i.tj = add nuw nsw i32 %.1531691, 2            ; 2 uses
  %.not558686 = icmp sgt i32 %i.tj, %i.se
  br i1 %.not558686, label %.loopexit, label %.lr.ph689

.lr.ph689:                                        ; preds = %bb.am
  %i.tk = xor i32 %.1531691, -1
  %i.tl = add i32 %i.si, %i.tk
  %i.tm = mul nsw i32 %i.tl, %.1531691
  %i.tn = sdiv i32 %i.tm, 2
  %i.to = zext nneg i32 %i.tj to i64
  %i.tp = sext i32 %i.sq to i64                   ; 3 uses
  %i.tq = sext i32 %i.sv to i64                   ; 3 uses
  %i.tr = sext i32 %i.se to i64                   ; 3 uses
  %i.ts = sext i32 %i.tn to i64
  %i.tt = add i32 %i.se, 1
  %invariant.gep769 = getelementptr [8 x i8], ptr %i.e, i64 %i.tp
  %invariant.gep771 = getelementptr [8 x i8], ptr %i.e, i64 %i.tq
  %invariant.gep765 = getelementptr [8 x i8], ptr %i.e, i64 %i.tp ; 2 uses
  %invariant.gep767 = getelementptr [8 x i8], ptr %i.e, i64 %i.tq ; 2 uses
  %invariant.gep773 = getelementptr [8 x i8], ptr %i.e, i64 %i.ts
  %i.tu = zext nneg i32 %.1531691 to i64          ; 2 uses
  %i.tv = shl nuw nsw i64 %i.tu, 3                ; 4 uses
  %i.tw = shl nsw i64 %i.tp, 3
  %i.tx = shl nsw i64 %i.tq, 3
  %i.ty = xor i32 %.1531691, -1
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr i8, ptr %2, i64 %i.tx
  %i.ub = getelementptr i8, ptr %i.ua, i64 16
  %i.uc = getelementptr i8, ptr %i.ub, i64 %i.tv
  %i.ud = getelementptr i8, ptr %2, i64 %i.tw
  %i.ue = getelementptr i8, ptr %i.ud, i64 16
  %i.uf = getelementptr i8, ptr %i.ue, i64 %i.tv
  %i.ug = getelementptr i8, ptr %2, i64 %i.tv
  %i.uh = getelementptr i8, ptr %i.ug, i64 16
  %i.ui = getelementptr i8, ptr %2, i64 %i.tv
  %i.uj = getelementptr i8, ptr %i.ui, i64 8
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph689, %.loopexit841
  %indvar804 = phi i64 [ 0, %.lr.ph689 ], [ %indvar.next805, %.loopexit841 ] ; 4 uses
  %indvars.iv723 = phi i64 [ %i.to, %.lr.ph689 ], [ %indvars.iv.next724, %.loopexit841 ] ; 12 uses
  %indvars728 = trunc i64 %indvars.iv723 to i32
  %gep770 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %indvars.iv723 ; 3 uses
  %i.uk = load double, ptr %gep770, align 8, !tbaa !31 ; 2 uses
  %gep772 = getelementptr [8 x i8], ptr %invariant.gep771, i64 %indvars.iv723 ; 2 uses
  %i.ul = load double, ptr %gep772, align 8, !tbaa !31 ; 2 uses
  %i.um = fneg double %i.ul
  %i.un = call double @llvm.fmuladd.f64(double %i.ta, double %i.uk, double %i.um)
  %i.uo = fmul double %i.ti, %i.un                ; 3 uses
  %i.up = fneg double %i.uk
  %i.uq = call double @llvm.fmuladd.f64(double %i.tf, double %i.ul, double %i.up)
  %i.ur = fmul double %i.ti, %i.uq                ; 3 uses
  %i.us = sub nsw i32 %i.si, %indvars728
  %i.ut = trunc i64 %indvars.iv723 to i32
  %i.uu = add i32 %i.ut, -1
  %i.uv = mul nsw i32 %i.uu, %i.us
  %i.uw = sdiv i32 %i.uv, 2
  %i.ux = sext i32 %i.uw to i64                   ; 2 uses
  %invariant.gep763 = getelementptr [8 x i8], ptr %i.e, i64 %i.ux ; 2 uses
  %i.uy = call i64 @llvm.smax.i64(i64 %indvars.iv723, i64 %i.tr)
  %7 = sub i64 %i.tz, %indvar804
  %i.uz = add i64 %i.uy, %7                       ; 3 uses
  %min.iters.check822 = icmp ult i64 %i.uz, 8
  br i1 %min.iters.check822, label %scalar.ph821.preheader, label %vector.memcheck803

vector.memcheck803:                               ; preds = %bb.an
  %i.va = shl nuw nsw i64 %indvar804, 3           ; 4 uses
  %scevgep812 = getelementptr i8, ptr %i.uc, i64 %i.va
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv723, i64 %i.tr)
  %i.vb = add i64 %indvar804, %i.tu
  %reass.sub844 = sub i64 %smax, %i.vb
  %i.vc = shl i64 %reass.sub844, 3
  %i.vd = add i64 %i.vc, -16                      ; 3 uses
  %scevgep813 = getelementptr i8, ptr %scevgep812, i64 %i.vd
  %scevgep810 = getelementptr i8, ptr %i.uf, i64 %i.va
  %scevgep811 = getelementptr i8, ptr %scevgep810, i64 %i.vd
  %scevgep808 = getelementptr i8, ptr %i.uh, i64 %i.va
  %scevgep806 = getelementptr i8, ptr %i.uj, i64 %i.va
  %i.ve = shl nsw i64 %i.ux, 3                    ; 2 uses
  %scevgep807 = getelementptr i8, ptr %scevgep806, i64 %i.ve ; 2 uses
  %i.vf = getelementptr i8, ptr %scevgep808, i64 %i.vd
  %scevgep809 = getelementptr i8, ptr %i.vf, i64 %i.ve ; 2 uses
  %bound0814 = icmp ult ptr %scevgep807, %scevgep811
  %bound1815 = icmp ult ptr %gep770, %scevgep809
  %found.conflict816 = and i1 %bound0814, %bound1815
  %bound0817 = icmp ult ptr %scevgep807, %scevgep813
  %bound1818 = icmp ult ptr %gep772, %scevgep809
  %found.conflict819 = and i1 %bound0817, %bound1818
  %conflict.rdx820 = or i1 %found.conflict816, %found.conflict819
  br i1 %conflict.rdx820, label %scalar.ph821.preheader, label %vector.ph823

vector.ph823:                                     ; preds = %vector.memcheck803
  %n.vec824 = and i64 %i.uz, -8                   ; 3 uses
  %i.vg = add i64 %indvars.iv723, %n.vec824
  %broadcast.splatinsert825 = insertelement <4 x double> poison, double %i.uo, i64 0
  %broadcast.splat826 = shufflevector <4 x double> %broadcast.splatinsert825, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert827 = insertelement <4 x double> poison, double %i.ur, i64 0
  %broadcast.splat828 = shufflevector <4 x double> %broadcast.splatinsert827, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph823
  %index830 = phi i64 [ 0, %vector.ph823 ], [ %index.next837, %vector.body829 ] ; 2 uses
  %i.vh = add nuw i64 %indvars.iv723, %index830   ; 3 uses
  %i.vi = getelementptr [8 x i8], ptr %invariant.gep763, i64 %i.vh ; 3 uses
  %i.vj = getelementptr i8, ptr %i.vi, i64 32     ; 2 uses
  %wide.load831 = load <4 x double>, ptr %i.vi, align 8, !tbaa !31, !alias.scope !40, !noalias !41
  %wide.load832 = load <4 x double>, ptr %i.vj, align 8, !tbaa !31, !alias.scope !40, !noalias !41
  %i.vk = getelementptr [8 x i8], ptr %invariant.gep765, i64 %i.vh ; 2 uses
  %i.vl = getelementptr i8, ptr %i.vk, i64 32
  %wide.load833 = load <4 x double>, ptr %i.vk, align 8, !tbaa !31, !alias.scope !42
  %wide.load834 = load <4 x double>, ptr %i.vl, align 8, !tbaa !31, !alias.scope !42
  %i.vm = fneg <4 x double> %wide.load833
  %i.vn = fneg <4 x double> %wide.load834
  %i.vo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vm, <4 x double> %broadcast.splat826, <4 x double> %wide.load831)
  %i.vp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vn, <4 x double> %broadcast.splat826, <4 x double> %wide.load832)
  %i.vq = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.vh ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vq, i64 32
  %wide.load835 = load <4 x double>, ptr %i.vq, align 8, !tbaa !31, !alias.scope !43
  %wide.load836 = load <4 x double>, ptr %i.vr, align 8, !tbaa !31, !alias.scope !43
  %i.vs = fneg <4 x double> %wide.load835
  %i.vt = fneg <4 x double> %wide.load836
  %i.vu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vs, <4 x double> %broadcast.splat828, <4 x double> %i.vo)
  %i.vv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vt, <4 x double> %broadcast.splat828, <4 x double> %i.vp)
  store <4 x double> %i.vu, ptr %i.vi, align 8, !tbaa !31, !alias.scope !40, !noalias !41
  store <4 x double> %i.vv, ptr %i.vj, align 8, !tbaa !31, !alias.scope !40, !noalias !41
  %index.next837 = add nuw i64 %index830, 8       ; 2 uses
  %i.vw = icmp eq i64 %index.next837, %n.vec824
  br i1 %i.vw, label %middle.block838, label %vector.body829, !llvm.loop !26

middle.block838:                                  ; preds = %vector.body829
  %cmp.n839 = icmp eq i64 %i.uz, %n.vec824
  br i1 %cmp.n839, label %.loopexit841, label %scalar.ph821.preheader

scalar.ph821.preheader:                           ; preds = %vector.memcheck803, %bb.an, %middle.block838
  %indvars.iv725.ph = phi i64 [ %indvars.iv723, %vector.memcheck803 ], [ %indvars.iv723, %bb.an ], [ %i.vg, %middle.block838 ]
  br label %scalar.ph821

scalar.ph821:                                     ; preds = %scalar.ph821.preheader, %scalar.ph821
  %indvars.iv725 = phi i64 [ %indvars.iv.next726, %scalar.ph821 ], [ %indvars.iv725.ph, %scalar.ph821.preheader ] ; 5 uses
  %gep764 = getelementptr [8 x i8], ptr %invariant.gep763, i64 %indvars.iv725 ; 2 uses
  %i.vx = load double, ptr %gep764, align 8, !tbaa !31
  %gep766 = getelementptr [8 x i8], ptr %invariant.gep765, i64 %indvars.iv725
  %i.vy = load double, ptr %gep766, align 8, !tbaa !31
  %i.vz = fneg double %i.vy
  %i.wa = call double @llvm.fmuladd.f64(double %i.vz, double %i.uo, double %i.vx)
  %gep768 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %indvars.iv725
  %i.wb = load double, ptr %gep768, align 8, !tbaa !31
  %i.wc = fneg double %i.wb
  %i.wd = call double @llvm.fmuladd.f64(double %i.wc, double %i.ur, double %i.wa)
  store double %i.wd, ptr %gep764, align 8, !tbaa !31
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1
  %.not559.not = icmp slt i64 %indvars.iv725, %i.tr
  br i1 %.not559.not, label %scalar.ph821, label %.loopexit841, !llvm.loop !27

.loopexit841:                                     ; preds = %scalar.ph821, %middle.block838
  store double %i.uo, ptr %gep770, align 8, !tbaa !31
  %gep774 = getelementptr [8 x i8], ptr %invariant.gep773, i64 %indvars.iv723
  store double %i.ur, ptr %gep774, align 8, !tbaa !31
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %lftr.wideiv729 = trunc i64 %indvars.iv.next724 to i32
  %exitcond730.not = icmp eq i32 %i.tt, %lftr.wideiv729
  %indvar.next805 = add i64 %indvar804, 1
  br i1 %exitcond730.not, label %.loopexit, label %bb.an, !llvm.loop !28

bb.ao:                                            ; preds = %bb.ak, %.thread620, %bb.z, %bb.y
  %.3523.ph = phi i32 [ %.1531691, %bb.y ], [ %.1531691, %bb.z ], [ %.2522610618625, %.thread620 ], [ %.2522610618625, %bb.ak ]
  %.3507.ph = phi i32 [ %.1525694, %bb.y ], [ %.1525694, %bb.z ], [ %.2506619624, %.thread620 ], [ %.2506619624, %bb.ak ]
  %i.we = zext nneg i32 %.1531691 to i64
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.we
  store i32 %.3523.ph, ptr %i.wf, align 4, !tbaa !29
  br label %bb.ap

.loopexit:                                        ; preds = %.loopexit841, %bb.am, %bb.al
  %i.wg = zext nneg i32 %.1531691 to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.wg ; 2 uses
  store i32 %i.ku, ptr %i.wh, align 4, !tbaa !29
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 4
  store i32 %i.ku, ptr %i.wi, align 4, !tbaa !29
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit, %bb.ao
  %.3507640 = phi i32 [ %.2506750, %.loopexit ], [ %.3507.ph, %bb.ao ]
  %.3529637 = phi i32 [ 2, %.loopexit ], [ 1, %bb.ao ]
  %i.wj = add nuw nsw i32 %.3529637, %.1531691    ; 4 uses
  %i.wk = load i32, ptr %1, align 4, !tbaa !29    ; 3 uses
  %i.wl = add i32 %.3507640, 2
  %i.wm = add i32 %i.wl, %i.wk
  %i.wn = sub i32 %i.wm, %i.wj
  %.1531.neg = sub nsw i32 0, %i.wj
  %i.wo = icmp sgt i32 %i.wj, %i.wk
  br i1 %i.wo, label %.loopexit646, label %.lr.ph698

.loopexit646:                                     ; preds = %bb.u, %bb.ap, %bb.f, %bb.v, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dspr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
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
!8 = distinct !{!8, !32}
!9 = distinct !{!9, !33}
!10 = distinct !{!10, !33}
!11 = distinct !{!11, i1 false, !"LVerDomain"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !33, !38, !39}
!16 = distinct !{!16, !33, !38}
!17 = distinct !{!17, !33}
!18 = distinct !{!18, !32}
!19 = distinct !{!19, !33}
end_hunk_1
