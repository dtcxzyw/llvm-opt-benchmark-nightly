Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dggesx?download=true
begin_hunk_0_@dggesx_:bb.a
  %i.fe = add nsw i32 %i.fc, %i.fd
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ff
  %i.fh = mul nsw i32 %i.fb, %i.ac
  %i.fi = add nsw i32 %i.fc, %i.fh
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.fj
  call void @dlacpy_(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.fg, ptr noundef nonnull %9, ptr noundef %i.fk, ptr noundef nonnull %15) #5
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fl = load i32, ptr %21, align 4, !tbaa !12
  %reass.sub639 = sub i32 %i.fl, %i.ee
  %i.fm = add i32 %reass.sub639, 1
  store i32 %i.fm, ptr %i.a, align 4, !tbaa !12
  %i.fn = load i32, ptr %i.s, align 4, !tbaa !12
  %i.fo = add i32 %i.ac, 1
  %i.fp = mul i32 %i.fn, %i.fo
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.fq
  call void @dorgqr_(ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noundef %i.fr, ptr noundef nonnull %15, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.em, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f) #5
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %i.fs = load i32, ptr %i.i, align 4, !tbaa !12
  %.not556 = icmp eq i32 %i.fs, 0
  br i1 %.not556, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @dlaset_(ptr noundef nonnull @.str.15, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull @c_b42, ptr noundef nonnull @c_b43, ptr noundef %16, ptr noundef nonnull %17) #5
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @dgghrd_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %i.f) #5
  store i32 0, ptr %10, align 4, !tbaa !12
  %i.ft = load i32, ptr %21, align 4, !tbaa !12
  %reass.sub640 = sub i32 %i.ft, %i.dt
  %i.fu = add i32 %reass.sub640, 1
  store i32 %i.fu, ptr %i.a, align 4, !tbaa !12
  call void @dhgeqz_(ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f) #5
  %i.fv = load i32, ptr %i.f, align 4, !tbaa !12  ; 7 uses
  %.not558 = icmp eq i32 %i.fv, 0
  br i1 %.not558, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fw = icmp slt i32 %i.fv, 1
  %.pre = load i32, ptr %5, align 4, !tbaa !12    ; 5 uses
  %.not569 = icmp sgt i32 %i.fv, %.pre
  %or.cond677 = select i1 %i.fw, i1 true, i1 %.not569
  br i1 %or.cond677, label %bb.au, label %.loopexit.sink.split

bb.au:                                            ; preds = %bb.at
  %i.fx = icmp sle i32 %i.fv, %.pre
  %i.fy = shl i32 %.pre, 1
  %.not570 = icmp sgt i32 %i.fv, %i.fy
  %or.cond575 = or i1 %i.fx, %.not570
  br i1 %or.cond575, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fz = sub nsw i32 %i.fv, %.pre
  br label %.loopexit.sink.split

bb.aw:                                            ; preds = %bb.au
  %i.ga = add nsw i32 %.pre, 1
  br label %.loopexit.sink.split

bb.ax:                                            ; preds = %bb.as
  br i1 %.not543, label %bb.bk, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not552592, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %11, ptr noundef nonnull %5, ptr noundef nonnull %i.f) #5
  call void @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %i.f) #5
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  br i1 %.not554597, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.e, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %i.f) #5
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gb = load i32, ptr %5, align 4, !tbaa !12    ; 2 uses
  store i32 %i.gb, ptr %i.a, align 4, !tbaa !12
  %.not560617 = icmp slt i32 %i.gb, 1
  br i1 %.not560617, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.bc ] ; 6 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.gf = call i32 %3(ptr noundef nonnull %i.gc, ptr noundef nonnull %i.gd, ptr noundef nonnull %i.ge) #5
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.gh = load i32, ptr %i.a, align 4, !tbaa !12
  %i.gi = sext i32 %i.gh to i64
  %.not560.not = icmp slt i64 %indvars.iv, %i.gi
  br i1 %.not560.not, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.bc
  %i.gj = load i32, ptr %21, align 4, !tbaa !12
  %reass.sub641 = sub i32 %i.gj, %i.dt
  %i.gk = add i32 %reass.sub641, 1
  store i32 %i.gk, ptr %i.a, align 4, !tbaa !12
  call void @dtgsen_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %24, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %10, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.a, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %i.f) #5
  %i.gl = load i32, ptr %i.c, align 4, !tbaa !12  ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge
  store i32 %.1, ptr %i.a, align 4, !tbaa !12
  %i.gn = load i32, ptr %10, align 4, !tbaa !12   ; 2 uses
  %i.go = shl i32 %i.gn, 1
  %i.gp = load i32, ptr %5, align 4, !tbaa !12
  %i.gq = sub nsw i32 %i.gp, %i.gn
  %i.gr = mul nsw i32 %i.gq, %i.go                ; 2 uses
  store i32 %i.gr, ptr %i.b, align 4, !tbaa !12
  %i.gs = call i32 @llvm.smax.i32(i32 %.1, i32 %i.gr)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge
  %.3 = phi i32 [ %i.gs, %bb.bd ], [ %.1, %._crit_edge ] ; 2 uses
  %i.gt = load i32, ptr %i.f, align 4, !tbaa !12  ; 2 uses
  %i.gu = icmp eq i32 %i.gt, -22
  br i1 %i.gu, label %.sink.split678, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  switch i32 %i.gl, label %bb.bi [
    i32 4, label %bb.bg
    i32 1, label %bb.bg
    i32 2, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.gv = load double, ptr %i.k, align 8, !tbaa !14
  store double %i.gv, ptr %18, align 8, !tbaa !14
  %i.gw = load double, ptr %i.l, align 8, !tbaa !14
  %i.gx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store double %i.gw, ptr %i.gx, align 8, !tbaa !14
  switch i32 %i.gl, label %bb.bi [
    i32 4, label %bb.bh
    i32 2, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.bg
  %i.gy = load <2 x double>, ptr %i.q, align 16, !tbaa !14
  store <2 x double> %i.gy, ptr %19, align 8, !tbaa !14
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bf, %bb.bg, %bb.bh
  %i.gz = icmp eq i32 %i.gt, 1
  br i1 %i.gz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ha = load i32, ptr %5, align 4, !tbaa !12
  %i.hb = add nsw i32 %i.ha, 3
  br label %.sink.split678

.sink.split678:                                   ; preds = %bb.be, %bb.bj
  %.sink679 = phi i32 [ %i.hb, %bb.bj ], [ -22, %bb.be ]
  store i32 %.sink679, ptr %25, align 4, !tbaa !12
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split678, %bb.bi, %bb.ax
  %.4 = phi i32 [ %.3, %bb.bi ], [ %.1, %bb.ax ], [ %.3, %.sink.split678 ] ; 3 uses
  %i.hc = load i32, ptr %i.h, align 4, !tbaa !12
  %.not562 = icmp eq i32 %i.hc, 0
  br i1 %.not562, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @dggbak_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, ptr noundef nonnull %5, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef nonnull %20, ptr noundef nonnull %i.dv, ptr noundef nonnull %5, ptr noundef %14, ptr noundef nonnull %15, ptr noundef nonnull %i.f) #5
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.hd = load i32, ptr %i.i, align 4, !tbaa !12
  %.not563 = icmp eq i32 %i.hd, 0
  br i1 %.not563, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @dggbak_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.16, ptr noundef nonnull %5, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef nonnull %20, ptr noundef nonnull %i.dv, ptr noundef nonnull %5, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %i.f) #5
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  br i1 %.not552592, label %.loopexit616, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.he = load i32, ptr %5, align 4, !tbaa !12    ; 3 uses
  store i32 %i.he, ptr %i.a, align 4, !tbaa !12
  %.not564619 = icmp slt i32 %i.he, 1
  br i1 %.not564619, label %.loopexit616, label %.lr.ph622

.lr.ph622:                                        ; preds = %bb.bp
  %i.hf = load double, ptr %i.n, align 8          ; 2 uses
  %i.hg = load double, ptr %i.o, align 8          ; 2 uses
  %i.hh = load double, ptr %i.d, align 8          ; 2 uses
  %26 = fdiv double %i.hg, %i.hh                  ; 2 uses
  %27 = load double, ptr %i.m, align 8            ; 2 uses
  %28 = fdiv double %i.hh, %i.hg                  ; 2 uses
  %i.hi = add nuw i32 %i.he, 1
  %wide.trip.count = zext i32 %i.hi to i64
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph622, %bb.bv
  %indvars.iv643 = phi i64 [ 1, %.lr.ph622 ], [ %indvars.iv.next644, %bb.bv ] ; 6 uses
  %indvars645 = trunc i64 %indvars.iv643 to i32   ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv643 ; 3 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !14 ; 4 uses
  %i.hl = fcmp une double %i.hk, 0.000000e+00
  br i1 %i.hl, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv643 ; 3 uses
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !14 ; 3 uses
  %29 = fdiv double %i.hn, %i.hf
  %30 = fcmp ogt double %29, %26
  %31 = fdiv double %27, %i.hn
  %32 = fcmp ogt double %31, %28
  %or.cond = select i1 %30, i1 true, i1 %32
  br i1 %or.cond, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ho = mul i32 %i.et, %indvars645
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !14
  %i.hs = fdiv double %i.hr, %i.hn
  br label %.sink.split680

bb.bt:                                            ; preds = %bb.br
  %33 = fdiv double %i.hk, %i.hf
  %34 = fcmp ogt double %33, %26
  %35 = fdiv double %27, %i.hk
  %36 = fcmp ogt double %35, %28
  %or.cond577 = or i1 %34, %36
  br i1 %or.cond577, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ht = add nuw nsw i32 %indvars645, 1
  %i.hu = mul nsw i32 %i.ht, %i.t
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv643
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !14
  %i.hz = fdiv double %i.hy, %i.hk
  br label %.sink.split680

.sink.split680:                                   ; preds = %bb.bs, %bb.bu
  %.sink697 = phi double [ %i.hz, %bb.bu ], [ %i.hs, %bb.bs ] ; 3 uses
  %i.ia = fcmp oge double %.sink697, 0.000000e+00
  %i.ib = fneg double %.sink697
  %i.ic = select i1 %i.ia, double %.sink697, double %i.ib ; 2 uses
  store double %i.ic, ptr %20, align 8, !tbaa !14
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv643 ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !14
  %i.if = fmul double %i.ie, %i.ic
  store double %i.if, ptr %i.id, align 8, !tbaa !14
  %i.ig = load double, ptr %20, align 8, !tbaa !14
  %i.ih = load double, ptr %i.hm, align 8, !tbaa !14
  %i.ii = fmul double %i.ig, %i.ih
  store double %i.ii, ptr %i.hm, align 8, !tbaa !14
  %i.ij = load double, ptr %20, align 8, !tbaa !14
  %i.ik = load double, ptr %i.hj, align 8, !tbaa !14
  %i.il = fmul double %i.ij, %i.ik
  store double %i.il, ptr %i.hj, align 8, !tbaa !14
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split680, %bb.bt, %bb.bq
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next644, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit616, label %bb.bq, !llvm.loop !9

.loopexit616:                                     ; preds = %bb.bv, %bb.bp, %bb.bo
  br i1 %.not554597, label %.loopexit615, label %bb.bw

bb.bw:                                            ; preds = %.loopexit616
  %i.im = load i32, ptr %5, align 4, !tbaa !12    ; 3 uses
  store i32 %i.im, ptr %i.a, align 4, !tbaa !12
  %.not565623 = icmp slt i32 %i.im, 1
  br i1 %.not565623, label %.loopexit615, label %.lr.ph626

.lr.ph626:                                        ; preds = %bb.bw
  %i.in = load double, ptr %i.n, align 8
  %i.io = load double, ptr %i.p, align 8          ; 2 uses
  %i.ip = load double, ptr %i.e, align 8          ; 2 uses
  %i.iq = load double, ptr %i.m, align 8
  %i.ir = insertelement <2 x double> poison, double %i.io, i64 0
  %i.is = insertelement <2 x double> %i.ir, double %i.ip, i64 1
  %i.it = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.iu = insertelement <2 x double> %i.it, double %i.io, i64 1
  %i.iv = fdiv <2 x double> %i.is, %i.iu
  %i.iw = add nuw i32 %i.im, 1
  %wide.trip.count649 = zext i32 %i.iw to i64
  %i.ix = insertelement <2 x double> poison, double %i.iq, i64 1
  %i.iy = insertelement <2 x double> poison, double %i.in, i64 0
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph626, %bb.ca
  %indvars.iv646 = phi i64 [ 1, %.lr.ph626 ], [ %indvars.iv.next647, %bb.ca ] ; 5 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv646 ; 3 uses
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !14
  %i.jb = fcmp une double %i.ja, 0.000000e+00
  br i1 %i.jb, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv646 ; 3 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !14 ; 3 uses
  %i.je = insertelement <2 x double> %i.ix, double %i.jd, i64 0
  %i.jf = insertelement <2 x double> %i.iy, double %i.jd, i64 1
  %i.jg = fdiv <2 x double> %i.je, %i.jf
  %i.jh = fcmp ogt <2 x double> %i.jg, %i.iv      ; 2 uses
  %i.ji = extractelement <2 x i1> %i.jh, i64 0
  %i.jj = extractelement <2 x i1> %i.jh, i64 1
  %or.cond636 = select i1 %i.ji, i1 true, i1 %i.jj
  br i1 %or.cond636, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jk = trunc nuw nsw i64 %indvars.iv646 to i32
  %i.jl = mul i32 %i.eh, %i.jk
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.jm
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !14
  %i.jp = fdiv double %i.jo, %i.jd                ; 3 uses
  %i.jq = fcmp oge double %i.jp, 0.000000e+00
  %i.jr = fneg double %i.jp
  %i.js = select i1 %i.jq, double %i.jp, double %i.jr ; 2 uses
  store double %i.js, ptr %20, align 8, !tbaa !14
  %i.jt = load double, ptr %i.jc, align 8, !tbaa !14
  %i.ju = fmul double %i.jt, %i.js
  store double %i.ju, ptr %i.jc, align 8, !tbaa !14
  %i.jv = load double, ptr %20, align 8, !tbaa !14
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv646 ; 2 uses
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !14
  %i.jy = fmul double %i.jv, %i.jx
  store double %i.jy, ptr %i.jw, align 8, !tbaa !14
  %i.jz = load double, ptr %20, align 8, !tbaa !14
  %i.ka = load double, ptr %i.iz, align 8, !tbaa !14
  %i.kb = fmul double %i.jz, %i.ka
  store double %i.kb, ptr %i.iz, align 8, !tbaa !14
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bx, %bb.bz
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %exitcond650.not = icmp eq i64 %indvars.iv.next647, %wide.trip.count649
  br i1 %exitcond650.not, label %.loopexit615, label %bb.bx, !llvm.loop !10

.loopexit615:                                     ; preds = %bb.ca, %bb.bw, %.loopexit616
  br i1 %.not552592, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.loopexit615
  call void @dlascl_(ptr noundef nonnull @.str.17, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %i.f) #5
  call void @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %11, ptr noundef nonnull %5, ptr noundef nonnull %i.f) #5
  call void @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %i.f) #5
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.loopexit615
  br i1 %.not554597, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @dlascl_(ptr noundef nonnull @.str.18, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.e, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %i.f) #5
  call void @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.e, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %i.f) #5
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  br i1 %.not543, label %.loopexit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %10, align 4, !tbaa !12
  %i.kc = load i32, ptr %5, align 4, !tbaa !12    ; 2 uses
  store i32 %i.kc, ptr %i.a, align 4, !tbaa !12
  %.not566627 = icmp slt i32 %i.kc, 1
  br i1 %.not566627, label %.loopexit, label %.lr.ph633

.lr.ph633:                                        ; preds = %bb.cf, %.thread598
  %indvars.iv651 = phi i64 [ %indvars.iv.next652, %.thread598 ], [ 1, %bb.cf ] ; 5 uses
  %.0497631 = phi i32 [ %.0508, %.thread598 ], [ 1, %bb.cf ] ; 5 uses
  %.0505630 = phi i32 [ %.1506, %.thread598 ], [ 0, %bb.cf ]
  %.0507629 = phi i32 [ %.1498, %.thread598 ], [ 1, %bb.cf ]
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv651
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv651 ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv651
  %i.kg = call i32 %3(ptr noundef nonnull %i.kd, ptr noundef nonnull %i.ke, ptr noundef nonnull %i.kf) #5 ; 5 uses
  %i.kh = load double, ptr %i.ke, align 8, !tbaa !14
  %i.ki = fcmp oeq double %i.kh, 0.000000e+00
  br i1 %i.ki, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %.lr.ph633
  %.not568 = icmp eq i32 %i.kg, 0
  br i1 %.not568, label %.thread598, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kj = load i32, ptr %10, align 4, !tbaa !12
  %i.kk = add nsw i32 %i.kj, 1
  store i32 %i.kk, ptr %10, align 4, !tbaa !12
  %.not611 = icmp eq i32 %.0497631, 0
  br i1 %.not611, label %.thread598.sink.split, label %.thread598

bb.ci:                                            ; preds = %.lr.ph633
  %i.kl = icmp eq i32 %.0505630, 1
  br i1 %i.kl, label %bb.cj, label %.thread598

bb.cj:                                            ; preds = %bb.ci
  %i.km = icmp ne i32 %i.kg, 0
  %i.kn = icmp ne i32 %.0497631, 0
  %i.ko = select i1 %i.km, i1 true, i1 %i.kn
  br i1 %i.ko, label %bb.ck, label %.thread598

bb.ck:                                            ; preds = %bb.cj
  %i.kp = load i32, ptr %10, align 4, !tbaa !12
  %i.kq = add nsw i32 %i.kp, 2
  store i32 %i.kq, ptr %10, align 4, !tbaa !12
  %i.kr = icmp eq i32 %.0507629, 0
  br i1 %i.kr, label %.thread598.sink.split, label %.thread598

.thread598.sink.split:                            ; preds = %bb.ck, %bb.ch
  %.0508.ph = phi i32 [ %i.kg, %bb.ch ], [ 1, %bb.ck ]
  %.1506.ph = phi i32 [ 0, %bb.ch ], [ -1, %bb.ck ]
  %.1498.ph = phi i32 [ 0, %bb.ch ], [ 1, %bb.ck ]
  %i.ks = load i32, ptr %5, align 4, !tbaa !12
  %i.kt = add nsw i32 %i.ks, 2
  store i32 %i.kt, ptr %25, align 4, !tbaa !12
  br label %.thread598

.thread598:                                       ; preds = %.thread598.sink.split, %bb.cj, %bb.cg, %bb.ci, %bb.ck, %bb.ch
  %.0508 = phi i32 [ %i.kg, %bb.ch ], [ 0, %bb.cg ], [ 1, %bb.ck ], [ 0, %bb.cj ], [ %i.kg, %bb.ci ], [ %.0508.ph, %.thread598.sink.split ]
  %.1506 = phi i32 [ 0, %bb.ch ], [ 0, %bb.cg ], [ -1, %bb.ck ], [ -1, %bb.cj ], [ 1, %bb.ci ], [ %.1506.ph, %.thread598.sink.split ]
  %.1498 = phi i32 [ %.0497631, %bb.ch ], [ %.0497631, %bb.cg ], [ 1, %bb.ck ], [ 0, %bb.cj ], [ %.0497631, %bb.ci ], [ %.1498.ph, %.thread598.sink.split ]
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1
  %i.ku = load i32, ptr %i.a, align 4, !tbaa !12
  %i.kv = sext i32 %i.ku to i64
  %.not566.not = icmp slt i64 %indvars.iv651, %i.kv
  br i1 %.not566.not, label %.lr.ph633, label %.loopexit, !llvm.loop !11

.loopexit.sink.split:                             ; preds = %bb.at, %bb.av, %bb.aw
  %.sink700 = phi i32 [ %i.fz, %bb.av ], [ %i.ga, %bb.aw ], [ %i.fv, %bb.at ]
  store i32 %.sink700, ptr %25, align 4, !tbaa !12
end_hunk_0
