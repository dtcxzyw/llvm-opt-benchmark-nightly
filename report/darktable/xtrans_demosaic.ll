loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN6LibRaw18xtrans_interpolateEi:bb.a
  %i.wm = icmp sgt i32 %i.ki, %i.wk
  %or.cond1770 = select i1 %i.wl, i1 true, i1 %i.wm
  br i1 %or.cond1770, label %bb.ay, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.wn = getelementptr inbounds nuw i8, ptr %i.qk, i64 62
  %i.wo = load i16, ptr %i.wn, align 2, !tbaa !79
  %i.wp = sext i16 %i.wo to i32                   ; 2 uses
  %i.wq = icmp slt i32 %i.kf, %i.wp
  %i.wr = icmp sgt i32 %i.ki, %i.wp
  %or.cond1771 = select i1 %i.wq, i1 true, i1 %i.wr
  br i1 %or.cond1771, label %bb.ay, label %.preheader1148.2

.preheader1148.2:                                 ; preds = %bb.ai
  %i.ws = getelementptr inbounds nuw i8, ptr %i.qk, i64 64
  %i.wt = load i16, ptr %i.ws, align 16, !tbaa !79
  %i.wu = sext i16 %i.wt to i32                   ; 2 uses
  %i.wv = icmp slt i32 %i.kf, %i.wu
  %i.ww = icmp sgt i32 %i.ki, %i.wu
  %or.cond1772 = select i1 %i.wv, i1 true, i1 %i.ww
  br i1 %or.cond1772, label %bb.ay, label %bb.aj

bb.aj:                                            ; preds = %.preheader1148.2
  %i.wx = getelementptr inbounds nuw i8, ptr %i.qk, i64 66
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !79
  %i.wz = sext i16 %i.wy to i32                   ; 2 uses
  %i.xa = icmp slt i32 %i.kf, %i.wz
  %i.xb = icmp sgt i32 %i.ki, %i.wz
  %or.cond1773 = select i1 %i.xa, i1 true, i1 %i.xb
  br i1 %or.cond1773, label %bb.ay, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.xc = getelementptr inbounds nuw i8, ptr %i.qk, i64 68
  %i.xd = load i16, ptr %i.xc, align 4, !tbaa !79
  %i.xe = sext i16 %i.xd to i32                   ; 2 uses
  %i.xf = icmp slt i32 %i.kf, %i.xe
  %i.xg = icmp sgt i32 %i.ki, %i.xe
  %or.cond1774 = select i1 %i.xf, i1 true, i1 %i.xg
  br i1 %or.cond1774, label %bb.ay, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.xh = getelementptr inbounds nuw i8, ptr %i.qk, i64 70
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !79
  %i.xj = sext i16 %i.xi to i32                   ; 2 uses
  %i.xk = icmp slt i32 %i.kf, %i.xj
  %i.xl = icmp sgt i32 %i.ki, %i.xj
  %or.cond1775 = select i1 %i.xk, i1 true, i1 %i.xl
  br i1 %or.cond1775, label %bb.ay, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.xm = getelementptr inbounds nuw i8, ptr %i.qk, i64 72
  %i.xn = load i16, ptr %i.xm, align 8, !tbaa !79
  %i.xo = sext i16 %i.xn to i32                   ; 2 uses
  %i.xp = icmp slt i32 %i.kf, %i.xo
  %i.xq = icmp sgt i32 %i.ki, %i.xo
  %or.cond1776 = select i1 %i.xp, i1 true, i1 %i.xq
  br i1 %or.cond1776, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.xr = getelementptr inbounds nuw i8, ptr %i.qk, i64 74
  %i.xs = load i16, ptr %i.xr, align 2, !tbaa !79
  %i.xt = sext i16 %i.xs to i32                   ; 2 uses
  %i.xu = icmp slt i32 %i.kf, %i.xt
  %i.xv = icmp sgt i32 %i.ki, %i.xt
  %or.cond1777 = select i1 %i.xu, i1 true, i1 %i.xv
  br i1 %or.cond1777, label %bb.ay, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.xw = getelementptr inbounds nuw i8, ptr %i.qk, i64 76
  %i.xx = load i16, ptr %i.xw, align 4, !tbaa !79
  %i.xy = sext i16 %i.xx to i32                   ; 2 uses
  %i.xz = icmp slt i32 %i.kf, %i.xy
  %i.ya = icmp sgt i32 %i.ki, %i.xy
  %or.cond1778 = select i1 %i.xz, i1 true, i1 %i.ya
  br i1 %or.cond1778, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.yb = getelementptr inbounds nuw i8, ptr %i.qk, i64 78
  %i.yc = load i16, ptr %i.yb, align 2, !tbaa !79
  %i.yd = sext i16 %i.yc to i32                   ; 2 uses
  %i.ye = icmp slt i32 %i.kf, %i.yd
  %i.yf = icmp sgt i32 %i.ki, %i.yd
  %or.cond1779 = select i1 %i.ye, i1 true, i1 %i.yf
  br i1 %or.cond1779, label %bb.ay, label %.preheader1147.1.2

.preheader1147.1.2:                               ; preds = %bb.ap
  %i.yg = getelementptr inbounds nuw i8, ptr %i.qk, i64 80
  %i.yh = load i16, ptr %i.yg, align 16, !tbaa !79
  %i.yi = sext i16 %i.yh to i32                   ; 2 uses
  %i.yj = icmp slt i32 %i.kf, %i.yi
  %i.yk = icmp sgt i32 %i.ki, %i.yi
  %or.cond1780 = select i1 %i.yj, i1 true, i1 %i.yk
  br i1 %or.cond1780, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %.preheader1147.1.2
  %i.yl = getelementptr inbounds nuw i8, ptr %i.qk, i64 82
  %i.ym = load i16, ptr %i.yl, align 2, !tbaa !79
  %i.yn = sext i16 %i.ym to i32                   ; 2 uses
  %i.yo = icmp slt i32 %i.kf, %i.yn
  %i.yp = icmp sgt i32 %i.ki, %i.yn
  %or.cond1781 = select i1 %i.yo, i1 true, i1 %i.yp
  br i1 %or.cond1781, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.yq = getelementptr inbounds nuw i8, ptr %i.qk, i64 84
  %i.yr = load i16, ptr %i.yq, align 4, !tbaa !79
  %i.ys = sext i16 %i.yr to i32                   ; 2 uses
  %i.yt = icmp slt i32 %i.kf, %i.ys
  %i.yu = icmp sgt i32 %i.ki, %i.ys
  %or.cond1782 = select i1 %i.yt, i1 true, i1 %i.yu
  br i1 %or.cond1782, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.yv = getelementptr inbounds nuw i8, ptr %i.qk, i64 86
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !79
  %i.yx = sext i16 %i.yw to i32                   ; 2 uses
  %i.yy = icmp slt i32 %i.kf, %i.yx
  %i.yz = icmp sgt i32 %i.ki, %i.yx
  %or.cond1783 = select i1 %i.yy, i1 true, i1 %i.yz
  br i1 %or.cond1783, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.za = getelementptr inbounds nuw i8, ptr %i.qk, i64 88
  %i.zb = load i16, ptr %i.za, align 8, !tbaa !79
  %i.zc = sext i16 %i.zb to i32                   ; 2 uses
  %i.zd = icmp slt i32 %i.kf, %i.zc
  %i.ze = icmp sgt i32 %i.ki, %i.zc
  %or.cond1784 = select i1 %i.zd, i1 true, i1 %i.ze
  br i1 %or.cond1784, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.zf = getelementptr inbounds nuw i8, ptr %i.qk, i64 90
  %i.zg = load i16, ptr %i.zf, align 2, !tbaa !79
  %i.zh = sext i16 %i.zg to i32                   ; 2 uses
  %i.zi = icmp slt i32 %i.kf, %i.zh
  %i.zj = icmp sgt i32 %i.ki, %i.zh
  %or.cond1785 = select i1 %i.zi, i1 true, i1 %i.zj
  br i1 %or.cond1785, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.zk = getelementptr inbounds nuw i8, ptr %i.qk, i64 92
  %i.zl = load i16, ptr %i.zk, align 4, !tbaa !79
  %i.zm = sext i16 %i.zl to i32                   ; 2 uses
  %i.zn = icmp slt i32 %i.kf, %i.zm
  %i.zo = icmp sgt i32 %i.ki, %i.zm
  %or.cond1786 = select i1 %i.zn, i1 true, i1 %i.zo
  br i1 %or.cond1786, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.zp = getelementptr inbounds nuw i8, ptr %i.qk, i64 94
  %i.zq = load i16, ptr %i.zp, align 2, !tbaa !79
  %i.zr = sext i16 %i.zq to i32                   ; 2 uses
  %i.zs = icmp slt i32 %i.kf, %i.zr
  %i.zt = icmp sgt i32 %i.ki, %i.zr
  %or.cond1787 = select i1 %i.zs, i1 true, i1 %i.zt
  br i1 %or.cond1787, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next1407 = add nuw nsw i64 %indvars.iv1406, 1 ; 2 uses
  %exitcond1409.not = icmp eq i64 %indvars.iv.next1407, 3
  br i1 %exitcond1409.not, label %.preheader1146, label %.preheader1149, !llvm.loop !84

bb.ay:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %.preheader1147.1.2, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %.preheader1148.2, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %.preheader1147.1.1, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %.preheader1148.1, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %.preheader1147.1, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.preheader1149
  %i.zu = tail call ptr @__cxa_allocate_exception(i64 4) #9 ; 2 uses
  store i32 5, ptr %i.zu, align 16, !tbaa !77
  tail call void @__cxa_throw(ptr nonnull %i.zu, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

.preheader1145:                                   ; preds = %.preheader1145.lr.ph, %._crit_edge
  %i.zv = phi i16 [ %i.qp, %.preheader1145.lr.ph ], [ %i.adp, %._crit_edge ]
  %i.zw = phi i16 [ %i.kb, %.preheader1145.lr.ph ], [ %i.adq, %._crit_edge ] ; 3 uses
  %.09541212 = phi i32 [ 0, %.preheader1145.lr.ph ], [ %.1955.lcssa, %._crit_edge ] ; 2 uses
  %.09581211 = phi i32 [ 2, %.preheader1145.lr.ph ], [ %i.adr, %._crit_edge ] ; 2 uses
  %i.zx = icmp ugt i16 %i.zw, 4
  br i1 %i.zx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader1145
  %i.zy = zext i16 %i.zw to i32
  br label %.lr.ph

.preheader1142:                                   ; preds = %._crit_edge, %.preheader1146
  %i.zz = phi i16 [ %i.kb, %.preheader1146 ], [ %i.adq, %._crit_edge ]
  %.lcssa1163 = phi i32 [ %i.qq, %.preheader1146 ], [ %i.ads, %._crit_edge ]
  %.lcssa1163.fr = freeze i32 %.lcssa1163         ; 3 uses
  %or.cond10651216 = icmp samesign ugt i32 %.lcssa1163.fr, 6
  br i1 %or.cond10651216, label %.preheader1141.lr.ph, label %.critedge

.preheader1141.lr.ph:                             ; preds = %.preheader1142
  %i.aaa = zext i16 %i.zz to i32                  ; 3 uses
  %i.aab = mul nuw nsw i32 %.lcssa1163.fr, %i.aaa ; 24 uses
  %i.aac = tail call i32 @llvm.umax.i32(i32 %i.aaa, i32 6)
  %smax = add nsw i32 %i.aac, -3                  ; 6 uses
  %i.aad = tail call i32 @llvm.smin.i32(i32 %.lcssa1163.fr, i32 12)
  %exitcond1416.not = icmp eq i32 %smax, 3
  %exitcond1416.1.not = icmp eq i32 %smax, 4
  %exitcond1416.2.not = icmp eq i32 %smax, 5
  %exitcond1416.3.not = icmp eq i32 %smax, 6
  %exitcond1416.4.not = icmp eq i32 %smax, 7
  %exitcond1416.5.not = icmp eq i32 %smax, 8
  %i.aae = add nsw i32 %i.aad, -4
  br label %.preheader1141

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bf
  %i.aaf = phi i32 [ %i.adm, %bb.bf ], [ %i.zy, %.lr.ph.preheader ]
  %.19551209 = phi i32 [ %.3957, %bb.bf ], [ %.09541212, %.lr.ph.preheader ] ; 7 uses
  %.19591208 = phi i32 [ %.3961, %bb.bf ], [ %.09581211, %.lr.ph.preheader ] ; 12 uses
  %.09621207 = phi i32 [ %i.adk, %bb.bf ], [ 2, %.lr.ph.preheader ] ; 8 uses
  %.09651206 = phi i16 [ %.5970, %bb.bf ], [ -1, %.lr.ph.preheader ] ; 2 uses
  %.09711205 = phi i16 [ %.5976, %bb.bf ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.aag = insertelement <2 x i32> poison, i32 %.09621207, i64 0
  %i.aah = insertelement <2 x i32> %i.aag, i32 %.19591208, i64 1
  %i.aai = add nsw <2 x i32> %i.aah, splat (i32 6)
  %i.aaj = srem <2 x i32> %i.aai, splat (i32 6)   ; 2 uses
  %i.aak = extractelement <2 x i32> %i.aaj, i64 1
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds [6 x i8], ptr %i.n, i64 %i.aal
  %i.aan = extractelement <2 x i32> %i.aaj, i64 0
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr inbounds i8, ptr %i.aam, i64 %i.aao
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !75
  %i.aar = icmp eq i8 %i.aaq, 1
  br i1 %i.aar, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %.lr.ph
  %i.aas = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.aat = mul nsw i32 %i.aaf, %.19591208
  %i.aau = sext i32 %i.aat to i64
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.aas, i64 %i.aau
  %i.aaw = sext i32 %.09621207 to i64
  %i.aax = getelementptr inbounds [8 x i8], ptr %i.aav, i64 %i.aaw ; 8 uses
  %.not1037 = icmp eq i16 %.09711205, 0
  br i1 %.not1037, label %.preheader1143.preheader, label %.loopexit1144

.preheader1143.preheader:                         ; preds = %bb.az
  %i.aay = srem i32 %.19591208, 3
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = getelementptr inbounds [96 x i8], ptr %i.b, i64 %i.aaz
  %i.abb = srem i32 %.09621207, 3
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds [32 x i8], ptr %i.aba, i64 %i.abc ; 6 uses
  %i.abe = load i16, ptr %i.abd, align 16, !tbaa !79
  %i.abf = sext i16 %i.abe to i64
  %i.abg = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 2
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !79 ; 2 uses
  %spec.select = tail call i16 @llvm.umin.i16(i16 %.09651206, i16 %i.abi)
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abd, i64 2
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !79
  %i.abl = sext i16 %i.abk to i64
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.abl
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 2
  %i.abo = load i16, ptr %i.abn, align 2, !tbaa !79 ; 2 uses
  %spec.select.1 = tail call i16 @llvm.umin.i16(i16 %spec.select, i16 %i.abo)
  %.2973.1 = tail call i16 @llvm.umax.i16(i16 %i.abi, i16 %i.abo)
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abd, i64 4
  %i.abq = load i16, ptr %i.abp, align 4, !tbaa !79
  %i.abr = sext i16 %i.abq to i64
  %i.abs = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.abr
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 2
  %i.abu = load i16, ptr %i.abt, align 2, !tbaa !79 ; 2 uses
  %spec.select.2 = tail call i16 @llvm.umin.i16(i16 %spec.select.1, i16 %i.abu)
  %.2973.2 = tail call i16 @llvm.umax.i16(i16 %.2973.1, i16 %i.abu)
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abd, i64 6
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !79
  %i.abx = sext i16 %i.abw to i64
  %i.aby = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.abx
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 2
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !79 ; 2 uses
  %spec.select.3 = tail call i16 @llvm.umin.i16(i16 %spec.select.2, i16 %i.aca)
  %.2973.3 = tail call i16 @llvm.umax.i16(i16 %.2973.2, i16 %i.aca)
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.acc = load i16, ptr %i.acb, align 8, !tbaa !79
  %i.acd = sext i16 %i.acc to i64
  %i.ace = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.acd
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 2
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !79 ; 2 uses
  %spec.select.4 = tail call i16 @llvm.umin.i16(i16 %spec.select.3, i16 %i.acg)
  %.2973.4 = tail call i16 @llvm.umax.i16(i16 %.2973.3, i16 %i.acg)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abd, i64 10
  %i.aci = load i16, ptr %i.ach, align 2, !tbaa !79
  %i.acj = sext i16 %i.aci to i64
  %i.ack = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.acj
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 2
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !79 ; 2 uses
  %spec.select.5 = tail call i16 @llvm.umin.i16(i16 %spec.select.4, i16 %i.acm)
  %.2973.5 = tail call i16 @llvm.umax.i16(i16 %.2973.4, i16 %i.acm)
  br label %.loopexit1144

.loopexit1144:                                    ; preds = %.preheader1143.preheader, %bb.az
  %.3974 = phi i16 [ %.09711205, %bb.az ], [ %.2973.5, %.preheader1143.preheader ] ; 4 uses
  %.3968 = phi i16 [ %.09651206, %bb.az ], [ %spec.select.5, %.preheader1143.preheader ] ; 4 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aax, i64 2
  store i16 %.3968, ptr %i.acn, align 2, !tbaa !79
  %i.aco = getelementptr inbounds nuw i8, ptr %i.aax, i64 6
  store i16 %.3974, ptr %i.aco, align 2, !tbaa !79
  %i.acp = sub nsw i32 %.19591208, %i.qs
  %i.acq = srem i32 %i.acp, 3
  switch i32 %i.acq, label %bb.bf [
    i32 1, label %bb.ba
    i32 2, label %bb.bc
  ]

bb.ba:                                            ; preds = %.loopexit1144
  %i.acr = load i16, ptr %i.i, align 4, !tbaa !74
  %i.acs = zext i16 %i.acr to i32
  %i.act = add nsw i32 %i.acs, -3
  %i.acu = icmp slt i32 %.19591208, %i.act
  br i1 %i.acu, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.acv = add nsw i32 %.19591208, 1
  %i.acw = add nsw i32 %.09621207, -1
  br label %bb.bf

bb.bc:                                            ; preds = %.loopexit1144
  %i.acx = add nsw i32 %.09621207, 2              ; 3 uses
  %i.acy = load i16, ptr %i.f, align 2, !tbaa !11
  %i.acz = zext i16 %i.acy to i32                 ; 2 uses
  %i.ada = add nsw i32 %i.acz, -3
  %i.adb = icmp slt i32 %i.acx, %i.ada
  %i.adc = icmp sgt i32 %.19591208, 2
  %or.cond19 = and i1 %i.adb, %i.adc
  br i1 %or.cond19, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.add = add nsw i32 %.19591208, -1
  %i.ade = add nsw i32 %.19551209, 1
  %i.adf = load i16, ptr %i.i, align 4, !tbaa !74
  %i.adg = zext i16 %i.adf to i32
  %i.adh = mul nuw nsw i32 %i.adg, %i.acz
  %i.adi = icmp sgt i32 %.19551209, %i.adh
  br i1 %i.adi, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.adj = tail call ptr @__cxa_allocate_exception(i64 4) #9 ; 2 uses
  store i32 5, ptr %i.adj, align 16, !tbaa !77
  tail call void @__cxa_throw(ptr nonnull %i.adj, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

bb.bf:                                            ; preds = %.loopexit1144, %bb.bb, %bb.ba, %bb.bd, %bb.bc, %.lr.ph
  %.5976 = phi i16 [ 0, %.lr.ph ], [ %.3974, %.loopexit1144 ], [ %.3974, %bb.bb ], [ %.3974, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  %.5970 = phi i16 [ -1, %.lr.ph ], [ %.3968, %.loopexit1144 ], [ %.3968, %bb.bb ], [ %.3968, %bb.ba ], [ -1, %bb.bd ], [ -1, %bb.bc ]
  %.2964 = phi i32 [ %.09621207, %.lr.ph ], [ %.09621207, %.loopexit1144 ], [ %i.acw, %bb.bb ], [ %.09621207, %bb.ba ], [ %i.acx, %bb.bd ], [ %i.acx, %bb.bc ]
  %.3961 = phi i32 [ %.19591208, %.lr.ph ], [ %.19591208, %.loopexit1144 ], [ %i.acv, %bb.bb ], [ %.19591208, %bb.ba ], [ %i.add, %bb.bd ], [ %.19591208, %bb.bc ] ; 2 uses
  %.3957 = phi i32 [ %.19551209, %.lr.ph ], [ %.19551209, %.loopexit1144 ], [ %.19551209, %bb.bb ], [ %.19551209, %bb.ba ], [ %i.ade, %bb.bd ], [ %.19551209, %bb.bc ] ; 2 uses
  %i.adk = add nsw i32 %.2964, 1                  ; 2 uses
  %i.adl = load i16, ptr %i.f, align 2, !tbaa !11 ; 2 uses
  %i.adm = zext i16 %i.adl to i32                 ; 2 uses
  %i.adn = add nsw i32 %i.adm, -2
  %i.ado = icmp slt i32 %i.adk, %i.adn
  br i1 %i.ado, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !86

._crit_edge.loopexit:                             ; preds = %bb.bf
  %.pre = load i16, ptr %i.i, align 4, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader1145
  %i.adp = phi i16 [ %i.zv, %.preheader1145 ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.adq = phi i16 [ %i.zw, %.preheader1145 ], [ %i.adl, %._crit_edge.loopexit ] ; 2 uses
  %.1959.lcssa = phi i32 [ %.09581211, %.preheader1145 ], [ %.3961, %._crit_edge.loopexit ]
  %.1955.lcssa = phi i32 [ %.09541212, %.preheader1145 ], [ %.3957, %._crit_edge.loopexit ]
  %i.adr = add nsw i32 %.1959.lcssa, 1            ; 2 uses
  %i.ads = zext i16 %i.adp to i32                 ; 2 uses
  %i.adt = add nsw i32 %i.ads, -2
  %i.adu = icmp slt i32 %i.adr, %i.adt
  br i1 %i.adu, label %.preheader1145, label %.preheader1142, !llvm.loop !87

.preheader1141:                                   ; preds = %.preheader1141.lr.ph, %.critedge21
  %.09801217 = phi i32 [ 3, %.preheader1141.lr.ph ], [ %i.afi, %.critedge21 ] ; 5 uses
  %i.adv = add nuw nsw i32 %.09801217, 6
  %i.adw = urem i32 %i.adv, 6
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [6 x i8], ptr %i.n, i64 %i.adx ; 6 uses
  %i.adz = urem i32 %.09801217, 3
  %i.aea = zext nneg i32 %i.adz to i64
  %i.aeb = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %i.aea ; 12 uses
  %i.aec = mul nuw nsw i32 %.09801217, %i.aaa     ; 6 uses
  br i1 %exitcond1416.not, label %.critedge21, label %2

.critedge:                                        ; preds = %.critedge21, %.preheader1142
  %i.aed = select i1 %i.jy, i64 24641536, i64 13107200
  %i.aee = tail call noundef ptr @_ZN6LibRaw18malloc_omp_buffersEim(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, i64 noundef %i.aed) ; 2 uses
  %i.aef = load i16, ptr %i.i, align 4, !tbaa !74 ; 2 uses
  %i.aeg = icmp ugt i16 %i.aef, 22
  br i1 %i.aeg, label %.lr.ph1355, label %._crit_edge1356

.lr.ph1355:                                       ; preds = %.critedge
  %i.aeh = select i1 %i.jy, i64 12582912, i64 6291456
  %i.aei = select i1 %i.jy, i64 22544384, i64 12058624
  %i.aej = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.ael = zext nneg i16 %.3 to i32
  %i.aem = icmp sgt i32 %1, 0
  %i.aen = zext nneg i16 %.3878 to i32
  %i.aeo = shl nuw nsw i32 1048576, %i.jz
  %i.aep = zext nneg i32 %i.aeo to i64
  %i.aeq = zext i16 %.3 to i64                    ; 5 uses
  %i.aer = zext i16 %.3878 to i64                 ; 2 uses
  %i.aes = tail call i32 @llvm.smax.i32(i32 %i.ka, i32 5)
  %smax1564 = add nsw i32 %i.aes, -4
  %.pre1599 = load i16, ptr %i.f, align 2, !tbaa !11
  %i.aet = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ka to i64   ; 7 uses
  %wide.trip.count1565 = zext i32 %smax1564 to i64 ; 2 uses
  %i.aev = add nuw nsw i64 %wide.trip.count, 7
  %gep1253.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %invariant.gep1247.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %gep1253.1.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %invariant.gep1247.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %invariant.gep1247.3 = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 4 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aex = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.aey = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %gep1253.1.3 = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %invariant.gep1247.4 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %invariant.gep1247.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.afa = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.afb = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %gep1253.1.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %xtraiter = and i64 %wide.trip.count, 4         ; 2 uses
  %unroll_iter = and i64 %wide.trip.count, 8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1875 = icmp ne i64 %xtraiter, 0
  %trip.count.minus.1 = add nsw i64 %wide.trip.count1565, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.rnd.up = add nuw nsw i64 %wide.trip.count1565, 3
  %n.vec = and i64 %n.rnd.up, 8589934588
  %i.afc = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.afe = icmp eq i64 %n.vec, 4
  %i.aff = icmp ugt <4 x i64> %broadcast.splat, <i64 3, i64 4, i64 5, i64 6> ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %xtraiter1878 = and i64 %i.aev, 7
  br label %bb.cl

.critedge21:                                      ; preds = %bb.cg, %bb.ck, %.loopexit1140.4, %.loopexit1140.3, %.loopexit1140.2, %.loopexit1140.1, %.loopexit1140, %.preheader1141
  %i.afi = add nuw nsw i32 %.09801217, 1
  %exitcond1423.not = icmp eq i32 %.09801217, %i.aae
  br i1 %exitcond1423.not, label %.critedge, label %.preheader1141, !llvm.loop !88

2:                                                ; preds = %.preheader1141
  %3 = getelementptr inbounds nuw i8, ptr %i.ady, i64 3
  %4 = load i8, ptr %3, align 1, !tbaa !75
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %.loopexit1140, label %bb.bg

bb.bg:                                            ; preds = %2
  %i.afj = add nuw i32 %i.aec, 3                  ; 4 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.afl = load i16, ptr %i.afk, align 8, !tbaa !79
  %i.afm = sext i16 %i.afl to i32                 ; 2 uses
  %i.afn = mul nsw i32 %i.afm, 3
  %i.afo = add i32 %i.afj, %i.afn                 ; 2 uses
  %i.afp = icmp sgt i32 %i.afo, -1
  %.not1035 = icmp slt i32 %i.afo, %i.aab
  %or.cond1040 = select i1 %i.afp, i1 %.not1035, i1 false
  br i1 %or.cond1040, label %bb.bk, label %bb.bj

bb.bh:                                            ; preds = %bb.bk
  %i.afq = getelementptr inbounds nuw i8, ptr %i.aeb, i64 10
  %i.afr = load i16, ptr %i.afq, align 2, !tbaa !79
  %i.afs = sext i16 %i.afr to i32                 ; 2 uses
  %i.aft = mul nsw i32 %i.afs, 3
  %i.afu = add i32 %i.afj, %i.aft                 ; 2 uses
  %i.afv = icmp sgt i32 %i.afu, -1
  %.not1035.1 = icmp slt i32 %i.afu, %i.aab
  %or.cond1040.1 = select i1 %i.afv, i1 %.not1035.1, i1 false
  br i1 %or.cond1040.1, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.afw = mul nsw i32 %i.afs, -3
  %i.afx = add i32 %i.afj, %i.afw                 ; 2 uses
  %i.afy = icmp sgt i32 %i.afx, -1
  %.not1036.1 = icmp slt i32 %i.afx, %i.aab
  %or.cond1041.1 = select i1 %i.afy, i1 %.not1036.1, i1 false
  br i1 %or.cond1041.1, label %.loopexit1140, label %bb.bl

bb.bj:                                            ; preds = %bb.cj, %bb.ch, %bb.ce, %bb.cc, %bb.bz, %bb.bx, %bb.bu, %bb.bs, %bb.bp, %bb.bn, %bb.bh, %bb.bg
  %i.afz = tail call ptr @__cxa_allocate_exception(i64 4) #9 ; 2 uses
  store i32 5, ptr %i.afz, align 16, !tbaa !77
  tail call void @__cxa_throw(ptr nonnull %i.afz, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

bb.bk:                                            ; preds = %bb.bg
  %i.aga = mul nsw i32 %i.afm, -3
  %i.agb = add i32 %i.afj, %i.aga                 ; 2 uses
  %i.agc = icmp sgt i32 %i.agb, -1
  %.not1036 = icmp slt i32 %i.agb, %i.aab
  %or.cond1041 = select i1 %i.agc, i1 %.not1036, i1 false
  br i1 %or.cond1041, label %bb.bh, label %bb.bl

bb.bl:                                            ; preds = %bb.ck, %bb.ci, %bb.cf, %bb.cd, %bb.ca, %bb.by, %bb.bv, %bb.bt, %bb.bq, %bb.bo, %bb.bi, %bb.bk
  %i.agd = tail call ptr @__cxa_allocate_exception(i64 4) #9 ; 2 uses
  store i32 5, ptr %i.agd, align 16, !tbaa !77
  tail call void @__cxa_throw(ptr nonnull %i.agd, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

.loopexit1140:                                    ; preds = %bb.bi, %2
  br i1 %exitcond1416.1.not, label %.critedge21, label %bb.bm

bb.bm:                                            ; preds = %.loopexit1140
  %i.age = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  %i.agf = load i8, ptr %i.age, align 2, !tbaa !75
  %i.agg = icmp eq i8 %i.agf, 1
  br i1 %i.agg, label %.loopexit1140.1, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.agh = add nuw i32 %i.aec, 4                  ; 4 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.aeb, i64 40
  %i.agj = load i16, ptr %i.agi, align 8, !tbaa !79
  %i.agk = sext i16 %i.agj to i32                 ; 2 uses
  %i.agl = mul nsw i32 %i.agk, 3
  %i.agm = add i32 %i.agh, %i.agl                 ; 2 uses
  %i.agn = icmp sgt i32 %i.agm, -1
  %.not1035.11418 = icmp slt i32 %i.agm, %i.aab
  %or.cond1040.11419 = select i1 %i.agn, i1 %.not1035.11418, i1 false
  br i1 %or.cond1040.11419, label %bb.bo, label %bb.bj

bb.bo:                                            ; preds = %bb.bn
  %i.ago = mul nsw i32 %i.agk, -3
  %i.agp = add i32 %i.agh, %i.ago                 ; 2 uses
  %i.agq = icmp sgt i32 %i.agp, -1
  %.not1036.11420 = icmp slt i32 %i.agp, %i.aab
  %or.cond1041.11421 = select i1 %i.agq, i1 %.not1036.11420, i1 false
  br i1 %or.cond1041.11421, label %bb.bp, label %bb.bl

bb.bp:                                            ; preds = %bb.bo
  %i.agr = getelementptr inbounds nuw i8, ptr %i.aeb, i64 42
  %i.ags = load i16, ptr %i.agr, align 2, !tbaa !79
  %i.agt = sext i16 %i.ags to i32                 ; 2 uses
  %i.agu = mul nsw i32 %i.agt, 3
  %i.agv = add i32 %i.agh, %i.agu                 ; 2 uses
  %i.agw = icmp sgt i32 %i.agv, -1
  %.not1035.1.1 = icmp slt i32 %i.agv, %i.aab
  %or.cond1040.1.1 = select i1 %i.agw, i1 %.not1035.1.1, i1 false
  br i1 %or.cond1040.1.1, label %bb.bq, label %bb.bj

bb.bq:                                            ; preds = %bb.bp
  %i.agx = mul nsw i32 %i.agt, -3
  %i.agy = add i32 %i.agh, %i.agx                 ; 2 uses
  %i.agz = icmp sgt i32 %i.agy, -1
  %.not1036.1.1 = icmp slt i32 %i.agy, %i.aab
  %or.cond1041.1.1 = select i1 %i.agz, i1 %.not1036.1.1, i1 false
  br i1 %or.cond1041.1.1, label %.loopexit1140.1, label %bb.bl

.loopexit1140.1:                                  ; preds = %bb.bq, %bb.bm
  br i1 %exitcond1416.2.not, label %.critedge21, label %bb.br

bb.br:                                            ; preds = %.loopexit1140.1
  %i.aha = getelementptr inbounds nuw i8, ptr %i.ady, i64 5
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !75
  %i.ahc = icmp eq i8 %i.ahb, 1
  br i1 %i.ahc, label %.loopexit1140.2, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ahd = add nuw i32 %i.aec, 5                  ; 4 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.aeb, i64 72
  %i.ahf = load i16, ptr %i.ahe, align 8, !tbaa !79
  %i.ahg = sext i16 %i.ahf to i32                 ; 2 uses
  %i.ahh = mul nsw i32 %i.ahg, 3
  %i.ahi = add i32 %i.ahd, %i.ahh                 ; 2 uses
  %i.ahj = icmp sgt i32 %i.ahi, -1
  %.not1035.2 = icmp slt i32 %i.ahi, %i.aab
  %or.cond1040.2 = select i1 %i.ahj, i1 %.not1035.2, i1 false
  br i1 %or.cond1040.2, label %bb.bt, label %bb.bj

bb.bt:                                            ; preds = %bb.bs
  %i.ahk = mul nsw i32 %i.ahg, -3
  %i.ahl = add i32 %i.ahd, %i.ahk                 ; 2 uses
  %i.ahm = icmp sgt i32 %i.ahl, -1
  %.not1036.2 = icmp slt i32 %i.ahl, %i.aab
  %or.cond1041.2 = select i1 %i.ahm, i1 %.not1036.2, i1 false
  br i1 %or.cond1041.2, label %bb.bu, label %bb.bl

bb.bu:                                            ; preds = %bb.bt
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.aeb, i64 74
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !79
  %i.ahp = sext i16 %i.aho to i32                 ; 2 uses
  %i.ahq = mul nsw i32 %i.ahp, 3
  %i.ahr = add i32 %i.ahd, %i.ahq                 ; 2 uses
  %i.ahs = icmp sgt i32 %i.ahr, -1
  %.not1035.1.2 = icmp slt i32 %i.ahr, %i.aab
  %or.cond1040.1.2 = select i1 %i.ahs, i1 %.not1035.1.2, i1 false
  br i1 %or.cond1040.1.2, label %bb.bv, label %bb.bj

bb.bv:                                            ; preds = %bb.bu
  %i.aht = mul nsw i32 %i.ahp, -3
  %i.ahu = add i32 %i.ahd, %i.aht                 ; 2 uses
  %i.ahv = icmp sgt i32 %i.ahu, -1
  %.not1036.1.2 = icmp slt i32 %i.ahu, %i.aab
  %or.cond1041.1.2 = select i1 %i.ahv, i1 %.not1036.1.2, i1 false
  br i1 %or.cond1041.1.2, label %.loopexit1140.2, label %bb.bl

.loopexit1140.2:                                  ; preds = %bb.bv, %bb.br
  br i1 %exitcond1416.3.not, label %.critedge21, label %bb.bw

bb.bw:                                            ; preds = %.loopexit1140.2
  %i.ahw = load i8, ptr %i.ady, align 2, !tbaa !75
  %i.ahx = icmp eq i8 %i.ahw, 1
  br i1 %i.ahx, label %.loopexit1140.3, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ahy = add nuw i32 %i.aec, 6                  ; 4 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aia = load i16, ptr %i.ahz, align 8, !tbaa !79
  %i.aib = sext i16 %i.aia to i32                 ; 2 uses
  %i.aic = mul nsw i32 %i.aib, 3
  %i.aid = add i32 %i.ahy, %i.aic                 ; 2 uses
  %i.aie = icmp sgt i32 %i.aid, -1
  %.not1035.3 = icmp slt i32 %i.aid, %i.aab
  %or.cond1040.3 = select i1 %i.aie, i1 %.not1035.3, i1 false
  br i1 %or.cond1040.3, label %bb.by, label %bb.bj

bb.by:                                            ; preds = %bb.bx
  %i.aif = mul nsw i32 %i.aib, -3
  %i.aig = add i32 %i.ahy, %i.aif                 ; 2 uses
  %i.aih = icmp sgt i32 %i.aig, -1
  %.not1036.3 = icmp slt i32 %i.aig, %i.aab
  %or.cond1041.3 = select i1 %i.aih, i1 %.not1036.3, i1 false
  br i1 %or.cond1041.3, label %bb.bz, label %bb.bl

bb.bz:                                            ; preds = %bb.by
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aeb, i64 10
  %i.aij = load i16, ptr %i.aii, align 2, !tbaa !79
  %i.aik = sext i16 %i.aij to i32                 ; 2 uses
  %i.ail = mul nsw i32 %i.aik, 3
  %i.aim = add i32 %i.ahy, %i.ail                 ; 2 uses
  %i.ain = icmp sgt i32 %i.aim, -1
  %.not1035.1.3 = icmp slt i32 %i.aim, %i.aab
  %or.cond1040.1.3 = select i1 %i.ain, i1 %.not1035.1.3, i1 false
  br i1 %or.cond1040.1.3, label %bb.ca, label %bb.bj

bb.ca:                                            ; preds = %bb.bz
  %i.aio = mul nsw i32 %i.aik, -3
  %i.aip = add i32 %i.ahy, %i.aio                 ; 2 uses
  %i.aiq = icmp sgt i32 %i.aip, -1
  %.not1036.1.3 = icmp slt i32 %i.aip, %i.aab
  %or.cond1041.1.3 = select i1 %i.aiq, i1 %.not1036.1.3, i1 false
  br i1 %or.cond1041.1.3, label %.loopexit1140.3, label %bb.bl

.loopexit1140.3:                                  ; preds = %bb.ca, %bb.bw
  br i1 %exitcond1416.4.not, label %.critedge21, label %bb.cb

bb.cb:                                            ; preds = %.loopexit1140.3
  %i.air = getelementptr inbounds nuw i8, ptr %i.ady, i64 1
  %i.ais = load i8, ptr %i.air, align 1, !tbaa !75
  %i.ait = icmp eq i8 %i.ais, 1
  br i1 %i.ait, label %.loopexit1140.4, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.aiu = add nuw i32 %i.aec, 7                  ; 4 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aeb, i64 40
  %i.aiw = load i16, ptr %i.aiv, align 8, !tbaa !79
  %i.aix = sext i16 %i.aiw to i32                 ; 2 uses
  %i.aiy = mul nsw i32 %i.aix, 3
  %i.aiz = add i32 %i.aiu, %i.aiy                 ; 2 uses
  %i.aja = icmp sgt i32 %i.aiz, -1
  %.not1035.4 = icmp slt i32 %i.aiz, %i.aab
  %or.cond1040.4 = select i1 %i.aja, i1 %.not1035.4, i1 false
  br i1 %or.cond1040.4, label %bb.cd, label %bb.bj

bb.cd:                                            ; preds = %bb.cc
  %i.ajb = mul nsw i32 %i.aix, -3
  %i.ajc = add i32 %i.aiu, %i.ajb                 ; 2 uses
  %i.ajd = icmp sgt i32 %i.ajc, -1
  %.not1036.4 = icmp slt i32 %i.ajc, %i.aab
  %or.cond1041.4 = select i1 %i.ajd, i1 %.not1036.4, i1 false
  br i1 %or.cond1041.4, label %bb.ce, label %bb.bl

bb.ce:                                            ; preds = %bb.cd
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aeb, i64 42
  %i.ajf = load i16, ptr %i.aje, align 2, !tbaa !79
  %i.ajg = sext i16 %i.ajf to i32                 ; 2 uses
  %i.ajh = mul nsw i32 %i.ajg, 3
  %i.aji = add i32 %i.aiu, %i.ajh                 ; 2 uses
  %i.ajj = icmp sgt i32 %i.aji, -1
  %.not1035.1.4 = icmp slt i32 %i.aji, %i.aab
  %or.cond1040.1.4 = select i1 %i.ajj, i1 %.not1035.1.4, i1 false
  br i1 %or.cond1040.1.4, label %bb.cf, label %bb.bj

bb.cf:                                            ; preds = %bb.ce
  %i.ajk = mul nsw i32 %i.ajg, -3
  %i.ajl = add i32 %i.aiu, %i.ajk                 ; 2 uses
  %i.ajm = icmp sgt i32 %i.ajl, -1
  %.not1036.1.4 = icmp slt i32 %i.ajl, %i.aab
  %or.cond1041.1.4 = select i1 %i.ajm, i1 %.not1036.1.4, i1 false
  br i1 %or.cond1041.1.4, label %.loopexit1140.4, label %bb.bl

.loopexit1140.4:                                  ; preds = %bb.cf, %bb.cb
  br i1 %exitcond1416.5.not, label %.critedge21, label %bb.cg

bb.cg:                                            ; preds = %.loopexit1140.4
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ady, i64 2
  %i.ajo = load i8, ptr %i.ajn, align 2, !tbaa !75
  %i.ajp = icmp eq i8 %i.ajo, 1
  br i1 %i.ajp, label %.critedge21, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
end_hunk_0
begin_hunk_1_@_ZN6LibRaw18xtrans_interpolateEi:bb.a
  %i.apg = getelementptr inbounds nuw [32 x i8], ptr %i.any, i64 %i.apf ; 6 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 2
  %i.api = load i16, ptr %i.aph, align 2, !tbaa !79 ; 2 uses
  %i.apj = sext i16 %i.api to i64
  %i.apk = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.apj
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 2
  %i.apm = load i16, ptr %i.apl, align 2, !tbaa !79
  %i.apn = zext i16 %i.apm to i32
  %i.apo = load i16, ptr %i.apg, align 16, !tbaa !79 ; 2 uses
  %i.app = sext i16 %i.apo to i64
  %i.apq = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.app
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 2
  %i.aps = load i16, ptr %i.apr, align 2, !tbaa !79
  %i.apt = zext i16 %i.aps to i32
  %i.apu = add nuw nsw i32 %i.apt, %i.apn
  %i.apv = mul nuw nsw i32 %i.apu, 174
  %i.apw = sext i16 %i.api to i32
  %i.apx = shl nsw i32 %i.apw, 1
  %i.apy = sext i32 %i.apx to i64
  %i.apz = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.apy
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 2
  %i.aqb = load i16, ptr %i.aqa, align 2, !tbaa !79
  %i.aqc = zext i16 %i.aqb to i32
  %i.aqd = sext i16 %i.apo to i32
  %i.aqe = shl nsw i32 %i.aqd, 1
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.aqf
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 2
  %i.aqi = load i16, ptr %i.aqh, align 2, !tbaa !79
  %i.aqj = zext i16 %i.aqi to i32
  %i.aqk = add nuw nsw i32 %i.aqj, %i.aqc
  %.neg1033 = mul nsw i32 %i.aqk, -46
  %i.aql = add nsw i32 %.neg1033, %i.apv          ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.apg, i64 6
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !79
  %i.aqo = sext i16 %i.aqn to i64
  %i.aqp = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.aqo
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 2
  %i.aqr = load i16, ptr %i.aqq, align 2, !tbaa !79
  %i.aqs = zext i16 %i.aqr to i32
  %i.aqt = mul nuw nsw i32 %i.aqs, 223
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.apg, i64 4
  %i.aqv = load i16, ptr %i.aqu, align 4, !tbaa !79
  %i.aqw = sext i16 %i.aqv to i64                 ; 2 uses
  %i.aqx = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.aqw
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 2
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !79
  %i.ara = zext i16 %i.aqz to i32
  %i.arb = mul nuw nsw i32 %i.ara, 33
  %i.arc = add nuw nsw i32 %i.arb, %i.aqt
  %i.ard = sext i8 %i.aou to i64                  ; 2 uses
  %i.are = getelementptr [2 x i8], ptr %i.apc, i64 %i.ard ; 5 uses
  %i.arf = load i16, ptr %i.are, align 2, !tbaa !79
  %i.arg = zext i16 %i.arf to i32                 ; 2 uses
  %i.arh = sub nsw i64 0, %i.aqw
  %i.ari = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.arh
  %i.arj = getelementptr inbounds [2 x i8], ptr %i.ari, i64 %i.ard
  %i.ark = load i16, ptr %i.arj, align 2, !tbaa !79
  %i.arl = zext i16 %i.ark to i32
  %i.arm = sub nsw i32 %i.arg, %i.arl
  %i.arn = mul nsw i32 %i.arm, 92
  %i.aro = add nsw i32 %i.arc, %i.arn             ; 2 uses
  %i.arp = shl nuw nsw i32 %i.arg, 1              ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.apg, i64 8
  %i.arr = load i16, ptr %i.arq, align 8, !tbaa !79 ; 2 uses
  %i.ars = sext i16 %i.arr to i64
  %i.art = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.ars
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 2
  %i.arv = load i16, ptr %i.aru, align 2, !tbaa !79
  %i.arw = zext i16 %i.arv to i32
  %i.arx = mul nuw nsw i32 %i.arw, 164
  %i.ary = sext i16 %i.arr to i32                 ; 3 uses
  %i.arz = mul nsw i32 %i.ary, -2
  %i.asa = sext i32 %i.arz to i64
  %i.asb = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.asa
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 2
  %i.asd = load i16, ptr %i.asc, align 2, !tbaa !79
  %i.ase = zext i16 %i.asd to i32
  %i.asf = mul nuw nsw i32 %i.ase, 92
  %i.asg = add nuw nsw i32 %i.asf, %i.arx
  %i.ash = mul nsw i32 %i.ary, 3
  %i.asi = sext i32 %i.ash to i64
  %gep = getelementptr [8 x i8], ptr %i.are, i64 %i.asi
  %i.asj = load i16, ptr %gep, align 2, !tbaa !79
  %i.ask = zext i16 %i.asj to i32
  %i.asl = mul nsw i32 %i.ary, -3
  %i.asm = sext i32 %i.asl to i64
  %gep1224 = getelementptr [8 x i8], ptr %i.are, i64 %i.asm
  %i.asn = load i16, ptr %gep1224, align 2, !tbaa !79
  %i.aso = zext i16 %i.asn to i32
  %i.asp = add nuw nsw i32 %i.ask, %i.aso
  %i.asq = sub nsw i32 %i.arp, %i.asp
  %i.asr = mul nsw i32 %i.asq, 33
  %i.ass = add nsw i32 %i.asg, %i.asr             ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.apg, i64 10
  %i.asu = load i16, ptr %i.ast, align 2, !tbaa !79 ; 2 uses
  %i.asv = sext i16 %i.asu to i64
  %i.asw = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.asv
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 2
  %i.asy = load i16, ptr %i.asx, align 2, !tbaa !79
  %i.asz = zext i16 %i.asy to i32
  %i.ata = mul nuw nsw i32 %i.asz, 164
  %i.atb = sext i16 %i.asu to i32                 ; 3 uses
  %i.atc = mul nsw i32 %i.atb, -2
  %i.atd = sext i32 %i.atc to i64
  %i.ate = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.atd
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 2
  %i.atg = load i16, ptr %i.atf, align 2, !tbaa !79
  %i.ath = zext i16 %i.atg to i32
  %i.ati = mul nuw nsw i32 %i.ath, 92
  %i.atj = add nuw nsw i32 %i.ati, %i.ata
  %i.atk = mul nsw i32 %i.atb, 3
  %i.atl = sext i32 %i.atk to i64
  %gep.1 = getelementptr [8 x i8], ptr %i.are, i64 %i.atl
  %i.atm = load i16, ptr %gep.1, align 2, !tbaa !79
  %i.atn = zext i16 %i.atm to i32
  %i.ato = mul nsw i32 %i.atb, -3
  %i.atp = sext i32 %i.ato to i64
  %gep1224.1 = getelementptr [8 x i8], ptr %i.are, i64 %i.atp
  %i.atq = load i16, ptr %gep1224.1, align 2, !tbaa !79
  %i.atr = zext i16 %i.atq to i32
  %i.ats = add nuw nsw i32 %i.atn, %i.atr
  %i.att = sub nsw i32 %i.arp, %i.ats
  %i.atu = mul nsw i32 %i.att, 33
  %i.atv = add nsw i32 %i.atj, %i.atu             ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.apc, i64 2 ; 4 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.apc, i64 6 ; 4 uses
  %i.aty = sub nuw nsw i64 %indvars.iv1445, %indvars.iv1424
  %invariant.gep1228 = getelementptr [6 x i8], ptr %invariant.gep1226, i64 %i.aty ; 4 uses
  %i.atz = load i16, ptr %i.atw, align 2, !tbaa !79
  %i.aua = zext i16 %i.atz to i32
  %i.aub = ashr i32 %i.aql, 8
  %i.auc = load i16, ptr %i.atx, align 2, !tbaa !79
  %i.aud = zext i16 %i.auc to i32
  %.1042 = tail call i32 @llvm.smin.i32(i32 %i.aub, i32 %i.aud)
  %i.aue = tail call i32 @llvm.smax.i32(i32 %.1042, i32 %i.aua)
  %i.auf = trunc nuw i32 %i.aue to i16
  %gep1229 = getelementptr [1572864 x i8], ptr %invariant.gep1228, i64 %i.aoe
  %i.aug = getelementptr inbounds nuw i8, ptr %gep1229, i64 2
  store i16 %i.auf, ptr %i.aug, align 2, !tbaa !79
  %i.auh = load i16, ptr %i.atw, align 2, !tbaa !79
  %i.aui = zext i16 %i.auh to i32
  %i.auj = ashr i32 %i.aro, 8
  %i.auk = load i16, ptr %i.atx, align 2, !tbaa !79
  %i.aul = zext i16 %i.auk to i32
  %.1042.1 = tail call i32 @llvm.smin.i32(i32 %i.auj, i32 %i.aul)
  %i.aum = tail call i32 @llvm.smax.i32(i32 %.1042.1, i32 %i.aui)
  %i.aun = trunc nuw i32 %i.aum to i16
  %gep1229.1 = getelementptr [1572864 x i8], ptr %invariant.gep1228, i64 %i.aog
  %i.auo = getelementptr inbounds nuw i8, ptr %gep1229.1, i64 2
  store i16 %i.aun, ptr %i.auo, align 2, !tbaa !79
  %i.aup = load i16, ptr %i.atw, align 2, !tbaa !79
  %i.auq = zext i16 %i.aup to i32
  %i.aur = ashr i32 %i.ass, 8
  %i.aus = load i16, ptr %i.atx, align 2, !tbaa !79
  %i.aut = zext i16 %i.aus to i32
  %.1042.2 = tail call i32 @llvm.smin.i32(i32 %i.aur, i32 %i.aut)
  %i.auu = tail call i32 @llvm.smax.i32(i32 %.1042.2, i32 %i.auq)
  %i.auv = trunc nuw i32 %i.auu to i16
  %i.auw = getelementptr [1572864 x i8], ptr %invariant.gep1228, i64 %i.aoh
  %i.aux = getelementptr i8, ptr %i.auw, i64 3145730
  store i16 %i.auv, ptr %i.aux, align 2, !tbaa !79
  %i.auy = load i16, ptr %i.atw, align 2, !tbaa !79
  %i.auz = zext i16 %i.auy to i32
  %i.ava = ashr i32 %i.atv, 8
  %i.avb = load i16, ptr %i.atx, align 2, !tbaa !79
  %i.avc = zext i16 %i.avb to i32
  %.1042.3 = tail call i32 @llvm.smin.i32(i32 %i.ava, i32 %i.avc)
  %i.avd = tail call i32 @llvm.smax.i32(i32 %.1042.3, i32 %i.auz)
  %i.ave = trunc nuw i32 %i.avd to i16
  %gep1229.3 = getelementptr [1572864 x i8], ptr %invariant.gep1228, i64 %i.aoj
  %i.avf = getelementptr inbounds nuw i8, ptr %gep1229.3, i64 2
  store i16 %i.ave, ptr %i.avf, align 2, !tbaa !79
  br label %.loopexit1132

.loopexit1132:                                    ; preds = %.preheader1131, %bb.co
  %i.avg = phi i32 [ %i.atv, %.preheader1131 ], [ %i.aol, %bb.co ] ; 3 uses
  %i.avh = phi i32 [ %i.ass, %.preheader1131 ], [ %i.aom, %bb.co ] ; 3 uses
  %i.avi = phi i32 [ %i.aro, %.preheader1131 ], [ %i.aon, %bb.co ] ; 3 uses
  %i.avj = phi i32 [ %i.aql, %.preheader1131 ], [ %i.aoo, %bb.co ] ; 3 uses
  %indvars.iv.next1446 = add nuw nsw i64 %indvars.iv1445, 1 ; 2 uses
  %i.avk = icmp slt i64 %indvars.iv.next1446, %i.amd
  br i1 %i.avk, label %bb.co, label %._crit_edge1233, !llvm.loop !94

._crit_edge1293:                                  ; preds = %._crit_edge1289, %.preheader1138
  %i.avl = sub nsw i32 %., %i.akz                 ; 7 uses
  %i.avm = trunc i64 %indvars.iv1424 to i32       ; 3 uses
  %i.avn = sub i32 %i.alw, %i.avm                 ; 8 uses
  %i.avo = add nsw i32 %i.avl, -2
  %i.avp = icmp sgt i32 %i.avl, 4
  %i.avq = add nsw i32 %i.avn, -2
  %i.avr = icmp sgt i32 %i.avn, 4
  %i.avs = add nsw i32 %i.avl, -3
  %i.avt = icmp sgt i32 %i.avl, 6
  %i.avu = add nsw i32 %i.avn, -3
  %i.avv = icmp sgt i32 %i.avn, 6
  %i.avw = sext i32 %i.avq to i64
  %i.avx = sext i32 %i.avo to i64
  %i.avy = sext i32 %i.avu to i64                 ; 2 uses
  %i.avz = sext i32 %i.avs to i64
  %6 = tail call i64 @llvm.smax.i64(i64 %i.avy, i64 4)
  %7 = add nsw i64 %6, -3                         ; 2 uses
  %min.iters.check = icmp slt i32 %i.avn, 14
  %n.vec1802 = and i64 %7, -8                     ; 3 uses
  %8 = or disjoint i64 %n.vec1802, 3
  %cmp.n = icmp eq i64 %7, %n.vec1802
  br label %.preheader1134

bb.cp:                                            ; preds = %.lr.ph1292, %._crit_edge1289
  %.09231291 = phi i32 [ 0, %.lr.ph1292 ], [ %i.bzc, %._crit_edge1289 ] ; 2 uses
  %.19491290 = phi ptr [ %i.akl, %.lr.ph1292 ], [ %.29501061, %._crit_edge1289 ] ; 3 uses
  switch i32 %.09231291, label %bb.cq [
    i32 1, label %.thread
    i32 0, label %.loopexit1135
  ]

.thread:                                          ; preds = %bb.cp
  %i.awa = getelementptr inbounds nuw i8, ptr %.19491290, i64 6291456 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6291456) %i.awa, ptr noundef nonnull align 1 dereferenceable(6291456) %i.akl, i64 6291456, i1 false)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.thread
  %.29501060 = phi ptr [ %i.awa, %.thread ], [ %.19491290, %bb.cp ] ; 3 uses
  br i1 %brmerge1361, label %.loopexit1135, label %.lr.ph1242

.lr.ph1242:                                       ; preds = %bb.cq, %._crit_edge1243
  %indvars.iv1462 = phi i64 [ %indvars.iv.next1463, %._crit_edge1243 ], [ %indvars.iv1460, %bb.cq ] ; 6 uses
  %i.awb = trunc i64 %indvars.iv1462 to i32
  %i.awc = add i32 %i.awb, 6
  %i.awd = urem i32 %i.awc, 6
  %i.awe = zext nneg i32 %i.awd to i64
  %i.awf = getelementptr inbounds nuw [6 x i8], ptr %i.n, i64 %i.awe
  %i.awg = trunc nuw nsw i64 %indvars.iv1462 to i32
  %i.awh = urem i32 %i.awg, 3
  %i.awi = zext nneg i32 %i.awh to i64
  %i.awj = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %i.awi
  %i.awk = sub nsw i64 %indvars.iv1462, %i.aeq
  %i.awl = trunc nsw i64 %i.awk to i32
  %i.awm = srem i32 %i.awl, 3
  %.not1032 = icmp eq i32 %i.awm, 0               ; 2 uses
  %i.awn = zext i1 %.not1032 to i32               ; 2 uses
  %i.awo = sub nuw nsw i64 %indvars.iv1462, %indvars.iv1429
  %invariant.gep1235 = getelementptr [3072 x i8], ptr %.29501060, i64 %i.awo
  %i.awp = xor i32 %i.awn, 1
  %i.awq = zext nneg i32 %i.awp to i64
  %i.awr = zext i1 %.not1032 to i64
  %i.aws = xor i32 %i.awn, 3
  %i.awt = zext nneg i32 %i.aws to i64
  br label %bb.cr

._crit_edge1243:                                  ; preds = %.loopexit1124
  %indvars.iv.next1463 = add nuw nsw i64 %indvars.iv1462, 1 ; 2 uses
  %i.awu = icmp slt i64 %indvars.iv.next1463, %i.amt
  br i1 %i.awu, label %.lr.ph1242, label %.loopexit1135, !llvm.loop !95

bb.cr:                                            ; preds = %.lr.ph1242, %.loopexit1124
  %indvars.iv1457 = phi i64 [ %indvars.iv1455, %.lr.ph1242 ], [ %indvars.iv.next1458, %.loopexit1124 ] ; 5 uses
  %i.awv = trunc i64 %indvars.iv1457 to i32
  %i.aww = add i32 %i.awv, 6
  %i.awx = urem i32 %i.aww, 6
  %i.awy = zext nneg i32 %i.awx to i64
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awf, i64 %i.awy
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !75 ; 2 uses
  %i.axb = icmp eq i8 %i.axa, 1
  br i1 %i.axb, label %.loopexit1124, label %.loopexit1124.loopexit

.loopexit1124.loopexit:                           ; preds = %bb.cr
  %i.axc = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.axd = load i16, ptr %i.f, align 2, !tbaa !11
  %i.axe = zext i16 %i.axd to i64
  %i.axf = mul i64 %indvars.iv1462, %i.axe
  %i.axg = and i64 %i.axf, 4294967295
  %i.axh = getelementptr inbounds nuw [8 x i8], ptr %i.axc, i64 %i.axg
  %i.axi = getelementptr inbounds nuw [8 x i8], ptr %i.axh, i64 %indvars.iv1457 ; 2 uses
  %i.axj = trunc nuw nsw i64 %indvars.iv1457 to i32
  %i.axk = urem i32 %i.axj, 3
  %i.axl = zext nneg i32 %i.axk to i64
  %i.axm = getelementptr inbounds nuw [32 x i8], ptr %i.awj, i64 %i.axl ; 3 uses
  %i.axn = sub nuw nsw i64 %indvars.iv1457, %indvars.iv1424
  %invariant.gep1237 = getelementptr [6 x i8], ptr %invariant.gep1235, i64 %i.axn ; 3 uses
  %i.axo = sext i8 %i.axa to i64                  ; 9 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axi, i64 2 ; 3 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axi, i64 6 ; 3 uses
  %gep1238 = getelementptr [1572864 x i8], ptr %invariant.gep1237, i64 %i.awq ; 4 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axm, i64 22
  %i.axs = load i16, ptr %i.axr, align 2, !tbaa !79
  %i.axt = sext i16 %i.axs to i64                 ; 2 uses
  %.idx = mul nsw i64 %i.axt, -12
  %i.axu = getelementptr inbounds i8, ptr %gep1238, i64 %.idx ; 2 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 2
  %i.axw = load i16, ptr %i.axv, align 2, !tbaa !79
  %i.axx = zext i16 %i.axw to i32
  %i.axy = getelementptr inbounds [6 x i8], ptr %gep1238, i64 %i.axt ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 2
  %i.aya = load i16, ptr %i.axz, align 2, !tbaa !79
  %i.ayb = zext i16 %i.aya to i32
  %i.ayc = getelementptr inbounds [2 x i8], ptr %i.axu, i64 %i.axo
  %i.ayd = load i16, ptr %i.ayc, align 2, !tbaa !79
  %i.aye = zext i16 %i.ayd to i32
  %i.ayf = getelementptr inbounds [2 x i8], ptr %i.axy, i64 %i.axo
  %i.ayg = load i16, ptr %i.ayf, align 2, !tbaa !79
  %i.ayh = zext i16 %i.ayg to i32
  %i.ayi = getelementptr inbounds [2 x i8], ptr %gep1238, i64 %i.axo
  %i.ayj = load i16, ptr %i.ayi, align 2, !tbaa !79
  %i.ayk = zext i16 %i.ayj to i32
  %i.ayl = mul nuw nsw i32 %i.ayk, 3
  %reass.add1109 = sub nsw i32 %i.ayb, %i.ayh
  %reass.mul1110 = shl nsw i32 %reass.add1109, 1
  %i.aym = sub nsw i32 %i.axx, %i.aye
  %i.ayn = add nsw i32 %i.aym, %i.ayl
  %i.ayo = add nsw i32 %i.ayn, %reass.mul1110
  %i.ayp = load i16, ptr %i.axp, align 2, !tbaa !79
  %i.ayq = zext i16 %i.ayp to i32
  %i.ayr = sdiv i32 %i.ayo, 3
  %i.ays = load i16, ptr %i.axq, align 2, !tbaa !79
  %i.ayt = zext i16 %i.ays to i32
  %.1043 = tail call i32 @llvm.smin.i32(i32 %i.ayr, i32 %i.ayt)
  %i.ayu = tail call i32 @llvm.smax.i32(i32 %.1043, i32 %i.ayq)
  %i.ayv = trunc nuw i32 %i.ayu to i16
  %i.ayw = getelementptr inbounds nuw i8, ptr %gep1238, i64 2
  store i16 %i.ayv, ptr %i.ayw, align 2, !tbaa !79
  %i.ayx = getelementptr [1572864 x i8], ptr %invariant.gep1237, i64 %i.awr ; 2 uses
  %gep1238.1 = getelementptr i8, ptr %i.ayx, i64 3145728 ; 3 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  %i.ayz = load i16, ptr %i.ayy, align 8, !tbaa !79
  %i.aza = sext i16 %i.ayz to i64                 ; 2 uses
  %.idx.1 = mul nsw i64 %i.aza, -12
  %i.azb = getelementptr inbounds i8, ptr %gep1238.1, i64 %.idx.1 ; 2 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 2
  %i.azd = load i16, ptr %i.azc, align 2, !tbaa !79
  %i.aze = zext i16 %i.azd to i32
  %i.azf = getelementptr inbounds [6 x i8], ptr %gep1238.1, i64 %i.aza ; 2 uses
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 2
  %i.azh = load i16, ptr %i.azg, align 2, !tbaa !79
  %i.azi = zext i16 %i.azh to i32
  %i.azj = getelementptr inbounds [2 x i8], ptr %i.azb, i64 %i.axo
  %i.azk = load i16, ptr %i.azj, align 2, !tbaa !79
  %i.azl = zext i16 %i.azk to i32
  %i.azm = getelementptr inbounds [2 x i8], ptr %i.azf, i64 %i.axo
  %i.azn = load i16, ptr %i.azm, align 2, !tbaa !79
  %i.azo = zext i16 %i.azn to i32
  %i.azp = getelementptr inbounds [2 x i8], ptr %gep1238.1, i64 %i.axo
  %i.azq = load i16, ptr %i.azp, align 2, !tbaa !79
  %i.azr = zext i16 %i.azq to i32
  %i.azs = mul nuw nsw i32 %i.azr, 3
  %reass.add1109.1 = sub nsw i32 %i.azi, %i.azo
  %reass.mul1110.1 = shl nsw i32 %reass.add1109.1, 1
  %i.azt = sub nsw i32 %i.aze, %i.azl
  %i.azu = add nsw i32 %i.azt, %i.azs
  %i.azv = add nsw i32 %i.azu, %reass.mul1110.1
  %i.azw = load i16, ptr %i.axp, align 2, !tbaa !79
  %i.azx = zext i16 %i.azw to i32
  %i.azy = sdiv i32 %i.azv, 3
  %i.azz = load i16, ptr %i.axq, align 2, !tbaa !79
  %i.baa = zext i16 %i.azz to i32
  %.1043.1 = tail call i32 @llvm.smin.i32(i32 %i.azy, i32 %i.baa)
  %i.bab = tail call i32 @llvm.smax.i32(i32 %.1043.1, i32 %i.azx)
  %i.bac = trunc nuw i32 %i.bab to i16
  %i.bad = getelementptr i8, ptr %i.ayx, i64 3145730
  store i16 %i.bac, ptr %i.bad, align 2, !tbaa !79
  %gep1238.2 = getelementptr [1572864 x i8], ptr %invariant.gep1237, i64 %i.awt ; 4 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %i.axm, i64 26
  %i.baf = load i16, ptr %i.bae, align 2, !tbaa !79
  %i.bag = sext i16 %i.baf to i64                 ; 2 uses
  %.idx.2 = mul nsw i64 %i.bag, -12
  %i.bah = getelementptr inbounds i8, ptr %gep1238.2, i64 %.idx.2 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 2
  %i.baj = load i16, ptr %i.bai, align 2, !tbaa !79
  %i.bak = zext i16 %i.baj to i32
  %i.bal = getelementptr inbounds [6 x i8], ptr %gep1238.2, i64 %i.bag ; 2 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 2
  %i.ban = load i16, ptr %i.bam, align 2, !tbaa !79
  %i.bao = zext i16 %i.ban to i32
  %i.bap = getelementptr inbounds [2 x i8], ptr %i.bah, i64 %i.axo
  %i.baq = load i16, ptr %i.bap, align 2, !tbaa !79
  %i.bar = zext i16 %i.baq to i32
  %i.bas = getelementptr inbounds [2 x i8], ptr %i.bal, i64 %i.axo
  %i.bat = load i16, ptr %i.bas, align 2, !tbaa !79
  %i.bau = zext i16 %i.bat to i32
  %i.bav = getelementptr inbounds [2 x i8], ptr %gep1238.2, i64 %i.axo
  %i.baw = load i16, ptr %i.bav, align 2, !tbaa !79
  %i.bax = zext i16 %i.baw to i32
  %i.bay = mul nuw nsw i32 %i.bax, 3
  %reass.add1109.2 = sub nsw i32 %i.bao, %i.bau
  %reass.mul1110.2 = shl nsw i32 %reass.add1109.2, 1
  %i.baz = sub nsw i32 %i.bak, %i.bar
  %i.bba = add nsw i32 %i.baz, %i.bay
  %i.bbb = add nsw i32 %i.bba, %reass.mul1110.2
  %i.bbc = load i16, ptr %i.axp, align 2, !tbaa !79
  %i.bbd = zext i16 %i.bbc to i32
  %i.bbe = sdiv i32 %i.bbb, 3
  %i.bbf = load i16, ptr %i.axq, align 2, !tbaa !79
  %i.bbg = zext i16 %i.bbf to i32
  %.1043.2 = tail call i32 @llvm.smin.i32(i32 %i.bbe, i32 %i.bbg)
  %i.bbh = tail call i32 @llvm.smax.i32(i32 %.1043.2, i32 %i.bbd)
  %i.bbi = trunc nuw i32 %i.bbh to i16
  %i.bbj = getelementptr inbounds nuw i8, ptr %gep1238.2, i64 2
  store i16 %i.bbi, ptr %i.bbj, align 2, !tbaa !79
  br label %.loopexit1124

.loopexit1124:                                    ; preds = %.loopexit1124.loopexit, %bb.cr
  %indvars.iv.next1458 = add nuw nsw i64 %indvars.iv1457, 1 ; 2 uses
  %i.bbk = icmp slt i64 %indvars.iv.next1458, %i.amx
  br i1 %i.bbk, label %bb.cr, label %._crit_edge1243, !llvm.loop !96

.loopexit1135:                                    ; preds = %._crit_edge1243, %bb.cq, %bb.cp
  %.29501061 = phi ptr [ %.19491290, %bb.cp ], [ %.29501060, %bb.cq ], [ %.29501060, %._crit_edge1243 ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN6LibRaw18xtrans_interpolateEi:bb.a
  %i.chx = zext i16 %i.chw to i32
  %i.chy = load i16, ptr %i.cgo, align 2, !tbaa !79
  %i.chz = sext i16 %i.chy to i64
  %i.cia = getelementptr inbounds [6 x i8], ptr %i.cgk, i64 %i.chz
  %i.cib = getelementptr inbounds nuw i8, ptr %i.cia, i64 4
  %i.cic = load i16, ptr %i.cib, align 2, !tbaa !79
  %i.cid = zext i16 %i.cic to i32
  %reass.add.1.2 = sub nsw i32 %i.chx, %i.cgz
  %reass.mul.1.2 = shl nsw i32 %reass.add.1.2, 1
  %i.cie = add nsw i32 %i.chg, %i.cid
  %i.cif = add nsw i32 %i.cie, %reass.mul.1.2     ; 3 uses
  %i.cig = icmp sgt i32 %i.cif, -3
  %i.cih = add nsw i32 %i.cif, -196605
  %brmerge1071.1.2 = icmp ult i32 %i.cih, -196607
  %.mux1072.1.2 = sext i1 %i.cig to i16
  br i1 %brmerge1071.1.2, label %.loopexit.2, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.cii = sdiv i32 %i.cif, 3
  %i.cij = trunc nuw i32 %i.cii to i16
  br label %.loopexit.2

.loopexit.loopexit.2:                             ; preds = %.loopexit.1
  %i.cik = shl nuw nsw i32 %i.cgu, 1
  %i.cil = add nuw nsw i32 %i.cgz, %i.che
  %i.cim = sub nsw i32 %i.cik, %i.cil             ; 2 uses
  %i.cin = load i16, ptr %i.cgw, align 2, !tbaa !79
  %i.cio = zext i16 %i.cin to i32
  %i.cip = load i16, ptr %i.chb, align 2, !tbaa !79
  %i.ciq = zext i16 %i.cip to i32
  %i.cir = add nsw i32 %i.cim, %i.cio
  %i.cis = add nsw i32 %i.cir, %i.ciq             ; 3 uses
  %i.cit = icmp sgt i32 %i.cis, -2
  %i.ciu = add nsw i32 %i.cis, -131070
  %brmerge1074.2 = icmp ult i32 %i.ciu, -131071
  %.mux1075.2 = sext i1 %i.cit to i16
  %i.civ = sdiv i32 %i.cis, 2
  %i.ciw = trunc nuw i32 %i.civ to i16
  %i.cix = select i1 %brmerge1074.2, i16 %.mux1075.2, i16 %i.ciw
  store i16 %i.cix, ptr %i.cgk, align 2, !tbaa !79
  %i.ciy = load i16, ptr %i.cgl, align 8, !tbaa !79
  %i.ciz = sext i16 %i.ciy to i64
  %i.cja = getelementptr inbounds [6 x i8], ptr %i.cgk, i64 %i.ciz
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cja, i64 4
  %i.cjc = load i16, ptr %i.cjb, align 2, !tbaa !79
  %i.cjd = zext i16 %i.cjc to i32
  %i.cje = load i16, ptr %i.cgo, align 2, !tbaa !79
  %i.cjf = sext i16 %i.cje to i64
  %i.cjg = getelementptr inbounds [6 x i8], ptr %i.cgk, i64 %i.cjf
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cjg, i64 4
  %i.cji = load i16, ptr %i.cjh, align 2, !tbaa !79
  %i.cjj = zext i16 %i.cji to i32
  %i.cjk = add nsw i32 %i.cim, %i.cjd
  %i.cjl = add nsw i32 %i.cjk, %i.cjj             ; 3 uses
  %i.cjm = icmp sgt i32 %i.cjl, -2
  %i.cjn = add nsw i32 %i.cjl, -131070
  %brmerge1074.1.2 = icmp ult i32 %i.cjn, -131071
  %.mux1075.1.2 = sext i1 %i.cjm to i16
  %i.cjo = sdiv i32 %i.cjl, 2
  %i.cjp = trunc nuw i32 %i.cjo to i16
  %i.cjq = select i1 %brmerge1074.1.2, i16 %.mux1075.1.2, i16 %i.cjp
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.loopexit.loopexit.2, %bb.dl, %bb.dk
  %.sink.2 = phi i16 [ %i.cjq, %.loopexit.loopexit.2 ], [ %.mux1072.1.2, %bb.dk ], [ %i.cij, %bb.dl ]
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.bzq, i64 3145732
  store i16 %.sink.2, ptr %i.cjr, align 2, !tbaa !79
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.bzq, i64 4718592 ; 8 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.bzu, i64 28 ; 3 uses
  %i.cju = load i16, ptr %i.cjt, align 4, !tbaa !79 ; 2 uses
  %i.cjv = sext i16 %i.cju to i32
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.bzu, i64 30 ; 3 uses
  %i.cjx = load i16, ptr %i.cjw, align 2, !tbaa !79 ; 2 uses
  %i.cjy = sext i16 %i.cjx to i32
  %i.cjz = sub nsw i32 0, %i.cjy
  %.not1024.3 = icmp eq i32 %i.cjv, %i.cjz
  %i.cka = getelementptr inbounds nuw i8, ptr %i.bzq, i64 4718594
  %i.ckb = load i16, ptr %i.cka, align 2, !tbaa !79
  %i.ckc = zext i16 %i.ckb to i32                 ; 2 uses
  %i.ckd = sext i16 %i.cju to i64
  %i.cke = getelementptr inbounds [6 x i8], ptr %i.cjs, i64 %i.ckd ; 3 uses
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cke, i64 2
  %i.ckg = load i16, ptr %i.ckf, align 2, !tbaa !79
  %i.ckh = zext i16 %i.ckg to i32                 ; 3 uses
  %i.cki = sext i16 %i.cjx to i64
  %i.ckj = getelementptr inbounds [6 x i8], ptr %i.cjs, i64 %i.cki ; 3 uses
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.ckj, i64 2
  %i.ckl = load i16, ptr %i.ckk, align 2, !tbaa !79
  %i.ckm = zext i16 %i.ckl to i32                 ; 2 uses
  br i1 %.not1024.3, label %.loopexit.loopexit.3, label %bb.dm

bb.dm:                                            ; preds = %.loopexit.2
  %i.ckn = mul nuw nsw i32 %i.ckc, 3
  %i.cko = sub nsw i32 %i.ckn, %i.ckm             ; 2 uses
  %i.ckp = load i16, ptr %i.cke, align 2, !tbaa !79
  %i.ckq = zext i16 %i.ckp to i32
  %i.ckr = load i16, ptr %i.ckj, align 2, !tbaa !79
  %i.cks = zext i16 %i.ckr to i32
  %reass.add.3 = sub nsw i32 %i.ckq, %i.ckh
  %reass.mul.3 = shl nsw i32 %reass.add.3, 1
  %i.ckt = add nsw i32 %i.cko, %i.cks
  %i.cku = add nsw i32 %i.ckt, %reass.mul.3       ; 3 uses
  %i.ckv = icmp sgt i32 %i.cku, -3
  %i.ckw = add nsw i32 %i.cku, -196605
  %brmerge1071.3 = icmp ult i32 %i.ckw, -196607
  %.mux1072.3 = sext i1 %i.ckv to i16
  br i1 %brmerge1071.3, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ckx = sdiv i32 %i.cku, 3
  %i.cky = trunc nuw i32 %i.ckx to i16
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.ckz = phi i16 [ %.mux1072.3, %bb.dm ], [ %i.cky, %bb.dn ]
  store i16 %i.ckz, ptr %i.cjs, align 2, !tbaa !79
  %i.cla = load i16, ptr %i.cjt, align 4, !tbaa !79
  %i.clb = sext i16 %i.cla to i64
  %i.clc = getelementptr inbounds [6 x i8], ptr %i.cjs, i64 %i.clb
  %i.cld = getelementptr inbounds nuw i8, ptr %i.clc, i64 4
  %i.cle = load i16, ptr %i.cld, align 2, !tbaa !79
  %i.clf = zext i16 %i.cle to i32
  %i.clg = load i16, ptr %i.cjw, align 2, !tbaa !79
  %i.clh = sext i16 %i.clg to i64
  %i.cli = getelementptr inbounds [6 x i8], ptr %i.cjs, i64 %i.clh
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cli, i64 4
  %i.clk = load i16, ptr %i.clj, align 2, !tbaa !79
  %i.cll = zext i16 %i.clk to i32
  %reass.add.1.3 = sub nsw i32 %i.clf, %i.ckh
  %reass.mul.1.3 = shl nsw i32 %reass.add.1.3, 1
  %i.clm = add nsw i32 %i.cko, %i.cll
  %i.cln = add nsw i32 %i.clm, %reass.mul.1.3     ; 3 uses
  %i.clo = icmp sgt i32 %i.cln, -3
  %i.clp = add nsw i32 %i.cln, -196605
  %brmerge1071.1.3 = icmp ult i32 %i.clp, -196607
  %.mux1072.1.3 = sext i1 %i.clo to i16
  br i1 %brmerge1071.1.3, label %.loopexit.3, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.clq = sdiv i32 %i.cln, 3
  %i.clr = trunc nuw i32 %i.clq to i16
  br label %.loopexit.3

.loopexit.loopexit.3:                             ; preds = %.loopexit.2
  %i.cls = shl nuw nsw i32 %i.ckc, 1
  %i.clt = add nuw nsw i32 %i.ckh, %i.ckm
  %i.clu = sub nsw i32 %i.cls, %i.clt             ; 2 uses
  %i.clv = load i16, ptr %i.cke, align 2, !tbaa !79
  %i.clw = zext i16 %i.clv to i32
  %i.clx = load i16, ptr %i.ckj, align 2, !tbaa !79
  %i.cly = zext i16 %i.clx to i32
  %i.clz = add nsw i32 %i.clu, %i.clw
  %i.cma = add nsw i32 %i.clz, %i.cly             ; 3 uses
  %i.cmb = icmp sgt i32 %i.cma, -2
  %i.cmc = add nsw i32 %i.cma, -131070
  %brmerge1074.3 = icmp ult i32 %i.cmc, -131071
  %.mux1075.3 = sext i1 %i.cmb to i16
  %i.cmd = sdiv i32 %i.cma, 2
  %i.cme = trunc nuw i32 %i.cmd to i16
  %i.cmf = select i1 %brmerge1074.3, i16 %.mux1075.3, i16 %i.cme
  store i16 %i.cmf, ptr %i.cjs, align 2, !tbaa !79
  %i.cmg = load i16, ptr %i.cjt, align 4, !tbaa !79
  %i.cmh = sext i16 %i.cmg to i64
  %i.cmi = getelementptr inbounds [6 x i8], ptr %i.cjs, i64 %i.cmh
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.cmi, i64 4
  %i.cmk = load i16, ptr %i.cmj, align 2, !tbaa !79
  %i.cml = zext i16 %i.cmk to i32
  %i.cmm = load i16, ptr %i.cjw, align 2, !tbaa !79
  %i.cmn = sext i16 %i.cmm to i64
  %i.cmo = getelementptr inbounds [6 x i8], ptr %i.cjs, i64 %i.cmn
  %i.cmp = getelementptr inbounds nuw i8, ptr %i.cmo, i64 4
  %i.cmq = load i16, ptr %i.cmp, align 2, !tbaa !79
  %i.cmr = zext i16 %i.cmq to i32
  %i.cms = add nsw i32 %i.clu, %i.cml
  %i.cmt = add nsw i32 %i.cms, %i.cmr             ; 3 uses
  %i.cmu = icmp sgt i32 %i.cmt, -2
  %i.cmv = add nsw i32 %i.cmt, -131070
  %brmerge1074.1.3 = icmp ult i32 %i.cmv, -131071
  %.mux1075.1.3 = sext i1 %i.cmu to i16
  %i.cmw = sdiv i32 %i.cmt, 2
  %i.cmx = trunc nuw i32 %i.cmw to i16
  %i.cmy = select i1 %brmerge1074.1.3, i16 %.mux1075.1.3, i16 %i.cmx
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %.loopexit.loopexit.3, %bb.dp, %bb.do
  %.sink.3 = phi i16 [ %i.cmy, %.loopexit.loopexit.3 ], [ %.mux1072.1.3, %bb.do ], [ %i.clr, %bb.dp ]
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.bzq, i64 4718596
  store i16 %.sink.3, ptr %i.cmz, align 2, !tbaa !79
  br label %.loopexit1122

.loopexit1122:                                    ; preds = %.loopexit.3, %bb.cy
  %indvars.iv.next1502 = add nuw nsw i64 %indvars.iv1501, 1 ; 2 uses
  %i.cna = icmp slt i64 %indvars.iv.next1502, %i.amx
  br i1 %i.cna, label %bb.cy, label %.loopexit1130, !llvm.loop !102

.loopexit1130:                                    ; preds = %.loopexit1122, %.lr.ph1288
  %indvars.iv.next1505 = add nuw nsw i64 %indvars.iv1504, 1 ; 2 uses
  %i.cnb = icmp slt i64 %indvars.iv.next1505, %i.amt
  br i1 %i.cnb, label %.lr.ph1288, label %._crit_edge1289, !llvm.loop !103

.preheader1134:                                   ; preds = %._crit_edge1293, %._crit_edge1303.split
  %indvars.iv1520 = phi i64 [ 0, %._crit_edge1293 ], [ %indvars.iv.next1521, %._crit_edge1303.split ] ; 4 uses
  br i1 %i.avp, label %.preheader1129.lr.ph, label %._crit_edge1303.split

.preheader1129.lr.ph:                             ; preds = %.preheader1134
  %i.cnc = getelementptr inbounds nuw [1572864 x i8], ptr %i.akl, i64 %indvars.iv1520
  br i1 %i.avr, label %.preheader1129, label %._crit_edge1298.split

bb.dq:                                            ; preds = %._crit_edge1303.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ako, i8 0, i64 %i.aep, i1 false)
  %i.cnd = icmp sgt i32 %i.avl, 8
  %i.cne = icmp sgt i32 %i.avn, 8
  %or.cond1790 = select i1 %i.cnd, i1 %i.cne, i1 false
  br i1 %or.cond1790, label %.preheader1133.preheader, label %._crit_edge1321.split

.preheader1133.preheader:                         ; preds = %bb.dq
  %i.cnf = add nsw i32 %i.avl, -4
  %i.cng = add nsw i32 %i.avn, -4
  %i.cnh = zext nneg i32 %i.cng to i64
  %i.cni = zext nneg i32 %i.cnf to i64
  br label %.preheader1133

.preheader1129:                                   ; preds = %.preheader1129.lr.ph, %._crit_edge1296
  %indvars.iv1511 = phi i64 [ %indvars.iv.next1512, %._crit_edge1296 ], [ 2, %.preheader1129.lr.ph ] ; 3 uses
  %i.cnj = getelementptr inbounds nuw [3072 x i8], ptr %i.cnc, i64 %indvars.iv1511
  %i.cnk = getelementptr inbounds nuw [3072 x i8], ptr %i.akm, i64 %indvars.iv1511
  br label %bb.dr

._crit_edge1298.split:                            ; preds = %._crit_edge1296, %.preheader1129.lr.ph
  %i.cnl = and i64 %indvars.iv1520, 3
  %i.cnm = getelementptr inbounds nuw [2 x i8], ptr @_ZZN6LibRaw18xtrans_interpolateEiE3dir, i64 %i.cnl
  %i.cnn = load i16, ptr %i.cnm, align 2, !tbaa !79
  %i.cno = sext i16 %i.cnn to i64                 ; 3 uses
  br i1 %i.avt, label %.preheader1128.lr.ph, label %._crit_edge1303.split

.preheader1128.lr.ph:                             ; preds = %._crit_edge1298.split
  %i.cnp = sub nsw i64 0, %i.cno                  ; 2 uses
  %i.cnq = getelementptr inbounds nuw [1048576 x i8], ptr %i.akn, i64 %indvars.iv1520
  br i1 %i.avv, label %.preheader1128, label %._crit_edge1303.split

._crit_edge1296:                                  ; preds = %bb.dr
  %indvars.iv.next1512 = add nuw nsw i64 %indvars.iv1511, 1 ; 2 uses
  %i.cnr = icmp slt i64 %indvars.iv.next1512, %i.avx
  br i1 %i.cnr, label %.preheader1129, label %._crit_edge1298.split, !llvm.loop !104

bb.dr:                                            ; preds = %.preheader1129, %bb.dr
  %indvars.iv1508 = phi i64 [ 2, %.preheader1129 ], [ %indvars.iv.next1509, %bb.dr ] ; 3 uses
  %i.cns = getelementptr inbounds nuw [6 x i8], ptr %i.cnj, i64 %indvars.iv1508
  %i.cnt = getelementptr inbounds nuw [6 x i8], ptr %i.cnk, i64 %indvars.iv1508
  tail call void @_ZN6LibRaw6cielabEPtPs(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.cns, ptr noundef nonnull %i.cnt)
  %indvars.iv.next1509 = add nuw nsw i64 %indvars.iv1508, 1 ; 2 uses
  %i.cnu = icmp slt i64 %indvars.iv.next1509, %i.avw
  br i1 %i.cnu, label %bb.dr, label %._crit_edge1296, !llvm.loop !105

.preheader1128:                                   ; preds = %.preheader1128.lr.ph, %._crit_edge1301
  %indvars.iv1517 = phi i64 [ %indvars.iv.next1518, %._crit_edge1301 ], [ 3, %.preheader1128.lr.ph ] ; 3 uses
  %i.cnv = getelementptr inbounds nuw [3072 x i8], ptr %i.akm, i64 %indvars.iv1517 ; 2 uses
  %i.cnw = getelementptr inbounds nuw [2048 x i8], ptr %i.cnq, i64 %indvars.iv1517 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body1803

vector.body1803:                                  ; preds = %.preheader1128, %vector.body1803
  %index1804 = phi i64 [ %index.next1815, %vector.body1803 ], [ 0, %.preheader1128 ] ; 2 uses
  %i.cnx = or disjoint i64 %index1804, 3          ; 2 uses
  %i.cny = getelementptr inbounds nuw [6 x i8], ptr %i.cnv, i64 %i.cnx ; 3 uses
  %wide.vec = load <24 x i16>, ptr %i.cny, align 2, !tbaa !79 ; 3 uses
  %strided.vec = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1805 = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1806 = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.cnz = sext <8 x i16> %strided.vec to <8 x i32>
  %i.coa = shl nsw <8 x i32> %i.cnz, splat (i32 1)
  %i.cob = getelementptr inbounds [6 x i8], ptr %i.cny, i64 %i.cno
  %wide.vec1807 = load <24 x i16>, ptr %i.cob, align 2, !tbaa !79 ; 3 uses
  %strided.vec1808 = shufflevector <24 x i16> %wide.vec1807, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1809 = shufflevector <24 x i16> %wide.vec1807, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1810 = shufflevector <24 x i16> %wide.vec1807, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.coc = sext <8 x i16> %strided.vec1808 to <8 x i32>
  %i.cod = getelementptr inbounds [6 x i8], ptr %i.cny, i64 %i.cnp
  %wide.vec1811 = load <24 x i16>, ptr %i.cod, align 2, !tbaa !79 ; 3 uses
  %strided.vec1812 = shufflevector <24 x i16> %wide.vec1811, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1813 = shufflevector <24 x i16> %wide.vec1811, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1814 = shufflevector <24 x i16> %wide.vec1811, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.coe = sext <8 x i16> %strided.vec1812 to <8 x i32>
  %i.cof = add nsw <8 x i32> %i.coc, %i.coe
  %i.cog = sub nsw <8 x i32> %i.coa, %i.cof       ; 3 uses
  %i.coh = mul nsw <8 x i32> %i.cog, %i.cog
  %i.coi = sext <8 x i16> %strided.vec1805 to <8 x i32>
  %i.coj = shl nsw <8 x i32> %i.coi, splat (i32 1)
  %i.cok = sext <8 x i16> %strided.vec1809 to <8 x i32>
  %i.col = sext <8 x i16> %strided.vec1813 to <8 x i32>
  %i.com = mul nsw <8 x i32> %i.cog, splat (i32 500) ; 2 uses
  %i.con = sdiv <8 x i32> %i.com, splat (i32 232)
  %i.coo = add nsw <8 x i32> %i.cok, %i.col
  %i.cop = sub nsw <8 x i32> %i.coj, %i.coo
  %i.coq = add nsw <8 x i32> %i.cop, %i.con       ; 2 uses
  %i.cor = mul nsw <8 x i32> %i.coq, %i.coq
  %i.cos = add nuw nsw <8 x i32> %i.cor, %i.coh
  %i.cot = sext <8 x i16> %strided.vec1806 to <8 x i32>
  %i.cou = shl nsw <8 x i32> %i.cot, splat (i32 1)
  %i.cov = sext <8 x i16> %strided.vec1810 to <8 x i32>
  %i.cow = sext <8 x i16> %strided.vec1814 to <8 x i32>
  %i.cox = sdiv <8 x i32> %i.com, splat (i32 -580)
  %i.coy = add nsw <8 x i32> %i.cox, %i.cou
  %i.coz = add nsw <8 x i32> %i.cov, %i.cow
  %i.cpa = sub nsw <8 x i32> %i.coy, %i.coz       ; 2 uses
  %i.cpb = mul nsw <8 x i32> %i.cpa, %i.cpa
  %i.cpc = add nuw nsw <8 x i32> %i.cos, %i.cpb
  %i.cpd = uitofp nneg <8 x i32> %i.cpc to <8 x float>
  %i.cpe = getelementptr inbounds nuw [4 x i8], ptr %i.cnw, i64 %i.cnx
  store <8 x float> %i.cpd, ptr %i.cpe, align 4, !tbaa !106
  %index.next1815 = add nuw i64 %index1804, 8     ; 2 uses
  %i.cpf = icmp eq i64 %index.next1815, %n.vec1802
  br i1 %i.cpf, label %middle.block1816, label %vector.body1803, !llvm.loop !107

middle.block1816:                                 ; preds = %vector.body1803
  br i1 %cmp.n, label %._crit_edge1301, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader1128, %middle.block1816
  %indvars.iv1514.ph = phi i64 [ 3, %.preheader1128 ], [ %8, %middle.block1816 ]
  br label %scalar.ph

._crit_edge1303.split:                            ; preds = %._crit_edge1301, %.preheader1134, %.preheader1128.lr.ph, %._crit_edge1298.split
  %indvars.iv.next1521 = add nuw nsw i64 %indvars.iv1520, 1 ; 2 uses
  %exitcond1523.not = icmp eq i64 %indvars.iv.next1521, %wide.trip.count
  br i1 %exitcond1523.not, label %bb.dq, label %.preheader1134, !llvm.loop !110

._crit_edge1301:                                  ; preds = %scalar.ph, %middle.block1816
  %indvars.iv.next1518 = add nuw nsw i64 %indvars.iv1517, 1 ; 2 uses
  %i.cpg = icmp slt i64 %indvars.iv.next1518, %i.avz
  br i1 %i.cpg, label %.preheader1128, label %._crit_edge1303.split, !llvm.loop !111

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1514 = phi i64 [ %indvars.iv.next1515, %scalar.ph ], [ %indvars.iv1514.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cph = getelementptr inbounds nuw [6 x i8], ptr %i.cnv, i64 %indvars.iv1514 ; 5 uses
  %i.cpi = load i16, ptr %i.cph, align 2, !tbaa !79
  %i.cpj = sext i16 %i.cpi to i32
  %i.cpk = shl nsw i32 %i.cpj, 1
  %i.cpl = getelementptr inbounds [6 x i8], ptr %i.cph, i64 %i.cno ; 3 uses
  %i.cpm = load i16, ptr %i.cpl, align 2, !tbaa !79
  %i.cpn = sext i16 %i.cpm to i32
  %i.cpo = getelementptr inbounds [6 x i8], ptr %i.cph, i64 %i.cnp ; 3 uses
  %i.cpp = load i16, ptr %i.cpo, align 2, !tbaa !79
  %i.cpq = sext i16 %i.cpp to i32
  %i.cpr = add nsw i32 %i.cpn, %i.cpq
  %i.cps = sub nsw i32 %i.cpk, %i.cpr             ; 3 uses
  %i.cpt = mul nsw i32 %i.cps, %i.cps
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cph, i64 2
  %i.cpv = load i16, ptr %i.cpu, align 2, !tbaa !79
  %i.cpw = sext i16 %i.cpv to i32
  %i.cpx = shl nsw i32 %i.cpw, 1
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.cpl, i64 2
  %i.cpz = load i16, ptr %i.cpy, align 2, !tbaa !79
  %i.cqa = sext i16 %i.cpz to i32
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.cpo, i64 2
  %i.cqc = load i16, ptr %i.cqb, align 2, !tbaa !79
  %i.cqd = sext i16 %i.cqc to i32
  %i.cqe = mul nsw i32 %i.cps, 500                ; 2 uses
  %i.cqf = sdiv i32 %i.cqe, 232
  %i.cqg = add nsw i32 %i.cqa, %i.cqd
  %i.cqh = sub nsw i32 %i.cpx, %i.cqg
  %i.cqi = add nsw i32 %i.cqh, %i.cqf             ; 2 uses
  %i.cqj = mul nsw i32 %i.cqi, %i.cqi
  %i.cqk = add nuw nsw i32 %i.cqj, %i.cpt
  %i.cql = getelementptr inbounds nuw i8, ptr %i.cph, i64 4
  %i.cqm = load i16, ptr %i.cql, align 2, !tbaa !79
  %i.cqn = sext i16 %i.cqm to i32
  %i.cqo = shl nsw i32 %i.cqn, 1
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cpl, i64 4
  %i.cqq = load i16, ptr %i.cqp, align 2, !tbaa !79
  %i.cqr = sext i16 %i.cqq to i32
  %i.cqs = getelementptr inbounds nuw i8, ptr %i.cpo, i64 4
  %i.cqt = load i16, ptr %i.cqs, align 2, !tbaa !79
  %i.cqu = sext i16 %i.cqt to i32
  %.neg = sdiv i32 %i.cqe, -580
  %i.cqv = add nsw i32 %.neg, %i.cqo
  %i.cqw = add nsw i32 %i.cqr, %i.cqu
  %i.cqx = sub nsw i32 %i.cqv, %i.cqw             ; 2 uses
  %i.cqy = mul nsw i32 %i.cqx, %i.cqx
  %i.cqz = add nuw nsw i32 %i.cqk, %i.cqy
  %i.cra = uitofp nneg i32 %i.cqz to float
  %i.crb = getelementptr inbounds nuw [4 x i8], ptr %i.cnw, i64 %indvars.iv1514
  store float %i.cra, ptr %i.crb, align 4, !tbaa !106
  %indvars.iv.next1515 = add nuw nsw i64 %indvars.iv1514, 1 ; 2 uses
  %i.crc = icmp slt i64 %indvars.iv.next1515, %i.avy
  br i1 %i.crc, label %scalar.ph, label %._crit_edge1301, !llvm.loop !112

.preheader1133:                                   ; preds = %.preheader1133.preheader, %._crit_edge1319
  %indvars.iv1545 = phi i64 [ 4, %.preheader1133.preheader ], [ %i.crd, %._crit_edge1319 ] ; 5 uses
  %invariant.gep1305 = getelementptr inbounds nuw [2048 x i8], ptr %i.akn, i64 %indvars.iv1545
  %invariant.gep1313 = getelementptr inbounds nuw [512 x i8], ptr %i.ako, i64 %indvars.iv1545
  %i.crd = add nuw nsw i64 %indvars.iv1545, 1     ; 3 uses
  br label %.preheader1127

._crit_edge1321.split:                            ; preds = %._crit_edge1319, %bb.dq
  %i.cre = load i16, ptr %i.i, align 4, !tbaa !74
  %i.crf = zext i16 %i.cre to i32
  %i.crg = sub nsw i32 %i.crf, %i.akz             ; 2 uses
  %i.crh = icmp slt i32 %i.crg, 516
  %i.cri = add nsw i32 %i.crg, 2
  %spec.select1053 = select i1 %i.crh, i32 %i.cri, i32 %i.avl
  %i.crj = add nsw i32 %spec.select1053, -8       ; 2 uses
  %i.crk = icmp slt i32 %i.ala, %i.crj
  %.pre1623 = load i16, ptr %i.f, align 2, !tbaa !11 ; 3 uses
  br i1 %i.crk, label %.lr.ph1346, label %._crit_edge1347.split

.lr.ph1346:                                       ; preds = %._crit_edge1321.split
  %i.crl = zext i16 %.pre1623 to i32
  %i.crm = sub nsw i32 %i.crl, %i.avm             ; 2 uses
  %i.crn = icmp slt i32 %i.crm, 516
  %i.cro = add nsw i32 %i.crm, 2
  %.0937 = select i1 %i.crn, i32 %i.cro, i32 %i.avn
  %i.crp = tail call i32 @llvm.umin.i32(i32 %i.avm, i32 8)
  %i.crq = add nsw i32 %.0937, -8                 ; 2 uses
  %i.crr = icmp slt i32 %i.crp, %i.crq
  br i1 %i.crr, label %.lr.ph1346.split, label %._crit_edge1347.split

.lr.ph1346.split:                                 ; preds = %.lr.ph1346
  %i.crs = load ptr, ptr %i.e, align 8, !tbaa !85 ; 3 uses
  %i.crt = zext nneg i32 %i.crq to i64
  %i.cru = zext nneg i32 %i.crj to i64
  br label %.lr.ph1342

.preheader1127:                                   ; preds = %.preheader1133, %bb.dt
  %indvars.iv1542 = phi i64 [ 4, %.preheader1133 ], [ %i.csx, %bb.dt ] ; 7 uses
  %invariant.gep1307 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1305, i64 %indvars.iv1542 ; 9 uses
  br i1 %i.jy, label %.preheader1127.new, label %.epil.preheader

._crit_edge1319:                                  ; preds = %bb.dt
  %i.crv = icmp samesign ult i64 %i.crd, %i.cni
  br i1 %i.crv, label %.preheader1133, label %._crit_edge1321.split, !llvm.loop !113

.preheader1127.new:                               ; preds = %.preheader1127, %.preheader1127.new
  %indvars.iv1524 = phi i64 [ %indvars.iv.next1525.7, %.preheader1127.new ], [ 0, %.preheader1127 ] ; 9 uses
  %.08661310 = phi float [ %.1867.7, %.preheader1127.new ], [ f0x7F7FFFFF, %.preheader1127 ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %.preheader1127.new ], [ 0, %.preheader1127 ]
  %gep1308 = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %i.crw = load float, ptr %gep1308, align 4, !tbaa !106 ; 2 uses
  %i.crx = fcmp reassoc nsz arcp contract afn ogt float %.08661310, %i.crw
  %.1867 = select nsz i1 %i.crx, float %i.crw, float %.08661310 ; 2 uses
  %i.cry = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.1 = getelementptr inbounds nuw i8, ptr %i.cry, i64 1048576
  %i.crz = load float, ptr %gep1308.1, align 4, !tbaa !106 ; 2 uses
  %i.csa = fcmp reassoc nsz arcp contract afn ogt float %.1867, %i.crz
  %.1867.1 = select nsz i1 %i.csa, float %i.crz, float %.1867 ; 2 uses
  %i.csb = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.2 = getelementptr inbounds nuw i8, ptr %i.csb, i64 2097152
  %i.csc = load float, ptr %gep1308.2, align 4, !tbaa !106 ; 2 uses
  %i.csd = fcmp reassoc nsz arcp contract afn ogt float %.1867.1, %i.csc
  %.1867.2 = select nsz i1 %i.csd, float %i.csc, float %.1867.1 ; 2 uses
  %i.cse = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.3 = getelementptr inbounds nuw i8, ptr %i.cse, i64 3145728
  %i.csf = load float, ptr %gep1308.3, align 4, !tbaa !106 ; 2 uses
  %i.csg = fcmp reassoc nsz arcp contract afn ogt float %.1867.2, %i.csf
  %.1867.3 = select nsz i1 %i.csg, float %i.csf, float %.1867.2 ; 2 uses
  %i.csh = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.4 = getelementptr inbounds nuw i8, ptr %i.csh, i64 4194304
  %i.csi = load float, ptr %gep1308.4, align 4, !tbaa !106 ; 2 uses
  %i.csj = fcmp reassoc nsz arcp contract afn ogt float %.1867.3, %i.csi
  %.1867.4 = select nsz i1 %i.csj, float %i.csi, float %.1867.3 ; 2 uses
  %i.csk = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.5 = getelementptr inbounds nuw i8, ptr %i.csk, i64 5242880
  %i.csl = load float, ptr %gep1308.5, align 4, !tbaa !106 ; 2 uses
  %i.csm = fcmp reassoc nsz arcp contract afn ogt float %.1867.4, %i.csl
  %.1867.5 = select nsz i1 %i.csm, float %i.csl, float %.1867.4 ; 2 uses
  %i.csn = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.6 = getelementptr inbounds nuw i8, ptr %i.csn, i64 6291456
  %i.cso = load float, ptr %gep1308.6, align 4, !tbaa !106 ; 2 uses
  %i.csp = fcmp reassoc nsz arcp contract afn ogt float %.1867.5, %i.cso
  %.1867.6 = select nsz i1 %i.csp, float %i.cso, float %.1867.5 ; 2 uses
  %i.csq = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524
  %gep1308.7 = getelementptr inbounds nuw i8, ptr %i.csq, i64 7340032
  %i.csr = load float, ptr %gep1308.7, align 4, !tbaa !106 ; 2 uses
  %i.css = fcmp reassoc nsz arcp contract afn ogt float %.1867.6, %i.csr
  %.1867.7 = select nsz i1 %i.css, float %i.csr, float %.1867.6 ; 3 uses
  %indvars.iv.next1525.7 = add nuw nsw i64 %indvars.iv1524, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader1127.new, !llvm.loop !114

.unr-lcssa:                                       ; preds = %.preheader1127.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader1127
  %indvars.iv1524.epil.init = phi i64 [ 0, %.preheader1127 ], [ %indvars.iv.next1525.7, %.unr-lcssa ]
  %.08661310.epil.init = phi float [ f0x7F7FFFFF, %.preheader1127 ], [ %.1867.7, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1875)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ds, %.epil.preheader
  %indvars.iv1524.epil = phi i64 [ %indvars.iv1524.epil.init, %.epil.preheader ], [ %indvars.iv.next1525.epil, %bb.ds ] ; 2 uses
  %.08661310.epil = phi float [ %.08661310.epil.init, %.epil.preheader ], [ %.1867.epil, %bb.ds ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ds ]
  %gep1308.epil = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1307, i64 %indvars.iv1524.epil
  %i.cst = load float, ptr %gep1308.epil, align 4, !tbaa !106 ; 2 uses
  %i.csu = fcmp reassoc nsz arcp contract afn ogt float %.08661310.epil, %i.cst
  %.1867.epil = select nsz i1 %i.csu, float %i.cst, float %.08661310.epil ; 2 uses
  %indvars.iv.next1525.epil = add nuw nsw i64 %indvars.iv1524.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 4
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ds, !llvm.loop !115

.epilog-lcssa:                                    ; preds = %bb.ds, %.unr-lcssa
  %.1867.lcssa = phi float [ %.1867.7, %.unr-lcssa ], [ %.1867.epil, %bb.ds ]
  %i.csv = fmul reassoc nsz arcp contract afn float %.1867.lcssa, 8.000000e+00 ; 9 uses
  %invariant.gep1315 = getelementptr inbounds nuw i8, ptr %invariant.gep1313, i64 %indvars.iv1542
  %i.csw = add nsw i64 %indvars.iv1542, -1        ; 3 uses
  %i.csx = add nuw nsw i64 %indvars.iv1542, 1     ; 5 uses
  br label %.preheader1121

.preheader1121:                                   ; preds = %.epilog-lcssa, %bb.ej
  %indvars.iv1537 = phi i64 [ 0, %.epilog-lcssa ], [ %indvars.iv.next1538, %bb.ej ] ; 3 uses
  %i.csy = getelementptr inbounds nuw [1048576 x i8], ptr %i.akn, i64 %indvars.iv1537 ; 3 uses
  %gep1316 = getelementptr inbounds nuw [262144 x i8], ptr %invariant.gep1315, i64 %indvars.iv1537 ; 18 uses
  %i.csz = getelementptr [2048 x i8], ptr %i.csy, i64 %indvars.iv1545
  %i.cta = getelementptr i8, ptr %i.csz, i64 -2048 ; 3 uses
  %i.ctb = getelementptr inbounds [4 x i8], ptr %i.cta, i64 %i.csw
  %i.ctc = load float, ptr %i.ctb, align 4, !tbaa !106
  %i.ctd = fcmp reassoc nsz arcp contract afn ugt float %i.ctc, %i.csv
  br i1 %i.ctd, label %bb.dv, label %bb.du

bb.dt:                                            ; preds = %bb.ej
  %i.cte = icmp samesign ult i64 %i.csx, %i.cnh
  br i1 %i.cte, label %.preheader1127, label %._crit_edge1319, !llvm.loop !117

bb.du:                                            ; preds = %.preheader1121
end_hunk_2
