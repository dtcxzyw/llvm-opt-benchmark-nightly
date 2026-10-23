Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowdec?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decode_frame:bb.a
  %i.ws = getelementptr inbounds nuw i8, ptr %i.i, i64 6368 ; 6 uses
  %i.wt = load i32, ptr %i.ws, align 8, !tbaa !52 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.i, i64 6372 ; 7 uses
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !170 ; 2 uses
  %i.ww = icmp sgt i32 %i.wv, 0
  br i1 %i.ww, label %.preheader.lr.ph.i, label %decode_blocks.exit

.preheader.lr.ph.i:                               ; preds = %bb.de
  %i.wx = icmp sgt i32 %i.wt, 0
  %i.wy = getelementptr inbounds nuw i8, ptr %i.i, i64 552
  %i.wz = getelementptr inbounds nuw i8, ptr %i.i, i64 560
  br i1 %i.wx, label %.preheader.i, label %decode_blocks.exit

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge.i513
  %.019.i = phi i32 [ %i.xf, %._crit_edge.i513 ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  br label %bb.dg

bb.df:                                            ; preds = %bb.dh
  %i.xa = add nuw nsw i32 %.01418.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.xa, %i.wt
  br i1 %exitcond.not.i, label %._crit_edge.i513, label %bb.dg, !llvm.loop !68

bb.dg:                                            ; preds = %bb.df, %.preheader.i
  %.01418.i = phi i32 [ 0, %.preheader.i ], [ %i.xa, %bb.df ] ; 2 uses
  %i.xb = load ptr, ptr %i.wy, align 8, !tbaa !174
  %i.xc = load ptr, ptr %i.wz, align 8, !tbaa !175
  %.not.i512 = icmp ult ptr %i.xb, %i.xc
  br i1 %.not.i512, label %bb.dh, label %decode_header.exit.thread

bb.dh:                                            ; preds = %bb.dg
  %i.xd = call fastcc i32 @decode_q_branch(ptr noundef nonnull %i.i, i32 noundef 0, i32 noundef %.01418.i, i32 noundef %.019.i) ; 2 uses
  %i.xe = icmp slt i32 %i.xd, 0
  br i1 %i.xe, label %decode_header.exit.thread, label %bb.df

._crit_edge.i513:                                 ; preds = %bb.df
  %i.xf = add nuw nsw i32 %.019.i, 1              ; 2 uses
  %exitcond21.not.i = icmp eq i32 %i.xf, %i.wv
  br i1 %exitcond21.not.i, label %decode_blocks.exit, label %.preheader.i, !llvm.loop !69

decode_blocks.exit:                               ; preds = %._crit_edge.i513, %bb.de, %.preheader.lr.ph.i
  %i.xg = load i32, ptr %i.uf, align 8, !tbaa !49
  %i.xh = icmp sgt i32 %i.xg, 0
  br i1 %i.xh, label %.lr.ph704, label %._crit_edge705

.lr.ph704:                                        ; preds = %decode_blocks.exit
  %i.xi = getelementptr inbounds nuw i8, ptr %i.i, i64 6288
  %i.xj = getelementptr inbounds nuw i8, ptr %i.i, i64 155032 ; 3 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.i, i64 155080 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.i, i64 1848
  %i.xm = getelementptr inbounds nuw i8, ptr %i.i, i64 288 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.i, i64 552 ; 12 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.i, i64 560 ; 6 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.i, i64 568 ; 12 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.i, i64 1744
  %i.xs = getelementptr inbounds nuw i8, ptr %i.i, i64 6312
  %i.xt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.i, i64 1760
  %i.xx = getelementptr inbounds nuw i8, ptr %i.i, i64 155088
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph704, %._crit_edge702
  %indvars.iv795 = phi i64 [ 0, %.lr.ph704 ], [ %indvars.iv.next796, %._crit_edge702 ] ; 14 uses
  %i.xy = getelementptr inbounds nuw [37160 x i8], ptr %i.tr, i64 %indvars.iv795 ; 13 uses
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !166 ; 9 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 4 ; 4 uses
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !165
  %.fr = freeze i32 %i.yb                         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.yc = load ptr, ptr %i.rl, align 8, !tbaa !48
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 524
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !161
  %i.yf = and i32 %i.ye, 2048
  %.not368 = icmp eq i32 %i.yf, 0
  br i1 %.not368, label %.loopexit624, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.yg = load ptr, ptr %i.xi, align 8, !tbaa !176
  %i.yh = sext i32 %i.xz to i64
  %i.yi = shl nsw i64 %i.yh, 2
  %i.yj = sext i32 %.fr to i64
  %i.yk = mul i64 %i.yi, %i.yj
  call void @llvm.memset.p0.i64(ptr align 4 %i.yg, i8 0, i64 %i.yk, i1 false)
  %i.yl = load ptr, ptr %i.ub, align 8, !tbaa !167 ; 5 uses
  %i.ym = load i32, ptr %i.wu, align 4, !tbaa !170
  %i.yn = load i32, ptr %i.sq, align 8, !tbaa !47
  %i.yo = shl i32 %i.ym, %i.yn                    ; 2 uses
  %.not.i651 = icmp slt i32 %i.yo, 0
  br i1 %.not.i651, label %predict_plane.exit.preheader, label %.lr.ph655

.lr.ph655:                                        ; preds = %bb.dj
  %.not.i386 = icmp eq i64 %indvars.iv795, 0
  %i.yp = trunc nuw nsw i64 %indvars.iv795 to i32 ; 4 uses
  br label %bb.dk

predict_plane.exit.preheader:                     ; preds = %predict_slice.exit, %bb.dj
  %i.yq = icmp sgt i32 %.fr, 0
  %i.yr = icmp sgt i32 %i.xz, 0
  %or.cond706 = select i1 %i.yq, i1 %i.yr, i1 false
  br i1 %or.cond706, label %.preheader621, label %.loopexit624

bb.dk:                                            ; preds = %.lr.ph655, %predict_slice.exit
  %.0.i652 = phi i32 [ 0, %.lr.ph655 ], [ %i.aup, %predict_slice.exit ] ; 9 uses
  %i.ys = load i32, ptr %i.ws, align 8, !tbaa !52
  %i.yt = load i32, ptr %i.sq, align 8, !tbaa !47 ; 5 uses
  %i.yu = shl i32 %i.ys, %i.yt                    ; 2 uses
  %i.yv = load i32, ptr %i.wu, align 4, !tbaa !170
  %i.yw = shl i32 %i.yv, %i.yt
  %i.yx = lshr i32 16, %i.yt                      ; 6 uses
  br i1 %.not.i386, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.yy = load i32, ptr %i.rp, align 4, !tbaa !146 ; 3 uses
  %i.yz = lshr i32 %i.yx, %i.yy
  %i.za = load i32, ptr %i.ru, align 8, !tbaa !147
  %i.zb = lshr i32 %i.yx, %i.za
  %i.zc = add nsw i32 %i.yy, %i.yt
  %i.zd = shl nuw nsw i32 %i.yx, 1
  %i.ze = lshr i32 %i.zd, %i.yy
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.zf = shl nuw nsw i32 %i.yx, 1
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.pn.i388.pn.in = phi i32 [ %i.zc, %bb.dl ], [ %i.yt, %bb.dm ]
  %i.zg = phi i32 [ %i.yz, %bb.dl ], [ %i.yx, %bb.dm ] ; 4 uses
  %i.zh = phi i32 [ %i.zb, %bb.dl ], [ %i.yx, %bb.dm ] ; 5 uses
  %i.zi = phi i32 [ %i.ze, %bb.dl ], [ %i.zf, %bb.dm ] ; 4 uses
  %.pn.i388.pn = sext i32 %.pn.i388.pn.in to i64
  %.in = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.i388.pn
  %i.zj = load ptr, ptr %.in, align 8, !tbaa !163 ; 8 uses
  %i.zk = load ptr, ptr %i.k, align 8, !tbaa !130 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 64
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %indvars.iv795
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !51 ; 7 uses
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv795
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !163 ; 5 uses
  %i.zq = load i32, ptr %i.xy, align 8, !tbaa !166 ; 14 uses
  %i.zr = load i32, ptr %i.ya, align 4, !tbaa !165 ; 7 uses
  %i.zs = load i32, ptr %i.vk, align 8, !tbaa !46
  %.not110.i = icmp eq i32 %i.zs, 0
  br i1 %.not110.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.zt = load ptr, ptr %i.rl, align 8, !tbaa !48
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 524
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !161
  %i.zw = and i32 %i.zv, 512
  %.not111.i = icmp eq i32 %i.zw, 0
  br i1 %.not111.i, label %.preheader622, label %bb.dp

.preheader622:                                    ; preds = %bb.do
  %.not112.i648 = icmp slt i32 %i.yu, 0
  br i1 %.not112.i648, label %predict_slice.exit, label %.lr.ph650

.lr.ph650:                                        ; preds = %.preheader622
  %i.zx = lshr i32 %i.zg, 1                       ; 2 uses
  %i.zy = mul i32 %i.zh, %.0.i652
  %i.zz = lshr i32 %i.zh, 1
  %i.aaa = sub i32 %i.zy, %i.zz                   ; 4 uses
  %i.aab = add nsw i32 %.0.i652, -1
  %i.aac = icmp sgt i32 %i.zn, 111
  %i.aad = shl nsw i32 %i.zn, 4
  %i.aae = select i1 %i.aac, i32 16, i32 %i.aad   ; 2 uses
  %i.aaf = icmp eq i32 %.0.i652, 0
  %i.aag = icmp slt i32 %i.aaa, 0
  %i.aah = mul nsw i32 %i.aaa, %i.zi
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = sub nsw i64 0, %i.aai
  %i.aak = call i32 @llvm.smin.i32(i32 %i.aaa, i32 0)
  %.0239.i = add i32 %i.zh, %i.aak                ; 2 uses
  %.0236.i = call i32 @llvm.smax.i32(i32 %i.aaa, i32 0) ; 8 uses
  %i.aal = add i32 %.0236.i, %.0239.i
  %i.aam = icmp sgt i32 %i.aal, %i.zr
  %i.aan = sub i32 %i.zr, %.0236.i
  %spec.select262.i = select i1 %i.aam, i32 %i.aan, i32 %.0239.i ; 6 uses
  %i.aao = icmp slt i32 %spec.select262.i, 1
  %i.aap = mul i32 %i.zq, %.0236.i                ; 2 uses
  %i.aaq = mul i32 %.0236.i, %i.zn                ; 2 uses
  %i.aar = mul i32 %i.aae, 3
  %i.aas = sext i32 %i.aar to i64                 ; 2 uses
  %i.aat = sext i32 %i.aae to i64                 ; 3 uses
  %i.aau = sext i32 %i.zn to i64                  ; 6 uses
  %i.aav = lshr i32 %i.zi, 1                      ; 2 uses
  %i.aaw = zext nneg i32 %i.aav to i64            ; 4 uses
  %i.aax = mul i32 %i.aav, %i.zi
  %i.aay = zext i32 %i.aax to i64                 ; 5 uses
  %i.aaz = sext i32 %i.zq to i64                  ; 2 uses
  %i.aba = sext i32 %spec.select262.i to i64      ; 2 uses
  %i.abb = zext i32 %i.zi to i64                  ; 2 uses
  %i.abc = zext i32 %i.zg to i64                  ; 2 uses
  %i.abd = zext nneg i32 %i.zx to i64             ; 2 uses
  %i.abe = add nuw i32 %i.yu, 1
  %wide.trip.count746 = zext i32 %i.abe to i64
  %.1234.i.idx = select i1 %i.aag, i64 %i.aaj, i64 0 ; 6 uses
  %invariant.gep979 = getelementptr i8, ptr %i.zj, i64 %.1234.i.idx
  %smax = call i64 @llvm.smax.i64(i64 %i.aba, i64 1)
  %i.abf = add nsw i64 %smax, -1                  ; 3 uses
  %i.abg = mul i64 %i.abf, %i.aau                 ; 5 uses
  %scevgep1063 = getelementptr i8, ptr %i.zp, i64 %i.abg
  %i.abh = add nsw i64 %.1234.i.idx, %i.aaw       ; 2 uses
  %i.abi = getelementptr i8, ptr %i.zj, i64 %i.abh
  %scevgep1067 = getelementptr i8, ptr %i.abi, i64 %i.aay
  %i.abj = mul i64 %i.abf, %i.abb                 ; 4 uses
  %i.abk = getelementptr i8, ptr %i.zj, i64 %i.abh
  %i.abl = getelementptr i8, ptr %i.abk, i64 %i.abj
  %scevgep1070.a = getelementptr i8, ptr %i.abl, i64 %i.aay
  %i.abm = getelementptr i8, ptr %i.zj, i64 %.1234.i.idx
  %scevgep1072.a = getelementptr i8, ptr %i.abm, i64 %i.aay
  %i.abn = getelementptr i8, ptr %i.zj, i64 %.1234.i.idx
  %i.abo = getelementptr i8, ptr %i.abn, i64 %i.abj
  %scevgep1074.a = getelementptr i8, ptr %i.abo, i64 %i.aay
  %i.abp = add nsw i64 %.1234.i.idx, %i.aaw       ; 2 uses
  %scevgep1076.a = getelementptr i8, ptr %i.zj, i64 %i.abp
  %i.abq = getelementptr i8, ptr %i.zj, i64 %i.abp
  %scevgep1078.a = getelementptr i8, ptr %i.abq, i64 %i.abj
  %i.abr = getelementptr i8, ptr %i.zj, i64 %.1234.i.idx
  %scevgep1080.a = getelementptr i8, ptr %i.abr, i64 %i.abj
  %i.abs = shl i64 %i.abf, 1
  %i.abt = mul i64 %i.abs, %i.aaz
  %scevgep1090.a = getelementptr i8, ptr %i.yl, i64 %i.abt
  %i.abu = or i32 %i.zn, %i.zq
  %op.rdx1167.a = icmp slt i32 %i.abu, 0
  br label %bb.dr

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.abv = icmp eq i32 %.0.i652, %i.yw
  br i1 %i.abv, label %predict_slice.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.abw = mul i32 %i.zh, %.0.i652                ; 2 uses
  %i.abx = add nuw nsw i32 %.0.i652, 1
  %i.aby = mul nsw i32 %i.zh, %i.abx
  %..i390 = call i32 @llvm.smin.i32(i32 %i.zr, i32 %i.aby) ; 2 uses
  %i.abz = icmp slt i32 %i.abw, %..i390
  %i.aca = icmp sgt i32 %i.zq, 0
  %or.cond707 = select i1 %i.abz, i1 %i.aca, i1 false
  br i1 %or.cond707, label %.preheader.preheader, label %predict_slice.exit

.preheader.preheader:                             ; preds = %bb.dq
  %i.acb = sext i32 %i.abw to i64                 ; 3 uses
  %i.acc = sext i32 %i.zn to i64                  ; 3 uses
  %i.acd = zext nneg i32 %i.zq to i64
  %i.ace = sext i32 %..i390 to i64                ; 3 uses
  %wide.trip.count732 = zext nneg i32 %i.zq to i64 ; 8 uses
  %i.acf = mul nsw i64 %i.acc, %i.acb
  %scevgep1148.a = getelementptr i8, ptr %i.zp, i64 %i.acf
  %i.acg = add nsw i64 %i.ace, -1
  %i.ach = mul i64 %i.acg, %i.acc
  %i.aci = getelementptr i8, ptr %i.zp, i64 %i.ach
  %scevgep1149.a = getelementptr i8, ptr %i.aci, i64 %wide.trip.count732
  %i.acj = shl nsw i64 %i.acb, 1
  %i.ack = mul nsw i64 %i.acj, %wide.trip.count732
  %scevgep1150.a = getelementptr i8, ptr %i.yl, i64 %i.ack
  %i.acl = shl nsw i64 %i.ace, 1
  %i.acm = mul nsw i64 %i.acl, %wide.trip.count732
  %scevgep1151 = getelementptr i8, ptr %i.yl, i64 %i.acm
  %min.iters.check1157 = icmp ult i32 %i.zq, 8
  %bound01152 = icmp ult ptr %scevgep1148.a, %scevgep1151
  %bound11153 = icmp ult ptr %scevgep1150.a, %scevgep1149.a
  %found.conflict1154 = and i1 %bound01152, %bound11153
  %stride.check1155 = icmp slt i32 %i.zn, 0
  %i.acn = or i1 %found.conflict1154, %stride.check1155
  %n.vec1159 = and i64 %wide.trip.count732, 2147483640 ; 3 uses
  %cmp.n1165 = icmp eq i64 %n.vec1159, %wide.trip.count732
  %xtraiter = and i64 %wide.trip.count732, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aco = add nsw i64 %wide.trip.count732, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge639
  %indvars.iv734 = phi i64 [ %i.acb, %.preheader.preheader ], [ %indvars.iv.next735, %._crit_edge639 ] ; 3 uses
  %i.acp = mul nsw i64 %indvars.iv734, %i.acd
  %i.acq = mul nsw i64 %indvars.iv734, %i.acc
  %invariant.gep = getelementptr [2 x i8], ptr %i.yl, i64 %i.acp ; 4 uses
  %invariant.gep975 = getelementptr i8, ptr %i.zp, i64 %i.acq ; 4 uses
  %brmerge = select i1 %min.iters.check1157, i1 true, i1 %i.acn
  br i1 %brmerge, label %scalar.ph1156.preheader, label %vector.body1160

vector.body1160:                                  ; preds = %.preheader, %vector.body1160
  %index1161 = phi i64 [ %index.next1163, %vector.body1160 ], [ 0, %.preheader ] ; 3 uses
  %i.acr = getelementptr [2 x i8], ptr %invariant.gep, i64 %index1161
  %wide.load1162 = load <8 x i16>, ptr %i.acr, align 2, !tbaa !55, !alias.scope !177 ; 2 uses
  %i.acs = sext <8 x i16> %wide.load1162 to <8 x i32>
  %i.act = add nsw <8 x i32> %i.acs, splat (i32 2056)
  %i.acu = ashr <8 x i32> %i.act, splat (i32 4)   ; 2 uses
  %i.acv = icmp ugt <8 x i32> %i.acu, splat (i32 255)
  %i.acw = icmp sgt <8 x i16> %wide.load1162, splat (i16 -2057)
  %i.acx = sext <8 x i1> %i.acw to <8 x i32>
  %i.acy = select <8 x i1> %i.acv, <8 x i32> %i.acx, <8 x i32> %i.acu
  %i.acz = trunc <8 x i32> %i.acy to <8 x i8>
  %i.ada = getelementptr i8, ptr %invariant.gep975, i64 %index1161
  store <8 x i8> %i.acz, ptr %i.ada, align 1, !tbaa !44, !alias.scope !178, !noalias !177
  %index.next1163 = add nuw i64 %index1161, 8     ; 2 uses
  %i.adb = icmp eq i64 %index.next1163, %n.vec1159
  br i1 %i.adb, label %middle.block1164, label %vector.body1160, !llvm.loop !73

middle.block1164:                                 ; preds = %vector.body1160
  br i1 %cmp.n1165, label %._crit_edge639, label %scalar.ph1156.preheader

scalar.ph1156.preheader:                          ; preds = %.preheader, %middle.block1164
  %indvars.iv729.ph = phi i64 [ %n.vec1159, %middle.block1164 ], [ 0, %.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph1156.prol.loopexit, label %scalar.ph1156.prol

scalar.ph1156.prol:                               ; preds = %scalar.ph1156.preheader
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv729.ph
  %i.adc = load i16, ptr %gep.prol, align 2, !tbaa !55 ; 2 uses
  %i.add = sext i16 %i.adc to i32
  %i.ade = add nsw i32 %i.add, 2056
  %i.adf = ashr i32 %i.ade, 4                     ; 2 uses
  %i.adg = icmp ugt i32 %i.adf, 255
  %isnotneg.i391.prol = icmp sgt i16 %i.adc, -2057
  %i.adh = sext i1 %isnotneg.i391.prol to i32
  %.0.i392.prol = select i1 %i.adg, i32 %i.adh, i32 %i.adf
  %i.adi = trunc i32 %.0.i392.prol to i8
  %gep976.prol = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv729.ph
  store i8 %i.adi, ptr %gep976.prol, align 1, !tbaa !44
  %indvars.iv.next730.prol = or disjoint i64 %indvars.iv729.ph, 1
  br label %scalar.ph1156.prol.loopexit

scalar.ph1156.prol.loopexit:                      ; preds = %scalar.ph1156.prol, %scalar.ph1156.preheader
  %indvars.iv729.unr = phi i64 [ %indvars.iv729.ph, %scalar.ph1156.preheader ], [ %indvars.iv.next730.prol, %scalar.ph1156.prol ]
  %i.adj = icmp eq i64 %indvars.iv729.ph, %i.aco
  br i1 %i.adj, label %._crit_edge639, label %scalar.ph1156

scalar.ph1156:                                    ; preds = %scalar.ph1156.prol.loopexit, %scalar.ph1156
  %indvars.iv729 = phi i64 [ %indvars.iv.next730.1, %scalar.ph1156 ], [ %indvars.iv729.unr, %scalar.ph1156.prol.loopexit ] ; 4 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv729
  %i.adk = load i16, ptr %gep, align 2, !tbaa !55 ; 2 uses
  %i.adl = sext i16 %i.adk to i32
  %i.adm = add nsw i32 %i.adl, 2056
  %i.adn = ashr i32 %i.adm, 4                     ; 2 uses
  %i.ado = icmp ugt i32 %i.adn, 255
  %isnotneg.i391 = icmp sgt i16 %i.adk, -2057
  %i.adp = sext i1 %isnotneg.i391 to i32
  %.0.i392 = select i1 %i.ado, i32 %i.adp, i32 %i.adn
  %i.adq = trunc i32 %.0.i392 to i8
  %gep976 = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv729
  store i8 %i.adq, ptr %gep976, align 1, !tbaa !44
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next730
  %i.adr = load i16, ptr %gep.1, align 2, !tbaa !55 ; 2 uses
  %i.ads = sext i16 %i.adr to i32
  %i.adt = add nsw i32 %i.ads, 2056
  %i.adu = ashr i32 %i.adt, 4                     ; 2 uses
  %i.adv = icmp ugt i32 %i.adu, 255
  %isnotneg.i391.1 = icmp sgt i16 %i.adr, -2057
  %i.adw = sext i1 %isnotneg.i391.1 to i32
  %.0.i392.1 = select i1 %i.adv, i32 %i.adw, i32 %i.adu
  %i.adx = trunc i32 %.0.i392.1 to i8
  %gep976.1 = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv.next730
  store i8 %i.adx, ptr %gep976.1, align 1, !tbaa !44
  %indvars.iv.next730.1 = add nuw nsw i64 %indvars.iv729, 2 ; 2 uses
  %exitcond733.not.1 = icmp eq i64 %indvars.iv.next730.1, %wide.trip.count732
  br i1 %exitcond733.not.1, label %._crit_edge639, label %scalar.ph1156, !llvm.loop !74

._crit_edge639:                                   ; preds = %scalar.ph1156.prol.loopexit, %scalar.ph1156, %middle.block1164
  %indvars.iv.next735 = add nsw i64 %indvars.iv734, 1 ; 2 uses
  %i.ady = icmp slt i64 %indvars.iv.next735, %i.ace
  br i1 %i.ady, label %.preheader, label %predict_slice.exit, !llvm.loop !75

bb.dr:                                            ; preds = %.lr.ph650, %add_yblock.exit
  %indvars.iv743 = phi i64 [ 0, %.lr.ph650 ], [ %indvars.iv.next744, %add_yblock.exit ] ; 6 uses
  %i.adz = mul i64 %indvars.iv743, %i.abc         ; 2 uses
  %i.aea = trunc i64 %i.adz to i32
  %i.aeb = sub i32 %i.aea, %i.zx                  ; 2 uses
  %smax1064 = call i32 @llvm.smax.i32(i32 %i.aeb, i32 0) ; 3 uses
  %i.aec = add i32 %i.aeb, %i.zg
  %smin1065 = call i32 @llvm.smin.i32(i32 %i.zq, i32 %i.aec)
  %5 = sub i32 %smin1065, %smax1064
  %i.aed = call i32 @llvm.umax.i32(i32 %5, i32 1)
  %umax = zext i32 %i.aed to i64                  ; 7 uses
  %6 = add i32 %i.aaq, %smax1064
  %7 = sext i32 %6 to i64
  %i.aee = getelementptr i8, ptr %scevgep1063, i64 %umax
  %scevgep1066 = getelementptr i8, ptr %i.aee, i64 %7 ; 2 uses
  %i.aef = sub i64 %i.adz, %i.abd
  %smin1068 = call i64 @llvm.smin.i64(i64 %i.aef, i64 0) ; 2 uses
  %i.aeg = sub nsw i64 0, %smin1068               ; 3 uses
  %scevgep1069 = getelementptr i8, ptr %scevgep1067, i64 %i.aeg
  %i.aeh = sub i64 %umax, %smin1068               ; 4 uses
  %scevgep1071 = getelementptr i8, ptr %scevgep1070.a, i64 %i.aeh
  %scevgep1073 = getelementptr i8, ptr %scevgep1072.a, i64 %i.aeg
  %scevgep1075 = getelementptr i8, ptr %scevgep1074.a, i64 %i.aeh
  %scevgep1077 = getelementptr i8, ptr %scevgep1076.a, i64 %i.aeg
  %scevgep1079 = getelementptr i8, ptr %scevgep1078.a, i64 %i.aeh
  %scevgep1081.a = getelementptr i8, ptr %scevgep1080.a, i64 %i.aeh
  %i.aei = add i32 %i.aap, %smax1064
  %i.aej = sext i32 %i.aei to i64
  %i.aek = add nsw i64 %umax, %i.aej
  %i.ael = shl nsw i64 %i.aek, 1
  %scevgep1091 = getelementptr i8, ptr %scevgep1090.a, i64 %i.ael
  %i.aem = mul nuw nsw i64 %indvars.iv743, %i.abc
  %i.aen = sub nsw i64 %i.aem, %i.abd             ; 2 uses
  %i.aeo = load i32, ptr %i.ws, align 8, !tbaa !52
  %i.aep = load i32, ptr %i.sq, align 8, !tbaa !47 ; 2 uses
  %i.aeq = shl i32 %i.aeo, %i.aep                 ; 2 uses
  %i.aer = load i32, ptr %i.wu, align 4, !tbaa !170
  %i.aes = shl i32 %i.aer, %i.aep
  %i.aet = load ptr, ptr %i.xj, align 8, !tbaa !56
  %i.aeu = mul nsw i32 %i.aeq, %i.aab
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = getelementptr [10 x i8], ptr %i.aet, i64 %indvars.iv743
  %i.aex = getelementptr i8, ptr %i.aew, i64 -10
  %i.aey = getelementptr [10 x i8], ptr %i.aex, i64 %i.aev ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 10 ; 3 uses
  %i.afa = sext i32 %i.aeq to i64                 ; 2 uses
  %i.afb = getelementptr inbounds [10 x i8], ptr %i.aey, i64 %i.afa ; 3 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 10 ; 3 uses
  %i.afd = load ptr, ptr %i.xk, align 8, !tbaa !181 ; 6 uses
  %i.afe = icmp eq i64 %indvars.iv743, 0
  br i1 %i.afe, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.not.i393 = icmp slt i64 %indvars.iv743, %i.afa ; 2 uses
  %spec.select.i = select i1 %.not.i393, ptr %i.aez, ptr %i.aey
  %spec.select257.i = select i1 %.not.i393, ptr %i.afc, ptr %i.afb
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0228.i = phi ptr [ %i.aey, %bb.ds ], [ %i.aez, %bb.dr ] ; 2 uses
  %.0226.i = phi ptr [ %spec.select.i, %bb.ds ], [ %i.aez, %bb.dr ] ; 2 uses
  %.0224.i = phi ptr [ %i.afb, %bb.ds ], [ %i.afc, %bb.dr ] ; 3 uses
  %.0222.i = phi ptr [ %spec.select257.i, %bb.ds ], [ %i.afc, %bb.dr ] ; 3 uses
  br i1 %i.aaf, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.not249.i = icmp slt i32 %.0.i652, %i.aes      ; 2 uses
  %spec.select258.i = select i1 %.not249.i, ptr %.0224.i, ptr %.0228.i
  %spec.select259.i = select i1 %.not249.i, ptr %.0222.i, ptr %.0226.i
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.1229.i = phi ptr [ %.0228.i, %bb.du ], [ %.0224.i, %bb.dt ] ; 20 uses
  %.1227.i = phi ptr [ %.0226.i, %bb.du ], [ %.0222.i, %bb.dt ] ; 22 uses
  %.1225.i = phi ptr [ %spec.select258.i, %bb.du ], [ %.0224.i, %bb.dt ] ; 21 uses
  %.1223.i = phi ptr [ %spec.select259.i, %bb.du ], [ %.0222.i, %bb.dt ] ; 20 uses
  %i.aff = trunc nsw i64 %i.aen to i32            ; 2 uses
  %i.afg = call i32 @llvm.smin.i32(i32 %i.aff, i32 0)
  %.0237.i = add nsw i32 %i.afg, %i.zg            ; 2 uses
  %.0235.i = call i32 @llvm.smax.i32(i32 %i.aff, i32 0) ; 8 uses
  %i.afh = call i64 @llvm.smin.i64(i64 %i.aen, i64 0)
  %.0233.i.idx = sub i64 0, %i.afh
  %i.afi = add nsw i32 %.0237.i, %.0235.i
  %i.afj = icmp sgt i32 %i.afi, %i.zq
  %i.afk = sub nsw i32 %i.zq, %.0235.i
  %spec.select261.i = select i1 %i.afj, i32 %i.afk, i32 %.0237.i ; 7 uses
  %gep980 = getelementptr i8, ptr %invariant.gep979, i64 %.0233.i.idx ; 2 uses
  %i.afl = icmp slt i32 %spec.select261.i, 1
  %or.cond5.i = select i1 %i.afl, i1 true, i1 %i.aao
  br i1 %or.cond5.i, label %add_yblock.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.afm = add i32 %.0235.i, %i.aap
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr [2 x i8], ptr %i.yl, i64 %i.afn ; 2 uses
  %i.afp = add i32 %.0235.i, %i.aaq
  %i.afq = sext i32 %i.afp to i64
  %i.afr = getelementptr i8, ptr %i.zp, i64 %i.afq ; 4 uses
  %i.afs = getelementptr inbounds i8, ptr %i.afd, i64 %i.aas ; 11 uses
  %i.aft = getelementptr inbounds i8, ptr %i.afs, i64 %i.aat ; 5 uses
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %i.afs, ptr noundef %i.afd, i64 noundef %i.aau, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef %.1229.i, i32 noundef %i.yp, i32 noundef %i.zq, i32 noundef %i.zr) #9
  %i.afu = getelementptr inbounds nuw i8, ptr %.1229.i, i64 8 ; 3 uses
  %i.afv = load i8, ptr %i.afu, align 2, !tbaa !58 ; 4 uses
  %i.afw = and i8 %i.afv, 1
  %.not.i501 = icmp eq i8 %i.afw, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1227.i, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !58 ; 2 uses
  %i.afx = and i8 %.pre, 1
  %.not16.i502 = icmp eq i8 %i.afx, 0
  %or.cond987 = select i1 %.not.i501, i1 true, i1 %.not16.i502
  br i1 %or.cond987, label %same_block.exit507, label %.split

.split:                                           ; preds = %bb.dw
  %i.afy = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !44
  %i.aga = getelementptr inbounds nuw i8, ptr %.1227.i, i64 5
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !44
  %i.agc = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.agd = load i8, ptr %i.agc, align 2, !tbaa !44
  %i.age = getelementptr inbounds nuw i8, ptr %.1227.i, i64 6
  %i.agf = load i8, ptr %i.age, align 2, !tbaa !44
  %i.agg = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !44
  %i.agi = getelementptr inbounds nuw i8, ptr %.1227.i, i64 7
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !44
  %i.agk = icmp eq i8 %i.afz, %i.agb
  %i.agl = icmp eq i8 %i.agd, %i.agf
  %i.agm = and i1 %i.agk, %i.agl
  %i.agn = icmp eq i8 %i.agh, %i.agj
  %.not18.i503 = and i1 %i.agm, %i.agn
  br i1 %.not18.i503, label %bb.dy, label %bb.dx

same_block.exit507:                               ; preds = %bb.dw
  %i.ago = load i16, ptr %.1229.i, align 2, !tbaa !59
  %i.agp = sext i16 %i.ago to i32
  %i.agq = load i16, ptr %.1227.i, align 2, !tbaa !59
  %i.agr = sext i16 %i.agq to i32
  %i.ags = sub nsw i32 %i.agp, %i.agr
  %i.agt = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.agu = load i16, ptr %i.agt, align 2, !tbaa !60
  %i.agv = sext i16 %i.agu to i32
  %i.agw = getelementptr inbounds nuw i8, ptr %.1227.i, i64 2
  %i.agx = load i16, ptr %i.agw, align 2, !tbaa !60
  %i.agy = sext i16 %i.agx to i32
  %i.agz = sub nsw i32 %i.agv, %i.agy
  %i.aha = or i32 %i.agz, %i.ags
  %i.ahb = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.ahc = load i8, ptr %i.ahb, align 2, !tbaa !61
  %i.ahd = zext i8 %i.ahc to i32
  %i.ahe = getelementptr inbounds nuw i8, ptr %.1227.i, i64 4
  %i.ahf = load i8, ptr %i.ahe, align 2, !tbaa !61
  %i.ahg = zext i8 %i.ahf to i32
  %i.ahh = sub nsw i32 %i.ahd, %i.ahg
  %i.ahi = or i32 %i.aha, %i.ahh
  %i.ahj = xor i8 %.pre, %i.afv
  %i.ahk = and i8 %i.ahj, 1
  %i.ahl = zext nneg i8 %i.ahk to i32
  %i.ahm = or i32 %i.ahi, %i.ahl
  %.not17.i506 = icmp eq i32 %i.ahm, 0
  br i1 %.not17.i506, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.split, %same_block.exit507
  %i.ahn = getelementptr inbounds i8, ptr %i.aft, i64 %i.aat
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %i.aft, ptr noundef %i.afd, i64 noundef %i.aau, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef nonnull %.1227.i, i32 noundef %i.yp, i32 noundef %i.zq, i32 noundef %i.zr) #9
  %.pre799 = load i8, ptr %i.afu, align 2, !tbaa !58
  br label %bb.dy

bb.dy:                                            ; preds = %.split, %same_block.exit507, %bb.dx
  %i.aho = phi i8 [ %.pre799, %bb.dx ], [ %i.afv, %same_block.exit507 ], [ %i.afv, %.split ] ; 6 uses
  %.sroa.7.0 = phi ptr [ %i.aft, %bb.dx ], [ %i.afs, %same_block.exit507 ], [ %i.afs, %.split ] ; 8 uses
  %.0221.i = phi ptr [ %i.ahn, %bb.dx ], [ %i.aft, %same_block.exit507 ], [ %i.aft, %.split ] ; 7 uses
  %i.ahp = and i8 %i.aho, 1
  %.not.i494 = icmp eq i8 %i.ahp, 0
  %.phi.trans.insert801 = getelementptr inbounds nuw i8, ptr %.1225.i, i64 8
  %.pre802 = load i8, ptr %.phi.trans.insert801, align 2, !tbaa !58 ; 4 uses
  %i.ahq = and i8 %.pre802, 1
  %.not16.i495 = icmp eq i8 %i.ahq, 0
  %or.cond988 = select i1 %.not.i494, i1 true, i1 %.not16.i495
  br i1 %or.cond988, label %same_block.exit500, label %.split948

.split948:                                        ; preds = %bb.dy
  %i.ahr = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !44
  %i.aht = getelementptr inbounds nuw i8, ptr %.1225.i, i64 5
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !44
  %i.ahv = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.ahw = load i8, ptr %i.ahv, align 2, !tbaa !44
  %i.ahx = getelementptr inbounds nuw i8, ptr %.1225.i, i64 6
  %i.ahy = load i8, ptr %i.ahx, align 2, !tbaa !44
  %i.ahz = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !44
  %i.aib = getelementptr inbounds nuw i8, ptr %.1225.i, i64 7
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !44
  %i.aid = icmp eq i8 %i.ahs, %i.ahu
  %i.aie = icmp eq i8 %i.ahw, %i.ahy
  %i.aif = and i1 %i.aid, %i.aie
  %i.aig = icmp eq i8 %i.aia, %i.aic
  %.not18.i496 = and i1 %i.aif, %i.aig
  br i1 %.not18.i496, label %bb.eb, label %bb.dz

same_block.exit500:                               ; preds = %bb.dy
  %i.aih = load i16, ptr %.1229.i, align 2, !tbaa !59
  %i.aii = sext i16 %i.aih to i32
  %i.aij = load i16, ptr %.1225.i, align 2, !tbaa !59
  %i.aik = sext i16 %i.aij to i32
  %i.ail = sub nsw i32 %i.aii, %i.aik
  %i.aim = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.ain = load i16, ptr %i.aim, align 2, !tbaa !60
  %i.aio = sext i16 %i.ain to i32
  %i.aip = getelementptr inbounds nuw i8, ptr %.1225.i, i64 2
  %i.aiq = load i16, ptr %i.aip, align 2, !tbaa !60
  %i.air = sext i16 %i.aiq to i32
  %i.ais = sub nsw i32 %i.aio, %i.air
  %i.ait = or i32 %i.ais, %i.ail
  %i.aiu = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.aiv = load i8, ptr %i.aiu, align 2, !tbaa !61
  %i.aiw = zext i8 %i.aiv to i32
  %i.aix = getelementptr inbounds nuw i8, ptr %.1225.i, i64 4
  %i.aiy = load i8, ptr %i.aix, align 2, !tbaa !61
  %i.aiz = zext i8 %i.aiy to i32
  %i.aja = sub nsw i32 %i.aiw, %i.aiz
  %i.ajb = or i32 %i.ait, %i.aja
  %i.ajc = xor i8 %.pre802, %i.aho
  %i.ajd = and i8 %i.ajc, 1
  %i.aje = zext nneg i8 %i.ajd to i32
  %i.ajf = or i32 %i.ajb, %i.aje
  %.not17.i499 = icmp eq i32 %i.ajf, 0
  br i1 %.not17.i499, label %bb.eb, label %bb.dz

end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %i.akx = zext nneg i8 %i.akw to i32
  %i.aky = or i32 %i.aku, %i.akx
  %.not17.i471 = icmp eq i32 %i.aky, 0
  br i1 %.not17.i471, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.split949, %same_block.exit472
  %i.akz = getelementptr inbounds i8, ptr %.0221.i, i64 %i.aat
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %.0221.i, ptr noundef %i.afd, i64 noundef %i.aau, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef nonnull %.1225.i, i32 noundef %i.yp, i32 noundef %i.zq, i32 noundef %i.zr) #9
  %.pre803 = load i8, ptr %i.afu, align 2, !tbaa !58
  br label %bb.eb

bb.eb:                                            ; preds = %.split949, %.split948, %same_block.exit472, %same_block.exit500, %bb.ea
  %i.ala = phi i8 [ %.pre803, %bb.ea ], [ %i.aho, %same_block.exit500 ], [ %i.aho, %same_block.exit472 ], [ %i.aho, %.split948 ], [ %i.aho, %.split949 ] ; 2 uses
  %.sroa.12.0 = phi ptr [ %.0221.i, %bb.ea ], [ %i.afs, %same_block.exit500 ], [ %.sroa.7.0, %same_block.exit472 ], [ %i.afs, %.split948 ], [ %.sroa.7.0, %.split949 ] ; 6 uses
  %.1.i394 = phi ptr [ %i.akz, %bb.ea ], [ %.0221.i, %same_block.exit500 ], [ %.0221.i, %same_block.exit472 ], [ %.0221.i, %.split948 ], [ %.0221.i, %.split949 ] ; 2 uses
  %i.alb = and i8 %i.ala, 1
  %.not.i487 = icmp eq i8 %i.alb, 0
  %.phi.trans.insert805 = getelementptr inbounds nuw i8, ptr %.1223.i, i64 8
  %.pre806 = load i8, ptr %.phi.trans.insert805, align 2, !tbaa !58 ; 6 uses
  %i.alc = and i8 %.pre806, 1
  %.not16.i488 = icmp eq i8 %i.alc, 0
  %or.cond990 = select i1 %.not.i487, i1 true, i1 %.not16.i488
  br i1 %or.cond990, label %same_block.exit493, label %.split950

.split950:                                        ; preds = %bb.eb
  %i.ald = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !44
  %i.alf = getelementptr inbounds nuw i8, ptr %.1223.i, i64 5
  %i.alg = load i8, ptr %i.alf, align 1, !tbaa !44
  %i.alh = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.ali = load i8, ptr %i.alh, align 2, !tbaa !44
  %i.alj = getelementptr inbounds nuw i8, ptr %.1223.i, i64 6
  %i.alk = load i8, ptr %i.alj, align 2, !tbaa !44
  %i.all = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !44
  %i.aln = getelementptr inbounds nuw i8, ptr %.1223.i, i64 7
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !44
  %i.alp = icmp eq i8 %i.ale, %i.alg
  %i.alq = icmp eq i8 %i.ali, %i.alk
  %i.alr = and i1 %i.alp, %i.alq
  %i.als = icmp eq i8 %i.alm, %i.alo
  %.not18.i489 = and i1 %i.alr, %i.als
  br i1 %.not18.i489, label %.lr.ph643.preheader, label %bb.ec

same_block.exit493:                               ; preds = %bb.eb
  %i.alt = load i16, ptr %.1229.i, align 2, !tbaa !59
  %i.alu = sext i16 %i.alt to i32
  %i.alv = load i16, ptr %.1223.i, align 2, !tbaa !59
  %i.alw = sext i16 %i.alv to i32
  %i.alx = sub nsw i32 %i.alu, %i.alw
  %i.aly = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.alz = load i16, ptr %i.aly, align 2, !tbaa !60
  %i.ama = sext i16 %i.alz to i32
  %i.amb = getelementptr inbounds nuw i8, ptr %.1223.i, i64 2
  %i.amc = load i16, ptr %i.amb, align 2, !tbaa !60
  %i.amd = sext i16 %i.amc to i32
  %i.ame = sub nsw i32 %i.ama, %i.amd
  %i.amf = or i32 %i.ame, %i.alx
  %i.amg = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.amh = load i8, ptr %i.amg, align 2, !tbaa !61
  %i.ami = zext i8 %i.amh to i32
  %i.amj = getelementptr inbounds nuw i8, ptr %.1223.i, i64 4
  %i.amk = load i8, ptr %i.amj, align 2, !tbaa !61
  %i.aml = zext i8 %i.amk to i32
  %i.amm = sub nsw i32 %i.ami, %i.aml
  %i.amn = or i32 %i.amf, %i.amm
  %i.amo = xor i8 %.pre806, %i.ala
  %i.amp = and i8 %i.amo, 1
  %i.amq = zext nneg i8 %i.amp to i32
  %i.amr = or i32 %i.amn, %i.amq
  %.not17.i492 = icmp eq i32 %i.amr, 0
  br i1 %.not17.i492, label %.lr.ph643.preheader, label %bb.ec

bb.ec:                                            ; preds = %.split950, %same_block.exit493
  %i.ams = getelementptr inbounds nuw i8, ptr %.1227.i, i64 8
  %i.amt = load i8, ptr %i.ams, align 2, !tbaa !58 ; 2 uses
  %i.amu = and i8 %i.amt, 1
  %.not.i480 = icmp eq i8 %i.amu, 0
  %i.amv = and i8 %.pre806, 1
  %.not16.i481 = icmp eq i8 %i.amv, 0
  %or.cond991 = select i1 %.not.i480, i1 true, i1 %.not16.i481
  br i1 %or.cond991, label %same_block.exit486, label %.split951

.split951:                                        ; preds = %bb.ec
  %i.amw = getelementptr inbounds nuw i8, ptr %.1227.i, i64 5
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !44
  %i.amy = getelementptr inbounds nuw i8, ptr %.1223.i, i64 5
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !44
  %i.ana = getelementptr inbounds nuw i8, ptr %.1227.i, i64 6
  %i.anb = load i8, ptr %i.ana, align 2, !tbaa !44
  %i.anc = getelementptr inbounds nuw i8, ptr %.1223.i, i64 6
  %i.and = load i8, ptr %i.anc, align 2, !tbaa !44
  %i.ane = getelementptr inbounds nuw i8, ptr %.1227.i, i64 7
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !44
  %i.ang = getelementptr inbounds nuw i8, ptr %.1223.i, i64 7
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !44
  %i.ani = icmp eq i8 %i.amx, %i.amz
  %i.anj = icmp eq i8 %i.anb, %i.and
  %i.ank = and i1 %i.ani, %i.anj
  %i.anl = icmp eq i8 %i.anf, %i.anh
  %.not18.i482 = and i1 %i.ank, %i.anl
  br i1 %.not18.i482, label %.lr.ph643.preheader, label %bb.ed

same_block.exit486:                               ; preds = %bb.ec
  %i.anm = load i16, ptr %.1227.i, align 2, !tbaa !59
  %i.ann = sext i16 %i.anm to i32
  %i.ano = load i16, ptr %.1223.i, align 2, !tbaa !59
  %i.anp = sext i16 %i.ano to i32
  %i.anq = sub nsw i32 %i.ann, %i.anp
  %i.anr = getelementptr inbounds nuw i8, ptr %.1227.i, i64 2
  %i.ans = load i16, ptr %i.anr, align 2, !tbaa !60
  %i.ant = sext i16 %i.ans to i32
  %i.anu = getelementptr inbounds nuw i8, ptr %.1223.i, i64 2
  %i.anv = load i16, ptr %i.anu, align 2, !tbaa !60
  %i.anw = sext i16 %i.anv to i32
  %i.anx = sub nsw i32 %i.ant, %i.anw
  %i.any = or i32 %i.anx, %i.anq
  %i.anz = getelementptr inbounds nuw i8, ptr %.1227.i, i64 4
  %i.aoa = load i8, ptr %i.anz, align 2, !tbaa !61
  %i.aob = zext i8 %i.aoa to i32
  %i.aoc = getelementptr inbounds nuw i8, ptr %.1223.i, i64 4
  %i.aod = load i8, ptr %i.aoc, align 2, !tbaa !61
  %i.aoe = zext i8 %i.aod to i32
  %i.aof = sub nsw i32 %i.aob, %i.aoe
  %i.aog = or i32 %i.any, %i.aof
  %i.aoh = xor i8 %.pre806, %i.amt
  %i.aoi = and i8 %i.aoh, 1
  %i.aoj = zext nneg i8 %i.aoi to i32
  %i.aok = or i32 %i.aog, %i.aoj
  %.not17.i485 = icmp eq i32 %i.aok, 0
  br i1 %.not17.i485, label %.lr.ph643.preheader, label %bb.ed

bb.ed:                                            ; preds = %.split951, %same_block.exit486
  %i.aol = getelementptr inbounds nuw i8, ptr %.1225.i, i64 8
  %i.aom = load i8, ptr %i.aol, align 2, !tbaa !58 ; 2 uses
  %i.aon = and i8 %i.aom, 1
  %.not.i473 = icmp eq i8 %i.aon, 0
  %i.aoo = and i8 %.pre806, 1
  %.not16.i474 = icmp eq i8 %i.aoo, 0
  %or.cond992 = select i1 %.not.i473, i1 true, i1 %.not16.i474
  br i1 %or.cond992, label %same_block.exit479, label %.split952

.split952:                                        ; preds = %bb.ed
  %i.aop = getelementptr inbounds nuw i8, ptr %.1225.i, i64 5
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !44
  %i.aor = getelementptr inbounds nuw i8, ptr %.1223.i, i64 5
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !44
  %i.aot = getelementptr inbounds nuw i8, ptr %.1225.i, i64 6
  %i.aou = load i8, ptr %i.aot, align 2, !tbaa !44
  %i.aov = getelementptr inbounds nuw i8, ptr %.1223.i, i64 6
  %i.aow = load i8, ptr %i.aov, align 2, !tbaa !44
  %i.aox = getelementptr inbounds nuw i8, ptr %.1225.i, i64 7
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !44
  %i.aoz = getelementptr inbounds nuw i8, ptr %.1223.i, i64 7
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !44
  %i.apb = icmp eq i8 %i.aoq, %i.aos
  %i.apc = icmp eq i8 %i.aou, %i.aow
  %i.apd = and i1 %i.apb, %i.apc
  %i.ape = icmp eq i8 %i.aoy, %i.apa
  %.not18.i475 = and i1 %i.apd, %i.ape
  br i1 %.not18.i475, label %.lr.ph643.preheader, label %bb.ee

same_block.exit479:                               ; preds = %bb.ed
  %i.apf = load i16, ptr %.1225.i, align 2, !tbaa !59
  %i.apg = sext i16 %i.apf to i32
  %i.aph = load i16, ptr %.1223.i, align 2, !tbaa !59
  %i.api = sext i16 %i.aph to i32
  %i.apj = sub nsw i32 %i.apg, %i.api
  %i.apk = getelementptr inbounds nuw i8, ptr %.1225.i, i64 2
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !60
  %i.apm = sext i16 %i.apl to i32
  %i.apn = getelementptr inbounds nuw i8, ptr %.1223.i, i64 2
  %i.apo = load i16, ptr %i.apn, align 2, !tbaa !60
  %i.app = sext i16 %i.apo to i32
  %i.apq = sub nsw i32 %i.apm, %i.app
  %i.apr = or i32 %i.apq, %i.apj
  %i.aps = getelementptr inbounds nuw i8, ptr %.1225.i, i64 4
  %i.apt = load i8, ptr %i.aps, align 2, !tbaa !61
  %i.apu = zext i8 %i.apt to i32
  %i.apv = getelementptr inbounds nuw i8, ptr %.1223.i, i64 4
  %i.apw = load i8, ptr %i.apv, align 2, !tbaa !61
  %i.apx = zext i8 %i.apw to i32
  %i.apy = sub nsw i32 %i.apu, %i.apx
  %i.apz = or i32 %i.apr, %i.apy
  %i.aqa = xor i8 %.pre806, %i.aom
  %i.aqb = and i8 %i.aqa, 1
  %i.aqc = zext nneg i8 %i.aqb to i32
  %i.aqd = or i32 %i.apz, %i.aqc
  %.not17.i478 = icmp eq i32 %i.aqd, 0
  br i1 %.not17.i478, label %.lr.ph643.preheader, label %bb.ee

bb.ee:                                            ; preds = %.split952, %same_block.exit479
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %.1.i394, ptr noundef %i.afd, i64 noundef %i.aau, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef nonnull %.1223.i, i32 noundef %i.yp, i32 noundef %i.zq, i32 noundef %i.zr) #9
  br label %.lr.ph643.preheader

.lr.ph643.preheader:                              ; preds = %bb.ee, %same_block.exit493, %same_block.exit486, %same_block.exit479, %.split950, %.split951, %.split952
  %.sroa.17.0 = phi ptr [ %.1.i394, %bb.ee ], [ %.sroa.7.0, %same_block.exit486 ], [ %i.afs, %same_block.exit493 ], [ %.sroa.12.0, %same_block.exit479 ], [ %i.afs, %.split950 ], [ %.sroa.7.0, %.split951 ], [ %.sroa.12.0, %.split952 ] ; 4 uses
  %i.aqe = zext nneg i32 %spec.select261.i to i64 ; 3 uses
  %i.aqf = getelementptr i8, ptr %i.afd, i64 %i.abg
  %scevgep1082.a = getelementptr i8, ptr %i.aqf, i64 %i.aas
  %scevgep1083.a = getelementptr i8, ptr %scevgep1082.a, i64 %umax
  %scevgep1084.a = getelementptr i8, ptr %.sroa.7.0, i64 %i.abg
  %scevgep1085.a = getelementptr i8, ptr %scevgep1084.a, i64 %umax
  %scevgep1086.a = getelementptr i8, ptr %.sroa.12.0, i64 %i.abg
  %scevgep1087.a = getelementptr i8, ptr %scevgep1086.a, i64 %umax
  %scevgep1088.a = getelementptr i8, ptr %.sroa.17.0, i64 %i.abg
  %scevgep1089 = getelementptr i8, ptr %scevgep1088.a, i64 %umax
  %i.aqg = insertelement <8 x ptr> poison, ptr %i.afr, i64 0
  %i.aqh = shufflevector <8 x ptr> %i.aqg, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aqi = insertelement <8 x ptr> poison, ptr %scevgep1071, i64 0
  %i.aqj = insertelement <8 x ptr> %i.aqi, ptr %scevgep1075, i64 1
  %i.aqk = insertelement <8 x ptr> %i.aqj, ptr %scevgep1079, i64 2
  %i.aql = insertelement <8 x ptr> %i.aqk, ptr %scevgep1081.a, i64 3
  %i.aqm = insertelement <8 x ptr> %i.aql, ptr %scevgep1083.a, i64 4
  %i.aqn = insertelement <8 x ptr> %i.aqm, ptr %scevgep1085.a, i64 5
  %i.aqo = insertelement <8 x ptr> %i.aqn, ptr %scevgep1087.a, i64 6
  %i.aqp = insertelement <8 x ptr> %i.aqo, ptr %scevgep1089, i64 7
  %i.aqq = insertelement <8 x ptr> poison, ptr %scevgep1069, i64 0
  %i.aqr = insertelement <8 x ptr> %i.aqq, ptr %scevgep1073, i64 1
  %i.aqs = insertelement <8 x ptr> %i.aqr, ptr %scevgep1077, i64 2
  %i.aqt = insertelement <8 x ptr> %i.aqs, ptr %gep980, i64 3
  %i.aqu = insertelement <8 x ptr> %i.aqt, ptr %i.afs, i64 4
  %i.aqv = insertelement <8 x ptr> %i.aqu, ptr %.sroa.7.0, i64 5
  %i.aqw = insertelement <8 x ptr> %i.aqv, ptr %.sroa.12.0, i64 6
  %i.aqx = insertelement <8 x ptr> %i.aqw, ptr %.sroa.17.0, i64 7
  %i.aqy = insertelement <8 x ptr> poison, ptr %scevgep1066, i64 0
  %i.aqz = shufflevector <8 x ptr> %i.aqy, <8 x ptr> poison, <8 x i32> zeroinitializer
  %min.iters.check1129 = icmp ult i32 %spec.select261.i, 8
  %i.ara = icmp ult <8 x ptr> %i.aqh, %i.aqp
  %i.arb = icmp ult <8 x ptr> %i.aqx, %i.aqz
  %i.arc = and <8 x i1> %i.ara, %i.arb
  %bound01123 = icmp ult ptr %i.afr, %scevgep1091
  %bound11124 = icmp ult ptr %i.afo, %scevgep1066
  %found.conflict1125 = and i1 %bound01123, %bound11124
  %i.ard = bitcast <8 x i1> %i.arc to i8
  %i.are = icmp ne i8 %i.ard, 0
  %op.rdx = or i1 %i.are, %found.conflict1125
  %op.rdx1168 = or i1 %op.rdx, %op.rdx1167.a
  %n.vec1131 = and i64 %i.aqe, 2147483640         ; 3 uses
  %cmp.n1145 = icmp eq i64 %n.vec1131, %i.aqe
  br label %.lr.ph643

.lr.ph643:                                        ; preds = %.lr.ph643.preheader, %._crit_edge644
  %indvars.iv740 = phi i64 [ 0, %.lr.ph643.preheader ], [ %indvars.iv.next741, %._crit_edge644 ] ; 4 uses
  %i.arf = mul nuw nsw i64 %indvars.iv740, %i.abb
  %i.arg = getelementptr inbounds nuw i8, ptr %gep980, i64 %i.arf ; 4 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.aaw ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.aay ; 3 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.aaw ; 2 uses
  %i.ark = mul nsw i64 %indvars.iv740, %i.aau     ; 2 uses
  %i.arl = mul nsw i64 %indvars.iv740, %i.aaz
  %invariant.gep977 = getelementptr [2 x i8], ptr %i.afo, i64 %i.arl ; 2 uses
  %brmerge1199 = select i1 %min.iters.check1129, i1 true, i1 %op.rdx1168
  br i1 %brmerge1199, label %scalar.ph1128.preheader, label %vector.body1132

vector.body1132:                                  ; preds = %.lr.ph643, %vector.body1132
  %index1133 = phi i64 [ %index.next1143, %vector.body1132 ], [ 0, %.lr.ph643 ] ; 7 uses
  %i.arm = add nsw i64 %index1133, %i.ark         ; 5 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arg, i64 %index1133
  %wide.load1134.a = load <8 x i8>, ptr %i.arn, align 1, !tbaa !44, !alias.scope !182
  %i.aro = zext <8 x i8> %wide.load1134.a to <8 x i32>
  %i.arp = getelementptr inbounds i8, ptr %.sroa.17.0, i64 %i.arm
  %wide.load1135.a = load <8 x i8>, ptr %i.arp, align 1, !tbaa !44, !alias.scope !183
  %i.arq = zext <8 x i8> %wide.load1135.a to <8 x i32>
  %i.arr = mul nuw nsw <8 x i32> %i.arq, %i.aro
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arh, i64 %index1133
  %wide.load1136.a = load <8 x i8>, ptr %i.ars, align 1, !tbaa !44, !alias.scope !184
  %i.art = zext <8 x i8> %wide.load1136.a to <8 x i32>
  %i.aru = getelementptr inbounds i8, ptr %.sroa.12.0, i64 %i.arm
  %wide.load1137.a = load <8 x i8>, ptr %i.aru, align 1, !tbaa !44, !alias.scope !185
  %i.arv = zext <8 x i8> %wide.load1137.a to <8 x i32>
  %i.arw = mul nuw nsw <8 x i32> %i.arv, %i.art
  %i.arx = add nuw nsw <8 x i32> %i.arw, %i.arr
  %i.ary = getelementptr inbounds nuw i8, ptr %i.ari, i64 %index1133
  %wide.load1138.a = load <8 x i8>, ptr %i.ary, align 1, !tbaa !44, !alias.scope !186
  %i.arz = zext <8 x i8> %wide.load1138.a to <8 x i32>
  %i.asa = getelementptr inbounds i8, ptr %.sroa.7.0, i64 %i.arm
  %wide.load1139.a = load <8 x i8>, ptr %i.asa, align 1, !tbaa !44, !alias.scope !187
  %i.asb = zext <8 x i8> %wide.load1139.a to <8 x i32>
  %i.asc = mul nuw nsw <8 x i32> %i.asb, %i.arz
  %i.asd = add nuw nsw <8 x i32> %i.arx, %i.asc
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arj, i64 %index1133
  %wide.load1140.a = load <8 x i8>, ptr %i.ase, align 1, !tbaa !44, !alias.scope !188
  %i.asf = zext <8 x i8> %wide.load1140.a to <8 x i32>
  %i.asg = getelementptr inbounds i8, ptr %i.afs, i64 %i.arm
  %wide.load1141.a = load <8 x i8>, ptr %i.asg, align 1, !tbaa !44, !alias.scope !189
  %i.ash = zext <8 x i8> %wide.load1141.a to <8 x i32>
  %i.asi = mul nuw nsw <8 x i32> %i.ash, %i.asf
  %i.asj = add nuw nsw <8 x i32> %i.asd, %i.asi
  %i.ask = lshr <8 x i32> %i.asj, splat (i32 2)
  %i.asl = getelementptr [2 x i8], ptr %invariant.gep977, i64 %index1133
  %wide.load1142 = load <8 x i16>, ptr %i.asl, align 2, !tbaa !55, !alias.scope !190
  %i.asm = sext <8 x i16> %wide.load1142 to <8 x i32>
  %i.asn = add nsw <8 x i32> %i.ask, %i.asm       ; 2 uses
  %i.aso = add nsw <8 x i32> %i.asn, splat (i32 8)
  %i.asp = ashr <8 x i32> %i.aso, splat (i32 4)   ; 2 uses
  %i.asq = icmp ugt <8 x i32> %i.asp, splat (i32 255)
  %i.asr = icmp sgt <8 x i32> %i.asn, splat (i32 -9)
  %i.ass = sext <8 x i1> %i.asr to <8 x i32>
  %i.ast = select <8 x i1> %i.asq, <8 x i32> %i.ass, <8 x i32> %i.asp
  %i.asu = trunc <8 x i32> %i.ast to <8 x i8>
  %i.asv = getelementptr inbounds i8, ptr %i.afr, i64 %i.arm
  store <8 x i8> %i.asu, ptr %i.asv, align 1, !tbaa !44, !alias.scope !191, !noalias !192
  %index.next1143 = add nuw i64 %index1133, 8     ; 2 uses
  %i.asw = icmp eq i64 %index.next1143, %n.vec1131
  br i1 %i.asw, label %middle.block1144, label %vector.body1132, !llvm.loop !87

middle.block1144:                                 ; preds = %vector.body1132
  br i1 %cmp.n1145, label %._crit_edge644, label %scalar.ph1128.preheader

scalar.ph1128.preheader:                          ; preds = %.lr.ph643, %middle.block1144
  %indvars.iv737.ph = phi i64 [ %n.vec1131, %middle.block1144 ], [ 0, %.lr.ph643 ]
  br label %scalar.ph1128

scalar.ph1128:                                    ; preds = %scalar.ph1128.preheader, %scalar.ph1128
  %indvars.iv737 = phi i64 [ %indvars.iv.next738, %scalar.ph1128 ], [ %indvars.iv737.ph, %scalar.ph1128.preheader ] ; 7 uses
  %i.asx = add nsw i64 %indvars.iv737, %i.ark     ; 5 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.arg, i64 %indvars.iv737
  %i.asz = load i8, ptr %i.asy, align 1, !tbaa !44
  %i.ata = zext i8 %i.asz to i32
  %i.atb = getelementptr inbounds i8, ptr %.sroa.17.0, i64 %i.asx
  %i.atc = load i8, ptr %i.atb, align 1, !tbaa !44
  %i.atd = zext i8 %i.atc to i32
  %i.ate = mul nuw nsw i32 %i.atd, %i.ata
  %i.atf = getelementptr inbounds nuw i8, ptr %i.arh, i64 %indvars.iv737
  %i.atg = load i8, ptr %i.atf, align 1, !tbaa !44
  %i.ath = zext i8 %i.atg to i32
  %i.ati = getelementptr inbounds i8, ptr %.sroa.12.0, i64 %i.asx
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !44
  %i.atk = zext i8 %i.atj to i32
  %i.atl = mul nuw nsw i32 %i.atk, %i.ath
  %i.atm = add nuw nsw i32 %i.atl, %i.ate
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ari, i64 %indvars.iv737
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !44
  %i.atp = zext i8 %i.ato to i32
  %i.atq = getelementptr inbounds i8, ptr %.sroa.7.0, i64 %i.asx
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !44
  %i.ats = zext i8 %i.atr to i32
  %i.att = mul nuw nsw i32 %i.ats, %i.atp
  %i.atu = add nuw nsw i32 %i.atm, %i.att
  %i.atv = getelementptr inbounds nuw i8, ptr %i.arj, i64 %indvars.iv737
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !44
  %i.atx = zext i8 %i.atw to i32
  %i.aty = getelementptr inbounds i8, ptr %i.afs, i64 %i.asx
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !44
  %i.aua = zext i8 %i.atz to i32
  %i.aub = mul nuw nsw i32 %i.aua, %i.atx
  %i.auc = add nuw nsw i32 %i.atu, %i.aub
  %i.aud = lshr i32 %i.auc, 2
  %gep978 = getelementptr [2 x i8], ptr %invariant.gep977, i64 %indvars.iv737
  %i.aue = load i16, ptr %gep978, align 2, !tbaa !55
  %i.auf = sext i16 %i.aue to i32
  %i.aug = add nsw i32 %i.aud, %i.auf             ; 2 uses
  %i.auh = add nsw i32 %i.aug, 8
  %i.aui = ashr i32 %i.auh, 4                     ; 2 uses
  %i.auj = icmp ugt i32 %i.aui, 255
  %isnotneg.i395 = icmp sgt i32 %i.aug, -9
  %i.auk = sext i1 %isnotneg.i395 to i32
  %.0.i396 = select i1 %i.auj, i32 %i.auk, i32 %i.aui
  %i.aul = trunc i32 %.0.i396 to i8
  %i.aum = getelementptr inbounds i8, ptr %i.afr, i64 %i.asx
  store i8 %i.aul, ptr %i.aum, align 1, !tbaa !44
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 2 uses
  %i.aun = icmp samesign ult i64 %indvars.iv.next738, %i.aqe
  br i1 %i.aun, label %scalar.ph1128, label %._crit_edge644, !llvm.loop !88

._crit_edge644:                                   ; preds = %scalar.ph1128, %middle.block1144
  %indvars.iv.next741 = add nuw nsw i64 %indvars.iv740, 1 ; 2 uses
  %i.auo = icmp slt i64 %indvars.iv.next741, %i.aba
  br i1 %i.auo, label %.lr.ph643, label %add_yblock.exit, !llvm.loop !89

add_yblock.exit:                                  ; preds = %._crit_edge644, %bb.dv
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond747.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count746
  br i1 %exitcond747.not, label %predict_slice.exit, label %bb.dr, !llvm.loop !90

predict_slice.exit:                               ; preds = %._crit_edge639, %add_yblock.exit, %bb.dq, %.preheader622, %bb.dp
  %i.aup = add nuw i32 %.0.i652, 1
  %exitcond748.not = icmp eq i32 %.0.i652, %i.yo
  br i1 %exitcond748.not, label %predict_plane.exit.preheader, label %bb.dk, !llvm.loop !91

.preheader621:                                    ; preds = %predict_plane.exit.preheader, %._crit_edge658
  %.0323659 = phi i32 [ %i.avm, %._crit_edge658 ], [ 0, %predict_plane.exit.preheader ] ; 3 uses
  br label %bb.ef

bb.ef:                                            ; preds = %.preheader621, %bb.ef
  %.0324656 = phi i32 [ 0, %.preheader621 ], [ %i.avl, %bb.ef ] ; 3 uses
  %i.auq = load ptr, ptr %i.k, align 8, !tbaa !130 ; 2 uses
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %i.auq, i64 %indvars.iv795
  %i.aus = load ptr, ptr %i.aur, align 8, !tbaa !163
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auq, i64 64
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %indvars.iv795
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !51
  %i.auw = mul nsw i32 %i.auv, %.0323659
  %i.aux = add nsw i32 %i.auw, %.0324656
  %i.auy = sext i32 %i.aux to i64
  %i.auz = getelementptr inbounds i8, ptr %i.aus, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !44
  %i.avb = load ptr, ptr %i.xl, align 8, !tbaa !162 ; 2 uses
  %i.avc = getelementptr inbounds nuw [8 x i8], ptr %i.avb, i64 %indvars.iv795
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !163
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avb, i64 64
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %indvars.iv795
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !51
  %i.avh = mul nsw i32 %i.avg, %.0323659
  %i.avi = add nsw i32 %i.avh, %.0324656
  %i.avj = sext i32 %i.avi to i64
end_hunk_1
begin_hunk_2_@get_symbol2:bb.a
  %i.ak = or disjoint i32 %i.ae, %i.aj
  store i32 %i.ak, ptr %0, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.al, ptr %i.h, align 8, !tbaa !42
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.am = load i32, ptr %i.j, align 8, !tbaa !45
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.j, align 8, !tbaa !45
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.ao = sub nsw i32 %i.s, %i.r
  store i32 %i.ao, ptr %0, align 8, !tbaa !41
  %i.ap = load i8, ptr %i.m, align 1, !tbaa !44
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !44
  store i8 %i.as, ptr %i.m, align 1, !tbaa !44
  store i32 %i.q, ptr %i.f, align 4, !tbaa !40
  %i.at = icmp slt i32 %i.q, 256
  br i1 %i.at, label %bb.h, label %get_rac.exit

bb.h:                                             ; preds = %bb.g
  %i.au = and i32 %i.p, -256                      ; 3 uses
  store i32 %i.au, ptr %i.f, align 4, !tbaa !40
  %i.av = load i32, ptr %0, align 8, !tbaa !41
  %i.aw = shl i32 %i.av, 8                        ; 2 uses
  store i32 %i.aw, ptr %0, align 8, !tbaa !41
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !42  ; 3 uses
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.az = icmp ult ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !44
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.aw, %i.bb
  store i32 %i.bc, ptr %0, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.bd, ptr %i.h, align 8, !tbaa !42
  br label %get_rac.exit

bb.j:                                             ; preds = %bb.h
  %i.be = load i32, ptr %i.j, align 8, !tbaa !45
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.j, align 8, !tbaa !45
  br label %get_rac.exit

get_rac.exit:                                     ; preds = %bb.j, %bb.i, %bb.g
  %i.bg = phi i32 [ %i.au, %bb.j ], [ %i.au, %bb.i ], [ %i.q, %bb.g ]
  %i.bh = add nsw i32 %.02035, %.02134            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bi = icmp sgt i64 %indvars.iv, -1
  %i.bj = zext i1 %i.bi to i32
  %spec.select = shl nsw i32 %.02134, %i.bj
  %exitcond.not = icmp eq i64 %indvars.iv.next, 28
  br i1 %exitcond.not, label %.lr.ph39, label %bb.b, !llvm.loop !234

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.c
  %i.bk = icmp sgt i64 %indvars.iv, 0
  br i1 %i.bk, label %.lr.ph39, label %._crit_edge

.lr.ph39:                                         ; preds = %get_rac.exit, %bb.a, %.critedge
  %.0202968 = phi i32 [ %.02035, %.critedge ], [ 0, %bb.a ], [ %i.bh, %get_rac.exit ]
  %.0233167 = phi i32 [ %i.u, %.critedge ], [ %2, %bb.a ], [ 28, %get_rac.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = zext nneg i32 %.0233167 to i64
  %.pre51 = load i32, ptr %i.bm, align 4, !tbaa !40
  br label %bb.k

._crit_edge:                                      ; preds = %get_rac.exit25, %.critedge
  %.1.lcssa = phi i32 [ %.02035, %.critedge ], [ %i.dq, %get_rac.exit25 ]
  ret i32 %.1.lcssa

bb.k:                                             ; preds = %.lr.ph39, %get_rac.exit25
  %i.bt = phi i32 [ %.pre51, %.lr.ph39 ], [ %i.dn, %get_rac.exit25 ] ; 2 uses
  %indvars.iv48 = phi i64 [ %i.bs, %.lr.ph39 ], [ %indvars.iv.next49, %get_rac.exit25 ] ; 3 uses
  %.137 = phi i32 [ %.0202968, %.lr.ph39 ], [ %i.dq, %get_rac.exit25 ]
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, -1 ; 2 uses
  %i.bu = sub nsw i64 1, %indvars.iv48
  %i.bv = getelementptr inbounds i8, ptr %i.bl, i64 %i.bu ; 5 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !44
  %i.bx = zext i8 %i.bw to i32
  %i.by = mul nsw i32 %i.bt, %i.bx                ; 2 uses
  %i.bz = ashr i32 %i.by, 8                       ; 4 uses
  %i.ca = sub nsw i32 %i.bt, %i.bz                ; 3 uses
  store i32 %i.ca, ptr %i.bm, align 4, !tbaa !40
  %i.cb = load i32, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.ca
  br i1 %i.cc, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !44
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !44
  store i8 %i.cg, ptr %i.bv, align 1, !tbaa !44
  %i.ch = load i32, ptr %i.bm, align 4, !tbaa !40 ; 3 uses
  %i.ci = icmp slt i32 %i.ch, 256
  br i1 %i.ci, label %bb.m, label %get_rac.exit25

bb.m:                                             ; preds = %bb.l
  %i.cj = shl i32 %i.ch, 8                        ; 3 uses
  store i32 %i.cj, ptr %i.bm, align 4, !tbaa !40
  %i.ck = load i32, ptr %0, align 8, !tbaa !41
  %i.cl = shl i32 %i.ck, 8                        ; 2 uses
  store i32 %i.cl, ptr %0, align 8, !tbaa !41
  %i.cm = load ptr, ptr %i.bo, align 8, !tbaa !42 ; 3 uses
  %i.cn = load ptr, ptr %i.bp, align 8, !tbaa !43
  %i.co = icmp ult ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cp = load i8, ptr %i.cm, align 1, !tbaa !44
  %i.cq = zext i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.cl, %i.cq
  store i32 %i.cr, ptr %0, align 8, !tbaa !41
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cs, ptr %i.bo, align 8, !tbaa !42
  br label %get_rac.exit25

bb.o:                                             ; preds = %bb.m
  %i.ct = load i32, ptr %i.bq, align 8, !tbaa !45
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.bq, align 8, !tbaa !45
  br label %get_rac.exit25

bb.p:                                             ; preds = %bb.k
  %i.cv = sub nsw i32 %i.cb, %i.ca
  store i32 %i.cv, ptr %0, align 8, !tbaa !41
  %i.cw = load i8, ptr %i.bv, align 1, !tbaa !44
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !44
  store i8 %i.cz, ptr %i.bv, align 1, !tbaa !44
  store i32 %i.bz, ptr %i.bm, align 4, !tbaa !40
  %i.da = icmp slt i32 %i.bz, 256
  br i1 %i.da, label %bb.q, label %get_rac.exit25

bb.q:                                             ; preds = %bb.p
  %i.db = and i32 %i.by, -256                     ; 3 uses
  store i32 %i.db, ptr %i.bm, align 4, !tbaa !40
  %i.dc = load i32, ptr %0, align 8, !tbaa !41
  %i.dd = shl i32 %i.dc, 8                        ; 2 uses
  store i32 %i.dd, ptr %0, align 8, !tbaa !41
  %i.de = load ptr, ptr %i.bo, align 8, !tbaa !42 ; 3 uses
  %i.df = load ptr, ptr %i.bp, align 8, !tbaa !43
  %i.dg = icmp ult ptr %i.de, %i.df
  br i1 %i.dg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = load i8, ptr %i.de, align 1, !tbaa !44
  %i.di = zext i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.dd, %i.di
  store i32 %i.dj, ptr %0, align 8, !tbaa !41
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store ptr %i.dk, ptr %i.bo, align 8, !tbaa !42
  br label %get_rac.exit25

bb.s:                                             ; preds = %bb.q
  %i.dl = load i32, ptr %i.bq, align 8, !tbaa !45
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.bq, align 8, !tbaa !45
  br label %get_rac.exit25

get_rac.exit25:                                   ; preds = %bb.l, %bb.n, %bb.o, %bb.p, %bb.r, %bb.s
  %i.dn = phi i32 [ %i.ch, %bb.l ], [ %i.bz, %bb.p ], [ %i.cj, %bb.o ], [ %i.cj, %bb.n ], [ %i.db, %bb.r ], [ %i.db, %bb.s ]
  %.0.i24 = phi i32 [ 0, %bb.l ], [ 1, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 1, %bb.r ], [ 1, %bb.s ]
  %i.do = trunc nuw nsw i64 %indvars.iv.next49 to i32
  %i.dp = shl nuw i32 %.0.i24, %i.do
  %i.dq = add nsw i32 %i.dp, %.137                ; 2 uses
  %i.dr = icmp samesign ugt i64 %indvars.iv48, 1
  br i1 %i.dr, label %bb.k, label %._crit_edge, !llvm.loop !235
}

declare void @ff_snow_common_end(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!14 = !{!"AVRational", !6, i64 0, !6, i64 4}
!15 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!16 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!17 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!18 = !{!"float", !5, i64 0}
!19 = !{!"p1 short", !9, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!23 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !15, i64 0, !6, i64 8, !6, i64 12, !16, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !17, i64 40, !9, i64 48, !11, i64 56, !6, i64 64, !6, i64 68, !12, i64 72, !6, i64 80, !14, i64 84, !14, i64 92, !14, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !14, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !11, i64 464, !11, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !12, i64 496, !12, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !9, i64 544, !10, i64 552, !10, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !23, i64 728, !12, i64 736, !6, i64 744, !6, i64 748, !12, i64 752, !12, i64 760, !12, i64 768, !13, i64 776, !6, i64 784, !6, i64 788, !11, i64 792, !6, i64 800, !6, i64 804, !11, i64 808, !9, i64 816, !11, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!30 = !{!"RangeCoder", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !5, i64 16, !5, i64 272, !12, i64 528, !12, i64 536, !12, i64 544, !6, i64 552}
!31 = !{!"HpelDSPContext", !5, i64 0, !5, i64 128, !5, i64 256, !5, i64 352}
!32 = !{!"VideoDSPContext", !9, i64 0, !9, i64 8}
!33 = !{!"SnowDWTContext", !9, i64 0, !9, i64 8, !9, i64 16}
!34 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!35 = !{!"p1 _ZTS9BlockNode", !9, i64 0}
!36 = !{!"p2 short", !25, i64 0}
!37 = !{!"slice_buffer_s", !36, i64 0, !36, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !19, i64 32}
!38 = !{!"p1 _ZTS14AVMotionVector", !9, i64 0}
!39 = !{!"SnowContext", !15, i64 0, !29, i64 8, !30, i64 16, !31, i64 576, !32, i64 960, !5, i64 976, !33, i64 1744, !34, i64 1768, !34, i64 1776, !5, i64 1784, !34, i64 1848, !5, i64 1856, !5, i64 1888, !6, i64 6112, !6, i64 6116, !6, i64 6120, !6, i64 6124, !6, i64 6128, !6, i64 6132, !6, i64 6136, !6, i64 6140, !6, i64 6144, !6, i64 6148, !6, i64 6152, !5, i64 6160, !5, i64 6224, !24, i64 6288, !24, i64 6296, !19, i64 6304, !19, i64 6312, !24, i64 6320, !6, i64 6328, !6, i64 6332, !6, i64 6336, !6, i64 6340, !6, i64 6344, !6, i64 6348, !6, i64 6352, !6, i64 6356, !6, i64 6360, !6, i64 6364, !6, i64 6368, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !5, i64 6392, !35, i64 155032, !37, i64 155040, !12, i64 155080, !38, i64 155088, !6, i64 155096, !6, i64 155100}
!40 = !{!30, !6, i64 4}
!41 = !{!30, !6, i64 0}
!42 = !{!30, !12, i64 536}
!43 = !{!30, !12, i64 544}
!44 = !{!5, !5, i64 0}
!45 = !{!30, !6, i64 552}
!46 = !{!39, !6, i64 6112}
!47 = !{!39, !6, i64 6376}
!48 = !{!39, !29, i64 8}
!49 = !{!39, !6, i64 6384}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!6, !6, i64 0}
!52 = !{!39, !6, i64 6368}
!53 = !{!39, !6, i64 155096}
!54 = !{!"short", !5, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!39, !35, i64 155032}
!57 = !{!"BlockNode", !54, i64 0, !54, i64 2, !5, i64 4, !5, i64 5, !5, i64 8, !5, i64 9}
!58 = !{!57, !5, i64 8}
!59 = !{!57, !54, i64 0}
!60 = !{!57, !54, i64 2}
!61 = !{!57, !5, i64 4}
!62 = distinct !{!62, !50}
!63 = distinct !{!63, !50}
!64 = distinct !{!64, !50, !155}
!65 = distinct !{!65, !50}
!66 = distinct !{!66, !50}
!67 = distinct !{!67, !50}
!68 = distinct !{!68, !50}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, i1 false, !"LVerDomain"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !50, !179, !180}
!74 = distinct !{!74, !50, !179}
!75 = distinct !{!75, !50}
!76 = distinct !{!76, i1 false, !"LVerDomain"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !76}
!80 = distinct !{!80, !76}
!81 = distinct !{!81, !76}
!82 = distinct !{!82, !76}
!83 = distinct !{!83, !76}
!84 = distinct !{!84, !76}
!85 = distinct !{!85, !76}
!86 = distinct !{!86, !76}
!87 = distinct !{!87, !50, !179, !180}
!88 = distinct !{!88, !50, !179}
!89 = distinct !{!89, !50}
!90 = distinct !{!90, !50}
!91 = distinct !{!91, !50}
!92 = distinct !{!92, !50}
!93 = distinct !{!93, !50}
!94 = distinct !{!94, !50}
!95 = distinct !{!95, !50}
!96 = distinct !{!96, !50}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !50}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !50}
!101 = distinct !{!101, !50}
!102 = distinct !{!102, !50, !206}
!103 = distinct !{!103, !50, !206}
!104 = distinct !{!104, !207}
!105 = distinct !{!105, !50}
!106 = distinct !{!106, !50, !179, !180}
!107 = distinct !{!107, !50, !180, !179}
!108 = distinct !{!108, !50}
!109 = distinct !{!109, !50}
!110 = distinct !{!110, !50}
!111 = distinct !{!111, !50}
!112 = distinct !{!112, !50, !179, !180}
!113 = distinct !{!113, !50, !179, !180}
!114 = distinct !{!114, !50, !180, !179}
!115 = distinct !{!115, !50}
!116 = distinct !{!116, i1 false, !"LVerDomain"}
!117 = distinct !{!117, !116}
!118 = distinct !{!118, !116}
!119 = distinct !{!119, !50, !179, !180}
!120 = distinct !{!120, !50, !179}
!121 = distinct !{!121, !50}
!122 = distinct !{null}
!123 = distinct !{!123, !50}
!124 = distinct !{!124, !50}
!125 = distinct !{!125, !50}
!126 = distinct !{!126, !50}
!127 = !{!"AVPacket", !10, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !13, i64 48, !6, i64 56, !11, i64 64, !11, i64 72, !9, i64 80, !10, i64 88, !14, i64 96}
!128 = !{!127, !12, i64 24}
!129 = !{!127, !6, i64 32}
!130 = !{!39, !34, i64 1776}
!131 = !{!"p2 omnipotent char", !25, i64 0}
!132 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!133 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!134 = !{!"AVFrame", !5, i64 0, !5, i64 64, !131, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !14, i64 124, !11, i64 136, !11, i64 144, !14, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !132, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !11, i64 304, !133, i64 312, !6, i64 320, !10, i64 328, !10, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !9, i64 376, !20, i64 384, !11, i64 408, !6, i64 416}
!135 = !{!134, !6, i64 120}
!136 = !{!39, !6, i64 6116}
!137 = !{!39, !6, i64 6352}
!138 = !{!39, !6, i64 6360}
!139 = !{!39, !6, i64 6344}
!140 = !{!39, !6, i64 6124}
!141 = !{!39, !6, i64 6120}
!142 = !{!39, !6, i64 6132}
!143 = !{!39, !6, i64 6144}
!144 = !{!39, !6, i64 6136}
!145 = !{!39, !6, i64 6328}
!146 = !{!39, !6, i64 6332}
!147 = !{!39, !6, i64 6336}
!148 = !{!27, !6, i64 136}
!149 = !{!39, !6, i64 6340}
!150 = !{!39, !6, i64 6148}
!151 = !{!"p1 _ZTS11x_and_coeff", !9, i64 0}
!152 = !{!"p1 _ZTS7SubBand", !9, i64 0}
!153 = !{!"SubBand", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !24, i64 24, !19, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !151, i64 56, !152, i64 64, !5, i64 72}
!154 = !{!153, !6, i64 16}
!155 = !{!"llvm.loop.unswitch.partial.disable"}
!156 = !{!"Plane", !6, i64 0, !6, i64 4, !5, i64 8, !6, i64 37128, !5, i64 37132, !6, i64 37136, !6, i64 37140, !6, i64 37144, !5, i64 37148, !6, i64 37152}
!157 = !{!156, !6, i64 37136}
!158 = !{!156, !6, i64 37128}
!159 = !{!27, !6, i64 112}
!160 = !{!27, !6, i64 116}
!161 = !{!27, !6, i64 524}
!162 = !{!39, !34, i64 1848}
!163 = !{!12, !12, i64 0}
!164 = !{!134, !6, i64 116}
!165 = !{!156, !6, i64 4}
!166 = !{!156, !6, i64 0}
!167 = !{!39, !19, i64 6304}
!168 = !{!156, !6, i64 37140}
!169 = !{!27, !6, i64 788}
!170 = !{!39, !6, i64 6372}
!171 = !{!11, !11, i64 0}
!172 = !{!39, !38, i64 155088}
!173 = !{!39, !6, i64 155100}
!174 = !{!39, !12, i64 552}
!175 = !{!39, !12, i64 560}
!176 = !{!39, !24, i64 6288}
!177 = !{!71}
!178 = !{!72}
!179 = !{!"llvm.loop.isvectorized", i32 1}
!180 = !{!"llvm.loop.unroll.runtime.disable"}
!181 = !{!39, !12, i64 155080}
end_hunk_2
