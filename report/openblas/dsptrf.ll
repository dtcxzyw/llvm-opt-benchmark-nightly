Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsptrf?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dsptrf_:bb.a
  %i.da = trunc i64 %indvars.iv to i32
  %i.db = add i32 %i.da, 3
  %i.dc = add nsw i32 %i.cr, %i.db
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.ay, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa846 = phi double [ %.lcssa846.unr, %.lr.ph.prol.loopexit ], [ %i.cu, %.lr.ph ]
  %.1509.lcssa = phi double [ %.1509.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1509.3, %.lr.ph ]
  store double %.lcssa846, ptr %i.b, align 8, !tbaa !9
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
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !8
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.di
  %i.dk = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dj, ptr noundef nonnull @c__1) #4
  %i.dl = add i32 %i.dk, %i.df
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !9 ; 3 uses
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
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !9 ; 2 uses
  store double %i.ea, ptr %i.b, align 8, !tbaa !9
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
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !8
  %i.eh = sext i32 %spec.select to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.eh
  %i.ej = sext i32 %i.dg to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ej
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ei, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ek, ptr noundef nonnull @c__1) #4
  store i32 %i.ee, ptr %i.a, align 4, !tbaa !8
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
  %i.er = load double, ptr %i.eq, align 8, !tbaa !9
  %i.es = sext i32 %i.en to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !9
  store double %i.eu, ptr %i.eq, align 8, !tbaa !9
  store double %i.er, ptr %i.et, align 8, !tbaa !9
  %exitcond706.not = icmp eq i64 %indvars.iv.next704, %wide.trip.count
  br i1 %exitcond706.not, label %._crit_edge658, label %.lr.ph657, !llvm.loop !15

._crit_edge658:                                   ; preds = %.lr.ph657, %bb.q
  %i.ev = add i32 %i.ee, %spec.select
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ew ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !9
  %i.ez = load double, ptr %i.dz, align 8, !tbaa !9
  store double %i.ez, ptr %i.ex, align 8, !tbaa !9
  store double %i.ey, ptr %i.dz, align 8, !tbaa !9
  br i1 %cond.fr, label %.split, label %.thread584

.split:                                           ; preds = %._crit_edge658
  %i.fa = getelementptr i8, ptr %i.t, i64 -16     ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !9
  %i.fc = add nsw i32 %.1541, %.0524667
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr [8 x i8], ptr %i.e, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -8     ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !9
  store double %i.fg, ptr %i.fa, align 8, !tbaa !9
  store double %i.fb, ptr %i.ff, align 8, !tbaa !9
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  br i1 %cond.fr, label %bb.s, label %.thread584

.thread584:                                       ; preds = %._crit_edge658, %bb.k, %bb.o, %bb.r
  %.0520576583587 = phi i32 [ %.1541, %._crit_edge658 ], [ %.1541, %bb.r ], [ %.0530664, %bb.o ], [ %.0530664, %bb.k ]
  %i.fh = load double, ptr %i.u, align 8, !tbaa !9
  %i.fi = fdiv double 1.000000e+00, %i.fh         ; 2 uses
  store double %i.fi, ptr %i.c, align 8, !tbaa !9
  %i.fj = add nsw i32 %.0530664, -1               ; 2 uses
  store i32 %i.fj, ptr %i.a, align 4, !tbaa !8
  %i.fk = fneg double %i.fi
  store double %i.fk, ptr %i.b, align 8, !tbaa !9
  %i.fl = sext i32 %.0524667 to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fl ; 2 uses
  call void @dspr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fm, ptr noundef nonnull @c__1, ptr noundef nonnull %2) #4
  store i32 %i.fj, ptr %i.a, align 4, !tbaa !8
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.fm, ptr noundef nonnull @c__1) #4
  br label %bb.t

bb.s:                                             ; preds = %.split, %bb.r
  %i.fn = icmp samesign ugt i32 %.0530664, 2
  br i1 %i.fn, label %.lr.ph662.preheader, label %.loopexit647

.lr.ph662.preheader:                              ; preds = %bb.s
  %i.fo = add nsw i32 %.0530664, -1               ; 4 uses
  %i.fp = mul nsw i32 %i.fo, %.0530664
  %i.fq = lshr i32 %i.fp, 1                       ; 3 uses
  %i.fr = add nuw nsw i32 %i.fq, %i.fo
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !9 ; 3 uses
  %i.fv = add nsw i32 %.0530664, -2               ; 2 uses
  %i.fw = mul nsw i32 %i.fv, %i.fo
  %i.fx = lshr i32 %i.fw, 1                       ; 2 uses
  %i.fy = add nuw nsw i32 %i.fx, %i.fo
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !9
  %i.gc = fdiv double %i.gb, %i.fu                ; 2 uses
  %i.gd = add nuw nsw i32 %i.fq, %.0530664
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !9
  %i.gh = fdiv double %i.gg, %i.fu                ; 2 uses
  %i.gi = call double @llvm.fmuladd.f64(double %i.gh, double %i.gc, double -1.000000e+00)
  %i.gj = fdiv double 1.000000e+00, %i.gi
  %i.gk = fdiv double %i.gj, %i.fu                ; 2 uses
  %i.gl = zext i32 %i.fv to i64                   ; 5 uses
  %i.gm = zext nneg i32 %i.fq to i64              ; 3 uses
  %i.gn = zext nneg i32 %i.fx to i64              ; 3 uses
  %invariant.gep757 = getelementptr [8 x i8], ptr %i.e, i64 %i.gn
  %invariant.gep759 = getelementptr [8 x i8], ptr %i.e, i64 %i.gm
  %invariant.gep753 = getelementptr [8 x i8], ptr %i.e, i64 %i.gm ; 2 uses
  %invariant.gep755 = getelementptr [8 x i8], ptr %i.e, i64 %i.gn ; 2 uses
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
  %indvar = phi i64 [ 0, %.lr.ph662.preheader ], [ %indvar.next, %.loopexit842 ] ; 3 uses
  %indvars.iv707 = phi i64 [ %i.gl, %.lr.ph662.preheader ], [ %indvars.iv.next708, %.loopexit842 ] ; 12 uses
  %i.hg = trunc i64 %indvars.iv707 to i32         ; 2 uses
  %i.hh = sub i64 %indvar, %i.gl
  %reass.sub843 = shl i64 %i.hh, 1
  %i.hi = add i64 %reass.sub843, -4294967294
  %gep758 = getelementptr [8 x i8], ptr %invariant.gep757, i64 %indvars.iv707 ; 2 uses
  %i.hj = load double, ptr %gep758, align 8, !tbaa !9 ; 2 uses
  %gep760 = getelementptr [8 x i8], ptr %invariant.gep759, i64 %indvars.iv707 ; 2 uses
  %i.hk = load double, ptr %gep760, align 8, !tbaa !9 ; 2 uses
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
  %5 = call i32 @llvm.smin.i32(i32 %i.hg, i32 1)
  %6 = sub i32 %i.hg, %5                          ; 2 uses
  %7 = zext i32 %6 to i64
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %6, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph662
  %i.hv = mul nsw i64 %indvar, -8                 ; 6 uses
  %scevgep783 = getelementptr i8, ptr %i.gu, i64 %i.hv
  %scevgep781 = getelementptr i8, ptr %i.gx, i64 %i.hv
  %i.hw = trunc i64 %indvars.iv707 to i32         ; 2 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.hw, i32 1)
  %i.hx = sub i32 %i.hw, %smin
  %i.hy = zext i32 %i.hx to i64                   ; 2 uses
  %i.hz = mul nsw i64 %i.hy, -8                   ; 2 uses
  %scevgep782 = getelementptr i8, ptr %scevgep781, i64 %i.hz
  %scevgep780 = getelementptr i8, ptr %i.gz, i64 %i.hv
  %scevgep778 = getelementptr i8, ptr %i.hc, i64 %i.hv
  %scevgep779 = getelementptr i8, ptr %scevgep778, i64 %i.hz
  %scevgep776 = getelementptr i8, ptr %i.hd, i64 %i.hv
  %i.ia = shl i64 %scev.check.iv, 2
  %i.ib = and i64 %i.ia, 17179869176              ; 2 uses
  %scevgep777 = getelementptr i8, ptr %scevgep776, i64 %i.ib ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hf, i64 %i.hv
  %i.ic = shl nuw nsw i64 %i.hy, 3
  %i.id = sub nsw i64 %i.ib, %i.ic
  %scevgep775 = getelementptr i8, ptr %scevgep, i64 %i.id ; 2 uses
  %bound0 = icmp ult ptr %scevgep775, %scevgep780
  %bound1 = icmp ult ptr %scevgep779, %scevgep777
  %found.conflict = and i1 %bound0, %bound1
  %bound0784 = icmp ult ptr %scevgep775, %scevgep783
  %bound1785 = icmp ult ptr %scevgep782, %scevgep777
  %found.conflict786 = and i1 %bound0784, %bound1785
  %conflict.rdx = or i1 %found.conflict, %found.conflict786
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %8, 8589934584                 ; 3 uses
  %i.ie = sub i64 %indvars.iv707, %n.vec
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.hn, i64 0 ; 2 uses
  %broadcast.splatinsert788 = insertelement <4 x double> poison, double %i.hq, i64 0 ; 2 uses
  %i.if = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ig = shufflevector <4 x double> %broadcast.splatinsert788, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ih = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ii = shufflevector <4 x double> %broadcast.splatinsert788, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ij = sub i64 %indvars.iv707, %index          ; 3 uses
  %i.ik = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ij ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 -24    ; 2 uses
  %i.im = getelementptr i8, ptr %i.ik, i64 -56    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.il, align 8, !tbaa !9, !alias.scope !16, !noalias !19
  %wide.load790 = load <4 x double>, ptr %i.im, align 8, !tbaa !9, !alias.scope !16, !noalias !19
  %i.in = getelementptr [8 x i8], ptr %invariant.gep753, i64 %i.ij ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 -24
  %i.ip = getelementptr i8, ptr %i.in, i64 -56
  %wide.load792.a = load <4 x double>, ptr %i.io, align 8, !tbaa !9, !alias.scope !22
  %wide.load793 = load <4 x double>, ptr %i.ip, align 8, !tbaa !9, !alias.scope !22
  %i.iq = fneg <4 x double> %wide.load792.a
  %i.ir = fneg <4 x double> %wide.load793
  %i.is = getelementptr [8 x i8], ptr %invariant.gep755, i64 %i.ij ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 -24
  %i.iu = getelementptr i8, ptr %i.is, i64 -56
  %wide.load796.a = load <4 x double>, ptr %i.it, align 8, !tbaa !9, !alias.scope !23
  %wide.load797 = load <4 x double>, ptr %i.iu, align 8, !tbaa !9, !alias.scope !23
  %i.iv = fneg <4 x double> %wide.load796.a
  %i.iw = fneg <4 x double> %wide.load797
  %i.ix = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iq, <4 x double> %i.ig, <4 x double> %wide.load)
  %reverse800.a = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.if, <4 x double> %i.ix)
  %i.iy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ir, <4 x double> %i.ii, <4 x double> %wide.load790)
  %reverse801 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iw, <4 x double> %i.ih, <4 x double> %i.iy)
  store <4 x double> %reverse800.a, ptr %i.il, align 8, !tbaa !9, !alias.scope !16, !noalias !19
  store <4 x double> %reverse801, ptr %i.im, align 8, !tbaa !9, !alias.scope !16, !noalias !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %.loopexit842, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph662, %middle.block
  %indvars.iv709.ph = phi i64 [ %indvars.iv707, %vector.memcheck ], [ %indvars.iv707, %.lr.ph662 ], [ %i.ie, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv709 = phi i64 [ %indvars.iv.next710, %scalar.ph ], [ %indvars.iv709.ph, %scalar.ph.preheader ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv709 ; 2 uses
  %i.ja = load double, ptr %gep, align 8, !tbaa !9
  %gep754 = getelementptr [8 x i8], ptr %invariant.gep753, i64 %indvars.iv709
  %i.jb = load double, ptr %gep754, align 8, !tbaa !9
  %i.jc = fneg double %i.jb
  %i.jd = call double @llvm.fmuladd.f64(double %i.jc, double %i.hq, double %i.ja)
  %gep756 = getelementptr [8 x i8], ptr %invariant.gep755, i64 %indvars.iv709
  %i.je = load double, ptr %gep756, align 8, !tbaa !9
  %i.jf = fneg double %i.je
  %i.jg = call double @llvm.fmuladd.f64(double %i.jf, double %i.hn, double %i.jd)
  store double %i.jg, ptr %gep, align 8, !tbaa !9
  %indvars.iv.next710 = add nsw i64 %indvars.iv709, -1
  %i.jh = trunc nuw i64 %indvars.iv709 to i32
  %i.ji = icmp sgt i32 %i.jh, 1
  br i1 %i.ji, label %scalar.ph, label %.loopexit842, !llvm.loop !27

.loopexit842:                                     ; preds = %scalar.ph, %middle.block
  store double %i.hq, ptr %gep760, align 8, !tbaa !9
  store double %i.hn, ptr %gep758, align 8, !tbaa !9
  %i.jj = icmp samesign ugt i64 %indvars.iv707, 1
  %indvar.next = add i64 %indvar, 1
  %scev.check.iv.next = add i64 %scev.check.iv, %i.hi
  br i1 %i.jj, label %.lr.ph662, label %.loopexit647, !llvm.loop !28

bb.t:                                             ; preds = %.thread584, %bb.j, %bb.i
  %.1521.ph = phi i32 [ %.0530664, %bb.i ], [ %.0530664, %bb.j ], [ %.0520576583587, %.thread584 ]
  %i.jk = zext nneg i32 %.0530664 to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jk
  store i32 %.1521.ph, ptr %i.jl, align 4, !tbaa !8
  br label %bb.u

.loopexit647:                                     ; preds = %.loopexit842, %bb.s
  %i.jm = sub nsw i32 0, %.1541                   ; 2 uses
  %i.jn = zext nneg i32 %.0530664 to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jn ; 2 uses
  store i32 %i.jm, ptr %i.jo, align 4, !tbaa !8
  %i.jp = getelementptr i8, ptr %i.jo, i64 -4
  store i32 %i.jm, ptr %i.jp, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %.loopexit647, %bb.t
  %.1505601 = phi i32 [ %spec.select, %.loopexit647 ], [ %.0524667, %bb.t ]
  %.1527.neg598 = phi i32 [ -2, %.loopexit647 ], [ -1, %bb.t ]
  %i.jq = add nsw i32 %.1527.neg598, %.0530664    ; 3 uses
  %i.jr = sub nsw i32 %.1505601, %i.jq
  %i.js = icmp slt i32 %i.jq, 1
  br i1 %i.js, label %.loopexit646, label %.lr.ph669

bb.v:                                             ; preds = %bb.e
  %i.jt = add nuw nsw i32 %i.h, 1
  %i.ju = mul nuw nsw i32 %i.jt, %i.h
  %i.jv = lshr i32 %i.ju, 1
  %i.jw = icmp eq i32 %i.h, 0
  br i1 %i.jw, label %.loopexit646, label %.lr.ph698

.lr.ph698:                                        ; preds = %bb.v, %bb.ap
  %i.jx = phi i32 [ %i.wf, %bb.ap ], [ %i.h, %bb.v ] ; 2 uses
  %.1531.neg696 = phi i32 [ %.1531.neg, %bb.ap ], [ -1, %bb.v ] ; 5 uses
  %.1525694 = phi i32 [ %i.wi, %bb.ap ], [ 1, %bb.v ] ; 12 uses
  %.1531691 = phi i32 [ %i.we, %bb.ap ], [ 1, %bb.v ] ; 28 uses
  %.2542690 = phi i32 [ %.3543, %bb.ap ], [ undef, %bb.v ]
  %i.jy = sext i32 %.1525694 to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.jy ; 5 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !9 ; 4 uses
  store double %i.ka, ptr %i.b, align 8, !tbaa !9
  %i.kb = fcmp oge double %i.ka, 0.000000e+00
  %i.kc = fneg double %i.ka
  %i.kd = select i1 %i.kb, double %i.ka, double %i.kc ; 4 uses
  %i.ke = icmp slt i32 %.1531691, %i.jx
  br i1 %i.ke, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph698
  %i.kf = sub nsw i32 %i.jx, %.1531691
  store i32 %i.kf, ptr %i.a, align 4, !tbaa !8
  %i.kg = getelementptr i8, ptr %i.jz, i64 8
  %i.kh = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.kg, ptr noundef nonnull @c__1) #4
  %i.ki = add nsw i32 %i.kh, %.1531691            ; 2 uses
  %i.kj = add i32 %.1525694, %.1531.neg696
  %i.kk = add i32 %i.kj, %i.ki
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.kl
  %i.kn = load double, ptr %i.km, align 8, !tbaa !9 ; 4 uses
  store double %i.kn, ptr %i.b, align 8, !tbaa !9
  %i.ko = fcmp oge double %i.kn, 0.000000e+00
  %i.kp = fneg double %i.kn
  %i.kq = select i1 %i.ko, double %i.kn, double %i.kp
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph698, %bb.w
  %.3543 = phi i32 [ %i.ki, %bb.w ], [ %.2542690, %.lr.ph698 ] ; 19 uses
  %.1515 = phi double [ %i.kq, %bb.w ], [ 0.000000e+00, %.lr.ph698 ] ; 4 uses
  %i.kr = sub i32 0, %.3543                       ; 2 uses
  %i.ks = fcmp oge double %i.kd, %.1515
  %i.kt = select i1 %i.ks, double %i.kd, double %.1515
  %i.ku = fcmp oeq double %i.kt, 0.000000e+00
  br i1 %i.ku, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.kv = load i32, ptr %4, align 4, !tbaa !8
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.z, label %bb.ao

bb.z:                                             ; preds = %bb.y
  store i32 %.1531691, ptr %4, align 4, !tbaa !8
  br label %bb.ao

bb.aa:                                            ; preds = %bb.x
  %i.kx = fmul double %.1515, f0x3FE47E0F66AFED07 ; 2 uses
  %i.ky = fcmp ult double %i.kd, %i.kx
  br i1 %i.ky, label %bb.ab, label %.thread620

bb.ab:                                            ; preds = %bb.aa
  %i.kz = add nsw i32 %.3543, -1                  ; 2 uses
  store i32 %i.kz, ptr %i.a, align 4, !tbaa !8
  %.not555.not670 = icmp slt i32 %.1531691, %.3543
  %.pre = load i32, ptr %1, align 4, !tbaa !8     ; 7 uses
  br i1 %.not555.not670, label %.lr.ph675, label %bb.ac

.lr.ph675:                                        ; preds = %bb.ab
  %i.la = add i32 %.1525694, %.1531.neg696
  %i.lb = add i32 %i.la, %.3543                   ; 2 uses
  %i.lc = zext nneg i32 %.1531691 to i64          ; 4 uses
  %wide.trip.count716 = zext i32 %.3543 to i64    ; 3 uses
  %i.ld = sub nsw i64 %wide.trip.count716, %i.lc
  %xtraiter847 = and i64 %i.ld, 3                 ; 2 uses
  %lcmp.mod848.not = icmp eq i64 %xtraiter847, 0
  br i1 %lcmp.mod848.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph675, %.prol.preheader
  %indvars.iv713.prol = phi i64 [ %indvars.iv.next714.prol, %.prol.preheader ], [ %i.lc, %.lr.ph675 ] ; 2 uses
  %.3511673.prol = phi double [ %.4512.prol, %.prol.preheader ], [ 0.000000e+00, %.lr.ph675 ] ; 2 uses
  %.2518672.prol = phi i32 [ %i.lo, %.prol.preheader ], [ %i.lb, %.lr.ph675 ] ; 2 uses
  %prol.iter849 = phi i64 [ %prol.iter849.next, %.prol.preheader ], [ 0, %.lr.ph675 ]
  %i.le = sext i32 %.2518672.prol to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.le
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !9 ; 5 uses
  %i.lh = call double @llvm.fabs.f64(double %i.lg)
  %i.li = fcmp ogt double %i.lh, %.3511673.prol
  %i.lj = fcmp oge double %i.lg, 0.000000e+00
  %i.lk = fneg double %i.lg
  %i.ll = select i1 %i.lj, double %i.lg, double %i.lk
  %.4512.prol = select i1 %i.li, double %i.ll, double %.3511673.prol ; 3 uses
  %i.lm = trunc nuw nsw i64 %indvars.iv713.prol to i32
  %i.ln = sub i32 %.2518672.prol, %i.lm
  %i.lo = add i32 %i.ln, %.pre                    ; 2 uses
  %indvars.iv.next714.prol = add nuw nsw i64 %indvars.iv713.prol, 1 ; 2 uses
  %prol.iter849.next = add i64 %prol.iter849, 1   ; 2 uses
  %prol.iter849.cmp.not = icmp eq i64 %prol.iter849.next, %xtraiter847
  br i1 %prol.iter849.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !29

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph675
  %.lcssa.unr = phi double [ poison, %.lr.ph675 ], [ %i.lg, %.prol.preheader ]
  %.4512.lcssa.unr = phi double [ poison, %.lr.ph675 ], [ %.4512.prol, %.prol.preheader ]
  %indvars.iv713.unr = phi i64 [ %i.lc, %.lr.ph675 ], [ %indvars.iv.next714.prol, %.prol.preheader ]
  %.3511673.unr = phi double [ 0.000000e+00, %.lr.ph675 ], [ %.4512.prol, %.prol.preheader ]
  %.2518672.unr = phi i32 [ %i.lb, %.lr.ph675 ], [ %i.lo, %.prol.preheader ]
  %i.lp = sub nsw i64 %i.lc, %wide.trip.count716
  %i.lq = icmp ugt i64 %i.lp, -4
  br i1 %i.lq, label %._crit_edge676, label %.lr.ph675.new

.lr.ph675.new:                                    ; preds = %.prol.loopexit, %.lr.ph675.new
  %indvars.iv713 = phi i64 [ %indvars.iv.next714.3, %.lr.ph675.new ], [ %indvars.iv713.unr, %.prol.loopexit ] ; 5 uses
  %.3511673 = phi double [ %.4512.3, %.lr.ph675.new ], [ %.3511673.unr, %.prol.loopexit ] ; 2 uses
  %.2518672 = phi i32 [ %i.nk, %.lr.ph675.new ], [ %.2518672.unr, %.prol.loopexit ] ; 2 uses
  %i.lr = sext i32 %.2518672 to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.lr
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !9 ; 4 uses
  %i.lu = call double @llvm.fabs.f64(double %i.lt)
  %i.lv = fcmp ogt double %i.lu, %.3511673
  %i.lw = fcmp oge double %i.lt, 0.000000e+00
  %i.lx = fneg double %i.lt
  %i.ly = select i1 %i.lw, double %i.lt, double %i.lx
  %.4512 = select i1 %i.lv, double %i.ly, double %.3511673 ; 2 uses
  %i.lz = trunc nuw nsw i64 %indvars.iv713 to i32
  %i.ma = sub i32 %.2518672, %i.lz
  %i.mb = add i32 %i.ma, %.pre                    ; 2 uses
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.mc
  %i.me = load double, ptr %i.md, align 8, !tbaa !9 ; 4 uses
  %i.mf = call double @llvm.fabs.f64(double %i.me)
  %i.mg = fcmp ogt double %i.mf, %.4512
  %i.mh = fcmp oge double %i.me, 0.000000e+00
  %i.mi = fneg double %i.me
  %i.mj = select i1 %i.mh, double %i.me, double %i.mi
  %.4512.1 = select i1 %i.mg, double %i.mj, double %.4512 ; 2 uses
  %i.mk = trunc i64 %indvars.iv713 to i32
  %.neg855 = xor i32 %i.mk, -1
  %i.ml = add i32 %i.mb, %.neg855
  %i.mm = add i32 %i.ml, %.pre                    ; 2 uses
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.mn
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !9 ; 4 uses
end_hunk_0
begin_hunk_1_@dsptrf_:bb.a
  %i.pp = sext i32 %.reass.prol to i64
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pp ; 2 uses
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !9
  store double %i.pr, ptr %i.pn, align 8, !tbaa !9
  store double %i.po, ptr %i.pq, align 8, !tbaa !9
  %indvars.iv.next719.prol = add nuw nsw i64 %indvars.iv718.prol, 1 ; 2 uses
  %prol.iter854.next = add i64 %prol.iter854, 1   ; 2 uses
  %prol.iter854.cmp.not = icmp eq i64 %prol.iter854.next, %xtraiter852
  br i1 %prol.iter854.cmp.not, label %.prol.loopexit851, label %.prol.preheader850, !llvm.loop !31

.prol.loopexit851:                                ; preds = %.prol.preheader850, %.lr.ph683
  %indvars.iv718.unr = phi i64 [ %i.ph, %.lr.ph683 ], [ %indvars.iv.next719.prol, %.prol.preheader850 ]
  %.3519681.unr = phi i32 [ %i.pe, %.lr.ph683 ], [ %.reass.prol, %.prol.preheader850 ]
  %i.ps = sub nsw i64 %i.ph, %i.pi
  %i.pt = icmp ugt i64 %i.ps, -4
  br i1 %i.pt, label %._crit_edge684, label %.lr.ph683.new

.lr.ph683.new:                                    ; preds = %.prol.loopexit851, %.lr.ph683.new
  %indvars.iv718 = phi i64 [ %indvars.iv.next719.3, %.lr.ph683.new ], [ %indvars.iv718.unr, %.prol.loopexit851 ] ; 5 uses
  %.3519681 = phi i32 [ %.reass.3, %.lr.ph683.new ], [ %.3519681.unr, %.prol.loopexit851 ]
  %i.pu = trunc nsw i64 %indvars.iv718 to i32     ; 2 uses
  %reass.sub699 = sub i32 %.3519681, %i.pu
  %.reass = add i32 %reass.sub699, %invariant.op  ; 2 uses
  %i.pv = add i32 %i.pg, %i.pu
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pw ; 2 uses
  %i.py = load double, ptr %i.px, align 8, !tbaa !9
  %i.pz = sext i32 %.reass to i64
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pz ; 2 uses
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !9
  store double %i.qb, ptr %i.px, align 8, !tbaa !9
  store double %i.py, ptr %i.qa, align 8, !tbaa !9
  %i.qc = trunc i64 %indvars.iv718 to i32
  %i.qd = add i32 %i.qc, 1                        ; 2 uses
  %reass.sub699.1 = sub i32 %.reass, %i.qd
  %.reass.1 = add i32 %reass.sub699.1, %invariant.op ; 2 uses
  %i.qe = add i32 %i.pg, %i.qd
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qf ; 2 uses
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !9
  %i.qi = sext i32 %.reass.1 to i64
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qi ; 2 uses
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !9
  store double %i.qk, ptr %i.qg, align 8, !tbaa !9
  store double %i.qh, ptr %i.qj, align 8, !tbaa !9
  %i.ql = trunc i64 %indvars.iv718 to i32
  %i.qm = add i32 %i.ql, 2                        ; 2 uses
  %reass.sub699.2 = sub i32 %.reass.1, %i.qm
  %.reass.2 = add i32 %reass.sub699.2, %invariant.op ; 2 uses
  %i.qn = add i32 %i.pg, %i.qm
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qo ; 2 uses
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !9
  %i.qr = sext i32 %.reass.2 to i64
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qr ; 2 uses
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !9
  store double %i.qt, ptr %i.qp, align 8, !tbaa !9
  store double %i.qq, ptr %i.qs, align 8, !tbaa !9
  %i.qu = trunc i64 %indvars.iv718 to i32
  %i.qv = add i32 %i.qu, 3                        ; 2 uses
  %reass.sub699.3 = sub i32 %.reass.2, %i.qv
  %.reass.3 = add i32 %reass.sub699.3, %invariant.op ; 2 uses
  %i.qw = add i32 %i.pg, %i.qv
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qx ; 2 uses
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !9
  %i.ra = sext i32 %.reass.3 to i64
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ra ; 2 uses
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !9
  store double %i.rc, ptr %i.qy, align 8, !tbaa !9
  store double %i.qz, ptr %i.rb, align 8, !tbaa !9
  %indvars.iv.next719.3 = add nuw nsw i64 %indvars.iv718, 4 ; 2 uses
  %.not557.not.3 = icmp slt i64 %indvars.iv.next719.3, %i.pi
  br i1 %.not557.not.3, label %.lr.ph683.new, label %._crit_edge684, !llvm.loop !32

._crit_edge684:                                   ; preds = %.prol.loopexit851, %.lr.ph683.new, %bb.aj
  %i.rd = sext i32 %.2506746 to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.rd ; 2 uses
  %i.rf = load double, ptr %i.re, align 8, !tbaa !9
  %i.rg = load double, ptr %i.oj, align 8, !tbaa !9
  store double %i.rg, ptr %i.re, align 8, !tbaa !9
  store double %i.rf, ptr %i.oj, align 8, !tbaa !9
  br i1 %i.on, label %.split627, label %.thread620

.split627:                                        ; preds = %._crit_edge684
  %i.rh = getelementptr i8, ptr %i.jz, i64 8      ; 2 uses
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !9
  %i.rj = add i32 %.1525694, %.1531.neg696
  %i.rk = add i32 %i.rj, %.3543
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.rl ; 2 uses
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !9
  store double %i.rn, ptr %i.rh, align 8, !tbaa !9
  store double %i.ri, ptr %i.rm, align 8, !tbaa !9
  br label %bb.al

.thread620:                                       ; preds = %.thread743, %._crit_edge684, %bb.aa, %bb.ae
  %.2522610618625 = phi i32 [ %.1531691, %bb.aa ], [ %.3543, %.thread743 ], [ %.1531691, %bb.ae ], [ %.3543, %._crit_edge684 ] ; 2 uses
  %.2506619624 = phi i32 [ %.1525694, %bb.aa ], [ %.1525694, %.thread743 ], [ %.1525694, %bb.ae ], [ %.2506746, %._crit_edge684 ] ; 2 uses
  %i.ro = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %i.rp = icmp slt i32 %.1531691, %i.ro
  br i1 %i.rp, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %.thread620
  %i.rq = load double, ptr %i.jz, align 8, !tbaa !9
  %i.rr = fdiv double 1.000000e+00, %i.rq         ; 2 uses
  store double %i.rr, ptr %i.c, align 8, !tbaa !9
  %i.rs = sub nsw i32 %i.ro, %.1531691
  store i32 %i.rs, ptr %i.a, align 4, !tbaa !8
  %i.rt = fneg double %i.rr
  store double %i.rt, ptr %i.b, align 8, !tbaa !9
  %i.ru = getelementptr i8, ptr %i.jz, i64 8      ; 2 uses
  %i.rv = add i32 %.1525694, %.1531.neg696
  %i.rw = add i32 %i.rv, %i.ro
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr [8 x i8], ptr %i.e, i64 %i.rx
  %i.rz = getelementptr i8, ptr %i.ry, i64 8
  call void @dspr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.ru, ptr noundef nonnull @c__1, ptr noundef %i.rz) #4
  %i.sa = load i32, ptr %1, align 4, !tbaa !8
  %i.sb = sub nsw i32 %i.sa, %.1531691
  store i32 %i.sb, ptr %i.a, align 4, !tbaa !8
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.ru, ptr noundef nonnull @c__1) #4
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag, %.split627
  %.2506748 = phi i32 [ %.2506746, %.split627 ], [ %i.ot, %bb.ag ]
  %i.sc = load i32, ptr %1, align 4, !tbaa !8     ; 6 uses
  %i.sd = add nsw i32 %i.sc, -1
  %i.se = icmp slt i32 %.1531691, %i.sd
  br i1 %i.se, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.sf = add nuw nsw i32 %.1531691, 1            ; 2 uses
  %i.sg = add nsw i32 %.1531691, -1
  %i.sh = shl i32 %i.sc, 1                        ; 3 uses
  %i.si = sub nsw i32 %i.sh, %.1531691            ; 2 uses
  %i.sj = mul nsw i32 %i.si, %i.sg
  %i.sk = sdiv i32 %i.sj, 2                       ; 3 uses
  %i.sl = add nsw i32 %i.sk, %i.sf
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.sm
  %i.so = load double, ptr %i.sn, align 8, !tbaa !9 ; 3 uses
  %i.sp = add nsw i32 %i.si, -1
  %i.sq = mul nsw i32 %i.sp, %.1531691
  %i.sr = sdiv i32 %i.sq, 2                       ; 2 uses
  %i.ss = add nsw i32 %i.sr, %i.sf
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.st
  %i.sv = load double, ptr %i.su, align 8, !tbaa !9
  %i.sw = fdiv double %i.sv, %i.so                ; 2 uses
  %i.sx = add nsw i32 %i.sk, %.1531691
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.sy
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !9
  %i.tb = fdiv double %i.ta, %i.so                ; 2 uses
  %i.tc = call double @llvm.fmuladd.f64(double %i.sw, double %i.tb, double -1.000000e+00)
  %i.td = fdiv double 1.000000e+00, %i.tc
  %i.te = fdiv double %i.td, %i.so                ; 2 uses
  store i32 %i.sc, ptr %i.a, align 4, !tbaa !8
  %i.tf = add nuw nsw i32 %.1531691, 2            ; 2 uses
  %.not558686 = icmp sgt i32 %i.tf, %i.sc
  br i1 %.not558686, label %.loopexit, label %.lr.ph689

.lr.ph689:                                        ; preds = %bb.am
  %i.tg = xor i32 %.1531691, -1
  %i.th = add i32 %i.sh, %i.tg
  %i.ti = mul nsw i32 %i.th, %.1531691
  %i.tj = sdiv i32 %i.ti, 2
  %i.tk = zext nneg i32 %i.tf to i64
  %i.tl = sext i32 %i.sk to i64                   ; 3 uses
  %i.tm = sext i32 %i.sr to i64                   ; 3 uses
  %i.tn = sext i32 %i.sc to i64                   ; 3 uses
  %i.to = sext i32 %i.tj to i64
  %i.tp = add i32 %i.sc, 1
  %invariant.gep767 = getelementptr [8 x i8], ptr %i.e, i64 %i.tl
  %invariant.gep769 = getelementptr [8 x i8], ptr %i.e, i64 %i.tm
  %invariant.gep763 = getelementptr [8 x i8], ptr %i.e, i64 %i.tl ; 2 uses
  %invariant.gep765 = getelementptr [8 x i8], ptr %i.e, i64 %i.tm ; 2 uses
  %invariant.gep771 = getelementptr [8 x i8], ptr %i.e, i64 %i.to
  %i.tq = zext nneg i32 %.1531691 to i64          ; 2 uses
  %i.tr = shl nuw nsw i64 %i.tq, 3                ; 4 uses
  %i.ts = shl nsw i64 %i.tl, 3
  %i.tt = shl nsw i64 %i.tm, 3
  %i.tu = xor i32 %.1531691, -1
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr i8, ptr %2, i64 %i.tt
  %i.tx = getelementptr i8, ptr %i.tw, i64 16
  %i.ty = getelementptr i8, ptr %i.tx, i64 %i.tr
  %i.tz = getelementptr i8, ptr %2, i64 %i.ts
  %i.ua = getelementptr i8, ptr %i.tz, i64 16
  %i.ub = getelementptr i8, ptr %i.ua, i64 %i.tr
  %i.uc = getelementptr i8, ptr %2, i64 %i.tr
  %i.ud = getelementptr i8, ptr %i.uc, i64 16
  %i.ue = getelementptr i8, ptr %2, i64 %i.tr
  %i.uf = getelementptr i8, ptr %i.ue, i64 8
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph689, %.loopexit841
  %indvar803 = phi i64 [ 0, %.lr.ph689 ], [ %indvar.next804, %.loopexit841 ] ; 4 uses
  %indvars.iv721 = phi i64 [ %i.tk, %.lr.ph689 ], [ %indvars.iv.next722, %.loopexit841 ] ; 12 uses
  %i.ug = sub i64 %i.tv, %indvar803
  %indvars726 = trunc i64 %indvars.iv721 to i32
  %gep768 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %indvars.iv721 ; 3 uses
  %i.uh = load double, ptr %gep768, align 8, !tbaa !9 ; 2 uses
  %gep770 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %indvars.iv721 ; 2 uses
  %i.ui = load double, ptr %gep770, align 8, !tbaa !9 ; 2 uses
  %i.uj = fneg double %i.ui
  %i.uk = call double @llvm.fmuladd.f64(double %i.sw, double %i.uh, double %i.uj)
  %i.ul = fmul double %i.te, %i.uk                ; 3 uses
  %i.um = fneg double %i.uh
  %i.un = call double @llvm.fmuladd.f64(double %i.tb, double %i.ui, double %i.um)
  %i.uo = fmul double %i.te, %i.un                ; 3 uses
  %i.up = sub nsw i32 %i.sh, %indvars726
  %i.uq = trunc i64 %indvars.iv721 to i32
  %i.ur = add i32 %i.uq, -1
  %i.us = mul nsw i32 %i.ur, %i.up
  %i.ut = sdiv i32 %i.us, 2
  %i.uu = sext i32 %i.ut to i64                   ; 2 uses
  %invariant.gep761 = getelementptr [8 x i8], ptr %i.e, i64 %i.uu ; 2 uses
  %9 = call i64 @llvm.smax.i64(i64 %indvars.iv721, i64 %i.tn)
  %10 = add i64 %9, %i.ug                         ; 3 uses
  %min.iters.check822 = icmp ult i64 %10, 8
  br i1 %min.iters.check822, label %scalar.ph821.preheader, label %vector.memcheck802

vector.memcheck802:                               ; preds = %bb.an
  %i.uv = shl nuw nsw i64 %indvar803, 3           ; 4 uses
  %scevgep811.a = getelementptr i8, ptr %i.ty, i64 %i.uv
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv721, i64 %i.tn)
  %i.uw = add i64 %indvar803, %i.tq
  %reass.sub844 = sub i64 %smax, %i.uw
  %i.ux = shl i64 %reass.sub844, 3
  %i.uy = add i64 %i.ux, -16                      ; 3 uses
  %scevgep812 = getelementptr i8, ptr %scevgep811.a, i64 %i.uy
  %scevgep809.a = getelementptr i8, ptr %i.ub, i64 %i.uv
  %scevgep810 = getelementptr i8, ptr %scevgep809.a, i64 %i.uy
  %scevgep807.a = getelementptr i8, ptr %i.ud, i64 %i.uv
  %scevgep805.a = getelementptr i8, ptr %i.uf, i64 %i.uv
  %i.uz = shl nsw i64 %i.uu, 3                    ; 2 uses
  %scevgep806 = getelementptr i8, ptr %scevgep805.a, i64 %i.uz ; 2 uses
  %i.va = getelementptr i8, ptr %scevgep807.a, i64 %i.uy
  %scevgep808 = getelementptr i8, ptr %i.va, i64 %i.uz ; 2 uses
  %bound0813 = icmp ult ptr %scevgep806, %scevgep810
  %bound1814 = icmp ult ptr %gep768, %scevgep808
  %found.conflict815 = and i1 %bound0813, %bound1814
  %bound0816 = icmp ult ptr %scevgep806, %scevgep812
  %bound1817 = icmp ult ptr %gep770, %scevgep808
  %found.conflict818 = and i1 %bound0816, %bound1817
  %conflict.rdx819 = or i1 %found.conflict815, %found.conflict818
  br i1 %conflict.rdx819, label %scalar.ph821.preheader, label %vector.ph823

vector.ph823:                                     ; preds = %vector.memcheck802
  %n.vec824 = and i64 %10, -8                     ; 3 uses
  %i.vb = add i64 %indvars.iv721, %n.vec824
  %broadcast.splatinsert825.a = insertelement <4 x double> poison, double %i.ul, i64 0
  %broadcast.splat826.a = shufflevector <4 x double> %broadcast.splatinsert825.a, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert827 = insertelement <4 x double> poison, double %i.uo, i64 0
  %broadcast.splat828 = shufflevector <4 x double> %broadcast.splatinsert827, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph823
  %index830 = phi i64 [ 0, %vector.ph823 ], [ %index.next837, %vector.body829 ] ; 2 uses
  %i.vc = add nuw i64 %indvars.iv721, %index830   ; 3 uses
  %i.vd = getelementptr [8 x i8], ptr %invariant.gep761, i64 %i.vc ; 3 uses
  %i.ve = getelementptr i8, ptr %i.vd, i64 32     ; 2 uses
  %wide.load831.a = load <4 x double>, ptr %i.vd, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %wide.load832.a = load <4 x double>, ptr %i.ve, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %i.vf = getelementptr [8 x i8], ptr %invariant.gep763, i64 %i.vc ; 2 uses
  %i.vg = getelementptr i8, ptr %i.vf, i64 32
  %wide.load833.a = load <4 x double>, ptr %i.vf, align 8, !tbaa !9, !alias.scope !39
  %wide.load834.a = load <4 x double>, ptr %i.vg, align 8, !tbaa !9, !alias.scope !39
  %i.vh = fneg <4 x double> %wide.load833.a
  %i.vi = fneg <4 x double> %wide.load834.a
  %i.vj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vh, <4 x double> %broadcast.splat826.a, <4 x double> %wide.load831.a)
  %i.vk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vi, <4 x double> %broadcast.splat826.a, <4 x double> %wide.load832.a)
  %i.vl = getelementptr [8 x i8], ptr %invariant.gep765, i64 %i.vc ; 2 uses
  %i.vm = getelementptr i8, ptr %i.vl, i64 32
  %wide.load835 = load <4 x double>, ptr %i.vl, align 8, !tbaa !9, !alias.scope !40
  %wide.load836 = load <4 x double>, ptr %i.vm, align 8, !tbaa !9, !alias.scope !40
  %i.vn = fneg <4 x double> %wide.load835
  %i.vo = fneg <4 x double> %wide.load836
  %i.vp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vn, <4 x double> %broadcast.splat828, <4 x double> %i.vj)
  %i.vq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vo, <4 x double> %broadcast.splat828, <4 x double> %i.vk)
  store <4 x double> %i.vp, ptr %i.vd, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  store <4 x double> %i.vq, ptr %i.ve, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %index.next837 = add nuw i64 %index830, 8       ; 2 uses
  %i.vr = icmp eq i64 %index.next837, %n.vec824
  br i1 %i.vr, label %middle.block838, label %vector.body829, !llvm.loop !41

middle.block838:                                  ; preds = %vector.body829
  %cmp.n839 = icmp eq i64 %10, %n.vec824
  br i1 %cmp.n839, label %.loopexit841, label %scalar.ph821.preheader

scalar.ph821.preheader:                           ; preds = %vector.memcheck802, %bb.an, %middle.block838
  %indvars.iv723.ph = phi i64 [ %indvars.iv721, %vector.memcheck802 ], [ %indvars.iv721, %bb.an ], [ %i.vb, %middle.block838 ]
  br label %scalar.ph821

scalar.ph821:                                     ; preds = %scalar.ph821.preheader, %scalar.ph821
  %indvars.iv723 = phi i64 [ %indvars.iv.next724, %scalar.ph821 ], [ %indvars.iv723.ph, %scalar.ph821.preheader ] ; 5 uses
  %gep762 = getelementptr [8 x i8], ptr %invariant.gep761, i64 %indvars.iv723 ; 2 uses
  %i.vs = load double, ptr %gep762, align 8, !tbaa !9
  %gep764 = getelementptr [8 x i8], ptr %invariant.gep763, i64 %indvars.iv723
  %i.vt = load double, ptr %gep764, align 8, !tbaa !9
  %i.vu = fneg double %i.vt
  %i.vv = call double @llvm.fmuladd.f64(double %i.vu, double %i.ul, double %i.vs)
  %gep766 = getelementptr [8 x i8], ptr %invariant.gep765, i64 %indvars.iv723
  %i.vw = load double, ptr %gep766, align 8, !tbaa !9
  %i.vx = fneg double %i.vw
  %i.vy = call double @llvm.fmuladd.f64(double %i.vx, double %i.uo, double %i.vv)
  store double %i.vy, ptr %gep762, align 8, !tbaa !9
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1
  %.not559.not = icmp slt i64 %indvars.iv723, %i.tn
  br i1 %.not559.not, label %scalar.ph821, label %.loopexit841, !llvm.loop !42

.loopexit841:                                     ; preds = %scalar.ph821, %middle.block838
  store double %i.ul, ptr %gep768, align 8, !tbaa !9
  %gep772 = getelementptr [8 x i8], ptr %invariant.gep771, i64 %indvars.iv721
  store double %i.uo, ptr %gep772, align 8, !tbaa !9
  %indvars.iv.next722 = add nuw nsw i64 %indvars.iv721, 1 ; 2 uses
  %lftr.wideiv727 = trunc i64 %indvars.iv.next722 to i32
  %exitcond728.not = icmp eq i32 %i.tp, %lftr.wideiv727
  %indvar.next804 = add i64 %indvar803, 1
  br i1 %exitcond728.not, label %.loopexit, label %bb.an, !llvm.loop !43

bb.ao:                                            ; preds = %bb.ak, %.thread620, %bb.z, %bb.y
  %.3523.ph = phi i32 [ %.1531691, %bb.y ], [ %.1531691, %bb.z ], [ %.2522610618625, %.thread620 ], [ %.2522610618625, %bb.ak ]
  %.3507.ph = phi i32 [ %.1525694, %bb.y ], [ %.1525694, %bb.z ], [ %.2506619624, %.thread620 ], [ %.2506619624, %bb.ak ]
  %i.vz = zext nneg i32 %.1531691 to i64
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.vz
  store i32 %.3523.ph, ptr %i.wa, align 4, !tbaa !8
  br label %bb.ap

.loopexit:                                        ; preds = %.loopexit841, %bb.am, %bb.al
  %i.wb = zext nneg i32 %.1531691 to i64
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.wb ; 2 uses
  store i32 %i.kr, ptr %i.wc, align 4, !tbaa !8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  store i32 %i.kr, ptr %i.wd, align 4, !tbaa !8
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit, %bb.ao
  %.3507640 = phi i32 [ %.2506748, %.loopexit ], [ %.3507.ph, %bb.ao ]
  %.3529637 = phi i32 [ 2, %.loopexit ], [ 1, %bb.ao ]
  %i.we = add nuw nsw i32 %.3529637, %.1531691    ; 4 uses
  %i.wf = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %i.wg = add i32 %.3507640, 2
  %i.wh = add i32 %i.wg, %i.wf
  %i.wi = sub i32 %i.wh, %i.we
  %.1531.neg = sub nsw i32 0, %i.we
  %i.wj = icmp sgt i32 %i.we, %i.wf
  br i1 %i.wj, label %.loopexit646, label %.lr.ph698

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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20, !21}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = !{!20}
!23 = !{!21}
!24 = distinct !{!24, !14, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !14, !25}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !14}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37, !38}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !35}
!39 = !{!37}
!40 = !{!38}
!41 = distinct !{!41, !14, !25, !26}
!42 = distinct !{!42, !14, !25}
!43 = distinct !{!43, !14}
end_hunk_1
