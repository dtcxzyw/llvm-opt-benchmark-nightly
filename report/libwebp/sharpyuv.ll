Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/sharpyuv?download=true
inline.NumInlined: 45
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@DoSharpArgbToYuv:bb.a
  %i.wp = add <2 x i64> %i.wo, %i.wl
  %i.wq = add <2 x i64> %i.wp, %i.wn
  %i.wr = add <2 x i64> %i.wq, %i.vm
  %i.ws = ashr <2 x i64> %i.wr, %broadcast.splat362
  %i.wt = trunc <2 x i64> %i.ws to <2 x i16>
  %i.wu = tail call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.wt, <2 x i16> zeroinitializer)
  %i.wv = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.wu, <2 x i16> splat (i16 255))
  %i.ww = trunc nuw <2 x i16> %i.wv to <2 x i8>
  %i.wx = getelementptr inbounds nuw i8, ptr %.096.us.i, i64 %index364
  store <2 x i8> %i.ww, ptr %i.wx, align 1, !tbaa !19, !alias.scope !45, !noalias !44
  %index.next372 = add nuw i64 %index364, 2       ; 2 uses
  %i.wy = icmp eq i64 %index.next372, %n.vec352
  br i1 %i.wy, label %middle.block373, label %vector.body363, !llvm.loop !32

middle.block373:                                  ; preds = %vector.body363
  br i1 %cmp.n374, label %.split109.us.us.i, label %scalar.ph349.preheader

scalar.ph349.preheader:                           ; preds = %.split.us.us.i, %middle.block373
  %indvars.iv126.i.ph = phi i64 [ %n.vec352, %middle.block373 ], [ 0, %.split.us.us.i ]
  br label %scalar.ph349

scalar.ph349:                                     ; preds = %scalar.ph349.preheader, %scalar.ph349
  %indvars.iv126.i = phi i64 [ %indvars.iv.next127.i, %scalar.ph349 ], [ %indvars.iv126.i.ph, %scalar.ph349.preheader ] ; 4 uses
  %i.wz = trunc nuw nsw i64 %indvars.iv126.i to i32
  %i.xa = lshr i32 %i.wz, 1                       ; 3 uses
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %.093.us.i, i64 %indvars.iv126.i
  %i.xc = load i16, ptr %i.xb, align 2, !tbaa !15
  %i.xd = zext i16 %i.xc to i32                   ; 3 uses
  %i.xe = zext nneg i32 %i.xa to i64
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i, i64 %i.xe
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !15
  %i.xh = sext i16 %i.xg to i32
  %i.xi = add nsw i32 %i.xh, %i.xd
  %i.xj = add nsw i32 %i.xa, %i.e
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds [2 x i8], ptr %.094.us.i, i64 %i.xk
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !15
  %i.xn = sext i16 %i.xm to i32
  %i.xo = add nsw i32 %i.xn, %i.xd
  %i.xp = add nsw i32 %i.xa, %i.b
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds [2 x i8], ptr %.094.us.i, i64 %i.xq
  %i.xs = load i16, ptr %i.xr, align 2, !tbaa !15
  %i.xt = sext i16 %i.xs to i32
  %i.xu = add nsw i32 %i.xt, %i.xd
  %i.xv = load i32, ptr %15, align 4, !tbaa !13
  %i.xw = sext i32 %i.xv to i64
  %i.xx = sext i32 %i.xi to i64
  %i.xy = mul nsw i64 %i.xw, %i.xx
  %i.xz = load i32, ptr %i.up, align 4, !tbaa !13
  %i.ya = sext i32 %i.xz to i64
  %i.yb = sext i32 %i.xo to i64
  %i.yc = mul nsw i64 %i.ya, %i.yb
  %i.yd = load i32, ptr %i.uq, align 4, !tbaa !13
  %i.ye = sext i32 %i.yd to i64
  %i.yf = sext i32 %i.xu to i64
  %i.yg = mul nsw i64 %i.ye, %i.yf
  %i.yh = load i32, ptr %i.ur, align 4, !tbaa !13
  %i.yi = sext i32 %i.yh to i64
  %i.yj = add i64 %i.xy, %i.uo
  %i.yk = add i64 %i.yj, %i.yc
  %i.yl = add i64 %i.yk, %i.yg
  %i.ym = add i64 %i.yl, %i.yi
  %i.yn = ashr i64 %i.ym, %i.us
  %i.yo = trunc i64 %i.yn to i16
  %i.yp = tail call i16 @llvm.smax.i16(i16 %i.yo, i16 0)
  %i.yq = tail call i16 @llvm.umin.i16(i16 %i.yp, i16 255)
  %i.yr = trunc nuw i16 %i.yq to i8
  %i.ys = getelementptr inbounds nuw i8, ptr %.096.us.i, i64 %indvars.iv126.i
  store i8 %i.yr, ptr %i.ys, align 1, !tbaa !19
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next127.i, %wide.trip.count130.i
  br i1 %exitcond131.not.i, label %.split109.us.us.i, label %scalar.ph349, !llvm.loop !33

.split109.us.us.i:                                ; preds = %scalar.ph349, %middle.block373
  %i.yt = getelementptr inbounds [2 x i8], ptr %.093.us.i, i64 %i.k
  %i.yu = trunc i32 %.0.us.i to i1
  %i.yv = select i1 %i.yu, i32 3, i32 0
  %i.yw = mul nsw i32 %i.yv, %i.e
  %i.yx = sext i32 %i.yw to i64
  %i.yy = getelementptr inbounds [2 x i8], ptr %.094.us.i, i64 %i.yx
  %i.yz = getelementptr inbounds i8, ptr %.096.us.i, i64 %i.uu
  %i.za = add nuw nsw i32 %.0.us.i, 1             ; 2 uses
  %exitcond133.not.i = icmp eq i32 %i.za, %smax132.i
  br i1 %exitcond133.not.i, label %.preheader.i, label %.split.us.us.i, !llvm.loop !34

.split.i:                                         ; preds = %.split109.i, %.split.preheader.i
  %.096.i = phi ptr [ %i.aau, %.split109.i ], [ %6, %.split.preheader.i ] ; 2 uses
  %.094.i = phi ptr [ %i.aat, %.split109.i ], [ %i.ai, %.split.preheader.i ] ; 4 uses
  %.093.i = phi ptr [ %i.aao, %.split109.i ], [ %i.af, %.split.preheader.i ] ; 2 uses
  %.0.i = phi i32 [ %i.aav, %.split109.i ], [ 0, %.split.preheader.i ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.split.i
  %indvars.iv.i271 = phi i64 [ %indvars.iv.next.i272, %bb.l ], [ 0, %.split.i ] ; 4 uses
  %i.zb = trunc nuw nsw i64 %indvars.iv.i271 to i32
  %i.zc = lshr i32 %i.zb, 1                       ; 3 uses
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr %.093.i, i64 %indvars.iv.i271
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !15
  %i.zf = zext i16 %i.ze to i32                   ; 3 uses
  %i.zg = zext nneg i32 %i.zc to i64
  %i.zh = getelementptr inbounds nuw [2 x i8], ptr %.094.i, i64 %i.zg
  %i.zi = load i16, ptr %i.zh, align 2, !tbaa !15
  %i.zj = sext i16 %i.zi to i32
  %i.zk = add nsw i32 %i.zj, %i.zf
  %i.zl = add nsw i32 %i.zc, %i.e
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds [2 x i8], ptr %.094.i, i64 %i.zm
  %i.zo = load i16, ptr %i.zn, align 2, !tbaa !15
  %i.zp = sext i16 %i.zo to i32
  %i.zq = add nsw i32 %i.zp, %i.zf
  %i.zr = add nsw i32 %i.zc, %i.b
  %i.zs = sext i32 %i.zr to i64
  %i.zt = getelementptr inbounds [2 x i8], ptr %.094.i, i64 %i.zs
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !15
  %i.zv = sext i16 %i.zu to i32
  %i.zw = add nsw i32 %i.zv, %i.zf
  %i.zx = sext i32 %i.zk to i64
  %i.zy = mul nsw i64 %i.zx, %i.uv
  %i.zz = sext i32 %i.zq to i64
  %i.aaa = mul nsw i64 %i.zz, %i.uw
  %i.aab = sext i32 %i.zw to i64
  %i.aac = mul nsw i64 %i.aab, %i.ux
  %i.aad = add i64 %i.uz, %i.zy
  %i.aae = add i64 %i.aad, %i.aaa
  %i.aaf = add i64 %i.aae, %i.aac
  %i.aag = ashr i64 %i.aaf, %i.us                 ; 2 uses
  %i.aah = and i64 %i.aag, 32768
  %.not.i = icmp eq i64 %i.aah, 0
  %i.aai = trunc i64 %i.aag to i32
  %i.aaj = and i32 %i.aai, 65535
  %i.aak = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.uk, i32 %i.aaj)
  %i.aal = trunc nuw i32 %i.aak to i16
  %i.aam = select i1 %.not.i, i16 %i.aal, i16 0
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %.096.i, i64 %indvars.iv.i271
  store i16 %i.aam, ptr %i.aan, align 2, !tbaa !15
  %indvars.iv.next.i272 = add nuw nsw i64 %indvars.iv.i271, 1 ; 2 uses
  %exitcond.not.i273 = icmp eq i64 %indvars.iv.next.i272, %wide.trip.count.i270
  br i1 %exitcond.not.i273, label %.split109.i, label %bb.l, !llvm.loop !35

.split109.i:                                      ; preds = %bb.l
  %i.aao = getelementptr inbounds [2 x i8], ptr %.093.i, i64 %i.k
  %i.aap = trunc i32 %.0.i to i1
  %i.aaq = select i1 %i.aap, i32 3, i32 0
  %i.aar = mul nsw i32 %i.aaq, %i.e
  %i.aas = sext i32 %i.aar to i64
  %i.aat = getelementptr inbounds [2 x i8], ptr %.094.i, i64 %i.aas
  %i.aau = getelementptr inbounds i8, ptr %.096.i, i64 %i.uu
  %i.aav = add nuw nsw i32 %.0.i, 1               ; 2 uses
  %exitcond125.not.i = icmp eq i32 %i.aav, %smax132.i
  br i1 %exitcond125.not.i, label %.preheader.i, label %.split.i, !llvm.loop !34

.preheader.i:                                     ; preds = %.split109.i, %.split109.us.us.i
  %i.aaw = getelementptr i8, ptr %15, i64 16      ; 5 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 3 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %15, i64 28 ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %15, i64 44 ; 3 uses
  %i.abe = sext i32 %9 to i64                     ; 3 uses
  %i.abf = sext i32 %11 to i64                    ; 3 uses
  %smax145.i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1) ; 2 uses
  %smax148.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1) ; 3 uses
  br i1 %i.ut, label %.split115.us.us.preheader.i, label %.split115.preheader.i

.split115.preheader.i:                            ; preds = %.preheader.i
  %.pre153.pre.i = load i32, ptr %i.aaw, align 4, !tbaa !13
  %.pre154.pre.i = load i32, ptr %i.aax, align 4, !tbaa !13
  %.pre155.pre.i = load i32, ptr %i.aay, align 4, !tbaa !13
  %.pre156.pre.i = load i32, ptr %i.aaz, align 4, !tbaa !13
  %.pre157.pre.i = load i32, ptr %i.aba, align 4, !tbaa !13
  %.pre158.pre.i = load i32, ptr %i.abb, align 4, !tbaa !13
  %.pre159.pre.i = load i32, ptr %i.abc, align 4, !tbaa !13
  %.pre160.pre.i = load i32, ptr %i.abd, align 4, !tbaa !13
  %wide.trip.count138.i = zext nneg i32 %smax145.i to i64
  %i.abg = sext i32 %.pre153.pre.i to i64
  %i.abh = sext i32 %.pre154.pre.i to i64
  %i.abi = sext i32 %.pre155.pre.i to i64
  %i.abj = sext i32 %.pre156.pre.i to i64
  %i.abk = sext i32 %.pre157.pre.i to i64
  %i.abl = sext i32 %.pre158.pre.i to i64
  %i.abm = sext i32 %.pre159.pre.i to i64
  %i.abn = sext i32 %.pre160.pre.i to i64
  %i.abo = add i64 %i.uo, %i.abj
  %i.abp = add i64 %i.uo, %i.abn
  br label %.split115.i

.split115.us.us.preheader.i:                      ; preds = %.preheader.i
  %wide.trip.count146.i = zext nneg i32 %smax145.i to i64 ; 5 uses
  %i.abq = zext nneg i32 %smax148.i to i64
  %i.abr = add nsw i64 %i.abq, -1                 ; 2 uses
  %i.abs = mul nsw i64 %i.abr, %i.abe
  %i.abt = getelementptr i8, ptr %8, i64 %i.abs
  %scevgep377 = getelementptr i8, ptr %i.abt, i64 %wide.trip.count146.i ; 2 uses
  %i.abu = mul nsw i64 %i.abr, %i.abf
  %i.abv = getelementptr i8, ptr %10, i64 %i.abu
  %scevgep378 = getelementptr i8, ptr %i.abv, i64 %wide.trip.count146.i ; 2 uses
  %scevgep379 = getelementptr i8, ptr %15, i64 48 ; 2 uses
  %min.iters.check396 = icmp slt i32 %i.e, 12
  %bound0380 = icmp ult ptr %8, %scevgep378
  %bound1381 = icmp ult ptr %10, %scevgep377
  %found.conflict382 = and i1 %bound0380, %bound1381
  %i.abw = or i32 %11, %9
  %i.abx = icmp slt i32 %i.abw, 0
  %i.aby = or i1 %found.conflict382, %i.abx
  %bound0385 = icmp ult ptr %8, %scevgep379
  %bound1386 = icmp ult ptr %i.aaw, %scevgep377
  %found.conflict387 = and i1 %bound0385, %bound1386
  %conflict.rdx389 = or i1 %i.aby, %found.conflict387
  %bound0390 = icmp ult ptr %10, %scevgep379
  %bound1391 = icmp ult ptr %i.aaw, %scevgep378
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx394 = or i1 %conflict.rdx389, %found.conflict392
  %n.vec398 = and i64 %wide.trip.count146.i, 2147483644 ; 3 uses
  %broadcast.splatinsert415.a = insertelement <4 x i64> poison, i64 %i.uo, i64 0
  %broadcast.splat416.a = shufflevector <4 x i64> %broadcast.splatinsert415.a, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert417 = insertelement <4 x i64> poison, i64 %i.us, i64 0
  %broadcast.splat418 = shufflevector <4 x i64> %broadcast.splatinsert417, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n426 = icmp eq i64 %n.vec398, %wide.trip.count146.i
  br label %.split115.us.us.i

.split115.us.us.i:                                ; preds = %.split117.us.us.i, %.split115.us.us.preheader.i
  %.098.us.i = phi ptr [ %i.afv, %.split117.us.us.i ], [ %10, %.split115.us.us.preheader.i ] ; 3 uses
  %.097.us.i = phi ptr [ %i.afu, %.split117.us.us.i ], [ %8, %.split115.us.us.preheader.i ] ; 3 uses
  %.195.us.i = phi ptr [ %i.aft, %.split117.us.us.i ], [ %i.ai, %.split115.us.us.preheader.i ] ; 5 uses
  %.1.us.i = phi i32 [ %i.afw, %.split117.us.us.i ], [ 0, %.split115.us.us.preheader.i ]
  %invariant.gep169.i = getelementptr [2 x i8], ptr %.195.us.i, i64 %i.p ; 2 uses
  %invariant.gep171.i = getelementptr [2 x i8], ptr %.195.us.i, i64 %i.k ; 2 uses
  %brmerge442 = select i1 %min.iters.check396, i1 true, i1 %conflict.rdx394
  br i1 %brmerge442, label %scalar.ph395.preheader, label %vector.ph397

vector.ph397:                                     ; preds = %.split115.us.us.i
  %i.abz = load i32, ptr %i.aaw, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert399.a = insertelement <4 x i32> poison, i32 %i.abz, i64 0
  %broadcast.splat400.a = shufflevector <4 x i32> %broadcast.splatinsert399.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aca = sext <4 x i32> %broadcast.splat400.a to <4 x i64>
  %i.acb = load i32, ptr %i.aax, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert401.a = insertelement <4 x i32> poison, i32 %i.acb, i64 0
  %broadcast.splat402.a = shufflevector <4 x i32> %broadcast.splatinsert401.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acc = sext <4 x i32> %broadcast.splat402.a to <4 x i64>
  %i.acd = load i32, ptr %i.aay, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert403.a = insertelement <4 x i32> poison, i32 %i.acd, i64 0
  %broadcast.splat404.a = shufflevector <4 x i32> %broadcast.splatinsert403.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ace = sext <4 x i32> %broadcast.splat404.a to <4 x i64>
  %i.acf = load i32, ptr %i.aaz, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert405.a = insertelement <4 x i32> poison, i32 %i.acf, i64 0
  %broadcast.splat406.a = shufflevector <4 x i32> %broadcast.splatinsert405.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acg = sext <4 x i32> %broadcast.splat406.a to <4 x i64>
  %i.ach = load i32, ptr %i.aba, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert407.a = insertelement <4 x i32> poison, i32 %i.ach, i64 0
  %broadcast.splat408.a = shufflevector <4 x i32> %broadcast.splatinsert407.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aci = sext <4 x i32> %broadcast.splat408.a to <4 x i64>
  %i.acj = load i32, ptr %i.abb, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert409.a = insertelement <4 x i32> poison, i32 %i.acj, i64 0
  %broadcast.splat410.a = shufflevector <4 x i32> %broadcast.splatinsert409.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ack = sext <4 x i32> %broadcast.splat410.a to <4 x i64>
  %i.acl = load i32, ptr %i.abc, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert411.a = insertelement <4 x i32> poison, i32 %i.acl, i64 0
  %broadcast.splat412.a = shufflevector <4 x i32> %broadcast.splatinsert411.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acm = sext <4 x i32> %broadcast.splat412.a to <4 x i64>
  %i.acn = load i32, ptr %i.abd, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %i.acn, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aco = sext <4 x i32> %broadcast.splat414 to <4 x i64>
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph397
  %index420 = phi i64 [ 0, %vector.ph397 ], [ %index.next424, %vector.body419 ] ; 6 uses
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i, i64 %index420
  %wide.load421.a = load <4 x i16>, ptr %i.acp, align 2, !tbaa !15
  %i.acq = getelementptr [2 x i8], ptr %invariant.gep169.i, i64 %index420
  %wide.load422 = load <4 x i16>, ptr %i.acq, align 2, !tbaa !15
  %i.acr = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %index420
  %wide.load423 = load <4 x i16>, ptr %i.acr, align 2, !tbaa !15
  %i.acs = sext <4 x i16> %wide.load421.a to <4 x i64> ; 2 uses
  %i.act = mul nsw <4 x i64> %i.aca, %i.acs
  %i.acu = sext <4 x i16> %wide.load422 to <4 x i64> ; 2 uses
  %i.acv = mul nsw <4 x i64> %i.acc, %i.acu
  %i.acw = sext <4 x i16> %wide.load423 to <4 x i64> ; 2 uses
  %i.acx = mul nsw <4 x i64> %i.ace, %i.acw
  %i.acy = add <4 x i64> %i.act, %broadcast.splat416.a
  %i.acz = add <4 x i64> %i.acy, %i.acv
  %i.ada = add <4 x i64> %i.acz, %i.acx
  %i.adb = add <4 x i64> %i.ada, %i.acg
  %i.adc = ashr <4 x i64> %i.adb, %broadcast.splat418
  %i.add = mul nsw <4 x i64> %i.aci, %i.acs
  %i.ade = mul nsw <4 x i64> %i.ack, %i.acu
  %i.adf = mul nsw <4 x i64> %i.acm, %i.acw
  %i.adg = add <4 x i64> %i.add, %broadcast.splat416.a
  %i.adh = add <4 x i64> %i.adg, %i.ade
  %i.adi = add <4 x i64> %i.adh, %i.adf
  %i.adj = add <4 x i64> %i.adi, %i.aco
  %i.adk = ashr <4 x i64> %i.adj, %broadcast.splat418
  %i.adl = trunc <4 x i64> %i.adc to <4 x i16>
  %i.adm = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.adl, <4 x i16> zeroinitializer)
  %i.adn = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.adm, <4 x i16> splat (i16 255))
  %i.ado = trunc nuw <4 x i16> %i.adn to <4 x i8>
  %i.adp = getelementptr inbounds nuw i8, ptr %.097.us.i, i64 %index420
  store <4 x i8> %i.ado, ptr %i.adp, align 1, !tbaa !19, !alias.scope !47, !noalias !48
  %i.adq = trunc <4 x i64> %i.adk to <4 x i16>
  %i.adr = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.adq, <4 x i16> zeroinitializer)
  %i.ads = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.adr, <4 x i16> splat (i16 255))
  %i.adt = trunc nuw <4 x i16> %i.ads to <4 x i8>
  %i.adu = getelementptr inbounds nuw i8, ptr %.098.us.i, i64 %index420
  store <4 x i8> %i.adt, ptr %i.adu, align 1, !tbaa !19, !alias.scope !49, !noalias !46
  %index.next424 = add nuw i64 %index420, 4       ; 2 uses
  %i.adv = icmp eq i64 %index.next424, %n.vec398
  br i1 %i.adv, label %middle.block425, label %vector.body419, !llvm.loop !40

middle.block425:                                  ; preds = %vector.body419
  br i1 %cmp.n426, label %.split117.us.us.i, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %.split115.us.us.i, %middle.block425
  %indvars.iv142.i.ph = phi i64 [ %n.vec398, %middle.block425 ], [ 0, %.split115.us.us.i ]
  br label %scalar.ph395

scalar.ph395:                                     ; preds = %scalar.ph395.preheader, %scalar.ph395
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %scalar.ph395 ], [ %indvars.iv142.i.ph, %scalar.ph395.preheader ] ; 6 uses
  %i.adw = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i, i64 %indvars.iv142.i
  %i.adx = load i16, ptr %i.adw, align 2, !tbaa !15
  %gep170.i = getelementptr [2 x i8], ptr %invariant.gep169.i, i64 %indvars.iv142.i
  %i.ady = load i16, ptr %gep170.i, align 2, !tbaa !15
  %gep172.i = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %indvars.iv142.i
  %i.adz = load i16, ptr %gep172.i, align 2, !tbaa !15
  %i.aea = load i32, ptr %i.aaw, align 4, !tbaa !13
  %i.aeb = sext i32 %i.aea to i64
  %i.aec = sext i16 %i.adx to i64                 ; 2 uses
  %i.aed = mul nsw i64 %i.aeb, %i.aec
  %i.aee = load i32, ptr %i.aax, align 4, !tbaa !13
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = sext i16 %i.ady to i64                 ; 2 uses
  %i.aeh = mul nsw i64 %i.aef, %i.aeg
  %i.aei = load i32, ptr %i.aay, align 4, !tbaa !13
  %i.aej = sext i32 %i.aei to i64
  %i.aek = sext i16 %i.adz to i64                 ; 2 uses
  %i.ael = mul nsw i64 %i.aej, %i.aek
  %i.aem = load i32, ptr %i.aaz, align 4, !tbaa !13
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = add i64 %i.aed, %i.uo
  %i.aep = add i64 %i.aeo, %i.aeh
  %i.aeq = add i64 %i.aep, %i.ael
  %i.aer = add i64 %i.aeq, %i.aen
  %i.aes = ashr i64 %i.aer, %i.us
  %i.aet = load i32, ptr %i.aba, align 4, !tbaa !13
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = mul nsw i64 %i.aeu, %i.aec
  %i.aew = load i32, ptr %i.abb, align 4, !tbaa !13
  %i.aex = sext i32 %i.aew to i64
  %i.aey = mul nsw i64 %i.aex, %i.aeg
  %i.aez = load i32, ptr %i.abc, align 4, !tbaa !13
  %i.afa = sext i32 %i.aez to i64
  %i.afb = mul nsw i64 %i.afa, %i.aek
  %i.afc = load i32, ptr %i.abd, align 4, !tbaa !13
  %i.afd = sext i32 %i.afc to i64
  %i.afe = add i64 %i.aev, %i.uo
  %i.aff = add i64 %i.afe, %i.aey
  %i.afg = add i64 %i.aff, %i.afb
  %i.afh = add i64 %i.afg, %i.afd
  %i.afi = ashr i64 %i.afh, %i.us
  %i.afj = trunc i64 %i.aes to i16
  %i.afk = tail call i16 @llvm.smax.i16(i16 %i.afj, i16 0)
  %i.afl = tail call i16 @llvm.umin.i16(i16 %i.afk, i16 255)
  %i.afm = trunc nuw i16 %i.afl to i8
  %i.afn = getelementptr inbounds nuw i8, ptr %.097.us.i, i64 %indvars.iv142.i
  store i8 %i.afm, ptr %i.afn, align 1, !tbaa !19
  %i.afo = trunc i64 %i.afi to i16
  %i.afp = tail call i16 @llvm.smax.i16(i16 %i.afo, i16 0)
  %i.afq = tail call i16 @llvm.umin.i16(i16 %i.afp, i16 255)
  %i.afr = trunc nuw i16 %i.afq to i8
  %i.afs = getelementptr inbounds nuw i8, ptr %.098.us.i, i64 %indvars.iv142.i
  store i8 %i.afr, ptr %i.afs, align 1, !tbaa !19
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next143.i, %wide.trip.count146.i
  br i1 %exitcond147.not.i, label %.split117.us.us.i, label %scalar.ph395, !llvm.loop !41

.split117.us.us.i:                                ; preds = %scalar.ph395, %middle.block425
  %i.aft = getelementptr inbounds [2 x i8], ptr %.195.us.i, i64 %.pre-phi311
  %i.afu = getelementptr inbounds i8, ptr %.097.us.i, i64 %i.abe
  %i.afv = getelementptr inbounds i8, ptr %.098.us.i, i64 %i.abf
  %i.afw = add nuw nsw i32 %.1.us.i, 1            ; 2 uses
  %exitcond149.not.i = icmp eq i32 %i.afw, %smax148.i
  br i1 %exitcond149.not.i, label %ConvertWRGBToYUV.exit, label %.split115.us.us.i, !llvm.loop !42

.split115.i:                                      ; preds = %.split117.i, %.split115.preheader.i
  %.098.i = phi ptr [ %i.ahi, %.split117.i ], [ %10, %.split115.preheader.i ] ; 2 uses
  %.097.i = phi ptr [ %i.ahh, %.split117.i ], [ %8, %.split115.preheader.i ] ; 2 uses
  %.195.i = phi ptr [ %i.ahg, %.split117.i ], [ %i.ai, %.split115.preheader.i ] ; 4 uses
  %.1.i = phi i32 [ %i.ahj, %.split117.i ], [ 0, %.split115.preheader.i ]
  %invariant.gep.i274 = getelementptr [2 x i8], ptr %.195.i, i64 %i.p
  %invariant.gep167.i = getelementptr [2 x i8], ptr %.195.i, i64 %i.k
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.split115.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %bb.m ], [ 0, %.split115.i ] ; 6 uses
  %i.afx = getelementptr inbounds nuw [2 x i8], ptr %.195.i, i64 %indvars.iv134.i
  %i.afy = load i16, ptr %i.afx, align 2, !tbaa !15
  %gep.i275 = getelementptr [2 x i8], ptr %invariant.gep.i274, i64 %indvars.iv134.i
  %i.afz = load i16, ptr %gep.i275, align 2, !tbaa !15
  %gep168.i = getelementptr [2 x i8], ptr %invariant.gep167.i, i64 %indvars.iv134.i
  %i.aga = load i16, ptr %gep168.i, align 2, !tbaa !15
  %i.agb = sext i16 %i.afy to i64                 ; 2 uses
  %i.agc = mul nsw i64 %i.agb, %i.abg
  %i.agd = sext i16 %i.afz to i64                 ; 2 uses
  %i.age = mul nsw i64 %i.agd, %i.abh
  %i.agf = sext i16 %i.aga to i64                 ; 2 uses
  %i.agg = mul nsw i64 %i.agf, %i.abi
  %i.agh = add i64 %i.abo, %i.agc
  %i.agi = add i64 %i.agh, %i.age
  %i.agj = add i64 %i.agi, %i.agg
  %i.agk = ashr i64 %i.agj, %i.us                 ; 2 uses
  %i.agl = mul nsw i64 %i.agb, %i.abk
  %i.agm = mul nsw i64 %i.agd, %i.abl
  %i.agn = mul nsw i64 %i.agf, %i.abm
end_hunk_0
