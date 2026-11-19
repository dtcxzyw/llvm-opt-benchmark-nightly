Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowdec?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decode_frame:bb.a
  %.not361 = icmp eq i32 %i.vq, 0
  br i1 %.not361, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vr = load i32, ptr %i.se, align 8, !tbaa !139
  %i.vs = load i32, ptr %i.sm, align 8, !tbaa !138
  %i.vt = load i32, ptr %i.si, align 8, !tbaa !137
  %i.vu = load i32, ptr %i.rh, align 4, !tbaa !140
  %i.vv = load i32, ptr %i.rx, align 8, !tbaa !144
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.vl, i32 noundef %i.vr, i32 noundef %i.vs, i32 noundef %i.vt, i32 noundef %i.vu, i32 noundef %i.vv) #9
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.vw = load ptr, ptr %i.rl, align 8, !tbaa !48
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 788
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !169
  %i.vz = and i32 %i.vy, 1
  %.not362 = icmp eq i32 %i.vz, 0
  br i1 %.not362, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.wa = getelementptr inbounds nuw i8, ptr %i.i, i64 6368
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !52
  %i.wc = getelementptr inbounds nuw i8, ptr %i.i, i64 6372
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !170
  %i.we = mul nsw i32 %i.wd, %i.wb
  %i.wf = sext i32 %i.we to i64
  %i.wg = load i32, ptr %i.sq, align 8, !tbaa !47
  %i.wh = shl nsw i32 %i.wg, 1
  %i.wi = zext nneg i32 %i.wh to i64
  %i.wj = shl i64 40, %i.wi
  %i.wk = call i32 @av_size_mult(i64 noundef %i.wf, i64 noundef %i.wj, ptr noundef nonnull %i.b) #9 ; 2 uses
  %.not363 = icmp eq i32 %i.wk, 0
  br i1 %.not363, label %bb.dc, label %.thread

.thread:                                          ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %decode_header.exit.thread

bb.dc:                                            ; preds = %bb.db
  %i.wl = getelementptr inbounds nuw i8, ptr %i.i, i64 155088 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.i, i64 155096
  %i.wn = load i64, ptr %i.b, align 8, !tbaa !171
  call void @av_fast_malloc(ptr noundef nonnull %i.wl, ptr noundef nonnull %i.wm, i64 noundef %i.wn) #9
  %i.wo = load ptr, ptr %i.wl, align 8, !tbaa !172
  %.not364.not = icmp eq ptr %i.wo, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not364.not, label %decode_header.exit.thread, label %bb.de

bb.dd:                                            ; preds = %bb.da
  %i.wp = getelementptr inbounds nuw i8, ptr %i.i, i64 155096
  store i32 0, ptr %i.wp, align 8, !tbaa !53
  %i.wq = getelementptr inbounds nuw i8, ptr %i.i, i64 155088
  tail call void @av_freep(ptr noundef nonnull %i.wq) #9
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %i.wr = getelementptr inbounds nuw i8, ptr %i.i, i64 155100 ; 5 uses
  store i32 0, ptr %i.wr, align 4, !tbaa !173
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
  %.0.i652 = phi i32 [ 0, %.lr.ph655 ], [ %i.atz, %predict_slice.exit ] ; 9 uses
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
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !163 ; 6 uses
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
  %i.abg = shl i64 %i.abf, 1
  %i.abh = mul i64 %i.abg, %i.aaz
  %scevgep1129 = getelementptr i8, ptr %i.yl, i64 %i.abh
  %i.abi = mul i64 %i.abf, %i.abb                 ; 4 uses
  %i.abj = getelementptr i8, ptr %i.zj, i64 %.1234.i.idx
  %scevgep1141.a = getelementptr i8, ptr %i.abj, i64 %i.abi
  %i.abk = add nsw i64 %.1234.i.idx, %i.aaw       ; 2 uses
  %i.abl = getelementptr i8, ptr %i.zj, i64 %i.abk
  %scevgep1144.a = getelementptr i8, ptr %i.abl, i64 %i.abi
  %scevgep1146.a = getelementptr i8, ptr %i.zj, i64 %i.abk
  %i.abm = getelementptr i8, ptr %i.zj, i64 %.1234.i.idx
  %i.abn = getelementptr i8, ptr %i.abm, i64 %i.abi
  %scevgep1148.a = getelementptr i8, ptr %i.abn, i64 %i.aay
  %i.abo = getelementptr i8, ptr %i.zj, i64 %.1234.i.idx
  %scevgep1150.a = getelementptr i8, ptr %i.abo, i64 %i.aay
  %i.abp = add nsw i64 %.1234.i.idx, %i.aaw       ; 2 uses
  %i.abq = getelementptr i8, ptr %i.zj, i64 %i.abp
  %i.abr = getelementptr i8, ptr %i.abq, i64 %i.abi
  %scevgep1152.a = getelementptr i8, ptr %i.abr, i64 %i.aay
  %i.abs = getelementptr i8, ptr %i.zj, i64 %i.abp
  %scevgep1154 = getelementptr i8, ptr %i.abs, i64 %i.aay
  %5 = mul i64 %i.abf, %i.aau
  %scevgep1156 = getelementptr i8, ptr %i.zp, i64 %5
  %i.abt = or i32 %i.zn, %i.zq
  %op.rdx1243 = icmp slt i32 %i.abt, 0
  br label %bb.dr

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.abu = icmp eq i32 %.0.i652, %i.yw
  br i1 %i.abu, label %predict_slice.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.abv = mul i32 %i.zh, %.0.i652                ; 2 uses
  %i.abw = add nuw nsw i32 %.0.i652, 1
  %i.abx = mul nsw i32 %i.zh, %i.abw
  %..i390 = call i32 @llvm.smin.i32(i32 %i.zr, i32 %i.abx) ; 2 uses
  %i.aby = icmp slt i32 %i.abv, %..i390
  %i.abz = icmp sgt i32 %i.zq, 0
  %or.cond707 = select i1 %i.aby, i1 %i.abz, i1 false
  br i1 %or.cond707, label %.preheader.preheader, label %predict_slice.exit

.preheader.preheader:                             ; preds = %bb.dq
  %i.aca = sext i32 %i.abv to i64                 ; 3 uses
  %i.acb = sext i32 %i.zn to i64                  ; 3 uses
  %i.acc = zext nneg i32 %i.zq to i64
  %i.acd = sext i32 %..i390 to i64                ; 3 uses
  %wide.trip.count732 = zext nneg i32 %i.zq to i64 ; 8 uses
  %i.ace = shl nsw i64 %i.acd, 1
  %i.acf = mul nsw i64 %i.ace, %wide.trip.count732
  %scevgep1223 = getelementptr i8, ptr %i.yl, i64 %i.acf
  %i.acg = shl nsw i64 %i.aca, 1
  %i.ach = mul nsw i64 %i.acg, %wide.trip.count732
  %scevgep1224 = getelementptr i8, ptr %i.yl, i64 %i.ach
  %i.aci = add nsw i64 %i.acd, -1
  %i.acj = mul i64 %i.aci, %i.acb
  %i.ack = getelementptr i8, ptr %i.zp, i64 %i.acj
  %scevgep1225 = getelementptr i8, ptr %i.ack, i64 %wide.trip.count732
  %i.acl = mul nsw i64 %i.acb, %i.aca
  %scevgep1226 = getelementptr i8, ptr %i.zp, i64 %i.acl
  %min.iters.check1228 = icmp ult i32 %i.zq, 8
  %bound01230 = icmp ult ptr %scevgep1226, %scevgep1223
  %bound11231 = icmp ult ptr %scevgep1224, %scevgep1225
  %found.conflict1232 = and i1 %bound01230, %bound11231
  %stride.check1233 = icmp slt i32 %i.zn, 0
  %i.acm = or i1 %found.conflict1232, %stride.check1233
  %n.vec1235 = and i64 %wide.trip.count732, 2147483640 ; 3 uses
  %cmp.n1241 = icmp eq i64 %n.vec1235, %wide.trip.count732
  %xtraiter = and i64 %wide.trip.count732, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.acn = add nsw i64 %wide.trip.count732, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge639
  %indvars.iv734 = phi i64 [ %i.aca, %.preheader.preheader ], [ %indvars.iv.next735, %._crit_edge639 ] ; 3 uses
  %i.aco = mul nsw i64 %indvars.iv734, %i.acc
  %i.acp = mul nsw i64 %indvars.iv734, %i.acb
  %invariant.gep = getelementptr [2 x i8], ptr %i.yl, i64 %i.aco ; 4 uses
  %invariant.gep975 = getelementptr i8, ptr %i.zp, i64 %i.acp ; 4 uses
  %brmerge = select i1 %min.iters.check1228, i1 true, i1 %i.acm
  br i1 %brmerge, label %scalar.ph1227.preheader, label %vector.body1236

vector.body1236:                                  ; preds = %.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.preheader ] ; 3 uses
  %i.acq = getelementptr [2 x i8], ptr %invariant.gep, i64 %index1237
  %wide.load1238 = load <8 x i16>, ptr %i.acq, align 2, !tbaa !55, !alias.scope !177 ; 2 uses
  %i.acr = sext <8 x i16> %wide.load1238 to <8 x i32>
  %i.acs = add nsw <8 x i32> %i.acr, splat (i32 2056)
  %i.act = ashr <8 x i32> %i.acs, splat (i32 4)   ; 2 uses
  %i.acu = icmp ugt <8 x i32> %i.act, splat (i32 255)
  %i.acv = icmp sgt <8 x i16> %wide.load1238, splat (i16 -2057)
  %i.acw = sext <8 x i1> %i.acv to <8 x i32>
  %i.acx = select <8 x i1> %i.acu, <8 x i32> %i.acw, <8 x i32> %i.act
  %i.acy = trunc <8 x i32> %i.acx to <8 x i8>
  %i.acz = getelementptr i8, ptr %invariant.gep975, i64 %index1237
  store <8 x i8> %i.acy, ptr %i.acz, align 1, !tbaa !44, !alias.scope !178, !noalias !177
  %index.next1239 = add nuw i64 %index1237, 8     ; 2 uses
  %i.ada = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.ada, label %middle.block1240, label %vector.body1236, !llvm.loop !73

middle.block1240:                                 ; preds = %vector.body1236
  br i1 %cmp.n1241, label %._crit_edge639, label %scalar.ph1227.preheader

scalar.ph1227.preheader:                          ; preds = %.preheader, %middle.block1240
  %indvars.iv729.ph = phi i64 [ %n.vec1235, %middle.block1240 ], [ 0, %.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph1227.prol.loopexit, label %scalar.ph1227.prol

scalar.ph1227.prol:                               ; preds = %scalar.ph1227.preheader
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv729.ph
  %i.adb = load i16, ptr %gep.prol, align 2, !tbaa !55 ; 2 uses
  %i.adc = sext i16 %i.adb to i32
  %i.add = add nsw i32 %i.adc, 2056
  %i.ade = ashr i32 %i.add, 4                     ; 2 uses
  %i.adf = icmp ugt i32 %i.ade, 255
  %isnotneg.i391.prol = icmp sgt i16 %i.adb, -2057
  %i.adg = sext i1 %isnotneg.i391.prol to i32
  %.0.i392.prol = select i1 %i.adf, i32 %i.adg, i32 %i.ade
  %i.adh = trunc i32 %.0.i392.prol to i8
  %gep976.prol = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv729.ph
  store i8 %i.adh, ptr %gep976.prol, align 1, !tbaa !44
  %indvars.iv.next730.prol = or disjoint i64 %indvars.iv729.ph, 1
  br label %scalar.ph1227.prol.loopexit

scalar.ph1227.prol.loopexit:                      ; preds = %scalar.ph1227.prol, %scalar.ph1227.preheader
  %indvars.iv729.unr = phi i64 [ %indvars.iv729.ph, %scalar.ph1227.preheader ], [ %indvars.iv.next730.prol, %scalar.ph1227.prol ]
  %i.adi = icmp eq i64 %indvars.iv729.ph, %i.acn
  br i1 %i.adi, label %._crit_edge639, label %scalar.ph1227

scalar.ph1227:                                    ; preds = %scalar.ph1227.prol.loopexit, %scalar.ph1227
  %indvars.iv729 = phi i64 [ %indvars.iv.next730.1, %scalar.ph1227 ], [ %indvars.iv729.unr, %scalar.ph1227.prol.loopexit ] ; 4 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv729
  %i.adj = load i16, ptr %gep, align 2, !tbaa !55 ; 2 uses
  %i.adk = sext i16 %i.adj to i32
  %i.adl = add nsw i32 %i.adk, 2056
  %i.adm = ashr i32 %i.adl, 4                     ; 2 uses
  %i.adn = icmp ugt i32 %i.adm, 255
  %isnotneg.i391 = icmp sgt i16 %i.adj, -2057
  %i.ado = sext i1 %isnotneg.i391 to i32
  %.0.i392 = select i1 %i.adn, i32 %i.ado, i32 %i.adm
  %i.adp = trunc i32 %.0.i392 to i8
  %gep976 = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv729
  store i8 %i.adp, ptr %gep976, align 1, !tbaa !44
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next730
  %i.adq = load i16, ptr %gep.1, align 2, !tbaa !55 ; 2 uses
  %i.adr = sext i16 %i.adq to i32
  %i.ads = add nsw i32 %i.adr, 2056
  %i.adt = ashr i32 %i.ads, 4                     ; 2 uses
  %i.adu = icmp ugt i32 %i.adt, 255
  %isnotneg.i391.1 = icmp sgt i16 %i.adq, -2057
  %i.adv = sext i1 %isnotneg.i391.1 to i32
  %.0.i392.1 = select i1 %i.adu, i32 %i.adv, i32 %i.adt
  %i.adw = trunc i32 %.0.i392.1 to i8
  %gep976.1 = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv.next730
  store i8 %i.adw, ptr %gep976.1, align 1, !tbaa !44
  %indvars.iv.next730.1 = add nuw nsw i64 %indvars.iv729, 2 ; 2 uses
  %exitcond733.not.1 = icmp eq i64 %indvars.iv.next730.1, %wide.trip.count732
  br i1 %exitcond733.not.1, label %._crit_edge639, label %scalar.ph1227, !llvm.loop !74

._crit_edge639:                                   ; preds = %scalar.ph1227.prol.loopexit, %scalar.ph1227, %middle.block1240
  %indvars.iv.next735 = add nsw i64 %indvars.iv734, 1 ; 2 uses
  %i.adx = icmp slt i64 %indvars.iv.next735, %i.acd
  br i1 %i.adx, label %.preheader, label %predict_slice.exit, !llvm.loop !75

bb.dr:                                            ; preds = %.lr.ph650, %add_yblock.exit
  %indvars.iv743 = phi i64 [ 0, %.lr.ph650 ], [ %indvars.iv.next744, %add_yblock.exit ] ; 6 uses
  %i.ady = mul i64 %indvars.iv743, %i.abc         ; 2 uses
  %i.adz = trunc i64 %i.ady to i32
  %i.aea = sub i32 %i.adz, %i.zx                  ; 2 uses
  %smax1130 = call i32 @llvm.smax.i32(i32 %i.aea, i32 0) ; 3 uses
  %i.aeb = add i32 %i.aea, %i.zg
  %smin1131 = call i32 @llvm.smin.i32(i32 %i.zq, i32 %i.aeb)
  %i.aec = sub i32 %smin1131, %smax1130
  %i.aed = call i32 @llvm.umax.i32(i32 %i.aec, i32 1)
  %umax = zext i32 %i.aed to i64                  ; 7 uses
  %i.aee = add i32 %i.aap, %smax1130
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = add nsw i64 %umax, %i.aef
  %i.aeh = shl nsw i64 %i.aeg, 1
  %scevgep1132.a = getelementptr i8, ptr %scevgep1129, i64 %i.aeh
  %6 = add i32 %i.aaq, %smax1130
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %umax, %7                      ; 2 uses
  %scevgep1143.a = getelementptr i8, ptr %i.zp, i64 %8
  %9 = sub i64 %i.ady, %i.abd
  %smin1138 = call i64 @llvm.smin.i64(i64 %9, i64 0) ; 2 uses
  %i.aei = sub i64 %umax, %smin1138               ; 4 uses
  %scevgep1147.a = getelementptr i8, ptr %scevgep1141.a, i64 %i.aei
  %scevgep1149.a = getelementptr i8, ptr %scevgep1144.a, i64 %i.aei
  %10 = sub nsw i64 0, %smin1138                  ; 3 uses
  %scevgep1153.a = getelementptr i8, ptr %scevgep1146.a, i64 %10
  %scevgep1155 = getelementptr i8, ptr %scevgep1148.a, i64 %i.aei
  %scevgep1147 = getelementptr i8, ptr %scevgep1150.a, i64 %10
  %scevgep1149 = getelementptr i8, ptr %scevgep1152.a, i64 %i.aei
  %i.aej = getelementptr i8, ptr %scevgep1154, i64 %10
  %scevgep1157 = getelementptr i8, ptr %scevgep1156, i64 %8 ; 2 uses
  %i.aek = mul nuw nsw i64 %indvars.iv743, %i.abc
  %i.ael = sub nsw i64 %i.aek, %i.abd             ; 2 uses
  %i.aem = load i32, ptr %i.ws, align 8, !tbaa !52
  %i.aen = load i32, ptr %i.sq, align 8, !tbaa !47 ; 2 uses
  %i.aeo = shl i32 %i.aem, %i.aen                 ; 2 uses
  %i.aep = load i32, ptr %i.wu, align 4, !tbaa !170
  %i.aeq = shl i32 %i.aep, %i.aen
  %i.aer = load ptr, ptr %i.xj, align 8, !tbaa !56
  %i.aes = mul nsw i32 %i.aeo, %i.aab
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = getelementptr [10 x i8], ptr %i.aer, i64 %indvars.iv743
  %i.aev = getelementptr i8, ptr %i.aeu, i64 -10
  %i.aew = getelementptr [10 x i8], ptr %i.aev, i64 %i.aet ; 4 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 10 ; 3 uses
  %i.aey = sext i32 %i.aeo to i64                 ; 2 uses
  %i.aez = getelementptr inbounds [10 x i8], ptr %i.aew, i64 %i.aey ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 10 ; 3 uses
  %i.afb = load ptr, ptr %i.xk, align 8, !tbaa !181 ; 6 uses
  %i.afc = icmp eq i64 %indvars.iv743, 0
  br i1 %i.afc, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.not.i393 = icmp slt i64 %indvars.iv743, %i.aey ; 2 uses
  %spec.select.i = select i1 %.not.i393, ptr %i.aex, ptr %i.aew
  %spec.select257.i = select i1 %.not.i393, ptr %i.afa, ptr %i.aez
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0228.i = phi ptr [ %i.aew, %bb.ds ], [ %i.aex, %bb.dr ] ; 2 uses
  %.0226.i = phi ptr [ %spec.select.i, %bb.ds ], [ %i.aex, %bb.dr ] ; 2 uses
  %.0224.i = phi ptr [ %i.aez, %bb.ds ], [ %i.afa, %bb.dr ] ; 3 uses
  %.0222.i = phi ptr [ %spec.select257.i, %bb.ds ], [ %i.afa, %bb.dr ] ; 3 uses
  br i1 %i.aaf, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.not249.i = icmp slt i32 %.0.i652, %i.aeq      ; 2 uses
  %spec.select258.i = select i1 %.not249.i, ptr %.0224.i, ptr %.0228.i
  %spec.select259.i = select i1 %.not249.i, ptr %.0222.i, ptr %.0226.i
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.1229.i = phi ptr [ %.0228.i, %bb.du ], [ %.0224.i, %bb.dt ] ; 20 uses
  %.1227.i = phi ptr [ %.0226.i, %bb.du ], [ %.0222.i, %bb.dt ] ; 22 uses
  %.1225.i = phi ptr [ %spec.select258.i, %bb.du ], [ %.0224.i, %bb.dt ] ; 21 uses
  %.1223.i = phi ptr [ %spec.select259.i, %bb.du ], [ %.0222.i, %bb.dt ] ; 20 uses
  %i.afd = trunc nsw i64 %i.ael to i32            ; 2 uses
  %i.afe = call i32 @llvm.smin.i32(i32 %i.afd, i32 0)
  %.0237.i = add nsw i32 %i.afe, %i.zg            ; 2 uses
  %.0235.i = call i32 @llvm.smax.i32(i32 %i.afd, i32 0) ; 8 uses
  %i.aff = call i64 @llvm.smin.i64(i64 %i.ael, i64 0)
  %.0233.i.idx = sub i64 0, %i.aff
  %i.afg = add nsw i32 %.0237.i, %.0235.i
  %i.afh = icmp sgt i32 %i.afg, %i.zq
  %i.afi = sub nsw i32 %i.zq, %.0235.i
  %spec.select261.i = select i1 %i.afh, i32 %i.afi, i32 %.0237.i ; 7 uses
  %gep980 = getelementptr i8, ptr %invariant.gep979, i64 %.0233.i.idx ; 2 uses
  %i.afj = icmp slt i32 %spec.select261.i, 1
  %or.cond5.i = select i1 %i.afj, i1 true, i1 %i.aao
  br i1 %or.cond5.i, label %add_yblock.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.afk = add i32 %.0235.i, %i.aap
  %i.afl = sext i32 %i.afk to i64
  %i.afm = getelementptr [2 x i8], ptr %i.yl, i64 %i.afl ; 2 uses
  %i.afn = add i32 %.0235.i, %i.aaq
  %i.afo = sext i32 %i.afn to i64
  %i.afp = getelementptr i8, ptr %i.zp, i64 %i.afo ; 4 uses
  %i.afq = getelementptr inbounds i8, ptr %i.afb, i64 %i.aas ; 11 uses
  %i.afr = getelementptr inbounds i8, ptr %i.afq, i64 %i.aat ; 5 uses
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %i.afq, ptr noundef %i.afb, i64 noundef %i.aau, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef %.1229.i, i32 noundef %i.yp, i32 noundef %i.zq, i32 noundef %i.zr) #9
  %i.afs = getelementptr inbounds nuw i8, ptr %.1229.i, i64 8 ; 3 uses
  %i.aft = load i8, ptr %i.afs, align 2, !tbaa !58 ; 4 uses
  %i.afu = and i8 %i.aft, 1
  %.not.i501 = icmp eq i8 %i.afu, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1227.i, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !58 ; 2 uses
  %i.afv = and i8 %.pre, 1
  %.not16.i502 = icmp eq i8 %i.afv, 0
  %or.cond987 = select i1 %.not.i501, i1 true, i1 %.not16.i502
  br i1 %or.cond987, label %same_block.exit507, label %.split

.split:                                           ; preds = %bb.dw
  %i.afw = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !44
  %i.afy = getelementptr inbounds nuw i8, ptr %.1227.i, i64 5
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !44
  %i.aga = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.agb = load i8, ptr %i.aga, align 2, !tbaa !44
  %i.agc = getelementptr inbounds nuw i8, ptr %.1227.i, i64 6
  %i.agd = load i8, ptr %i.agc, align 2, !tbaa !44
  %i.age = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !44
  %i.agg = getelementptr inbounds nuw i8, ptr %.1227.i, i64 7
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !44
  %i.agi = icmp eq i8 %i.afx, %i.afz
  %i.agj = icmp eq i8 %i.agb, %i.agd
  %i.agk = and i1 %i.agi, %i.agj
  %i.agl = icmp eq i8 %i.agf, %i.agh
  %.not18.i503 = and i1 %i.agk, %i.agl
  br i1 %.not18.i503, label %bb.dy, label %bb.dx

same_block.exit507:                               ; preds = %bb.dw
  %i.agm = load i16, ptr %.1229.i, align 2, !tbaa !59
  %i.agn = sext i16 %i.agm to i32
  %i.ago = load i16, ptr %.1227.i, align 2, !tbaa !59
  %i.agp = sext i16 %i.ago to i32
  %i.agq = sub nsw i32 %i.agn, %i.agp
  %i.agr = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.ags = load i16, ptr %i.agr, align 2, !tbaa !60
  %i.agt = sext i16 %i.ags to i32
  %i.agu = getelementptr inbounds nuw i8, ptr %.1227.i, i64 2
  %i.agv = load i16, ptr %i.agu, align 2, !tbaa !60
  %i.agw = sext i16 %i.agv to i32
  %i.agx = sub nsw i32 %i.agt, %i.agw
  %i.agy = or i32 %i.agx, %i.agq
  %i.agz = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.aha = load i8, ptr %i.agz, align 2, !tbaa !61
  %i.ahb = zext i8 %i.aha to i32
  %i.ahc = getelementptr inbounds nuw i8, ptr %.1227.i, i64 4
  %i.ahd = load i8, ptr %i.ahc, align 2, !tbaa !61
  %i.ahe = zext i8 %i.ahd to i32
  %i.ahf = sub nsw i32 %i.ahb, %i.ahe
  %i.ahg = or i32 %i.agy, %i.ahf
  %i.ahh = xor i8 %.pre, %i.aft
  %i.ahi = and i8 %i.ahh, 1
  %i.ahj = zext nneg i8 %i.ahi to i32
  %i.ahk = or i32 %i.ahg, %i.ahj
  %.not17.i506 = icmp eq i32 %i.ahk, 0
  br i1 %.not17.i506, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.split, %same_block.exit507
  %i.ahl = getelementptr inbounds i8, ptr %i.afr, i64 %i.aat
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %i.afr, ptr noundef %i.afb, i64 noundef %i.aau, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef nonnull %.1227.i, i32 noundef %i.yp, i32 noundef %i.zq, i32 noundef %i.zr) #9
  %.pre799 = load i8, ptr %i.afs, align 2, !tbaa !58
  br label %bb.dy

bb.dy:                                            ; preds = %.split, %same_block.exit507, %bb.dx
  %i.ahm = phi i8 [ %.pre799, %bb.dx ], [ %i.aft, %same_block.exit507 ], [ %i.aft, %.split ] ; 6 uses
  %.sroa.7.0 = phi ptr [ %i.afr, %bb.dx ], [ %i.afq, %same_block.exit507 ], [ %i.afq, %.split ] ; 8 uses
  %.0221.i = phi ptr [ %i.ahl, %bb.dx ], [ %i.afr, %same_block.exit507 ], [ %i.afr, %.split ] ; 7 uses
  %i.ahn = and i8 %i.ahm, 1
  %.not.i494 = icmp eq i8 %i.ahn, 0
  %.phi.trans.insert801 = getelementptr inbounds nuw i8, ptr %.1225.i, i64 8
  %.pre802 = load i8, ptr %.phi.trans.insert801, align 2, !tbaa !58 ; 4 uses
  %i.aho = and i8 %.pre802, 1
  %.not16.i495 = icmp eq i8 %i.aho, 0
  %or.cond988 = select i1 %.not.i494, i1 true, i1 %.not16.i495
  br i1 %or.cond988, label %same_block.exit500, label %.split948

.split948:                                        ; preds = %bb.dy
  %i.ahp = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !44
  %i.ahr = getelementptr inbounds nuw i8, ptr %.1225.i, i64 5
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !44
  %i.aht = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.ahu = load i8, ptr %i.aht, align 2, !tbaa !44
  %i.ahv = getelementptr inbounds nuw i8, ptr %.1225.i, i64 6
  %i.ahw = load i8, ptr %i.ahv, align 2, !tbaa !44
  %i.ahx = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !44
  %i.ahz = getelementptr inbounds nuw i8, ptr %.1225.i, i64 7
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !44
  %i.aib = icmp eq i8 %i.ahq, %i.ahs
  %i.aic = icmp eq i8 %i.ahu, %i.ahw
  %i.aid = and i1 %i.aib, %i.aic
  %i.aie = icmp eq i8 %i.ahy, %i.aia
  %.not18.i496 = and i1 %i.aid, %i.aie
  br i1 %.not18.i496, label %bb.eb, label %bb.dz

same_block.exit500:                               ; preds = %bb.dy
  %i.aif = load i16, ptr %.1229.i, align 2, !tbaa !59
  %i.aig = sext i16 %i.aif to i32
  %i.aih = load i16, ptr %.1225.i, align 2, !tbaa !59
  %i.aii = sext i16 %i.aih to i32
  %i.aij = sub nsw i32 %i.aig, %i.aii
  %i.aik = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.ail = load i16, ptr %i.aik, align 2, !tbaa !60
  %i.aim = sext i16 %i.ail to i32
  %i.ain = getelementptr inbounds nuw i8, ptr %.1225.i, i64 2
  %i.aio = load i16, ptr %i.ain, align 2, !tbaa !60
  %i.aip = sext i16 %i.aio to i32
  %i.aiq = sub nsw i32 %i.aim, %i.aip
  %i.air = or i32 %i.aiq, %i.aij
  %i.ais = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.ait = load i8, ptr %i.ais, align 2, !tbaa !61
  %i.aiu = zext i8 %i.ait to i32
  %i.aiv = getelementptr inbounds nuw i8, ptr %.1225.i, i64 4
  %i.aiw = load i8, ptr %i.aiv, align 2, !tbaa !61
  %i.aix = zext i8 %i.aiw to i32
  %i.aiy = sub nsw i32 %i.aiu, %i.aix
  %i.aiz = or i32 %i.air, %i.aiy
  %i.aja = xor i8 %.pre802, %i.ahm
  %i.ajb = and i8 %i.aja, 1
  %i.ajc = zext nneg i8 %i.ajb to i32
  %i.ajd = or i32 %i.aiz, %i.ajc
  %.not17.i499 = icmp eq i32 %i.ajd, 0
  br i1 %.not17.i499, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %.split948, %same_block.exit500
  %i.aje = getelementptr inbounds nuw i8, ptr %.1227.i, i64 8
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %i.akt = xor i8 %.pre802, %i.ajf
  %i.aku = and i8 %i.akt, 1
  %i.akv = zext nneg i8 %i.aku to i32
  %i.akw = or i32 %i.aks, %i.akv
  %.not17.i471 = icmp eq i32 %i.akw, 0
  br i1 %.not17.i471, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.split949, %same_block.exit472
  %i.akx = getelementptr inbounds i8, ptr %.0221.i, i64 %i.aat
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %.0221.i, ptr noundef %i.afb, i64 noundef %i.aau, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef nonnull %.1225.i, i32 noundef %i.yp, i32 noundef %i.zq, i32 noundef %i.zr) #9
  %.pre803 = load i8, ptr %i.afs, align 2, !tbaa !58
  br label %bb.eb

bb.eb:                                            ; preds = %.split949, %.split948, %same_block.exit472, %same_block.exit500, %bb.ea
  %i.aky = phi i8 [ %.pre803, %bb.ea ], [ %i.ahm, %same_block.exit500 ], [ %i.ahm, %same_block.exit472 ], [ %i.ahm, %.split948 ], [ %i.ahm, %.split949 ] ; 2 uses
  %.sroa.12.0 = phi ptr [ %.0221.i, %bb.ea ], [ %i.afq, %same_block.exit500 ], [ %.sroa.7.0, %same_block.exit472 ], [ %i.afq, %.split948 ], [ %.sroa.7.0, %.split949 ] ; 6 uses
  %.1.i394 = phi ptr [ %i.akx, %bb.ea ], [ %.0221.i, %same_block.exit500 ], [ %.0221.i, %same_block.exit472 ], [ %.0221.i, %.split948 ], [ %.0221.i, %.split949 ] ; 2 uses
  %i.akz = and i8 %i.aky, 1
  %.not.i487 = icmp eq i8 %i.akz, 0
  %.phi.trans.insert805 = getelementptr inbounds nuw i8, ptr %.1223.i, i64 8
  %.pre806 = load i8, ptr %.phi.trans.insert805, align 2, !tbaa !58 ; 6 uses
  %i.ala = and i8 %.pre806, 1
  %.not16.i488 = icmp eq i8 %i.ala, 0
  %or.cond990 = select i1 %.not.i487, i1 true, i1 %.not16.i488
  br i1 %or.cond990, label %same_block.exit493, label %.split950

.split950:                                        ; preds = %bb.eb
  %i.alb = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.alc = load i8, ptr %i.alb, align 1, !tbaa !44
  %i.ald = getelementptr inbounds nuw i8, ptr %.1223.i, i64 5
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !44
  %i.alf = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.alg = load i8, ptr %i.alf, align 2, !tbaa !44
  %i.alh = getelementptr inbounds nuw i8, ptr %.1223.i, i64 6
  %i.ali = load i8, ptr %i.alh, align 2, !tbaa !44
  %i.alj = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !44
  %i.all = getelementptr inbounds nuw i8, ptr %.1223.i, i64 7
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !44
  %i.aln = icmp eq i8 %i.alc, %i.ale
  %i.alo = icmp eq i8 %i.alg, %i.ali
  %i.alp = and i1 %i.aln, %i.alo
  %i.alq = icmp eq i8 %i.alk, %i.alm
  %.not18.i489 = and i1 %i.alp, %i.alq
  br i1 %.not18.i489, label %.lr.ph643.preheader, label %bb.ec

same_block.exit493:                               ; preds = %bb.eb
  %i.alr = load i16, ptr %.1229.i, align 2, !tbaa !59
  %i.als = sext i16 %i.alr to i32
  %i.alt = load i16, ptr %.1223.i, align 2, !tbaa !59
  %i.alu = sext i16 %i.alt to i32
  %i.alv = sub nsw i32 %i.als, %i.alu
  %i.alw = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.alx = load i16, ptr %i.alw, align 2, !tbaa !60
  %i.aly = sext i16 %i.alx to i32
  %i.alz = getelementptr inbounds nuw i8, ptr %.1223.i, i64 2
  %i.ama = load i16, ptr %i.alz, align 2, !tbaa !60
  %i.amb = sext i16 %i.ama to i32
  %i.amc = sub nsw i32 %i.aly, %i.amb
  %i.amd = or i32 %i.amc, %i.alv
  %i.ame = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.amf = load i8, ptr %i.ame, align 2, !tbaa !61
  %i.amg = zext i8 %i.amf to i32
  %i.amh = getelementptr inbounds nuw i8, ptr %.1223.i, i64 4
  %i.ami = load i8, ptr %i.amh, align 2, !tbaa !61
  %i.amj = zext i8 %i.ami to i32
  %i.amk = sub nsw i32 %i.amg, %i.amj
  %i.aml = or i32 %i.amd, %i.amk
  %i.amm = xor i8 %.pre806, %i.aky
  %i.amn = and i8 %i.amm, 1
  %i.amo = zext nneg i8 %i.amn to i32
  %i.amp = or i32 %i.aml, %i.amo
  %.not17.i492 = icmp eq i32 %i.amp, 0
  br i1 %.not17.i492, label %.lr.ph643.preheader, label %bb.ec

bb.ec:                                            ; preds = %.split950, %same_block.exit493
  %i.amq = getelementptr inbounds nuw i8, ptr %.1227.i, i64 8
  %i.amr = load i8, ptr %i.amq, align 2, !tbaa !58 ; 2 uses
  %i.ams = and i8 %i.amr, 1
  %.not.i480 = icmp eq i8 %i.ams, 0
  %i.amt = and i8 %.pre806, 1
  %.not16.i481 = icmp eq i8 %i.amt, 0
  %or.cond991 = select i1 %.not.i480, i1 true, i1 %.not16.i481
  br i1 %or.cond991, label %same_block.exit486, label %.split951

.split951:                                        ; preds = %bb.ec
  %i.amu = getelementptr inbounds nuw i8, ptr %.1227.i, i64 5
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !44
  %i.amw = getelementptr inbounds nuw i8, ptr %.1223.i, i64 5
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !44
  %i.amy = getelementptr inbounds nuw i8, ptr %.1227.i, i64 6
  %i.amz = load i8, ptr %i.amy, align 2, !tbaa !44
  %i.ana = getelementptr inbounds nuw i8, ptr %.1223.i, i64 6
  %i.anb = load i8, ptr %i.ana, align 2, !tbaa !44
  %i.anc = getelementptr inbounds nuw i8, ptr %.1227.i, i64 7
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !44
  %i.ane = getelementptr inbounds nuw i8, ptr %.1223.i, i64 7
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !44
  %i.ang = icmp eq i8 %i.amv, %i.amx
  %i.anh = icmp eq i8 %i.amz, %i.anb
  %i.ani = and i1 %i.ang, %i.anh
  %i.anj = icmp eq i8 %i.and, %i.anf
  %.not18.i482 = and i1 %i.ani, %i.anj
  br i1 %.not18.i482, label %.lr.ph643.preheader, label %bb.ed

same_block.exit486:                               ; preds = %bb.ec
  %i.ank = load i16, ptr %.1227.i, align 2, !tbaa !59
  %i.anl = sext i16 %i.ank to i32
  %i.anm = load i16, ptr %.1223.i, align 2, !tbaa !59
  %i.ann = sext i16 %i.anm to i32
  %i.ano = sub nsw i32 %i.anl, %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %.1227.i, i64 2
  %i.anq = load i16, ptr %i.anp, align 2, !tbaa !60
  %i.anr = sext i16 %i.anq to i32
  %i.ans = getelementptr inbounds nuw i8, ptr %.1223.i, i64 2
  %i.ant = load i16, ptr %i.ans, align 2, !tbaa !60
  %i.anu = sext i16 %i.ant to i32
  %i.anv = sub nsw i32 %i.anr, %i.anu
  %i.anw = or i32 %i.anv, %i.ano
  %i.anx = getelementptr inbounds nuw i8, ptr %.1227.i, i64 4
  %i.any = load i8, ptr %i.anx, align 2, !tbaa !61
  %i.anz = zext i8 %i.any to i32
  %i.aoa = getelementptr inbounds nuw i8, ptr %.1223.i, i64 4
  %i.aob = load i8, ptr %i.aoa, align 2, !tbaa !61
  %i.aoc = zext i8 %i.aob to i32
  %i.aod = sub nsw i32 %i.anz, %i.aoc
  %i.aoe = or i32 %i.anw, %i.aod
  %i.aof = xor i8 %.pre806, %i.amr
  %i.aog = and i8 %i.aof, 1
  %i.aoh = zext nneg i8 %i.aog to i32
  %i.aoi = or i32 %i.aoe, %i.aoh
  %.not17.i485 = icmp eq i32 %i.aoi, 0
  br i1 %.not17.i485, label %.lr.ph643.preheader, label %bb.ed

bb.ed:                                            ; preds = %.split951, %same_block.exit486
  %i.aoj = getelementptr inbounds nuw i8, ptr %.1225.i, i64 8
  %i.aok = load i8, ptr %i.aoj, align 2, !tbaa !58 ; 2 uses
  %i.aol = and i8 %i.aok, 1
  %.not.i473 = icmp eq i8 %i.aol, 0
  %i.aom = and i8 %.pre806, 1
  %.not16.i474 = icmp eq i8 %i.aom, 0
  %or.cond992 = select i1 %.not.i473, i1 true, i1 %.not16.i474
  br i1 %or.cond992, label %same_block.exit479, label %.split952

.split952:                                        ; preds = %bb.ed
  %i.aon = getelementptr inbounds nuw i8, ptr %.1225.i, i64 5
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !44
  %i.aop = getelementptr inbounds nuw i8, ptr %.1223.i, i64 5
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !44
  %i.aor = getelementptr inbounds nuw i8, ptr %.1225.i, i64 6
  %i.aos = load i8, ptr %i.aor, align 2, !tbaa !44
  %i.aot = getelementptr inbounds nuw i8, ptr %.1223.i, i64 6
  %i.aou = load i8, ptr %i.aot, align 2, !tbaa !44
  %i.aov = getelementptr inbounds nuw i8, ptr %.1225.i, i64 7
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !44
  %i.aox = getelementptr inbounds nuw i8, ptr %.1223.i, i64 7
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !44
  %i.aoz = icmp eq i8 %i.aoo, %i.aoq
  %i.apa = icmp eq i8 %i.aos, %i.aou
  %i.apb = and i1 %i.aoz, %i.apa
  %i.apc = icmp eq i8 %i.aow, %i.aoy
  %.not18.i475 = and i1 %i.apb, %i.apc
  br i1 %.not18.i475, label %.lr.ph643.preheader, label %bb.ee

same_block.exit479:                               ; preds = %bb.ed
  %i.apd = load i16, ptr %.1225.i, align 2, !tbaa !59
  %i.ape = sext i16 %i.apd to i32
  %i.apf = load i16, ptr %.1223.i, align 2, !tbaa !59
  %i.apg = sext i16 %i.apf to i32
  %i.aph = sub nsw i32 %i.ape, %i.apg
  %i.api = getelementptr inbounds nuw i8, ptr %.1225.i, i64 2
  %i.apj = load i16, ptr %i.api, align 2, !tbaa !60
  %i.apk = sext i16 %i.apj to i32
  %i.apl = getelementptr inbounds nuw i8, ptr %.1223.i, i64 2
  %i.apm = load i16, ptr %i.apl, align 2, !tbaa !60
  %i.apn = sext i16 %i.apm to i32
  %i.apo = sub nsw i32 %i.apk, %i.apn
  %i.app = or i32 %i.apo, %i.aph
  %i.apq = getelementptr inbounds nuw i8, ptr %.1225.i, i64 4
  %i.apr = load i8, ptr %i.apq, align 2, !tbaa !61
  %i.aps = zext i8 %i.apr to i32
  %i.apt = getelementptr inbounds nuw i8, ptr %.1223.i, i64 4
  %i.apu = load i8, ptr %i.apt, align 2, !tbaa !61
  %i.apv = zext i8 %i.apu to i32
  %i.apw = sub nsw i32 %i.aps, %i.apv
  %i.apx = or i32 %i.app, %i.apw
  %i.apy = xor i8 %.pre806, %i.aok
  %i.apz = and i8 %i.apy, 1
  %i.aqa = zext nneg i8 %i.apz to i32
  %i.aqb = or i32 %i.apx, %i.aqa
  %.not17.i478 = icmp eq i32 %i.aqb, 0
  br i1 %.not17.i478, label %.lr.ph643.preheader, label %bb.ee

bb.ee:                                            ; preds = %.split952, %same_block.exit479
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %.1.i394, ptr noundef %i.afb, i64 noundef %i.aau, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef nonnull %.1223.i, i32 noundef %i.yp, i32 noundef %i.zq, i32 noundef %i.zr) #9
  br label %.lr.ph643.preheader

.lr.ph643.preheader:                              ; preds = %bb.ee, %same_block.exit493, %same_block.exit486, %same_block.exit479, %.split950, %.split951, %.split952
  %.sroa.17.0 = phi ptr [ %.1.i394, %bb.ee ], [ %.sroa.7.0, %same_block.exit486 ], [ %i.afq, %same_block.exit493 ], [ %.sroa.12.0, %same_block.exit479 ], [ %i.afq, %.split950 ], [ %.sroa.7.0, %.split951 ], [ %.sroa.12.0, %.split952 ] ; 4 uses
  %i.aqc = zext nneg i32 %spec.select261.i to i64 ; 3 uses
  %scevgep1135.a = getelementptr i8, ptr %.sroa.17.0, i64 %umax
  %scevgep1136 = getelementptr i8, ptr %.sroa.12.0, i64 %umax
  %scevgep1137 = getelementptr i8, ptr %.sroa.7.0, i64 %umax
  %scevgep1138 = getelementptr i8, ptr %i.afb, i64 %i.aas
  %i.aqd = getelementptr i8, ptr %scevgep1138, i64 %umax
  %11 = insertelement <8 x ptr> poison, ptr %i.afp, i64 0
  %12 = shufflevector <8 x ptr> %11, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aqe = insertelement <8 x ptr> poison, ptr %scevgep1149, i64 0
  %13 = insertelement <8 x ptr> %i.aqe, ptr %scevgep1155, i64 1
  %i.aqf = insertelement <8 x ptr> %13, ptr %scevgep1149.a, i64 2
  %i.aqg = insertelement <8 x ptr> %i.aqf, ptr %scevgep1147.a, i64 3
  %i.aqh = insertelement <8 x ptr> %i.aqg, ptr %i.aqd, i64 4
  %i.aqi = insertelement <8 x ptr> %i.aqh, ptr %scevgep1137, i64 5
  %i.aqj = insertelement <8 x ptr> %i.aqi, ptr %scevgep1136, i64 6
  %i.aqk = insertelement <8 x ptr> %i.aqj, ptr %scevgep1135.a, i64 7
  %14 = insertelement <4 x ptr> poison, ptr %i.aej, i64 0
  %15 = insertelement <4 x ptr> %14, ptr %scevgep1147, i64 1
  %16 = insertelement <4 x ptr> %15, ptr %scevgep1153.a, i64 2
  %17 = insertelement <4 x ptr> %16, ptr %gep980, i64 3
  %18 = insertelement <4 x ptr> poison, ptr %scevgep1157, i64 0
  %19 = shufflevector <4 x ptr> %18, <4 x ptr> poison, <4 x i32> zeroinitializer
  %20 = insertelement <4 x ptr> poison, ptr %i.afq, i64 0
  %21 = insertelement <4 x ptr> %20, ptr %.sroa.7.0, i64 1
  %22 = insertelement <4 x ptr> %21, ptr %.sroa.12.0, i64 2
  %23 = insertelement <4 x ptr> %22, ptr %.sroa.17.0, i64 3
  %24 = insertelement <4 x ptr> poison, ptr %scevgep1143.a, i64 0
  %25 = shufflevector <4 x ptr> %24, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check1159 = icmp ult i32 %spec.select261.i, 8
  %i.aql = icmp ult <8 x ptr> %12, %i.aqk
  %26 = icmp ult <4 x ptr> %17, %19
  %27 = icmp ult <4 x ptr> %23, %25
  %28 = shufflevector <4 x i1> %26, <4 x i1> %27, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aqm = and <8 x i1> %i.aql, %28
  %bound01192 = icmp ult ptr %i.afp, %scevgep1132.a
  %bound11193 = icmp ult ptr %i.afm, %scevgep1157
  %found.conflict1194 = and i1 %bound01192, %bound11193
  %i.aqn = bitcast <8 x i1> %i.aqm to i8
  %i.aqo = icmp ne i8 %i.aqn, 0
  %op.rdx = or i1 %i.aqo, %found.conflict1194
  %op.rdx1244 = or i1 %op.rdx, %op.rdx1243
  %n.vec1198 = and i64 %i.aqc, 2147483640         ; 3 uses
  %cmp.n1212 = icmp eq i64 %n.vec1198, %i.aqc
  br label %.lr.ph643

.lr.ph643:                                        ; preds = %.lr.ph643.preheader, %._crit_edge644
  %indvars.iv740 = phi i64 [ 0, %.lr.ph643.preheader ], [ %indvars.iv.next741, %._crit_edge644 ] ; 4 uses
  %i.aqp = mul nuw nsw i64 %indvars.iv740, %i.abb
  %i.aqq = getelementptr inbounds nuw i8, ptr %gep980, i64 %i.aqp ; 4 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %i.aaw ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %i.aay ; 3 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %i.aaw ; 2 uses
  %i.aqu = mul nsw i64 %indvars.iv740, %i.aau     ; 2 uses
  %i.aqv = mul nsw i64 %indvars.iv740, %i.aaz
  %invariant.gep977 = getelementptr [2 x i8], ptr %i.afm, i64 %i.aqv ; 2 uses
  %brmerge1275 = select i1 %min.iters.check1159, i1 true, i1 %op.rdx1244
  br i1 %brmerge1275, label %scalar.ph1158.preheader, label %vector.body1199

vector.body1199:                                  ; preds = %.lr.ph643, %vector.body1199
  %index1200 = phi i64 [ %index.next1210, %vector.body1199 ], [ 0, %.lr.ph643 ] ; 7 uses
  %i.aqw = add nsw i64 %index1200, %i.aqu         ; 5 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %index1200
  %wide.load1201.a = load <8 x i8>, ptr %i.aqx, align 1, !tbaa !44, !alias.scope !182
  %i.aqy = zext <8 x i8> %wide.load1201.a to <8 x i32>
  %i.aqz = getelementptr inbounds i8, ptr %.sroa.17.0, i64 %i.aqw
  %wide.load1202.a = load <8 x i8>, ptr %i.aqz, align 1, !tbaa !44, !alias.scope !183
  %i.ara = zext <8 x i8> %wide.load1202.a to <8 x i32>
  %i.arb = mul nuw nsw <8 x i32> %i.ara, %i.aqy
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqr, i64 %index1200
  %wide.load1203.a = load <8 x i8>, ptr %i.arc, align 1, !tbaa !44, !alias.scope !184
  %i.ard = zext <8 x i8> %wide.load1203.a to <8 x i32>
  %i.are = getelementptr inbounds i8, ptr %.sroa.12.0, i64 %i.aqw
  %wide.load1204.a = load <8 x i8>, ptr %i.are, align 1, !tbaa !44, !alias.scope !185
  %i.arf = zext <8 x i8> %wide.load1204.a to <8 x i32>
  %i.arg = mul nuw nsw <8 x i32> %i.arf, %i.ard
  %i.arh = add nuw nsw <8 x i32> %i.arg, %i.arb
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %index1200
  %wide.load1205.a = load <8 x i8>, ptr %i.ari, align 1, !tbaa !44, !alias.scope !186
  %i.arj = zext <8 x i8> %wide.load1205.a to <8 x i32>
  %i.ark = getelementptr inbounds i8, ptr %.sroa.7.0, i64 %i.aqw
  %wide.load1206 = load <8 x i8>, ptr %i.ark, align 1, !tbaa !44, !alias.scope !187
  %i.arl = zext <8 x i8> %wide.load1206 to <8 x i32>
  %i.arm = mul nuw nsw <8 x i32> %i.arl, %i.arj
  %i.arn = add nuw nsw <8 x i32> %i.arh, %i.arm
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %index1200
  %wide.load1207 = load <8 x i8>, ptr %i.aro, align 1, !tbaa !44, !alias.scope !188
  %i.arp = zext <8 x i8> %wide.load1207 to <8 x i32>
  %i.arq = getelementptr inbounds i8, ptr %i.afq, i64 %i.aqw
  %wide.load1208 = load <8 x i8>, ptr %i.arq, align 1, !tbaa !44, !alias.scope !189
  %i.arr = zext <8 x i8> %wide.load1208 to <8 x i32>
  %i.ars = mul nuw nsw <8 x i32> %i.arr, %i.arp
  %i.art = add nuw nsw <8 x i32> %i.arn, %i.ars
  %i.aru = lshr <8 x i32> %i.art, splat (i32 2)
  %i.arv = getelementptr [2 x i8], ptr %invariant.gep977, i64 %index1200
  %wide.load1209 = load <8 x i16>, ptr %i.arv, align 2, !tbaa !55, !alias.scope !190
  %i.arw = sext <8 x i16> %wide.load1209 to <8 x i32>
  %i.arx = add nsw <8 x i32> %i.aru, %i.arw       ; 2 uses
  %i.ary = add nsw <8 x i32> %i.arx, splat (i32 8)
  %i.arz = ashr <8 x i32> %i.ary, splat (i32 4)   ; 2 uses
  %i.asa = icmp ugt <8 x i32> %i.arz, splat (i32 255)
  %i.asb = icmp sgt <8 x i32> %i.arx, splat (i32 -9)
  %i.asc = sext <8 x i1> %i.asb to <8 x i32>
  %i.asd = select <8 x i1> %i.asa, <8 x i32> %i.asc, <8 x i32> %i.arz
  %i.ase = trunc <8 x i32> %i.asd to <8 x i8>
  %i.asf = getelementptr inbounds i8, ptr %i.afp, i64 %i.aqw
  store <8 x i8> %i.ase, ptr %i.asf, align 1, !tbaa !44, !alias.scope !191, !noalias !192
  %index.next1210 = add nuw i64 %index1200, 8     ; 2 uses
  %i.asg = icmp eq i64 %index.next1210, %n.vec1198
  br i1 %i.asg, label %middle.block1211, label %vector.body1199, !llvm.loop !87

middle.block1211:                                 ; preds = %vector.body1199
  br i1 %cmp.n1212, label %._crit_edge644, label %scalar.ph1158.preheader

scalar.ph1158.preheader:                          ; preds = %.lr.ph643, %middle.block1211
  %indvars.iv737.ph = phi i64 [ %n.vec1198, %middle.block1211 ], [ 0, %.lr.ph643 ]
  br label %scalar.ph1158

scalar.ph1158:                                    ; preds = %scalar.ph1158.preheader, %scalar.ph1158
  %indvars.iv737 = phi i64 [ %indvars.iv.next738, %scalar.ph1158 ], [ %indvars.iv737.ph, %scalar.ph1158.preheader ] ; 7 uses
  %i.ash = add nsw i64 %indvars.iv737, %i.aqu     ; 5 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %indvars.iv737
  %i.asj = load i8, ptr %i.asi, align 1, !tbaa !44
  %i.ask = zext i8 %i.asj to i32
  %i.asl = getelementptr inbounds i8, ptr %.sroa.17.0, i64 %i.ash
  %i.asm = load i8, ptr %i.asl, align 1, !tbaa !44
  %i.asn = zext i8 %i.asm to i32
  %i.aso = mul nuw nsw i32 %i.asn, %i.ask
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aqr, i64 %indvars.iv737
  %i.asq = load i8, ptr %i.asp, align 1, !tbaa !44
  %i.asr = zext i8 %i.asq to i32
  %i.ass = getelementptr inbounds i8, ptr %.sroa.12.0, i64 %i.ash
  %i.ast = load i8, ptr %i.ass, align 1, !tbaa !44
  %i.asu = zext i8 %i.ast to i32
  %i.asv = mul nuw nsw i32 %i.asu, %i.asr
  %i.asw = add nuw nsw i32 %i.asv, %i.aso
  %i.asx = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %indvars.iv737
  %i.asy = load i8, ptr %i.asx, align 1, !tbaa !44
  %i.asz = zext i8 %i.asy to i32
  %i.ata = getelementptr inbounds i8, ptr %.sroa.7.0, i64 %i.ash
  %i.atb = load i8, ptr %i.ata, align 1, !tbaa !44
  %i.atc = zext i8 %i.atb to i32
  %i.atd = mul nuw nsw i32 %i.atc, %i.asz
  %i.ate = add nuw nsw i32 %i.asw, %i.atd
  %i.atf = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %indvars.iv737
  %i.atg = load i8, ptr %i.atf, align 1, !tbaa !44
  %i.ath = zext i8 %i.atg to i32
  %i.ati = getelementptr inbounds i8, ptr %i.afq, i64 %i.ash
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !44
  %i.atk = zext i8 %i.atj to i32
  %i.atl = mul nuw nsw i32 %i.atk, %i.ath
  %i.atm = add nuw nsw i32 %i.ate, %i.atl
  %i.atn = lshr i32 %i.atm, 2
  %gep978 = getelementptr [2 x i8], ptr %invariant.gep977, i64 %indvars.iv737
  %i.ato = load i16, ptr %gep978, align 2, !tbaa !55
  %i.atp = sext i16 %i.ato to i32
  %i.atq = add nsw i32 %i.atn, %i.atp             ; 2 uses
  %i.atr = add nsw i32 %i.atq, 8
  %i.ats = ashr i32 %i.atr, 4                     ; 2 uses
  %i.att = icmp ugt i32 %i.ats, 255
  %isnotneg.i395 = icmp sgt i32 %i.atq, -9
  %i.atu = sext i1 %isnotneg.i395 to i32
  %.0.i396 = select i1 %i.att, i32 %i.atu, i32 %i.ats
  %i.atv = trunc i32 %.0.i396 to i8
  %i.atw = getelementptr inbounds i8, ptr %i.afp, i64 %i.ash
  store i8 %i.atv, ptr %i.atw, align 1, !tbaa !44
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 2 uses
  %i.atx = icmp samesign ult i64 %indvars.iv.next738, %i.aqc
  br i1 %i.atx, label %scalar.ph1158, label %._crit_edge644, !llvm.loop !88

._crit_edge644:                                   ; preds = %scalar.ph1158, %middle.block1211
  %indvars.iv.next741 = add nuw nsw i64 %indvars.iv740, 1 ; 2 uses
  %i.aty = icmp slt i64 %indvars.iv.next741, %i.aba
  br i1 %i.aty, label %.lr.ph643, label %add_yblock.exit, !llvm.loop !89

add_yblock.exit:                                  ; preds = %._crit_edge644, %bb.dv
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond747.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count746
  br i1 %exitcond747.not, label %predict_slice.exit, label %bb.dr, !llvm.loop !90

predict_slice.exit:                               ; preds = %._crit_edge639, %add_yblock.exit, %bb.dq, %.preheader622, %bb.dp
  %i.atz = add nuw i32 %.0.i652, 1
  %exitcond748.not = icmp eq i32 %.0.i652, %i.yo
  br i1 %exitcond748.not, label %predict_plane.exit.preheader, label %bb.dk, !llvm.loop !91

.preheader621:                                    ; preds = %predict_plane.exit.preheader, %._crit_edge658
  %.0323659 = phi i32 [ %i.auw, %._crit_edge658 ], [ 0, %predict_plane.exit.preheader ] ; 3 uses
  br label %bb.ef

bb.ef:                                            ; preds = %.preheader621, %bb.ef
  %.0324656 = phi i32 [ 0, %.preheader621 ], [ %i.auv, %bb.ef ] ; 3 uses
  %i.aua = load ptr, ptr %i.k, align 8, !tbaa !130 ; 2 uses
  %i.aub = getelementptr inbounds nuw [8 x i8], ptr %i.aua, i64 %indvars.iv795
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !163
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aua, i64 64
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.aud, i64 %indvars.iv795
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !51
  %i.aug = mul nsw i32 %i.auf, %.0323659
  %i.auh = add nsw i32 %i.aug, %.0324656
  %i.aui = sext i32 %i.auh to i64
  %i.auj = getelementptr inbounds i8, ptr %i.auc, i64 %i.aui
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !44
  %i.aul = load ptr, ptr %i.xl, align 8, !tbaa !162 ; 2 uses
  %i.aum = getelementptr inbounds nuw [8 x i8], ptr %i.aul, i64 %indvars.iv795
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !163
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aul, i64 64
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.auo, i64 %indvars.iv795
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !51
  %i.aur = mul nsw i32 %i.auq, %.0323659
  %i.aus = add nsw i32 %i.aur, %.0324656
  %i.aut = sext i32 %i.aus to i64
  %i.auu = getelementptr inbounds i8, ptr %i.aun, i64 %i.aut
  store i8 %i.auk, ptr %i.auu, align 1, !tbaa !44
  %i.auv = add nuw nsw i32 %.0324656, 1           ; 2 uses
  %exitcond749.not = icmp eq i32 %i.auv, %i.xz
  br i1 %exitcond749.not, label %._crit_edge658, label %bb.ef, !llvm.loop !92

._crit_edge658:                                   ; preds = %bb.ef
  %i.auw = add nuw nsw i32 %.0323659, 1           ; 2 uses
  %exitcond750.not = icmp eq i32 %i.auw, %.fr
  br i1 %exitcond750.not, label %.loopexit624, label %.preheader621, !llvm.loop !93

.loopexit624:                                     ; preds = %._crit_edge658, %predict_plane.exit.preheader, %bb.di
  %i.aux = load i32, ptr %i.rx, align 8, !tbaa !144 ; 2 uses
  %i.auy = icmp sgt i32 %i.aux, 0
  br i1 %i.auy, label %.lr.ph663, label %._crit_edge664

.lr.ph663:                                        ; preds = %.loopexit624
  %i.auz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph663, %bb.gl
  %indvars.iv755 = phi i64 [ 0, %.lr.ph663 ], [ %indvars.iv.next756, %bb.gl ] ; 3 uses
  %.not380 = icmp ne i64 %indvars.iv755, 0
  %i.ava = getelementptr inbounds nuw [4640 x i8], ptr %i.auz, i64 %indvars.iv755
end_hunk_1
