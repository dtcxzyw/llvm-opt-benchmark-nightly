Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowdec?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decode_frame:bb.a

bb.ct:                                            ; preds = %bb.cs
  %i.up = getelementptr inbounds nuw i8, ptr %i.uj, i64 37132
  %i.uq = load i8, ptr %i.up, align 4, !tbaa !44
  %i.ur = icmp eq i8 %i.uq, 40
  br i1 %i.ur, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.us = getelementptr inbounds nuw i8, ptr %i.uj, i64 37133
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !44
  %i.uu = icmp eq i8 %i.ut, -10
  br i1 %i.uu, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uj, i64 37134
  %i.uw = load i8, ptr %i.uv, align 2, !tbaa !44
  %i.ux = icmp eq i8 %i.uw, 2
  %i.uy = zext i1 %i.ux to i32
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %.lr.ph
  %i.uz = phi i32 [ 0, %bb.cu ], [ 0, %bb.ct ], [ 0, %bb.cs ], [ 0, %.lr.ph ], [ %i.uy, %bb.cv ]
  %i.va = getelementptr inbounds nuw i8, ptr %i.uj, i64 37140
  store i32 %i.uz, ptr %i.va, align 4, !tbaa !167
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.cw, %.preheader625
  %i.vb = tail call i32 @ff_snow_alloc_blocks(ptr noundef nonnull %i.i) #9 ; 0 uses
  %i.vc = tail call i32 @ff_snow_frames_prepare(ptr noundef nonnull %i.i) #9 ; 2 uses
  %i.vd = icmp slt i32 %i.vc, 0
  br i1 %i.vd, label %decode_header.exit.thread, label %bb.cx

bb.cx:                                            ; preds = %._crit_edge
  %i.ve = load ptr, ptr %i.rm, align 8, !tbaa !48 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 112
  %i.vg = load ptr, ptr %i.k, align 8, !tbaa !129 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 104
  %i.vi = load <2 x i32>, ptr %i.vf, align 8, !tbaa !51
  store <2 x i32> %i.vi, ptr %i.vh, align 8, !tbaa !51
  %i.vj = tail call i32 @ff_get_buffer(ptr noundef %i.ve, ptr noundef %i.vg, i32 noundef 1) #9 ; 2 uses
  %i.vk = icmp slt i32 %i.vj, 0
  br i1 %i.vk, label %decode_header.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.vl = getelementptr inbounds nuw i8, ptr %i.i, i64 6112 ; 5 uses
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !46 ; 2 uses
  %.not360 = icmp eq i32 %i.vm, 0
  %i.vn = select i1 %.not360, i32 2, i32 1
  %i.vo = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 120
  store i32 %i.vn, ptr %i.vp, align 8, !tbaa !134
  %i.vq = load i32, ptr %i.tb, align 4, !tbaa !160
  %i.vr = and i32 %i.vq, 1
  %.not361 = icmp eq i32 %i.vr, 0
  br i1 %.not361, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vs = load i32, ptr %i.sf, align 8, !tbaa !138
  %i.vt = load i32, ptr %i.sn, align 8, !tbaa !137
  %i.vu = load i32, ptr %i.sj, align 8, !tbaa !136
  %i.vv = load i32, ptr %i.ri, align 4, !tbaa !139
  %i.vw = load i32, ptr %i.ry, align 8, !tbaa !143
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.vm, i32 noundef %i.vs, i32 noundef %i.vt, i32 noundef %i.vu, i32 noundef %i.vv, i32 noundef %i.vw) #9
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.vx = load ptr, ptr %i.rm, align 8, !tbaa !48
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 788
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !168
  %i.wa = and i32 %i.vz, 1
  %.not362 = icmp eq i32 %i.wa, 0
  br i1 %.not362, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.wb = getelementptr inbounds nuw i8, ptr %i.i, i64 6368
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !52
  %i.wd = getelementptr inbounds nuw i8, ptr %i.i, i64 6372
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !169
  %i.wf = mul nsw i32 %i.we, %i.wc
  %i.wg = sext i32 %i.wf to i64
  %i.wh = load i32, ptr %i.sr, align 8, !tbaa !47
  %i.wi = shl nsw i32 %i.wh, 1
  %i.wj = zext nneg i32 %i.wi to i64
  %i.wk = shl i64 40, %i.wj
  %i.wl = call i32 @av_size_mult(i64 noundef %i.wg, i64 noundef %i.wk, ptr noundef nonnull %i.b) #9 ; 2 uses
  %.not363 = icmp eq i32 %i.wl, 0
  br i1 %.not363, label %bb.dc, label %.thread

.thread:                                          ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %decode_header.exit.thread

bb.dc:                                            ; preds = %bb.db
  %i.wm = getelementptr inbounds nuw i8, ptr %i.i, i64 155088 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.i, i64 155096
  %i.wo = load i64, ptr %i.b, align 8, !tbaa !170
  call void @av_fast_malloc(ptr noundef nonnull %i.wm, ptr noundef nonnull %i.wn, i64 noundef %i.wo) #9
  %i.wp = load ptr, ptr %i.wm, align 8, !tbaa !171
  %.not364.not = icmp eq ptr %i.wp, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not364.not, label %decode_header.exit.thread, label %bb.de

bb.dd:                                            ; preds = %bb.da
  %i.wq = getelementptr inbounds nuw i8, ptr %i.i, i64 155096
  store i32 0, ptr %i.wq, align 8, !tbaa !53
  %i.wr = getelementptr inbounds nuw i8, ptr %i.i, i64 155088
  tail call void @av_freep(ptr noundef nonnull %i.wr) #9
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %i.ws = getelementptr inbounds nuw i8, ptr %i.i, i64 155100 ; 5 uses
  store i32 0, ptr %i.ws, align 4, !tbaa !172
  %i.wt = getelementptr inbounds nuw i8, ptr %i.i, i64 6368 ; 6 uses
  %i.wu = load i32, ptr %i.wt, align 8, !tbaa !52 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.i, i64 6372 ; 7 uses
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !169 ; 2 uses
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
  br i1 %exitcond.not.i, label %._crit_edge.i513, label %bb.dg, !llvm.loop !68

bb.dg:                                            ; preds = %bb.df, %.preheader.i
  %.01418.i = phi i32 [ 0, %.preheader.i ], [ %i.xb, %bb.df ] ; 2 uses
  %i.xc = load ptr, ptr %i.wz, align 8, !tbaa !173
  %i.xd = load ptr, ptr %i.xa, align 8, !tbaa !174
  %.not.i512 = icmp ult ptr %i.xc, %i.xd
  br i1 %.not.i512, label %bb.dh, label %decode_header.exit.thread

bb.dh:                                            ; preds = %bb.dg
  %i.xe = call fastcc i32 @decode_q_branch(ptr noundef nonnull %i.i, i32 noundef 0, i32 noundef %.01418.i, i32 noundef %.019.i) ; 2 uses
  %i.xf = icmp slt i32 %i.xe, 0
  br i1 %i.xf, label %decode_header.exit.thread, label %bb.df

._crit_edge.i513:                                 ; preds = %bb.df
  %i.xg = add nuw nsw i32 %.019.i, 1              ; 2 uses
  %exitcond21.not.i = icmp eq i32 %i.xg, %i.ww
  br i1 %exitcond21.not.i, label %decode_blocks.exit, label %.preheader.i, !llvm.loop !69

decode_blocks.exit:                               ; preds = %._crit_edge.i513, %bb.de, %.preheader.lr.ph.i
  %i.xh = load i32, ptr %i.ug, align 8, !tbaa !49
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
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !165 ; 9 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 4 ; 4 uses
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !164
  %.fr = freeze i32 %i.yc                         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.yd = load ptr, ptr %i.rm, align 8, !tbaa !48
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 524
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !160
  %i.yg = and i32 %i.yf, 2048
  %.not368 = icmp eq i32 %i.yg, 0
  br i1 %.not368, label %.loopexit624, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.yh = load ptr, ptr %i.xj, align 8, !tbaa !175
  %i.yi = sext i32 %i.ya to i64
  %i.yj = shl nsw i64 %i.yi, 2
  %i.yk = sext i32 %.fr to i64
  %i.yl = mul i64 %i.yj, %i.yk
  call void @llvm.memset.p0.i64(ptr align 4 %i.yh, i8 0, i64 %i.yl, i1 false)
  %i.ym = load ptr, ptr %i.uc, align 8, !tbaa !166 ; 6 uses
  %i.yn = load i32, ptr %i.wv, align 4, !tbaa !169
  %i.yo = load i32, ptr %i.sr, align 8, !tbaa !47
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
  %.0.i652 = phi i32 [ 0, %.lr.ph655 ], [ %i.att, %predict_slice.exit ] ; 9 uses
  %i.yt = load i32, ptr %i.wt, align 8, !tbaa !52
  %i.yu = load i32, ptr %i.sr, align 8, !tbaa !47 ; 5 uses
  %i.yv = shl i32 %i.yt, %i.yu                    ; 2 uses
  %i.yw = load i32, ptr %i.wv, align 4, !tbaa !169
  %i.yx = shl i32 %i.yw, %i.yu
  %i.yy = lshr i32 16, %i.yu                      ; 6 uses
  br i1 %.not.i386, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.yz = load i32, ptr %i.rq, align 4, !tbaa !145 ; 3 uses
  %i.za = lshr i32 %i.yy, %i.yz
  %i.zb = load i32, ptr %i.rv, align 8, !tbaa !146
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
  %i.zk = load ptr, ptr %.in, align 8, !tbaa !162 ; 8 uses
  %i.zl = load ptr, ptr %i.k, align 8, !tbaa !129 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv795
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !51 ; 8 uses
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %indvars.iv795
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !162 ; 6 uses
  %i.zr = load i32, ptr %i.xz, align 8, !tbaa !165 ; 14 uses
  %i.zs = load i32, ptr %i.yb, align 4, !tbaa !164 ; 8 uses
  %i.zt = load i32, ptr %i.vl, align 8, !tbaa !46
  %.not110.i = icmp eq i32 %i.zt, 0
  br i1 %.not110.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.zu = load ptr, ptr %i.rm, align 8, !tbaa !48
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 524
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !160
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
  %i.aax = zext nneg i32 %i.aaw to i64            ; 4 uses
  %i.aay = mul i32 %i.aaw, %i.zj
  %i.aaz = zext i32 %i.aay to i64                 ; 5 uses
  %i.aba = sext i32 %i.zr to i64                  ; 2 uses
  %i.abb = sext i32 %spec.select262.i to i64
  %i.abc = zext i32 %i.zj to i64                  ; 2 uses
  %i.abd = zext i32 %i.zh to i64                  ; 2 uses
  %i.abe = zext nneg i32 %i.zy to i64             ; 2 uses
  %i.abf = add nuw i32 %i.yv, 1
  %wide.trip.count746 = zext i32 %i.abf to i64
  %.1234.i.idx = select i1 %i.aah, i64 %i.aak, i64 0 ; 6 uses
  %invariant.gep979 = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %smin = call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.aam)
  %5 = sub i32 %smin, %.0236.i
  %6 = call i32 @llvm.smax.i32(i32 %5, i32 1)
  %smax1037 = zext nneg i32 %6 to i64
  %i.abg = add nsw i64 %smax1037, -1              ; 3 uses
  %i.abh = mul nsw i64 %i.abg, %i.aav             ; 5 uses
  %scevgep1038 = getelementptr i8, ptr %i.zq, i64 %i.abh
  %i.abi = add nsw i64 %.1234.i.idx, %i.aax       ; 2 uses
  %i.abj = getelementptr i8, ptr %i.zk, i64 %i.abi
  %scevgep1042.a = getelementptr i8, ptr %i.abj, i64 %i.aaz
  %i.abk = mul nsw i64 %i.abg, %i.abc             ; 4 uses
  %i.abl = getelementptr i8, ptr %i.zk, i64 %i.abi
  %i.abm = getelementptr i8, ptr %i.abl, i64 %i.abk
  %scevgep1045.a = getelementptr i8, ptr %i.abm, i64 %i.aaz
  %i.abn = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %scevgep1047.a = getelementptr i8, ptr %i.abn, i64 %i.aaz
  %i.abo = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %i.abp = getelementptr i8, ptr %i.abo, i64 %i.abk
  %scevgep1049.a = getelementptr i8, ptr %i.abp, i64 %i.aaz
  %i.abq = add nsw i64 %.1234.i.idx, %i.aax       ; 2 uses
  %scevgep1051.a = getelementptr i8, ptr %i.zk, i64 %i.abq
  %i.abr = getelementptr i8, ptr %i.zk, i64 %i.abq
  %scevgep1053.a = getelementptr i8, ptr %i.abr, i64 %i.abk
  %i.abs = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %scevgep1055.a = getelementptr i8, ptr %i.abs, i64 %i.abk
  %i.abt = shl nsw i64 %i.abg, 1
  %i.abu = mul i64 %i.abt, %i.aba
  %scevgep1066 = getelementptr i8, ptr %i.ym, i64 %i.abu
  %stride.check1075 = icmp slt i32 %i.zo, 0
  %7 = insertelement <8 x i1> poison, i1 %stride.check1075, i64 7
  %i.abv = or i32 %i.zr, %i.zo
  %i.abw = icmp slt i32 %i.abv, 0
  br label %bb.dr

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.abx = icmp eq i32 %.0.i652, %i.yx
  br i1 %i.abx, label %predict_slice.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aby = mul i32 %i.zi, %.0.i652                ; 2 uses
  %i.abz = add nuw nsw i32 %.0.i652, 1
  %i.aca = mul nsw i32 %i.zi, %i.abz
  %..i390 = call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.aca) ; 2 uses
  %i.acb = icmp slt i32 %i.aby, %..i390
  %i.acc = icmp sgt i32 %i.zr, 0
  %or.cond707 = select i1 %i.acb, i1 %i.acc, i1 false
  br i1 %or.cond707, label %.preheader.preheader, label %predict_slice.exit

.preheader.preheader:                             ; preds = %bb.dq
  %i.acd = sext i32 %i.aby to i64                 ; 3 uses
  %i.ace = sext i32 %i.zo to i64                  ; 3 uses
  %i.acf = zext nneg i32 %i.zr to i64
  %i.acg = sext i32 %..i390 to i64                ; 3 uses
  %wide.trip.count732 = zext nneg i32 %i.zr to i64 ; 8 uses
  %i.ach = mul nsw i64 %i.ace, %i.acd
  %scevgep1136.a = getelementptr i8, ptr %i.zq, i64 %i.ach
  %i.aci = add nsw i64 %i.acg, -1
  %i.acj = mul i64 %i.aci, %i.ace
  %i.ack = getelementptr i8, ptr %i.zq, i64 %i.acj
  %scevgep1137 = getelementptr i8, ptr %i.ack, i64 %wide.trip.count732
  %i.acl = shl nsw i64 %i.acd, 1
  %i.acm = mul nsw i64 %i.acl, %wide.trip.count732
  %scevgep1138 = getelementptr i8, ptr %i.ym, i64 %i.acm
  %i.acn = shl nsw i64 %i.acg, 1
  %i.aco = mul nsw i64 %i.acn, %wide.trip.count732
  %scevgep1139 = getelementptr i8, ptr %i.ym, i64 %i.aco
  %min.iters.check1145 = icmp ult i32 %i.zr, 8
  %bound01140 = icmp ult ptr %scevgep1136.a, %scevgep1139
  %bound11141 = icmp ult ptr %scevgep1138, %scevgep1137
  %found.conflict1142 = and i1 %bound01140, %bound11141
  %stride.check1143 = icmp slt i32 %i.zo, 0
  %i.acp = or i1 %found.conflict1142, %stride.check1143
  %n.vec1147 = and i64 %wide.trip.count732, 2147483640 ; 3 uses
  %cmp.n1153 = icmp eq i64 %n.vec1147, %wide.trip.count732
  %xtraiter = and i64 %wide.trip.count732, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.acq = add nsw i64 %wide.trip.count732, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge639
  %indvars.iv734 = phi i64 [ %i.acd, %.preheader.preheader ], [ %indvars.iv.next735, %._crit_edge639 ] ; 3 uses
  %i.acr = mul nsw i64 %indvars.iv734, %i.acf
  %i.acs = mul nsw i64 %indvars.iv734, %i.ace
  %invariant.gep = getelementptr [2 x i8], ptr %i.ym, i64 %i.acr ; 4 uses
  %invariant.gep975 = getelementptr i8, ptr %i.zq, i64 %i.acs ; 4 uses
  %brmerge = select i1 %min.iters.check1145, i1 true, i1 %i.acp
  br i1 %brmerge, label %scalar.ph1144.preheader, label %vector.body1148

vector.body1148:                                  ; preds = %.preheader, %vector.body1148
  %index1149 = phi i64 [ %index.next1151, %vector.body1148 ], [ 0, %.preheader ] ; 3 uses
  %i.act = getelementptr [2 x i8], ptr %invariant.gep, i64 %index1149
  %wide.load1150 = load <8 x i16>, ptr %i.act, align 2, !tbaa !55, !alias.scope !176 ; 2 uses
  %i.acu = sext <8 x i16> %wide.load1150 to <8 x i32>
  %i.acv = add nsw <8 x i32> %i.acu, splat (i32 2056)
  %i.acw = ashr <8 x i32> %i.acv, splat (i32 4)   ; 2 uses
  %i.acx = icmp ugt <8 x i32> %i.acw, splat (i32 255)
  %i.acy = icmp sgt <8 x i16> %wide.load1150, splat (i16 -2057)
  %i.acz = sext <8 x i1> %i.acy to <8 x i32>
  %i.ada = select <8 x i1> %i.acx, <8 x i32> %i.acz, <8 x i32> %i.acw
  %i.adb = trunc <8 x i32> %i.ada to <8 x i8>
  %i.adc = getelementptr i8, ptr %invariant.gep975, i64 %index1149
  store <8 x i8> %i.adb, ptr %i.adc, align 1, !tbaa !44, !alias.scope !177, !noalias !176
  %index.next1151 = add nuw i64 %index1149, 8     ; 2 uses
  %i.add = icmp eq i64 %index.next1151, %n.vec1147
  br i1 %i.add, label %middle.block1152, label %vector.body1148, !llvm.loop !73

middle.block1152:                                 ; preds = %vector.body1148
  br i1 %cmp.n1153, label %._crit_edge639, label %scalar.ph1144.preheader

scalar.ph1144.preheader:                          ; preds = %.preheader, %middle.block1152
  %indvars.iv729.ph = phi i64 [ %n.vec1147, %middle.block1152 ], [ 0, %.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph1144.prol.loopexit, label %scalar.ph1144.prol

scalar.ph1144.prol:                               ; preds = %scalar.ph1144.preheader
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv729.ph
  %i.ade = load i16, ptr %gep.prol, align 2, !tbaa !55 ; 2 uses
  %i.adf = sext i16 %i.ade to i32
  %i.adg = add nsw i32 %i.adf, 2056
  %i.adh = ashr i32 %i.adg, 4                     ; 2 uses
  %i.adi = icmp ugt i32 %i.adh, 255
  %isnotneg.i391.prol = icmp sgt i16 %i.ade, -2057
  %i.adj = sext i1 %isnotneg.i391.prol to i32
  %.0.i392.prol = select i1 %i.adi, i32 %i.adj, i32 %i.adh
  %i.adk = trunc i32 %.0.i392.prol to i8
  %gep976.prol = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv729.ph
  store i8 %i.adk, ptr %gep976.prol, align 1, !tbaa !44
  %indvars.iv.next730.prol = or disjoint i64 %indvars.iv729.ph, 1
  br label %scalar.ph1144.prol.loopexit

scalar.ph1144.prol.loopexit:                      ; preds = %scalar.ph1144.prol, %scalar.ph1144.preheader
  %indvars.iv729.unr = phi i64 [ %indvars.iv729.ph, %scalar.ph1144.preheader ], [ %indvars.iv.next730.prol, %scalar.ph1144.prol ]
  %i.adl = icmp eq i64 %indvars.iv729.ph, %i.acq
  br i1 %i.adl, label %._crit_edge639, label %scalar.ph1144

scalar.ph1144:                                    ; preds = %scalar.ph1144.prol.loopexit, %scalar.ph1144
  %indvars.iv729 = phi i64 [ %indvars.iv.next730.1, %scalar.ph1144 ], [ %indvars.iv729.unr, %scalar.ph1144.prol.loopexit ] ; 4 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv729
  %i.adm = load i16, ptr %gep, align 2, !tbaa !55 ; 2 uses
  %i.adn = sext i16 %i.adm to i32
  %i.ado = add nsw i32 %i.adn, 2056
  %i.adp = ashr i32 %i.ado, 4                     ; 2 uses
  %i.adq = icmp ugt i32 %i.adp, 255
  %isnotneg.i391 = icmp sgt i16 %i.adm, -2057
  %i.adr = sext i1 %isnotneg.i391 to i32
  %.0.i392 = select i1 %i.adq, i32 %i.adr, i32 %i.adp
  %i.ads = trunc i32 %.0.i392 to i8
  %gep976 = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv729
  store i8 %i.ads, ptr %gep976, align 1, !tbaa !44
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next730
  %i.adt = load i16, ptr %gep.1, align 2, !tbaa !55 ; 2 uses
  %i.adu = sext i16 %i.adt to i32
  %i.adv = add nsw i32 %i.adu, 2056
  %i.adw = ashr i32 %i.adv, 4                     ; 2 uses
  %i.adx = icmp ugt i32 %i.adw, 255
  %isnotneg.i391.1 = icmp sgt i16 %i.adt, -2057
  %i.ady = sext i1 %isnotneg.i391.1 to i32
  %.0.i392.1 = select i1 %i.adx, i32 %i.ady, i32 %i.adw
  %i.adz = trunc i32 %.0.i392.1 to i8
  %gep976.1 = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv.next730
  store i8 %i.adz, ptr %gep976.1, align 1, !tbaa !44
  %indvars.iv.next730.1 = add nuw nsw i64 %indvars.iv729, 2 ; 2 uses
  %exitcond733.not.1 = icmp eq i64 %indvars.iv.next730.1, %wide.trip.count732
  br i1 %exitcond733.not.1, label %._crit_edge639, label %scalar.ph1144, !llvm.loop !74

._crit_edge639:                                   ; preds = %scalar.ph1144.prol.loopexit, %scalar.ph1144, %middle.block1152
  %indvars.iv.next735 = add nsw i64 %indvars.iv734, 1 ; 2 uses
  %i.aea = icmp slt i64 %indvars.iv.next735, %i.acg
  br i1 %i.aea, label %.preheader, label %predict_slice.exit, !llvm.loop !75

bb.dr:                                            ; preds = %.lr.ph650, %add_yblock.exit
  %indvars.iv743 = phi i64 [ 0, %.lr.ph650 ], [ %indvars.iv.next744, %add_yblock.exit ] ; 6 uses
  %i.aeb = mul i64 %indvars.iv743, %i.abd         ; 2 uses
  %i.aec = trunc i64 %i.aeb to i32
  %i.aed = sub i32 %i.aec, %i.zy                  ; 2 uses
  %smax.a = call i32 @llvm.smax.i32(i32 %i.aed, i32 0) ; 4 uses
  %i.aee = add i32 %i.aar, %smax.a
  %8 = sext i32 %i.aee to i64                     ; 2 uses
  %scevgep1036 = getelementptr i8, ptr %i.zq, i64 %8 ; 4 uses
  %smin1039 = call i32 @llvm.smin.i32(i32 %i.aed, i32 0)
  %9 = add i32 %i.zh, %smin1039
  %10 = add i32 %9, %smax.a
  %smin1040 = call i32 @llvm.smin.i32(i32 %i.zr, i32 %10)
  %11 = sub i32 %smin1040, %smax.a
  %12 = call i32 @llvm.umax.i32(i32 %11, i32 1)
  %umax = zext i32 %12 to i64                     ; 7 uses
  %i.aef = getelementptr i8, ptr %scevgep1038, i64 %umax
  %scevgep1041 = getelementptr i8, ptr %i.aef, i64 %8 ; 5 uses
  %i.aeg = sub i64 %i.aeb, %i.abe
  %smin1043 = call i64 @llvm.smin.i64(i64 %i.aeg, i64 0) ; 2 uses
  %i.aeh = sub nsw i64 0, %smin1043               ; 3 uses
  %scevgep1044.a = getelementptr i8, ptr %scevgep1042.a, i64 %i.aeh
  %i.aei = sub i64 %umax, %smin1043               ; 4 uses
  %scevgep1046.a = getelementptr i8, ptr %scevgep1045.a, i64 %i.aei
  %scevgep1048.a = getelementptr i8, ptr %scevgep1047.a, i64 %i.aeh
  %scevgep1050.a = getelementptr i8, ptr %scevgep1049.a, i64 %i.aei
  %scevgep1052.a = getelementptr i8, ptr %scevgep1051.a, i64 %i.aeh
  %scevgep1054.a = getelementptr i8, ptr %scevgep1053.a, i64 %i.aei
  %scevgep1056.a = getelementptr i8, ptr %scevgep1055.a, i64 %i.aei
  %i.aej = add i32 %i.aaq, %smax.a
  %i.aek = sext i32 %i.aej to i64                 ; 2 uses
  %13 = shl nsw i64 %i.aek, 1
  %scevgep1065 = getelementptr i8, ptr %i.ym, i64 %13
  %i.ael = add nsw i64 %umax, %i.aek
  %i.aem = shl nsw i64 %i.ael, 1
  %scevgep1067 = getelementptr i8, ptr %scevgep1066, i64 %i.aem
  %i.aen = mul nuw nsw i64 %indvars.iv743, %i.abd
  %i.aeo = sub nsw i64 %i.aen, %i.abe             ; 2 uses
  %i.aep = load i32, ptr %i.wt, align 8, !tbaa !52
  %i.aeq = load i32, ptr %i.sr, align 8, !tbaa !47 ; 2 uses
  %i.aer = shl i32 %i.aep, %i.aeq                 ; 2 uses
  %i.aes = load i32, ptr %i.wv, align 4, !tbaa !169
  %i.aet = shl i32 %i.aes, %i.aeq
  %i.aeu = load ptr, ptr %i.xk, align 8, !tbaa !56
  %i.aev = mul nsw i32 %i.aer, %i.aac
  %i.aew = sext i32 %i.aev to i64
  %i.aex = getelementptr [10 x i8], ptr %i.aeu, i64 %indvars.iv743
  %i.aey = getelementptr i8, ptr %i.aex, i64 -10
  %i.aez = getelementptr [10 x i8], ptr %i.aey, i64 %i.aew ; 4 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 10 ; 3 uses
  %i.afb = sext i32 %i.aer to i64                 ; 2 uses
  %i.afc = getelementptr inbounds [10 x i8], ptr %i.aez, i64 %i.afb ; 3 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 10 ; 3 uses
  %i.afe = load ptr, ptr %i.xl, align 8, !tbaa !180 ; 6 uses
  %i.aff = icmp eq i64 %indvars.iv743, 0
  br i1 %i.aff, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.not.i393 = icmp slt i64 %indvars.iv743, %i.afb ; 2 uses
  %spec.select.i = select i1 %.not.i393, ptr %i.afa, ptr %i.aez
  %spec.select257.i = select i1 %.not.i393, ptr %i.afd, ptr %i.afc
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0228.i = phi ptr [ %i.aez, %bb.ds ], [ %i.afa, %bb.dr ] ; 2 uses
  %.0226.i = phi ptr [ %spec.select.i, %bb.ds ], [ %i.afa, %bb.dr ] ; 2 uses
  %.0224.i = phi ptr [ %i.afc, %bb.ds ], [ %i.afd, %bb.dr ] ; 3 uses
  %.0222.i = phi ptr [ %spec.select257.i, %bb.ds ], [ %i.afd, %bb.dr ] ; 3 uses
  br i1 %i.aag, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.not249.i = icmp slt i32 %.0.i652, %i.aet      ; 2 uses
  %spec.select258.i = select i1 %.not249.i, ptr %.0224.i, ptr %.0228.i
  %spec.select259.i = select i1 %.not249.i, ptr %.0222.i, ptr %.0226.i
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.1229.i = phi ptr [ %.0228.i, %bb.du ], [ %.0224.i, %bb.dt ] ; 20 uses
  %.1227.i = phi ptr [ %.0226.i, %bb.du ], [ %.0222.i, %bb.dt ] ; 22 uses
  %.1225.i = phi ptr [ %spec.select258.i, %bb.du ], [ %.0224.i, %bb.dt ] ; 21 uses
  %.1223.i = phi ptr [ %spec.select259.i, %bb.du ], [ %.0222.i, %bb.dt ] ; 20 uses
  %i.afg = trunc nsw i64 %i.aeo to i32            ; 2 uses
  %i.afh = call i32 @llvm.smin.i32(i32 %i.afg, i32 0)
  %.0237.i = add nsw i32 %i.afh, %i.zh            ; 2 uses
  %.0235.i = call i32 @llvm.smax.i32(i32 %i.afg, i32 0) ; 8 uses
  %i.afi = call i64 @llvm.smin.i64(i64 %i.aeo, i64 0)
  %.0233.i.idx = sub i64 0, %i.afi
  %i.afj = add nsw i32 %.0237.i, %.0235.i
  %i.afk = icmp sgt i32 %i.afj, %i.zr
  %i.afl = sub nsw i32 %i.zr, %.0235.i
  %spec.select261.i = select i1 %i.afk, i32 %i.afl, i32 %.0237.i ; 7 uses
  %gep980 = getelementptr i8, ptr %invariant.gep979, i64 %.0233.i.idx ; 2 uses
  %i.afm = icmp slt i32 %spec.select261.i, 1
  %or.cond5.i = select i1 %i.afm, i1 true, i1 %i.aap
  br i1 %or.cond5.i, label %add_yblock.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.afn = add nsw i32 %.0235.i, %i.aaq
  %i.afo = sext i32 %i.afn to i64
  %i.afp = getelementptr inbounds [2 x i8], ptr %i.ym, i64 %i.afo
  %i.afq = add nsw i32 %.0235.i, %i.aar
  %i.afr = sext i32 %i.afq to i64
  %i.afs = getelementptr inbounds i8, ptr %i.zq, i64 %i.afr ; 2 uses
  %i.aft = getelementptr inbounds i8, ptr %i.afe, i64 %i.aat ; 11 uses
  %i.afu = getelementptr inbounds i8, ptr %i.aft, i64 %i.aau ; 5 uses
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %i.aft, ptr noundef %i.afe, i64 noundef %i.aav, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef %.1229.i, i32 noundef %i.yq, i32 noundef %i.zr, i32 noundef %i.zs) #9
  %i.afv = getelementptr inbounds nuw i8, ptr %.1229.i, i64 8 ; 3 uses
  %i.afw = load i8, ptr %i.afv, align 2, !tbaa !58 ; 4 uses
  %i.afx = and i8 %i.afw, 1
  %.not.i501 = icmp eq i8 %i.afx, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1227.i, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !58 ; 2 uses
  %i.afy = and i8 %.pre, 1
  %.not16.i502 = icmp eq i8 %i.afy, 0
  %or.cond987 = select i1 %.not.i501, i1 true, i1 %.not16.i502
  br i1 %or.cond987, label %same_block.exit507, label %.split

.split:                                           ; preds = %bb.dw
  %i.afz = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !44
  %i.agb = getelementptr inbounds nuw i8, ptr %.1227.i, i64 5
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !44
  %i.agd = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.age = load i8, ptr %i.agd, align 2, !tbaa !44
  %i.agf = getelementptr inbounds nuw i8, ptr %.1227.i, i64 6
  %i.agg = load i8, ptr %i.agf, align 2, !tbaa !44
  %i.agh = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !44
  %i.agj = getelementptr inbounds nuw i8, ptr %.1227.i, i64 7
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !44
  %i.agl = icmp eq i8 %i.aga, %i.agc
  %i.agm = icmp eq i8 %i.age, %i.agg
  %i.agn = and i1 %i.agl, %i.agm
  %i.ago = icmp eq i8 %i.agi, %i.agk
  %.not18.i503 = and i1 %i.agn, %i.ago
  br i1 %.not18.i503, label %bb.dy, label %bb.dx

same_block.exit507:                               ; preds = %bb.dw
  %i.agp = load i16, ptr %.1229.i, align 2, !tbaa !59
  %i.agq = sext i16 %i.agp to i32
  %i.agr = load i16, ptr %.1227.i, align 2, !tbaa !59
  %i.ags = sext i16 %i.agr to i32
  %i.agt = sub nsw i32 %i.agq, %i.ags
  %i.agu = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.agv = load i16, ptr %i.agu, align 2, !tbaa !60
  %i.agw = sext i16 %i.agv to i32
  %i.agx = getelementptr inbounds nuw i8, ptr %.1227.i, i64 2
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !60
  %i.agz = sext i16 %i.agy to i32
  %i.aha = sub nsw i32 %i.agw, %i.agz
  %i.ahb = or i32 %i.aha, %i.agt
  %i.ahc = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.ahd = load i8, ptr %i.ahc, align 2, !tbaa !61
  %i.ahe = zext i8 %i.ahd to i32
  %i.ahf = getelementptr inbounds nuw i8, ptr %.1227.i, i64 4
  %i.ahg = load i8, ptr %i.ahf, align 2, !tbaa !61
  %i.ahh = zext i8 %i.ahg to i32
  %i.ahi = sub nsw i32 %i.ahe, %i.ahh
  %i.ahj = or i32 %i.ahb, %i.ahi
  %i.ahk = xor i8 %.pre, %i.afw
  %i.ahl = and i8 %i.ahk, 1
  %i.ahm = zext nneg i8 %i.ahl to i32
  %i.ahn = or i32 %i.ahj, %i.ahm
  %.not17.i506 = icmp eq i32 %i.ahn, 0
  br i1 %.not17.i506, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.split, %same_block.exit507
  %i.aho = getelementptr inbounds i8, ptr %i.afu, i64 %i.aau
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %i.afu, ptr noundef %i.afe, i64 noundef %i.aav, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef nonnull %.1227.i, i32 noundef %i.yq, i32 noundef %i.zr, i32 noundef %i.zs) #9
  %.pre799 = load i8, ptr %i.afv, align 2, !tbaa !58
  br label %bb.dy

bb.dy:                                            ; preds = %.split, %same_block.exit507, %bb.dx
  %i.ahp = phi i8 [ %.pre799, %bb.dx ], [ %i.afw, %same_block.exit507 ], [ %i.afw, %.split ] ; 6 uses
  %.sroa.7.0 = phi ptr [ %i.afu, %bb.dx ], [ %i.aft, %same_block.exit507 ], [ %i.aft, %.split ] ; 8 uses
  %.0221.i = phi ptr [ %i.aho, %bb.dx ], [ %i.afu, %same_block.exit507 ], [ %i.afu, %.split ] ; 7 uses
  %i.ahq = and i8 %i.ahp, 1
  %.not.i494 = icmp eq i8 %i.ahq, 0
  %.phi.trans.insert801 = getelementptr inbounds nuw i8, ptr %.1225.i, i64 8
  %.pre802 = load i8, ptr %.phi.trans.insert801, align 2, !tbaa !58 ; 4 uses
  %i.ahr = and i8 %.pre802, 1
  %.not16.i495 = icmp eq i8 %i.ahr, 0
  %or.cond988 = select i1 %.not.i494, i1 true, i1 %.not16.i495
  br i1 %or.cond988, label %same_block.exit500, label %.split948

.split948:                                        ; preds = %bb.dy
  %i.ahs = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !44
  %i.ahu = getelementptr inbounds nuw i8, ptr %.1225.i, i64 5
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !44
  %i.ahw = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.ahx = load i8, ptr %i.ahw, align 2, !tbaa !44
  %i.ahy = getelementptr inbounds nuw i8, ptr %.1225.i, i64 6
  %i.ahz = load i8, ptr %i.ahy, align 2, !tbaa !44
  %i.aia = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !44
  %i.aic = getelementptr inbounds nuw i8, ptr %.1225.i, i64 7
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !44
  %i.aie = icmp eq i8 %i.aht, %i.ahv
  %i.aif = icmp eq i8 %i.ahx, %i.ahz
  %i.aig = and i1 %i.aie, %i.aif
  %i.aih = icmp eq i8 %i.aib, %i.aid
  %.not18.i496 = and i1 %i.aig, %i.aih
  br i1 %.not18.i496, label %bb.eb, label %bb.dz

same_block.exit500:                               ; preds = %bb.dy
  %i.aii = load i16, ptr %.1229.i, align 2, !tbaa !59
  %i.aij = sext i16 %i.aii to i32
  %i.aik = load i16, ptr %.1225.i, align 2, !tbaa !59
  %i.ail = sext i16 %i.aik to i32
  %i.aim = sub nsw i32 %i.aij, %i.ail
  %i.ain = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.aio = load i16, ptr %i.ain, align 2, !tbaa !60
  %i.aip = sext i16 %i.aio to i32
  %i.aiq = getelementptr inbounds nuw i8, ptr %.1225.i, i64 2
  %i.air = load i16, ptr %i.aiq, align 2, !tbaa !60
  %i.ais = sext i16 %i.air to i32
  %i.ait = sub nsw i32 %i.aip, %i.ais
  %i.aiu = or i32 %i.ait, %i.aim
  %i.aiv = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.aiw = load i8, ptr %i.aiv, align 2, !tbaa !61
  %i.aix = zext i8 %i.aiw to i32
  %i.aiy = getelementptr inbounds nuw i8, ptr %.1225.i, i64 4
  %i.aiz = load i8, ptr %i.aiy, align 2, !tbaa !61
  %i.aja = zext i8 %i.aiz to i32
  %i.ajb = sub nsw i32 %i.aix, %i.aja
  %i.ajc = or i32 %i.aiu, %i.ajb
  %i.ajd = xor i8 %.pre802, %i.ahp
  %i.aje = and i8 %i.ajd, 1
  %i.ajf = zext nneg i8 %i.aje to i32
  %i.ajg = or i32 %i.ajc, %i.ajf
  %.not17.i499 = icmp eq i32 %i.ajg, 0
  br i1 %.not17.i499, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %.split948, %same_block.exit500
  %i.ajh = getelementptr inbounds nuw i8, ptr %.1227.i, i64 8
  %i.aji = load i8, ptr %i.ajh, align 2, !tbaa !58 ; 2 uses
  %i.ajj = and i8 %i.aji, 1
  %.not.i466 = icmp eq i8 %i.ajj, 0
  %i.ajk = and i8 %.pre802, 1
  %.not16.i467 = icmp eq i8 %i.ajk, 0
  %or.cond989 = select i1 %.not.i466, i1 true, i1 %.not16.i467
  br i1 %or.cond989, label %same_block.exit472, label %.split949

.split949:                                        ; preds = %bb.dz
  %i.ajl = getelementptr inbounds nuw i8, ptr %.1227.i, i64 5
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !44
  %i.ajn = getelementptr inbounds nuw i8, ptr %.1225.i, i64 5
  %i.ajo = load i8, ptr %i.ajn, align 1, !tbaa !44
  %i.ajp = getelementptr inbounds nuw i8, ptr %.1227.i, i64 6
  %i.ajq = load i8, ptr %i.ajp, align 2, !tbaa !44
  %i.ajr = getelementptr inbounds nuw i8, ptr %.1225.i, i64 6
  %i.ajs = load i8, ptr %i.ajr, align 2, !tbaa !44
  %i.ajt = getelementptr inbounds nuw i8, ptr %.1227.i, i64 7
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !44
  %i.ajv = getelementptr inbounds nuw i8, ptr %.1225.i, i64 7
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !44
  %i.ajx = icmp eq i8 %i.ajm, %i.ajo
  %i.ajy = icmp eq i8 %i.ajq, %i.ajs
  %i.ajz = and i1 %i.ajx, %i.ajy
  %i.aka = icmp eq i8 %i.aju, %i.ajw
  %.not18.i468 = and i1 %i.ajz, %i.aka
  br i1 %.not18.i468, label %bb.eb, label %bb.ea

same_block.exit472:                               ; preds = %bb.dz
  %i.akb = load i16, ptr %.1227.i, align 2, !tbaa !59
  %i.akc = sext i16 %i.akb to i32
  %i.akd = load i16, ptr %.1225.i, align 2, !tbaa !59
  %i.ake = sext i16 %i.akd to i32
  %i.akf = sub nsw i32 %i.akc, %i.ake
  %i.akg = getelementptr inbounds nuw i8, ptr %.1227.i, i64 2
  %i.akh = load i16, ptr %i.akg, align 2, !tbaa !60
  %i.aki = sext i16 %i.akh to i32
  %i.akj = getelementptr inbounds nuw i8, ptr %.1225.i, i64 2
  %i.akk = load i16, ptr %i.akj, align 2, !tbaa !60
  %i.akl = sext i16 %i.akk to i32
  %i.akm = sub nsw i32 %i.aki, %i.akl
  %i.akn = or i32 %i.akm, %i.akf
  %i.ako = getelementptr inbounds nuw i8, ptr %.1227.i, i64 4
  %i.akp = load i8, ptr %i.ako, align 2, !tbaa !61
  %i.akq = zext i8 %i.akp to i32
  %i.akr = getelementptr inbounds nuw i8, ptr %.1225.i, i64 4
  %i.aks = load i8, ptr %i.akr, align 2, !tbaa !61
  %i.akt = zext i8 %i.aks to i32
  %i.aku = sub nsw i32 %i.akq, %i.akt
  %i.akv = or i32 %i.akn, %i.aku
  %i.akw = xor i8 %.pre802, %i.aji
  %i.akx = and i8 %i.akw, 1
  %i.aky = zext nneg i8 %i.akx to i32
  %i.akz = or i32 %i.akv, %i.aky
  %.not17.i471 = icmp eq i32 %i.akz, 0
  br i1 %.not17.i471, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.split949, %same_block.exit472
  %i.ala = getelementptr inbounds i8, ptr %.0221.i, i64 %i.aau
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %.0221.i, ptr noundef %i.afe, i64 noundef %i.aav, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef nonnull %.1225.i, i32 noundef %i.yq, i32 noundef %i.zr, i32 noundef %i.zs) #9
  %.pre803 = load i8, ptr %i.afv, align 2, !tbaa !58
  br label %bb.eb

bb.eb:                                            ; preds = %.split949, %.split948, %same_block.exit472, %same_block.exit500, %bb.ea
  %i.alb = phi i8 [ %.pre803, %bb.ea ], [ %i.ahp, %same_block.exit500 ], [ %i.ahp, %same_block.exit472 ], [ %i.ahp, %.split948 ], [ %i.ahp, %.split949 ] ; 2 uses
  %.sroa.12.0 = phi ptr [ %.0221.i, %bb.ea ], [ %i.aft, %same_block.exit500 ], [ %.sroa.7.0, %same_block.exit472 ], [ %i.aft, %.split948 ], [ %.sroa.7.0, %.split949 ] ; 6 uses
  %.1.i394 = phi ptr [ %i.ala, %bb.ea ], [ %.0221.i, %same_block.exit500 ], [ %.0221.i, %same_block.exit472 ], [ %.0221.i, %.split948 ], [ %.0221.i, %.split949 ] ; 2 uses
  %i.alc = and i8 %i.alb, 1
  %.not.i487 = icmp eq i8 %i.alc, 0
  %.phi.trans.insert805 = getelementptr inbounds nuw i8, ptr %.1223.i, i64 8
  %.pre806 = load i8, ptr %.phi.trans.insert805, align 2, !tbaa !58 ; 6 uses
  %i.ald = and i8 %.pre806, 1
  %.not16.i488 = icmp eq i8 %i.ald, 0
  %or.cond990 = select i1 %.not.i487, i1 true, i1 %.not16.i488
  br i1 %or.cond990, label %same_block.exit493, label %.split950

.split950:                                        ; preds = %bb.eb
  %i.ale = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !44
  %i.alg = getelementptr inbounds nuw i8, ptr %.1223.i, i64 5
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !44
  %i.ali = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.alj = load i8, ptr %i.ali, align 2, !tbaa !44
  %i.alk = getelementptr inbounds nuw i8, ptr %.1223.i, i64 6
  %i.all = load i8, ptr %i.alk, align 2, !tbaa !44
  %i.alm = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.aln = load i8, ptr %i.alm, align 1, !tbaa !44
  %i.alo = getelementptr inbounds nuw i8, ptr %.1223.i, i64 7
  %i.alp = load i8, ptr %i.alo, align 1, !tbaa !44
  %i.alq = icmp eq i8 %i.alf, %i.alh
  %i.alr = icmp eq i8 %i.alj, %i.all
  %i.als = and i1 %i.alq, %i.alr
  %i.alt = icmp eq i8 %i.aln, %i.alp
  %.not18.i489 = and i1 %i.als, %i.alt
  br i1 %.not18.i489, label %.lr.ph643.preheader, label %bb.ec

same_block.exit493:                               ; preds = %bb.eb
  %i.alu = load i16, ptr %.1229.i, align 2, !tbaa !59
  %i.alv = sext i16 %i.alu to i32
  %i.alw = load i16, ptr %.1223.i, align 2, !tbaa !59
  %i.alx = sext i16 %i.alw to i32
  %i.aly = sub nsw i32 %i.alv, %i.alx
  %i.alz = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.ama = load i16, ptr %i.alz, align 2, !tbaa !60
  %i.amb = sext i16 %i.ama to i32
  %i.amc = getelementptr inbounds nuw i8, ptr %.1223.i, i64 2
  %i.amd = load i16, ptr %i.amc, align 2, !tbaa !60
  %i.ame = sext i16 %i.amd to i32
  %i.amf = sub nsw i32 %i.amb, %i.ame
  %i.amg = or i32 %i.amf, %i.aly
  %i.amh = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.ami = load i8, ptr %i.amh, align 2, !tbaa !61
  %i.amj = zext i8 %i.ami to i32
  %i.amk = getelementptr inbounds nuw i8, ptr %.1223.i, i64 4
  %i.aml = load i8, ptr %i.amk, align 2, !tbaa !61
  %i.amm = zext i8 %i.aml to i32
  %i.amn = sub nsw i32 %i.amj, %i.amm
  %i.amo = or i32 %i.amg, %i.amn
  %i.amp = xor i8 %.pre806, %i.alb
  %i.amq = and i8 %i.amp, 1
  %i.amr = zext nneg i8 %i.amq to i32
  %i.ams = or i32 %i.amo, %i.amr
  %.not17.i492 = icmp eq i32 %i.ams, 0
  br i1 %.not17.i492, label %.lr.ph643.preheader, label %bb.ec

bb.ec:                                            ; preds = %.split950, %same_block.exit493
  %i.amt = getelementptr inbounds nuw i8, ptr %.1227.i, i64 8
  %i.amu = load i8, ptr %i.amt, align 2, !tbaa !58 ; 2 uses
  %i.amv = and i8 %i.amu, 1
  %.not.i480 = icmp eq i8 %i.amv, 0
  %i.amw = and i8 %.pre806, 1
  %.not16.i481 = icmp eq i8 %i.amw, 0
  %or.cond991 = select i1 %.not.i480, i1 true, i1 %.not16.i481
  br i1 %or.cond991, label %same_block.exit486, label %.split951

.split951:                                        ; preds = %bb.ec
  %i.amx = getelementptr inbounds nuw i8, ptr %.1227.i, i64 5
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !44
  %i.amz = getelementptr inbounds nuw i8, ptr %.1223.i, i64 5
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !44
  %i.anb = getelementptr inbounds nuw i8, ptr %.1227.i, i64 6
  %i.anc = load i8, ptr %i.anb, align 2, !tbaa !44
  %i.and = getelementptr inbounds nuw i8, ptr %.1223.i, i64 6
  %i.ane = load i8, ptr %i.and, align 2, !tbaa !44
  %i.anf = getelementptr inbounds nuw i8, ptr %.1227.i, i64 7
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !44
  %i.anh = getelementptr inbounds nuw i8, ptr %.1223.i, i64 7
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !44
  %i.anj = icmp eq i8 %i.amy, %i.ana
  %i.ank = icmp eq i8 %i.anc, %i.ane
  %i.anl = and i1 %i.anj, %i.ank
  %i.anm = icmp eq i8 %i.ang, %i.ani
  %.not18.i482 = and i1 %i.anl, %i.anm
  br i1 %.not18.i482, label %.lr.ph643.preheader, label %bb.ed

same_block.exit486:                               ; preds = %bb.ec
  %i.ann = load i16, ptr %.1227.i, align 2, !tbaa !59
  %i.ano = sext i16 %i.ann to i32
  %i.anp = load i16, ptr %.1223.i, align 2, !tbaa !59
  %i.anq = sext i16 %i.anp to i32
  %i.anr = sub nsw i32 %i.ano, %i.anq
  %i.ans = getelementptr inbounds nuw i8, ptr %.1227.i, i64 2
  %i.ant = load i16, ptr %i.ans, align 2, !tbaa !60
  %i.anu = sext i16 %i.ant to i32
  %i.anv = getelementptr inbounds nuw i8, ptr %.1223.i, i64 2
  %i.anw = load i16, ptr %i.anv, align 2, !tbaa !60
  %i.anx = sext i16 %i.anw to i32
  %i.any = sub nsw i32 %i.anu, %i.anx
  %i.anz = or i32 %i.any, %i.anr
  %i.aoa = getelementptr inbounds nuw i8, ptr %.1227.i, i64 4
  %i.aob = load i8, ptr %i.aoa, align 2, !tbaa !61
  %i.aoc = zext i8 %i.aob to i32
  %i.aod = getelementptr inbounds nuw i8, ptr %.1223.i, i64 4
  %i.aoe = load i8, ptr %i.aod, align 2, !tbaa !61
  %i.aof = zext i8 %i.aoe to i32
  %i.aog = sub nsw i32 %i.aoc, %i.aof
  %i.aoh = or i32 %i.anz, %i.aog
  %i.aoi = xor i8 %.pre806, %i.amu
  %i.aoj = and i8 %i.aoi, 1
  %i.aok = zext nneg i8 %i.aoj to i32
  %i.aol = or i32 %i.aoh, %i.aok
  %.not17.i485 = icmp eq i32 %i.aol, 0
  br i1 %.not17.i485, label %.lr.ph643.preheader, label %bb.ed

bb.ed:                                            ; preds = %.split951, %same_block.exit486
  %i.aom = getelementptr inbounds nuw i8, ptr %.1225.i, i64 8
  %i.aon = load i8, ptr %i.aom, align 2, !tbaa !58 ; 2 uses
  %i.aoo = and i8 %i.aon, 1
  %.not.i473 = icmp eq i8 %i.aoo, 0
  %i.aop = and i8 %.pre806, 1
  %.not16.i474 = icmp eq i8 %i.aop, 0
  %or.cond992 = select i1 %.not.i473, i1 true, i1 %.not16.i474
  br i1 %or.cond992, label %same_block.exit479, label %.split952

.split952:                                        ; preds = %bb.ed
  %i.aoq = getelementptr inbounds nuw i8, ptr %.1225.i, i64 5
  %i.aor = load i8, ptr %i.aoq, align 1, !tbaa !44
  %i.aos = getelementptr inbounds nuw i8, ptr %.1223.i, i64 5
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !44
  %i.aou = getelementptr inbounds nuw i8, ptr %.1225.i, i64 6
  %i.aov = load i8, ptr %i.aou, align 2, !tbaa !44
  %i.aow = getelementptr inbounds nuw i8, ptr %.1223.i, i64 6
  %i.aox = load i8, ptr %i.aow, align 2, !tbaa !44
  %i.aoy = getelementptr inbounds nuw i8, ptr %.1225.i, i64 7
  %i.aoz = load i8, ptr %i.aoy, align 1, !tbaa !44
  %i.apa = getelementptr inbounds nuw i8, ptr %.1223.i, i64 7
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !44
  %i.apc = icmp eq i8 %i.aor, %i.aot
  %i.apd = icmp eq i8 %i.aov, %i.aox
  %i.ape = and i1 %i.apc, %i.apd
  %i.apf = icmp eq i8 %i.aoz, %i.apb
  %.not18.i475 = and i1 %i.ape, %i.apf
  br i1 %.not18.i475, label %.lr.ph643.preheader, label %bb.ee

same_block.exit479:                               ; preds = %bb.ed
  %i.apg = load i16, ptr %.1225.i, align 2, !tbaa !59
  %i.aph = sext i16 %i.apg to i32
  %i.api = load i16, ptr %.1223.i, align 2, !tbaa !59
  %i.apj = sext i16 %i.api to i32
  %i.apk = sub nsw i32 %i.aph, %i.apj
  %i.apl = getelementptr inbounds nuw i8, ptr %.1225.i, i64 2
  %i.apm = load i16, ptr %i.apl, align 2, !tbaa !60
  %i.apn = sext i16 %i.apm to i32
  %i.apo = getelementptr inbounds nuw i8, ptr %.1223.i, i64 2
  %i.app = load i16, ptr %i.apo, align 2, !tbaa !60
  %i.apq = sext i16 %i.app to i32
  %i.apr = sub nsw i32 %i.apn, %i.apq
  %i.aps = or i32 %i.apr, %i.apk
  %i.apt = getelementptr inbounds nuw i8, ptr %.1225.i, i64 4
  %i.apu = load i8, ptr %i.apt, align 2, !tbaa !61
  %i.apv = zext i8 %i.apu to i32
  %i.apw = getelementptr inbounds nuw i8, ptr %.1223.i, i64 4
  %i.apx = load i8, ptr %i.apw, align 2, !tbaa !61
  %i.apy = zext i8 %i.apx to i32
  %i.apz = sub nsw i32 %i.apv, %i.apy
  %i.aqa = or i32 %i.aps, %i.apz
  %i.aqb = xor i8 %.pre806, %i.aon
  %i.aqc = and i8 %i.aqb, 1
  %i.aqd = zext nneg i8 %i.aqc to i32
  %i.aqe = or i32 %i.aqa, %i.aqd
  %.not17.i478 = icmp eq i32 %i.aqe, 0
  br i1 %.not17.i478, label %.lr.ph643.preheader, label %bb.ee

bb.ee:                                            ; preds = %.split952, %same_block.exit479
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %.1.i394, ptr noundef %i.afe, i64 noundef %i.aav, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef nonnull %.1223.i, i32 noundef %i.yq, i32 noundef %i.zr, i32 noundef %i.zs) #9
  br label %.lr.ph643.preheader

.lr.ph643.preheader:                              ; preds = %bb.ee, %same_block.exit493, %same_block.exit486, %same_block.exit479, %.split950, %.split951, %.split952
  %.sroa.17.0 = phi ptr [ %.1.i394, %bb.ee ], [ %.sroa.7.0, %same_block.exit486 ], [ %i.aft, %same_block.exit493 ], [ %.sroa.12.0, %same_block.exit479 ], [ %i.aft, %.split950 ], [ %.sroa.7.0, %.split951 ], [ %.sroa.12.0, %.split952 ] ; 4 uses
  %i.aqf = zext nneg i32 %spec.select261.i to i64 ; 3 uses
  %i.aqg = getelementptr i8, ptr %i.afe, i64 %i.abh
  %scevgep1057.a = getelementptr i8, ptr %i.aqg, i64 %i.aat
  %scevgep1058.a = getelementptr i8, ptr %scevgep1057.a, i64 %umax
  %scevgep1059.a = getelementptr i8, ptr %.sroa.7.0, i64 %i.abh
  %scevgep1060.a = getelementptr i8, ptr %scevgep1059.a, i64 %umax
  %scevgep1061.a = getelementptr i8, ptr %.sroa.12.0, i64 %i.abh
  %scevgep1062.a = getelementptr i8, ptr %scevgep1061.a, i64 %umax
  %scevgep1063 = getelementptr i8, ptr %.sroa.17.0, i64 %i.abh
  %scevgep1064 = getelementptr i8, ptr %scevgep1063, i64 %umax
  %14 = insertelement <4 x ptr> poison, ptr %scevgep1036, i64 0 ; 2 uses
  %15 = shufflevector <4 x ptr> %14, <4 x ptr> poison, <4 x i32> zeroinitializer
  %16 = insertelement <4 x ptr> poison, ptr %scevgep1054.a, i64 0
  %17 = insertelement <4 x ptr> %16, ptr %scevgep1056.a, i64 1
  %18 = insertelement <4 x ptr> %17, ptr %scevgep1058.a, i64 2
  %19 = insertelement <4 x ptr> %18, ptr %scevgep1060.a, i64 3
  %20 = shufflevector <4 x ptr> %14, <4 x ptr> poison, <2 x i32> zeroinitializer
  %21 = insertelement <2 x ptr> poison, ptr %scevgep1062.a, i64 0
  %22 = insertelement <2 x ptr> %21, ptr %scevgep1064, i64 1
  %23 = insertelement <4 x ptr> poison, ptr %scevgep1052.a, i64 0
  %24 = insertelement <4 x ptr> %23, ptr %gep980, i64 1
  %25 = insertelement <4 x ptr> %24, ptr %i.aft, i64 2
  %26 = insertelement <4 x ptr> %25, ptr %.sroa.7.0, i64 3
  %27 = insertelement <4 x ptr> poison, ptr %scevgep1041, i64 0
  %28 = shufflevector <4 x ptr> %27, <4 x ptr> poison, <4 x i32> zeroinitializer
  %29 = insertelement <2 x ptr> poison, ptr %.sroa.12.0, i64 0
  %30 = insertelement <2 x ptr> %29, ptr %.sroa.17.0, i64 1
  %31 = insertelement <2 x ptr> poison, ptr %scevgep1041, i64 0
  %32 = shufflevector <2 x ptr> %31, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check1117 = icmp ult i32 %spec.select261.i, 16
  %bound01068 = icmp ult ptr %scevgep1036, %scevgep1046.a
  %bound11069 = icmp ult ptr %scevgep1044.a, %scevgep1041
  %found.conflict1070 = and i1 %bound01068, %bound11069
  %bound01072 = icmp ult ptr %scevgep1036, %scevgep1050.a
  %bound11073 = icmp ult ptr %scevgep1048.a, %scevgep1041
  %found.conflict1074 = and i1 %bound01072, %bound11073
  %33 = icmp ult <4 x ptr> %15, %19
  %34 = icmp ult <4 x ptr> %26, %28
  %35 = icmp ult <2 x ptr> %20, %22
  %36 = icmp ult <2 x ptr> %30, %32
  %bound01110 = icmp ult ptr %scevgep1036, %scevgep1067
  %bound11111 = icmp ult ptr %scevgep1065, %scevgep1041
  %37 = insertelement <8 x i1> %7, i1 %bound01110, i64 6
  %38 = shufflevector <4 x i1> %33, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %39 = shufflevector <8 x i1> %38, <8 x i1> %37, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %40 = shufflevector <2 x i1> %35, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %41 = shufflevector <8 x i1> %39, <8 x i1> %40, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %42 = shufflevector <2 x i1> %36, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %43 = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %42, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %44 = insertelement <8 x i1> %43, i1 %bound11111, i64 6
  %45 = shufflevector <4 x i1> %34, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %46 = shufflevector <8 x i1> %45, <8 x i1> %44, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %47 = and <8 x i1> %41, %46
  %i.aqh = bitcast <8 x i1> %47 to i8
  %i.aqi = icmp ne i8 %i.aqh, 0
  %op.rdx = or i1 %i.aqi, %found.conflict1074
  %op.rdx1155 = or i1 %found.conflict1070, %i.abw
  %op.rdx1156 = or i1 %op.rdx, %op.rdx1155
  %n.vec1119 = and i64 %i.aqf, 2147483640         ; 3 uses
  %cmp.n1133 = icmp eq i64 %n.vec1119, %i.aqf
  br label %.lr.ph643

.lr.ph643:                                        ; preds = %.lr.ph643.preheader, %._crit_edge644
  %indvars.iv740 = phi i64 [ 0, %.lr.ph643.preheader ], [ %indvars.iv.next741, %._crit_edge644 ] ; 4 uses
  %i.aqj = mul nuw nsw i64 %indvars.iv740, %i.abc
  %i.aqk = getelementptr inbounds nuw i8, ptr %gep980, i64 %i.aqj ; 4 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.aax ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.aaz ; 3 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 %i.aax ; 2 uses
  %i.aqo = mul nsw i64 %indvars.iv740, %i.aav     ; 2 uses
  %i.aqp = mul nsw i64 %indvars.iv740, %i.aba
  %invariant.gep977 = getelementptr [2 x i8], ptr %i.afp, i64 %i.aqp ; 2 uses
  %brmerge1187 = select i1 %min.iters.check1117, i1 true, i1 %op.rdx1156
  br i1 %brmerge1187, label %scalar.ph1116.preheader, label %vector.body1120

vector.body1120:                                  ; preds = %.lr.ph643, %vector.body1120
  %index1121 = phi i64 [ %index.next1131, %vector.body1120 ], [ 0, %.lr.ph643 ] ; 7 uses
  %i.aqq = add nsw i64 %index1121, %i.aqo         ; 5 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %index1121
  %wide.load1122.a = load <8 x i8>, ptr %i.aqr, align 1, !tbaa !44, !alias.scope !181
  %i.aqs = zext <8 x i8> %wide.load1122.a to <8 x i32>
  %i.aqt = getelementptr inbounds i8, ptr %.sroa.17.0, i64 %i.aqq
  %wide.load1123.a = load <8 x i8>, ptr %i.aqt, align 1, !tbaa !44, !alias.scope !182
  %i.aqu = zext <8 x i8> %wide.load1123.a to <8 x i32>
  %i.aqv = mul nuw nsw <8 x i32> %i.aqu, %i.aqs
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aql, i64 %index1121
  %wide.load1124.a = load <8 x i8>, ptr %i.aqw, align 1, !tbaa !44, !alias.scope !183
  %i.aqx = zext <8 x i8> %wide.load1124.a to <8 x i32>
  %i.aqy = getelementptr inbounds i8, ptr %.sroa.12.0, i64 %i.aqq
  %wide.load1125.a = load <8 x i8>, ptr %i.aqy, align 1, !tbaa !44, !alias.scope !184
  %i.aqz = zext <8 x i8> %wide.load1125.a to <8 x i32>
  %i.ara = mul nuw nsw <8 x i32> %i.aqz, %i.aqx
  %i.arb = add nuw nsw <8 x i32> %i.ara, %i.aqv
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqm, i64 %index1121
  %wide.load1126.a = load <8 x i8>, ptr %i.arc, align 1, !tbaa !44, !alias.scope !185
  %i.ard = zext <8 x i8> %wide.load1126.a to <8 x i32>
  %i.are = getelementptr inbounds i8, ptr %.sroa.7.0, i64 %i.aqq
  %wide.load1127.a = load <8 x i8>, ptr %i.are, align 1, !tbaa !44, !alias.scope !186
  %i.arf = zext <8 x i8> %wide.load1127.a to <8 x i32>
  %i.arg = mul nuw nsw <8 x i32> %i.arf, %i.ard
  %i.arh = add nuw nsw <8 x i32> %i.arb, %i.arg
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqn, i64 %index1121
  %wide.load1128 = load <8 x i8>, ptr %i.ari, align 1, !tbaa !44, !alias.scope !187
  %i.arj = zext <8 x i8> %wide.load1128 to <8 x i32>
  %i.ark = getelementptr inbounds i8, ptr %i.aft, i64 %i.aqq
  %wide.load1129 = load <8 x i8>, ptr %i.ark, align 1, !tbaa !44, !alias.scope !188
  %i.arl = zext <8 x i8> %wide.load1129 to <8 x i32>
  %i.arm = mul nuw nsw <8 x i32> %i.arl, %i.arj
  %i.arn = add nuw nsw <8 x i32> %i.arh, %i.arm
  %i.aro = lshr <8 x i32> %i.arn, splat (i32 2)
  %i.arp = getelementptr [2 x i8], ptr %invariant.gep977, i64 %index1121
  %wide.load1130 = load <8 x i16>, ptr %i.arp, align 2, !tbaa !55, !alias.scope !189
  %i.arq = sext <8 x i16> %wide.load1130 to <8 x i32>
  %i.arr = add nsw <8 x i32> %i.aro, %i.arq       ; 2 uses
  %i.ars = add nsw <8 x i32> %i.arr, splat (i32 8)
  %i.art = ashr <8 x i32> %i.ars, splat (i32 4)   ; 2 uses
  %i.aru = icmp ugt <8 x i32> %i.art, splat (i32 255)
  %i.arv = icmp sgt <8 x i32> %i.arr, splat (i32 -9)
  %i.arw = sext <8 x i1> %i.arv to <8 x i32>
  %i.arx = select <8 x i1> %i.aru, <8 x i32> %i.arw, <8 x i32> %i.art
  %i.ary = trunc <8 x i32> %i.arx to <8 x i8>
  %i.arz = getelementptr inbounds i8, ptr %i.afs, i64 %i.aqq
  store <8 x i8> %i.ary, ptr %i.arz, align 1, !tbaa !44, !alias.scope !190, !noalias !191
  %index.next1131 = add nuw i64 %index1121, 8     ; 2 uses
  %i.asa = icmp eq i64 %index.next1131, %n.vec1119
  br i1 %i.asa, label %middle.block1132, label %vector.body1120, !llvm.loop !87

middle.block1132:                                 ; preds = %vector.body1120
  br i1 %cmp.n1133, label %._crit_edge644, label %scalar.ph1116.preheader

scalar.ph1116.preheader:                          ; preds = %.lr.ph643, %middle.block1132
  %indvars.iv737.ph = phi i64 [ %n.vec1119, %middle.block1132 ], [ 0, %.lr.ph643 ]
  br label %scalar.ph1116

scalar.ph1116:                                    ; preds = %scalar.ph1116.preheader, %scalar.ph1116
  %indvars.iv737 = phi i64 [ %indvars.iv.next738, %scalar.ph1116 ], [ %indvars.iv737.ph, %scalar.ph1116.preheader ] ; 7 uses
  %i.asb = add nsw i64 %indvars.iv737, %i.aqo     ; 5 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %indvars.iv737
  %i.asd = load i8, ptr %i.asc, align 1, !tbaa !44
  %i.ase = zext i8 %i.asd to i32
  %i.asf = getelementptr inbounds i8, ptr %.sroa.17.0, i64 %i.asb
  %i.asg = load i8, ptr %i.asf, align 1, !tbaa !44
  %i.ash = zext i8 %i.asg to i32
  %i.asi = mul nuw nsw i32 %i.ash, %i.ase
  %i.asj = getelementptr inbounds nuw i8, ptr %i.aql, i64 %indvars.iv737
  %i.ask = load i8, ptr %i.asj, align 1, !tbaa !44
  %i.asl = zext i8 %i.ask to i32
  %i.asm = getelementptr inbounds i8, ptr %.sroa.12.0, i64 %i.asb
  %i.asn = load i8, ptr %i.asm, align 1, !tbaa !44
  %i.aso = zext i8 %i.asn to i32
  %i.asp = mul nuw nsw i32 %i.aso, %i.asl
  %i.asq = add nuw nsw i32 %i.asp, %i.asi
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aqm, i64 %indvars.iv737
  %i.ass = load i8, ptr %i.asr, align 1, !tbaa !44
  %i.ast = zext i8 %i.ass to i32
  %i.asu = getelementptr inbounds i8, ptr %.sroa.7.0, i64 %i.asb
  %i.asv = load i8, ptr %i.asu, align 1, !tbaa !44
  %i.asw = zext i8 %i.asv to i32
  %i.asx = mul nuw nsw i32 %i.asw, %i.ast
  %i.asy = add nuw nsw i32 %i.asq, %i.asx
  %i.asz = getelementptr inbounds nuw i8, ptr %i.aqn, i64 %indvars.iv737
  %i.ata = load i8, ptr %i.asz, align 1, !tbaa !44
  %i.atb = zext i8 %i.ata to i32
  %i.atc = getelementptr inbounds i8, ptr %i.aft, i64 %i.asb
  %i.atd = load i8, ptr %i.atc, align 1, !tbaa !44
  %i.ate = zext i8 %i.atd to i32
  %i.atf = mul nuw nsw i32 %i.ate, %i.atb
  %i.atg = add nuw nsw i32 %i.asy, %i.atf
  %i.ath = lshr i32 %i.atg, 2
  %gep978 = getelementptr [2 x i8], ptr %invariant.gep977, i64 %indvars.iv737
  %i.ati = load i16, ptr %gep978, align 2, !tbaa !55
  %i.atj = sext i16 %i.ati to i32
  %i.atk = add nsw i32 %i.ath, %i.atj             ; 2 uses
  %i.atl = add nsw i32 %i.atk, 8
  %i.atm = ashr i32 %i.atl, 4                     ; 2 uses
  %i.atn = icmp ugt i32 %i.atm, 255
  %isnotneg.i395 = icmp sgt i32 %i.atk, -9
  %i.ato = sext i1 %isnotneg.i395 to i32
  %.0.i396 = select i1 %i.atn, i32 %i.ato, i32 %i.atm
  %i.atp = trunc i32 %.0.i396 to i8
  %i.atq = getelementptr inbounds i8, ptr %i.afs, i64 %i.asb
  store i8 %i.atp, ptr %i.atq, align 1, !tbaa !44
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 2 uses
  %i.atr = icmp samesign ult i64 %indvars.iv.next738, %i.aqf
  br i1 %i.atr, label %scalar.ph1116, label %._crit_edge644, !llvm.loop !88

._crit_edge644:                                   ; preds = %scalar.ph1116, %middle.block1132
  %indvars.iv.next741 = add nuw nsw i64 %indvars.iv740, 1 ; 2 uses
  %i.ats = icmp slt i64 %indvars.iv.next741, %i.abb
  br i1 %i.ats, label %.lr.ph643, label %add_yblock.exit, !llvm.loop !89

add_yblock.exit:                                  ; preds = %._crit_edge644, %bb.dv
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond747.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count746
  br i1 %exitcond747.not, label %predict_slice.exit, label %bb.dr, !llvm.loop !90

predict_slice.exit:                               ; preds = %._crit_edge639, %add_yblock.exit, %bb.dq, %.preheader622, %bb.dp
  %i.att = add nuw i32 %.0.i652, 1
  %exitcond748.not = icmp eq i32 %.0.i652, %i.yp
  br i1 %exitcond748.not, label %predict_plane.exit.preheader, label %bb.dk, !llvm.loop !91

.preheader621:                                    ; preds = %predict_plane.exit.preheader, %._crit_edge658
  %.0323659 = phi i32 [ %i.auq, %._crit_edge658 ], [ 0, %predict_plane.exit.preheader ] ; 3 uses
  br label %bb.ef

bb.ef:                                            ; preds = %.preheader621, %bb.ef
  %.0324656 = phi i32 [ 0, %.preheader621 ], [ %i.aup, %bb.ef ] ; 3 uses
  %i.atu = load ptr, ptr %i.k, align 8, !tbaa !129 ; 2 uses
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %indvars.iv795
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !162
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atu, i64 64
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %i.atx, i64 %indvars.iv795
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !51
  %i.aua = mul nsw i32 %i.atz, %.0323659
  %i.aub = add nsw i32 %i.aua, %.0324656
  %i.auc = sext i32 %i.aub to i64
  %i.aud = getelementptr inbounds i8, ptr %i.atw, i64 %i.auc
  %i.aue = load i8, ptr %i.aud, align 1, !tbaa !44
  %i.auf = load ptr, ptr %i.xm, align 8, !tbaa !161 ; 2 uses
  %i.aug = getelementptr inbounds nuw [8 x i8], ptr %i.auf, i64 %indvars.iv795
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !162
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auf, i64 64
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.aui, i64 %indvars.iv795
  %i.auk = load i32, ptr %i.auj, align 4, !tbaa !51
  %i.aul = mul nsw i32 %i.auk, %.0323659
  %i.aum = add nsw i32 %i.aul, %.0324656
  %i.aun = sext i32 %i.aum to i64
  %i.auo = getelementptr inbounds i8, ptr %i.auh, i64 %i.aun
  store i8 %i.aue, ptr %i.auo, align 1, !tbaa !44
  %i.aup = add nuw nsw i32 %.0324656, 1           ; 2 uses
  %exitcond749.not = icmp eq i32 %i.aup, %i.ya
  br i1 %exitcond749.not, label %._crit_edge658, label %bb.ef, !llvm.loop !92

._crit_edge658:                                   ; preds = %bb.ef
  %i.auq = add nuw nsw i32 %.0323659, 1           ; 2 uses
  %exitcond750.not = icmp eq i32 %i.auq, %.fr
  br i1 %exitcond750.not, label %.loopexit624, label %.preheader621, !llvm.loop !93

.loopexit624:                                     ; preds = %._crit_edge658, %predict_plane.exit.preheader, %bb.di
  %i.aur = load i32, ptr %i.ry, align 8, !tbaa !143 ; 2 uses
  %i.aus = icmp sgt i32 %i.aur, 0
  br i1 %i.aus, label %.lr.ph663, label %._crit_edge664

.lr.ph663:                                        ; preds = %.loopexit624
  %i.aut = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph663, %bb.gl
  %indvars.iv755 = phi i64 [ 0, %.lr.ph663 ], [ %indvars.iv.next756, %bb.gl ] ; 3 uses
  %.not380 = icmp ne i64 %indvars.iv755, 0
  %i.auu = getelementptr inbounds nuw [4640 x i8], ptr %i.aut, i64 %indvars.iv755
  %i.auv = zext i1 %.not380 to i64
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %unpack_coeffs.exit
  %indvars.iv751 = phi i64 [ %i.auv, %bb.eg ], [ %indvars.iv.next752, %unpack_coeffs.exit ] ; 2 uses
  %i.auw = getelementptr inbounds nuw [1160 x i8], ptr %i.auu, i64 %indvars.iv751 ; 10 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 64
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !192 ; 3 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auw, i64 8
  %i.ava = load i32, ptr %i.auz, align 8, !tbaa !193 ; 5 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auw, i64 12
  %i.avc = load i32, ptr %i.avb, align 4, !tbaa !194 ; 3 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %i.auw, i64 56
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !195 ; 3 uses
  %.not.i514 = icmp eq ptr %i.auy, null
  br i1 %.not.i514, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.avf = getelementptr inbounds nuw i8, ptr %i.auy, i64 56
  %i.avg = load ptr, ptr %i.avf, align 8, !tbaa !195
  br label %bb.ej

end_hunk_0
begin_hunk_1_@get_symbol2:bb.a
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
  br i1 %exitcond.not, label %.lr.ph39, label %bb.b, !llvm.loop !233

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
  br i1 %i.dr, label %bb.k, label %._crit_edge, !llvm.loop !234
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
!64 = distinct !{!64, !50, !154}
!65 = distinct !{!65, !50}
!66 = distinct !{!66, !50}
!67 = distinct !{!67, !50}
!68 = distinct !{!68, !50}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, i1 false, !"LVerDomain"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !50, !178, !179}
!74 = distinct !{!74, !50, !178}
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
!87 = distinct !{!87, !50, !178, !179}
!88 = distinct !{!88, !50, !178}
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
!102 = distinct !{!102, !50, !205}
!103 = distinct !{!103, !50, !205}
!104 = distinct !{!104, !206}
!105 = distinct !{!105, !50}
!106 = distinct !{!106, !50}
!107 = distinct !{!107, !50}
!108 = distinct !{!108, !50}
!109 = distinct !{!109, !50}
!110 = distinct !{!110, !50}
!111 = distinct !{!111, !50, !178, !179}
!112 = distinct !{!112, !50, !178, !179}
!113 = distinct !{!113, !50, !179, !178}
!114 = distinct !{!114, !50}
!115 = distinct !{!115, i1 false, !"LVerDomain"}
!116 = distinct !{!116, !115}
!117 = distinct !{!117, !115}
!118 = distinct !{!118, !50, !178, !179}
!119 = distinct !{!119, !50, !178}
!120 = distinct !{!120, !50}
!121 = distinct !{null}
!122 = distinct !{!122, !50}
!123 = distinct !{!123, !50}
!124 = distinct !{!124, !50}
!125 = distinct !{!125, !50}
!126 = !{!"AVPacket", !10, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !13, i64 48, !6, i64 56, !11, i64 64, !11, i64 72, !9, i64 80, !10, i64 88, !14, i64 96}
!127 = !{!126, !12, i64 24}
!128 = !{!126, !6, i64 32}
!129 = !{!39, !34, i64 1776}
!130 = !{!"p2 omnipotent char", !25, i64 0}
!131 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!132 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!133 = !{!"AVFrame", !5, i64 0, !5, i64 64, !130, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !14, i64 124, !11, i64 136, !11, i64 144, !14, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !131, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !11, i64 304, !132, i64 312, !6, i64 320, !10, i64 328, !10, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !9, i64 376, !20, i64 384, !11, i64 408, !6, i64 416}
!134 = !{!133, !6, i64 120}
!135 = !{!39, !6, i64 6116}
!136 = !{!39, !6, i64 6352}
!137 = !{!39, !6, i64 6360}
!138 = !{!39, !6, i64 6344}
!139 = !{!39, !6, i64 6124}
!140 = !{!39, !6, i64 6120}
!141 = !{!39, !6, i64 6132}
!142 = !{!39, !6, i64 6144}
!143 = !{!39, !6, i64 6136}
!144 = !{!39, !6, i64 6328}
!145 = !{!39, !6, i64 6332}
!146 = !{!39, !6, i64 6336}
!147 = !{!27, !6, i64 136}
!148 = !{!39, !6, i64 6340}
!149 = !{!39, !6, i64 6148}
!150 = !{!"p1 _ZTS11x_and_coeff", !9, i64 0}
!151 = !{!"p1 _ZTS7SubBand", !9, i64 0}
!152 = !{!"SubBand", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !24, i64 24, !19, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !150, i64 56, !151, i64 64, !5, i64 72}
!153 = !{!152, !6, i64 16}
!154 = !{!"llvm.loop.unswitch.partial.disable"}
!155 = !{!"Plane", !6, i64 0, !6, i64 4, !5, i64 8, !6, i64 37128, !5, i64 37132, !6, i64 37136, !6, i64 37140, !6, i64 37144, !5, i64 37148, !6, i64 37152}
!156 = !{!155, !6, i64 37136}
!157 = !{!155, !6, i64 37128}
!158 = !{!27, !6, i64 112}
!159 = !{!27, !6, i64 116}
!160 = !{!27, !6, i64 524}
!161 = !{!39, !34, i64 1848}
!162 = !{!12, !12, i64 0}
!163 = !{!133, !6, i64 116}
!164 = !{!155, !6, i64 4}
!165 = !{!155, !6, i64 0}
!166 = !{!39, !19, i64 6304}
!167 = !{!155, !6, i64 37140}
!168 = !{!27, !6, i64 788}
!169 = !{!39, !6, i64 6372}
!170 = !{!11, !11, i64 0}
!171 = !{!39, !38, i64 155088}
!172 = !{!39, !6, i64 155100}
!173 = !{!39, !12, i64 552}
!174 = !{!39, !12, i64 560}
!175 = !{!39, !24, i64 6288}
!176 = !{!71}
!177 = !{!72}
!178 = !{!"llvm.loop.isvectorized", i32 1}
!179 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
