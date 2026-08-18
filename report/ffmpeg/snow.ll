inline.NumInlined: 41
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mc_block:bb.a
  br i1 %min.iters.check673, label %scalar.ph672.preheader, label %vector.ph674

vector.ph674:                                     ; preds = %.lr.ph.split.split.us
  %broadcast.splatinsert676 = insertelement <8 x i32> poison, i32 %i.vx, i64 0
  %broadcast.splat677 = shufflevector <8 x i32> %broadcast.splatinsert676, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert678 = insertelement <8 x i32> poison, i32 %i.vz, i64 0
  %broadcast.splat679 = shufflevector <8 x i32> %broadcast.splatinsert678, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert680 = insertelement <8 x i32> poison, i32 %i.wb, i64 0
  %broadcast.splat681 = shufflevector <8 x i32> %broadcast.splatinsert680, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert682 = insertelement <8 x i32> poison, i32 %i.wd, i64 0
  %broadcast.splat683 = shufflevector <8 x i32> %broadcast.splatinsert682, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body684

vector.body684:                                   ; preds = %vector.body684, %vector.ph674
  %index685 = phi i64 [ 0, %vector.ph674 ], [ %index.next694, %vector.body684 ] ; 3 uses
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %.1284399, i64 %index685 ; 8 uses
  %wide.load686 = load <8 x i16>, ptr %i.we, align 2, !tbaa !15
  %i.wf = sext <8 x i16> %wide.load686 to <8 x i32>
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 128
  %wide.load687 = load <8 x i16>, ptr %i.wg, align 2, !tbaa !15
  %i.wh = sext <8 x i16> %wide.load687 to <8 x i32>
  %i.wi = getelementptr inbounds nuw i8, ptr %i.we, i64 256
  %wide.load688 = load <8 x i16>, ptr %i.wi, align 2, !tbaa !15
  %i.wj = sext <8 x i16> %wide.load688 to <8 x i32>
  %i.wk = getelementptr inbounds nuw i8, ptr %i.we, i64 384
  %wide.load689 = load <8 x i16>, ptr %i.wk, align 2, !tbaa !15
  %i.wl = sext <8 x i16> %wide.load689 to <8 x i32>
  %i.wm = getelementptr inbounds nuw i8, ptr %i.we, i64 512
  %wide.load690 = load <8 x i16>, ptr %i.wm, align 2, !tbaa !15
  %i.wn = sext <8 x i16> %wide.load690 to <8 x i32>
  %i.wo = getelementptr inbounds nuw i8, ptr %i.we, i64 640
  %wide.load691 = load <8 x i16>, ptr %i.wo, align 2, !tbaa !15
  %i.wp = sext <8 x i16> %wide.load691 to <8 x i32>
  %i.wq = getelementptr inbounds nuw i8, ptr %i.we, i64 768
  %wide.load692 = load <8 x i16>, ptr %i.wq, align 2, !tbaa !15
  %i.wr = sext <8 x i16> %wide.load692 to <8 x i32>
  %i.ws = getelementptr inbounds nuw i8, ptr %i.we, i64 896
  %wide.load693 = load <8 x i16>, ptr %i.ws, align 2, !tbaa !15
  %i.wt = sext <8 x i16> %wide.load693 to <8 x i32>
  %i.wu = add nsw <8 x i32> %i.wn, %i.wl
  %i.wv = mul nsw <8 x i32> %i.wu, %broadcast.splat677
  %i.ww = add nsw <8 x i32> %i.wp, %i.wj
  %i.wx = mul nsw <8 x i32> %i.ww, %broadcast.splat679
  %i.wy = add nsw <8 x i32> %i.wr, %i.wh
  %i.wz = mul nsw <8 x i32> %i.wy, %broadcast.splat681
  %i.xa = add nsw <8 x i32> %i.wt, %i.wf
  %i.xb = mul nsw <8 x i32> %i.xa, %broadcast.splat683
  %i.xc = add nsw <8 x i32> %i.wv, splat (i32 2048)
  %i.xd = add nsw <8 x i32> %i.xc, %i.wx
  %i.xe = add nsw <8 x i32> %i.xd, %i.wz
  %i.xf = add nsw <8 x i32> %i.xe, %i.xb
  %i.xg = ashr <8 x i32> %i.xf, splat (i32 12)    ; 3 uses
  %i.xh = icmp ugt <8 x i32> %i.xg, splat (i32 255)
  %i.xi = icmp sgt <8 x i32> %i.xg, splat (i32 -1)
  %i.xj = sext <8 x i1> %i.xi to <8 x i32>
  %i.xk = select <8 x i1> %i.xh, <8 x i32> %i.xj, <8 x i32> %i.xg
  %i.xl = trunc <8 x i32> %i.xk to <8 x i8>
  %i.xm = getelementptr inbounds nuw i8, ptr %.2291396, i64 %index685
  store <8 x i8> %i.xl, ptr %i.xm, align 1, !tbaa !12
  %index.next694 = add nuw i64 %index685, 8       ; 2 uses
  %i.xn = icmp eq i64 %index.next694, %n.vec675
  br i1 %i.xn, label %middle.block695, label %vector.body684, !llvm.loop !97

middle.block695:                                  ; preds = %vector.body684
  br i1 %cmp.n696, label %._crit_edge.split391, label %scalar.ph672.preheader

scalar.ph672.preheader:                           ; preds = %.lr.ph.split.split.us, %middle.block695
  %indvars.iv480.ph = phi i64 [ 0, %.lr.ph.split.split.us ], [ %n.vec675, %middle.block695 ]
  br label %scalar.ph672

scalar.ph672:                                     ; preds = %scalar.ph672.preheader, %scalar.ph672
  %indvars.iv480 = phi i64 [ %indvars.iv.next481, %scalar.ph672 ], [ %indvars.iv480.ph, %scalar.ph672.preheader ] ; 3 uses
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %.1284399, i64 %indvars.iv480 ; 8 uses
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !15
  %i.xq = sext i16 %i.xp to i32
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xo, i64 128
  %i.xs = load i16, ptr %i.xr, align 2, !tbaa !15
  %i.xt = sext i16 %i.xs to i32
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xo, i64 256
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !15
  %i.xw = sext i16 %i.xv to i32
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xo, i64 384
  %i.xy = load i16, ptr %i.xx, align 2, !tbaa !15
  %i.xz = sext i16 %i.xy to i32
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xo, i64 512
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !15
  %i.yc = sext i16 %i.yb to i32
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xo, i64 640
  %i.ye = load i16, ptr %i.yd, align 2, !tbaa !15
  %i.yf = sext i16 %i.ye to i32
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xo, i64 768
  %i.yh = load i16, ptr %i.yg, align 2, !tbaa !15
  %i.yi = sext i16 %i.yh to i32
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xo, i64 896
  %i.yk = load i16, ptr %i.yj, align 2, !tbaa !15
  %i.yl = sext i16 %i.yk to i32
  %i.ym = add nsw i32 %i.yc, %i.xz
  %i.yn = mul nsw i32 %i.ym, %i.vx
  %i.yo = add nsw i32 %i.yf, %i.xw
  %i.yp = mul nsw i32 %i.yo, %i.vz
  %i.yq = add nsw i32 %i.yi, %i.xt
  %i.yr = mul nsw i32 %i.yq, %i.wb
  %i.ys = add nsw i32 %i.yl, %i.xq
  %i.yt = mul nsw i32 %i.ys, %i.wd
  %i.yu = add nsw i32 %i.yn, 2048
  %i.yv = add nsw i32 %i.yu, %i.yp
  %i.yw = add nsw i32 %i.yv, %i.yr
  %i.yx = add nsw i32 %i.yw, %i.yt
  %i.yy = ashr i32 %i.yx, 12                      ; 3 uses
  %i.yz = icmp ugt i32 %i.yy, 255
  %isnotneg.us394 = icmp sgt i32 %i.yy, -1
  %i.za = sext i1 %isnotneg.us394 to i32
  %.1293.us395 = select i1 %i.yz, i32 %i.za, i32 %i.yy
  %i.zb = trunc i32 %.1293.us395 to i8
  %i.zc = getelementptr inbounds nuw i8, ptr %.2291396, i64 %indvars.iv480
  store i8 %i.zb, ptr %i.zc, align 1, !tbaa !12
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count483
  br i1 %exitcond484.not, label %._crit_edge.split391, label %scalar.ph672, !llvm.loop !98

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader865, %.lr.ph.split.split
  %indvars.iv475 = phi i64 [ %indvars.iv.next476, %.lr.ph.split.split ], [ %indvars.iv475.ph, %.lr.ph.split.split.preheader865 ] ; 3 uses
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr %.1284399, i64 %indvars.iv475 ; 6 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 128
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !15
  %i.zg = sext i16 %i.zf to i32
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 256
  %i.zi = load i16, ptr %i.zh, align 2, !tbaa !15
  %i.zj = sext i16 %i.zi to i32
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zd, i64 384
  %i.zl = load i16, ptr %i.zk, align 2, !tbaa !15
  %i.zm = sext i16 %i.zl to i32
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zd, i64 512
  %i.zo = load i16, ptr %i.zn, align 2, !tbaa !15
  %i.zp = sext i16 %i.zo to i32
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zd, i64 640
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !15
  %i.zs = sext i16 %i.zr to i32
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zd, i64 768
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !15
  %i.zv = sext i16 %i.zu to i32
  %i.zw = add nsw i32 %i.zp, %i.zm
  %i.zx = mul nsw i32 %i.zw, 20
  %i.zy = add nsw i32 %i.zs, %i.zj
  %.neg = mul nsw i32 %i.zy, -5
  %i.zz = add nsw i32 %i.zv, %i.zg
  %i.aaa = add nsw i32 %i.zz, 512
  %i.aab = add nsw i32 %i.aaa, %i.zx
  %i.aac = add nsw i32 %i.aab, %.neg
  %i.aad = ashr i32 %i.aac, 10                    ; 3 uses
  %i.aae = icmp ugt i32 %i.aad, 255
  %isnotneg = icmp sgt i32 %i.aad, -1
  %i.aaf = sext i1 %isnotneg to i32
  %.1293 = select i1 %i.aae, i32 %i.aaf, i32 %i.aad
  %i.aag = trunc i32 %.1293 to i8
  %i.aah = getelementptr inbounds nuw i8, ptr %.2291396, i64 %indvars.iv475
  store i8 %i.aag, ptr %i.aah, align 1, !tbaa !12
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1 ; 2 uses
  %exitcond479.not = icmp eq i64 %indvars.iv.next476, %wide.trip.count478
  br i1 %exitcond479.not, label %._crit_edge.split391, label %.lr.ph.split.split, !llvm.loop !99

._crit_edge.split391:                             ; preds = %.lr.ph.split.split, %scalar.ph672, %middle.block711, %middle.block695
  %i.aai = getelementptr inbounds nuw i8, ptr %.1284399, i64 128
  %i.aaj = getelementptr inbounds nuw i8, ptr %.2291396, i64 64
  %i.aak = add nuw nsw i32 %.2279402, 1           ; 2 uses
  %exitcond485.not = icmp eq i32 %i.aak, %5
  br i1 %exitcond485.not, label %.loopexit327, label %.preheader325, !llvm.loop !95

.loopexit327:                                     ; preds = %._crit_edge.split391, %._crit_edge.split391.us.us, %.preheader325.lr.ph, %bb.i
  store ptr %i.ry, ptr %i.c, align 16, !tbaa !13
  %i.aal = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.aam = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aal, ptr %i.aam, align 8, !tbaa !13
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ry, i64 1
  %i.aao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.aan, ptr %i.aao, align 16, !tbaa !13
  %i.aap = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.jh, ptr %i.aap, align 16, !tbaa !13
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.rz, ptr %i.aaq, align 8, !tbaa !13
  %i.aar = getelementptr inbounds nuw i8, ptr %i.b, i64 2561
  %i.aas = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.aar, ptr %i.aas, align 16, !tbaa !13
  %i.aat = sext i32 %3 to i64                     ; 10 uses
  %i.aau = getelementptr inbounds i8, ptr %i.ry, i64 %i.aat ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.aau, ptr %i.aav, align 16, !tbaa !13
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.aax = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.aaw, ptr %i.aax, align 8, !tbaa !13
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aau, i64 1
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.aay, ptr %i.aaz, align 16, !tbaa !13
  %i.aba = icmp eq i8 %.0282.shrunk, 15
  br i1 %i.aba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit327
  br i1 %i.sb, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.j
  %8 = and i32 %7, 7                              ; 3 uses
  %9 = and i32 %6, 7                              ; 3 uses
  %i.abb = lshr i32 %7, 1
  %i.abc = and i32 %i.abb, 4
  %i.abd = lshr i32 %6, 3
  %i.abe = or disjoint i32 %i.abc, %i.abd         ; 5 uses
  %i.abf = add nuw nsw i32 %i.abe, 5
  %i.abg = zext nneg i32 %i.abf to i64            ; 2 uses
  %i.abh = shl nuw nsw i64 1, %i.abg
  %i.abi = and i64 %i.abh, 60812
  %.not312.not = icmp eq i64 %i.abi, 0
  %i.abj = add nuw nsw i32 %i.abe, 4
  %i.abk = zext nneg i32 %i.abj to i64            ; 2 uses
  %i.abl = shl nuw nsw i64 1, %i.abk
  %i.abm = and i64 %i.abl, 8448
  %.not311.not = icmp eq i64 %i.abm, 0
  %i.abn = add nuw nsw i32 %i.abe, 1
  %i.abo = zext nneg i32 %i.abn to i64            ; 2 uses
  %i.abp = shl nuw nsw i64 1, %i.abo
  %i.abq = and i64 %i.abp, 140
  %.not310.not = icmp eq i64 %i.abq, 0
  %.not309 = icmp eq i32 %i.abe, 0
  %i.abr = select i1 %.not309, i32 %3, i32 64     ; 2 uses
  %i.abs = icmp sgt i32 %4, 0
  %10 = sub nuw nsw i32 8, %9                     ; 2 uses
  %11 = sub nuw nsw i32 8, %8                     ; 2 uses
  %factor.op.mul = mul nuw nsw i32 %10, %8        ; 3 uses
  %factor.op.mul412 = mul nuw nsw i32 %9, %8      ; 3 uses
  %factor.op.mul414 = mul nuw nsw i32 %10, %11    ; 3 uses
  %factor.op.mul416 = mul nuw nsw i32 %9, %11     ; 3 uses
  %i.abt = sext i32 %i.abr to i64                 ; 2 uses
  %i.abu = select i1 %.not310.not, i64 64, i64 %i.aat ; 3 uses
  %i.abv = select i1 %.not311.not, i64 64, i64 %i.aat ; 3 uses
  %i.abw = select i1 %.not312.not, i64 64, i64 %i.aat ; 3 uses
  br i1 %i.abs, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.abx = zext nneg i32 %i.abe to i64
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.abx
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !13 ; 3 uses
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.abo
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !13 ; 3 uses
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.abk
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !13 ; 3 uses
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.abg
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !13 ; 3 uses
  %wide.trip.count501 = zext nneg i32 %4 to i64   ; 11 uses
  %i.acg = add nsw i32 %5, -1
  %i.ach = zext i32 %i.acg to i64                 ; 5 uses
  %i.aci = mul nsw i64 %i.aat, %i.ach
  %i.acj = getelementptr i8, ptr %1, i64 %i.aci
  %scevgep782 = getelementptr i8, ptr %i.acj, i64 %wide.trip.count501
  %i.ack = mul nsw i64 %i.abt, %i.ach
  %i.acl = getelementptr i8, ptr %i.abz, i64 %i.ack
  %scevgep783 = getelementptr i8, ptr %i.acl, i64 %wide.trip.count501
  %i.acm = mul nsw i64 %i.abu, %i.ach
  %i.acn = getelementptr i8, ptr %i.acb, i64 %i.acm
  %scevgep784 = getelementptr i8, ptr %i.acn, i64 %wide.trip.count501
  %i.aco = mul nsw i64 %i.abv, %i.ach
  %i.acp = getelementptr i8, ptr %i.acd, i64 %i.aco
  %scevgep785 = getelementptr i8, ptr %i.acp, i64 %wide.trip.count501
  %i.acq = mul nsw i64 %i.abw, %i.ach
  %i.acr = getelementptr i8, ptr %i.acf, i64 %i.acq
  %scevgep786 = getelementptr i8, ptr %i.acr, i64 %wide.trip.count501
  %i.acs = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.act = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.abr, i64 0
  %i.acu = insertelement <4 x ptr> poison, ptr %1, i64 0
  %i.acv = shufflevector <4 x ptr> %i.acu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.acw = insertelement <4 x ptr> poison, ptr %scevgep783, i64 0
  %i.acx = insertelement <4 x ptr> %i.acw, ptr %scevgep784, i64 1
  %i.acy = insertelement <4 x ptr> %i.acx, ptr %scevgep785, i64 2
  %i.acz = insertelement <4 x ptr> %i.acy, ptr %scevgep786, i64 3
  %i.ada = insertelement <4 x ptr> poison, ptr %i.abz, i64 0
  %i.adb = insertelement <4 x ptr> %i.ada, ptr %i.acb, i64 1
  %i.adc = insertelement <4 x ptr> %i.adb, ptr %i.acd, i64 2
  %i.add = insertelement <4 x ptr> %i.adc, ptr %i.acf, i64 3
  %i.ade = insertelement <4 x ptr> poison, ptr %scevgep782, i64 0
  %i.adf = shufflevector <4 x ptr> %i.ade, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check811 = icmp ult i32 %4, 4
  %i.adg = icmp ult <4 x ptr> %i.acv, %i.acz
  %i.adh = icmp ult <4 x ptr> %i.add, %i.adf
  %i.adi = and <4 x i1> %i.adg, %i.adh
  %i.adj = shufflevector <2 x i32> %i.acs, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.adk = or <4 x i32> %i.adj, %i.act
  %i.adl = icmp slt <4 x i32> %i.adk, zeroinitializer
  %rdx.op = or <4 x i1> %i.adl, %i.adi
  %i.adm = bitcast <4 x i1> %rdx.op to i4
  %i.adn = icmp ne i4 %i.adm, 0
  %i.ado = or i64 %i.abv, %i.abw
  %i.adp = or i64 %i.ado, %i.abu
  %i.adq = icmp slt i64 %i.adp, 0
  %op.rdx860 = or i1 %i.adn, %i.adq
  %min.iters.check813 = icmp ult i32 %4, 16
  %i.adr = and i64 %wide.trip.count501, 12
  %n.vec815 = and i64 %wide.trip.count501, 2147483632 ; 4 uses
  %broadcast.splatinsert816 = insertelement <16 x i32> poison, i32 %factor.op.mul414, i64 0
  %broadcast.splat817 = shufflevector <16 x i32> %broadcast.splatinsert816, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert818 = insertelement <16 x i32> poison, i32 %factor.op.mul416, i64 0
  %broadcast.splat819 = shufflevector <16 x i32> %broadcast.splatinsert818, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert820 = insertelement <16 x i32> poison, i32 %factor.op.mul, i64 0
  %broadcast.splat819.a = shufflevector <16 x i32> %broadcast.splatinsert820, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert822 = insertelement <16 x i32> poison, i32 %factor.op.mul412, i64 0
  %broadcast.splat823 = shufflevector <16 x i32> %broadcast.splatinsert822, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n832 = icmp eq i64 %n.vec815, %wide.trip.count501
  %min.epilog.iters.check837 = icmp eq i64 %i.adr, 0
  %n.vec839 = and i64 %wide.trip.count501, 2147483644 ; 3 uses
  %broadcast.splatinsert840 = insertelement <4 x i32> poison, i32 %factor.op.mul414, i64 0
  %broadcast.splat841 = shufflevector <4 x i32> %broadcast.splatinsert840, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert842 = insertelement <4 x i32> poison, i32 %factor.op.mul416, i64 0
  %broadcast.splat843 = shufflevector <4 x i32> %broadcast.splatinsert842, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert844 = insertelement <4 x i32> poison, i32 %factor.op.mul, i64 0
  %broadcast.splat843.a = shufflevector <4 x i32> %broadcast.splatinsert844, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert846 = insertelement <4 x i32> poison, i32 %factor.op.mul412, i64 0
  %broadcast.splat847 = shufflevector <4 x i32> %broadcast.splatinsert846, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n856 = icmp eq i64 %n.vec839, %wide.trip.count501
  br label %iter.check834

iter.check834:                                    ; preds = %.preheader.preheader, %._crit_edge411
  %.0423 = phi ptr [ %i.aft, %._crit_edge411 ], [ %1, %.preheader.preheader ] ; 4 uses
  %.3280422 = phi i32 [ %i.afu, %._crit_edge411 ], [ 0, %.preheader.preheader ]
  %.0285421 = phi ptr [ %i.afs, %._crit_edge411 ], [ %i.acf, %.preheader.preheader ] ; 4 uses
  %.0286420 = phi ptr [ %i.afr, %._crit_edge411 ], [ %i.acd, %.preheader.preheader ] ; 4 uses
  %.0287419 = phi ptr [ %i.afq, %._crit_edge411 ], [ %i.acb, %.preheader.preheader ] ; 4 uses
  %.0288418 = phi ptr [ %i.afp, %._crit_edge411 ], [ %i.abz, %.preheader.preheader ] ; 4 uses
  %brmerge879.a = select i1 %min.iters.check811, i1 true, i1 %op.rdx860
  br i1 %brmerge879.a, label %vec.epilog.scalar.ph835.preheader, label %vector.main.loop.iter.check812

vector.main.loop.iter.check812:                   ; preds = %iter.check834
  br i1 %min.iters.check813, label %vec.epilog.ph838, label %vector.body824

vector.body824:                                   ; preds = %vector.main.loop.iter.check812, %vector.body824
  %index825 = phi i64 [ %index.next830, %vector.body824 ], [ 0, %vector.main.loop.iter.check812 ] ; 6 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.0288418, i64 %index825
  %wide.load826 = load <16 x i8>, ptr %i.ads, align 1, !tbaa !12, !alias.scope !100
  %i.adt = zext <16 x i8> %wide.load826 to <16 x i32>
  %i.adu = mul nuw nsw <16 x i32> %broadcast.splat817, %i.adt
  %i.adv = getelementptr inbounds nuw i8, ptr %.0287419, i64 %index825
  %wide.load827 = load <16 x i8>, ptr %i.adv, align 1, !tbaa !12, !alias.scope !103
  %i.adw = zext <16 x i8> %wide.load827 to <16 x i32>
  %i.adx = mul nuw nsw <16 x i32> %broadcast.splat819, %i.adw
  %i.ady = getelementptr inbounds nuw i8, ptr %.0286420, i64 %index825
  %wide.load828 = load <16 x i8>, ptr %i.ady, align 1, !tbaa !12, !alias.scope !105
  %i.adz = zext <16 x i8> %wide.load828 to <16 x i32>
  %i.aea = mul nuw nsw <16 x i32> %broadcast.splat819.a, %i.adz
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0285421, i64 %index825
  %wide.load829 = load <16 x i8>, ptr %i.aeb, align 1, !tbaa !12, !alias.scope !107
  %i.aec = zext <16 x i8> %wide.load829 to <16 x i32>
  %i.aed = mul nuw nsw <16 x i32> %broadcast.splat823, %i.aec
  %i.aee = add nuw nsw <16 x i32> %i.aed, %i.aea
  %i.aef = add nuw nsw <16 x i32> %i.adx, %i.adu
  %i.aeg = add nuw nsw <16 x i32> %i.aef, splat (i32 32)
  %i.aeh = add nuw nsw <16 x i32> %i.aeg, %i.aee
  %i.aei = lshr <16 x i32> %i.aeh, splat (i32 6)
  %i.aej = trunc <16 x i32> %i.aei to <16 x i8>
  %i.aek = getelementptr inbounds nuw i8, ptr %.0423, i64 %index825
  store <16 x i8> %i.aej, ptr %i.aek, align 1, !tbaa !12, !alias.scope !109, !noalias !111
  %index.next830 = add nuw i64 %index825, 16      ; 2 uses
  %i.ael = icmp eq i64 %index.next830, %n.vec815
  br i1 %i.ael, label %middle.block831, label %vector.body824, !llvm.loop !112

middle.block831:                                  ; preds = %vector.body824
  br i1 %cmp.n832, label %._crit_edge411, label %vec.epilog.iter.check836

vec.epilog.iter.check836:                         ; preds = %middle.block831
  br i1 %min.epilog.iters.check837, label %vec.epilog.scalar.ph835.preheader, label %vec.epilog.ph838, !prof !88

vec.epilog.ph838:                                 ; preds = %vector.main.loop.iter.check812, %vec.epilog.iter.check836
  %vec.epilog.resume.val833 = phi i64 [ %n.vec815, %vec.epilog.iter.check836 ], [ 0, %vector.main.loop.iter.check812 ]
  br label %vec.epilog.vector.body848

vec.epilog.vector.body848:                        ; preds = %vec.epilog.vector.body848, %vec.epilog.ph838
  %index849 = phi i64 [ %vec.epilog.resume.val833, %vec.epilog.ph838 ], [ %index.next854, %vec.epilog.vector.body848 ] ; 6 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.0288418, i64 %index849
  %wide.load850 = load <4 x i8>, ptr %i.aem, align 1, !tbaa !12, !alias.scope !100
  %i.aen = zext <4 x i8> %wide.load850 to <4 x i32>
  %i.aeo = mul nuw nsw <4 x i32> %broadcast.splat841, %i.aen
  %i.aep = getelementptr inbounds nuw i8, ptr %.0287419, i64 %index849
  %wide.load851 = load <4 x i8>, ptr %i.aep, align 1, !tbaa !12, !alias.scope !103
  %i.aeq = zext <4 x i8> %wide.load851 to <4 x i32>
  %i.aer = mul nuw nsw <4 x i32> %broadcast.splat843, %i.aeq
  %i.aes = getelementptr inbounds nuw i8, ptr %.0286420, i64 %index849
  %wide.load852 = load <4 x i8>, ptr %i.aes, align 1, !tbaa !12, !alias.scope !105
  %i.aet = zext <4 x i8> %wide.load852 to <4 x i32>
  %i.aeu = mul nuw nsw <4 x i32> %broadcast.splat843.a, %i.aet
  %i.aev = getelementptr inbounds nuw i8, ptr %.0285421, i64 %index849
  %wide.load853 = load <4 x i8>, ptr %i.aev, align 1, !tbaa !12, !alias.scope !107
  %i.aew = zext <4 x i8> %wide.load853 to <4 x i32>
  %i.aex = mul nuw nsw <4 x i32> %broadcast.splat847, %i.aew
  %i.aey = add nuw nsw <4 x i32> %i.aex, %i.aeu
  %i.aez = add nuw nsw <4 x i32> %i.aer, %i.aeo
  %i.afa = add nuw nsw <4 x i32> %i.aez, splat (i32 32)
  %i.afb = add nuw nsw <4 x i32> %i.afa, %i.aey
  %i.afc = lshr <4 x i32> %i.afb, splat (i32 6)
  %i.afd = trunc <4 x i32> %i.afc to <4 x i8>
  %i.afe = getelementptr inbounds nuw i8, ptr %.0423, i64 %index849
  store <4 x i8> %i.afd, ptr %i.afe, align 1, !tbaa !12, !alias.scope !109, !noalias !111
  %index.next854 = add nuw i64 %index849, 4       ; 2 uses
  %i.aff = icmp eq i64 %index.next854, %n.vec839
  br i1 %i.aff, label %vec.epilog.middle.block855, label %vec.epilog.vector.body848, !llvm.loop !113

vec.epilog.middle.block855:                       ; preds = %vec.epilog.vector.body848
  br i1 %cmp.n856, label %._crit_edge411, label %vec.epilog.scalar.ph835.preheader

vec.epilog.scalar.ph835.preheader:                ; preds = %iter.check834, %vec.epilog.iter.check836, %vec.epilog.middle.block855
  %indvars.iv498.ph = phi i64 [ 0, %iter.check834 ], [ %n.vec839, %vec.epilog.middle.block855 ], [ %n.vec815, %vec.epilog.iter.check836 ]
  br label %vec.epilog.scalar.ph835

vec.epilog.scalar.ph835:                          ; preds = %vec.epilog.scalar.ph835.preheader, %vec.epilog.scalar.ph835
  %indvars.iv498 = phi i64 [ %indvars.iv.next499, %vec.epilog.scalar.ph835 ], [ %indvars.iv498.ph, %vec.epilog.scalar.ph835.preheader ] ; 6 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.0288418, i64 %indvars.iv498
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !12
  %12 = zext i8 %i.afh to i32
  %.reass415 = mul nuw nsw i32 %factor.op.mul414, %12
  %i.afi = getelementptr inbounds nuw i8, ptr %.0287419, i64 %indvars.iv498
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !12
  %13 = zext i8 %i.afj to i32
  %.reass417 = mul nuw nsw i32 %factor.op.mul416, %13
  %i.afk = getelementptr inbounds nuw i8, ptr %.0286420, i64 %indvars.iv498
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !12
  %14 = zext i8 %i.afl to i32
  %.reass = mul nuw nsw i32 %factor.op.mul, %14
  %15 = getelementptr inbounds nuw i8, ptr %.0285421, i64 %indvars.iv498
  %16 = load i8, ptr %15, align 1, !tbaa !12
  %17 = zext i8 %16 to i32
  %.reass413 = mul nuw nsw i32 %factor.op.mul412, %17
  %reass.add = add nuw nsw i32 %.reass413, %.reass
  %reass.add321 = add nuw nsw i32 %.reass417, %.reass415
  %18 = add nuw nsw i32 %reass.add321, 32
  %op.rdx = add nuw nsw i32 %18, %reass.add
  %i.afm = lshr i32 %op.rdx, 6
  %i.afn = trunc i32 %i.afm to i8
  %i.afo = getelementptr inbounds nuw i8, ptr %.0423, i64 %indvars.iv498
  store i8 %i.afn, ptr %i.afo, align 1, !tbaa !12
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1 ; 2 uses
  %exitcond502.not = icmp eq i64 %indvars.iv.next499, %wide.trip.count501
  br i1 %exitcond502.not, label %._crit_edge411, label %vec.epilog.scalar.ph835, !llvm.loop !114

._crit_edge411:                                   ; preds = %vec.epilog.scalar.ph835, %vec.epilog.middle.block855, %middle.block831
  %i.afp = getelementptr inbounds i8, ptr %.0288418, i64 %i.abt
  %i.afq = getelementptr inbounds i8, ptr %.0287419, i64 %i.abu
  %i.afr = getelementptr inbounds i8, ptr %.0286420, i64 %i.abv
  %i.afs = getelementptr inbounds i8, ptr %.0285421, i64 %i.abw
  %i.aft = getelementptr inbounds i8, ptr %.0423, i64 %i.aat
  %i.afu = add nuw nsw i32 %.3280422, 1           ; 2 uses
  %exitcond503.not = icmp eq i32 %i.afu, %5
  br i1 %exitcond503.not, label %.loopexit, label %iter.check834, !llvm.loop !115

bb.k:                                             ; preds = %.loopexit327
  %i.afv = and i32 %6, 7
  %i.afw = shl nuw nsw i32 %7, 3
  %i.afx = and i32 %i.afw, 56
  %i.afy = or disjoint i32 %i.afx, %i.afv
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = getelementptr inbounds nuw i8, ptr @mc_block.weight, i64 %i.afz
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !12
  %i.agc = zext i8 %i.agb to i16                  ; 6 uses
  %i.agd = sub nsw i16 8, %i.agc                  ; 5 uses
  br i1 %i.sb, label %.preheader323.lr.ph, label %.loopexit

.preheader323.lr.ph:                              ; preds = %bb.k
  %i.age = shl nuw nsw i64 1, %i.o
  %i.agf = and i64 %i.age, 60813
  %.not307.not = icmp eq i64 %i.agf, 0
  %i.agg = shl nuw nsw i64 1, %i.l
  %i.agh = and i64 %i.agg, 60813
  %.not306.not = icmp eq i64 %i.agh, 0
  %i.agi = icmp sgt i32 %4, 0
  %i.agj = select i1 %.not306.not, i64 64, i64 %i.aat ; 3 uses
  %i.agk = select i1 %.not307.not, i64 64, i64 %i.aat ; 3 uses
  br i1 %i.agi, label %.preheader323.preheader, label %.loopexit

.preheader323.preheader:                          ; preds = %.preheader323.lr.ph
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.l
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !13 ; 3 uses
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.o
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !13 ; 3 uses
  %wide.trip.count495 = zext nneg i32 %4 to i64   ; 11 uses
  %i.agp = add nsw i32 %5, -1
  %i.agq = zext i32 %i.agp to i64                 ; 3 uses
  %i.agr = mul nsw i64 %i.aat, %i.agq
  %i.ags = getelementptr i8, ptr %1, i64 %i.agr
  %scevgep731 = getelementptr i8, ptr %i.ags, i64 %wide.trip.count495 ; 2 uses
  %i.agt = mul nsw i64 %i.agj, %i.agq
  %i.agu = getelementptr i8, ptr %i.agm, i64 %i.agt
  %scevgep732 = getelementptr i8, ptr %i.agu, i64 %wide.trip.count495
  %i.agv = mul nsw i64 %i.agk, %i.agq
  %i.agw = getelementptr i8, ptr %i.ago, i64 %i.agv
  %scevgep733 = getelementptr i8, ptr %i.agw, i64 %wide.trip.count495
  %min.iters.check746 = icmp ult i32 %4, 4
  %bound0734 = icmp ult ptr %1, %scevgep732
  %bound1735 = icmp ult ptr %i.agm, %scevgep731
  %found.conflict736 = and i1 %bound0734, %bound1735
  %stride.check737 = icmp slt i32 %3, 0
  %i.agx = or i1 %found.conflict736, %stride.check737
  %stride.check738 = icmp slt i64 %i.agj, 0
  %i.agy = or i1 %i.agx, %stride.check738
  %bound0739 = icmp ult ptr %1, %scevgep733
  %bound1740 = icmp ult ptr %i.ago, %scevgep731
  %found.conflict741 = and i1 %bound0739, %bound1740
  %stride.check742 = icmp slt i32 %3, 0
  %i.agz = or i1 %found.conflict741, %stride.check742
  %stride.check743 = icmp slt i64 %i.agk, 0
  %i.aha = or i1 %i.agz, %stride.check743
  %conflict.rdx744 = or i1 %i.agy, %i.aha
  %min.iters.check748 = icmp ult i32 %4, 16
  %i.ahb = and i64 %wide.trip.count495, 12
  %n.vec750 = and i64 %wide.trip.count495, 2147483632 ; 4 uses
  %broadcast.splatinsert751 = insertelement <16 x i16> poison, i16 %i.agc, i64 0
  %broadcast.splat752 = shufflevector <16 x i16> %broadcast.splatinsert751, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert753 = insertelement <16 x i16> poison, i16 %i.agd, i64 0
  %broadcast.splat754 = shufflevector <16 x i16> %broadcast.splatinsert753, <16 x i16> poison, <16 x i32> zeroinitializer
  %cmp.n761 = icmp eq i64 %n.vec750, %wide.trip.count495
  %min.epilog.iters.check766 = icmp eq i64 %i.ahb, 0
  %n.vec768 = and i64 %wide.trip.count495, 2147483644 ; 3 uses
  %broadcast.splatinsert769 = insertelement <4 x i16> poison, i16 %i.agc, i64 0
  %broadcast.splat770 = shufflevector <4 x i16> %broadcast.splatinsert769, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert771 = insertelement <4 x i16> poison, i16 %i.agd, i64 0
  %broadcast.splat772 = shufflevector <4 x i16> %broadcast.splatinsert771, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n779 = icmp eq i64 %n.vec768, %wide.trip.count495
  %xtraiter = and i64 %wide.trip.count495, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ahc = add nsw i64 %wide.trip.count495, -1
  br label %iter.check763

iter.check763:                                    ; preds = %.preheader323.preheader, %._crit_edge
  %.1409 = phi ptr [ %i.ajr, %._crit_edge ], [ %1, %.preheader323.preheader ] ; 6 uses
  %.0271408 = phi ptr [ %i.ajq, %._crit_edge ], [ %i.ago, %.preheader323.preheader ] ; 6 uses
  %.0272407 = phi ptr [ %i.ajp, %._crit_edge ], [ %i.agm, %.preheader323.preheader ] ; 6 uses
  %.4281406 = phi i32 [ %i.ajs, %._crit_edge ], [ 0, %.preheader323.preheader ]
  %brmerge880 = select i1 %min.iters.check746, i1 true, i1 %conflict.rdx744
  br i1 %brmerge880, label %vec.epilog.scalar.ph764.preheader, label %vector.main.loop.iter.check747

vector.main.loop.iter.check747:                   ; preds = %iter.check763
  br i1 %min.iters.check748, label %vec.epilog.ph767, label %vector.body755

vector.body755:                                   ; preds = %vector.main.loop.iter.check747, %vector.body755
  %index756 = phi i64 [ %index.next759, %vector.body755 ], [ 0, %vector.main.loop.iter.check747 ] ; 4 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0272407, i64 %index756
  %wide.load757 = load <16 x i8>, ptr %i.ahd, align 1, !tbaa !12, !alias.scope !116
  %i.ahe = zext <16 x i8> %wide.load757 to <16 x i16>
  %i.ahf = mul nuw <16 x i16> %broadcast.splat752, %i.ahe
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0271408, i64 %index756
  %wide.load758 = load <16 x i8>, ptr %i.ahg, align 1, !tbaa !12, !alias.scope !119
  %i.ahh = zext <16 x i8> %wide.load758 to <16 x i16>
  %i.ahi = mul <16 x i16> %broadcast.splat754, %i.ahh
  %i.ahj = add nuw <16 x i16> %i.ahf, splat (i16 4)
  %i.ahk = add <16 x i16> %i.ahj, %i.ahi
  %i.ahl = lshr <16 x i16> %i.ahk, splat (i16 3)
  %i.ahm = trunc <16 x i16> %i.ahl to <16 x i8>
  %i.ahn = getelementptr inbounds nuw i8, ptr %.1409, i64 %index756
  store <16 x i8> %i.ahm, ptr %i.ahn, align 1, !tbaa !12, !alias.scope !121, !noalias !123
  %index.next759 = add nuw i64 %index756, 16      ; 2 uses
  %i.aho = icmp eq i64 %index.next759, %n.vec750
  br i1 %i.aho, label %middle.block760, label %vector.body755, !llvm.loop !124

middle.block760:                                  ; preds = %vector.body755
  br i1 %cmp.n761, label %._crit_edge, label %vec.epilog.iter.check765

vec.epilog.iter.check765:                         ; preds = %middle.block760
  br i1 %min.epilog.iters.check766, label %vec.epilog.scalar.ph764.preheader, label %vec.epilog.ph767, !prof !88

vec.epilog.ph767:                                 ; preds = %vector.main.loop.iter.check747, %vec.epilog.iter.check765
  %vec.epilog.resume.val762 = phi i64 [ %n.vec750, %vec.epilog.iter.check765 ], [ 0, %vector.main.loop.iter.check747 ]
  br label %vec.epilog.vector.body773

vec.epilog.vector.body773:                        ; preds = %vec.epilog.vector.body773, %vec.epilog.ph767
  %index774 = phi i64 [ %vec.epilog.resume.val762, %vec.epilog.ph767 ], [ %index.next777, %vec.epilog.vector.body773 ] ; 4 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0272407, i64 %index774
  %wide.load775 = load <4 x i8>, ptr %i.ahp, align 1, !tbaa !12, !alias.scope !116
  %i.ahq = zext <4 x i8> %wide.load775 to <4 x i16>
  %i.ahr = mul nuw <4 x i16> %broadcast.splat770, %i.ahq
  %i.ahs = getelementptr inbounds nuw i8, ptr %.0271408, i64 %index774
  %wide.load776 = load <4 x i8>, ptr %i.ahs, align 1, !tbaa !12, !alias.scope !119
  %i.aht = zext <4 x i8> %wide.load776 to <4 x i16>
  %i.ahu = mul <4 x i16> %broadcast.splat772, %i.aht
  %i.ahv = add nuw <4 x i16> %i.ahr, splat (i16 4)
  %i.ahw = add <4 x i16> %i.ahv, %i.ahu
  %i.ahx = lshr <4 x i16> %i.ahw, splat (i16 3)
  %i.ahy = trunc <4 x i16> %i.ahx to <4 x i8>
  %i.ahz = getelementptr inbounds nuw i8, ptr %.1409, i64 %index774
  store <4 x i8> %i.ahy, ptr %i.ahz, align 1, !tbaa !12, !alias.scope !121, !noalias !123
  %index.next777 = add nuw i64 %index774, 4       ; 2 uses
  %i.aia = icmp eq i64 %index.next777, %n.vec768
  br i1 %i.aia, label %vec.epilog.middle.block778, label %vec.epilog.vector.body773, !llvm.loop !125

vec.epilog.middle.block778:                       ; preds = %vec.epilog.vector.body773
  br i1 %cmp.n779, label %._crit_edge, label %vec.epilog.scalar.ph764.preheader

vec.epilog.scalar.ph764.preheader:                ; preds = %iter.check763, %vec.epilog.iter.check765, %vec.epilog.middle.block778
  %indvars.iv492.ph = phi i64 [ 0, %iter.check763 ], [ %n.vec768, %vec.epilog.middle.block778 ], [ %n.vec750, %vec.epilog.iter.check765 ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph764.prol.loopexit, label %vec.epilog.scalar.ph764.prol

vec.epilog.scalar.ph764.prol:                     ; preds = %vec.epilog.scalar.ph764.preheader
  %i.aib = getelementptr inbounds nuw i8, ptr %.0272407, i64 %indvars.iv492.ph
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !12
  %i.aid = zext i8 %i.aic to i16
  %i.aie = mul nuw i16 %i.aid, %i.agc
  %i.aif = getelementptr inbounds nuw i8, ptr %.0271408, i64 %indvars.iv492.ph
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !12
  %i.aih = zext i8 %i.aig to i16
  %i.aii = mul i16 %i.agd, %i.aih
  %i.aij = add nuw i16 %i.aie, 4
  %i.aik = add i16 %i.aij, %i.aii
  %i.ail = lshr i16 %i.aik, 3
  %i.aim = trunc i16 %i.ail to i8
  %i.ain = getelementptr inbounds nuw i8, ptr %.1409, i64 %indvars.iv492.ph
  store i8 %i.aim, ptr %i.ain, align 1, !tbaa !12
  %indvars.iv.next493.prol = or disjoint i64 %indvars.iv492.ph, 1
  br label %vec.epilog.scalar.ph764.prol.loopexit

vec.epilog.scalar.ph764.prol.loopexit:            ; preds = %vec.epilog.scalar.ph764.prol, %vec.epilog.scalar.ph764.preheader
  %indvars.iv492.unr = phi i64 [ %indvars.iv492.ph, %vec.epilog.scalar.ph764.preheader ], [ %indvars.iv.next493.prol, %vec.epilog.scalar.ph764.prol ]
  %i.aio = icmp eq i64 %indvars.iv492.ph, %i.ahc
  br i1 %i.aio, label %._crit_edge, label %vec.epilog.scalar.ph764

vec.epilog.scalar.ph764:                          ; preds = %vec.epilog.scalar.ph764.prol.loopexit, %vec.epilog.scalar.ph764
  %indvars.iv492 = phi i64 [ %indvars.iv.next493.1, %vec.epilog.scalar.ph764 ], [ %indvars.iv492.unr, %vec.epilog.scalar.ph764.prol.loopexit ] ; 5 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.0272407, i64 %indvars.iv492
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !12
  %i.air = zext i8 %i.aiq to i16
  %i.ais = mul nuw i16 %i.air, %i.agc
  %i.ait = getelementptr inbounds nuw i8, ptr %.0271408, i64 %indvars.iv492
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !12
  %i.aiv = zext i8 %i.aiu to i16
  %i.aiw = mul i16 %i.agd, %i.aiv
  %i.aix = add nuw i16 %i.ais, 4
  %i.aiy = add i16 %i.aix, %i.aiw
  %i.aiz = lshr i16 %i.aiy, 3
  %i.aja = trunc i16 %i.aiz to i8
end_hunk_0
begin_hunk_1_@put_snow_qpel2_hv_lowpass_8:bb.a
  %i.cr = getelementptr inbounds i8, ptr %i.cm, i64 %i.e ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cw = load <4 x i8>, ptr %i.co, align 1, !tbaa !12 ; 2 uses
  %i.cx = load i8, ptr %i.cq, align 1, !tbaa !12
  %i.cy = load i8, ptr %i.cp, align 1, !tbaa !12
  %i.cz = load <4 x i8>, ptr %i.ct, align 1, !tbaa !12 ; 2 uses
  %i.da = shufflevector <4 x i8> %i.cw, <4 x i8> %i.cz, <4 x i32> <i32 1, i32 2, i32 5, i32 6>
  %i.db = zext <4 x i8> %i.da to <4 x i16>        ; 2 uses
  %i.dc = load i8, ptr %i.cv, align 1, !tbaa !12
  %i.dd = load i8, ptr %i.cu, align 1, !tbaa !12
  %i.de = shufflevector <4 x i8> %i.cw, <4 x i8> %i.cz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.df = zext <4 x i8> %i.de to <4 x i16>
  %i.dg = load <2 x i8>, ptr %i.cn, align 1, !tbaa !12
  %i.dh = load <2 x i8>, ptr %i.cs, align 1, !tbaa !12
  %i.di = shufflevector <2 x i8> %i.dg, <2 x i8> %i.dh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dj = zext <4 x i8> %i.di to <4 x i16>        ; 3 uses
  %i.dk = shufflevector <4 x i16> %i.db, <4 x i16> %i.dj, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.dl = add nuw nsw <4 x i16> %i.dk, %i.dj
  %i.dm = mul nuw nsw <4 x i16> %i.dl, splat (i16 20)
  %i.dn = zext i8 %i.dc to i16
  %i.do = zext i8 %i.dd to i16
  %i.dp = zext i8 %i.cx to i16
  %i.dq = zext i8 %i.cy to i16
  %i.dr = shufflevector <4 x i16> %i.dj, <4 x i16> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ds = insertelement <4 x i16> %i.dr, i16 %i.dq, i64 1
  %i.dt = insertelement <4 x i16> %i.ds, i16 %i.do, i64 3 ; 2 uses
  %i.du = add nuw nsw <4 x i16> %i.dt, %i.db
  %i.dv = mul nsw <4 x i16> %i.du, splat (i16 -5)
  %i.dw = add nuw nsw <4 x i16> %i.dm, %i.df
  %i.dx = add nsw <4 x i16> %i.dw, %i.dv
  %i.dy = shufflevector <4 x i16> %i.dt, <4 x i16> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.dz = insertelement <4 x i16> %i.dy, i16 %i.dp, i64 1
  %i.ea = insertelement <4 x i16> %i.dz, i16 %i.dn, i64 3
  %i.eb = add nsw <4 x i16> %i.dx, %i.ea          ; 2 uses
  store <4 x i16> %i.eb, ptr %i.cl, align 2, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ed = getelementptr inbounds i8, ptr %i.cr, i64 %i.e ; 7 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !12
  %i.ef = zext i8 %i.ee to i16                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !12
  %i.ei = zext i8 %i.eh to i16                    ; 2 uses
  %i.ej = add nuw nsw i16 %i.ei, %i.ef
  %i.ek = mul nuw nsw i16 %i.ej, 20
  %i.el = getelementptr inbounds i8, ptr %i.ed, i64 -1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !12
  %i.en = zext i8 %i.em to i16                    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !12
  %i.eq = zext i8 %i.ep to i16                    ; 2 uses
  %i.er = add nuw nsw i16 %i.eq, %i.en
  %.neg62.6 = mul nsw i16 %i.er, -5
  %i.es = getelementptr inbounds i8, ptr %i.ed, i64 -2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !12
  %i.eu = zext i8 %i.et to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ed, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !12
  %i.ex = zext i8 %i.ew to i16                    ; 2 uses
  %i.ey = add nuw nsw i16 %i.ek, %i.eu
  %i.ez = add nsw i16 %i.ey, %.neg62.6
  %i.fa = add nsw i16 %i.ez, %i.ex                ; 2 uses
  store i16 %i.fa, ptr %i.ec, align 2, !tbaa !15
  %i.fb = add nuw nsw i16 %i.eq, %i.ei
  %i.fc = mul nuw nsw i16 %i.fb, 20
  %i.fd = add nuw nsw i16 %i.ex, %i.ef
  %.neg63.6 = mul nsw i16 %i.fd, -5
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !12
  %i.fg = zext i8 %i.ff to i16
  %i.fh = add nuw nsw i16 %i.fc, %i.en
  %i.fi = add nsw i16 %i.fh, %.neg63.6
  %i.fj = add nsw i16 %i.fi, %i.fg
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fm = sext i32 %3 to i64                      ; 2 uses
  %i.fn = load i16, ptr %1, align 2, !tbaa !15
  %i.fo = sext i16 %i.fn to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !15
  %i.fr = sext i16 %i.fq to i32                   ; 2 uses
  %i.fs = load i16, ptr %i.fl, align 2, !tbaa !15
  %i.ft = sext i16 %i.fs to i32                   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !15
  %i.fw = sext i16 %i.fv to i32                   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !15
  %i.fz = sext i16 %i.fy to i32                   ; 2 uses
  %i.ga = extractelement <4 x i16> %i.eb, i64 2
  %i.gb = sext i16 %i.ga to i32                   ; 2 uses
  %i.gc = sext i16 %i.fa to i32
  %i.gd = add nsw i32 %i.fw, %i.ft
  %i.ge = mul nsw i32 %i.gd, 20
  %i.gf = add nsw i32 %i.fz, %i.fr
  %.neg = mul nsw i32 %i.gf, -5
  %i.gg = add nsw i32 %i.fo, 512
  %i.gh = add nsw i32 %i.gg, %i.gb
  %i.gi = add nsw i32 %i.gh, %i.ge
  %i.gj = add nsw i32 %i.gi, %.neg
  %i.gk = ashr i32 %i.gj, 10                      ; 3 uses
  %i.gl = icmp ugt i32 %i.gk, 255
  %isnotneg.i64 = icmp sgt i32 %i.gk, -1
  %i.gm = sext i1 %isnotneg.i64 to i8
  %i.gn = trunc nuw i32 %i.gk to i8
  %.0.i65 = select i1 %i.gl, i8 %i.gm, i8 %i.gn
  store i8 %.0.i65, ptr %0, align 1, !tbaa !12
  %i.go = add nsw i32 %i.fz, %i.fw
  %i.gp = mul nsw i32 %i.go, 20
  %i.gq = add nsw i32 %i.gb, %i.ft
  %.neg61 = mul nsw i32 %i.gq, -5
  %i.gr = add nsw i32 %i.fr, 512
  %i.gs = add nsw i32 %i.gr, %i.gc
  %i.gt = add nsw i32 %i.gs, %i.gp
  %i.gu = add nsw i32 %i.gt, %.neg61
  %i.gv = ashr i32 %i.gu, 10                      ; 3 uses
  %i.gw = icmp ugt i32 %i.gv, 255
  %isnotneg.i = icmp sgt i32 %i.gv, -1
  %i.gx = sext i1 %isnotneg.i to i8
  %i.gy = trunc nuw i32 %i.gv to i8
  %.0.i = select i1 %i.gw, i8 %i.gx, i8 %i.gy
  %i.gz = getelementptr inbounds i8, ptr %0, i64 %i.fm
  store i8 %.0.i, ptr %i.gz, align 1, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !15
  %i.he = sext i16 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !15
  %i.hh = sext i16 %i.hg to i32                   ; 2 uses
  %i.hi = load i16, ptr %i.hb, align 2, !tbaa !15
  %i.hj = sext i16 %i.hi to i32                   ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !15
  %i.hm = sext i16 %i.hl to i32                   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !15
  %i.hp = sext i16 %i.ho to i32                   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !15
  %i.hs = sext i16 %i.hr to i32                   ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !15
  %i.hv = sext i16 %i.hu to i32
  %i.hw = add nsw i32 %i.hm, %i.hj
  %i.hx = mul nsw i32 %i.hw, 20
  %i.hy = add nsw i32 %i.hp, %i.hh
  %.neg.1 = mul nsw i32 %i.hy, -5
  %i.hz = add nsw i32 %i.he, 512
  %i.ia = add nsw i32 %i.hz, %i.hs
  %i.ib = add nsw i32 %i.ia, %i.hx
  %i.ic = add nsw i32 %i.ib, %.neg.1
  %i.id = ashr i32 %i.ic, 10                      ; 3 uses
  %i.ie = icmp ugt i32 %i.id, 255
  %isnotneg.i64.1 = icmp sgt i32 %i.id, -1
  %i.if = sext i1 %isnotneg.i64.1 to i8
  %i.ig = trunc nuw i32 %i.id to i8
  %.0.i65.1 = select i1 %i.ie, i8 %i.if, i8 %i.ig
  store i8 %.0.i65.1, ptr %i.ha, align 1, !tbaa !12
  %i.ih = add nsw i32 %i.hp, %i.hm
  %i.ii = mul nsw i32 %i.ih, 20
  %i.ij = add nsw i32 %i.hs, %i.hj
  %.neg61.1 = mul nsw i32 %i.ij, -5
  %i.ik = add nsw i32 %i.hh, 512
  %i.il = add nsw i32 %i.ik, %i.hv
  %i.im = add nsw i32 %i.il, %i.ii
  %i.in = add nsw i32 %i.im, %.neg61.1
  %i.io = ashr i32 %i.in, 10                      ; 3 uses
  %i.ip = icmp ugt i32 %i.io, 255
  %isnotneg.i.1 = icmp sgt i32 %i.io, -1
  %i.iq = sext i1 %isnotneg.i.1 to i8
  %i.ir = trunc nuw i32 %i.io to i8
  %.0.i.1 = select i1 %i.ip, i8 %i.iq, i8 %i.ir
  %i.is = getelementptr inbounds i8, ptr %i.ha, i64 %i.fm
  store i8 %.0.i.1, ptr %i.is, align 1, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 short", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!21, !23, i64 8}
!21 = !{!"SnowContext", !22, i64 0, !23, i64 8, !24, i64 16, !25, i64 576, !26, i64 960, !7, i64 976, !27, i64 1744, !28, i64 1768, !28, i64 1776, !7, i64 1784, !28, i64 1848, !7, i64 1856, !7, i64 1888, !6, i64 6112, !6, i64 6116, !6, i64 6120, !6, i64 6124, !6, i64 6128, !6, i64 6132, !6, i64 6136, !6, i64 6140, !6, i64 6144, !6, i64 6148, !6, i64 6152, !7, i64 6160, !7, i64 6224, !29, i64 6288, !29, i64 6296, !10, i64 6304, !10, i64 6312, !29, i64 6320, !6, i64 6328, !6, i64 6332, !6, i64 6336, !6, i64 6340, !6, i64 6344, !6, i64 6348, !6, i64 6352, !6, i64 6356, !6, i64 6360, !6, i64 6364, !6, i64 6368, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !7, i64 6392, !30, i64 155032, !31, i64 155040, !14, i64 155080, !34, i64 155088, !6, i64 155096, !6, i64 155100}
!22 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!23 = !{!"p1 _ZTS14AVCodecContext", !11, i64 0}
!24 = !{!"RangeCoder", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 272, !14, i64 528, !14, i64 536, !14, i64 544, !6, i64 552}
!25 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!26 = !{!"VideoDSPContext", !11, i64 0, !11, i64 8}
!27 = !{!"SnowDWTContext", !11, i64 0, !11, i64 8, !11, i64 16}
!28 = !{!"p1 _ZTS7AVFrame", !11, i64 0}
!29 = !{!"p1 int", !11, i64 0}
!30 = !{!"p1 _ZTS9BlockNode", !11, i64 0}
!31 = !{!"slice_buffer_s", !32, i64 0, !32, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !10, i64 32}
!32 = !{!"p2 short", !33, i64 0}
!33 = !{!"any p2 pointer", !11, i64 0}
!34 = !{!"p1 _ZTS14AVMotionVector", !11, i64 0}
!35 = !{!6, !6, i64 0}
!36 = !{!21, !30, i64 155032}
!37 = !{!21, !6, i64 6376}
!38 = !{!39, !7, i64 8}
!39 = !{!"BlockNode", !16, i64 0, !16, i64 2, !7, i64 4, !7, i64 5, !7, i64 8, !7, i64 9}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = !{!39, !7, i64 4}
!46 = !{!28, !28, i64 0}
!47 = !{!21, !6, i64 6352}
!48 = !{!21, !6, i64 6332}
!49 = !{!39, !16, i64 0}
!50 = !{!39, !16, i64 2}
!51 = !{!21, !11, i64 960}
!52 = !{!53, !6, i64 37140}
!53 = !{!"Plane", !6, i64 0, !6, i64 4, !7, i64 8, !6, i64 37128, !7, i64 37132, !6, i64 37136, !6, i64 37140, !6, i64 37144, !7, i64 37148, !6, i64 37152}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !56}
!61 = !{!53, !6, i64 37136}
!62 = distinct !{!62, !18, !63, !64}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = distinct !{!65, !18, !64, !63}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18, !63, !64}
!68 = distinct !{!68, !18, !64, !63}
!69 = distinct !{!69, !18, !63, !64}
!70 = distinct !{!70, !18, !64, !63}
!71 = !{!72}
!72 = distinct !{!72, !73}
!73 = distinct !{!73, !"LVerDomain"}
!74 = !{!75}
!75 = distinct !{!75, !73}
!76 = !{!77}
!77 = distinct !{!77, !73}
!78 = !{!79}
!79 = distinct !{!79, !73}
!80 = !{!81}
!81 = distinct !{!81, !73}
!82 = !{!83}
!83 = distinct !{!83, !73}
!84 = !{!85}
!85 = distinct !{!85, !73}
!86 = !{!83, !81, !79, !77, !75, !72}
!87 = distinct !{!87, !18, !63, !64}
!88 = !{!"branch_weights", i32 4, i32 12}
!89 = distinct !{!89, !18, !63, !64}
!90 = distinct !{!90, !18, !63}
!91 = distinct !{!91, !18}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !18, !63, !64}
!94 = distinct !{!94, !18, !64, !63}
!95 = distinct !{!95, !18}
!96 = distinct !{!96, !18, !63, !64}
!97 = distinct !{!97, !18, !63, !64}
!98 = distinct !{!98, !18, !64, !63}
!99 = distinct !{!99, !18, !64, !63}
!100 = !{!101}
!101 = distinct !{!101, !102}
!102 = distinct !{!102, !"LVerDomain"}
!103 = !{!104}
!104 = distinct !{!104, !102}
!105 = !{!106}
!106 = distinct !{!106, !102}
!107 = !{!108}
!108 = distinct !{!108, !102}
!109 = !{!110}
!110 = distinct !{!110, !102}
!111 = !{!101, !104, !106, !108}
!112 = distinct !{!112, !18, !63, !64}
!113 = distinct !{!113, !18, !63, !64}
!114 = distinct !{!114, !18, !63}
!115 = distinct !{!115, !18}
!116 = !{!117}
!117 = distinct !{!117, !118}
!118 = distinct !{!118, !"LVerDomain"}
!119 = !{!120}
!120 = distinct !{!120, !118}
!121 = !{!122}
!122 = distinct !{!122, !118}
!123 = !{!117, !120}
!124 = distinct !{!124, !18, !63, !64}
!125 = distinct !{!125, !18, !63, !64}
!126 = distinct !{!126, !18, !63}
!127 = distinct !{!127, !18}
!128 = !{!129, !11, i64 32}
!129 = !{!"AVCodecContext", !22, i64 0, !6, i64 8, !6, i64 12, !130, i64 16, !6, i64 24, !6, i64 28, !11, i64 32, !131, i64 40, !11, i64 48, !132, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !133, i64 84, !133, i64 92, !133, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !133, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !11, i64 184, !11, i64 192, !6, i64 200, !134, i64 204, !134, i64 208, !134, i64 212, !134, i64 216, !134, i64 220, !134, i64 224, !134, i64 228, !134, i64 232, !134, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !10, i64 288, !10, i64 296, !10, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !135, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !11, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !134, i64 428, !134, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !136, i64 456, !132, i64 464, !132, i64 472, !134, i64 480, !134, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !137, i64 536, !11, i64 544, !138, i64 552, !138, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !11, i64 672, !11, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !139, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !140, i64 776, !6, i64 784, !6, i64 788, !132, i64 792, !6, i64 800, !6, i64 804, !132, i64 808, !11, i64 816, !132, i64 824, !29, i64 832, !6, i64 840, !141, i64 848, !6, i64 856, !6, i64 860}
!130 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!131 = !{!"p1 _ZTS15AVCodecInternal", !11, i64 0}
!132 = !{!"long", !7, i64 0}
!133 = !{!"AVRational", !6, i64 0, !6, i64 4}
!134 = !{!"float", !7, i64 0}
!135 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !11, i64 16}
!136 = !{!"p1 _ZTS10RcOverride", !11, i64 0}
!137 = !{!"p1 _ZTS9AVHWAccel", !11, i64 0}
!138 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!139 = !{!"p1 _ZTS17AVCodecDescriptor", !11, i64 0}
!140 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!141 = !{!"p2 _ZTS15AVFrameSideData", !33, i64 0}
!142 = !{!21, !6, i64 6148}
!143 = !{!21, !6, i64 6136}
!144 = !{!11, !11, i64 0}
!145 = !{!129, !6, i64 112}
!146 = !{!129, !6, i64 116}
!147 = !{!21, !10, i64 6304}
!148 = !{!21, !29, i64 6288}
!149 = !{!21, !29, i64 6296}
!150 = !{!21, !10, i64 6312}
!151 = !{!21, !29, i64 6320}
!152 = distinct !{!152, !18}
!153 = !{!21, !28, i64 1848}
!154 = !{!21, !28, i64 1776}
!155 = distinct !{!155, !18}
!156 = distinct !{!156, !18}
!157 = !{!21, !14, i64 155080}
!158 = !{!21, !6, i64 6384}
!159 = !{!21, !6, i64 6336}
!160 = !{!53, !6, i64 0}
!161 = !{!53, !6, i64 4}
!162 = distinct !{!162, !18}
!163 = !{!164, !29, i64 24}
!164 = !{!"SubBand", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !29, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !165, i64 56, !166, i64 64, !7, i64 72}
!165 = !{!"p1 _ZTS11x_and_coeff", !11, i64 0}
!166 = !{!"p1 _ZTS7SubBand", !11, i64 0}
!167 = !{!164, !6, i64 0}
!168 = !{!164, !6, i64 4}
!169 = !{!164, !6, i64 8}
!170 = !{!164, !6, i64 12}
!171 = !{!164, !6, i64 48}
!172 = !{!164, !6, i64 40}
!173 = !{!164, !6, i64 44}
!174 = !{!164, !10, i64 32}
!175 = !{!164, !166, i64 64}
!176 = !{!164, !165, i64 56}
end_hunk_1
