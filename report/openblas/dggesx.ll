Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dggesx?download=true
begin_hunk_0_@dggesx_:bb.a

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
  %i.hi = load double, ptr %i.m, align 8
  %i.hj = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.hg, i64 1
  %i.hl = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.hh, i64 1
  %i.hn = fdiv <2 x double> %i.hk, %i.hm          ; 2 uses
  %i.ho = add nuw i32 %i.he, 1
  %wide.trip.count = zext i32 %i.ho to i64
  %i.hp = insertelement <2 x double> poison, double %i.hi, i64 0 ; 2 uses
  %i.hq = insertelement <2 x double> poison, double %i.hf, i64 1
  %i.hr = insertelement <2 x double> poison, double %i.hf, i64 1
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph622, %bb.bv
  %indvars.iv643 = phi i64 [ 1, %.lr.ph622 ], [ %indvars.iv.next644, %bb.bv ] ; 6 uses
  %indvars645 = trunc i64 %indvars.iv643 to i32   ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv643 ; 3 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !14 ; 4 uses
  %i.hu = fcmp une double %i.ht, 0.000000e+00
  br i1 %i.hu, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv643 ; 3 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !14 ; 3 uses
  %i.hx = insertelement <2 x double> %i.hp, double %i.hw, i64 1
  %i.hy = insertelement <2 x double> %i.hq, double %i.hw, i64 0
  %i.hz = fdiv <2 x double> %i.hx, %i.hy
  %i.ia = fcmp ogt <2 x double> %i.hz, %i.hn      ; 2 uses
  %26 = extractelement <2 x i1> %i.ia, i64 0
  %27 = extractelement <2 x i1> %i.ia, i64 1
  %or.cond = select i1 %27, i1 true, i1 %26
  br i1 %or.cond, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ib = mul i32 %i.et, %indvars645
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !14
  %i.if = fdiv double %i.ie, %i.hw
  br label %.sink.split680

bb.bt:                                            ; preds = %bb.br
  %i.ig = insertelement <2 x double> %i.hp, double %i.ht, i64 1
  %i.ih = insertelement <2 x double> %i.hr, double %i.ht, i64 0
  %i.ii = fdiv <2 x double> %i.ig, %i.ih
  %i.ij = fcmp ogt <2 x double> %i.ii, %i.hn
  %i.ik = bitcast <2 x i1> %i.ij to i2
  %.not709 = icmp eq i2 %i.ik, 0
  br i1 %.not709, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.il = add nuw nsw i32 %indvars645, 1
  %i.im = mul nsw i32 %i.il, %i.t
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv643
  %i.ip = getelementptr [8 x i8], ptr %i.io, i64 %i.in
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !14
  %i.ir = fdiv double %i.iq, %i.ht
  br label %.sink.split680

.sink.split680:                                   ; preds = %bb.bs, %bb.bu
  %.sink697 = phi double [ %i.ir, %bb.bu ], [ %i.if, %bb.bs ] ; 3 uses
  %i.is = fcmp oge double %.sink697, 0.000000e+00
  %i.it = fneg double %.sink697
  %i.iu = select i1 %i.is, double %.sink697, double %i.it ; 2 uses
  store double %i.iu, ptr %20, align 8, !tbaa !14
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv643 ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !14
  %i.ix = fmul double %i.iw, %i.iu
  store double %i.ix, ptr %i.iv, align 8, !tbaa !14
  %i.iy = load double, ptr %20, align 8, !tbaa !14
  %i.iz = load double, ptr %i.hv, align 8, !tbaa !14
  %i.ja = fmul double %i.iy, %i.iz
  store double %i.ja, ptr %i.hv, align 8, !tbaa !14
  %i.jb = load double, ptr %20, align 8, !tbaa !14
  %i.jc = load double, ptr %i.hs, align 8, !tbaa !14
  %i.jd = fmul double %i.jb, %i.jc
  store double %i.jd, ptr %i.hs, align 8, !tbaa !14
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split680, %bb.bt, %bb.bq
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next644, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit616, label %bb.bq, !llvm.loop !9

.loopexit616:                                     ; preds = %bb.bv, %bb.bp, %bb.bo
  br i1 %.not554597, label %.loopexit615, label %bb.bw

bb.bw:                                            ; preds = %.loopexit616
  %i.je = load i32, ptr %5, align 4, !tbaa !12    ; 3 uses
  store i32 %i.je, ptr %i.a, align 4, !tbaa !12
  %.not565623 = icmp slt i32 %i.je, 1
  br i1 %.not565623, label %.loopexit615, label %.lr.ph626

.lr.ph626:                                        ; preds = %bb.bw
  %i.jf = load double, ptr %i.n, align 8
  %i.jg = load double, ptr %i.p, align 8          ; 2 uses
  %i.jh = load double, ptr %i.e, align 8          ; 2 uses
  %i.ji = load double, ptr %i.m, align 8
  %i.jj = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.jk = insertelement <2 x double> %i.jj, double %i.jh, i64 1
  %i.jl = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.jm = insertelement <2 x double> %i.jl, double %i.jg, i64 1
  %i.jn = fdiv <2 x double> %i.jk, %i.jm
  %i.jo = add nuw i32 %i.je, 1
  %wide.trip.count649 = zext i32 %i.jo to i64
  %i.jp = insertelement <2 x double> poison, double %i.ji, i64 1
  %i.jq = insertelement <2 x double> poison, double %i.jf, i64 0
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph626, %bb.ca
  %indvars.iv646 = phi i64 [ 1, %.lr.ph626 ], [ %indvars.iv.next647, %bb.ca ] ; 5 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv646 ; 3 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !14
  %i.jt = fcmp une double %i.js, 0.000000e+00
  br i1 %i.jt, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv646 ; 3 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !14 ; 3 uses
  %i.jw = insertelement <2 x double> %i.jp, double %i.jv, i64 0
  %i.jx = insertelement <2 x double> %i.jq, double %i.jv, i64 1
  %i.jy = fdiv <2 x double> %i.jw, %i.jx
  %i.jz = fcmp ogt <2 x double> %i.jy, %i.jn      ; 2 uses
  %28 = extractelement <2 x i1> %i.jz, i64 0
  %29 = extractelement <2 x i1> %i.jz, i64 1
  %or.cond636 = select i1 %28, i1 true, i1 %29
  br i1 %or.cond636, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ka = trunc nuw nsw i64 %indvars.iv646 to i32
  %i.kb = mul i32 %i.eh, %i.ka
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.kc
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !14
  %i.kf = fdiv double %i.ke, %i.jv                ; 3 uses
  %i.kg = fcmp oge double %i.kf, 0.000000e+00
  %i.kh = fneg double %i.kf
  %i.ki = select i1 %i.kg, double %i.kf, double %i.kh ; 2 uses
  store double %i.ki, ptr %20, align 8, !tbaa !14
  %i.kj = load double, ptr %i.ju, align 8, !tbaa !14
  %i.kk = fmul double %i.kj, %i.ki
  store double %i.kk, ptr %i.ju, align 8, !tbaa !14
  %i.kl = load double, ptr %20, align 8, !tbaa !14
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv646 ; 2 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !14
  %i.ko = fmul double %i.kl, %i.kn
  store double %i.ko, ptr %i.km, align 8, !tbaa !14
  %i.kp = load double, ptr %20, align 8, !tbaa !14
  %i.kq = load double, ptr %i.jr, align 8, !tbaa !14
  %i.kr = fmul double %i.kp, %i.kq
  store double %i.kr, ptr %i.jr, align 8, !tbaa !14
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
  %i.ks = load i32, ptr %5, align 4, !tbaa !12    ; 2 uses
  store i32 %i.ks, ptr %i.a, align 4, !tbaa !12
  %.not566627 = icmp slt i32 %i.ks, 1
  br i1 %.not566627, label %.loopexit, label %.lr.ph633

.lr.ph633:                                        ; preds = %bb.cf, %.thread598
  %indvars.iv651 = phi i64 [ %indvars.iv.next652, %.thread598 ], [ 1, %bb.cf ] ; 5 uses
  %.0497631 = phi i32 [ %.0508, %.thread598 ], [ 1, %bb.cf ] ; 5 uses
  %.0505630 = phi i32 [ %.1506, %.thread598 ], [ 0, %bb.cf ]
  %.0507629 = phi i32 [ %.1498, %.thread598 ], [ 1, %bb.cf ]
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv651
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv651 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv651
  %i.kw = call i32 %3(ptr noundef nonnull %i.kt, ptr noundef nonnull %i.ku, ptr noundef nonnull %i.kv) #5 ; 5 uses
  %i.kx = load double, ptr %i.ku, align 8, !tbaa !14
  %i.ky = fcmp oeq double %i.kx, 0.000000e+00
  br i1 %i.ky, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %.lr.ph633
  %.not568 = icmp eq i32 %i.kw, 0
  br i1 %.not568, label %.thread598, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kz = load i32, ptr %10, align 4, !tbaa !12
  %i.la = add nsw i32 %i.kz, 1
  store i32 %i.la, ptr %10, align 4, !tbaa !12
  %.not611 = icmp eq i32 %.0497631, 0
  br i1 %.not611, label %.thread598.sink.split, label %.thread598

bb.ci:                                            ; preds = %.lr.ph633
  %i.lb = icmp eq i32 %.0505630, 1
  br i1 %i.lb, label %bb.cj, label %.thread598

bb.cj:                                            ; preds = %bb.ci
  %i.lc = icmp ne i32 %i.kw, 0
  %i.ld = icmp ne i32 %.0497631, 0
  %i.le = select i1 %i.lc, i1 true, i1 %i.ld
  br i1 %i.le, label %bb.ck, label %.thread598

bb.ck:                                            ; preds = %bb.cj
  %i.lf = load i32, ptr %10, align 4, !tbaa !12
  %i.lg = add nsw i32 %i.lf, 2
  store i32 %i.lg, ptr %10, align 4, !tbaa !12
  %i.lh = icmp eq i32 %.0507629, 0
  br i1 %i.lh, label %.thread598.sink.split, label %.thread598

.thread598.sink.split:                            ; preds = %bb.ck, %bb.ch
  %.0508.ph = phi i32 [ %i.kw, %bb.ch ], [ 1, %bb.ck ]
  %.1506.ph = phi i32 [ 0, %bb.ch ], [ -1, %bb.ck ]
  %.1498.ph = phi i32 [ 0, %bb.ch ], [ 1, %bb.ck ]
  %i.li = load i32, ptr %5, align 4, !tbaa !12
  %i.lj = add nsw i32 %i.li, 2
  store i32 %i.lj, ptr %25, align 4, !tbaa !12
  br label %.thread598

.thread598:                                       ; preds = %.thread598.sink.split, %bb.cj, %bb.cg, %bb.ci, %bb.ck, %bb.ch
  %.0508 = phi i32 [ %i.kw, %bb.ch ], [ 0, %bb.cg ], [ 1, %bb.ck ], [ 0, %bb.cj ], [ %i.kw, %bb.ci ], [ %.0508.ph, %.thread598.sink.split ]
  %.1506 = phi i32 [ 0, %bb.ch ], [ 0, %bb.cg ], [ -1, %bb.ck ], [ -1, %bb.cj ], [ 1, %bb.ci ], [ %.1506.ph, %.thread598.sink.split ]
  %.1498 = phi i32 [ %.0497631, %bb.ch ], [ %.0497631, %bb.cg ], [ 1, %bb.ck ], [ 0, %bb.cj ], [ %.0497631, %bb.ci ], [ %.1498.ph, %.thread598.sink.split ]
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1
  %i.lk = load i32, ptr %i.a, align 4, !tbaa !12
  %i.ll = sext i32 %i.lk to i64
  %.not566.not = icmp slt i64 %indvars.iv651, %i.ll
  br i1 %.not566.not, label %.lr.ph633, label %.loopexit, !llvm.loop !11

.loopexit.sink.split:                             ; preds = %bb.at, %bb.av, %bb.aw
  %.sink700 = phi i32 [ %i.fz, %bb.av ], [ %i.ga, %bb.aw ], [ %i.fv, %bb.at ]
  store i32 %.sink700, ptr %25, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.thread598, %.loopexit.sink.split, %bb.cf, %bb.ce
  %.5 = phi i32 [ %.4, %bb.ce ], [ %.4, %bb.cf ], [ %.1, %.loopexit.sink.split ], [ %.4, %.thread598 ]
  %i.lm = sitofp i32 %.5 to double
  store double %i.lm, ptr %20, align 8, !tbaa !14
  store i32 %.0499, ptr %22, align 4, !tbaa !12
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ad, %.loopexit, %bb.af, %.thread584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dlabad_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare double @dlange_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dggbal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgeqrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dormqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorgqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgghrd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dhgeqz_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtgsen_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dggbak_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
