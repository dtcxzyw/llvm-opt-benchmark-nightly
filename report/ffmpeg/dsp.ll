Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dsp?download=true
inline.NumInlined: 81
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 168
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 307
begin_hunk_0_@intra_pred_12:bb.a
  %indvars.iv.next296 = add nsw i64 %indvars.iv295, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next296 to i32
  %exitcond298.not = icmp eq i32 %i.uy, %lftr.wideiv
  br i1 %exitcond298.not, label %prepare_intra_edge_params_12.exit, label %vec.epilog.scalar.ph563, !llvm.loop !679

prepare_intra_edge_params_12.exit:                ; preds = %vec.epilog.scalar.ph563, %.lr.ph244.prol.loopexit, %.lr.ph244, %vec.epilog.scalar.ph592, %.lr.ph250.prol.loopexit, %.lr.ph250, %middle.block558, %vec.epilog.middle.block573, %middle.block587, %vec.epilog.middle.block602, %.preheader219, %bb.af, %.preheader216, %bb.ad, %ref_filter_12.exit, %bb.aa
  %i.wr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %.0252.i, ptr %i.wr, align 8, !tbaa !680
  store ptr %.0251.i, ptr %6, align 8, !tbaa !681
  br i1 %i.az, label %.thread211, label %bb.ag

.thread211:                                       ; preds = %prepare_intra_edge_params_12.exit
  %i.ws = lshr i8 %i.as, 1
  %i.wt = and i8 %i.ws, 1
  %i.wu = zext nneg i8 %i.wt to i32
  %i.wv = lshr i8 %i.as, 2
  %i.ww = and i8 %i.wv, 15
  %i.wx = zext nneg i8 %i.ww to i32
  %i.wy = getelementptr inbounds nuw i8, ptr %i.b, i64 21256
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !682
  call void %i.wz(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj, i32 noundef %i.wx, i32 noundef %i.wu) #14
  br label %.loopexit

bb.ag:                                            ; preds = %prepare_intra_edge_params_12.exit
  switch i32 %i.al, label %bb.al [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 50, label %bb.aj
    i32 18, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.xa = getelementptr inbounds nuw i8, ptr %i.b, i64 21248
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !683
  call void %i.xb(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj) #14
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ag
  %i.xc = getelementptr inbounds nuw i8, ptr %i.b, i64 21264
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !684
  call void %i.xd(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj) #14
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ag
  %i.xe = getelementptr inbounds nuw i8, ptr %i.b, i64 21272
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !685
  call void %i.xf(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj) #14
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ag
  %i.xg = getelementptr inbounds nuw i8, ptr %i.b, i64 21280
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !686
  call void %i.xh(ptr noundef %i.bn, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj) #14
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag
  %i.xi = icmp sgt i32 %i.al, 33
  %i.xj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !670 ; 2 uses
  br i1 %i.xi, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.xl = getelementptr inbounds nuw i8, ptr %i.b, i64 21288
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !687
  call void %i.xm(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj, i32 noundef %5, i32 noundef %i.al, i32 noundef %i.ba, i32 noundef %i.xk, i32 noundef %i.bf) #14
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.xn = getelementptr inbounds nuw i8, ptr %i.b, i64 21296
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !688
  call void %i.xo(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj, i32 noundef %5, i32 noundef %i.al, i32 noundef %i.ba, i32 noundef %i.xk, i32 noundef %i.bf) #14
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %bb.aj, %bb.am, %bb.an, %bb.ak, %bb.ai
  %i.xp = icmp eq i32 %i.bf, 0
  br i1 %i.xp, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  switch i32 %i.al, label %.loopexit [
    i32 50, label %bb.aq
    i32 18, label %bb.aq
    i32 1, label %bb.aq
    i32 0, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap, %bb.ap, %bb.ap
  %.not.i198 = icmp ult i32 %i.ab, 65536          ; 2 uses
  %i.xq = lshr i32 %i.ab, 16
  %spec.select.i199 = select i1 %.not.i198, i32 %i.ab, i32 %i.xq ; 3 uses
  %spec.select12.i200 = select i1 %.not.i198, i32 0, i32 16 ; 2 uses
  %.not11.i201 = icmp samesign ult i32 %spec.select.i199, 256 ; 2 uses
  %i.xr = lshr i32 %spec.select.i199, 8
  %i.xs = or disjoint i32 %spec.select12.i200, 8
  %.110.i202 = select i1 %.not11.i201, i32 %spec.select.i199, i32 %i.xr
  %.1.i203 = select i1 %.not11.i201, i32 %spec.select12.i200, i32 %i.xs
  %i.xt = zext nneg i32 %.110.i202 to i64
  %i.xu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.xt
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !62
  %i.xw = zext i8 %i.xv to i32
  %.not.i197 = icmp ult i32 %i.ac, 65536          ; 2 uses
  %i.xx = lshr i32 %i.ac, 16
  %spec.select.i = select i1 %.not.i197, i32 %i.ac, i32 %i.xx ; 3 uses
  %spec.select12.i = select i1 %.not.i197, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.xy = lshr i32 %spec.select.i, 8
  %i.xz = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.xy
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.xz
  %i.ya = zext nneg i32 %.110.i to i64
  %i.yb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !62
  %i.yd = zext i8 %i.yc to i32
  %i.ye = add nsw i32 %.1.i203, -2
  %i.yf = add nsw i32 %i.ye, %.1.i
  %i.yg = add nsw i32 %i.yf, %i.xw
  %i.yh = add nsw i32 %i.yg, %i.yd
  %i.yi = ashr i32 %i.yh, 2                       ; 5 uses
  %i.yj = load ptr, ptr %i.wr, align 8, !tbaa !680 ; 7 uses
  %i.yk = load ptr, ptr %6, align 8, !tbaa !681   ; 10 uses
  %i.yl = icmp sgt i32 %i.ac, 0
  br i1 %i.yl, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.aq
  %i.ym = icmp sgt i32 %i.ab, 0
  %i.yn = getelementptr i8, ptr %i.yj, i64 -2     ; 3 uses
  %i.yo = getelementptr i8, ptr %i.yk, i64 -2     ; 3 uses
  br i1 %i.ym, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count327 = zext nneg i32 %i.ac to i64 ; 5 uses
  %wide.trip.count317 = zext nneg i32 %i.ab to i64 ; 7 uses
  %wide.trip.count322 = zext nneg i32 %i.ab to i64
  %i.yp = shl nuw nsw i64 %wide.trip.count327, 1
  %i.yq = add nsw i64 %i.bl, %wide.trip.count327
  %i.yr = shl nsw i64 %i.yq, 1
  %i.ys = add nsw i64 %i.yr, -2
  %i.yt = mul i64 %i.aj, %i.ys
  %i.yu = shl nsw i64 %i.bj, 1
  %i.yv = shl nuw nsw i64 %wide.trip.count317, 1  ; 2 uses
  %i.yw = getelementptr i8, ptr %i.bi, i64 %i.yt
  %i.yx = getelementptr i8, ptr %i.yw, i64 %i.yu
  %scevgep606 = getelementptr i8, ptr %i.yx, i64 %i.yv ; 2 uses
  %scevgep607 = getelementptr i8, ptr %i.yj, i64 %i.yp
  %scevgep608 = getelementptr i8, ptr %i.yk, i64 %i.yv
  %i.yy = shl nuw nsw i64 %wide.trip.count327, 1
  %i.yz = add nsw i64 %i.bl, %wide.trip.count327
  %i.za = shl nsw i64 %i.yz, 1
  %i.zb = add nsw i64 %i.za, -2
  %i.zc = mul i64 %i.aj, %i.zb
  %i.zd = shl nsw i64 %i.bj, 1
  %i.ze = shl nuw nsw i64 %wide.trip.count317, 1  ; 2 uses
  %i.zf = getelementptr i8, ptr %i.bi, i64 %i.zc
  %i.zg = getelementptr i8, ptr %i.zf, i64 %i.zd
  %scevgep636 = getelementptr i8, ptr %i.zg, i64 %i.ze ; 4 uses
  %scevgep637 = getelementptr i8, ptr %i.yj, i64 %i.yy
  %scevgep638 = getelementptr i8, ptr %i.yk, i64 %i.ze
  %min.iters.check618 = icmp ult i32 %i.ab, 8     ; 2 uses
  %bound0639 = icmp ult ptr %i.bn, %i.yj
  %bound1640 = icmp ult ptr %i.yn, %scevgep636
  %found.conflict641 = and i1 %bound0639, %bound1640
  %bound0643 = icmp ult ptr %i.bn, %scevgep637
  %bound1644 = icmp ult ptr %i.yj, %scevgep636
  %found.conflict645 = and i1 %bound0643, %bound1644
  %stride.check646 = icmp slt i32 %i.ah, 0
  %i.zh = or i1 %found.conflict645, %stride.check646
  %conflict.rdx647 = or i1 %found.conflict641, %i.zh
  %bound0648 = icmp ult ptr %i.bn, %i.yk
  %bound1649 = icmp ult ptr %i.yo, %scevgep636
  %found.conflict650 = and i1 %bound0648, %bound1649
  %conflict.rdx652 = or i1 %found.conflict650, %conflict.rdx647
  %bound0653 = icmp ult ptr %i.bn, %scevgep638
  %bound1654 = icmp ult ptr %i.yk, %scevgep636
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx657 = or i1 %found.conflict655, %conflict.rdx652
  %n.vec661 = and i64 %wide.trip.count317, 2147483640 ; 3 uses
  %i.zi = icmp eq i32 %i.al, 18
  %broadcast.splatinsert672 = insertelement <8 x i32> poison, i32 %i.yi, i64 0
  %broadcast.splat673 = shufflevector <8 x i32> %broadcast.splatinsert672, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zj = icmp eq i32 %i.al, 50
  %cmp.n683 = icmp eq i64 %n.vec661, %wide.trip.count317
  %bound0609 = icmp ult ptr %i.bn, %scevgep607
  %bound1610 = icmp ult ptr %i.yj, %scevgep606
  %found.conflict611 = and i1 %bound0609, %bound1610
  %bound0612 = icmp ult ptr %i.bn, %scevgep608
  %bound1613 = icmp ult ptr %i.yk, %scevgep606
  %found.conflict614 = and i1 %bound0612, %bound1613
  %stride.check615 = icmp slt i32 %i.ah, 0
  %i.zk = or i1 %found.conflict614, %stride.check615
  %conflict.rdx616 = or i1 %found.conflict611, %i.zk
  %n.vec620 = and i64 %wide.trip.count317, 2147483640 ; 3 uses
  %broadcast.splatinsert623 = insertelement <8 x i32> poison, i32 %i.yi, i64 0
  %broadcast.splat624 = shufflevector <8 x i32> %broadcast.splatinsert623, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n633 = icmp eq i64 %n.vec620, %wide.trip.count317
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge253
  %indvars.iv324 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next325, %._crit_edge253 ] ; 4 uses
  %i.zl = getelementptr inbounds nuw [2 x i8], ptr %i.yj, i64 %indvars.iv324 ; 4 uses
  %i.zm = mul nuw nsw i64 %i.aj, %indvars.iv324
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.zm ; 4 uses
  %indvars.iv324.tr = trunc i64 %indvars.iv324 to i32
  %i.zo = shl i32 %indvars.iv324.tr, 1
  %i.zp = ashr i32 %i.zo, %i.yi
  %i.zq = call i32 @llvm.smin.i32(i32 %i.zp, i32 31)
  %i.zr = lshr i32 32, %i.zq                      ; 4 uses
  br i1 %i.rg, label %.lr.ph252.split.us.preheader, label %.lr.ph252.split.preheader

.lr.ph252.split.preheader:                        ; preds = %.preheader
  %brmerge717 = select i1 %min.iters.check618, i1 true, i1 %conflict.rdx657
  br i1 %brmerge717, label %.lr.ph252.split.preheader691, label %vector.ph660

vector.ph660:                                     ; preds = %.lr.ph252.split.preheader
  %broadcast.splatinsert662 = insertelement <8 x i32> poison, i32 %i.zr, i64 0
  %broadcast.splat663 = shufflevector <8 x i32> %broadcast.splatinsert662, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zs = load i16, ptr %i.zl, align 2, !tbaa !45, !alias.scope !689
  %broadcast.splatinsert666 = insertelement <8 x i16> poison, i16 %i.zs, i64 0
  %broadcast.splat667 = shufflevector <8 x i16> %broadcast.splatinsert666, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.zt = zext <8 x i16> %broadcast.splat667 to <8 x i32>
  %i.zu = load i16, ptr %i.yn, align 2, !tbaa !45, !alias.scope !692
  %broadcast.splatinsert668 = insertelement <8 x i16> poison, i16 %i.zu, i64 0
  %broadcast.splat669 = shufflevector <8 x i16> %broadcast.splatinsert668, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.zv = zext <8 x i16> %broadcast.splat669 to <8 x i32>
  %i.zw = load i16, ptr %i.yo, align 2, !tbaa !45, !alias.scope !694
  %broadcast.splatinsert670 = insertelement <8 x i16> poison, i16 %i.zw, i64 0
  %broadcast.splat671 = shufflevector <8 x i16> %broadcast.splatinsert670, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.zx = zext <8 x i16> %broadcast.splat671 to <8 x i32>
  %predphi = select i1 %i.zi, <8 x i32> %broadcast.splat663, <8 x i32> zeroinitializer
  %i.zy = sub nsw <8 x i32> %i.zt, %i.zv
  br label %vector.body674

vector.body674:                                   ; preds = %vector.body674, %vector.ph660
  %index675 = phi i64 [ 0, %vector.ph660 ], [ %index.next680, %vector.body674 ] ; 3 uses
  %vec.ind676 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph660 ], [ %vec.ind.next681, %vector.body674 ] ; 2 uses
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %index675 ; 2 uses
  %wide.load677 = load <8 x i16>, ptr %i.zz, align 2, !tbaa !45, !alias.scope !696, !noalias !698
  %i.aaa = zext <8 x i16> %wide.load677 to <8 x i32>
  %i.aab = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %index675
  %wide.load678 = load <8 x i16>, ptr %i.aab, align 2, !tbaa !45, !alias.scope !700
  %i.aac = zext <8 x i16> %wide.load678 to <8 x i32>
  %i.aad = shl <8 x i32> %vec.ind676, splat (i32 1)
  %i.aae = ashr <8 x i32> %i.aad, %broadcast.splat673
  %i.aaf = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aae, <8 x i32> splat (i32 31))
  %i.aag = lshr <8 x i32> splat (i32 32), %i.aaf
  %predphi679 = select i1 %i.zj, <8 x i32> %i.aag, <8 x i32> zeroinitializer
  %i.aah = mul nsw <8 x i32> %i.zy, %predphi679
  %i.aai = sub nsw <8 x i32> %i.aac, %i.zx
  %i.aaj = mul nsw <8 x i32> %i.aai, %predphi
  %i.aak = add nsw <8 x i32> %i.aaj, splat (i32 32)
  %i.aal = add nsw <8 x i32> %i.aak, %i.aah
  %i.aam = ashr <8 x i32> %i.aal, splat (i32 6)
  %i.aan = add nsw <8 x i32> %i.aam, %i.aaa
  %i.aao = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aan, <8 x i32> zeroinitializer)
  %i.aap = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.aao, <8 x i32> splat (i32 4095))
  %i.aaq = trunc nuw nsw <8 x i32> %i.aap to <8 x i16>
  store <8 x i16> %i.aaq, ptr %i.zz, align 2, !tbaa !45, !alias.scope !696, !noalias !698
  %index.next680 = add nuw i64 %index675, 8       ; 2 uses
  %vec.ind.next681 = add <8 x i32> %vec.ind676, splat (i32 8)
  %i.aar = icmp eq i64 %index.next680, %n.vec661
  br i1 %i.aar, label %middle.block682, label %vector.body674, !llvm.loop !701

middle.block682:                                  ; preds = %vector.body674
  br i1 %cmp.n683, label %._crit_edge253, label %.lr.ph252.split.preheader691

.lr.ph252.split.preheader691:                     ; preds = %.lr.ph252.split.preheader, %middle.block682
  %indvars.iv314.ph = phi i64 [ %n.vec661, %middle.block682 ], [ 0, %.lr.ph252.split.preheader ]
  br label %.lr.ph252.split

.lr.ph252.split.us.preheader:                     ; preds = %.preheader
  %brmerge718 = select i1 %min.iters.check618, i1 true, i1 %conflict.rdx616
  br i1 %brmerge718, label %.lr.ph252.split.us.preheader690, label %vector.ph619

vector.ph619:                                     ; preds = %.lr.ph252.split.us.preheader
  %i.aas = load i16, ptr %i.zl, align 2, !tbaa !45, !alias.scope !702
  %broadcast.splatinsert621 = insertelement <8 x i16> poison, i16 %i.aas, i64 0
  %broadcast.splat622 = shufflevector <8 x i16> %broadcast.splatinsert621, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aat = zext <8 x i16> %broadcast.splat622 to <8 x i32>
  %broadcast.splatinsert625 = insertelement <8 x i32> poison, i32 %i.zr, i64 0
  %broadcast.splat626 = shufflevector <8 x i32> %broadcast.splatinsert625, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body627

vector.body627:                                   ; preds = %vector.body627, %vector.ph619
  %index628 = phi i64 [ 0, %vector.ph619 ], [ %index.next631, %vector.body627 ] ; 3 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph619 ], [ %vec.ind.next, %vector.body627 ] ; 2 uses
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %index628
  %wide.load629 = load <8 x i16>, ptr %i.aau, align 2, !tbaa !45, !alias.scope !705
  %i.aav = zext <8 x i16> %wide.load629 to <8 x i32>
  %i.aaw = shl <8 x i32> %vec.ind, splat (i32 1)
  %i.aax = ashr <8 x i32> %i.aaw, %broadcast.splat624
  %i.aay = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aax, <8 x i32> splat (i32 31))
  %i.aaz = lshr <8 x i32> splat (i32 32), %i.aay
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %index628 ; 2 uses
  %wide.load630 = load <8 x i16>, ptr %i.aba, align 2, !tbaa !45, !alias.scope !707, !noalias !709
  %i.abb = zext <8 x i16> %wide.load630 to <8 x i32> ; 3 uses
  %i.abc = sub nsw <8 x i32> %i.aat, %i.abb
  %i.abd = mul nsw <8 x i32> %i.abc, %i.aaz
  %i.abe = sub nsw <8 x i32> %i.aav, %i.abb
  %i.abf = mul nsw <8 x i32> %i.abe, %broadcast.splat626
  %i.abg = add nsw <8 x i32> %i.abf, splat (i32 32)
  %i.abh = add nsw <8 x i32> %i.abg, %i.abd
  %i.abi = ashr <8 x i32> %i.abh, splat (i32 6)
  %i.abj = add nsw <8 x i32> %i.abi, %i.abb
  %i.abk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.abj, <8 x i32> zeroinitializer)
  %i.abl = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.abk, <8 x i32> splat (i32 4095))
  %i.abm = trunc nuw nsw <8 x i32> %i.abl to <8 x i16>
  store <8 x i16> %i.abm, ptr %i.aba, align 2, !tbaa !45, !alias.scope !707, !noalias !709
  %index.next631 = add nuw i64 %index628, 8       ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.abn = icmp eq i64 %index.next631, %n.vec620
  br i1 %i.abn, label %middle.block632, label %vector.body627, !llvm.loop !710

middle.block632:                                  ; preds = %vector.body627
  br i1 %cmp.n633, label %._crit_edge253, label %.lr.ph252.split.us.preheader690

.lr.ph252.split.us.preheader690:                  ; preds = %.lr.ph252.split.us.preheader, %middle.block632
  %indvars.iv319.ph = phi i64 [ %n.vec620, %middle.block632 ], [ 0, %.lr.ph252.split.us.preheader ]
  br label %.lr.ph252.split.us

.lr.ph252.split.us:                               ; preds = %.lr.ph252.split.us.preheader690, %.lr.ph252.split.us
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %.lr.ph252.split.us ], [ %indvars.iv319.ph, %.lr.ph252.split.us.preheader690 ] ; 4 uses
  %i.abo = load i16, ptr %i.zl, align 2, !tbaa !45
  %i.abp = zext i16 %i.abo to i32
  %i.abq = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv319
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !45
  %i.abs = zext i16 %i.abr to i32
  %indvars.iv319.tr = trunc i64 %indvars.iv319 to i32
  %i.abt = shl i32 %indvars.iv319.tr, 1
  %i.abu = ashr i32 %i.abt, %i.yi
  %i.abv = call i32 @llvm.smin.i32(i32 %i.abu, i32 31)
  %i.abw = lshr i32 32, %i.abv
  %i.abx = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %indvars.iv319 ; 2 uses
  %i.aby = load i16, ptr %i.abx, align 2, !tbaa !45
  %i.abz = zext i16 %i.aby to i32                 ; 3 uses
  %i.aca = sub nsw i32 %i.abp, %i.abz
  %i.acb = mul nsw i32 %i.aca, %i.abw
  %i.acc = sub nsw i32 %i.abs, %i.abz
  %i.acd = mul nsw i32 %i.acc, %i.zr
  %i.ace = add nsw i32 %i.acd, 32
  %i.acf = add nsw i32 %i.ace, %i.acb
  %i.acg = ashr i32 %i.acf, 6
  %i.ach = add nsw i32 %i.acg, %i.abz
  %i.aci = call i32 @llvm.smax.i32(i32 %i.ach, i32 0)
  %i.acj = call i32 @llvm.umin.i32(i32 %i.aci, i32 4095)
  %i.ack = trunc nuw nsw i32 %i.acj to i16
  store i16 %i.ack, ptr %i.abx, align 2, !tbaa !45
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count322
  br i1 %exitcond323.not, label %._crit_edge253, label %.lr.ph252.split.us, !llvm.loop !711

._crit_edge253:                                   ; preds = %bb.as, %.lr.ph252.split.us, %middle.block682, %middle.block632
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.loopexit, label %.preheader, !llvm.loop !712

.lr.ph252.split:                                  ; preds = %.lr.ph252.split.preheader691, %bb.as
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %bb.as ], [ %indvars.iv314.ph, %.lr.ph252.split.preheader691 ] ; 4 uses
  %i.acl = load i16, ptr %i.zl, align 2, !tbaa !45
  %i.acm = zext i16 %i.acl to i32
  %i.acn = load i16, ptr %i.yn, align 2, !tbaa !45
  %i.aco = zext i16 %i.acn to i32
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %indvars.iv314 ; 2 uses
  %i.acq = load i16, ptr %i.acp, align 2, !tbaa !45
  %i.acr = zext i16 %i.acq to i32
  %i.acs = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv314
  %i.act = load i16, ptr %i.acs, align 2, !tbaa !45
  %i.acu = zext i16 %i.act to i32
  %i.acv = load i16, ptr %i.yo, align 2, !tbaa !45
  %i.acw = zext i16 %i.acv to i32
  switch i32 %i.al, label %bb.as [
    i32 50, label %.thread213
    i32 18, label %bb.ar
  ]

.thread213:                                       ; preds = %.lr.ph252.split
  %indvars.iv314.tr = trunc i64 %indvars.iv314 to i32
  %i.acx = shl i32 %indvars.iv314.tr, 1
  %i.acy = ashr i32 %i.acx, %i.yi
  %i.acz = call i32 @llvm.smin.i32(i32 %i.acy, i32 31)
  %i.ada = lshr i32 32, %i.acz
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph252.split
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph252.split, %.thread213, %bb.ar
  %.0190 = phi i32 [ %i.ada, %.thread213 ], [ 0, %.lr.ph252.split ], [ 0, %bb.ar ]
  %.0 = phi i32 [ 0, %.thread213 ], [ 0, %.lr.ph252.split ], [ %i.zr, %bb.ar ]
  %i.adb = sub nsw i32 %i.acm, %i.aco
  %i.adc = mul nsw i32 %i.adb, %.0190
  %i.add = sub nsw i32 %i.acu, %i.acw
  %i.ade = mul nsw i32 %i.add, %.0
  %i.adf = add nsw i32 %i.ade, 32
  %i.adg = add nsw i32 %i.adf, %i.adc
  %i.adh = ashr i32 %i.adg, 6
  %i.adi = add nsw i32 %i.adh, %i.acr
  %i.adj = call i32 @llvm.smax.i32(i32 %i.adi, i32 0)
  %i.adk = call i32 @llvm.umin.i32(i32 %i.adj, i32 4095)
  %i.adl = trunc nuw nsw i32 %i.adk to i16
  store i16 %i.adl, ptr %i.acp, align 2, !tbaa !45
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge253, label %.lr.ph252.split, !llvm.loop !713

.loopexit:                                        ; preds = %._crit_edge253, %bb.aq, %.preheader.lr.ph, %.thread211, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %.not.i42 = icmp ult i32 %3, 65536              ; 2 uses
  %i.a = lshr i32 %3, 16
  %spec.select.i43 = select i1 %.not.i42, i32 %3, i32 %i.a ; 3 uses
  %spec.select12.i44 = select i1 %.not.i42, i32 0, i32 16 ; 2 uses
  %.not11.i45 = icmp samesign ult i32 %spec.select.i43, 256 ; 2 uses
  %i.b = lshr i32 %spec.select.i43, 8
  %i.c = or disjoint i32 %spec.select12.i44, 8
  %.110.i46 = select i1 %.not11.i45, i32 %spec.select.i43, i32 %i.b
  %.1.i47 = select i1 %.not11.i45, i32 %spec.select12.i44, i32 %i.c
  %i.d = zext nneg i32 %.110.i46 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !62
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %.1.i47, %i.g            ; 3 uses
  %.not.i = icmp ult i32 %4, 65536                ; 2 uses
  %i.i = lshr i32 %4, 16
  %spec.select.i = select i1 %.not.i, i32 %4, i32 %i.i ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i, 8
  %i.k = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.j
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i, %i.o              ; 3 uses
  %i.q = mul nsw i32 %4, %3                       ; 2 uses
  %i.r = add nuw nsw i32 %i.h, 1
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 2 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i32 %3, 0
  %i.v = zext nneg i32 %4 to i64                  ; 4 uses
  %i.w = getelementptr [2 x i8], ptr %2, i64 %i.v ; 4 uses
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %1, i64 %i.x ; 3 uses
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %i.z = add nuw i64 %i.v, 9223372036854775807
  %i.aa = mul i64 %5, %i.z
  %i.ab = shl nuw nsw i64 %wide.trip.count, 1
  %i.ac = add i64 %i.aa, %wide.trip.count
  %i.ad = shl i64 %i.ac, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.ad  ; 4 uses
  %i.ae = shl nuw nsw i64 %i.x, 1
  %i.af = getelementptr i8, ptr %1, i64 %i.ae
  %scevgep58 = getelementptr i8, ptr %i.af, i64 2
  %scevgep59 = getelementptr i8, ptr %1, i64 %i.ab
  %i.ag = shl nuw nsw i64 %i.v, 1
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %scevgep60 = getelementptr i8, ptr %i.ah, i64 2
  %min.iters.check = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep58
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %0, %scevgep59
  %bound162 = icmp ult ptr %1, %scevgep
  %found.conflict63 = and i1 %bound061, %bound162
  %.mask = and i64 %5, 4611686018427387904
  %stride.check64 = icmp ne i64 %.mask, 0
  %i.ai = or i1 %found.conflict63, %stride.check64
  %conflict.rdx = or i1 %found.conflict, %i.ai
  %bound065 = icmp ult ptr %0, %i.w
  %bound166 = icmp ult ptr %2, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx69 = or i1 %found.conflict67, %conflict.rdx
  %bound070 = icmp ult ptr %0, %scevgep60
  %bound171 = icmp ult ptr %i.w, %scevgep
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx74 = or i1 %found.conflict72, %conflict.rdx69
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert83 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat84 = shufflevector <8 x i32> %broadcast.splatinsert83, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert85 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat86 = shufflevector <8 x i32> %broadcast.splatinsert85, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert87 = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat88 = shufflevector <8 x i32> %broadcast.splatinsert87, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <8 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat90 = shufflevector <8 x i32> %broadcast.splatinsert89, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat92 = shufflevector <8 x i32> %broadcast.splatinsert91, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 4 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.ak = xor i32 %i.aj, -1
  %i.al = add nsw i32 %4, %i.ak                   ; 2 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv52 ; 2 uses
  %i.an = mul nsw i64 %5, %indvars.iv52
  %i.ao = getelementptr [2 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.next53 to i32 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx74
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aq = load i16, ptr %i.w, align 2, !tbaa !45, !alias.scope !714
  %broadcast.splatinsert75 = insertelement <8 x i16> poison, i16 %i.aq, i64 0
  %broadcast.splat76 = shufflevector <8 x i16> %broadcast.splatinsert75, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ar = zext <8 x i16> %broadcast.splat76 to <8 x i32>
  %i.as = mul nuw nsw <8 x i32> %broadcast.splat, %i.ar
  %i.at = load i16, ptr %i.am, align 2, !tbaa !45, !alias.scope !717
  %broadcast.splatinsert77 = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %broadcast.splat78 = shufflevector <8 x i16> %broadcast.splatinsert77, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.au = zext <8 x i16> %broadcast.splat78 to <8 x i32>
  %i.av = load i16, ptr %i.y, align 2, !tbaa !45, !alias.scope !719
  %broadcast.splatinsert79 = insertelement <8 x i16> poison, i16 %i.av, i64 0
  %broadcast.splat80 = shufflevector <8 x i16> %broadcast.splatinsert79, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aw = zext <8 x i16> %broadcast.splat80 to <8 x i32>
  %broadcast.splatinsert81 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind93 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next94, %vector.body ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ax, align 2, !tbaa !45, !alias.scope !721
  %i.ay = zext <8 x i16> %wide.load to <8 x i32>
  %i.az = mul nsw <8 x i32> %broadcast.splat82, %i.ay
  %i.ba = add nsw <8 x i32> %i.as, %i.az
  %i.bb = shl <8 x i32> %i.ba, %broadcast.splat84
  %i.bc = xor <8 x i32> %vec.ind93, splat (i32 -1)
  %i.bd = add nsw <8 x i32> %broadcast.splat86, %i.bc
  %i.be = mul nsw <8 x i32> %i.bd, %i.au
  %i.bf = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.bg = add <8 x i32> %i.bf, splat (i32 1)
  %i.bh = mul nuw nsw <8 x i32> %i.bg, %i.aw
  %i.bi = add nsw <8 x i32> %i.bh, %i.be
  %i.bj = shl <8 x i32> %i.bi, %broadcast.splat88
  %i.bk = add <8 x i32> %i.bb, %broadcast.splat90
  %i.bl = add <8 x i32> %i.bk, %i.bj
  %i.bm = ashr <8 x i32> %i.bl, %broadcast.splat92
  %i.bn = trunc <8 x i32> %i.bm to <8 x i16>
  %i.bo = getelementptr [2 x i8], ptr %i.ao, i64 %index
  store <8 x i16> %i.bn, ptr %i.bo, align 2, !tbaa !45, !alias.scope !723, !noalias !725
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next94 = add <8 x i32> %vec.ind93, splat (i32 8)
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !726

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !45
  %i.bs = zext i16 %i.br to i32
end_hunk_0
begin_hunk_1_@pred_angular_v_12:bb.a
  %broadcast.splat191 = shufflevector <8 x i32> %broadcast.splatinsert190, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert192 = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat193 = shufflevector <8 x i32> %broadcast.splatinsert192, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph188
  %index195 = phi i64 [ 0, %vector.ph188 ], [ %index.next198, %vector.body194 ] ; 3 uses
  %i.cf = getelementptr [2 x i8], ptr %invariant.gep120, i64 %index195 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %wide.load196 = load <8 x i16>, ptr %i.cg, align 2, !tbaa !45, !alias.scope !768
  %i.ch = zext <8 x i16> %wide.load196 to <8 x i32>
  %i.ci = mul nuw nsw <8 x i32> %broadcast.splat191, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %wide.load197 = load <8 x i16>, ptr %i.cj, align 2, !tbaa !45, !alias.scope !768
  %i.ck = zext <8 x i16> %wide.load197 to <8 x i32>
  %i.cl = mul nuw nsw <8 x i32> %broadcast.splat193, %i.ck
  %i.cm = add nuw nsw <8 x i32> %i.ci, splat (i32 16)
  %i.cn = add nuw nsw <8 x i32> %i.cm, %i.cl
  %i.co = lshr <8 x i32> %i.cn, splat (i32 5)
  %i.cp = trunc <8 x i32> %i.co to <8 x i16>
  %i.cq = getelementptr [2 x i8], ptr %i.cc, i64 %index195
  store <8 x i16> %i.cp, ptr %i.cq, align 2, !tbaa !45, !alias.scope !771, !noalias !768
  %index.next198 = add nuw i64 %index195, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.cr, label %middle.block199, label %vector.body194, !llvm.loop !773

middle.block199:                                  ; preds = %vector.body194
  br i1 %cmp.n200, label %.loopexit113, label %scalar.ph186.preheader

scalar.ph186.preheader:                           ; preds = %vector.memcheck176, %.lr.ph119, %middle.block199
  %indvars.iv139.ph = phi i64 [ 0, %vector.memcheck176 ], [ 0, %.lr.ph119 ], [ %n.vec189, %middle.block199 ] ; 5 uses
  br i1 %lcmp.mod225.not, label %scalar.ph186.prol.loopexit, label %scalar.ph186.prol

scalar.ph186.prol:                                ; preds = %scalar.ph186.preheader
  %gep121.prol = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv139.ph ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %gep121.prol, i64 2
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !45
  %i.cu = zext i16 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.ca, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %gep121.prol, i64 4
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !45
  %i.cy = zext i16 %i.cx to i32
  %i.cz = mul nuw nsw i32 %i.ap, %i.cy
  %i.da = add nuw nsw i32 %i.cv, 16
  %i.db = add nuw nsw i32 %i.da, %i.cz
  %i.dc = lshr i32 %i.db, 5
  %i.dd = trunc i32 %i.dc to i16
  %i.de = getelementptr [2 x i8], ptr %i.cc, i64 %indvars.iv139.ph
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !45
  %indvars.iv.next140.prol = or disjoint i64 %indvars.iv139.ph, 1
  br label %scalar.ph186.prol.loopexit

scalar.ph186.prol.loopexit:                       ; preds = %scalar.ph186.prol, %scalar.ph186.preheader
  %indvars.iv139.unr = phi i64 [ %indvars.iv139.ph, %scalar.ph186.preheader ], [ %indvars.iv.next140.prol, %scalar.ph186.prol ]
  %i.df = icmp eq i64 %indvars.iv139.ph, %i.al
  br i1 %i.df, label %.loopexit113, label %scalar.ph186

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %.lr.ph123, label %.loopexit113

.lr.ph123:                                        ; preds = %bb.f
  %i.dg = zext nneg i32 %i.ap to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dg
  %i.di = sext i32 %i.ao to i64                   ; 2 uses
  %invariant.gep124 = getelementptr [2 x i8], ptr %i.e, i64 %i.di ; 3 uses
  %i.dj = load <4 x i8>, ptr %i.dh, align 4, !tbaa !62
  %i.dk = sext <4 x i8> %i.dj to <4 x i32>        ; 5 uses
  %i.dl = mul nsw i64 %5, %indvars.iv154
  %i.dm = getelementptr [2 x i8], ptr %0, i64 %i.dl ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123
  %i.dn = shl nsw i64 %i.di, 1
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.dn
  %bound0 = icmp ult ptr %0, %scevgep166
  %bound1 = icmp ult ptr %invariant.gep124, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.do = or i1 %found.conflict, %stride.check
  br i1 %i.do, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat168 = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat170 = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat172 = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = getelementptr [2 x i8], ptr %invariant.gep124, i64 %index ; 4 uses
  %wide.load = load <8 x i16>, ptr %i.dp, align 2, !tbaa !45, !alias.scope !774
  %i.dq = zext <8 x i16> %wide.load to <8 x i32>
  %i.dr = mul nsw <8 x i32> %broadcast.splat, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %wide.load173 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !45, !alias.scope !774
  %i.dt = zext <8 x i16> %wide.load173 to <8 x i32>
  %i.du = mul nsw <8 x i32> %broadcast.splat168, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %wide.load174 = load <8 x i16>, ptr %i.dv, align 2, !tbaa !45, !alias.scope !774
  %i.dw = zext <8 x i16> %wide.load174 to <8 x i32>
  %i.dx = mul nsw <8 x i32> %broadcast.splat170, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 6
  %wide.load175 = load <8 x i16>, ptr %i.dy, align 2, !tbaa !45, !alias.scope !774
  %i.dz = zext <8 x i16> %wide.load175 to <8 x i32>
  %i.ea = mul nsw <8 x i32> %broadcast.splat172, %i.dz
  %i.eb = add nsw <8 x i32> %i.dr, splat (i32 32)
  %i.ec = add nsw <8 x i32> %i.eb, %i.du
  %i.ed = add nsw <8 x i32> %i.ec, %i.dx
  %i.ee = add nsw <8 x i32> %i.ed, %i.ea
  %i.ef = ashr <8 x i32> %i.ee, splat (i32 6)
  %i.eg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ef, <8 x i32> zeroinitializer)
  %i.eh = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.eg, <8 x i32> splat (i32 4095))
  %i.ei = trunc nuw nsw <8 x i32> %i.eh to <8 x i16>
  %i.ej = getelementptr [2 x i8], ptr %i.dm, i64 %index
  store <8 x i16> %i.ei, ptr %i.ej, align 2, !tbaa !45, !alias.scope !777, !noalias !774
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !779

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit113, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph123, %middle.block
  %indvars.iv144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph123 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %scalar.ph ], [ %indvars.iv144.ph, %scalar.ph.preheader ] ; 3 uses
  %gep125 = getelementptr [2 x i8], ptr %invariant.gep124, i64 %indvars.iv144
  %i.el = load <4 x i16>, ptr %gep125, align 2, !tbaa !45
  %i.em = zext <4 x i16> %i.el to <4 x i32>
  %i.en = mul nsw <4 x i32> %i.dk, %i.em
  %i.eo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.en)
  %op.rdx = add i32 %i.eo, 32
  %i.ep = ashr i32 %op.rdx, 6
  %i.eq = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 0)
  %i.er = tail call i32 @llvm.umin.i32(i32 %i.eq, i32 4095)
  %i.es = trunc nuw nsw i32 %i.er to i16
  %i.et = getelementptr [2 x i8], ptr %i.dm, i64 %indvars.iv144
  store i16 %i.es, ptr %i.et, align 2, !tbaa !45
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %.loopexit113, label %scalar.ph, !llvm.loop !780

scalar.ph186:                                     ; preds = %scalar.ph186.prol.loopexit, %scalar.ph186
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.1, %scalar.ph186 ], [ %indvars.iv139.unr, %scalar.ph186.prol.loopexit ] ; 4 uses
  %gep121 = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv139 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %gep121, i64 2
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !45
  %i.ew = zext i16 %i.ev to i32
  %i.ex = mul nuw nsw i32 %i.ca, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %gep121, i64 4
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !45
  %i.fa = zext i16 %i.ez to i32
  %i.fb = mul nuw nsw i32 %i.ap, %i.fa
  %i.fc = add nuw nsw i32 %i.ex, 16
  %i.fd = add nuw nsw i32 %i.fc, %i.fb
  %i.fe = lshr i32 %i.fd, 5
  %i.ff = trunc i32 %i.fe to i16
  %i.fg = getelementptr [2 x i8], ptr %i.cc, i64 %indvars.iv139
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !45
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %gep121.1 = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv.next140 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %gep121.1, i64 2
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !45
  %i.fj = zext i16 %i.fi to i32
  %i.fk = mul nuw nsw i32 %i.ca, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %gep121.1, i64 4
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !45
  %i.fn = zext i16 %i.fm to i32
  %i.fo = mul nuw nsw i32 %i.ap, %i.fn
  %i.fp = add nuw nsw i32 %i.fk, 16
  %i.fq = add nuw nsw i32 %i.fp, %i.fo
  %i.fr = lshr i32 %i.fq, 5
  %i.fs = trunc i32 %i.fr to i16
  %i.ft = getelementptr [2 x i8], ptr %i.cc, i64 %indvars.iv.next140
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !45
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %exitcond143.not.1 = icmp eq i64 %indvars.iv.next140.1, %wide.trip.count142
  br i1 %exitcond143.not.1, label %.loopexit113, label %scalar.ph186, !llvm.loop !781

.loopexit113:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %scalar.ph186.prol.loopexit, %scalar.ph186, %scalar.ph, %middle.block213, %vec.epilog.middle.block, %middle.block199, %middle.block, %.preheader115, %.preheader, %bb.f
  br i1 %brmerge, label %.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.loopexit113
  %i.fu = mul nsw i64 %5, %indvars.iv154
  %i.fv = getelementptr [2 x i8], ptr %0, i64 %i.fu
  %i.fw = trunc nuw nsw i64 %indvars.iv154 to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph128, %bb.g
  %indvars.iv149 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next150, %bb.g ] ; 3 uses
  %.099126 = phi i32 [ %i.o, %.lr.ph128 ], [ %i.gr, %bb.g ] ; 2 uses
  %i.fx = ashr i32 %.099126, 9
  %i.fy = add nsw i32 %i.fx, %i.fw
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [2 x i8], ptr %2, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !45
  %i.gc = getelementptr [2 x i8], ptr %i.fv, i64 %indvars.iv149 ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !45
  %indvars.iv149.tr = trunc i64 %indvars.iv149 to i32
  %i.ge = shl i32 %indvars.iv149.tr, 1
  %i.gf = ashr i32 %i.ge, %.0106
  %i.gg = lshr i32 32, %i.gf
  %i.gh = zext i16 %i.gd to i32                   ; 2 uses
  %i.gi = zext i16 %i.gb to i32
  %i.gj = sub nsw i32 %i.gi, %i.gh
  %i.gk = mul nsw i32 %i.gj, %i.gg
  %i.gl = add nsw i32 %i.gk, 32
  %i.gm = ashr i32 %i.gl, 6
  %i.gn = add nsw i32 %i.gm, %i.gh
  %i.go = tail call i32 @llvm.smax.i32(i32 %i.gn, i32 0)
  %i.gp = tail call i32 @llvm.umin.i32(i32 %i.go, i32 4095)
  %i.gq = trunc nuw nsw i32 %i.gp to i16
  store i16 %i.gq, ptr %i.gc, align 2, !tbaa !45
  %i.gr = add nsw i32 %.099126, %.0105
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.loopexit, label %bb.g, !llvm.loop !782

.loopexit:                                        ; preds = %bb.g, %.loopexit113
  %i.gs = add nsw i32 %.0100132, %i.f
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %._crit_edge, label %bb.d, !llvm.loop !783
}

; Function Attrs: nounwind uwtable
define internal void @pred_angular_h_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #5 {
bb.a:
  %i.a = add nsw i32 %8, 1
  %narrow = xor i32 %8, -1
  %i.b = sext i32 %narrow to i64
  %i.c = getelementptr inbounds [2 x i8], ptr %2, i64 %i.b ; 3 uses
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %i.d = tail call i32 @ff_vvc_intra_pred_angle_derive(i32 noundef %7) #14 ; 5 uses
  %.not79 = icmp ne i32 %10, 0                    ; 4 uses
  br i1 %.not79, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @ff_vvc_intra_inv_angle_derive(i32 noundef %i.d) #14 ; 2 uses
  %i.f = add nsw i32 %i.e, 256
  %i.g = tail call i32 @ff_vvc_nscale_derive(i32 noundef %3, i32 noundef %4, i32 noundef %7) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %.078 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %.075 = phi i32 [ %i.f, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.c
  %i.j = mul nsw i32 %i.d, %i.a                   ; 3 uses
  %i.k = icmp sgt i32 %3, 0
  %i.l = icmp ne i32 %9, 0
  %or.cond = and i1 %.not, %i.l                   ; 3 uses
  %i.m = sext i32 %9 to i64
  %i.n = getelementptr inbounds [128 x i8], ptr @ff_vvc_intra_luma_filter, i64 %i.m ; 2 uses
  br i1 %i.k, label %.lr.ph92.split.us, label %._crit_edge93

.lr.ph92.split.us:                                ; preds = %.lr.ph92
  %i.o = shl i32 3, %.078
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %wide.trip.count125 = zext nneg i32 %4 to i64   ; 2 uses
  %wide.trip.count115 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %.not, label %.lr.ph92.split.us.split.us.preheader, label %.lr.ph92.split.us.split

.lr.ph92.split.us.split.us.preheader:             ; preds = %.lr.ph92.split.us
  %wide.trip.count120 = zext nneg i32 %3 to i64
  br label %.lr.ph92.split.us.split.us

.lr.ph92.split.us.split.us:                       ; preds = %.lr.ph92.split.us.split.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv122 = phi i64 [ 0, %.lr.ph92.split.us.split.us.preheader ], [ %indvars.iv.next123, %._crit_edge.split.us.us.us ] ; 7 uses
  %.17689.us.us = phi i32 [ %.075, %.lr.ph92.split.us.split.us.preheader ], [ %spec.select.us.us, %._crit_edge.split.us.us.us ] ; 2 uses
  br i1 %.not79, label %.lr.ph.us.us, label %.lr.ph.us.us.thread

.lr.ph.us.us.thread:                              ; preds = %.lr.ph92.split.us.split.us
  %i.q = mul nsw i64 %5, %indvars.iv122
  br label %.lr.ph.split.us.us.us.split.preheader

.lr.ph.us.us:                                     ; preds = %.lr.ph92.split.us.split.us
  %indvars.iv122.tr = trunc i64 %indvars.iv122 to i32
  %i.r = shl i32 %indvars.iv122.tr, 1
  %i.s = lshr i32 %i.r, %.078
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.s, i32 31)
  %i.u = lshr i32 32, %i.t
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv122
  %i.w = icmp slt i64 %indvars.iv122, %i.p
  %i.x = mul nsw i64 %5, %indvars.iv122           ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %0, i64 %i.x
  br i1 %i.w, label %.lr.ph.split.us.us.us.split.us.preheader, label %.lr.ph.split.us.us.us.split.preheader

.lr.ph.split.us.us.us.split.preheader:            ; preds = %.lr.ph.us.us.thread, %.lr.ph.us.us
  %i.z = phi i64 [ %i.q, %.lr.ph.us.us.thread ], [ %i.x, %.lr.ph.us.us ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv122
  %i.ab = getelementptr [2 x i8], ptr %0, i64 %i.z
  br label %.lr.ph.split.us.us.us.split

.lr.ph.split.us.us.us.split.us.preheader:         ; preds = %.lr.ph.us.us
  %i.ac = ashr i32 %.17689.us.us, 9
  %i.ad = sext i32 %i.ac to i64
  %invariant.gep132 = getelementptr [2 x i8], ptr %1, i64 %i.ad
  br label %.lr.ph.split.us.us.us.split.us

.lr.ph.split.us.us.us.split.us:                   ; preds = %.lr.ph.split.us.us.us.split.us.preheader, %bb.f
  %indvars.iv117 = phi i64 [ 0, %.lr.ph.split.us.us.us.split.us.preheader ], [ %indvars.iv.next118, %bb.f ] ; 3 uses
  %.07387.us.us.us.us = phi i32 [ %i.j, %.lr.ph.split.us.us.us.split.us.preheader ], [ %i.cg, %bb.f ] ; 3 uses
  %i.ae = ashr i32 %.07387.us.us.us.us, 5
  %i.af = add nsw i32 %i.ae, %8
  %i.ag = and i32 %.07387.us.us.us.us, 31         ; 2 uses
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ah ; 5 uses
  %.not80.us.us.us.us = icmp ne i32 %i.ag, 0
  %or.cond81.us.us.us.us = or i1 %or.cond, %.not80.us.us.us.us
  br i1 %or.cond81.us.us.us.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.us.us.split.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !45
  %i.al = zext i16 %i.ak to i32
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us.us.us.split.us
  %i.am = zext nneg i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.am ; 4 uses
  %i.ao = load i16, ptr %i.ai, align 2, !tbaa !45
  %i.ap = zext i16 %i.ao to i32
  %i.aq = load i8, ptr %i.an, align 4, !tbaa !62
  %i.ar = sext i8 %i.aq to i32
  %i.as = mul nsw i32 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !45
  %i.av = zext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = sext i8 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !45
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !62
  %i.bf = sext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.bf, %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !45
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !62
  %i.bm = sext i8 %i.bl to i32
  %i.bn = mul nsw i32 %i.bm, %i.bj
  %i.bo = add nsw i32 %i.as, 32
  %i.bp = add nsw i32 %i.bo, %i.az
  %i.bq = add nsw i32 %i.bp, %i.bg
  %i.br = add nsw i32 %i.bq, %i.bn
  %i.bs = ashr i32 %i.br, 6
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 4095)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.us.us.us.us = phi i32 [ %i.al, %bb.d ], [ %i.bu, %bb.e ] ; 2 uses
  %gep133 = getelementptr [2 x i8], ptr %invariant.gep132, i64 %indvars.iv117
  %i.bv = load i16, ptr %gep133, align 2, !tbaa !45
  %i.bw = zext i16 %i.bv to i32
  %i.bx = sub nsw i32 %i.bw, %.0.us.us.us.us
  %i.by = mul nsw i32 %i.bx, %i.u
  %i.bz = add nsw i32 %i.by, 32
  %i.ca = ashr i32 %i.bz, 6
  %i.cb = add nsw i32 %i.ca, %.0.us.us.us.us
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 4095)
  %i.ce = trunc nuw nsw i32 %i.cd to i16
  %i.cf = getelementptr [2 x i8], ptr %i.y, i64 %indvars.iv117
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !45
  %i.cg = add nsw i32 %.07387.us.us.us.us, %i.d
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge.split.us.us.us, label %.lr.ph.split.us.us.us.split.us, !llvm.loop !784

.lr.ph.split.us.us.us.split:                      ; preds = %.lr.ph.split.us.us.us.split.preheader, %bb.i
  %indvars.iv112 = phi i64 [ 0, %.lr.ph.split.us.us.us.split.preheader ], [ %indvars.iv.next113, %bb.i ] ; 2 uses
  %.07387.us.us.us = phi i32 [ %i.j, %.lr.ph.split.us.us.us.split.preheader ], [ %i.dz, %bb.i ] ; 3 uses
  %i.ch = ashr i32 %.07387.us.us.us, 5
  %i.ci = add nsw i32 %i.ch, %8
  %i.cj = and i32 %.07387.us.us.us, 31            ; 2 uses
  %i.ck = sext i32 %i.ci to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.ck ; 5 uses
  %.not80.us.us.us = icmp ne i32 %i.cj, 0
  %or.cond81.us.us.us = or i1 %or.cond, %.not80.us.us.us
  br i1 %or.cond81.us.us.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.us.us.split
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !45
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.us.us.split
  %i.co = zext nneg i32 %i.cj to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.co ; 4 uses
  %i.cq = load i16, ptr %i.cl, align 2, !tbaa !45
  %i.cr = zext i16 %i.cq to i32
  %i.cs = load i8, ptr %i.cp, align 4, !tbaa !62
  %i.ct = sext i8 %i.cs to i32
  %i.cu = mul nsw i32 %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !45
  %i.cx = zext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !62
  %i.da = sext i8 %i.cz to i32
  %i.db = mul nsw i32 %i.da, %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !45
  %i.de = zext i16 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !62
  %i.dh = sext i8 %i.dg to i32
  %i.di = mul nsw i32 %i.dh, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !45
  %i.dl = zext i16 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !62
  %i.do = sext i8 %i.dn to i32
  %i.dp = mul nsw i32 %i.do, %i.dl
  %i.dq = add nsw i32 %i.cu, 32
  %i.dr = add nsw i32 %i.dq, %i.db
  %i.ds = add nsw i32 %i.dr, %i.di
  %i.dt = add nsw i32 %i.ds, %i.dp
  %i.du = ashr i32 %i.dt, 6
  %i.dv = tail call i32 @llvm.smax.i32(i32 %i.du, i32 0)
  %i.dw = tail call i32 @llvm.umin.i32(i32 %i.dv, i32 4095)
  %i.dx = trunc nuw nsw i32 %i.dw to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.us.us.us = phi i16 [ %i.cn, %bb.g ], [ %i.dx, %bb.h ]
  %i.dy = getelementptr [2 x i8], ptr %i.ab, i64 %indvars.iv112
  store i16 %.0.us.us.us, ptr %i.dy, align 2, !tbaa !45
  %i.dz = add nsw i32 %.07387.us.us.us, %i.d
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %._crit_edge.split.us.us.us, label %.lr.ph.split.us.us.us.split, !llvm.loop !784

._crit_edge.split.us.us.us:                       ; preds = %bb.i, %bb.f
  %spec.select.us.us = add nsw i32 %.17689.us.us, %i.h
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge93, label %.lr.ph92.split.us.split.us, !llvm.loop !785

.lr.ph92.split.us.split:                          ; preds = %.lr.ph92.split.us, %._crit_edge.split.us101
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %._crit_edge.split.us101 ], [ 0, %.lr.ph92.split.us ] ; 5 uses
  %.17689.us = phi i32 [ %spec.select.us, %._crit_edge.split.us101 ], [ %.075, %.lr.ph92.split.us ] ; 2 uses
  br i1 %.not79, label %bb.j, label %.lr.ph.us

bb.j:                                             ; preds = %.lr.ph92.split.us.split
  %indvars.iv107.tr = trunc i64 %indvars.iv107 to i32
  %i.ea = shl i32 %indvars.iv107.tr, 1
  %i.eb = lshr i32 %i.ea, %.078
  %i.ec = tail call i32 @llvm.umin.i32(i32 %i.eb, i32 31)
  %i.ed = lshr i32 32, %i.ec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.j, %.lr.ph92.split.us.split
  %.072.us = phi i32 [ %i.ed, %bb.j ], [ undef, %.lr.ph92.split.us.split ]
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv107
  %i.ef = icmp slt i64 %indvars.iv107, %i.p
  %or.cond83.us = select i1 %.not79, i1 %i.ef, i1 false
  %i.eg = ashr i32 %.17689.us, 9
  %i.eh = mul nsw i64 %5, %indvars.iv107
  %i.ei = getelementptr [2 x i8], ptr %0, i64 %i.eh
  %i.ej = sext i32 %i.eg to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.ej
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.us, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.07387.us95 = phi i32 [ %i.j, %.lr.ph.us ], [ %i.fp, %bb.p ] ; 3 uses
  %i.ek = ashr i32 %.07387.us95, 5
  %i.el = add nsw i32 %i.ek, %8
  %i.em = and i32 %.07387.us95, 31                ; 3 uses
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.en ; 3 uses
  %.not80.us96 = icmp ne i32 %i.em, 0
  %or.cond81.us97 = or i1 %or.cond, %.not80.us96
  br i1 %or.cond81.us97, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !45
  %i.er = zext i16 %i.eq to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.es = sub nuw nsw i32 32, %i.em
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !45
  %i.ev = zext i16 %i.eu to i32
  %i.ew = mul nuw nsw i32 %i.es, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !45
  %i.ez = zext i16 %i.ey to i32
  %i.fa = mul nuw nsw i32 %i.em, %i.ez
  %i.fb = add nuw nsw i32 %i.ew, 16
  %i.fc = add nuw nsw i32 %i.fb, %i.fa
  %i.fd = lshr i32 %i.fc, 5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.us98 = phi i32 [ %i.fd, %bb.m ], [ %i.er, %bb.l ] ; 3 uses
  br i1 %or.cond83.us, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fe = load i16, ptr %gep, align 2, !tbaa !45
  %i.ff = zext i16 %i.fe to i32
  %i.fg = sub nsw i32 %i.ff, %.0.us98
  %i.fh = mul nsw i32 %i.fg, %.072.us
  %i.fi = add nsw i32 %i.fh, 32
  %i.fj = ashr i32 %i.fi, 6
  %i.fk = add nsw i32 %i.fj, %.0.us98
  %i.fl = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 0)
  %i.fm = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 4095)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.us100 = phi i32 [ %i.fm, %bb.o ], [ %.0.us98, %bb.n ]
  %i.fn = trunc i32 %.1.us100 to i16
  %i.fo = getelementptr [2 x i8], ptr %i.ei, i64 %indvars.iv
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !45
  %i.fp = add nsw i32 %.07387.us95, %i.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count115
  br i1 %exitcond.not, label %._crit_edge.split.us101, label %bb.k, !llvm.loop !784

._crit_edge.split.us101:                          ; preds = %bb.p
  %spec.select.us = add nsw i32 %.17689.us, %i.h
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count125
  br i1 %exitcond111.not, label %._crit_edge93, label %.lr.ph92.split.us.split, !llvm.loop !785

._crit_edge93:                                    ; preds = %._crit_edge.split.us101, %._crit_edge.split.us.us.us, %.lr.ph92, %bb.c
  ret void
}

declare i32 @ff_vvc_get_top_available(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare i32 @ff_vvc_get_left_available(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

declare i32 @ff_vvc_wide_angle_mode_mapping(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare i32 @ff_vvc_need_pdpc(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #8

declare i32 @ff_vvc_ref_filter_flag_derive(i32 noundef) local_unnamed_addr #8

declare i32 @ff_vvc_intra_pred_angle_derive(i32 noundef) local_unnamed_addr #8

declare i32 @ff_vvc_intra_inv_angle_derive(i32 noundef) local_unnamed_addr #8

declare i32 @ff_vvc_get_mip_size_id(i32 noundef, i32 noundef) local_unnamed_addr #8

declare hidden ptr @ff_vvc_get_mip_matrix(i32 noundef, i32 noundef) local_unnamed_addr #8

declare i32 @ff_vvc_nscale_derive(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add_residual_12(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge23.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  %i.c = shl i64 %4, 31
  %i.d = ashr i64 %i.c, 32
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge23.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.e = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01522 = phi i32 [ %i.w, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.01621 = phi ptr [ %i.v, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.01720 = phi ptr [ %.lcssa, %._crit_edge ], [ %1, %.preheader.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.f = getelementptr i8, ptr %.01720, i64 %i.e  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.01720, i64 %i.g ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.01621, i64 %index ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.h, align 2, !tbaa !45
  %wide.load28 = load <4 x i16>, ptr %i.i, align 2, !tbaa !45
  %i.j = zext <4 x i16> %wide.load to <4 x i32>
  %i.k = zext <4 x i16> %wide.load28 to <4 x i32>
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load29 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !555
  %wide.load30 = load <4 x i32>, ptr %i.l, align 4, !tbaa !555
  %i.m = add nsw <4 x i32> %wide.load29, %i.j
  %i.n = add nsw <4 x i32> %wide.load30, %i.k
  %i.o = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.m, <4 x i32> zeroinitializer)
  %i.p = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> zeroinitializer)
  %i.q = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.o, <4 x i32> splat (i32 4095))
  %i.r = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.p, <4 x i32> splat (i32 4095))
  %i.s = trunc nuw nsw <4 x i32> %i.q to <4 x i16>
  %i.t = trunc nuw nsw <4 x i32> %i.r to <4 x i16>
  store <4 x i16> %i.s, ptr %i.h, align 2, !tbaa !45
  store <4 x i16> %i.t, ptr %i.i, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !786

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %.118.ph = phi ptr [ %.01720, %.preheader ], [ %i.f, %middle.block ]
  br label %scalar.ph

._crit_edge23.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.f, %middle.block ], [ %i.af, %scalar.ph ]
  %i.v = getelementptr inbounds [2 x i8], ptr %.01621, i64 %i.d
  %i.w = add nuw nsw i32 %.01522, 1               ; 2 uses
  %exitcond25.not = icmp eq i32 %i.w, %3
  br i1 %exitcond25.not, label %._crit_edge23.split, label %.preheader, !llvm.loop !787

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.118 = phi ptr [ %i.af, %scalar.ph ], [ %.118.ph, %scalar.ph.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.01621, i64 %indvars.iv ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !45
  %i.z = zext i16 %i.y to i32
  %i.aa = load i32, ptr %.118, align 4, !tbaa !555
  %i.ab = add nsw i32 %i.aa, %i.z
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0)
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 4095)
  %i.ae = trunc nuw nsw i32 %i.ad to i16
  store i16 %i.ae, ptr %i.x, align 2, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %.118, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_1
begin_hunk_2_@intra_pred_10:bb.a
  %indvars.iv.next296 = add nsw i64 %indvars.iv295, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next296 to i32
  %exitcond298.not = icmp eq i32 %i.uy, %lftr.wideiv
  br i1 %exitcond298.not, label %prepare_intra_edge_params_10.exit, label %vec.epilog.scalar.ph563, !llvm.loop !1371

prepare_intra_edge_params_10.exit:                ; preds = %vec.epilog.scalar.ph563, %.lr.ph244.prol.loopexit, %.lr.ph244, %vec.epilog.scalar.ph592, %.lr.ph250.prol.loopexit, %.lr.ph250, %middle.block558, %vec.epilog.middle.block573, %middle.block587, %vec.epilog.middle.block602, %.preheader219, %bb.af, %.preheader216, %bb.ad, %ref_filter_10.exit, %bb.aa
  %i.wr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %.0252.i, ptr %i.wr, align 8, !tbaa !680
  store ptr %.0251.i, ptr %6, align 8, !tbaa !681
  br i1 %i.az, label %.thread211, label %bb.ag

.thread211:                                       ; preds = %prepare_intra_edge_params_10.exit
  %i.ws = lshr i8 %i.as, 1
  %i.wt = and i8 %i.ws, 1
  %i.wu = zext nneg i8 %i.wt to i32
  %i.wv = lshr i8 %i.as, 2
  %i.ww = and i8 %i.wv, 15
  %i.wx = zext nneg i8 %i.ww to i32
  %i.wy = getelementptr inbounds nuw i8, ptr %i.b, i64 21256
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !682
  call void %i.wz(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj, i32 noundef %i.wx, i32 noundef %i.wu) #14
  br label %.loopexit

bb.ag:                                            ; preds = %prepare_intra_edge_params_10.exit
  switch i32 %i.al, label %bb.al [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 50, label %bb.aj
    i32 18, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.xa = getelementptr inbounds nuw i8, ptr %i.b, i64 21248
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !683
  call void %i.xb(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj) #14
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ag
  %i.xc = getelementptr inbounds nuw i8, ptr %i.b, i64 21264
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !684
  call void %i.xd(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj) #14
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ag
  %i.xe = getelementptr inbounds nuw i8, ptr %i.b, i64 21272
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !685
  call void %i.xf(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj) #14
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ag
  %i.xg = getelementptr inbounds nuw i8, ptr %i.b, i64 21280
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !686
  call void %i.xh(ptr noundef %i.bn, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj) #14
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag
  %i.xi = icmp sgt i32 %i.al, 33
  %i.xj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !670 ; 2 uses
  br i1 %i.xi, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.xl = getelementptr inbounds nuw i8, ptr %i.b, i64 21288
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !687
  call void %i.xm(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj, i32 noundef %5, i32 noundef %i.al, i32 noundef %i.ba, i32 noundef %i.xk, i32 noundef %i.bf) #14
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.xn = getelementptr inbounds nuw i8, ptr %i.b, i64 21296
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !688
  call void %i.xo(ptr noundef %i.bn, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.aj, i32 noundef %5, i32 noundef %i.al, i32 noundef %i.ba, i32 noundef %i.xk, i32 noundef %i.bf) #14
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %bb.aj, %bb.am, %bb.an, %bb.ak, %bb.ai
  %i.xp = icmp eq i32 %i.bf, 0
  br i1 %i.xp, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  switch i32 %i.al, label %.loopexit [
    i32 50, label %bb.aq
    i32 18, label %bb.aq
    i32 1, label %bb.aq
    i32 0, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap, %bb.ap, %bb.ap
  %.not.i198 = icmp ult i32 %i.ab, 65536          ; 2 uses
  %i.xq = lshr i32 %i.ab, 16
  %spec.select.i199 = select i1 %.not.i198, i32 %i.ab, i32 %i.xq ; 3 uses
  %spec.select12.i200 = select i1 %.not.i198, i32 0, i32 16 ; 2 uses
  %.not11.i201 = icmp samesign ult i32 %spec.select.i199, 256 ; 2 uses
  %i.xr = lshr i32 %spec.select.i199, 8
  %i.xs = or disjoint i32 %spec.select12.i200, 8
  %.110.i202 = select i1 %.not11.i201, i32 %spec.select.i199, i32 %i.xr
  %.1.i203 = select i1 %.not11.i201, i32 %spec.select12.i200, i32 %i.xs
  %i.xt = zext nneg i32 %.110.i202 to i64
  %i.xu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.xt
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !62
  %i.xw = zext i8 %i.xv to i32
  %.not.i197 = icmp ult i32 %i.ac, 65536          ; 2 uses
  %i.xx = lshr i32 %i.ac, 16
  %spec.select.i = select i1 %.not.i197, i32 %i.ac, i32 %i.xx ; 3 uses
  %spec.select12.i = select i1 %.not.i197, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.xy = lshr i32 %spec.select.i, 8
  %i.xz = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.xy
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.xz
  %i.ya = zext nneg i32 %.110.i to i64
  %i.yb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !62
  %i.yd = zext i8 %i.yc to i32
  %i.ye = add nsw i32 %.1.i203, -2
  %i.yf = add nsw i32 %i.ye, %.1.i
  %i.yg = add nsw i32 %i.yf, %i.xw
  %i.yh = add nsw i32 %i.yg, %i.yd
  %i.yi = ashr i32 %i.yh, 2                       ; 5 uses
  %i.yj = load ptr, ptr %i.wr, align 8, !tbaa !680 ; 7 uses
  %i.yk = load ptr, ptr %6, align 8, !tbaa !681   ; 10 uses
  %i.yl = icmp sgt i32 %i.ac, 0
  br i1 %i.yl, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.aq
  %i.ym = icmp sgt i32 %i.ab, 0
  %i.yn = getelementptr i8, ptr %i.yj, i64 -2     ; 3 uses
  %i.yo = getelementptr i8, ptr %i.yk, i64 -2     ; 3 uses
  br i1 %i.ym, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count327 = zext nneg i32 %i.ac to i64 ; 5 uses
  %wide.trip.count317 = zext nneg i32 %i.ab to i64 ; 7 uses
  %wide.trip.count322 = zext nneg i32 %i.ab to i64
  %i.yp = shl nuw nsw i64 %wide.trip.count327, 1
  %i.yq = add nsw i64 %i.bl, %wide.trip.count327
  %i.yr = shl nsw i64 %i.yq, 1
  %i.ys = add nsw i64 %i.yr, -2
  %i.yt = mul i64 %i.aj, %i.ys
  %i.yu = shl nsw i64 %i.bj, 1
  %i.yv = shl nuw nsw i64 %wide.trip.count317, 1  ; 2 uses
  %i.yw = getelementptr i8, ptr %i.bi, i64 %i.yt
  %i.yx = getelementptr i8, ptr %i.yw, i64 %i.yu
  %scevgep606 = getelementptr i8, ptr %i.yx, i64 %i.yv ; 2 uses
  %scevgep607 = getelementptr i8, ptr %i.yj, i64 %i.yp
  %scevgep608 = getelementptr i8, ptr %i.yk, i64 %i.yv
  %i.yy = shl nuw nsw i64 %wide.trip.count327, 1
  %i.yz = add nsw i64 %i.bl, %wide.trip.count327
  %i.za = shl nsw i64 %i.yz, 1
  %i.zb = add nsw i64 %i.za, -2
  %i.zc = mul i64 %i.aj, %i.zb
  %i.zd = shl nsw i64 %i.bj, 1
  %i.ze = shl nuw nsw i64 %wide.trip.count317, 1  ; 2 uses
  %i.zf = getelementptr i8, ptr %i.bi, i64 %i.zc
  %i.zg = getelementptr i8, ptr %i.zf, i64 %i.zd
  %scevgep636 = getelementptr i8, ptr %i.zg, i64 %i.ze ; 4 uses
  %scevgep637 = getelementptr i8, ptr %i.yj, i64 %i.yy
  %scevgep638 = getelementptr i8, ptr %i.yk, i64 %i.ze
  %min.iters.check618 = icmp ult i32 %i.ab, 8     ; 2 uses
  %bound0639 = icmp ult ptr %i.bn, %i.yj
  %bound1640 = icmp ult ptr %i.yn, %scevgep636
  %found.conflict641 = and i1 %bound0639, %bound1640
  %bound0643 = icmp ult ptr %i.bn, %scevgep637
  %bound1644 = icmp ult ptr %i.yj, %scevgep636
  %found.conflict645 = and i1 %bound0643, %bound1644
  %stride.check646 = icmp slt i32 %i.ah, 0
  %i.zh = or i1 %found.conflict645, %stride.check646
  %conflict.rdx647 = or i1 %found.conflict641, %i.zh
  %bound0648 = icmp ult ptr %i.bn, %i.yk
  %bound1649 = icmp ult ptr %i.yo, %scevgep636
  %found.conflict650 = and i1 %bound0648, %bound1649
  %conflict.rdx652 = or i1 %found.conflict650, %conflict.rdx647
  %bound0653 = icmp ult ptr %i.bn, %scevgep638
  %bound1654 = icmp ult ptr %i.yk, %scevgep636
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx657 = or i1 %found.conflict655, %conflict.rdx652
  %n.vec661 = and i64 %wide.trip.count317, 2147483640 ; 3 uses
  %i.zi = icmp eq i32 %i.al, 18
  %broadcast.splatinsert672 = insertelement <8 x i32> poison, i32 %i.yi, i64 0
  %broadcast.splat673 = shufflevector <8 x i32> %broadcast.splatinsert672, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zj = icmp eq i32 %i.al, 50
  %cmp.n683 = icmp eq i64 %n.vec661, %wide.trip.count317
  %bound0609 = icmp ult ptr %i.bn, %scevgep607
  %bound1610 = icmp ult ptr %i.yj, %scevgep606
  %found.conflict611 = and i1 %bound0609, %bound1610
  %bound0612 = icmp ult ptr %i.bn, %scevgep608
  %bound1613 = icmp ult ptr %i.yk, %scevgep606
  %found.conflict614 = and i1 %bound0612, %bound1613
  %stride.check615 = icmp slt i32 %i.ah, 0
  %i.zk = or i1 %found.conflict614, %stride.check615
  %conflict.rdx616 = or i1 %found.conflict611, %i.zk
  %n.vec620 = and i64 %wide.trip.count317, 2147483640 ; 3 uses
  %broadcast.splatinsert623 = insertelement <8 x i32> poison, i32 %i.yi, i64 0
  %broadcast.splat624 = shufflevector <8 x i32> %broadcast.splatinsert623, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n633 = icmp eq i64 %n.vec620, %wide.trip.count317
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge253
  %indvars.iv324 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next325, %._crit_edge253 ] ; 4 uses
  %i.zl = getelementptr inbounds nuw [2 x i8], ptr %i.yj, i64 %indvars.iv324 ; 4 uses
  %i.zm = mul nuw nsw i64 %i.aj, %indvars.iv324
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.zm ; 4 uses
  %indvars.iv324.tr = trunc i64 %indvars.iv324 to i32
  %i.zo = shl i32 %indvars.iv324.tr, 1
  %i.zp = ashr i32 %i.zo, %i.yi
  %i.zq = call i32 @llvm.smin.i32(i32 %i.zp, i32 31)
  %i.zr = lshr i32 32, %i.zq                      ; 4 uses
  br i1 %i.rg, label %.lr.ph252.split.us.preheader, label %.lr.ph252.split.preheader

.lr.ph252.split.preheader:                        ; preds = %.preheader
  %brmerge717 = select i1 %min.iters.check618, i1 true, i1 %conflict.rdx657
  br i1 %brmerge717, label %.lr.ph252.split.preheader691, label %vector.ph660

vector.ph660:                                     ; preds = %.lr.ph252.split.preheader
  %broadcast.splatinsert662 = insertelement <8 x i32> poison, i32 %i.zr, i64 0
  %broadcast.splat663 = shufflevector <8 x i32> %broadcast.splatinsert662, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zs = load i16, ptr %i.zl, align 2, !tbaa !45, !alias.scope !1372
  %broadcast.splatinsert666 = insertelement <8 x i16> poison, i16 %i.zs, i64 0
  %broadcast.splat667 = shufflevector <8 x i16> %broadcast.splatinsert666, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.zt = zext <8 x i16> %broadcast.splat667 to <8 x i32>
  %i.zu = load i16, ptr %i.yn, align 2, !tbaa !45, !alias.scope !1375
  %broadcast.splatinsert668 = insertelement <8 x i16> poison, i16 %i.zu, i64 0
  %broadcast.splat669 = shufflevector <8 x i16> %broadcast.splatinsert668, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.zv = zext <8 x i16> %broadcast.splat669 to <8 x i32>
  %i.zw = load i16, ptr %i.yo, align 2, !tbaa !45, !alias.scope !1377
  %broadcast.splatinsert670 = insertelement <8 x i16> poison, i16 %i.zw, i64 0
  %broadcast.splat671 = shufflevector <8 x i16> %broadcast.splatinsert670, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.zx = zext <8 x i16> %broadcast.splat671 to <8 x i32>
  %predphi = select i1 %i.zi, <8 x i32> %broadcast.splat663, <8 x i32> zeroinitializer
  %i.zy = sub nsw <8 x i32> %i.zt, %i.zv
  br label %vector.body674

vector.body674:                                   ; preds = %vector.body674, %vector.ph660
  %index675 = phi i64 [ 0, %vector.ph660 ], [ %index.next680, %vector.body674 ] ; 3 uses
  %vec.ind676 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph660 ], [ %vec.ind.next681, %vector.body674 ] ; 2 uses
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %index675 ; 2 uses
  %wide.load677 = load <8 x i16>, ptr %i.zz, align 2, !tbaa !45, !alias.scope !1379, !noalias !1381
  %i.aaa = zext <8 x i16> %wide.load677 to <8 x i32>
  %i.aab = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %index675
  %wide.load678 = load <8 x i16>, ptr %i.aab, align 2, !tbaa !45, !alias.scope !1383
  %i.aac = zext <8 x i16> %wide.load678 to <8 x i32>
  %i.aad = shl <8 x i32> %vec.ind676, splat (i32 1)
  %i.aae = ashr <8 x i32> %i.aad, %broadcast.splat673
  %i.aaf = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aae, <8 x i32> splat (i32 31))
  %i.aag = lshr <8 x i32> splat (i32 32), %i.aaf
  %predphi679 = select i1 %i.zj, <8 x i32> %i.aag, <8 x i32> zeroinitializer
  %i.aah = mul nsw <8 x i32> %i.zy, %predphi679
  %i.aai = sub nsw <8 x i32> %i.aac, %i.zx
  %i.aaj = mul nsw <8 x i32> %i.aai, %predphi
  %i.aak = add nsw <8 x i32> %i.aaj, splat (i32 32)
  %i.aal = add nsw <8 x i32> %i.aak, %i.aah
  %i.aam = ashr <8 x i32> %i.aal, splat (i32 6)
  %i.aan = add nsw <8 x i32> %i.aam, %i.aaa
  %i.aao = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aan, <8 x i32> zeroinitializer)
  %i.aap = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.aao, <8 x i32> splat (i32 1023))
  %i.aaq = trunc nuw nsw <8 x i32> %i.aap to <8 x i16>
  store <8 x i16> %i.aaq, ptr %i.zz, align 2, !tbaa !45, !alias.scope !1379, !noalias !1381
  %index.next680 = add nuw i64 %index675, 8       ; 2 uses
  %vec.ind.next681 = add <8 x i32> %vec.ind676, splat (i32 8)
  %i.aar = icmp eq i64 %index.next680, %n.vec661
  br i1 %i.aar, label %middle.block682, label %vector.body674, !llvm.loop !1384

middle.block682:                                  ; preds = %vector.body674
  br i1 %cmp.n683, label %._crit_edge253, label %.lr.ph252.split.preheader691

.lr.ph252.split.preheader691:                     ; preds = %.lr.ph252.split.preheader, %middle.block682
  %indvars.iv314.ph = phi i64 [ %n.vec661, %middle.block682 ], [ 0, %.lr.ph252.split.preheader ]
  br label %.lr.ph252.split

.lr.ph252.split.us.preheader:                     ; preds = %.preheader
  %brmerge718 = select i1 %min.iters.check618, i1 true, i1 %conflict.rdx616
  br i1 %brmerge718, label %.lr.ph252.split.us.preheader690, label %vector.ph619

vector.ph619:                                     ; preds = %.lr.ph252.split.us.preheader
  %i.aas = load i16, ptr %i.zl, align 2, !tbaa !45, !alias.scope !1385
  %broadcast.splatinsert621 = insertelement <8 x i16> poison, i16 %i.aas, i64 0
  %broadcast.splat622 = shufflevector <8 x i16> %broadcast.splatinsert621, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aat = zext <8 x i16> %broadcast.splat622 to <8 x i32>
  %broadcast.splatinsert625 = insertelement <8 x i32> poison, i32 %i.zr, i64 0
  %broadcast.splat626 = shufflevector <8 x i32> %broadcast.splatinsert625, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body627

vector.body627:                                   ; preds = %vector.body627, %vector.ph619
  %index628 = phi i64 [ 0, %vector.ph619 ], [ %index.next631, %vector.body627 ] ; 3 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph619 ], [ %vec.ind.next, %vector.body627 ] ; 2 uses
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %index628
  %wide.load629 = load <8 x i16>, ptr %i.aau, align 2, !tbaa !45, !alias.scope !1388
  %i.aav = zext <8 x i16> %wide.load629 to <8 x i32>
  %i.aaw = shl <8 x i32> %vec.ind, splat (i32 1)
  %i.aax = ashr <8 x i32> %i.aaw, %broadcast.splat624
  %i.aay = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aax, <8 x i32> splat (i32 31))
  %i.aaz = lshr <8 x i32> splat (i32 32), %i.aay
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %index628 ; 2 uses
  %wide.load630 = load <8 x i16>, ptr %i.aba, align 2, !tbaa !45, !alias.scope !1390, !noalias !1392
  %i.abb = zext <8 x i16> %wide.load630 to <8 x i32> ; 3 uses
  %i.abc = sub nsw <8 x i32> %i.aat, %i.abb
  %i.abd = mul nsw <8 x i32> %i.abc, %i.aaz
  %i.abe = sub nsw <8 x i32> %i.aav, %i.abb
  %i.abf = mul nsw <8 x i32> %i.abe, %broadcast.splat626
  %i.abg = add nsw <8 x i32> %i.abf, splat (i32 32)
  %i.abh = add nsw <8 x i32> %i.abg, %i.abd
  %i.abi = ashr <8 x i32> %i.abh, splat (i32 6)
  %i.abj = add nsw <8 x i32> %i.abi, %i.abb
  %i.abk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.abj, <8 x i32> zeroinitializer)
  %i.abl = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.abk, <8 x i32> splat (i32 1023))
  %i.abm = trunc nuw nsw <8 x i32> %i.abl to <8 x i16>
  store <8 x i16> %i.abm, ptr %i.aba, align 2, !tbaa !45, !alias.scope !1390, !noalias !1392
  %index.next631 = add nuw i64 %index628, 8       ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.abn = icmp eq i64 %index.next631, %n.vec620
  br i1 %i.abn, label %middle.block632, label %vector.body627, !llvm.loop !1393

middle.block632:                                  ; preds = %vector.body627
  br i1 %cmp.n633, label %._crit_edge253, label %.lr.ph252.split.us.preheader690

.lr.ph252.split.us.preheader690:                  ; preds = %.lr.ph252.split.us.preheader, %middle.block632
  %indvars.iv319.ph = phi i64 [ %n.vec620, %middle.block632 ], [ 0, %.lr.ph252.split.us.preheader ]
  br label %.lr.ph252.split.us

.lr.ph252.split.us:                               ; preds = %.lr.ph252.split.us.preheader690, %.lr.ph252.split.us
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %.lr.ph252.split.us ], [ %indvars.iv319.ph, %.lr.ph252.split.us.preheader690 ] ; 4 uses
  %i.abo = load i16, ptr %i.zl, align 2, !tbaa !45
  %i.abp = zext i16 %i.abo to i32
  %i.abq = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv319
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !45
  %i.abs = zext i16 %i.abr to i32
  %indvars.iv319.tr = trunc i64 %indvars.iv319 to i32
  %i.abt = shl i32 %indvars.iv319.tr, 1
  %i.abu = ashr i32 %i.abt, %i.yi
  %i.abv = call i32 @llvm.smin.i32(i32 %i.abu, i32 31)
  %i.abw = lshr i32 32, %i.abv
  %i.abx = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %indvars.iv319 ; 2 uses
  %i.aby = load i16, ptr %i.abx, align 2, !tbaa !45
  %i.abz = zext i16 %i.aby to i32                 ; 3 uses
  %i.aca = sub nsw i32 %i.abp, %i.abz
  %i.acb = mul nsw i32 %i.aca, %i.abw
  %i.acc = sub nsw i32 %i.abs, %i.abz
  %i.acd = mul nsw i32 %i.acc, %i.zr
  %i.ace = add nsw i32 %i.acd, 32
  %i.acf = add nsw i32 %i.ace, %i.acb
  %i.acg = ashr i32 %i.acf, 6
  %i.ach = add nsw i32 %i.acg, %i.abz
  %i.aci = call i32 @llvm.smax.i32(i32 %i.ach, i32 0)
  %i.acj = call i32 @llvm.umin.i32(i32 %i.aci, i32 1023)
  %i.ack = trunc nuw nsw i32 %i.acj to i16
  store i16 %i.ack, ptr %i.abx, align 2, !tbaa !45
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count322
  br i1 %exitcond323.not, label %._crit_edge253, label %.lr.ph252.split.us, !llvm.loop !1394

._crit_edge253:                                   ; preds = %bb.as, %.lr.ph252.split.us, %middle.block682, %middle.block632
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.loopexit, label %.preheader, !llvm.loop !1395

.lr.ph252.split:                                  ; preds = %.lr.ph252.split.preheader691, %bb.as
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %bb.as ], [ %indvars.iv314.ph, %.lr.ph252.split.preheader691 ] ; 4 uses
  %i.acl = load i16, ptr %i.zl, align 2, !tbaa !45
  %i.acm = zext i16 %i.acl to i32
  %i.acn = load i16, ptr %i.yn, align 2, !tbaa !45
  %i.aco = zext i16 %i.acn to i32
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %indvars.iv314 ; 2 uses
  %i.acq = load i16, ptr %i.acp, align 2, !tbaa !45
  %i.acr = zext i16 %i.acq to i32
  %i.acs = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv314
  %i.act = load i16, ptr %i.acs, align 2, !tbaa !45
  %i.acu = zext i16 %i.act to i32
  %i.acv = load i16, ptr %i.yo, align 2, !tbaa !45
  %i.acw = zext i16 %i.acv to i32
  switch i32 %i.al, label %bb.as [
    i32 50, label %.thread213
    i32 18, label %bb.ar
  ]

.thread213:                                       ; preds = %.lr.ph252.split
  %indvars.iv314.tr = trunc i64 %indvars.iv314 to i32
  %i.acx = shl i32 %indvars.iv314.tr, 1
  %i.acy = ashr i32 %i.acx, %i.yi
  %i.acz = call i32 @llvm.smin.i32(i32 %i.acy, i32 31)
  %i.ada = lshr i32 32, %i.acz
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph252.split
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph252.split, %.thread213, %bb.ar
  %.0190 = phi i32 [ %i.ada, %.thread213 ], [ 0, %.lr.ph252.split ], [ 0, %bb.ar ]
  %.0 = phi i32 [ 0, %.thread213 ], [ 0, %.lr.ph252.split ], [ %i.zr, %bb.ar ]
  %i.adb = sub nsw i32 %i.acm, %i.aco
  %i.adc = mul nsw i32 %i.adb, %.0190
  %i.add = sub nsw i32 %i.acu, %i.acw
  %i.ade = mul nsw i32 %i.add, %.0
  %i.adf = add nsw i32 %i.ade, 32
  %i.adg = add nsw i32 %i.adf, %i.adc
  %i.adh = ashr i32 %i.adg, 6
  %i.adi = add nsw i32 %i.adh, %i.acr
  %i.adj = call i32 @llvm.smax.i32(i32 %i.adi, i32 0)
  %i.adk = call i32 @llvm.umin.i32(i32 %i.adj, i32 1023)
  %i.adl = trunc nuw nsw i32 %i.adk to i16
  store i16 %i.adl, ptr %i.acp, align 2, !tbaa !45
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge253, label %.lr.ph252.split, !llvm.loop !1396

.loopexit:                                        ; preds = %._crit_edge253, %bb.aq, %.preheader.lr.ph, %.thread211, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %.not.i42 = icmp ult i32 %3, 65536              ; 2 uses
  %i.a = lshr i32 %3, 16
  %spec.select.i43 = select i1 %.not.i42, i32 %3, i32 %i.a ; 3 uses
  %spec.select12.i44 = select i1 %.not.i42, i32 0, i32 16 ; 2 uses
  %.not11.i45 = icmp samesign ult i32 %spec.select.i43, 256 ; 2 uses
  %i.b = lshr i32 %spec.select.i43, 8
  %i.c = or disjoint i32 %spec.select12.i44, 8
  %.110.i46 = select i1 %.not11.i45, i32 %spec.select.i43, i32 %i.b
  %.1.i47 = select i1 %.not11.i45, i32 %spec.select12.i44, i32 %i.c
  %i.d = zext nneg i32 %.110.i46 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !62
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %.1.i47, %i.g            ; 3 uses
  %.not.i = icmp ult i32 %4, 65536                ; 2 uses
  %i.i = lshr i32 %4, 16
  %spec.select.i = select i1 %.not.i, i32 %4, i32 %i.i ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i, 8
  %i.k = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.j
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i, %i.o              ; 3 uses
  %i.q = mul nsw i32 %4, %3                       ; 2 uses
  %i.r = add nuw nsw i32 %i.h, 1
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 2 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i32 %3, 0
  %i.v = zext nneg i32 %4 to i64                  ; 4 uses
  %i.w = getelementptr [2 x i8], ptr %2, i64 %i.v ; 4 uses
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %1, i64 %i.x ; 3 uses
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %i.z = add nuw i64 %i.v, 9223372036854775807
  %i.aa = mul i64 %5, %i.z
  %i.ab = shl nuw nsw i64 %wide.trip.count, 1
  %i.ac = add i64 %i.aa, %wide.trip.count
  %i.ad = shl i64 %i.ac, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.ad  ; 4 uses
  %i.ae = shl nuw nsw i64 %i.x, 1
  %i.af = getelementptr i8, ptr %1, i64 %i.ae
  %scevgep58 = getelementptr i8, ptr %i.af, i64 2
  %scevgep59 = getelementptr i8, ptr %1, i64 %i.ab
  %i.ag = shl nuw nsw i64 %i.v, 1
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %scevgep60 = getelementptr i8, ptr %i.ah, i64 2
  %min.iters.check = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep58
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %0, %scevgep59
  %bound162 = icmp ult ptr %1, %scevgep
  %found.conflict63 = and i1 %bound061, %bound162
  %.mask = and i64 %5, 4611686018427387904
  %stride.check64 = icmp ne i64 %.mask, 0
  %i.ai = or i1 %found.conflict63, %stride.check64
  %conflict.rdx = or i1 %found.conflict, %i.ai
  %bound065 = icmp ult ptr %0, %i.w
  %bound166 = icmp ult ptr %2, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx69 = or i1 %found.conflict67, %conflict.rdx
  %bound070 = icmp ult ptr %0, %scevgep60
  %bound171 = icmp ult ptr %i.w, %scevgep
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx74 = or i1 %found.conflict72, %conflict.rdx69
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert83 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat84 = shufflevector <8 x i32> %broadcast.splatinsert83, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert85 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat86 = shufflevector <8 x i32> %broadcast.splatinsert85, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert87 = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat88 = shufflevector <8 x i32> %broadcast.splatinsert87, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <8 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat90 = shufflevector <8 x i32> %broadcast.splatinsert89, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat92 = shufflevector <8 x i32> %broadcast.splatinsert91, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 4 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.ak = xor i32 %i.aj, -1
  %i.al = add nsw i32 %4, %i.ak                   ; 2 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv52 ; 2 uses
  %i.an = mul nsw i64 %5, %indvars.iv52
  %i.ao = getelementptr [2 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.next53 to i32 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx74
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aq = load i16, ptr %i.w, align 2, !tbaa !45, !alias.scope !1397
  %broadcast.splatinsert75 = insertelement <8 x i16> poison, i16 %i.aq, i64 0
  %broadcast.splat76 = shufflevector <8 x i16> %broadcast.splatinsert75, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ar = zext <8 x i16> %broadcast.splat76 to <8 x i32>
  %i.as = mul nuw nsw <8 x i32> %broadcast.splat, %i.ar
  %i.at = load i16, ptr %i.am, align 2, !tbaa !45, !alias.scope !1400
  %broadcast.splatinsert77 = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %broadcast.splat78 = shufflevector <8 x i16> %broadcast.splatinsert77, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.au = zext <8 x i16> %broadcast.splat78 to <8 x i32>
  %i.av = load i16, ptr %i.y, align 2, !tbaa !45, !alias.scope !1402
  %broadcast.splatinsert79 = insertelement <8 x i16> poison, i16 %i.av, i64 0
  %broadcast.splat80 = shufflevector <8 x i16> %broadcast.splatinsert79, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aw = zext <8 x i16> %broadcast.splat80 to <8 x i32>
  %broadcast.splatinsert81 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat82 = shufflevector <8 x i32> %broadcast.splatinsert81, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind93 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next94, %vector.body ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ax, align 2, !tbaa !45, !alias.scope !1404
  %i.ay = zext <8 x i16> %wide.load to <8 x i32>
  %i.az = mul nsw <8 x i32> %broadcast.splat82, %i.ay
  %i.ba = add nsw <8 x i32> %i.as, %i.az
  %i.bb = shl <8 x i32> %i.ba, %broadcast.splat84
  %i.bc = xor <8 x i32> %vec.ind93, splat (i32 -1)
  %i.bd = add nsw <8 x i32> %broadcast.splat86, %i.bc
  %i.be = mul nsw <8 x i32> %i.bd, %i.au
  %i.bf = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.bg = add <8 x i32> %i.bf, splat (i32 1)
  %i.bh = mul nuw nsw <8 x i32> %i.bg, %i.aw
  %i.bi = add nsw <8 x i32> %i.bh, %i.be
  %i.bj = shl <8 x i32> %i.bi, %broadcast.splat88
  %i.bk = add <8 x i32> %i.bb, %broadcast.splat90
  %i.bl = add <8 x i32> %i.bk, %i.bj
  %i.bm = ashr <8 x i32> %i.bl, %broadcast.splat92
  %i.bn = trunc <8 x i32> %i.bm to <8 x i16>
  %i.bo = getelementptr [2 x i8], ptr %i.ao, i64 %index
  store <8 x i16> %i.bn, ptr %i.bo, align 2, !tbaa !45, !alias.scope !1406, !noalias !1408
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next94 = add <8 x i32> %vec.ind93, splat (i32 8)
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1409

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !45
  %i.bs = zext i16 %i.br to i32
end_hunk_2
begin_hunk_3_@pred_angular_v_10:bb.a
  %broadcast.splat191 = shufflevector <8 x i32> %broadcast.splatinsert190, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert192 = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat193 = shufflevector <8 x i32> %broadcast.splatinsert192, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph188
  %index195 = phi i64 [ 0, %vector.ph188 ], [ %index.next198, %vector.body194 ] ; 3 uses
  %i.cf = getelementptr [2 x i8], ptr %invariant.gep120, i64 %index195 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %wide.load196 = load <8 x i16>, ptr %i.cg, align 2, !tbaa !45, !alias.scope !1451
  %i.ch = zext <8 x i16> %wide.load196 to <8 x i32>
  %i.ci = mul nuw nsw <8 x i32> %broadcast.splat191, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %wide.load197 = load <8 x i16>, ptr %i.cj, align 2, !tbaa !45, !alias.scope !1451
  %i.ck = zext <8 x i16> %wide.load197 to <8 x i32>
  %i.cl = mul nuw nsw <8 x i32> %broadcast.splat193, %i.ck
  %i.cm = add nuw nsw <8 x i32> %i.ci, splat (i32 16)
  %i.cn = add nuw nsw <8 x i32> %i.cm, %i.cl
  %i.co = lshr <8 x i32> %i.cn, splat (i32 5)
  %i.cp = trunc <8 x i32> %i.co to <8 x i16>
  %i.cq = getelementptr [2 x i8], ptr %i.cc, i64 %index195
  store <8 x i16> %i.cp, ptr %i.cq, align 2, !tbaa !45, !alias.scope !1454, !noalias !1451
  %index.next198 = add nuw i64 %index195, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.cr, label %middle.block199, label %vector.body194, !llvm.loop !1456

middle.block199:                                  ; preds = %vector.body194
  br i1 %cmp.n200, label %.loopexit113, label %scalar.ph186.preheader

scalar.ph186.preheader:                           ; preds = %vector.memcheck176, %.lr.ph119, %middle.block199
  %indvars.iv139.ph = phi i64 [ 0, %vector.memcheck176 ], [ 0, %.lr.ph119 ], [ %n.vec189, %middle.block199 ] ; 5 uses
  br i1 %lcmp.mod225.not, label %scalar.ph186.prol.loopexit, label %scalar.ph186.prol

scalar.ph186.prol:                                ; preds = %scalar.ph186.preheader
  %gep121.prol = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv139.ph ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %gep121.prol, i64 2
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !45
  %i.cu = zext i16 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.ca, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %gep121.prol, i64 4
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !45
  %i.cy = zext i16 %i.cx to i32
  %i.cz = mul nuw nsw i32 %i.ap, %i.cy
  %i.da = add nuw nsw i32 %i.cv, 16
  %i.db = add nuw nsw i32 %i.da, %i.cz
  %i.dc = lshr i32 %i.db, 5
  %i.dd = trunc i32 %i.dc to i16
  %i.de = getelementptr [2 x i8], ptr %i.cc, i64 %indvars.iv139.ph
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !45
  %indvars.iv.next140.prol = or disjoint i64 %indvars.iv139.ph, 1
  br label %scalar.ph186.prol.loopexit

scalar.ph186.prol.loopexit:                       ; preds = %scalar.ph186.prol, %scalar.ph186.preheader
  %indvars.iv139.unr = phi i64 [ %indvars.iv139.ph, %scalar.ph186.preheader ], [ %indvars.iv.next140.prol, %scalar.ph186.prol ]
  %i.df = icmp eq i64 %indvars.iv139.ph, %i.al
  br i1 %i.df, label %.loopexit113, label %scalar.ph186

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %.lr.ph123, label %.loopexit113

.lr.ph123:                                        ; preds = %bb.f
  %i.dg = zext nneg i32 %i.ap to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dg
  %i.di = sext i32 %i.ao to i64                   ; 2 uses
  %invariant.gep124 = getelementptr [2 x i8], ptr %i.e, i64 %i.di ; 3 uses
  %i.dj = load <4 x i8>, ptr %i.dh, align 4, !tbaa !62
  %i.dk = sext <4 x i8> %i.dj to <4 x i32>        ; 5 uses
  %i.dl = mul nsw i64 %5, %indvars.iv154
  %i.dm = getelementptr [2 x i8], ptr %0, i64 %i.dl ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123
  %i.dn = shl nsw i64 %i.di, 1
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.dn
  %bound0 = icmp ult ptr %0, %scevgep166
  %bound1 = icmp ult ptr %invariant.gep124, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.do = or i1 %found.conflict, %stride.check
  br i1 %i.do, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat168 = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat170 = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat172 = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = getelementptr [2 x i8], ptr %invariant.gep124, i64 %index ; 4 uses
  %wide.load = load <8 x i16>, ptr %i.dp, align 2, !tbaa !45, !alias.scope !1457
  %i.dq = zext <8 x i16> %wide.load to <8 x i32>
  %i.dr = mul nsw <8 x i32> %broadcast.splat, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %wide.load173 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !45, !alias.scope !1457
  %i.dt = zext <8 x i16> %wide.load173 to <8 x i32>
  %i.du = mul nsw <8 x i32> %broadcast.splat168, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %wide.load174 = load <8 x i16>, ptr %i.dv, align 2, !tbaa !45, !alias.scope !1457
  %i.dw = zext <8 x i16> %wide.load174 to <8 x i32>
  %i.dx = mul nsw <8 x i32> %broadcast.splat170, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 6
  %wide.load175 = load <8 x i16>, ptr %i.dy, align 2, !tbaa !45, !alias.scope !1457
  %i.dz = zext <8 x i16> %wide.load175 to <8 x i32>
  %i.ea = mul nsw <8 x i32> %broadcast.splat172, %i.dz
  %i.eb = add nsw <8 x i32> %i.dr, splat (i32 32)
  %i.ec = add nsw <8 x i32> %i.eb, %i.du
  %i.ed = add nsw <8 x i32> %i.ec, %i.dx
  %i.ee = add nsw <8 x i32> %i.ed, %i.ea
  %i.ef = ashr <8 x i32> %i.ee, splat (i32 6)
  %i.eg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ef, <8 x i32> zeroinitializer)
  %i.eh = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.eg, <8 x i32> splat (i32 1023))
  %i.ei = trunc nuw nsw <8 x i32> %i.eh to <8 x i16>
  %i.ej = getelementptr [2 x i8], ptr %i.dm, i64 %index
  store <8 x i16> %i.ei, ptr %i.ej, align 2, !tbaa !45, !alias.scope !1460, !noalias !1457
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !1462

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit113, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph123, %middle.block
  %indvars.iv144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph123 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %scalar.ph ], [ %indvars.iv144.ph, %scalar.ph.preheader ] ; 3 uses
  %gep125 = getelementptr [2 x i8], ptr %invariant.gep124, i64 %indvars.iv144
  %i.el = load <4 x i16>, ptr %gep125, align 2, !tbaa !45
  %i.em = zext <4 x i16> %i.el to <4 x i32>
  %i.en = mul nsw <4 x i32> %i.dk, %i.em
  %i.eo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.en)
  %op.rdx = add i32 %i.eo, 32
  %i.ep = ashr i32 %op.rdx, 6
  %i.eq = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 0)
  %i.er = tail call i32 @llvm.umin.i32(i32 %i.eq, i32 1023)
  %i.es = trunc nuw nsw i32 %i.er to i16
  %i.et = getelementptr [2 x i8], ptr %i.dm, i64 %indvars.iv144
  store i16 %i.es, ptr %i.et, align 2, !tbaa !45
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %.loopexit113, label %scalar.ph, !llvm.loop !1463

scalar.ph186:                                     ; preds = %scalar.ph186.prol.loopexit, %scalar.ph186
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.1, %scalar.ph186 ], [ %indvars.iv139.unr, %scalar.ph186.prol.loopexit ] ; 4 uses
  %gep121 = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv139 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %gep121, i64 2
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !45
  %i.ew = zext i16 %i.ev to i32
  %i.ex = mul nuw nsw i32 %i.ca, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %gep121, i64 4
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !45
  %i.fa = zext i16 %i.ez to i32
  %i.fb = mul nuw nsw i32 %i.ap, %i.fa
  %i.fc = add nuw nsw i32 %i.ex, 16
  %i.fd = add nuw nsw i32 %i.fc, %i.fb
  %i.fe = lshr i32 %i.fd, 5
  %i.ff = trunc i32 %i.fe to i16
  %i.fg = getelementptr [2 x i8], ptr %i.cc, i64 %indvars.iv139
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !45
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %gep121.1 = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv.next140 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %gep121.1, i64 2
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !45
  %i.fj = zext i16 %i.fi to i32
  %i.fk = mul nuw nsw i32 %i.ca, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %gep121.1, i64 4
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !45
  %i.fn = zext i16 %i.fm to i32
  %i.fo = mul nuw nsw i32 %i.ap, %i.fn
  %i.fp = add nuw nsw i32 %i.fk, 16
  %i.fq = add nuw nsw i32 %i.fp, %i.fo
  %i.fr = lshr i32 %i.fq, 5
  %i.fs = trunc i32 %i.fr to i16
  %i.ft = getelementptr [2 x i8], ptr %i.cc, i64 %indvars.iv.next140
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !45
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %exitcond143.not.1 = icmp eq i64 %indvars.iv.next140.1, %wide.trip.count142
  br i1 %exitcond143.not.1, label %.loopexit113, label %scalar.ph186, !llvm.loop !1464

.loopexit113:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %scalar.ph186.prol.loopexit, %scalar.ph186, %scalar.ph, %middle.block213, %vec.epilog.middle.block, %middle.block199, %middle.block, %.preheader115, %.preheader, %bb.f
  br i1 %brmerge, label %.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.loopexit113
  %i.fu = mul nsw i64 %5, %indvars.iv154
  %i.fv = getelementptr [2 x i8], ptr %0, i64 %i.fu
  %i.fw = trunc nuw nsw i64 %indvars.iv154 to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph128, %bb.g
  %indvars.iv149 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next150, %bb.g ] ; 3 uses
  %.099126 = phi i32 [ %i.o, %.lr.ph128 ], [ %i.gr, %bb.g ] ; 2 uses
  %i.fx = ashr i32 %.099126, 9
  %i.fy = add nsw i32 %i.fx, %i.fw
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [2 x i8], ptr %2, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !45
  %i.gc = getelementptr [2 x i8], ptr %i.fv, i64 %indvars.iv149 ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !45
  %indvars.iv149.tr = trunc i64 %indvars.iv149 to i32
  %i.ge = shl i32 %indvars.iv149.tr, 1
  %i.gf = ashr i32 %i.ge, %.0106
  %i.gg = lshr i32 32, %i.gf
  %i.gh = zext i16 %i.gd to i32                   ; 2 uses
  %i.gi = zext i16 %i.gb to i32
  %i.gj = sub nsw i32 %i.gi, %i.gh
  %i.gk = mul nsw i32 %i.gj, %i.gg
  %i.gl = add nsw i32 %i.gk, 32
  %i.gm = ashr i32 %i.gl, 6
  %i.gn = add nsw i32 %i.gm, %i.gh
  %i.go = tail call i32 @llvm.smax.i32(i32 %i.gn, i32 0)
  %i.gp = tail call i32 @llvm.umin.i32(i32 %i.go, i32 1023)
  %i.gq = trunc nuw nsw i32 %i.gp to i16
  store i16 %i.gq, ptr %i.gc, align 2, !tbaa !45
  %i.gr = add nsw i32 %.099126, %.0105
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.loopexit, label %bb.g, !llvm.loop !1465

.loopexit:                                        ; preds = %bb.g, %.loopexit113
  %i.gs = add nsw i32 %.0100132, %i.f
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %._crit_edge, label %bb.d, !llvm.loop !1466
}

; Function Attrs: nounwind uwtable
define internal void @pred_angular_h_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #5 {
bb.a:
  %i.a = add nsw i32 %8, 1
  %narrow = xor i32 %8, -1
  %i.b = sext i32 %narrow to i64
  %i.c = getelementptr inbounds [2 x i8], ptr %2, i64 %i.b ; 3 uses
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %i.d = tail call i32 @ff_vvc_intra_pred_angle_derive(i32 noundef %7) #14 ; 5 uses
  %.not79 = icmp ne i32 %10, 0                    ; 4 uses
  br i1 %.not79, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @ff_vvc_intra_inv_angle_derive(i32 noundef %i.d) #14 ; 2 uses
  %i.f = add nsw i32 %i.e, 256
  %i.g = tail call i32 @ff_vvc_nscale_derive(i32 noundef %3, i32 noundef %4, i32 noundef %7) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %.078 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %.075 = phi i32 [ %i.f, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.c
  %i.j = mul nsw i32 %i.d, %i.a                   ; 3 uses
  %i.k = icmp sgt i32 %3, 0
  %i.l = icmp ne i32 %9, 0
  %or.cond = and i1 %.not, %i.l                   ; 3 uses
  %i.m = sext i32 %9 to i64
  %i.n = getelementptr inbounds [128 x i8], ptr @ff_vvc_intra_luma_filter, i64 %i.m ; 2 uses
  br i1 %i.k, label %.lr.ph92.split.us, label %._crit_edge93

.lr.ph92.split.us:                                ; preds = %.lr.ph92
  %i.o = shl i32 3, %.078
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %wide.trip.count125 = zext nneg i32 %4 to i64   ; 2 uses
  %wide.trip.count115 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %.not, label %.lr.ph92.split.us.split.us.preheader, label %.lr.ph92.split.us.split

.lr.ph92.split.us.split.us.preheader:             ; preds = %.lr.ph92.split.us
  %wide.trip.count120 = zext nneg i32 %3 to i64
  br label %.lr.ph92.split.us.split.us

.lr.ph92.split.us.split.us:                       ; preds = %.lr.ph92.split.us.split.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv122 = phi i64 [ 0, %.lr.ph92.split.us.split.us.preheader ], [ %indvars.iv.next123, %._crit_edge.split.us.us.us ] ; 7 uses
  %.17689.us.us = phi i32 [ %.075, %.lr.ph92.split.us.split.us.preheader ], [ %spec.select.us.us, %._crit_edge.split.us.us.us ] ; 2 uses
  br i1 %.not79, label %.lr.ph.us.us, label %.lr.ph.us.us.thread

.lr.ph.us.us.thread:                              ; preds = %.lr.ph92.split.us.split.us
  %i.q = mul nsw i64 %5, %indvars.iv122
  br label %.lr.ph.split.us.us.us.split.preheader

.lr.ph.us.us:                                     ; preds = %.lr.ph92.split.us.split.us
  %indvars.iv122.tr = trunc i64 %indvars.iv122 to i32
  %i.r = shl i32 %indvars.iv122.tr, 1
  %i.s = lshr i32 %i.r, %.078
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.s, i32 31)
  %i.u = lshr i32 32, %i.t
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv122
  %i.w = icmp slt i64 %indvars.iv122, %i.p
  %i.x = mul nsw i64 %5, %indvars.iv122           ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %0, i64 %i.x
  br i1 %i.w, label %.lr.ph.split.us.us.us.split.us.preheader, label %.lr.ph.split.us.us.us.split.preheader

.lr.ph.split.us.us.us.split.preheader:            ; preds = %.lr.ph.us.us.thread, %.lr.ph.us.us
  %i.z = phi i64 [ %i.q, %.lr.ph.us.us.thread ], [ %i.x, %.lr.ph.us.us ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv122
  %i.ab = getelementptr [2 x i8], ptr %0, i64 %i.z
  br label %.lr.ph.split.us.us.us.split

.lr.ph.split.us.us.us.split.us.preheader:         ; preds = %.lr.ph.us.us
  %i.ac = ashr i32 %.17689.us.us, 9
  %i.ad = sext i32 %i.ac to i64
  %invariant.gep132 = getelementptr [2 x i8], ptr %1, i64 %i.ad
  br label %.lr.ph.split.us.us.us.split.us

.lr.ph.split.us.us.us.split.us:                   ; preds = %.lr.ph.split.us.us.us.split.us.preheader, %bb.f
  %indvars.iv117 = phi i64 [ 0, %.lr.ph.split.us.us.us.split.us.preheader ], [ %indvars.iv.next118, %bb.f ] ; 3 uses
  %.07387.us.us.us.us = phi i32 [ %i.j, %.lr.ph.split.us.us.us.split.us.preheader ], [ %i.cg, %bb.f ] ; 3 uses
  %i.ae = ashr i32 %.07387.us.us.us.us, 5
  %i.af = add nsw i32 %i.ae, %8
  %i.ag = and i32 %.07387.us.us.us.us, 31         ; 2 uses
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ah ; 5 uses
  %.not80.us.us.us.us = icmp ne i32 %i.ag, 0
  %or.cond81.us.us.us.us = or i1 %or.cond, %.not80.us.us.us.us
  br i1 %or.cond81.us.us.us.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.us.us.split.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !45
  %i.al = zext i16 %i.ak to i32
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us.us.us.split.us
  %i.am = zext nneg i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.am ; 4 uses
  %i.ao = load i16, ptr %i.ai, align 2, !tbaa !45
  %i.ap = zext i16 %i.ao to i32
  %i.aq = load i8, ptr %i.an, align 4, !tbaa !62
  %i.ar = sext i8 %i.aq to i32
  %i.as = mul nsw i32 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !45
  %i.av = zext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = sext i8 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !45
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !62
  %i.bf = sext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.bf, %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !45
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !62
  %i.bm = sext i8 %i.bl to i32
  %i.bn = mul nsw i32 %i.bm, %i.bj
  %i.bo = add nsw i32 %i.as, 32
  %i.bp = add nsw i32 %i.bo, %i.az
  %i.bq = add nsw i32 %i.bp, %i.bg
  %i.br = add nsw i32 %i.bq, %i.bn
  %i.bs = ashr i32 %i.br, 6
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 1023)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.us.us.us.us = phi i32 [ %i.al, %bb.d ], [ %i.bu, %bb.e ] ; 2 uses
  %gep133 = getelementptr [2 x i8], ptr %invariant.gep132, i64 %indvars.iv117
  %i.bv = load i16, ptr %gep133, align 2, !tbaa !45
  %i.bw = zext i16 %i.bv to i32
  %i.bx = sub nsw i32 %i.bw, %.0.us.us.us.us
  %i.by = mul nsw i32 %i.bx, %i.u
  %i.bz = add nsw i32 %i.by, 32
  %i.ca = ashr i32 %i.bz, 6
  %i.cb = add nsw i32 %i.ca, %.0.us.us.us.us
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 1023)
  %i.ce = trunc nuw nsw i32 %i.cd to i16
  %i.cf = getelementptr [2 x i8], ptr %i.y, i64 %indvars.iv117
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !45
  %i.cg = add nsw i32 %.07387.us.us.us.us, %i.d
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge.split.us.us.us, label %.lr.ph.split.us.us.us.split.us, !llvm.loop !1467

.lr.ph.split.us.us.us.split:                      ; preds = %.lr.ph.split.us.us.us.split.preheader, %bb.i
  %indvars.iv112 = phi i64 [ 0, %.lr.ph.split.us.us.us.split.preheader ], [ %indvars.iv.next113, %bb.i ] ; 2 uses
  %.07387.us.us.us = phi i32 [ %i.j, %.lr.ph.split.us.us.us.split.preheader ], [ %i.dz, %bb.i ] ; 3 uses
  %i.ch = ashr i32 %.07387.us.us.us, 5
  %i.ci = add nsw i32 %i.ch, %8
  %i.cj = and i32 %.07387.us.us.us, 31            ; 2 uses
  %i.ck = sext i32 %i.ci to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.ck ; 5 uses
  %.not80.us.us.us = icmp ne i32 %i.cj, 0
  %or.cond81.us.us.us = or i1 %or.cond, %.not80.us.us.us
  br i1 %or.cond81.us.us.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.us.us.split
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !45
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.us.us.split
  %i.co = zext nneg i32 %i.cj to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.co ; 4 uses
  %i.cq = load i16, ptr %i.cl, align 2, !tbaa !45
  %i.cr = zext i16 %i.cq to i32
  %i.cs = load i8, ptr %i.cp, align 4, !tbaa !62
  %i.ct = sext i8 %i.cs to i32
  %i.cu = mul nsw i32 %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !45
  %i.cx = zext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !62
  %i.da = sext i8 %i.cz to i32
  %i.db = mul nsw i32 %i.da, %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !45
  %i.de = zext i16 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !62
  %i.dh = sext i8 %i.dg to i32
  %i.di = mul nsw i32 %i.dh, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !45
  %i.dl = zext i16 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !62
  %i.do = sext i8 %i.dn to i32
  %i.dp = mul nsw i32 %i.do, %i.dl
  %i.dq = add nsw i32 %i.cu, 32
  %i.dr = add nsw i32 %i.dq, %i.db
  %i.ds = add nsw i32 %i.dr, %i.di
  %i.dt = add nsw i32 %i.ds, %i.dp
  %i.du = ashr i32 %i.dt, 6
  %i.dv = tail call i32 @llvm.smax.i32(i32 %i.du, i32 0)
  %i.dw = tail call i32 @llvm.umin.i32(i32 %i.dv, i32 1023)
  %i.dx = trunc nuw nsw i32 %i.dw to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.us.us.us = phi i16 [ %i.cn, %bb.g ], [ %i.dx, %bb.h ]
  %i.dy = getelementptr [2 x i8], ptr %i.ab, i64 %indvars.iv112
  store i16 %.0.us.us.us, ptr %i.dy, align 2, !tbaa !45
  %i.dz = add nsw i32 %.07387.us.us.us, %i.d
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %._crit_edge.split.us.us.us, label %.lr.ph.split.us.us.us.split, !llvm.loop !1467

._crit_edge.split.us.us.us:                       ; preds = %bb.i, %bb.f
  %spec.select.us.us = add nsw i32 %.17689.us.us, %i.h
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge93, label %.lr.ph92.split.us.split.us, !llvm.loop !1468

.lr.ph92.split.us.split:                          ; preds = %.lr.ph92.split.us, %._crit_edge.split.us101
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %._crit_edge.split.us101 ], [ 0, %.lr.ph92.split.us ] ; 5 uses
  %.17689.us = phi i32 [ %spec.select.us, %._crit_edge.split.us101 ], [ %.075, %.lr.ph92.split.us ] ; 2 uses
  br i1 %.not79, label %bb.j, label %.lr.ph.us

bb.j:                                             ; preds = %.lr.ph92.split.us.split
  %indvars.iv107.tr = trunc i64 %indvars.iv107 to i32
  %i.ea = shl i32 %indvars.iv107.tr, 1
  %i.eb = lshr i32 %i.ea, %.078
  %i.ec = tail call i32 @llvm.umin.i32(i32 %i.eb, i32 31)
  %i.ed = lshr i32 32, %i.ec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.j, %.lr.ph92.split.us.split
  %.072.us = phi i32 [ %i.ed, %bb.j ], [ undef, %.lr.ph92.split.us.split ]
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv107
  %i.ef = icmp slt i64 %indvars.iv107, %i.p
  %or.cond83.us = select i1 %.not79, i1 %i.ef, i1 false
  %i.eg = ashr i32 %.17689.us, 9
  %i.eh = mul nsw i64 %5, %indvars.iv107
  %i.ei = getelementptr [2 x i8], ptr %0, i64 %i.eh
  %i.ej = sext i32 %i.eg to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.ej
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.us, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.07387.us95 = phi i32 [ %i.j, %.lr.ph.us ], [ %i.fp, %bb.p ] ; 3 uses
  %i.ek = ashr i32 %.07387.us95, 5
  %i.el = add nsw i32 %i.ek, %8
  %i.em = and i32 %.07387.us95, 31                ; 3 uses
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.en ; 3 uses
  %.not80.us96 = icmp ne i32 %i.em, 0
  %or.cond81.us97 = or i1 %or.cond, %.not80.us96
  br i1 %or.cond81.us97, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !45
  %i.er = zext i16 %i.eq to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.es = sub nuw nsw i32 32, %i.em
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !45
  %i.ev = zext i16 %i.eu to i32
  %i.ew = mul nuw nsw i32 %i.es, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !45
  %i.ez = zext i16 %i.ey to i32
  %i.fa = mul nuw nsw i32 %i.em, %i.ez
  %i.fb = add nuw nsw i32 %i.ew, 16
  %i.fc = add nuw nsw i32 %i.fb, %i.fa
  %i.fd = lshr i32 %i.fc, 5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.us98 = phi i32 [ %i.fd, %bb.m ], [ %i.er, %bb.l ] ; 3 uses
  br i1 %or.cond83.us, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fe = load i16, ptr %gep, align 2, !tbaa !45
  %i.ff = zext i16 %i.fe to i32
  %i.fg = sub nsw i32 %i.ff, %.0.us98
  %i.fh = mul nsw i32 %i.fg, %.072.us
  %i.fi = add nsw i32 %i.fh, 32
  %i.fj = ashr i32 %i.fi, 6
  %i.fk = add nsw i32 %i.fj, %.0.us98
  %i.fl = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 0)
  %i.fm = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 1023)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.us100 = phi i32 [ %i.fm, %bb.o ], [ %.0.us98, %bb.n ]
  %i.fn = trunc i32 %.1.us100 to i16
  %i.fo = getelementptr [2 x i8], ptr %i.ei, i64 %indvars.iv
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !45
  %i.fp = add nsw i32 %.07387.us95, %i.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count115
  br i1 %exitcond.not, label %._crit_edge.split.us101, label %bb.k, !llvm.loop !1467

._crit_edge.split.us101:                          ; preds = %bb.p
  %spec.select.us = add nsw i32 %.17689.us, %i.h
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count125
  br i1 %exitcond111.not, label %._crit_edge93, label %.lr.ph92.split.us.split, !llvm.loop !1468

._crit_edge93:                                    ; preds = %._crit_edge.split.us101, %._crit_edge.split.us.us.us, %.lr.ph92, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add_residual_10(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge23.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  %i.c = shl i64 %4, 31
  %i.d = ashr i64 %i.c, 32
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge23.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.e = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01522 = phi i32 [ %i.w, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.01621 = phi ptr [ %i.v, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.01720 = phi ptr [ %.lcssa, %._crit_edge ], [ %1, %.preheader.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.f = getelementptr i8, ptr %.01720, i64 %i.e  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.01720, i64 %i.g ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.01621, i64 %index ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.h, align 2, !tbaa !45
  %wide.load28 = load <4 x i16>, ptr %i.i, align 2, !tbaa !45
  %i.j = zext <4 x i16> %wide.load to <4 x i32>
  %i.k = zext <4 x i16> %wide.load28 to <4 x i32>
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load29 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !555
  %wide.load30 = load <4 x i32>, ptr %i.l, align 4, !tbaa !555
  %i.m = add nsw <4 x i32> %wide.load29, %i.j
  %i.n = add nsw <4 x i32> %wide.load30, %i.k
  %i.o = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.m, <4 x i32> zeroinitializer)
  %i.p = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> zeroinitializer)
  %i.q = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.o, <4 x i32> splat (i32 1023))
  %i.r = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.p, <4 x i32> splat (i32 1023))
  %i.s = trunc nuw nsw <4 x i32> %i.q to <4 x i16>
  %i.t = trunc nuw nsw <4 x i32> %i.r to <4 x i16>
  store <4 x i16> %i.s, ptr %i.h, align 2, !tbaa !45
  store <4 x i16> %i.t, ptr %i.i, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1469

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %.118.ph = phi ptr [ %.01720, %.preheader ], [ %i.f, %middle.block ]
  br label %scalar.ph

._crit_edge23.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.f, %middle.block ], [ %i.af, %scalar.ph ]
  %i.v = getelementptr inbounds [2 x i8], ptr %.01621, i64 %i.d
  %i.w = add nuw nsw i32 %.01522, 1               ; 2 uses
  %exitcond25.not = icmp eq i32 %i.w, %3
  br i1 %exitcond25.not, label %._crit_edge23.split, label %.preheader, !llvm.loop !1470

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.118 = phi ptr [ %i.af, %scalar.ph ], [ %.118.ph, %scalar.ph.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.01621, i64 %indvars.iv ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !45
  %i.z = zext i16 %i.y to i32
  %i.aa = load i32, ptr %.118, align 4, !tbaa !555
  %i.ab = add nsw i32 %i.aa, %i.z
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0)
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 1023)
  %i.ae = trunc nuw nsw i32 %i.ad to i16
  store i16 %i.ae, ptr %i.x, align 2, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %.118, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1471
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_residual_joint_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = mul nsw i32 %3, %2                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = ptrtoaddr ptr %1 to i64
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.a, 8
  %i.e = sub i64 %i.d, %i.c
  %diff.check = icmp ugt i64 %i.e, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
end_hunk_3
begin_hunk_4_@intra_pred_8:bb.a
  store ptr %.0251.i, ptr %6, align 8, !tbaa !681
  br i1 %i.az, label %.thread211, label %bb.ag

.thread211:                                       ; preds = %prepare_intra_edge_params_8.exit
  %i.vb = lshr i8 %i.as, 1
  %i.vc = and i8 %i.vb, 1
  %i.vd = zext nneg i8 %i.vc to i32
  %i.ve = lshr i8 %i.as, 2
  %i.vf = and i8 %i.ve, 15
  %i.vg = zext nneg i8 %i.vf to i32
  %i.vh = getelementptr inbounds nuw i8, ptr %i.c, i64 21256
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !682
  call void %i.vi(ptr noundef %i.bo, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ac, i32 noundef %i.ad, i64 noundef %i.aj, i32 noundef %i.vg, i32 noundef %i.vd) #14
  br label %.loopexit

bb.ag:                                            ; preds = %prepare_intra_edge_params_8.exit
  switch i32 %i.al, label %bb.al [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 50, label %bb.aj
    i32 18, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.vj = getelementptr inbounds nuw i8, ptr %i.c, i64 21248
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !683
  call void %i.vk(ptr noundef %i.bo, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ac, i32 noundef %i.ad, i64 noundef %i.aj) #14
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ag
  %i.vl = getelementptr inbounds nuw i8, ptr %i.c, i64 21264
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !684
  call void %i.vm(ptr noundef %i.bo, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ac, i32 noundef %i.ad, i64 noundef %i.aj) #14
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ag
  %i.vn = getelementptr inbounds nuw i8, ptr %i.c, i64 21272
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !685
  call void %i.vo(ptr noundef %i.bo, ptr noundef nonnull %.0251.i, i32 noundef %i.ac, i32 noundef %i.ad, i64 noundef %i.aj) #14
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ag
  %i.vp = getelementptr inbounds nuw i8, ptr %i.c, i64 21280
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !686
  call void %i.vq(ptr noundef %i.bo, ptr noundef nonnull %.0252.i, i32 noundef %i.ac, i32 noundef %i.ad, i64 noundef %i.aj) #14
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag
  %i.vr = icmp sgt i32 %i.al, 33
  %i.vs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !670 ; 2 uses
  br i1 %i.vr, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.vu = getelementptr inbounds nuw i8, ptr %i.c, i64 21288
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !687
  call void %i.vv(ptr noundef %i.bo, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ac, i32 noundef %i.ad, i64 noundef %i.aj, i32 noundef %5, i32 noundef %i.al, i32 noundef %i.ba, i32 noundef %i.vt, i32 noundef %i.bf) #14
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.vw = getelementptr inbounds nuw i8, ptr %i.c, i64 21296
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !688
  call void %i.vx(ptr noundef %i.bo, ptr noundef nonnull %.0251.i, ptr noundef nonnull %.0252.i, i32 noundef %i.ac, i32 noundef %i.ad, i64 noundef %i.aj, i32 noundef %5, i32 noundef %i.al, i32 noundef %i.ba, i32 noundef %i.vt, i32 noundef %i.bf) #14
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %bb.aj, %bb.am, %bb.an, %bb.ak, %bb.ai
  %i.vy = icmp eq i32 %i.bf, 0
  br i1 %i.vy, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  switch i32 %i.al, label %.loopexit [
    i32 50, label %bb.aq
    i32 18, label %bb.aq
    i32 1, label %bb.aq
    i32 0, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap, %bb.ap, %bb.ap
  %.not.i197 = icmp ult i32 %i.ac, 65536          ; 2 uses
  %i.vz = lshr i32 %i.ac, 16
  %spec.select.i198 = select i1 %.not.i197, i32 %i.ac, i32 %i.vz ; 3 uses
  %spec.select12.i199 = select i1 %.not.i197, i32 0, i32 16 ; 2 uses
  %.not11.i200 = icmp samesign ult i32 %spec.select.i198, 256 ; 2 uses
  %i.wa = lshr i32 %spec.select.i198, 8
  %i.wb = or disjoint i32 %spec.select12.i199, 8
  %.110.i201 = select i1 %.not11.i200, i32 %spec.select.i198, i32 %i.wa
  %.1.i202 = select i1 %.not11.i200, i32 %spec.select12.i199, i32 %i.wb
  %i.wc = zext nneg i32 %.110.i201 to i64
  %i.wd = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !62
  %i.wf = zext i8 %i.we to i32
  %.not.i = icmp ult i32 %i.ad, 65536             ; 2 uses
  %i.wg = lshr i32 %i.ad, 16
  %spec.select.i = select i1 %.not.i, i32 %i.ad, i32 %i.wg ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.wh = lshr i32 %spec.select.i, 8
  %i.wi = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.wh
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.wi
  %i.wj = zext nneg i32 %.110.i to i64
  %i.wk = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.wj
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !62
  %i.wm = zext i8 %i.wl to i32
  %i.wn = add nsw i32 %.1.i202, -2
  %i.wo = add nsw i32 %i.wn, %.1.i
  %i.wp = add nsw i32 %i.wo, %i.wf
  %i.wq = add nsw i32 %i.wp, %i.wm
  %i.wr = ashr i32 %i.wq, 2                       ; 7 uses
  %i.ws = load ptr, ptr %i.va, align 8, !tbaa !680 ; 7 uses
  %i.wt = load ptr, ptr %6, align 8, !tbaa !681   ; 12 uses
  %i.wu = icmp sgt i32 %i.ad, 0
  br i1 %i.wu, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.aq
  %i.wv = icmp sgt i32 %i.ac, 0
  %i.ww = getelementptr i8, ptr %i.ws, i64 -1     ; 4 uses
  %i.wx = getelementptr i8, ptr %i.wt, i64 -1     ; 4 uses
  br i1 %i.wv, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count330 = zext nneg i32 %i.ad to i64 ; 5 uses
  %wide.trip.count320 = zext nneg i32 %i.ac to i64 ; 15 uses
  %wide.trip.count325 = zext nneg i32 %i.ac to i64
  %i.wy = add nsw i64 %i.bm, %wide.trip.count330
  %i.wz = add nsw i64 %i.wy, -1
  %i.xa = mul i64 %i.wz, %i.aj
  %i.xb = getelementptr i8, ptr %i.bi, i64 %i.xa
  %i.xc = getelementptr i8, ptr %i.xb, i64 %i.bk
  %scevgep570 = getelementptr i8, ptr %i.xc, i64 %wide.trip.count320 ; 2 uses
  %scevgep571 = getelementptr i8, ptr %i.ws, i64 %wide.trip.count330
  %scevgep572 = getelementptr i8, ptr %i.wt, i64 %wide.trip.count320
  %i.xd = add nsw i64 %i.bm, %wide.trip.count330
  %i.xe = add nsw i64 %i.xd, -1
  %i.xf = mul i64 %i.xe, %i.aj
  %i.xg = getelementptr i8, ptr %i.bi, i64 %i.xf
  %i.xh = getelementptr i8, ptr %i.xg, i64 %i.bk
  %scevgep625 = getelementptr i8, ptr %i.xh, i64 %wide.trip.count320 ; 4 uses
  %scevgep626 = getelementptr i8, ptr %i.ws, i64 %wide.trip.count330
  %scevgep627 = getelementptr i8, ptr %i.wt, i64 %wide.trip.count320
  %min.iters.check581 = icmp ult i32 %i.ac, 4     ; 2 uses
  %bound0628 = icmp ult ptr %i.bo, %i.ws
  %bound1629 = icmp ult ptr %i.ww, %scevgep625
  %found.conflict630 = and i1 %bound0628, %bound1629
  %bound0632 = icmp ult ptr %i.bo, %scevgep626
  %bound1633 = icmp ult ptr %i.ws, %scevgep625
  %found.conflict634 = and i1 %bound0632, %bound1633
  %stride.check635 = icmp slt i32 %i.ai, 0
  %i.xi = or i1 %found.conflict634, %stride.check635
  %conflict.rdx636 = or i1 %found.conflict630, %i.xi
  %bound0637 = icmp ult ptr %i.bo, %i.wt
  %bound1638 = icmp ult ptr %i.wx, %scevgep625
  %found.conflict639 = and i1 %bound0637, %bound1638
  %conflict.rdx641 = or i1 %found.conflict639, %conflict.rdx636
  %bound0642 = icmp ult ptr %i.bo, %scevgep627
  %bound1643 = icmp ult ptr %i.wt, %scevgep625
  %found.conflict644 = and i1 %bound0642, %bound1643
  %conflict.rdx646 = or i1 %found.conflict644, %conflict.rdx641
  %min.iters.check650 = icmp ult i32 %i.ac, 16
  %i.xj = and i64 %wide.trip.count320, 12
  %n.vec652 = and i64 %wide.trip.count320, 2147483632 ; 4 uses
  %i.xk = icmp eq i32 %i.al, 18
  %broadcast.splatinsert663 = insertelement <16 x i32> poison, i32 %i.wr, i64 0
  %broadcast.splat664 = shufflevector <16 x i32> %broadcast.splatinsert663, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.xl = icmp eq i32 %i.al, 50
  %cmp.n674 = icmp eq i64 %n.vec652, %wide.trip.count320
  %min.epilog.iters.check679 = icmp eq i64 %i.xj, 0
  %n.vec681 = and i64 %wide.trip.count320, 2147483644 ; 3 uses
  %i.xm = icmp eq i32 %i.al, 18
  %broadcast.splatinsert693 = insertelement <4 x i32> poison, i32 %i.wr, i64 0
  %broadcast.splat694 = shufflevector <4 x i32> %broadcast.splatinsert693, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xn = icmp eq i32 %i.al, 50
  %cmp.n707 = icmp eq i64 %n.vec681, %wide.trip.count320
  %bound0573 = icmp ult ptr %i.bo, %scevgep571
  %bound1574 = icmp ult ptr %i.ws, %scevgep570
  %found.conflict575 = and i1 %bound0573, %bound1574
  %bound0576 = icmp ult ptr %i.bo, %scevgep572
  %bound1577 = icmp ult ptr %i.wt, %scevgep570
  %found.conflict578 = and i1 %bound0576, %bound1577
  %stride.check579 = icmp slt i32 %i.ai, 0
  %i.xo = or i1 %found.conflict578, %stride.check579
  %conflict.rdx = or i1 %found.conflict575, %i.xo
  %min.iters.check583 = icmp ult i32 %i.ac, 16
  %i.xp = and i64 %wide.trip.count320, 12
  %n.vec585 = and i64 %wide.trip.count320, 2147483632 ; 4 uses
  %broadcast.splatinsert588 = insertelement <16 x i32> poison, i32 %i.wr, i64 0
  %broadcast.splat589 = shufflevector <16 x i32> %broadcast.splatinsert588, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n598 = icmp eq i64 %n.vec585, %wide.trip.count320
  %min.epilog.iters.check603 = icmp eq i64 %i.xp, 0
  %n.vec605 = and i64 %wide.trip.count320, 2147483644 ; 3 uses
  %broadcast.splatinsert608 = insertelement <4 x i32> poison, i32 %i.wr, i64 0
  %broadcast.splat609 = shufflevector <4 x i32> %broadcast.splatinsert608, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n622 = icmp eq i64 %n.vec605, %wide.trip.count320
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge253
  %indvars.iv327 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next328, %._crit_edge253 ] ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.ws, i64 %indvars.iv327 ; 6 uses
  %i.xr = mul nsw i64 %indvars.iv327, %i.aj
  %i.xs = getelementptr i8, ptr %i.bo, i64 %i.xr  ; 6 uses
  %indvars.iv327.tr = trunc i64 %indvars.iv327 to i32
  %i.xt = shl i32 %indvars.iv327.tr, 1
  %i.xu = ashr i32 %i.xt, %i.wr
  %i.xv = call i32 @llvm.smin.i32(i32 %i.xu, i32 31)
  %i.xw = lshr i32 32, %i.xv                      ; 6 uses
  br i1 %i.pp, label %iter.check600, label %iter.check676

iter.check676:                                    ; preds = %.preheader
  %brmerge735 = select i1 %min.iters.check581, i1 true, i1 %conflict.rdx646
  br i1 %brmerge735, label %.lr.ph252.split.preheader, label %vector.main.loop.iter.check649

vector.main.loop.iter.check649:                   ; preds = %iter.check676
  br i1 %min.iters.check650, label %vec.epilog.ph680, label %vector.ph651

vector.ph651:                                     ; preds = %vector.main.loop.iter.check649
  %broadcast.splatinsert653 = insertelement <16 x i32> poison, i32 %i.xw, i64 0
  %broadcast.splat654 = shufflevector <16 x i32> %broadcast.splatinsert653, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.xx = load i8, ptr %i.xq, align 1, !tbaa !62, !alias.scope !2072
  %broadcast.splatinsert657 = insertelement <16 x i8> poison, i8 %i.xx, i64 0
  %broadcast.splat658 = shufflevector <16 x i8> %broadcast.splatinsert657, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.xy = zext <16 x i8> %broadcast.splat658 to <16 x i32>
  %i.xz = load i8, ptr %i.ww, align 1, !tbaa !62, !alias.scope !2075
  %broadcast.splatinsert659 = insertelement <16 x i8> poison, i8 %i.xz, i64 0
  %broadcast.splat660 = shufflevector <16 x i8> %broadcast.splatinsert659, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ya = zext <16 x i8> %broadcast.splat660 to <16 x i32>
  %i.yb = load i8, ptr %i.wx, align 1, !tbaa !62, !alias.scope !2077
  %broadcast.splatinsert661 = insertelement <16 x i8> poison, i8 %i.yb, i64 0
  %broadcast.splat662 = shufflevector <16 x i8> %broadcast.splatinsert661, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.yc = zext <16 x i8> %broadcast.splat662 to <16 x i32>
  %predphi = select i1 %i.xk, <16 x i32> %broadcast.splat654, <16 x i32> zeroinitializer
  %i.yd = sub nsw <16 x i32> %i.xy, %i.ya
  br label %vector.body665

vector.body665:                                   ; preds = %vector.body665, %vector.ph651
  %index666 = phi i64 [ 0, %vector.ph651 ], [ %index.next671, %vector.body665 ] ; 3 uses
  %vec.ind667 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph651 ], [ %vec.ind.next672, %vector.body665 ] ; 2 uses
  %i.ye = getelementptr i8, ptr %i.xs, i64 %index666 ; 2 uses
  %wide.load668 = load <16 x i8>, ptr %i.ye, align 1, !tbaa !62, !alias.scope !2079, !noalias !2081
  %i.yf = zext <16 x i8> %wide.load668 to <16 x i32>
  %i.yg = getelementptr inbounds nuw i8, ptr %i.wt, i64 %index666
  %wide.load669 = load <16 x i8>, ptr %i.yg, align 1, !tbaa !62, !alias.scope !2083
  %i.yh = zext <16 x i8> %wide.load669 to <16 x i32>
  %i.yi = shl <16 x i32> %vec.ind667, splat (i32 1)
  %i.yj = ashr <16 x i32> %i.yi, %broadcast.splat664
  %i.yk = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.yj, <16 x i32> splat (i32 31))
  %i.yl = lshr <16 x i32> splat (i32 32), %i.yk
  %predphi670 = select i1 %i.xl, <16 x i32> %i.yl, <16 x i32> zeroinitializer
  %i.ym = mul nsw <16 x i32> %i.yd, %predphi670
  %i.yn = sub nsw <16 x i32> %i.yh, %i.yc
  %i.yo = mul nsw <16 x i32> %i.yn, %predphi
  %i.yp = add nsw <16 x i32> %i.yo, splat (i32 32)
  %i.yq = add nsw <16 x i32> %i.yp, %i.ym
  %i.yr = ashr <16 x i32> %i.yq, splat (i32 6)
  %i.ys = add nsw <16 x i32> %i.yr, %i.yf         ; 3 uses
  %i.yt = icmp ult <16 x i32> %i.ys, splat (i32 256)
  %i.yu = icmp sgt <16 x i32> %i.ys, splat (i32 -1)
  %i.yv = sext <16 x i1> %i.yu to <16 x i8>
  %i.yw = trunc nuw <16 x i32> %i.ys to <16 x i8>
  %i.yx = select <16 x i1> %i.yt, <16 x i8> %i.yw, <16 x i8> %i.yv
  store <16 x i8> %i.yx, ptr %i.ye, align 1, !tbaa !62, !alias.scope !2079, !noalias !2081
  %index.next671 = add nuw i64 %index666, 16      ; 2 uses
  %vec.ind.next672 = add <16 x i32> %vec.ind667, splat (i32 16)
  %i.yy = icmp eq i64 %index.next671, %n.vec652
  br i1 %i.yy, label %middle.block673, label %vector.body665, !llvm.loop !2084

middle.block673:                                  ; preds = %vector.body665
  br i1 %cmp.n674, label %._crit_edge253, label %vec.epilog.iter.check678

vec.epilog.iter.check678:                         ; preds = %middle.block673
  br i1 %min.epilog.iters.check679, label %.lr.ph252.split.preheader, label %vec.epilog.ph680, !prof !56

vec.epilog.ph680:                                 ; preds = %vector.main.loop.iter.check649, %vec.epilog.iter.check678
  %vec.epilog.resume.val675 = phi i64 [ %n.vec652, %vec.epilog.iter.check678 ], [ 0, %vector.main.loop.iter.check649 ] ; 2 uses
  %broadcast.splatinsert682 = insertelement <4 x i32> poison, i32 %i.xw, i64 0
  %broadcast.splat683 = shufflevector <4 x i32> %broadcast.splatinsert682, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.yz = load i8, ptr %i.xq, align 1, !tbaa !62, !alias.scope !2072
  %broadcast.splatinsert686 = insertelement <4 x i8> poison, i8 %i.yz, i64 0
  %broadcast.splat687 = shufflevector <4 x i8> %broadcast.splatinsert686, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.za = zext <4 x i8> %broadcast.splat687 to <4 x i32>
  %i.zb = load i8, ptr %i.ww, align 1, !tbaa !62, !alias.scope !2075
  %broadcast.splatinsert688 = insertelement <4 x i8> poison, i8 %i.zb, i64 0
  %broadcast.splat689 = shufflevector <4 x i8> %broadcast.splatinsert688, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.zc = zext <4 x i8> %broadcast.splat689 to <4 x i32>
  %i.zd = load i8, ptr %i.wx, align 1, !tbaa !62, !alias.scope !2077
  %broadcast.splatinsert690 = insertelement <4 x i8> poison, i8 %i.zd, i64 0
  %broadcast.splat691 = shufflevector <4 x i8> %broadcast.splatinsert690, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ze = zext <4 x i8> %broadcast.splat691 to <4 x i32>
  %predphi692 = select i1 %i.xm, <4 x i32> %broadcast.splat683, <4 x i32> zeroinitializer
  %i.zf = sub nsw <4 x i32> %i.za, %i.zc
  %i.zg = trunc nuw nsw i64 %vec.epilog.resume.val675 to i32
  %broadcast.splatinsert695 = insertelement <4 x i32> poison, i32 %i.zg, i64 0
  %broadcast.splat696 = shufflevector <4 x i32> %broadcast.splatinsert695, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction697 = or disjoint <4 x i32> %broadcast.splat696, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body698

vec.epilog.vector.body698:                        ; preds = %vec.epilog.vector.body698, %vec.epilog.ph680
  %index699 = phi i64 [ %vec.epilog.resume.val675, %vec.epilog.ph680 ], [ %index.next704, %vec.epilog.vector.body698 ] ; 3 uses
  %vec.ind700 = phi <4 x i32> [ %induction697, %vec.epilog.ph680 ], [ %vec.ind.next705, %vec.epilog.vector.body698 ] ; 2 uses
  %i.zh = getelementptr i8, ptr %i.xs, i64 %index699 ; 2 uses
  %wide.load701 = load <4 x i8>, ptr %i.zh, align 1, !tbaa !62, !alias.scope !2079, !noalias !2081
  %i.zi = zext <4 x i8> %wide.load701 to <4 x i32>
  %i.zj = getelementptr inbounds nuw i8, ptr %i.wt, i64 %index699
  %wide.load702 = load <4 x i8>, ptr %i.zj, align 1, !tbaa !62, !alias.scope !2083
  %i.zk = zext <4 x i8> %wide.load702 to <4 x i32>
  %i.zl = shl <4 x i32> %vec.ind700, splat (i32 1)
  %i.zm = ashr <4 x i32> %i.zl, %broadcast.splat694
  %i.zn = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zm, <4 x i32> splat (i32 31))
  %i.zo = lshr <4 x i32> splat (i32 32), %i.zn
  %predphi703 = select i1 %i.xn, <4 x i32> %i.zo, <4 x i32> zeroinitializer
  %i.zp = mul nsw <4 x i32> %i.zf, %predphi703
  %i.zq = sub nsw <4 x i32> %i.zk, %i.ze
  %i.zr = mul nsw <4 x i32> %i.zq, %predphi692
  %i.zs = add nsw <4 x i32> %i.zr, splat (i32 32)
  %i.zt = add nsw <4 x i32> %i.zs, %i.zp
  %i.zu = ashr <4 x i32> %i.zt, splat (i32 6)
  %i.zv = add nsw <4 x i32> %i.zu, %i.zi          ; 3 uses
  %i.zw = icmp ult <4 x i32> %i.zv, splat (i32 256)
  %i.zx = icmp sgt <4 x i32> %i.zv, splat (i32 -1)
  %i.zy = sext <4 x i1> %i.zx to <4 x i8>
  %i.zz = trunc nuw <4 x i32> %i.zv to <4 x i8>
  %i.aaa = select <4 x i1> %i.zw, <4 x i8> %i.zz, <4 x i8> %i.zy
  store <4 x i8> %i.aaa, ptr %i.zh, align 1, !tbaa !62, !alias.scope !2079, !noalias !2081
  %index.next704 = add nuw i64 %index699, 4       ; 2 uses
  %vec.ind.next705 = add <4 x i32> %vec.ind700, splat (i32 4)
  %i.aab = icmp eq i64 %index.next704, %n.vec681
  br i1 %i.aab, label %vec.epilog.middle.block706, label %vec.epilog.vector.body698, !llvm.loop !2085

vec.epilog.middle.block706:                       ; preds = %vec.epilog.vector.body698
  br i1 %cmp.n707, label %._crit_edge253, label %.lr.ph252.split.preheader

.lr.ph252.split.preheader:                        ; preds = %iter.check676, %vec.epilog.iter.check678, %vec.epilog.middle.block706
  %indvars.iv317.ph = phi i64 [ 0, %iter.check676 ], [ %n.vec681, %vec.epilog.middle.block706 ], [ %n.vec652, %vec.epilog.iter.check678 ]
  br label %.lr.ph252.split

iter.check600:                                    ; preds = %.preheader
  %brmerge736 = select i1 %min.iters.check581, i1 true, i1 %conflict.rdx
  br i1 %brmerge736, label %.lr.ph252.split.us.preheader, label %vector.main.loop.iter.check582

vector.main.loop.iter.check582:                   ; preds = %iter.check600
  br i1 %min.iters.check583, label %vec.epilog.ph604, label %vector.ph584

vector.ph584:                                     ; preds = %vector.main.loop.iter.check582
  %i.aac = load i8, ptr %i.xq, align 1, !tbaa !62, !alias.scope !2086
  %broadcast.splatinsert586 = insertelement <16 x i8> poison, i8 %i.aac, i64 0
  %broadcast.splat587 = shufflevector <16 x i8> %broadcast.splatinsert586, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aad = zext <16 x i8> %broadcast.splat587 to <16 x i32>
  %broadcast.splatinsert590 = insertelement <16 x i32> poison, i32 %i.xw, i64 0
  %broadcast.splat591 = shufflevector <16 x i32> %broadcast.splatinsert590, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body592

vector.body592:                                   ; preds = %vector.body592, %vector.ph584
  %index593 = phi i64 [ 0, %vector.ph584 ], [ %index.next596, %vector.body592 ] ; 3 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph584 ], [ %vec.ind.next, %vector.body592 ] ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.wt, i64 %index593
  %wide.load594 = load <16 x i8>, ptr %i.aae, align 1, !tbaa !62, !alias.scope !2089
  %i.aaf = zext <16 x i8> %wide.load594 to <16 x i32>
  %i.aag = shl <16 x i32> %vec.ind, splat (i32 1)
  %i.aah = ashr <16 x i32> %i.aag, %broadcast.splat589
  %i.aai = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.aah, <16 x i32> splat (i32 31))
  %i.aaj = lshr <16 x i32> splat (i32 32), %i.aai
  %i.aak = getelementptr i8, ptr %i.xs, i64 %index593 ; 2 uses
  %wide.load595 = load <16 x i8>, ptr %i.aak, align 1, !tbaa !62, !alias.scope !2091, !noalias !2093
  %i.aal = zext <16 x i8> %wide.load595 to <16 x i32> ; 3 uses
  %i.aam = sub nsw <16 x i32> %i.aad, %i.aal
  %i.aan = mul nsw <16 x i32> %i.aam, %i.aaj
  %i.aao = sub nsw <16 x i32> %i.aaf, %i.aal
  %i.aap = mul nsw <16 x i32> %i.aao, %broadcast.splat591
  %i.aaq = add nsw <16 x i32> %i.aap, splat (i32 32)
  %i.aar = add nsw <16 x i32> %i.aaq, %i.aan
  %i.aas = ashr <16 x i32> %i.aar, splat (i32 6)
  %i.aat = add nsw <16 x i32> %i.aas, %i.aal      ; 3 uses
  %i.aau = icmp ult <16 x i32> %i.aat, splat (i32 256)
  %i.aav = icmp sgt <16 x i32> %i.aat, splat (i32 -1)
  %i.aaw = sext <16 x i1> %i.aav to <16 x i8>
  %i.aax = trunc nuw <16 x i32> %i.aat to <16 x i8>
  %i.aay = select <16 x i1> %i.aau, <16 x i8> %i.aax, <16 x i8> %i.aaw
  store <16 x i8> %i.aay, ptr %i.aak, align 1, !tbaa !62, !alias.scope !2091, !noalias !2093
  %index.next596 = add nuw i64 %index593, 16      ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.aaz = icmp eq i64 %index.next596, %n.vec585
  br i1 %i.aaz, label %middle.block597, label %vector.body592, !llvm.loop !2094

middle.block597:                                  ; preds = %vector.body592
  br i1 %cmp.n598, label %._crit_edge253, label %vec.epilog.iter.check602

vec.epilog.iter.check602:                         ; preds = %middle.block597
  br i1 %min.epilog.iters.check603, label %.lr.ph252.split.us.preheader, label %vec.epilog.ph604, !prof !56

vec.epilog.ph604:                                 ; preds = %vector.main.loop.iter.check582, %vec.epilog.iter.check602
  %vec.epilog.resume.val599 = phi i64 [ %n.vec585, %vec.epilog.iter.check602 ], [ 0, %vector.main.loop.iter.check582 ] ; 2 uses
  %i.aba = load i8, ptr %i.xq, align 1, !tbaa !62, !alias.scope !2086
  %broadcast.splatinsert606 = insertelement <4 x i8> poison, i8 %i.aba, i64 0
  %broadcast.splat607 = shufflevector <4 x i8> %broadcast.splatinsert606, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.abb = zext <4 x i8> %broadcast.splat607 to <4 x i32>
  %broadcast.splatinsert610 = insertelement <4 x i32> poison, i32 %i.xw, i64 0
  %broadcast.splat611 = shufflevector <4 x i32> %broadcast.splatinsert610, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abc = trunc nuw nsw i64 %vec.epilog.resume.val599 to i32
  %broadcast.splatinsert612 = insertelement <4 x i32> poison, i32 %i.abc, i64 0
  %broadcast.splat613 = shufflevector <4 x i32> %broadcast.splatinsert612, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat613, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body614

vec.epilog.vector.body614:                        ; preds = %vec.epilog.vector.body614, %vec.epilog.ph604
  %index615 = phi i64 [ %vec.epilog.resume.val599, %vec.epilog.ph604 ], [ %index.next619, %vec.epilog.vector.body614 ] ; 3 uses
  %vec.ind616 = phi <4 x i32> [ %induction, %vec.epilog.ph604 ], [ %vec.ind.next620, %vec.epilog.vector.body614 ] ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.wt, i64 %index615
  %wide.load617 = load <4 x i8>, ptr %i.abd, align 1, !tbaa !62, !alias.scope !2089
  %i.abe = zext <4 x i8> %wide.load617 to <4 x i32>
  %i.abf = shl <4 x i32> %vec.ind616, splat (i32 1)
  %i.abg = ashr <4 x i32> %i.abf, %broadcast.splat609
  %i.abh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.abg, <4 x i32> splat (i32 31))
  %i.abi = lshr <4 x i32> splat (i32 32), %i.abh
  %i.abj = getelementptr i8, ptr %i.xs, i64 %index615 ; 2 uses
  %wide.load618 = load <4 x i8>, ptr %i.abj, align 1, !tbaa !62, !alias.scope !2091, !noalias !2093
  %i.abk = zext <4 x i8> %wide.load618 to <4 x i32> ; 3 uses
  %i.abl = sub nsw <4 x i32> %i.abb, %i.abk
  %i.abm = mul nsw <4 x i32> %i.abl, %i.abi
  %i.abn = sub nsw <4 x i32> %i.abe, %i.abk
  %i.abo = mul nsw <4 x i32> %i.abn, %broadcast.splat611
  %i.abp = add nsw <4 x i32> %i.abo, splat (i32 32)
  %i.abq = add nsw <4 x i32> %i.abp, %i.abm
  %i.abr = ashr <4 x i32> %i.abq, splat (i32 6)
  %i.abs = add nsw <4 x i32> %i.abr, %i.abk       ; 3 uses
  %i.abt = icmp ult <4 x i32> %i.abs, splat (i32 256)
  %i.abu = icmp sgt <4 x i32> %i.abs, splat (i32 -1)
  %i.abv = sext <4 x i1> %i.abu to <4 x i8>
  %i.abw = trunc nuw <4 x i32> %i.abs to <4 x i8>
  %i.abx = select <4 x i1> %i.abt, <4 x i8> %i.abw, <4 x i8> %i.abv
  store <4 x i8> %i.abx, ptr %i.abj, align 1, !tbaa !62, !alias.scope !2091, !noalias !2093
  %index.next619 = add nuw i64 %index615, 4       ; 2 uses
  %vec.ind.next620 = add <4 x i32> %vec.ind616, splat (i32 4)
  %i.aby = icmp eq i64 %index.next619, %n.vec605
  br i1 %i.aby, label %vec.epilog.middle.block621, label %vec.epilog.vector.body614, !llvm.loop !2095

vec.epilog.middle.block621:                       ; preds = %vec.epilog.vector.body614
  br i1 %cmp.n622, label %._crit_edge253, label %.lr.ph252.split.us.preheader

.lr.ph252.split.us.preheader:                     ; preds = %iter.check600, %vec.epilog.iter.check602, %vec.epilog.middle.block621
  %indvars.iv322.ph = phi i64 [ 0, %iter.check600 ], [ %n.vec605, %vec.epilog.middle.block621 ], [ %n.vec585, %vec.epilog.iter.check602 ]
  br label %.lr.ph252.split.us

.lr.ph252.split.us:                               ; preds = %.lr.ph252.split.us.preheader, %.lr.ph252.split.us
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %.lr.ph252.split.us ], [ %indvars.iv322.ph, %.lr.ph252.split.us.preheader ] ; 4 uses
  %i.abz = load i8, ptr %i.xq, align 1, !tbaa !62
  %i.aca = zext i8 %i.abz to i32
  %i.acb = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv322
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !62
  %i.acd = zext i8 %i.acc to i32
  %indvars.iv322.tr = trunc i64 %indvars.iv322 to i32
  %i.ace = shl i32 %indvars.iv322.tr, 1
  %i.acf = ashr i32 %i.ace, %i.wr
  %i.acg = call i32 @llvm.smin.i32(i32 %i.acf, i32 31)
  %i.ach = lshr i32 32, %i.acg
  %i.aci = getelementptr i8, ptr %i.xs, i64 %indvars.iv322 ; 2 uses
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !62
  %i.ack = zext i8 %i.acj to i32                  ; 3 uses
  %i.acl = sub nsw i32 %i.aca, %i.ack
  %i.acm = mul nsw i32 %i.acl, %i.ach
  %i.acn = sub nsw i32 %i.acd, %i.ack
  %i.aco = mul nsw i32 %i.acn, %i.xw
  %i.acp = add nsw i32 %i.aco, 32
  %i.acq = add nsw i32 %i.acp, %i.acm
  %i.acr = ashr i32 %i.acq, 6
  %i.acs = add nsw i32 %i.acr, %i.ack             ; 3 uses
  %.not.i203.us = icmp ult i32 %i.acs, 256
  %isnotneg.i.us = icmp sgt i32 %i.acs, -1
  %i.act = sext i1 %isnotneg.i.us to i8
  %i.acu = trunc nuw i32 %i.acs to i8
  %.0.i.us = select i1 %.not.i203.us, i8 %i.acu, i8 %i.act
  store i8 %.0.i.us, ptr %i.aci, align 1, !tbaa !62
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %._crit_edge253, label %.lr.ph252.split.us, !llvm.loop !2096

._crit_edge253:                                   ; preds = %bb.as, %.lr.ph252.split.us, %middle.block673, %vec.epilog.middle.block706, %middle.block597, %vec.epilog.middle.block621
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %exitcond331.not = icmp eq i64 %indvars.iv.next328, %wide.trip.count330
  br i1 %exitcond331.not, label %.loopexit, label %.preheader, !llvm.loop !2097

.lr.ph252.split:                                  ; preds = %.lr.ph252.split.preheader, %bb.as
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %bb.as ], [ %indvars.iv317.ph, %.lr.ph252.split.preheader ] ; 4 uses
  %i.acv = load i8, ptr %i.xq, align 1, !tbaa !62
  %i.acw = zext i8 %i.acv to i32
  %i.acx = load i8, ptr %i.ww, align 1, !tbaa !62
  %i.acy = zext i8 %i.acx to i32
  %i.acz = getelementptr i8, ptr %i.xs, i64 %indvars.iv317 ; 2 uses
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !62
  %i.adb = zext i8 %i.ada to i32
  %i.adc = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv317
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !62
  %i.ade = zext i8 %i.add to i32
  %i.adf = load i8, ptr %i.wx, align 1, !tbaa !62
  %i.adg = zext i8 %i.adf to i32
  switch i32 %i.al, label %bb.as [
    i32 50, label %.thread213
    i32 18, label %bb.ar
  ]

.thread213:                                       ; preds = %.lr.ph252.split
  %indvars.iv317.tr = trunc i64 %indvars.iv317 to i32
  %i.adh = shl i32 %indvars.iv317.tr, 1
  %i.adi = ashr i32 %i.adh, %i.wr
  %i.adj = call i32 @llvm.smin.i32(i32 %i.adi, i32 31)
  %i.adk = lshr i32 32, %i.adj
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph252.split
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph252.split, %.thread213, %bb.ar
  %.0190 = phi i32 [ %i.adk, %.thread213 ], [ 0, %.lr.ph252.split ], [ 0, %bb.ar ]
  %.0 = phi i32 [ 0, %.thread213 ], [ 0, %.lr.ph252.split ], [ %i.xw, %bb.ar ]
  %i.adl = sub nsw i32 %i.acw, %i.acy
  %i.adm = mul nsw i32 %i.adl, %.0190
  %i.adn = sub nsw i32 %i.ade, %i.adg
  %i.ado = mul nsw i32 %i.adn, %.0
  %i.adp = add nsw i32 %i.ado, 32
  %i.adq = add nsw i32 %i.adp, %i.adm
  %i.adr = ashr i32 %i.adq, 6
  %i.ads = add nsw i32 %i.adr, %i.adb             ; 3 uses
  %.not.i203 = icmp ult i32 %i.ads, 256
  %isnotneg.i = icmp sgt i32 %i.ads, -1
  %i.adt = sext i1 %isnotneg.i to i8
  %i.adu = trunc nuw i32 %i.ads to i8
  %.0.i = select i1 %.not.i203, i8 %i.adu, i8 %i.adt
  store i8 %.0.i, ptr %i.acz, align 1, !tbaa !62
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count320
  br i1 %exitcond321.not, label %._crit_edge253, label %.lr.ph252.split, !llvm.loop !2098

.loopexit:                                        ; preds = %._crit_edge253, %bb.aq, %.preheader.lr.ph, %.thread211, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %.not.i42 = icmp ult i32 %3, 65536              ; 2 uses
  %i.a = lshr i32 %3, 16
  %spec.select.i43 = select i1 %.not.i42, i32 %3, i32 %i.a ; 3 uses
  %spec.select12.i44 = select i1 %.not.i42, i32 0, i32 16 ; 2 uses
  %.not11.i45 = icmp samesign ult i32 %spec.select.i43, 256 ; 2 uses
  %i.b = lshr i32 %spec.select.i43, 8
  %i.c = or disjoint i32 %spec.select12.i44, 8
  %.110.i46 = select i1 %.not11.i45, i32 %spec.select.i43, i32 %i.b
  %.1.i47 = select i1 %.not11.i45, i32 %spec.select12.i44, i32 %i.c
  %i.d = zext nneg i32 %.110.i46 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !62
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %.1.i47, %i.g            ; 4 uses
  %.not.i = icmp ult i32 %4, 65536                ; 2 uses
  %i.i = lshr i32 %4, 16
  %spec.select.i = select i1 %.not.i, i32 %4, i32 %i.i ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i, 8
  %i.k = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.j
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i, %i.o              ; 4 uses
  %i.q = mul nsw i32 %4, %3                       ; 3 uses
  %i.r = add nuw nsw i32 %i.h, 1
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 3 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i32 %3, 0
  %i.v = zext nneg i32 %4 to i64                  ; 4 uses
  %i.w = getelementptr i8, ptr %2, i64 %i.v       ; 5 uses
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %i.x       ; 4 uses
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %i.z = add nsw i64 %i.v, -1
  %i.aa = mul i64 %5, %i.z
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  %scevgep = getelementptr i8, ptr %i.ab, i64 %wide.trip.count ; 4 uses
  %i.ac = getelementptr i8, ptr %1, i64 %i.x
  %scevgep58 = getelementptr i8, ptr %i.ac, i64 1
  %scevgep59 = getelementptr i8, ptr %1, i64 %wide.trip.count
  %i.ad = getelementptr i8, ptr %2, i64 %i.v
  %scevgep60 = getelementptr i8, ptr %i.ad, i64 1
  %min.iters.check = icmp ult i32 %3, 4
  %bound0 = icmp ult ptr %0, %scevgep58
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %0, %scevgep59
  %bound162 = icmp ult ptr %1, %scevgep
  %found.conflict63 = and i1 %bound061, %bound162
  %stride.check64 = icmp slt i64 %5, 0
  %i.ae = or i1 %found.conflict63, %stride.check64
  %conflict.rdx = or i1 %found.conflict, %i.ae
  %bound065 = icmp ult ptr %0, %i.w
  %bound166 = icmp ult ptr %2, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx69 = or i1 %found.conflict67, %conflict.rdx
  %bound070 = icmp ult ptr %0, %scevgep60
  %bound171 = icmp ult ptr %i.w, %scevgep
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx74 = or i1 %found.conflict72, %conflict.rdx69
  %min.iters.check75 = icmp ult i32 %3, 16
  %i.af = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert84 = insertelement <16 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat85 = shufflevector <16 x i32> %broadcast.splatinsert84, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert86 = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat87 = shufflevector <16 x i32> %broadcast.splatinsert86, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <16 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat89 = shufflevector <16 x i32> %broadcast.splatinsert88, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert90 = insertelement <16 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat91 = shufflevector <16 x i32> %broadcast.splatinsert90, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert92 = insertelement <16 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat93 = shufflevector <16 x i32> %broadcast.splatinsert92, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  %n.vec96 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert107 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat108 = shufflevector <4 x i32> %broadcast.splatinsert107, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat110 = shufflevector <4 x i32> %broadcast.splatinsert109, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat112 = shufflevector <4 x i32> %broadcast.splatinsert111, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat114 = shufflevector <4 x i32> %broadcast.splatinsert113, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n129 = icmp eq i64 %n.vec96, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 4 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.ah = xor i32 %i.ag, -1
  %i.ai = add nsw i32 %4, %i.ah                   ; 3 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52 ; 3 uses
  %i.ak = mul nsw i64 %5, %indvars.iv52
  %i.al = getelementptr i8, ptr %0, i64 %i.ak     ; 3 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next53 to i32 ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx74
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.an = load i8, ptr %i.w, align 1, !tbaa !62, !alias.scope !2099
  %broadcast.splatinsert76 = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat77 = shufflevector <16 x i8> %broadcast.splatinsert76, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ao = zext <16 x i8> %broadcast.splat77 to <16 x i32>
  %i.ap = mul nuw nsw <16 x i32> %broadcast.splat, %i.ao
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !62, !alias.scope !2102
  %broadcast.splatinsert78 = insertelement <16 x i8> poison, i8 %i.aq, i64 0
  %broadcast.splat79 = shufflevector <16 x i8> %broadcast.splatinsert78, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ar = zext <16 x i8> %broadcast.splat79 to <16 x i32>
  %i.as = load i8, ptr %i.y, align 1, !tbaa !62, !alias.scope !2104
  %broadcast.splatinsert80 = insertelement <16 x i8> poison, i8 %i.as, i64 0
  %broadcast.splat81 = shufflevector <16 x i8> %broadcast.splatinsert80, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.at = zext <16 x i8> %broadcast.splat81 to <16 x i32>
  %broadcast.splatinsert82 = insertelement <16 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat83 = shufflevector <16 x i32> %broadcast.splatinsert82, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind94 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next95, %vector.body ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !62, !alias.scope !2106
  %i.av = zext <16 x i8> %wide.load to <16 x i32>
  %i.aw = mul nsw <16 x i32> %broadcast.splat83, %i.av
  %i.ax = add nsw <16 x i32> %i.ap, %i.aw
  %i.ay = shl <16 x i32> %i.ax, %broadcast.splat85
  %i.az = xor <16 x i32> %vec.ind94, splat (i32 -1)
  %i.ba = add nsw <16 x i32> %broadcast.splat87, %i.az
  %i.bb = mul nsw <16 x i32> %i.ba, %i.ar
  %i.bc = trunc <16 x i64> %vec.ind to <16 x i32>
  %i.bd = add <16 x i32> %i.bc, splat (i32 1)
  %i.be = mul nuw nsw <16 x i32> %i.bd, %i.at
  %i.bf = add nsw <16 x i32> %i.be, %i.bb
  %i.bg = shl <16 x i32> %i.bf, %broadcast.splat89
  %i.bh = add <16 x i32> %i.ay, %broadcast.splat91
  %i.bi = add <16 x i32> %i.bh, %i.bg
  %i.bj = ashr <16 x i32> %i.bi, %broadcast.splat93
  %i.bk = trunc <16 x i32> %i.bj to <16 x i8>
  %i.bl = getelementptr i8, ptr %i.al, i64 %index
  store <16 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !62, !alias.scope !2108, !noalias !2110
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next95 = add <16 x i32> %vec.ind94, splat (i32 16)
end_hunk_4
begin_hunk_5_@pred_angular_v_8:bb.a
  %i.dm = icmp eq i64 %indvars.iv139.ph, %i.af
  br i1 %i.dm, label %.loopexit113, label %vec.epilog.scalar.ph221

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %iter.check, label %.loopexit113

iter.check:                                       ; preds = %bb.f
  %i.dn = zext nneg i32 %i.ak to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dn
  %i.dp = sext i32 %i.aj to i64                   ; 2 uses
  %invariant.gep124 = getelementptr i8, ptr %i.e, i64 %i.dp ; 4 uses
  %i.dq = load <4 x i8>, ptr %i.do, align 4, !tbaa !62
  %i.dr = sext <4 x i8> %i.dq to <4 x i32>        ; 9 uses
  %i.ds = mul nsw i64 %5, %indvars.iv154
  %i.dt = getelementptr i8, ptr %0, i64 %i.ds     ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.dp
  %bound0 = icmp ult ptr %0, %scevgep166
  %bound1 = icmp ult ptr %invariant.gep124, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.du = or i1 %found.conflict, %stride.check
  br i1 %i.du, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check167, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splat = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat169 = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat171 = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat173 = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dv = getelementptr i8, ptr %invariant.gep124, i64 %index ; 4 uses
  %wide.load = load <16 x i8>, ptr %i.dv, align 1, !tbaa !62, !alias.scope !2161
  %i.dw = zext <16 x i8> %wide.load to <16 x i32>
  %i.dx = mul nsw <16 x i32> %broadcast.splat, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %wide.load174 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !62, !alias.scope !2161
  %i.dz = zext <16 x i8> %wide.load174 to <16 x i32>
  %i.ea = mul nsw <16 x i32> %broadcast.splat169, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %wide.load175 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !62, !alias.scope !2161
  %i.ec = zext <16 x i8> %wide.load175 to <16 x i32>
  %i.ed = mul nsw <16 x i32> %broadcast.splat171, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %wide.load176 = load <16 x i8>, ptr %i.ee, align 1, !tbaa !62, !alias.scope !2161
  %i.ef = zext <16 x i8> %wide.load176 to <16 x i32>
  %i.eg = mul nsw <16 x i32> %broadcast.splat173, %i.ef
  %i.eh = add nsw <16 x i32> %i.dx, splat (i32 32)
  %i.ei = add nsw <16 x i32> %i.eh, %i.ea
  %i.ej = add nsw <16 x i32> %i.ei, %i.ed
  %i.ek = add nsw <16 x i32> %i.ej, %i.eg
  %i.el = ashr <16 x i32> %i.ek, splat (i32 6)    ; 3 uses
  %i.em = icmp ult <16 x i32> %i.el, splat (i32 256)
  %i.en = icmp sgt <16 x i32> %i.el, splat (i32 -1)
  %i.eo = sext <16 x i1> %i.en to <16 x i8>
  %i.ep = trunc nuw <16 x i32> %i.el to <16 x i8>
  %i.eq = select <16 x i1> %i.em, <16 x i8> %i.ep, <16 x i8> %i.eo
  %i.er = getelementptr i8, ptr %i.dt, i64 %index
  store <16 x i8> %i.eq, ptr %i.er, align 1, !tbaa !62, !alias.scope !2164, !noalias !2161
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !2166

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit113, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splat179 = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat181 = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat183 = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat185 = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index186 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next191, %vec.epilog.vector.body ] ; 3 uses
  %i.et = getelementptr i8, ptr %invariant.gep124, i64 %index186 ; 4 uses
  %wide.load187 = load <4 x i8>, ptr %i.et, align 1, !tbaa !62, !alias.scope !2161
  %i.eu = zext <4 x i8> %wide.load187 to <4 x i32>
  %i.ev = mul nsw <4 x i32> %broadcast.splat179, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %wide.load188 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !62, !alias.scope !2161
  %i.ex = zext <4 x i8> %wide.load188 to <4 x i32>
  %i.ey = mul nsw <4 x i32> %broadcast.splat181, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %wide.load189 = load <4 x i8>, ptr %i.ez, align 1, !tbaa !62, !alias.scope !2161
  %i.fa = zext <4 x i8> %wide.load189 to <4 x i32>
  %i.fb = mul nsw <4 x i32> %broadcast.splat183, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 3
  %wide.load190 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !62, !alias.scope !2161
  %i.fd = zext <4 x i8> %wide.load190 to <4 x i32>
  %i.fe = mul nsw <4 x i32> %broadcast.splat185, %i.fd
  %i.ff = add nsw <4 x i32> %i.ev, splat (i32 32)
  %i.fg = add nsw <4 x i32> %i.ff, %i.ey
  %i.fh = add nsw <4 x i32> %i.fg, %i.fb
  %i.fi = add nsw <4 x i32> %i.fh, %i.fe
  %i.fj = ashr <4 x i32> %i.fi, splat (i32 6)     ; 3 uses
  %i.fk = icmp ult <4 x i32> %i.fj, splat (i32 256)
  %i.fl = icmp sgt <4 x i32> %i.fj, splat (i32 -1)
  %i.fm = sext <4 x i1> %i.fl to <4 x i8>
  %i.fn = trunc nuw <4 x i32> %i.fj to <4 x i8>
  %i.fo = select <4 x i1> %i.fk, <4 x i8> %i.fn, <4 x i8> %i.fm
  %i.fp = getelementptr i8, ptr %i.dt, i64 %index186
  store <4 x i8> %i.fo, ptr %i.fp, align 1, !tbaa !62, !alias.scope !2164, !noalias !2161
  %index.next191 = add nuw i64 %index186, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next191, %n.vec177
  br i1 %i.fq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2167

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n192, label %.loopexit113, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv144.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec177, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %vec.epilog.scalar.ph ], [ %indvars.iv144.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %gep125 = getelementptr i8, ptr %invariant.gep124, i64 %indvars.iv144
  %i.fr = load <4 x i8>, ptr %gep125, align 1, !tbaa !62
  %i.fs = zext <4 x i8> %i.fr to <4 x i32>
  %i.ft = mul nsw <4 x i32> %i.dr, %i.fs
  %i.fu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ft)
  %op.rdx = add i32 %i.fu, 32
  %i.fv = ashr i32 %op.rdx, 6                     ; 3 uses
  %.not.i110 = icmp ult i32 %i.fv, 256
  %isnotneg.i111 = icmp sgt i32 %i.fv, -1
  %i.fw = sext i1 %isnotneg.i111 to i8
  %i.fx = trunc nuw i32 %i.fv to i8
  %.0.i112 = select i1 %.not.i110, i8 %i.fx, i8 %i.fw
  %i.fy = getelementptr i8, ptr %i.dt, i64 %indvars.iv144
  store i8 %.0.i112, ptr %i.fy, align 1, !tbaa !62
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %.loopexit113, label %vec.epilog.scalar.ph, !llvm.loop !2168

vec.epilog.scalar.ph221:                          ; preds = %vec.epilog.scalar.ph221.prol.loopexit, %vec.epilog.scalar.ph221
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.1, %vec.epilog.scalar.ph221 ], [ %indvars.iv139.unr, %vec.epilog.scalar.ph221.prol.loopexit ] ; 4 uses
  %gep121 = getelementptr i8, ptr %invariant.gep120, i64 %indvars.iv139 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %gep121, i64 1
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !62
  %i.gb = zext i8 %i.ga to i32
  %i.gc = mul nuw nsw i32 %i.bv, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %gep121, i64 2
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !62
  %i.gf = zext i8 %i.ge to i32
  %i.gg = mul nuw nsw i32 %i.ak, %i.gf
  %i.gh = add nuw nsw i32 %i.gc, 16
  %i.gi = add nuw nsw i32 %i.gh, %i.gg
  %i.gj = lshr i32 %i.gi, 5
  %i.gk = trunc i32 %i.gj to i8
  %i.gl = getelementptr i8, ptr %i.bx, i64 %indvars.iv139
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !62
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %gep121.1 = getelementptr i8, ptr %invariant.gep120, i64 %indvars.iv.next140 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %gep121.1, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !62
  %i.go = zext i8 %i.gn to i32
  %i.gp = mul nuw nsw i32 %i.bv, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %gep121.1, i64 2
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !62
  %i.gs = zext i8 %i.gr to i32
  %i.gt = mul nuw nsw i32 %i.ak, %i.gs
  %i.gu = add nuw nsw i32 %i.gp, 16
  %i.gv = add nuw nsw i32 %i.gu, %i.gt
  %i.gw = lshr i32 %i.gv, 5
  %i.gx = trunc i32 %i.gw to i8
  %i.gy = getelementptr i8, ptr %i.bx, i64 %indvars.iv.next140
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !62
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %exitcond143.not.1 = icmp eq i64 %indvars.iv.next140.1, %wide.trip.count142
  br i1 %exitcond143.not.1, label %.loopexit113, label %vec.epilog.scalar.ph221, !llvm.loop !2169

.loopexit113:                                     ; preds = %vec.epilog.scalar.ph253.prol.loopexit, %vec.epilog.scalar.ph253, %vec.epilog.scalar.ph221.prol.loopexit, %vec.epilog.scalar.ph221, %vec.epilog.scalar.ph, %middle.block249, %vec.epilog.middle.block262, %middle.block217, %vec.epilog.middle.block235, %middle.block, %vec.epilog.middle.block, %.preheader115, %.preheader, %bb.f
  br i1 %brmerge, label %.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.loopexit113
  %i.gz = mul nsw i64 %5, %indvars.iv154
  %i.ha = getelementptr i8, ptr %0, i64 %i.gz
  %i.hb = trunc nuw nsw i64 %indvars.iv154 to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph128, %bb.g
  %indvars.iv149 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next150, %bb.g ] ; 3 uses
  %.099126 = phi i32 [ %i.o, %.lr.ph128 ], [ %i.hv, %bb.g ] ; 2 uses
  %i.hc = ashr i32 %.099126, 9
  %i.hd = add nsw i32 %i.hc, %i.hb
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds i8, ptr %2, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !62
  %i.hh = getelementptr i8, ptr %i.ha, i64 %indvars.iv149 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !62
  %indvars.iv149.tr = trunc i64 %indvars.iv149 to i32
  %i.hj = shl i32 %indvars.iv149.tr, 1
  %i.hk = ashr i32 %i.hj, %.0106
  %i.hl = lshr i32 32, %i.hk
  %i.hm = zext i8 %i.hi to i32                    ; 2 uses
  %i.hn = zext i8 %i.hg to i32
  %i.ho = sub nsw i32 %i.hn, %i.hm
  %i.hp = mul nsw i32 %i.ho, %i.hl
  %i.hq = add nsw i32 %i.hp, 32
  %i.hr = ashr i32 %i.hq, 6
  %i.hs = add nsw i32 %i.hr, %i.hm                ; 3 uses
  %.not.i = icmp ult i32 %i.hs, 256
  %isnotneg.i = icmp sgt i32 %i.hs, -1
  %i.ht = sext i1 %isnotneg.i to i8
  %i.hu = trunc nuw i32 %i.hs to i8
  %.0.i = select i1 %.not.i, i8 %i.hu, i8 %i.ht
  store i8 %.0.i, ptr %i.hh, align 1, !tbaa !62
  %i.hv = add nsw i32 %.099126, %.0105
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.loopexit, label %bb.g, !llvm.loop !2170

.loopexit:                                        ; preds = %bb.g, %.loopexit113
  %i.hw = add nsw i32 %.0100132, %i.f
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %._crit_edge, label %bb.d, !llvm.loop !2171
}

; Function Attrs: nounwind uwtable
define internal void @pred_angular_h_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #5 {
bb.a:
  %i.a = add nsw i32 %8, 1
  %narrow = xor i32 %8, -1
  %i.b = sext i32 %narrow to i64
  %i.c = getelementptr inbounds i8, ptr %2, i64 %i.b ; 3 uses
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %i.d = tail call i32 @ff_vvc_intra_pred_angle_derive(i32 noundef %7) #14 ; 5 uses
  %.not79 = icmp ne i32 %10, 0                    ; 4 uses
  br i1 %.not79, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @ff_vvc_intra_inv_angle_derive(i32 noundef %i.d) #14 ; 2 uses
  %i.f = add nsw i32 %i.e, 256
  %i.g = tail call i32 @ff_vvc_nscale_derive(i32 noundef %3, i32 noundef %4, i32 noundef %7) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %.078 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %.075 = phi i32 [ %i.f, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.c
  %i.j = mul nsw i32 %i.d, %i.a                   ; 3 uses
  %i.k = icmp sgt i32 %3, 0
  %i.l = icmp ne i32 %9, 0
  %or.cond = and i1 %.not, %i.l                   ; 3 uses
  %i.m = sext i32 %9 to i64
  %i.n = getelementptr inbounds [128 x i8], ptr @ff_vvc_intra_luma_filter, i64 %i.m ; 2 uses
  br i1 %i.k, label %.lr.ph92.split.us, label %._crit_edge93

.lr.ph92.split.us:                                ; preds = %.lr.ph92
  %i.o = shl i32 3, %.078
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %wide.trip.count124 = zext nneg i32 %4 to i64   ; 2 uses
  %wide.trip.count114 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %.not, label %.lr.ph92.split.us.split.us.preheader, label %.lr.ph92.split.us.split

.lr.ph92.split.us.split.us.preheader:             ; preds = %.lr.ph92.split.us
  %wide.trip.count119 = zext nneg i32 %3 to i64
  br label %.lr.ph92.split.us.split.us

.lr.ph92.split.us.split.us:                       ; preds = %.lr.ph92.split.us.split.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv121 = phi i64 [ 0, %.lr.ph92.split.us.split.us.preheader ], [ %indvars.iv.next122, %._crit_edge.split.us.us.us ] ; 7 uses
  %.17689.us.us = phi i32 [ %.075, %.lr.ph92.split.us.split.us.preheader ], [ %spec.select.us.us, %._crit_edge.split.us.us.us ] ; 2 uses
  br i1 %.not79, label %.lr.ph.us.us, label %.lr.ph.us.us.thread

.lr.ph.us.us.thread:                              ; preds = %.lr.ph92.split.us.split.us
  %i.q = mul nsw i64 %5, %indvars.iv121
  br label %.lr.ph.split.us.us.us.split.preheader

.lr.ph.us.us:                                     ; preds = %.lr.ph92.split.us.split.us
  %indvars.iv121.tr = trunc i64 %indvars.iv121 to i32
  %i.r = shl i32 %indvars.iv121.tr, 1
  %i.s = lshr i32 %i.r, %.078
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.s, i32 31)
  %i.u = lshr i32 32, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv121
  %i.w = icmp slt i64 %indvars.iv121, %i.p
  %i.x = mul nsw i64 %5, %indvars.iv121           ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %i.x
  br i1 %i.w, label %.lr.ph.split.us.us.us.split.us.preheader, label %.lr.ph.split.us.us.us.split.preheader

.lr.ph.split.us.us.us.split.preheader:            ; preds = %.lr.ph.us.us.thread, %.lr.ph.us.us
  %i.z = phi i64 [ %i.q, %.lr.ph.us.us.thread ], [ %i.x, %.lr.ph.us.us ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv121
  %i.ab = getelementptr i8, ptr %0, i64 %i.z
  br label %.lr.ph.split.us.us.us.split

.lr.ph.split.us.us.us.split.us.preheader:         ; preds = %.lr.ph.us.us
  %i.ac = ashr i32 %.17689.us.us, 9
  %i.ad = sext i32 %i.ac to i64
  %invariant.gep131 = getelementptr i8, ptr %1, i64 %i.ad
  br label %.lr.ph.split.us.us.us.split.us

.lr.ph.split.us.us.us.split.us:                   ; preds = %.lr.ph.split.us.us.us.split.us.preheader, %bb.f
  %indvars.iv116 = phi i64 [ 0, %.lr.ph.split.us.us.us.split.us.preheader ], [ %indvars.iv.next117, %bb.f ] ; 3 uses
  %.07387.us.us.us.us = phi i32 [ %i.j, %.lr.ph.split.us.us.us.split.us.preheader ], [ %i.cg, %bb.f ] ; 3 uses
  %i.ae = ashr i32 %.07387.us.us.us.us, 5
  %i.af = add nsw i32 %i.ae, %8
  %i.ag = and i32 %.07387.us.us.us.us, 31         ; 2 uses
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds i8, ptr %i.v, i64 %i.ah ; 5 uses
  %.not80.us.us.us.us = icmp ne i32 %i.ag, 0
  %or.cond81.us.us.us.us = or i1 %or.cond, %.not80.us.us.us.us
  br i1 %or.cond81.us.us.us.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.us.us.split.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !62
  %i.al = zext i8 %i.ak to i32
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us.us.us.split.us
  %i.am = zext nneg i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.am ; 4 uses
  %i.ao = load i8, ptr %i.ai, align 1, !tbaa !62
  %i.ap = zext i8 %i.ao to i32
  %i.aq = load i8, ptr %i.an, align 4, !tbaa !62
  %i.ar = sext i8 %i.aq to i32
  %i.as = mul nsw i32 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !62
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = sext i8 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !62
  %i.bc = zext i8 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !62
  %i.bf = sext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.bf, %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !62
  %i.bj = zext i8 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !62
  %i.bm = sext i8 %i.bl to i32
  %i.bn = mul nsw i32 %i.bm, %i.bj
  %i.bo = add nsw i32 %i.as, 32
  %i.bp = add nsw i32 %i.bo, %i.az
  %i.bq = add nsw i32 %i.bp, %i.bg
  %i.br = add nsw i32 %i.bq, %i.bn
  %i.bs = ashr i32 %i.br, 6
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 255)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.us.us.us.us = phi i32 [ %i.al, %bb.d ], [ %i.bu, %bb.e ] ; 2 uses
  %gep132 = getelementptr i8, ptr %invariant.gep131, i64 %indvars.iv116
  %i.bv = load i8, ptr %gep132, align 1, !tbaa !62
  %i.bw = zext i8 %i.bv to i32
  %i.bx = sub nsw i32 %i.bw, %.0.us.us.us.us
  %i.by = mul nsw i32 %i.bx, %i.u
  %i.bz = add nsw i32 %i.by, 32
  %i.ca = ashr i32 %i.bz, 6
  %i.cb = add nsw i32 %i.ca, %.0.us.us.us.us
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 255)
  %i.ce = trunc nuw i32 %i.cd to i8
  %i.cf = getelementptr i8, ptr %i.y, i64 %indvars.iv116
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !62
  %i.cg = add nsw i32 %.07387.us.us.us.us, %i.d
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge.split.us.us.us, label %.lr.ph.split.us.us.us.split.us, !llvm.loop !2172

.lr.ph.split.us.us.us.split:                      ; preds = %.lr.ph.split.us.us.us.split.preheader, %bb.i
  %indvars.iv111 = phi i64 [ 0, %.lr.ph.split.us.us.us.split.preheader ], [ %indvars.iv.next112, %bb.i ] ; 2 uses
  %.07387.us.us.us = phi i32 [ %i.j, %.lr.ph.split.us.us.us.split.preheader ], [ %i.dz, %bb.i ] ; 3 uses
  %i.ch = ashr i32 %.07387.us.us.us, 5
  %i.ci = add nsw i32 %i.ch, %8
  %i.cj = and i32 %.07387.us.us.us, 31            ; 2 uses
  %i.ck = sext i32 %i.ci to i64
  %i.cl = getelementptr inbounds i8, ptr %i.aa, i64 %i.ck ; 5 uses
  %.not80.us.us.us = icmp ne i32 %i.cj, 0
  %or.cond81.us.us.us = or i1 %or.cond, %.not80.us.us.us
  br i1 %or.cond81.us.us.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.us.us.split
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !62
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.us.us.split
  %i.co = zext nneg i32 %i.cj to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.co ; 4 uses
  %i.cq = load i8, ptr %i.cl, align 1, !tbaa !62
  %i.cr = zext i8 %i.cq to i32
  %i.cs = load i8, ptr %i.cp, align 4, !tbaa !62
  %i.ct = sext i8 %i.cs to i32
  %i.cu = mul nsw i32 %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !62
  %i.cx = zext i8 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !62
  %i.da = sext i8 %i.cz to i32
  %i.db = mul nsw i32 %i.da, %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !62
  %i.de = zext i8 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !62
  %i.dh = sext i8 %i.dg to i32
  %i.di = mul nsw i32 %i.dh, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !62
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !62
  %i.do = sext i8 %i.dn to i32
  %i.dp = mul nsw i32 %i.do, %i.dl
  %i.dq = add nsw i32 %i.cu, 32
  %i.dr = add nsw i32 %i.dq, %i.db
  %i.ds = add nsw i32 %i.dr, %i.di
  %i.dt = add nsw i32 %i.ds, %i.dp
  %i.du = ashr i32 %i.dt, 6
  %i.dv = tail call i32 @llvm.smax.i32(i32 %i.du, i32 0)
  %i.dw = tail call i32 @llvm.umin.i32(i32 %i.dv, i32 255)
  %i.dx = trunc nuw i32 %i.dw to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.us.us.us = phi i8 [ %i.cn, %bb.g ], [ %i.dx, %bb.h ]
  %i.dy = getelementptr i8, ptr %i.ab, i64 %indvars.iv111
  store i8 %.0.us.us.us, ptr %i.dy, align 1, !tbaa !62
  %i.dz = add nsw i32 %.07387.us.us.us, %i.d
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge.split.us.us.us, label %.lr.ph.split.us.us.us.split, !llvm.loop !2172

._crit_edge.split.us.us.us:                       ; preds = %bb.i, %bb.f
  %spec.select.us.us = add nsw i32 %.17689.us.us, %i.h
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge93, label %.lr.ph92.split.us.split.us, !llvm.loop !2173

.lr.ph92.split.us.split:                          ; preds = %.lr.ph92.split.us, %._crit_edge.split.us100
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %._crit_edge.split.us100 ], [ 0, %.lr.ph92.split.us ] ; 5 uses
  %.17689.us = phi i32 [ %spec.select.us, %._crit_edge.split.us100 ], [ %.075, %.lr.ph92.split.us ] ; 2 uses
  br i1 %.not79, label %bb.j, label %.lr.ph.us

bb.j:                                             ; preds = %.lr.ph92.split.us.split
  %indvars.iv106.tr = trunc i64 %indvars.iv106 to i32
  %i.ea = shl i32 %indvars.iv106.tr, 1
  %i.eb = lshr i32 %i.ea, %.078
  %i.ec = tail call i32 @llvm.umin.i32(i32 %i.eb, i32 31)
  %i.ed = lshr i32 32, %i.ec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.j, %.lr.ph92.split.us.split
  %.072.us = phi i32 [ %i.ed, %bb.j ], [ undef, %.lr.ph92.split.us.split ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv106
  %i.ef = icmp slt i64 %indvars.iv106, %i.p
  %or.cond83.us = select i1 %.not79, i1 %i.ef, i1 false
  %i.eg = ashr i32 %.17689.us, 9
  %i.eh = mul nsw i64 %5, %indvars.iv106
  %i.ei = getelementptr i8, ptr %0, i64 %i.eh
  %i.ej = sext i32 %i.eg to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.ej
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.us, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.07387.us95 = phi i32 [ %i.j, %.lr.ph.us ], [ %i.fp, %bb.p ] ; 3 uses
  %i.ek = ashr i32 %.07387.us95, 5
  %i.el = add nsw i32 %i.ek, %8
  %i.em = and i32 %.07387.us95, 31                ; 3 uses
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds i8, ptr %i.ee, i64 %i.en ; 3 uses
  %.not80.us96 = icmp ne i32 %i.em, 0
  %or.cond81.us97 = or i1 %or.cond, %.not80.us96
  br i1 %or.cond81.us97, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !62
  %i.er = zext i8 %i.eq to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.es = sub nuw nsw i32 32, %i.em
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !62
  %i.ev = zext i8 %i.eu to i32
  %i.ew = mul nuw nsw i32 %i.es, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !62
  %i.ez = zext i8 %i.ey to i32
  %i.fa = mul nuw nsw i32 %i.em, %i.ez
  %i.fb = add nuw nsw i32 %i.ew, 16
  %i.fc = add nuw nsw i32 %i.fb, %i.fa
  %i.fd = lshr i32 %i.fc, 5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.us98 = phi i32 [ %i.fd, %bb.m ], [ %i.er, %bb.l ] ; 3 uses
  br i1 %or.cond83.us, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.fe = load i8, ptr %gep, align 1, !tbaa !62
  %i.ff = zext i8 %i.fe to i32
  %i.fg = sub nsw i32 %i.ff, %.0.us98
  %i.fh = mul nsw i32 %i.fg, %.072.us
  %i.fi = add nsw i32 %i.fh, 32
  %i.fj = ashr i32 %i.fi, 6
  %i.fk = add nsw i32 %i.fj, %.0.us98
  %i.fl = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 0)
  %i.fm = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 255)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.us99 = phi i32 [ %i.fm, %bb.o ], [ %.0.us98, %bb.n ]
  %i.fn = trunc i32 %.1.us99 to i8
  %i.fo = getelementptr i8, ptr %i.ei, i64 %indvars.iv
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !62
  %i.fp = add nsw i32 %.07387.us95, %i.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count114
  br i1 %exitcond.not, label %._crit_edge.split.us100, label %bb.k, !llvm.loop !2172

._crit_edge.split.us100:                          ; preds = %bb.p
  %spec.select.us = add nsw i32 %.17689.us, %i.h
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count124
  br i1 %exitcond110.not, label %._crit_edge93, label %.lr.ph92.split.us.split, !llvm.loop !2173

._crit_edge93:                                    ; preds = %._crit_edge.split.us100, %._crit_edge.split.us.us.us, %.lr.ph92, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add_residual_8(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge23.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  %sext = shl i64 %4, 32
  %i.c = ashr exact i64 %sext, 32                 ; 3 uses
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge23.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64      ; 7 uses
  %i.d = add nsw i32 %3, -1
  %i.e = zext i32 %i.d to i64
  %i.f = mul nsw i64 %i.c, %i.e
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.g, i64 %wide.trip.count
  %i.h = shl nuw nsw i64 %wide.trip.count, 2
  %min.iters.check = icmp ult i32 %2, 8
  %stride.check = icmp slt i64 %i.c, 0
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.i = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.j = add nsw i64 %wide.trip.count, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01522 = phi i32 [ %i.ap, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.01621 = phi ptr [ %i.ao, %._crit_edge ], [ %0, %.preheader.preheader ] ; 5 uses
  %.01720 = phi ptr [ %.lcssa, %._crit_edge ], [ %1, %.preheader.preheader ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep28 = getelementptr i8, ptr %.01720, i64 %i.h
  %bound0 = icmp ult ptr %0, %scevgep28
  %bound1 = icmp ult ptr %.01720, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.k = or i1 %found.conflict, %stride.check
  br i1 %i.k, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = getelementptr i8, ptr %.01720, i64 %i.i  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.01720, i64 %i.m ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01621, i64 %index ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.n, align 1, !tbaa !62, !alias.scope !2174, !noalias !2177
  %wide.load29 = load <4 x i8>, ptr %i.o, align 1, !tbaa !62, !alias.scope !2174, !noalias !2177
  %i.p = zext <4 x i8> %wide.load to <4 x i32>
  %i.q = zext <4 x i8> %wide.load29 to <4 x i32>
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  %wide.load30 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !555, !alias.scope !2177
  %wide.load31 = load <4 x i32>, ptr %i.r, align 4, !tbaa !555, !alias.scope !2177
  %i.s = add nsw <4 x i32> %wide.load30, %i.p     ; 3 uses
  %i.t = add nsw <4 x i32> %wide.load31, %i.q     ; 3 uses
  %i.u = icmp ult <4 x i32> %i.s, splat (i32 256)
  %i.v = icmp ult <4 x i32> %i.t, splat (i32 256)
  %i.w = icmp sgt <4 x i32> %i.s, splat (i32 -1)
  %i.x = icmp sgt <4 x i32> %i.t, splat (i32 -1)
  %i.y = sext <4 x i1> %i.w to <4 x i8>
  %i.z = sext <4 x i1> %i.x to <4 x i8>
  %i.aa = trunc nuw <4 x i32> %i.s to <4 x i8>
  %i.ab = trunc nuw <4 x i32> %i.t to <4 x i8>
  %i.ac = select <4 x i1> %i.u, <4 x i8> %i.aa, <4 x i8> %i.y
  %i.ad = select <4 x i1> %i.v, <4 x i8> %i.ab, <4 x i8> %i.z
  store <4 x i8> %i.ac, ptr %i.n, align 1, !tbaa !62, !alias.scope !2174, !noalias !2177
  store <4 x i8> %i.ad, ptr %i.o, align 1, !tbaa !62, !alias.scope !2174, !noalias !2177
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !2179

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.118.ph = phi ptr [ %.01720, %vector.memcheck ], [ %.01720, %.preheader ], [ %i.l, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %.01621, i64 %indvars.iv.ph ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !62
  %i.ah = zext i8 %i.ag to i32
  %i.ai = load i32, ptr %.118.ph, align 4, !tbaa !555
  %i.aj = add nsw i32 %i.ai, %i.ah                ; 3 uses
  %.not.i.prol = icmp ult i32 %i.aj, 256
  %isnotneg.i.prol = icmp sgt i32 %i.aj, -1
  %i.ak = sext i1 %isnotneg.i.prol to i8
  %i.al = trunc nuw i32 %i.aj to i8
  %.0.i.prol = select i1 %.not.i.prol, i8 %i.al, i8 %i.ak
  store i8 %.0.i.prol, ptr %i.af, align 1, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %.118.ph, i64 4 ; 2 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa33.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.118.unr = phi ptr [ %.118.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = icmp eq i64 %indvars.iv.ph, %i.j
  br i1 %i.an, label %._crit_edge, label %scalar.ph

._crit_edge23.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

end_hunk_5
