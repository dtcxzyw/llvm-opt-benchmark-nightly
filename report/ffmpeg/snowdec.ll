Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowdec?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decode_frame:bb.a
  br i1 %.not364.not, label %decode_header.exit.thread, label %bb.de

bb.dd:                                            ; preds = %bb.da
  %i.wq = getelementptr inbounds nuw i8, ptr %i.i, i64 155096
  store i32 0, ptr %i.wq, align 8, !tbaa !105
  %i.wr = getelementptr inbounds nuw i8, ptr %i.i, i64 155088
  tail call void @av_freep(ptr noundef nonnull %i.wr) #9
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %i.ws = getelementptr inbounds nuw i8, ptr %i.i, i64 155100 ; 5 uses
  store i32 0, ptr %i.ws, align 4, !tbaa !106
  %i.wt = getelementptr inbounds nuw i8, ptr %i.i, i64 6368 ; 6 uses
  %i.wu = load i32, ptr %i.wt, align 8, !tbaa !101 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.i, i64 6372 ; 7 uses
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !102 ; 2 uses
  %i.wx = icmp sgt i32 %i.ww, 0
  br i1 %i.wx, label %.preheader.lr.ph.i, label %decode_blocks.exit

.preheader.lr.ph.i:                               ; preds = %bb.de
  %i.wy = icmp sgt i32 %i.wu, 0
  %i.wz = getelementptr inbounds nuw i8, ptr %i.i, i64 552
  %i.xa = getelementptr inbounds nuw i8, ptr %i.i, i64 560
  br i1 %i.wy, label %.preheader.i, label %decode_blocks.exit

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge.i513
  %.019.i = phi i32 [ %i.xg, %._crit_edge.i513 ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  br label %bb.dg

bb.df:                                            ; preds = %bb.dh
  %i.xb = add nuw nsw i32 %.01418.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.xb, %i.wu
  br i1 %exitcond.not.i, label %._crit_edge.i513, label %bb.dg, !llvm.loop !107

bb.dg:                                            ; preds = %bb.df, %.preheader.i
  %.01418.i = phi i32 [ 0, %.preheader.i ], [ %i.xb, %bb.df ] ; 2 uses
  %i.xc = load ptr, ptr %i.wz, align 8, !tbaa !108
  %i.xd = load ptr, ptr %i.xa, align 8, !tbaa !109
  %.not.i512 = icmp ult ptr %i.xc, %i.xd
  br i1 %.not.i512, label %bb.dh, label %decode_header.exit.thread

bb.dh:                                            ; preds = %bb.dg
  %i.xe = call fastcc i32 @decode_q_branch(ptr noundef nonnull %i.i, i32 noundef 0, i32 noundef %.01418.i, i32 noundef %.019.i) ; 2 uses
  %i.xf = icmp slt i32 %i.xe, 0
  br i1 %i.xf, label %decode_header.exit.thread, label %bb.df

._crit_edge.i513:                                 ; preds = %bb.df
  %i.xg = add nuw nsw i32 %.019.i, 1              ; 2 uses
  %exitcond21.not.i = icmp eq i32 %i.xg, %i.ww
  br i1 %exitcond21.not.i, label %decode_blocks.exit, label %.preheader.i, !llvm.loop !110

decode_blocks.exit:                               ; preds = %._crit_edge.i513, %bb.de, %.preheader.lr.ph.i
  %i.xh = load i32, ptr %i.ug, align 8, !tbaa !71
  %i.xi = icmp sgt i32 %i.xh, 0
  br i1 %i.xi, label %.lr.ph704, label %._crit_edge705

.lr.ph704:                                        ; preds = %decode_blocks.exit
  %i.xj = getelementptr inbounds nuw i8, ptr %i.i, i64 6288
  %i.xk = getelementptr inbounds nuw i8, ptr %i.i, i64 155032 ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.i, i64 155080 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.i, i64 1848
  %i.xn = getelementptr inbounds nuw i8, ptr %i.i, i64 288 ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.i, i64 552 ; 12 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.i, i64 560 ; 6 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.i, i64 568 ; 12 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.i, i64 1744
  %i.xt = getelementptr inbounds nuw i8, ptr %i.i, i64 6312
  %i.xu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.i, i64 1760
  %i.xy = getelementptr inbounds nuw i8, ptr %i.i, i64 155088
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph704, %._crit_edge702
  %indvars.iv795 = phi i64 [ 0, %.lr.ph704 ], [ %indvars.iv.next796, %._crit_edge702 ] ; 14 uses
  %i.xz = getelementptr inbounds nuw [37160 x i8], ptr %i.ts, i64 %indvars.iv795 ; 13 uses
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !95 ; 9 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 4 ; 4 uses
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !94
  %.fr = freeze i32 %i.yc                         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.yd = load ptr, ptr %i.rm, align 8, !tbaa !62
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 524
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !90
  %i.yg = and i32 %i.yf, 2048
  %.not368 = icmp eq i32 %i.yg, 0
  br i1 %.not368, label %.loopexit624, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.yh = load ptr, ptr %i.xj, align 8, !tbaa !111
  %i.yi = sext i32 %i.ya to i64
  %i.yj = shl nsw i64 %i.yi, 2
  %i.yk = sext i32 %.fr to i64
  %i.yl = mul i64 %i.yj, %i.yk
  call void @llvm.memset.p0.i64(ptr align 4 %i.yh, i8 0, i64 %i.yl, i1 false)
  %i.ym = load ptr, ptr %i.uc, align 8, !tbaa !96 ; 6 uses
  %i.yn = load i32, ptr %i.wv, align 4, !tbaa !102
  %i.yo = load i32, ptr %i.sr, align 8, !tbaa !57
  %i.yp = shl i32 %i.yn, %i.yo                    ; 2 uses
  %.not.i651 = icmp slt i32 %i.yp, 0
  br i1 %.not.i651, label %predict_plane.exit.preheader, label %.lr.ph655

.lr.ph655:                                        ; preds = %bb.dj
  %.not.i386 = icmp eq i64 %indvars.iv795, 0
  %i.yq = trunc nuw nsw i64 %indvars.iv795 to i32 ; 4 uses
  br label %bb.dk

predict_plane.exit.preheader:                     ; preds = %predict_slice.exit, %bb.dj
  %i.yr = icmp sgt i32 %.fr, 0
  %i.ys = icmp sgt i32 %i.ya, 0
  %or.cond706 = select i1 %i.yr, i1 %i.ys, i1 false
  br i1 %or.cond706, label %.preheader621, label %.loopexit624

bb.dk:                                            ; preds = %.lr.ph655, %predict_slice.exit
  %.0.i652 = phi i32 [ 0, %.lr.ph655 ], [ %i.avi, %predict_slice.exit ] ; 9 uses
  %i.yt = load i32, ptr %i.wt, align 8, !tbaa !101
  %i.yu = load i32, ptr %i.sr, align 8, !tbaa !57 ; 5 uses
  %i.yv = shl i32 %i.yt, %i.yu                    ; 2 uses
  %i.yw = load i32, ptr %i.wv, align 4, !tbaa !102
  %i.yx = shl i32 %i.yw, %i.yu
  %i.yy = lshr i32 16, %i.yu                      ; 6 uses
  br i1 %.not.i386, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.yz = load i32, ptr %i.rq, align 4, !tbaa !68 ; 3 uses
  %i.za = lshr i32 %i.yy, %i.yz
  %i.zb = load i32, ptr %i.rv, align 8, !tbaa !69
  %i.zc = lshr i32 %i.yy, %i.zb
  %i.zd = add nsw i32 %i.yz, %i.yu
  %i.ze = shl nuw nsw i32 %i.yy, 1
  %i.zf = lshr i32 %i.ze, %i.yz
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.zg = shl nuw nsw i32 %i.yy, 1
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.pn.i388.pn.in = phi i32 [ %i.zd, %bb.dl ], [ %i.yu, %bb.dm ]
  %i.zh = phi i32 [ %i.za, %bb.dl ], [ %i.yy, %bb.dm ] ; 4 uses
  %i.zi = phi i32 [ %i.zc, %bb.dl ], [ %i.yy, %bb.dm ] ; 5 uses
  %i.zj = phi i32 [ %i.zf, %bb.dl ], [ %i.zg, %bb.dm ] ; 4 uses
  %.pn.i388.pn = sext i32 %.pn.i388.pn.in to i64
  %.in = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.i388.pn
  %i.zk = load ptr, ptr %.in, align 8, !tbaa !92  ; 8 uses
  %i.zl = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv795
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !99 ; 8 uses
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %indvars.iv795
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !92 ; 6 uses
  %i.zr = load i32, ptr %i.xz, align 8, !tbaa !95 ; 14 uses
  %i.zs = load i32, ptr %i.yb, align 4, !tbaa !94 ; 8 uses
  %i.zt = load i32, ptr %i.vl, align 8, !tbaa !55
  %.not110.i = icmp eq i32 %i.zt, 0
  br i1 %.not110.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.zu = load ptr, ptr %i.rm, align 8, !tbaa !62
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 524
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !90
  %i.zx = and i32 %i.zw, 512
  %.not111.i = icmp eq i32 %i.zx, 0
  br i1 %.not111.i, label %.preheader622, label %bb.dp

.preheader622:                                    ; preds = %bb.do
  %.not112.i648 = icmp slt i32 %i.yv, 0
  br i1 %.not112.i648, label %predict_slice.exit, label %.lr.ph650

.lr.ph650:                                        ; preds = %.preheader622
  %i.zy = lshr i32 %i.zh, 1                       ; 2 uses
  %i.zz = mul i32 %i.zi, %.0.i652
  %i.aaa = lshr i32 %i.zi, 1
  %i.aab = sub i32 %i.zz, %i.aaa                  ; 4 uses
  %i.aac = add nsw i32 %.0.i652, -1
  %i.aad = icmp sgt i32 %i.zo, 111
  %i.aae = shl nsw i32 %i.zo, 4
  %i.aaf = select i1 %i.aad, i32 16, i32 %i.aae   ; 2 uses
  %i.aag = icmp eq i32 %.0.i652, 0
  %i.aah = icmp slt i32 %i.aab, 0
  %i.aai = mul nsw i32 %i.aab, %i.zj
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = sub nsw i64 0, %i.aaj
  %i.aal = call i32 @llvm.smin.i32(i32 %i.aab, i32 0)
  %.0239.i = add i32 %i.zi, %i.aal                ; 2 uses
  %.0236.i = call i32 @llvm.smax.i32(i32 %i.aab, i32 0) ; 9 uses
  %i.aam = add i32 %.0236.i, %.0239.i             ; 2 uses
  %i.aan = icmp sgt i32 %i.aam, %i.zs
  %i.aao = sub nsw i32 %i.zs, %.0236.i
  %spec.select262.i = select i1 %i.aan, i32 %i.aao, i32 %.0239.i ; 6 uses
  %i.aap = icmp slt i32 %spec.select262.i, 1
  %i.aaq = mul i32 %i.zr, %.0236.i                ; 2 uses
  %i.aar = mul i32 %.0236.i, %i.zo                ; 2 uses
  %i.aas = mul i32 %i.aaf, 3
  %i.aat = sext i32 %i.aas to i64                 ; 2 uses
  %i.aau = sext i32 %i.aaf to i64                 ; 3 uses
  %i.aav = sext i32 %i.zo to i64                  ; 6 uses
  %i.aaw = lshr i32 %i.zj, 1                      ; 2 uses
  %i.aax = zext nneg i32 %i.aaw to i64            ; 5 uses
  %i.aay = mul nuw nsw i32 %i.aaw, %i.zj
  %i.aaz = zext i32 %i.aay to i64                 ; 2 uses
  %i.aba = sext i32 %i.zr to i64                  ; 2 uses
  %i.abb = sext i32 %spec.select262.i to i64
  %i.abc = zext i32 %i.zj to i64                  ; 4 uses
  %i.abd = zext i32 %i.zh to i64                  ; 2 uses
  %i.abe = zext nneg i32 %i.zy to i64             ; 2 uses
  %i.abf = add nuw i32 %i.yv, 1
  %wide.trip.count746 = zext i32 %i.abf to i64
  %.1234.i.idx = select i1 %i.aah, i64 %i.aak, i64 0 ; 6 uses
  %invariant.gep979 = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %smin = call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.aam)
  %i.abg = sub i32 %smin, %.0236.i
  %i.abh = call i32 @llvm.smax.i32(i32 %i.abg, i32 1)
  %smax1037 = zext nneg i32 %i.abh to i64         ; 2 uses
  %i.abi = add nsw i64 %smax1037, -1              ; 3 uses
  %i.abj = mul nsw i64 %i.abi, %i.aav             ; 5 uses
  %scevgep1038 = getelementptr i8, ptr %i.zq, i64 %i.abj
  %i.abk = add nuw nsw i64 %i.abc, 1
  %5 = mul nuw i64 %i.abk, %i.aax
  %6 = add i64 %.1234.i.idx, %5                   ; 2 uses
  %scevgep1042 = getelementptr i8, ptr %i.zk, i64 %6
  %i.abl = mul nsw i64 %i.abi, %i.abc             ; 3 uses
  %i.abm = getelementptr i8, ptr %i.zk, i64 %6
  %i.abn = getelementptr i8, ptr %i.abm, i64 %i.abl
  %scevgep1045 = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %i.abo = getelementptr i8, ptr %scevgep1045, i64 %i.aaz
  %7 = add nsw i64 %smax1037, -1
  %8 = add nsw i64 %7, %i.aax
  %9 = mul i64 %8, %i.abc
  %i.abp = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %scevgep1049 = getelementptr i8, ptr %i.abp, i64 %9
  %i.abq = add nsw i64 %.1234.i.idx, %i.aax       ; 2 uses
  %scevgep1051 = getelementptr i8, ptr %i.zk, i64 %i.abq
  %i.abr = getelementptr i8, ptr %i.zk, i64 %i.abq
  %scevgep1053 = getelementptr i8, ptr %i.abr, i64 %i.abl
  %i.abs = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %scevgep1055 = getelementptr i8, ptr %i.abs, i64 %i.abl
  %i.abt = shl nsw i64 %i.abi, 1
  %i.abu = mul i64 %i.abt, %i.aba
  %scevgep1066 = getelementptr i8, ptr %i.ym, i64 %i.abu
  %stride.check1075 = icmp slt i32 %i.zo, 0
  %i.abv = insertelement <8 x i1> poison, i1 %stride.check1075, i64 7
  %i.abw = or i32 %i.zr, %i.zo
  %i.abx = icmp slt i32 %i.abw, 0
  br label %bb.dr

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.aby = icmp eq i32 %.0.i652, %i.yx
  br i1 %i.aby, label %predict_slice.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.abz = mul i32 %i.zi, %.0.i652                ; 2 uses
  %i.aca = add nuw nsw i32 %.0.i652, 1
  %i.acb = mul nsw i32 %i.zi, %i.aca
  %..i390 = call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.acb) ; 2 uses
  %i.acc = icmp slt i32 %i.abz, %..i390
  %i.acd = icmp sgt i32 %i.zr, 0
  %or.cond707 = select i1 %i.acc, i1 %i.acd, i1 false
  br i1 %or.cond707, label %.preheader.preheader, label %predict_slice.exit

.preheader.preheader:                             ; preds = %bb.dq
  %i.ace = sext i32 %i.abz to i64                 ; 3 uses
  %i.acf = sext i32 %i.zo to i64                  ; 3 uses
  %i.acg = zext nneg i32 %i.zr to i64
  %i.ach = sext i32 %..i390 to i64                ; 3 uses
  %wide.trip.count732 = zext nneg i32 %i.zr to i64 ; 8 uses
  %i.aci = mul nsw i64 %i.acf, %i.ace
  %scevgep1136 = getelementptr i8, ptr %i.zq, i64 %i.aci
  %i.acj = add nsw i64 %i.ach, -1
  %i.ack = mul i64 %i.acj, %i.acf
  %i.acl = getelementptr i8, ptr %i.zq, i64 %i.ack
  %scevgep1137 = getelementptr i8, ptr %i.acl, i64 %wide.trip.count732
  %i.acm = shl nsw i64 %i.ace, 1
  %i.acn = mul nsw i64 %i.acm, %wide.trip.count732
  %scevgep1138 = getelementptr i8, ptr %i.ym, i64 %i.acn
  %i.aco = shl nsw i64 %i.ach, 1
  %i.acp = mul nsw i64 %i.aco, %wide.trip.count732
  %scevgep1139 = getelementptr i8, ptr %i.ym, i64 %i.acp
  %min.iters.check1145 = icmp ult i32 %i.zr, 8
  %bound01140 = icmp ult ptr %scevgep1136, %scevgep1139
  %bound11141 = icmp ult ptr %scevgep1138, %scevgep1137
  %found.conflict1142 = and i1 %bound01140, %bound11141
  %stride.check1143 = icmp slt i32 %i.zo, 0
  %i.acq = or i1 %found.conflict1142, %stride.check1143
  %n.vec1147 = and i64 %wide.trip.count732, 2147483640 ; 3 uses
  %cmp.n1153 = icmp eq i64 %n.vec1147, %wide.trip.count732
  %xtraiter = and i64 %wide.trip.count732, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.acr = add nsw i64 %wide.trip.count732, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge639
  %indvars.iv734 = phi i64 [ %i.ace, %.preheader.preheader ], [ %indvars.iv.next735, %._crit_edge639 ] ; 3 uses
  %i.acs = mul nsw i64 %indvars.iv734, %i.acg
  %i.act = mul nsw i64 %indvars.iv734, %i.acf
  %invariant.gep = getelementptr [2 x i8], ptr %i.ym, i64 %i.acs ; 4 uses
  %invariant.gep975 = getelementptr i8, ptr %i.zq, i64 %i.act ; 4 uses
  %brmerge = select i1 %min.iters.check1145, i1 true, i1 %i.acq
  br i1 %brmerge, label %scalar.ph1144.preheader, label %vector.body1148

vector.body1148:                                  ; preds = %.preheader, %vector.body1148
  %index1149 = phi i64 [ %index.next1151, %vector.body1148 ], [ 0, %.preheader ] ; 3 uses
  %i.acu = getelementptr [2 x i8], ptr %invariant.gep, i64 %index1149
  %wide.load1150 = load <8 x i16>, ptr %i.acu, align 2, !tbaa !112, !alias.scope !114 ; 2 uses
  %i.acv = sext <8 x i16> %wide.load1150 to <8 x i32>
  %i.acw = add nsw <8 x i32> %i.acv, splat (i32 2056)
  %i.acx = ashr <8 x i32> %i.acw, splat (i32 4)   ; 2 uses
  %i.acy = icmp ugt <8 x i32> %i.acx, splat (i32 255)
  %i.acz = icmp sgt <8 x i16> %wide.load1150, splat (i16 -2057)
  %i.ada = sext <8 x i1> %i.acz to <8 x i32>
  %i.adb = select <8 x i1> %i.acy, <8 x i32> %i.ada, <8 x i32> %i.acx
  %i.adc = trunc <8 x i32> %i.adb to <8 x i8>
  %i.add = getelementptr i8, ptr %invariant.gep975, i64 %index1149
  store <8 x i8> %i.adc, ptr %i.add, align 1, !tbaa !53, !alias.scope !117, !noalias !114
  %index.next1151 = add nuw i64 %index1149, 8     ; 2 uses
  %i.ade = icmp eq i64 %index.next1151, %n.vec1147
  br i1 %i.ade, label %middle.block1152, label %vector.body1148, !llvm.loop !119

middle.block1152:                                 ; preds = %vector.body1148
  br i1 %cmp.n1153, label %._crit_edge639, label %scalar.ph1144.preheader

scalar.ph1144.preheader:                          ; preds = %.preheader, %middle.block1152
  %indvars.iv729.ph = phi i64 [ %n.vec1147, %middle.block1152 ], [ 0, %.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph1144.prol.loopexit, label %scalar.ph1144.prol

scalar.ph1144.prol:                               ; preds = %scalar.ph1144.preheader
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv729.ph
  %i.adf = load i16, ptr %gep.prol, align 2, !tbaa !112 ; 2 uses
  %i.adg = sext i16 %i.adf to i32
  %i.adh = add nsw i32 %i.adg, 2056
  %i.adi = ashr i32 %i.adh, 4                     ; 2 uses
  %i.adj = icmp ugt i32 %i.adi, 255
  %isnotneg.i391.prol = icmp sgt i16 %i.adf, -2057
  %i.adk = sext i1 %isnotneg.i391.prol to i32
  %.0.i392.prol = select i1 %i.adj, i32 %i.adk, i32 %i.adi
  %i.adl = trunc i32 %.0.i392.prol to i8
  %gep976.prol = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv729.ph
  store i8 %i.adl, ptr %gep976.prol, align 1, !tbaa !53
  %indvars.iv.next730.prol = or disjoint i64 %indvars.iv729.ph, 1
  br label %scalar.ph1144.prol.loopexit

scalar.ph1144.prol.loopexit:                      ; preds = %scalar.ph1144.prol, %scalar.ph1144.preheader
  %indvars.iv729.unr = phi i64 [ %indvars.iv729.ph, %scalar.ph1144.preheader ], [ %indvars.iv.next730.prol, %scalar.ph1144.prol ]
  %i.adm = icmp eq i64 %indvars.iv729.ph, %i.acr
  br i1 %i.adm, label %._crit_edge639, label %scalar.ph1144

scalar.ph1144:                                    ; preds = %scalar.ph1144.prol.loopexit, %scalar.ph1144
  %indvars.iv729 = phi i64 [ %indvars.iv.next730.1, %scalar.ph1144 ], [ %indvars.iv729.unr, %scalar.ph1144.prol.loopexit ] ; 4 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv729
  %i.adn = load i16, ptr %gep, align 2, !tbaa !112 ; 2 uses
  %i.ado = sext i16 %i.adn to i32
  %i.adp = add nsw i32 %i.ado, 2056
  %i.adq = ashr i32 %i.adp, 4                     ; 2 uses
  %i.adr = icmp ugt i32 %i.adq, 255
  %isnotneg.i391 = icmp sgt i16 %i.adn, -2057
  %i.ads = sext i1 %isnotneg.i391 to i32
  %.0.i392 = select i1 %i.adr, i32 %i.ads, i32 %i.adq
  %i.adt = trunc i32 %.0.i392 to i8
  %gep976 = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv729
  store i8 %i.adt, ptr %gep976, align 1, !tbaa !53
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next730
  %i.adu = load i16, ptr %gep.1, align 2, !tbaa !112 ; 2 uses
  %i.adv = sext i16 %i.adu to i32
  %i.adw = add nsw i32 %i.adv, 2056
  %i.adx = ashr i32 %i.adw, 4                     ; 2 uses
  %i.ady = icmp ugt i32 %i.adx, 255
  %isnotneg.i391.1 = icmp sgt i16 %i.adu, -2057
  %i.adz = sext i1 %isnotneg.i391.1 to i32
  %.0.i392.1 = select i1 %i.ady, i32 %i.adz, i32 %i.adx
  %i.aea = trunc i32 %.0.i392.1 to i8
  %gep976.1 = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv.next730
  store i8 %i.aea, ptr %gep976.1, align 1, !tbaa !53
  %indvars.iv.next730.1 = add nuw nsw i64 %indvars.iv729, 2 ; 2 uses
  %exitcond733.not.1 = icmp eq i64 %indvars.iv.next730.1, %wide.trip.count732
  br i1 %exitcond733.not.1, label %._crit_edge639, label %scalar.ph1144, !llvm.loop !122

._crit_edge639:                                   ; preds = %scalar.ph1144.prol.loopexit, %scalar.ph1144, %middle.block1152
  %indvars.iv.next735 = add nsw i64 %indvars.iv734, 1 ; 2 uses
  %i.aeb = icmp slt i64 %indvars.iv.next735, %i.ach
  br i1 %i.aeb, label %.preheader, label %predict_slice.exit, !llvm.loop !123

bb.dr:                                            ; preds = %.lr.ph650, %add_yblock.exit
  %indvars.iv743 = phi i64 [ 0, %.lr.ph650 ], [ %indvars.iv.next744, %add_yblock.exit ] ; 6 uses
  %i.aec = mul i64 %indvars.iv743, %i.abd         ; 2 uses
  %i.aed = trunc i64 %i.aec to i32
  %i.aee = sub i32 %i.aed, %i.zy                  ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.aee, i32 0) ; 4 uses
  %i.aef = add i32 %i.aar, %smax
  %i.aeg = sext i32 %i.aef to i64                 ; 2 uses
  %scevgep1036 = getelementptr i8, ptr %i.zq, i64 %i.aeg ; 4 uses
  %smin1039 = call i32 @llvm.smin.i32(i32 %i.aee, i32 0)
  %i.aeh = add i32 %i.zh, %smin1039
  %i.aei = add i32 %i.aeh, %smax
  %smin1040 = call i32 @llvm.smin.i32(i32 %i.zr, i32 %i.aei)
  %i.aej = sub i32 %smin1040, %smax
  %i.aek = call i32 @llvm.umax.i32(i32 %i.aej, i32 1)
  %umax = zext i32 %i.aek to i64                  ; 7 uses
  %i.ael = getelementptr i8, ptr %scevgep1038, i64 %umax
  %scevgep1041 = getelementptr i8, ptr %i.ael, i64 %i.aeg ; 5 uses
  %i.aem = sub i64 %i.aec, %i.abe
  %smin1043 = call i64 @llvm.smin.i64(i64 %i.aem, i64 0) ; 2 uses
  %i.aen = sub nsw i64 0, %smin1043               ; 3 uses
  %scevgep1044 = getelementptr i8, ptr %scevgep1042, i64 %i.aen
  %i.aeo = sub i64 %umax, %smin1043               ; 4 uses
  %scevgep1046 = getelementptr i8, ptr %i.abn, i64 %i.aeo
  %scevgep1048 = getelementptr i8, ptr %i.abo, i64 %i.aen
  %scevgep1050 = getelementptr i8, ptr %scevgep1049, i64 %i.aeo
  %scevgep1052 = getelementptr i8, ptr %scevgep1051, i64 %i.aen
  %scevgep1054 = getelementptr i8, ptr %scevgep1053, i64 %i.aeo
  %scevgep1056 = getelementptr i8, ptr %scevgep1055, i64 %i.aeo
  %i.aep = add i32 %i.aaq, %smax
  %i.aeq = sext i32 %i.aep to i64                 ; 2 uses
  %i.aer = shl nsw i64 %i.aeq, 1
  %scevgep1065 = getelementptr i8, ptr %i.ym, i64 %i.aer
  %i.aes = add nsw i64 %umax, %i.aeq
  %i.aet = shl nsw i64 %i.aes, 1
  %scevgep1067 = getelementptr i8, ptr %scevgep1066, i64 %i.aet
  %i.aeu = mul nuw nsw i64 %indvars.iv743, %i.abd
  %i.aev = sub nsw i64 %i.aeu, %i.abe             ; 2 uses
  %i.aew = load i32, ptr %i.wt, align 8, !tbaa !101
  %i.aex = load i32, ptr %i.sr, align 8, !tbaa !57 ; 2 uses
  %i.aey = shl i32 %i.aew, %i.aex                 ; 2 uses
  %i.aez = load i32, ptr %i.wv, align 4, !tbaa !102
  %i.afa = shl i32 %i.aez, %i.aex
  %i.afb = load ptr, ptr %i.xk, align 8, !tbaa !124
  %i.afc = mul nsw i32 %i.aey, %i.aac
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr [10 x i8], ptr %i.afb, i64 %indvars.iv743
  %i.aff = getelementptr i8, ptr %i.afe, i64 -10
  %i.afg = getelementptr [10 x i8], ptr %i.aff, i64 %i.afd ; 4 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 10 ; 3 uses
  %i.afi = sext i32 %i.aey to i64                 ; 2 uses
  %i.afj = getelementptr inbounds [10 x i8], ptr %i.afg, i64 %i.afi ; 3 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 10 ; 3 uses
  %i.afl = load ptr, ptr %i.xl, align 8, !tbaa !125 ; 6 uses
  %i.afm = icmp eq i64 %indvars.iv743, 0
  br i1 %i.afm, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.not.i393 = icmp slt i64 %indvars.iv743, %i.afi ; 2 uses
  %spec.select.i = select i1 %.not.i393, ptr %i.afh, ptr %i.afg
  %spec.select257.i = select i1 %.not.i393, ptr %i.afk, ptr %i.afj
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0228.i = phi ptr [ %i.afg, %bb.ds ], [ %i.afh, %bb.dr ] ; 2 uses
  %.0226.i = phi ptr [ %spec.select.i, %bb.ds ], [ %i.afh, %bb.dr ] ; 2 uses
  %.0224.i = phi ptr [ %i.afj, %bb.ds ], [ %i.afk, %bb.dr ] ; 3 uses
  %.0222.i = phi ptr [ %spec.select257.i, %bb.ds ], [ %i.afk, %bb.dr ] ; 3 uses
  br i1 %i.aag, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.not249.i = icmp slt i32 %.0.i652, %i.afa      ; 2 uses
  %spec.select258.i = select i1 %.not249.i, ptr %.0224.i, ptr %.0228.i
  %spec.select259.i = select i1 %.not249.i, ptr %.0222.i, ptr %.0226.i
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.1229.i = phi ptr [ %.0228.i, %bb.du ], [ %.0224.i, %bb.dt ] ; 20 uses
  %.1227.i = phi ptr [ %.0226.i, %bb.du ], [ %.0222.i, %bb.dt ] ; 22 uses
  %.1225.i = phi ptr [ %spec.select258.i, %bb.du ], [ %.0224.i, %bb.dt ] ; 21 uses
  %.1223.i = phi ptr [ %spec.select259.i, %bb.du ], [ %.0222.i, %bb.dt ] ; 20 uses
  %i.afn = trunc nsw i64 %i.aev to i32            ; 2 uses
  %i.afo = call i32 @llvm.smin.i32(i32 %i.afn, i32 0)
  %.0237.i = add nsw i32 %i.afo, %i.zh            ; 2 uses
  %.0235.i = call i32 @llvm.smax.i32(i32 %i.afn, i32 0) ; 8 uses
  %i.afp = call i64 @llvm.smin.i64(i64 %i.aev, i64 0)
  %.0233.i.idx = sub i64 0, %i.afp
  %i.afq = add nsw i32 %.0237.i, %.0235.i
  %i.afr = icmp sgt i32 %i.afq, %i.zr
  %i.afs = sub nsw i32 %i.zr, %.0235.i
  %spec.select261.i = select i1 %i.afr, i32 %i.afs, i32 %.0237.i ; 7 uses
  %gep980 = getelementptr i8, ptr %invariant.gep979, i64 %.0233.i.idx ; 2 uses
  %i.aft = icmp slt i32 %spec.select261.i, 1
  %or.cond5.i = select i1 %i.aft, i1 true, i1 %i.aap
  br i1 %or.cond5.i, label %add_yblock.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.afu = add nsw i32 %.0235.i, %i.aaq
  %i.afv = sext i32 %i.afu to i64
  %i.afw = getelementptr inbounds [2 x i8], ptr %i.ym, i64 %i.afv
  %i.afx = add nsw i32 %.0235.i, %i.aar
  %i.afy = sext i32 %i.afx to i64
  %i.afz = getelementptr inbounds i8, ptr %i.zq, i64 %i.afy ; 2 uses
  %i.aga = getelementptr inbounds i8, ptr %i.afl, i64 %i.aat ; 11 uses
  %i.agb = getelementptr inbounds i8, ptr %i.aga, i64 %i.aau ; 5 uses
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %i.aga, ptr noundef %i.afl, i64 noundef %i.aav, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef %.1229.i, i32 noundef %i.yq, i32 noundef %i.zr, i32 noundef %i.zs) #9
  %i.agc = getelementptr inbounds nuw i8, ptr %.1229.i, i64 8 ; 3 uses
  %i.agd = load i8, ptr %i.agc, align 2, !tbaa !126 ; 4 uses
  %i.age = and i8 %i.agd, 1
  %.not.i501 = icmp eq i8 %i.age, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1227.i, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !126 ; 2 uses
  %i.agf = and i8 %.pre, 1
  %.not16.i502 = icmp eq i8 %i.agf, 0
  %or.cond987 = select i1 %.not.i501, i1 true, i1 %.not16.i502
  br i1 %or.cond987, label %same_block.exit507, label %.split

.split:                                           ; preds = %bb.dw
  %i.agg = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !53
  %i.agi = getelementptr inbounds nuw i8, ptr %.1227.i, i64 5
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !53
  %i.agk = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.agl = load i8, ptr %i.agk, align 2, !tbaa !53
  %i.agm = getelementptr inbounds nuw i8, ptr %.1227.i, i64 6
  %i.agn = load i8, ptr %i.agm, align 2, !tbaa !53
  %i.ago = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !53
  %i.agq = getelementptr inbounds nuw i8, ptr %.1227.i, i64 7
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !53
  %i.ags = icmp eq i8 %i.agh, %i.agj
  %i.agt = icmp eq i8 %i.agl, %i.agn
  %i.agu = and i1 %i.ags, %i.agt
  %i.agv = icmp eq i8 %i.agp, %i.agr
  %.not18.i503 = and i1 %i.agu, %i.agv
  br i1 %.not18.i503, label %bb.dy, label %bb.dx

same_block.exit507:                               ; preds = %bb.dw
  %i.agw = load i16, ptr %.1229.i, align 2, !tbaa !128
  %i.agx = sext i16 %i.agw to i32
  %i.agy = load i16, ptr %.1227.i, align 2, !tbaa !128
  %i.agz = sext i16 %i.agy to i32
  %i.aha = sub nsw i32 %i.agx, %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !129
  %i.ahd = sext i16 %i.ahc to i32
  %i.ahe = getelementptr inbounds nuw i8, ptr %.1227.i, i64 2
  %i.ahf = load i16, ptr %i.ahe, align 2, !tbaa !129
  %i.ahg = sext i16 %i.ahf to i32
  %i.ahh = sub nsw i32 %i.ahd, %i.ahg
  %i.ahi = or i32 %i.ahh, %i.aha
  %i.ahj = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.ahk = load i8, ptr %i.ahj, align 2, !tbaa !130
  %i.ahl = zext i8 %i.ahk to i32
  %i.ahm = getelementptr inbounds nuw i8, ptr %.1227.i, i64 4
  %i.ahn = load i8, ptr %i.ahm, align 2, !tbaa !130
  %i.aho = zext i8 %i.ahn to i32
  %i.ahp = sub nsw i32 %i.ahl, %i.aho
  %i.ahq = or i32 %i.ahi, %i.ahp
  %i.ahr = xor i8 %.pre, %i.agd
  %i.ahs = and i8 %i.ahr, 1
  %i.aht = zext nneg i8 %i.ahs to i32
  %i.ahu = or i32 %i.ahq, %i.aht
  %.not17.i506 = icmp eq i32 %i.ahu, 0
  br i1 %.not17.i506, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.split, %same_block.exit507
  %i.ahv = getelementptr inbounds i8, ptr %i.agb, i64 %i.aau
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %i.agb, ptr noundef %i.afl, i64 noundef %i.aav, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef nonnull %.1227.i, i32 noundef %i.yq, i32 noundef %i.zr, i32 noundef %i.zs) #9
  %.pre799 = load i8, ptr %i.agc, align 2, !tbaa !126
  br label %bb.dy

bb.dy:                                            ; preds = %.split, %same_block.exit507, %bb.dx
  %i.ahw = phi i8 [ %.pre799, %bb.dx ], [ %i.agd, %same_block.exit507 ], [ %i.agd, %.split ] ; 6 uses
  %.sroa.7.0 = phi ptr [ %i.agb, %bb.dx ], [ %i.aga, %same_block.exit507 ], [ %i.aga, %.split ] ; 8 uses
  %.0221.i = phi ptr [ %i.ahv, %bb.dx ], [ %i.agb, %same_block.exit507 ], [ %i.agb, %.split ] ; 7 uses
  %i.ahx = and i8 %i.ahw, 1
  %.not.i494 = icmp eq i8 %i.ahx, 0
  %.phi.trans.insert801 = getelementptr inbounds nuw i8, ptr %.1225.i, i64 8
  %.pre802 = load i8, ptr %.phi.trans.insert801, align 2, !tbaa !126 ; 4 uses
  %i.ahy = and i8 %.pre802, 1
  %.not16.i495 = icmp eq i8 %i.ahy, 0
  %or.cond988 = select i1 %.not.i494, i1 true, i1 %.not16.i495
  br i1 %or.cond988, label %same_block.exit500, label %.split948

.split948:                                        ; preds = %bb.dy
  %i.ahz = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !53
  %i.aib = getelementptr inbounds nuw i8, ptr %.1225.i, i64 5
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !53
  %i.aid = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.aie = load i8, ptr %i.aid, align 2, !tbaa !53
  %i.aif = getelementptr inbounds nuw i8, ptr %.1225.i, i64 6
  %i.aig = load i8, ptr %i.aif, align 2, !tbaa !53
  %i.aih = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.aii = load i8, ptr %i.aih, align 1, !tbaa !53
  %i.aij = getelementptr inbounds nuw i8, ptr %.1225.i, i64 7
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !53
  %i.ail = icmp eq i8 %i.aia, %i.aic
  %i.aim = icmp eq i8 %i.aie, %i.aig
  %i.ain = and i1 %i.ail, %i.aim
  %i.aio = icmp eq i8 %i.aii, %i.aik
  %.not18.i496 = and i1 %i.ain, %i.aio
  br i1 %.not18.i496, label %bb.eb, label %bb.dz

same_block.exit500:                               ; preds = %bb.dy
  %i.aip = load i16, ptr %.1229.i, align 2, !tbaa !128
  %i.aiq = sext i16 %i.aip to i32
  %i.air = load i16, ptr %.1225.i, align 2, !tbaa !128
  %i.ais = sext i16 %i.air to i32
  %i.ait = sub nsw i32 %i.aiq, %i.ais
  %i.aiu = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.aiv = load i16, ptr %i.aiu, align 2, !tbaa !129
  %i.aiw = sext i16 %i.aiv to i32
  %i.aix = getelementptr inbounds nuw i8, ptr %.1225.i, i64 2
  %i.aiy = load i16, ptr %i.aix, align 2, !tbaa !129
  %i.aiz = sext i16 %i.aiy to i32
  %i.aja = sub nsw i32 %i.aiw, %i.aiz
  %i.ajb = or i32 %i.aja, %i.ait
  %i.ajc = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.ajd = load i8, ptr %i.ajc, align 2, !tbaa !130
  %i.aje = zext i8 %i.ajd to i32
  %i.ajf = getelementptr inbounds nuw i8, ptr %.1225.i, i64 4
  %i.ajg = load i8, ptr %i.ajf, align 2, !tbaa !130
  %i.ajh = zext i8 %i.ajg to i32
end_hunk_0
