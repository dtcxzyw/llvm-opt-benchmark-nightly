Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/encode?download=true
inline.NumInlined: 81
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@EncoderSession_init_encoder:bb.a
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.ej
  %.1398 = phi ptr [ %i.oz, %bb.ej ], [ %i.vk, %bb.fp ] ; 2 uses
  %.1396 = phi i32 [ %i.pb, %bb.ej ], [ %i.vl, %bb.fp ] ; 3 uses
  %.not47.i587 = icmp eq i32 %.1396, 0            ; 2 uses
  br i1 %.not47.i587, label %verify_metadata.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.fq
  %wide.trip.count.i = zext i32 %.1396 to i64
  br label %.lr.ph.i588

.lr.ph.i588:                                      ; preds = %bb.gd, %.lr.ph.preheader.i
  %indvars.iv.i589 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i592, %bb.gd ] ; 2 uses
  %.02545.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.4.i, %bb.gd ] ; 6 uses
  %.02744.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.431.i, %bb.gd ] ; 6 uses
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %.1398, i64 %indvars.iv.i589
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !61 ; 5 uses
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !52
  switch i32 %i.vo, label %bb.gd [
    i32 3, label %bb.fr
    i32 5, label %bb.ft
    i32 6, label %bb.fv
  ]

bb.fr:                                            ; preds = %.lr.ph.i588
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.vq = call i32 @FLAC__format_seektable_is_legal(ptr noundef nonnull %i.vp) #18
  %.not42.i593 = icmp eq i32 %i.vq, 0
  br i1 %.not42.i593, label %bb.fs, label %bb.gd

bb.fs:                                            ; preds = %bb.fr
  %i.vr = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.vs = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.vr, i32 noundef 1, ptr noundef nonnull @.str.148, ptr noundef %i.vs) #18
  br label %bb.ge

bb.ft:                                            ; preds = %.lr.ph.i588
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vn, i64 160
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !29
  %i.vw = call i32 @FLAC__format_cuesheet_is_legal(ptr noundef nonnull %i.vt, i32 noundef %i.vv, ptr noundef null) #18
  %.not41.i = icmp eq i32 %i.vw, 0
  br i1 %.not41.i, label %bb.fu, label %bb.gd

bb.fu:                                            ; preds = %bb.ft
  %i.vx = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.vy = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.vx, i32 noundef 1, ptr noundef nonnull @.str.149, ptr noundef %i.vy) #18
  br label %bb.ge

bb.fv:                                            ; preds = %.lr.ph.i588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vn, i64 16 ; 2 uses
  %i.wa = call i32 @FLAC__format_picture_is_legal(ptr noundef nonnull %i.vz, ptr noundef nonnull %i.a) #18
  %.not.i590 = icmp eq i32 %i.wa, 0
  br i1 %.not.i590, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.wb = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.wc = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.wd = load ptr, ptr %i.a, align 8, !tbaa !38
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.wb, i32 noundef 1, ptr noundef nonnull @.str.150, ptr noundef %i.wc, ptr noundef %i.wd) #18
  br label %.critedge.critedge.i

bb.fx:                                            ; preds = %bb.fv
  %i.we = load i32, ptr %i.vz, align 8, !tbaa !29
  switch i32 %i.we, label %bb.gc [
    i32 1, label %bb.fy
    i32 2, label %bb.ga
  ]

bb.fy:                                            ; preds = %bb.fx
  %.not40.i = icmp eq i32 %.02744.i, 0
  br i1 %.not40.i, label %bb.gc, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.wf = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.wg = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.wf, i32 noundef 1, ptr noundef nonnull @.str.151, ptr noundef %i.wg) #18
  br label %.critedge.critedge.i

bb.ga:                                            ; preds = %bb.fx
  %.not39.i = icmp eq i32 %.02545.i, 0
  br i1 %.not39.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.wh = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.wi = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.wh, i32 noundef 1, ptr noundef nonnull @.str.152, ptr noundef %i.wi) #18
  br label %.critedge.critedge.i

bb.gc:                                            ; preds = %bb.ga, %bb.fy, %bb.fx
  %.229.i = phi i32 [ %.02744.i, %bb.fx ], [ 1, %bb.fy ], [ %.02744.i, %bb.ga ]
  %.2.i = phi i32 [ %.02545.i, %bb.fx ], [ %.02545.i, %bb.fy ], [ 1, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.ft, %bb.fr, %.lr.ph.i588
  %.431.i = phi i32 [ %.02744.i, %bb.ft ], [ %.02744.i, %.lr.ph.i588 ], [ %.229.i, %bb.gc ], [ %.02744.i, %bb.fr ]
  %.4.i = phi i32 [ %.02545.i, %bb.ft ], [ %.02545.i, %.lr.ph.i588 ], [ %.2.i, %bb.gc ], [ %.02545.i, %bb.fr ]
  %indvars.iv.next.i592 = add nuw nsw i64 %indvars.iv.i589, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i592, %wide.trip.count.i
  br i1 %exitcond.not.i, label %verify_metadata.exit, label %.lr.ph.i588, !llvm.loop !105

.critedge.critedge.i:                             ; preds = %bb.gb, %bb.fz, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ge

bb.ge:                                            ; preds = %.critedge.critedge.i, %bb.fu, %bb.fs
  %i.wj = load i32, ptr %3, align 8, !tbaa !59    ; 2 uses
  %.not20.i594 = icmp eq i32 %i.wj, 0
  br i1 %.not20.i594, label %._crit_edge.i600, label %.lr.ph.i595

.lr.ph.i595:                                      ; preds = %bb.ge
  %i.wk = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gh, %.lr.ph.i595
  %i.wl = phi i32 [ %i.wj, %.lr.ph.i595 ], [ %i.ws, %bb.gh ]
  %indvars.iv.i596 = phi i64 [ 0, %.lr.ph.i595 ], [ %indvars.iv.next.i599, %bb.gh ] ; 3 uses
  %i.wm = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv.i596
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !14
  %.not18.i597 = icmp eq i32 %i.wo, 0
  br i1 %.not18.i597, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.wp = load ptr, ptr %i.wk, align 8, !tbaa !63
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv.i596
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !61
  call void @FLAC__metadata_object_delete(ptr noundef %i.wr) #18
  %.pre.i598 = load i32, ptr %3, align 8, !tbaa !59
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.ws = phi i32 [ %i.wl, %bb.gf ], [ %.pre.i598, %bb.gg ] ; 2 uses
  %indvars.iv.next.i599 = add nuw nsw i64 %indvars.iv.i596, 1 ; 2 uses
  %i.wt = zext i32 %i.ws to i64
  %i.wu = icmp samesign ult i64 %indvars.iv.next.i599, %i.wt
  br i1 %i.wu, label %bb.gf, label %._crit_edge.i600, !llvm.loop !1

._crit_edge.i600:                                 ; preds = %bb.gh, %bb.ge
  %i.wv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !63 ; 2 uses
  %.not.i601 = icmp eq ptr %i.ww, null
  br i1 %.not.i601, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %._crit_edge.i600
  call void @free(ptr noundef nonnull %i.ww) #18
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %._crit_edge.i600
  %i.wx = load ptr, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %.not16.i602 = icmp eq ptr %i.wx, null
  br i1 %.not16.i602, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @free(ptr noundef nonnull %i.wx) #18
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.wy = load ptr, ptr %i.ao, align 8, !tbaa !64 ; 2 uses
  %.not17.i603 = icmp eq ptr %i.wy, null
  br i1 %.not17.i603, label %.critedge503, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @FLAC__metadata_object_delete(ptr noundef nonnull %i.wy) #18
  br label %.critedge503

verify_metadata.exit:                             ; preds = %bb.gd, %bb.fq
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 8408 ; 29 uses
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !134
  %i.xd = call i32 @FLAC__stream_encoder_set_verify(ptr noundef %i.xa, i32 noundef %i.xc) #18 ; 0 uses
  %i.xe = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !135
  %.not485 = icmp eq i32 %i.xg, 0
  %i.xh = zext i1 %.not485 to i32
  %i.xi = call i32 @FLAC__stream_encoder_set_streamable_subset(ptr noundef %i.xe, i32 noundef %i.xh) #18 ; 0 uses
  %i.xj = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.xk = call i32 @FLAC__stream_encoder_set_channels(ptr noundef %i.xj, i32 noundef %i.h) #18 ; 0 uses
  %i.xl = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.xm = call i32 @FLAC__stream_encoder_set_bits_per_sample(ptr noundef %i.xl, i32 noundef %i.m) #18 ; 0 uses
  %i.xn = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.xo = call i32 @FLAC__stream_encoder_set_sample_rate(ptr noundef %i.xn, i32 noundef %i.n) #18 ; 0 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !136 ; 2 uses
  %.not714 = icmp eq i64 %i.xq, 0
  br i1 %.not714, label %._crit_edge707, label %.lr.ph706

.lr.ph706:                                        ; preds = %verify_metadata.exit
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.e, i64 1999 ; 2 uses
  br label %bb.gn

bb.gn:                                            ; preds = %.lr.ph706, %bb.hd
  %i.xt = phi i64 [ 0, %.lr.ph706 ], [ %5, %bb.hd ]
  %.0394705 = phi i32 [ 0, %.lr.ph706 ], [ %4, %bb.hd ]
  %i.xu = getelementptr inbounds nuw [16 x i8], ptr %i.xr, i64 %i.xt ; 14 uses
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !138
  switch i32 %i.xv, label %bb.hd [
    i32 0, label %bb.go
    i32 1, label %bb.gp
    i32 2, label %bb.gq
    i32 3, label %bb.gr
    i32 4, label %bb.gs
    i32 5, label %bb.gv
    i32 6, label %bb.gw
    i32 7, label %bb.gx
    i32 8, label %bb.gy
    i32 9, label %bb.gz
    i32 10, label %bb.ha
    i32 11, label %bb.hb
    i32 12, label %bb.hc
  ]

bb.go:                                            ; preds = %bb.gn
  %i.xw = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !29
  %i.xz = call i32 @FLAC__stream_encoder_set_blocksize(ptr noundef %i.xw, i32 noundef %i.xy) #18 ; 0 uses
  br label %bb.hd

bb.gp:                                            ; preds = %bb.gn
  %i.ya = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !29
  %i.yd = call i32 @FLAC__stream_encoder_set_compression_level(ptr noundef %i.ya, i32 noundef %i.yc) #18 ; 0 uses
  store i8 0, ptr %i.e, align 16, !tbaa !29
  br label %bb.hd

bb.gq:                                            ; preds = %bb.gn
  %i.ye = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !29
  %i.yh = call i32 @FLAC__stream_encoder_set_do_mid_side_stereo(ptr noundef %i.ye, i32 noundef %i.yg) #18 ; 0 uses
  br label %bb.hd

bb.gr:                                            ; preds = %bb.gn
  %i.yi = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !29
  %i.yl = call i32 @FLAC__stream_encoder_set_loose_mid_side_stereo(ptr noundef %i.yi, i32 noundef %i.yk) #18 ; 0 uses
  br label %bb.hd

bb.gs:                                            ; preds = %bb.gn
  %i.ym = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #21 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !29 ; 2 uses
  %i.yp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.yo) #21
  %i.yq = add i64 %i.ym, -1998
  %i.yr = add i64 %i.yq, %i.yp
  %i.ys = icmp ult i64 %i.yr, -2000
  br i1 %i.ys, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.yt = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.yu = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.yt, i32 noundef 1, ptr noundef nonnull @.str.133, ptr noundef %i.yu) #18
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.gu:                                            ; preds = %bb.gs
  %i.yv = sub i64 2000, %i.ym
  %i.yw = call ptr @__strncat_chk(ptr noundef nonnull %i.e, ptr noundef nonnull %i.yo, i64 noundef %i.yv, i64 noundef 2000) #18 ; 0 uses
  store i8 0, ptr %i.xs, align 1, !tbaa !29
  %i.yx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #21
  %i.yy = sub i64 2000, %i.yx
  %i.yz = call ptr @__strncat_chk(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.134, i64 noundef %i.yy, i64 noundef 2000) #18 ; 0 uses
  store i8 0, ptr %i.xs, align 1, !tbaa !29
  br label %bb.hd

bb.gv:                                            ; preds = %bb.gn
  %i.za = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.zc = load i32, ptr %i.zb, align 8, !tbaa !29
  %i.zd = call i32 @FLAC__stream_encoder_set_max_lpc_order(ptr noundef %i.za, i32 noundef %i.zc) #18 ; 0 uses
  br label %bb.hd

bb.gw:                                            ; preds = %bb.gn
  %i.ze = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.zg = load i32, ptr %i.zf, align 8, !tbaa !29
  %i.zh = call i32 @FLAC__stream_encoder_set_qlp_coeff_precision(ptr noundef %i.ze, i32 noundef %i.zg) #18 ; 0 uses
  br label %bb.hd

bb.gx:                                            ; preds = %bb.gn
  %i.zi = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.zj = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.zk = load i32, ptr %i.zj, align 8, !tbaa !29
  %i.zl = call i32 @FLAC__stream_encoder_set_do_qlp_coeff_prec_search(ptr noundef %i.zi, i32 noundef %i.zk) #18 ; 0 uses
  br label %bb.hd

bb.gy:                                            ; preds = %bb.gn
  %i.zm = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.zn = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.zo = load i32, ptr %i.zn, align 8, !tbaa !29
  %i.zp = call i32 @FLAC__stream_encoder_set_do_escape_coding(ptr noundef %i.zm, i32 noundef %i.zo) #18 ; 0 uses
  br label %bb.hd

bb.gz:                                            ; preds = %bb.gn
  %i.zq = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.zr = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !29
  %i.zt = call i32 @FLAC__stream_encoder_set_do_exhaustive_model_search(ptr noundef %i.zq, i32 noundef %i.zs) #18 ; 0 uses
  br label %bb.hd

bb.ha:                                            ; preds = %bb.gn
  %i.zu = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.zv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.zw = load i32, ptr %i.zv, align 8, !tbaa !29
  %i.zx = call i32 @FLAC__stream_encoder_set_min_residual_partition_order(ptr noundef %i.zu, i32 noundef %i.zw) #18 ; 0 uses
  br label %bb.hd

bb.hb:                                            ; preds = %bb.gn
  %i.zy = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.zz = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.aaa = load i32, ptr %i.zz, align 8, !tbaa !29
  %i.aab = call i32 @FLAC__stream_encoder_set_max_residual_partition_order(ptr noundef %i.zy, i32 noundef %i.aaa) #18 ; 0 uses
  br label %bb.hd

bb.hc:                                            ; preds = %bb.gn
  %i.aac = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.aad = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !29
  %i.aaf = call i32 @FLAC__stream_encoder_set_rice_parameter_search_dist(ptr noundef %i.aac, i32 noundef %i.aae) #18 ; 0 uses
  br label %bb.hd

bb.hd:                                            ; preds = %bb.gn, %bb.go, %bb.gp, %bb.gq, %bb.gr, %bb.gu, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc
  %4 = add i32 %.0394705, 1                       ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.aag = icmp ugt i64 %i.xq, %5
  br i1 %i.aag, label %bb.gn, label %._crit_edge707, !llvm.loop !106

._crit_edge707:                                   ; preds = %bb.hd, %verify_metadata.exit
  %i.aah = load i8, ptr %i.e, align 16, !tbaa !29
  %.not486 = icmp eq i8 %i.aah, 0
  br i1 %.not486, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %._crit_edge707
  %i.aai = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.aaj = call i32 @FLAC__stream_encoder_set_apodization(ptr noundef %i.aai, ptr noundef nonnull %i.e) #18 ; 0 uses
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %._crit_edge707
  %i.aak = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.aal = load i64, ptr %i.at, align 8, !tbaa !40
  %i.aam = call i32 @FLAC__stream_encoder_set_total_samples_estimate(ptr noundef %i.aak, i64 noundef %i.aal) #18 ; 0 uses
  %i.aan = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.aao = select i1 %.not47.i587, ptr null, ptr %.1398
  %i.aap = call i32 @FLAC__stream_encoder_set_metadata(ptr noundef %i.aan, ptr noundef %i.aao, i32 noundef %.1396) #18 ; 0 uses
  %i.aaq = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.aar = getelementptr inbounds nuw i8, ptr %1, i64 1156
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !139
  %i.aat = call i32 @FLAC__stream_encoder_set_limit_min_bitrate(ptr noundef %i.aaq, i32 noundef %i.aas) #18 ; 0 uses
  %i.aau = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !140
  %i.aax = call i32 @FLAC__stream_encoder_disable_constant_subframes(ptr noundef %i.aau, i32 noundef %i.aaw) #18 ; 0 uses
  %i.aay = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 1732
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !141
  %i.abb = call i32 @FLAC__stream_encoder_disable_fixed_subframes(ptr noundef %i.aay, i32 noundef %i.aba) #18 ; 0 uses
  %i.abc = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 1736
  %i.abe = load i32, ptr %i.abd, align 8, !tbaa !142
  %i.abf = call i32 @FLAC__stream_encoder_disable_verbatim_subframes(ptr noundef %i.abc, i32 noundef %i.abe) #18 ; 0 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 1740
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !143
  %.not488 = icmp eq i32 %i.abh, 0
  br i1 %.not488, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  %i.abi = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.abj = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.abi, i32 noundef 1, ptr noundef nonnull @.str.135, ptr noundef %i.abj) #18
  %i.abk = load i32, ptr %i.av, align 8, !tbaa !39
  %.not489 = icmp eq i32 %i.abk, 0
  br i1 %.not489, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.hi:                                            ; preds = %bb.hg
  %i.abl = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.abm = call i32 @FLAC__stream_encoder_set_do_md5(ptr noundef %i.abl, i32 noundef 0) #18 ; 0 uses
  br label %bb.hm

bb.hj:                                            ; preds = %bb.hf
  %i.abn = load i32, ptr %i.cg, align 8, !tbaa !22
  %.not490 = icmp eq i32 %i.abn, 0
  br i1 %.not490, label %bb.hm, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.abo = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.abp = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.abo, i32 noundef 1, ptr noundef nonnull @.str.136, ptr noundef %i.abp) #18
  %i.abq = load i32, ptr %i.av, align 8, !tbaa !39
  %.not491 = icmp eq i32 %i.abq, 0
  br i1 %.not491, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.hm:                                            ; preds = %bb.hj, %bb.hk, %bb.hi
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.abs = load i32, ptr %i.abr, align 8, !tbaa !144 ; 2 uses
  %.not492 = icmp eq i32 %i.abs, 1
  br i1 %.not492, label %bb.hs, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.abt = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.abu = call i32 @FLAC__stream_encoder_set_num_threads(ptr noundef %i.abt, i32 noundef %i.abs) #18
  switch i32 %i.abu, label %bb.hs [
    i32 1, label %bb.ho
    i32 3, label %bb.hq
  ]

bb.ho:                                            ; preds = %bb.hn
  %i.abv = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.abw = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.abv, i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef %i.abw) #18
  %i.abx = load i32, ptr %i.av, align 8, !tbaa !39
  %.not493 = icmp eq i32 %i.abx, 0
  br i1 %.not493, label %bb.hs, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.hq:                                            ; preds = %bb.hn
  %i.aby = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.abz = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.aby, i32 noundef 1, ptr noundef nonnull @.str.138, ptr noundef %i.abz) #18
  %i.aca = load i32, ptr %i.av, align 8, !tbaa !39
  %.not494 = icmp eq i32 %i.aca, 0
  br i1 %.not494, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.hs:                                            ; preds = %bb.ho, %bb.hn, %bb.hq, %bb.hm
  %i.acb = load i32, ptr %0, align 8, !tbaa !113
  %.not495 = icmp eq i32 %i.acb, 0
  %i.acc = load ptr, ptr %i.wz, align 8, !tbaa !33 ; 2 uses
  br i1 %.not495, label %bb.hw, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !145
  %i.acf = call i32 @FLAC__stream_encoder_set_ogg_serial_number(ptr noundef %i.acc, i64 noundef %i.ace) #18 ; 0 uses
  %i.acg = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.ach = load i32, ptr %i.cg, align 8, !tbaa !22
  %.not497 = icmp eq i32 %i.ach, 0
  br i1 %.not497, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !26
  br label %bb.hv

bb.hv:                                            ; preds = %bb.ht, %bb.hu
  %i.ack = phi ptr [ %i.acj, %bb.hu ], [ null, %bb.ht ]
  %i.acl = call i32 @FLAC__stream_encoder_init_ogg_file(ptr noundef %i.acg, ptr noundef %i.ack, ptr noundef nonnull @encoder_progress_callback, ptr noundef nonnull %0) #18
  br label %bb.hz

bb.hw:                                            ; preds = %bb.hs
  %i.acm = load i32, ptr %i.cg, align 8, !tbaa !22
  %.not496 = icmp eq i32 %i.acm, 0
  br i1 %.not496, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !26
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hw, %bb.hx
  %i.acp = phi ptr [ %i.aco, %bb.hx ], [ null, %bb.hw ]
  %i.acq = call i32 @FLAC__stream_encoder_init_file(ptr noundef %i.acc, ptr noundef %i.acp, ptr noundef nonnull @encoder_progress_callback, ptr noundef nonnull %0) #18
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hv
  %.0393 = phi i32 [ %i.acl, %bb.hv ], [ %i.acq, %bb.hy ] ; 2 uses
  %.not498 = icmp eq i32 %.0393, 0
  br i1 %.not498, label %bb.id, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call fastcc void @print_error_with_init_status(ptr noundef %0, i32 noundef %.0393)
  %i.acr = load ptr, ptr %i.wz, align 8, !tbaa !33
  %i.acs = call i32 @FLAC__stream_encoder_get_state(ptr noundef %i.acr) #18
  %.not499 = icmp eq i32 %i.acs, 6
  br i1 %.not499, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.act, align 4, !tbaa !23
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.id:                                            ; preds = %bb.hz
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.acu, align 4, !tbaa !23
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

.critedge503:                                     ; preds = %bb.gm, %bb.gl, %bb.de, %bb.dd, %bb.cs, %bb.cr, %bb.cg, %bb.cf, %bb.bl, %bb.bk, %bb.ay, %bb.az, %bb.ap, %bb.ao, %bb.ff, %bb.fi, %bb.er, %bb.ey, %bb.eu, %bb.ew, %bb.fo, %bb.en, %bb.fc, %.thread617, %.thread616, %parse_cuesheet.exit.thread, %bb.hp, %bb.hr, %bb.dp, %bb.ds, %.critedge501, %.critedge512, %bb.id, %bb.ic, %bb.hl, %bb.hh, %bb.gt, %bb.h, %bb.e, %bb.c
  %.23 = phi i32 [ 0, %bb.c ], [ 0, %bb.gt ], [ 0, %bb.hl ], [ 0, %bb.ic ], [ 1, %bb.id ], [ 0, %bb.dp ], [ 0, %bb.hh ], [ 0, %bb.de ], [ 0, %.critedge512 ], [ 0, %.thread617 ], [ 0, %bb.ay ], [ 0, %parse_cuesheet.exit.thread ], [ 0, %bb.hp ], [ 0, %bb.bl ], [ 0, %bb.er ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %.critedge501 ], [ 0, %bb.fi ], [ 0, %bb.ff ], [ 0, %bb.ds ], [ 0, %bb.hr ], [ 0, %bb.ap ], [ 0, %.thread616 ], [ 0, %bb.cs ], [ 0, %bb.cg ], [ 0, %bb.fc ], [ 0, %bb.en ], [ 0, %bb.fo ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.ey ], [ 0, %bb.ao ], [ 0, %bb.az ], [ 0, %bb.bk ], [ 0, %bb.cf ], [ 0, %bb.cr ], [ 0, %bb.dd ], [ 0, %bb.gl ], [ 0, %bb.gm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.23
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @fskip_ahead(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fileno(ptr noundef %0) #18
  %i.c = call i32 @fstat64(i32 noundef %i.b, ptr noundef nonnull %2) #18
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.preheader
end_hunk_0
begin_hunk_1_@format_input:bb.a

scalar.ph458:                                     ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.1, %scalar.ph458 ], [ %indvars.iv260.unr, %scalar.ph458.prol.loopexit ] ; 3 uses
  %.424999 = phi i32 [ %i.lq, %scalar.ph458 ], [ %.424999.unr, %scalar.ph458.prol.loopexit ] ; 2 uses
  %i.lc = zext i32 %.424999 to i64
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !29
  %i.lf = tail call i16 @llvm.bswap.i16(i16 %i.le)
  %i.lg = sext i16 %i.lf to i32
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv260
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !14
  %i.li = add i32 %.424999, %3                    ; 2 uses
  %i.lj = zext i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.lj
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !29
  %i.lm = tail call i16 @llvm.bswap.i16(i16 %i.ll)
  %i.ln = sext i16 %i.lm to i32
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv260
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  store i32 %i.ln, ptr %i.lp, align 4, !tbaa !14
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %i.lq = add i32 %i.li, %3
  %exitcond264.not.1 = icmp eq i64 %indvars.iv.next261.1, %wide.trip.count263
  br i1 %exitcond264.not.1, label %._crit_edge102, label %scalar.ph458, !llvm.loop !179

._crit_edge102:                                   ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458, %middle.block467
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %wide.trip.count268
  br i1 %exitcond269.not, label %.loopexit, label %.preheader9, !llvm.loop !180

.preheader6:                                      ; preds = %.preheader6.preheader, %._crit_edge107
  %indvars.iv275 = phi i64 [ 0, %.preheader6.preheader ], [ %indvars.iv.next276, %._crit_edge107 ] ; 4 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv275
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !13 ; 8 uses
  %i.lt = trunc i64 %indvars.iv275 to i32         ; 5 uses
  br i1 %min.iters.check480, label %scalar.ph479.preheader, label %vector.scevcheck471

vector.scevcheck471:                              ; preds = %.preheader6
  %i.lu = xor i32 %i.lt, -1
  %i.lv = icmp ult i32 %i.lu, %i.ka
  %.reass617 = or i1 %i.lv, %invariant.op616
  br i1 %.reass617, label %scalar.ph479.preheader, label %vector.memcheck473

vector.memcheck473:                               ; preds = %vector.scevcheck471
  %scevgep474 = getelementptr i8, ptr %i.ls, i64 %i.jw
  %bound0476 = icmp ult ptr %i.ls, %scevgep475
  %bound1477 = icmp ugt ptr %scevgep474, @ubuffer
  %found.conflict478 = and i1 %bound0476, %bound1477
  br i1 %found.conflict478, label %scalar.ph479.preheader, label %vector.ph481

vector.ph481:                                     ; preds = %vector.memcheck473
  %i.lw = add i32 %i.lt, %i.kc
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next487, %vector.body483 ] ; 3 uses
  %i.lx = add i64 %indvars.iv275, %index484
  %i.ly = and i64 %i.lx, 4294967295
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.ly ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %wide.load485 = load <4 x i16>, ptr %i.lz, align 2, !tbaa !29, !alias.scope !226
  %wide.load486 = load <4 x i16>, ptr %i.ma, align 2, !tbaa !29, !alias.scope !226
  %i.mb = sext <4 x i16> %wide.load485 to <4 x i32>
  %i.mc = sext <4 x i16> %wide.load486 to <4 x i32>
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %index484 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store <4 x i32> %i.mb, ptr %i.md, align 4, !tbaa !14, !alias.scope !227, !noalias !226
  store <4 x i32> %i.mc, ptr %i.me, align 4, !tbaa !14, !alias.scope !227, !noalias !226
  %index.next487 = add nuw i64 %index484, 8       ; 2 uses
  %i.mf = icmp eq i64 %index.next487, %n.vec482
  br i1 %i.mf, label %middle.block488, label %vector.body483, !llvm.loop !184

middle.block488:                                  ; preds = %vector.body483
  br i1 %cmp.n489, label %._crit_edge107, label %scalar.ph479.preheader

scalar.ph479.preheader:                           ; preds = %vector.memcheck473, %vector.scevcheck471, %.preheader6, %middle.block488
  %indvars.iv270.ph = phi i64 [ 0, %vector.memcheck473 ], [ 0, %vector.scevcheck471 ], [ 0, %.preheader6 ], [ %n.vec482, %middle.block488 ] ; 3 uses
  %.5250104.ph = phi i32 [ %i.lt, %vector.memcheck473 ], [ %i.lt, %vector.scevcheck471 ], [ %i.lt, %.preheader6 ], [ %i.lw, %middle.block488 ] ; 2 uses
  br i1 %lcmp.mod584.not, label %scalar.ph479.prol.loopexit, label %scalar.ph479.prol

scalar.ph479.prol:                                ; preds = %scalar.ph479.preheader, %scalar.ph479.prol
  %indvars.iv270.prol = phi i64 [ %indvars.iv.next271.prol, %scalar.ph479.prol ], [ %indvars.iv270.ph, %scalar.ph479.preheader ] ; 2 uses
  %.5250104.prol = phi i32 [ %i.ml, %scalar.ph479.prol ], [ %.5250104.ph, %scalar.ph479.preheader ] ; 2 uses
  %prol.iter585 = phi i64 [ %prol.iter585.next, %scalar.ph479.prol ], [ 0, %scalar.ph479.preheader ]
  %i.mg = zext i32 %.5250104.prol to i64
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.mg
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !29
  %i.mj = sext i16 %i.mi to i32
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv270.prol
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !14
  %indvars.iv.next271.prol = add nuw nsw i64 %indvars.iv270.prol, 1 ; 2 uses
  %i.ml = add i32 %.5250104.prol, %3              ; 2 uses
  %prol.iter585.next = add i64 %prol.iter585, 1   ; 2 uses
  %prol.iter585.cmp.not = icmp eq i64 %prol.iter585.next, %xtraiter583
  br i1 %prol.iter585.cmp.not, label %scalar.ph479.prol.loopexit, label %scalar.ph479.prol, !llvm.loop !185

scalar.ph479.prol.loopexit:                       ; preds = %scalar.ph479.prol, %scalar.ph479.preheader
  %indvars.iv270.unr = phi i64 [ %indvars.iv270.ph, %scalar.ph479.preheader ], [ %indvars.iv.next271.prol, %scalar.ph479.prol ]
  %.5250104.unr = phi i32 [ %.5250104.ph, %scalar.ph479.preheader ], [ %i.ml, %scalar.ph479.prol ]
  %i.mm = sub nsw i64 %indvars.iv270.ph, %wide.trip.count273
  %i.mn = icmp ugt i64 %i.mm, -4
  br i1 %i.mn, label %._crit_edge107, label %scalar.ph479

scalar.ph479:                                     ; preds = %scalar.ph479.prol.loopexit, %scalar.ph479
  %indvars.iv270 = phi i64 [ %indvars.iv.next271.3, %scalar.ph479 ], [ %indvars.iv270.unr, %scalar.ph479.prol.loopexit ] ; 5 uses
  %.5250104 = phi i32 [ %i.no, %scalar.ph479 ], [ %.5250104.unr, %scalar.ph479.prol.loopexit ] ; 2 uses
  %i.mo = zext i32 %.5250104 to i64
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.mo
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !29
  %i.mr = sext i16 %i.mq to i32
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv270
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !14
  %i.mt = add i32 %.5250104, %3                   ; 2 uses
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.mu
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !29
  %i.mx = sext i16 %i.mw to i32
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv270
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  store i32 %i.mx, ptr %i.mz, align 4, !tbaa !14
  %i.na = add i32 %i.mt, %3                       ; 2 uses
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.nb
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !29
  %i.ne = sext i16 %i.nd to i32
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv270
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i32 %i.ne, ptr %i.ng, align 4, !tbaa !14
  %i.nh = add i32 %i.na, %3                       ; 2 uses
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr @ubuffer, i64 %i.ni
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !29
  %i.nl = sext i16 %i.nk to i32
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv270
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  store i32 %i.nl, ptr %i.nn, align 4, !tbaa !14
  %indvars.iv.next271.3 = add nuw nsw i64 %indvars.iv270, 4 ; 2 uses
  %i.no = add i32 %i.nh, %3
  %exitcond274.not.3 = icmp eq i64 %indvars.iv.next271.3, %wide.trip.count273
  br i1 %exitcond274.not.3, label %._crit_edge107, label %scalar.ph479, !llvm.loop !186

._crit_edge107:                                   ; preds = %scalar.ph479.prol.loopexit, %scalar.ph479, %middle.block488
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %.loopexit, label %.preheader6, !llvm.loop !187

bb.f:                                             ; preds = %._crit_edge
  %.not291 = icmp eq i32 %1, 0
  %.not292 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not291, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not292, label %.preheader18, label %.preheader20

.preheader20:                                     ; preds = %bb.g
  br i1 %.not134, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader20
  %.not140 = icmp eq i32 %0, 0
  %i.np = mul i32 %3, 3
  br i1 %.not140, label %.loopexit, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.lr.ph81
  %wide.trip.count228 = zext i32 %3 to i64
  %wide.trip.count223 = zext i32 %0 to i64
  br label %.lr.ph78

.preheader18:                                     ; preds = %bb.g
  br i1 %.not134, label %.loopexit, label %.lr.ph88

.lr.ph88:                                         ; preds = %.preheader18
  %.not142 = icmp eq i32 %0, 0
  %i.nq = mul i32 %3, 3                           ; 2 uses
  br i1 %.not142, label %.loopexit, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %.lr.ph88
  %wide.trip.count238 = zext i32 %3 to i64
  %wide.trip.count233 = zext i32 %0 to i64        ; 2 uses
  %xtraiter568 = and i64 %wide.trip.count233, 1
  %i.nr = icmp eq i32 %0, 1
  %unroll_iter572 = and i64 %wide.trip.count233, 4294967294
  %lcmp.mod570.not = icmp eq i64 %xtraiter568, 0
  %lcmp.mod571 = trunc i32 %0 to i1
  br label %.lr.ph85

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %._crit_edge79
  %indvars.iv225 = phi i64 [ 0, %.lr.ph78.preheader ], [ %indvars.iv.next226, %._crit_edge79 ] ; 3 uses
  %i.ns = trunc nuw i64 %indvars.iv225 to i32
  %i.nt = mul i32 %i.ns, 3
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv225
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph78, %bb.h
  %indvars.iv220 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next221, %bb.h ] ; 2 uses
  %.027175 = phi i32 [ %i.nt, %.lr.ph78 ], [ %i.oq, %bb.h ] ; 4 uses
  %i.nw = zext i32 %.027175 to i64
  %i.nx = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !29
  %i.nz = zext i8 %i.ny to i32
  %i.oa = add i32 %.027175, 1
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !29
  %i.oe = zext i8 %i.od to i32
  %i.of = shl nuw nsw i32 %i.oe, 8
  %i.og = or disjoint i32 %i.of, %i.nz
  %i.oh = add i32 %.027175, 2
  %i.oi = zext i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !29
  %i.ol = zext i8 %i.ok to i32
  %i.om = shl nuw nsw i32 %i.ol, 16
  %i.on = or disjoint i32 %i.og, %i.om
  %i.oo = add nsw i32 %i.on, -8388608
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %indvars.iv220
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !14
  %i.oq = add i32 %.027175, %i.np
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count223
  br i1 %exitcond224.not, label %._crit_edge79, label %bb.h, !llvm.loop !188

._crit_edge79:                                    ; preds = %bb.h
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %.loopexit, label %.lr.ph78, !llvm.loop !189

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %._crit_edge86
  %indvars.iv235 = phi i64 [ 0, %.lr.ph85.preheader ], [ %indvars.iv.next236, %._crit_edge86 ] ; 3 uses
  %i.or = trunc nuw i64 %indvars.iv235 to i32
  %i.os = mul i32 %i.or, 3                        ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv235
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !13 ; 3 uses
  br i1 %i.nr, label %.epil.preheader567, label %.lr.ph85.new

.lr.ph85.new:                                     ; preds = %.lr.ph85, %.lr.ph85.new
  %indvars.iv230 = phi i64 [ %indvars.iv.next231.1, %.lr.ph85.new ], [ 0, %.lr.ph85 ] ; 3 uses
  %.025582 = phi i32 [ %i.qj, %.lr.ph85.new ], [ %i.os, %.lr.ph85 ] ; 4 uses
  %niter573 = phi i64 [ %niter573.next.1, %.lr.ph85.new ], [ 0, %.lr.ph85 ]
  %i.ov = zext i32 %.025582 to i64
  %i.ow = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !29
  %i.oy = zext i8 %i.ox to i32
  %i.oz = add i32 %.025582, 1
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !29
  %i.pd = zext i8 %i.pc to i32
  %i.pe = shl nuw nsw i32 %i.pd, 8
  %i.pf = or disjoint i32 %i.pe, %i.oy
  %i.pg = add i32 %.025582, 2
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !29
  %i.pk = sext i8 %i.pj to i32
  %i.pl = shl nsw i32 %i.pk, 16
  %i.pm = or disjoint i32 %i.pf, %i.pl
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv230
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !14
  %i.po = add i32 %.025582, %i.nq                 ; 4 uses
  %i.pp = zext i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.pp
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !29
  %i.ps = zext i8 %i.pr to i32
  %i.pt = add i32 %i.po, 1
  %i.pu = zext i32 %i.pt to i64
  %i.pv = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !29
  %i.px = zext i8 %i.pw to i32
  %i.py = shl nuw nsw i32 %i.px, 8
  %i.pz = or disjoint i32 %i.py, %i.ps
  %i.qa = add i32 %i.po, 2
  %i.qb = zext i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !29
  %i.qe = sext i8 %i.qd to i32
  %i.qf = shl nsw i32 %i.qe, 16
  %i.qg = or disjoint i32 %i.pz, %i.qf
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv230
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  store i32 %i.qg, ptr %i.qi, align 4, !tbaa !14
  %i.qj = add i32 %i.po, %i.nq                    ; 2 uses
  %indvars.iv.next231.1 = add nuw nsw i64 %indvars.iv230, 2 ; 2 uses
  %niter573.next.1 = add i64 %niter573, 2         ; 2 uses
  %niter573.ncmp.1 = icmp eq i64 %niter573.next.1, %unroll_iter572
  br i1 %niter573.ncmp.1, label %._crit_edge86.unr-lcssa, label %.lr.ph85.new, !llvm.loop !190

._crit_edge86.unr-lcssa:                          ; preds = %.lr.ph85.new
  br i1 %lcmp.mod570.not, label %._crit_edge86, label %.epil.preheader567

.epil.preheader567:                               ; preds = %._crit_edge86.unr-lcssa, %.lr.ph85
  %indvars.iv230.epil.init = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next231.1, %._crit_edge86.unr-lcssa ]
  %.025582.epil.init = phi i32 [ %i.os, %.lr.ph85 ], [ %i.qj, %._crit_edge86.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod571)
  %i.qk = zext i32 %.025582.epil.init to i64
  %i.ql = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !29
  %i.qn = zext i8 %i.qm to i32
  %i.qo = add i32 %.025582.epil.init, 1
  %i.qp = zext i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !29
  %i.qs = zext i8 %i.qr to i32
  %i.qt = shl nuw nsw i32 %i.qs, 8
  %i.qu = or disjoint i32 %i.qt, %i.qn
  %i.qv = add i32 %.025582.epil.init, 2
  %i.qw = zext i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !29
  %i.qz = sext i8 %i.qy to i32
  %i.ra = shl nsw i32 %i.qz, 16
  %i.rb = or disjoint i32 %i.qu, %i.ra
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv230.epil.init
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !14
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge86.unr-lcssa, %.epil.preheader567
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %.loopexit, label %.lr.ph85, !llvm.loop !191

bb.i:                                             ; preds = %bb.f
  br i1 %.not292, label %.preheader22, label %.preheader24

.preheader24:                                     ; preds = %bb.i
  br i1 %.not134, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader24
  %.not136 = icmp eq i32 %0, 0
  %i.rd = mul i32 %3, 3
  br i1 %.not136, label %.loopexit, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %.lr.ph67
  %wide.trip.count208 = zext i32 %3 to i64
  %wide.trip.count203 = zext i32 %0 to i64
  br label %.lr.ph64

.preheader22:                                     ; preds = %bb.i
  br i1 %.not134, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader22
  %.not138 = icmp eq i32 %0, 0
  %i.re = mul i32 %3, 3                           ; 2 uses
  br i1 %.not138, label %.loopexit, label %.lr.ph71.preheader

.lr.ph71.preheader:                               ; preds = %.lr.ph74
  %wide.trip.count218 = zext i32 %3 to i64
  %wide.trip.count213 = zext i32 %0 to i64        ; 2 uses
  %xtraiter561 = and i64 %wide.trip.count213, 1
  %i.rf = icmp eq i32 %0, 1
  %unroll_iter565 = and i64 %wide.trip.count213, 4294967294
  %lcmp.mod563.not = icmp eq i64 %xtraiter561, 0
  %lcmp.mod564 = trunc i32 %0 to i1
  br label %.lr.ph71

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %._crit_edge65
  %indvars.iv205 = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next206, %._crit_edge65 ] ; 3 uses
  %i.rg = trunc nuw i64 %indvars.iv205 to i32
  %i.rh = mul i32 %i.rg, 3
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv205
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph64, %bb.j
  %indvars.iv200 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next201, %bb.j ] ; 2 uses
  %.024461 = phi i32 [ %i.rh, %.lr.ph64 ], [ %i.se, %bb.j ] ; 4 uses
  %i.rk = zext i32 %.024461 to i64
  %i.rl = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !29
  %i.rn = zext i8 %i.rm to i32
  %i.ro = add i32 %.024461, 1
  %i.rp = zext i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.rp
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !29
  %i.rs = zext i8 %i.rr to i32
  %i.rt = shl nuw nsw i32 %i.rn, 16
  %i.ru = shl nuw nsw i32 %i.rs, 8
  %i.rv = or disjoint i32 %i.ru, %i.rt
  %i.rw = add i32 %.024461, 2
  %i.rx = zext i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !29
  %i.sa = zext i8 %i.rz to i32
  %i.sb = or disjoint i32 %i.rv, %i.sa
  %i.sc = add nsw i32 %i.sb, -8388608
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv200
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !14
  %i.se = add i32 %.024461, %i.rd
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge65, label %bb.j, !llvm.loop !192

._crit_edge65:                                    ; preds = %bb.j
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count208
  br i1 %exitcond209.not, label %.loopexit, label %.lr.ph64, !llvm.loop !193

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %._crit_edge72
  %indvars.iv215 = phi i64 [ 0, %.lr.ph71.preheader ], [ %indvars.iv.next216, %._crit_edge72 ] ; 3 uses
  %i.sf = trunc nuw i64 %indvars.iv215 to i32
  %i.sg = mul i32 %i.sf, 3                        ; 2 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv215
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !13 ; 3 uses
  br i1 %i.rf, label %.epil.preheader, label %.lr.ph71.new

.lr.ph71.new:                                     ; preds = %.lr.ph71, %.lr.ph71.new
  %indvars.iv210 = phi i64 [ %indvars.iv.next211.1, %.lr.ph71.new ], [ 0, %.lr.ph71 ] ; 3 uses
  %.024169 = phi i32 [ %i.tx, %.lr.ph71.new ], [ %i.sg, %.lr.ph71 ] ; 4 uses
  %niter566 = phi i64 [ %niter566.next.1, %.lr.ph71.new ], [ 0, %.lr.ph71 ]
  %i.sj = zext i32 %.024169 to i64
  %i.sk = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.sj
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !29
  %i.sm = sext i8 %i.sl to i32
  %i.sn = add i32 %.024169, 1
  %i.so = zext i32 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !29
  %i.sr = zext i8 %i.sq to i32
  %i.ss = shl nsw i32 %i.sm, 16
  %i.st = shl nuw nsw i32 %i.sr, 8
  %i.su = or disjoint i32 %i.st, %i.ss
  %i.sv = add i32 %.024169, 2
  %i.sw = zext i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !29
  %i.sz = zext i8 %i.sy to i32
  %i.ta = or disjoint i32 %i.su, %i.sz
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv210
  store i32 %i.ta, ptr %i.tb, align 4, !tbaa !14
  %i.tc = add i32 %.024169, %i.re                 ; 4 uses
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !29
  %i.tg = sext i8 %i.tf to i32
  %i.th = add i32 %i.tc, 1
  %i.ti = zext i32 %i.th to i64
  %i.tj = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !29
  %i.tl = zext i8 %i.tk to i32
  %i.tm = shl nsw i32 %i.tg, 16
  %i.tn = shl nuw nsw i32 %i.tl, 8
  %i.to = or disjoint i32 %i.tn, %i.tm
  %i.tp = add i32 %i.tc, 2
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.tq
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !29
  %i.tt = zext i8 %i.ts to i32
  %i.tu = or disjoint i32 %i.to, %i.tt
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv210
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  store i32 %i.tu, ptr %i.tw, align 4, !tbaa !14
  %i.tx = add i32 %i.tc, %i.re                    ; 2 uses
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %niter566.next.1 = add i64 %niter566, 2         ; 2 uses
  %niter566.ncmp.1 = icmp eq i64 %niter566.next.1, %unroll_iter565
  br i1 %niter566.ncmp.1, label %._crit_edge72.unr-lcssa, label %.lr.ph71.new, !llvm.loop !194

._crit_edge72.unr-lcssa:                          ; preds = %.lr.ph71.new
  br i1 %lcmp.mod563.not, label %._crit_edge72, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge72.unr-lcssa, %.lr.ph71
  %indvars.iv210.epil.init = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next211.1, %._crit_edge72.unr-lcssa ]
  %.024169.epil.init = phi i32 [ %i.sg, %.lr.ph71 ], [ %i.tx, %._crit_edge72.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod564)
  %i.ty = zext i32 %.024169.epil.init to i64
  %i.tz = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !29
  %i.ub = sext i8 %i.ua to i32
  %i.uc = add i32 %.024169.epil.init, 1
  %i.ud = zext i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !29
  %i.ug = zext i8 %i.uf to i32
  %i.uh = shl nsw i32 %i.ub, 16
  %i.ui = shl nuw nsw i32 %i.ug, 8
  %i.uj = or disjoint i32 %i.ui, %i.uh
  %i.uk = add i32 %.024169.epil.init, 2
  %i.ul = zext i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw i8, ptr @ubuffer, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !29
  %i.uo = zext i8 %i.un to i32
  %i.up = or disjoint i32 %i.uj, %i.uo
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv210.epil.init
  store i32 %i.up, ptr %i.uq, align 4, !tbaa !14
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %._crit_edge72.unr-lcssa, %.epil.preheader
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  br i1 %exitcond219.not, label %.loopexit, label %.lr.ph71, !llvm.loop !195

bb.k:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %2, 0
  %.not289 = icmp eq i32 %1, 0                    ; 2 uses
  %i.ur = icmp ne i32 %3, 0
  %i.us = icmp ne i32 %0, 0
  %or.cond132 = and i1 %i.ur, %i.us               ; 4 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not289, label %.preheader33, label %.preheader36

.preheader36:                                     ; preds = %bb.l
  br i1 %or.cond132, label %.preheader35.preheader, label %.loopexit

.preheader35.preheader:                           ; preds = %.preheader36
  %wide.trip.count168 = zext i32 %3 to i64
  %wide.trip.count163 = zext i32 %0 to i64        ; 6 uses
  %i.ut = add nsw i64 %wide.trip.count163, -1     ; 2 uses
  %min.iters.check = icmp ult i32 %0, 12
  %ident.check = icmp ne i32 %3, 1
  %i.uu = trunc i64 %i.ut to i32
  %i.uv = icmp ugt i64 %i.ut, 4294967295
  %invariant.op = or i1 %i.uv, %ident.check
  %n.vec = and i64 %wide.trip.count163, 4294967288 ; 4 uses
  %i.uw = trunc nuw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count163
  %xtraiter551 = and i64 %wide.trip.count163, 1
  %lcmp.mod552.not = icmp eq i64 %xtraiter551, 0
  %i.ux = add nsw i64 %wide.trip.count163, -1
  br label %.preheader35

.preheader33:                                     ; preds = %bb.l
  br i1 %or.cond132, label %.preheader32.preheader, label %.loopexit

.preheader32.preheader:                           ; preds = %.preheader33
  %wide.trip.count178 = zext i32 %3 to i64
  %wide.trip.count173 = zext i32 %0 to i64        ; 6 uses
  %i.uy = add nsw i64 %wide.trip.count173, -1     ; 2 uses
  %min.iters.check366 = icmp ult i32 %0, 12
  %ident.check362 = icmp ne i32 %3, 1
  %i.uz = trunc i64 %i.uy to i32
  %i.va = icmp ugt i64 %i.uy, 4294967295
  %invariant.op604 = or i1 %i.va, %ident.check362
  %n.vec368 = and i64 %wide.trip.count173, 4294967288 ; 4 uses
  %i.vb = trunc nuw i64 %n.vec368 to i32
  %cmp.n375 = icmp eq i64 %n.vec368, %wide.trip.count173
  %xtraiter553 = and i64 %wide.trip.count173, 3   ; 2 uses
  %lcmp.mod554.not = icmp eq i64 %xtraiter553, 0
  br label %.preheader32

.preheader35:                                     ; preds = %.preheader35.preheader, %._crit_edge44
  %indvars.iv165 = phi i64 [ 0, %.preheader35.preheader ], [ %indvars.iv.next166, %._crit_edge44 ] ; 5 uses
  %i.vc = shl i64 %indvars.iv165, 2
  %i.vd = sub i64 sub (i64 0, i64 ptrtoaddr (ptr @ubuffer to i64)), %i.vc
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv165
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !13 ; 5 uses
  %i.vg = ptrtoaddr ptr %i.vf to i64
  %i.vh = trunc i64 %indvars.iv165 to i32         ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader35
  %i.vi = xor i32 %i.vh, -1
  %i.vj = icmp ult i32 %i.vi, %i.uu
  %.reass = or i1 %i.vj, %invariant.op
  br i1 %.reass, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.vk = add i64 %i.vd, %i.vg
  %i.vl = add i64 %i.vk, -1
  %diff.check = icmp ult i64 %i.vl, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.vm = add i32 %i.vh, %i.uw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.vn = add i64 %indvars.iv165, %index
  %i.vo = and i64 %i.vn, 4294967295
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.vo ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %wide.load = load <4 x i32>, ptr %i.vp, align 4, !tbaa !29
  %wide.load359 = load <4 x i32>, ptr %i.vq, align 4, !tbaa !29
  %i.vr = xor <4 x i32> %wide.load, splat (i32 128)
  %i.vs = xor <4 x i32> %wide.load359, splat (i32 128)
  %i.vt = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.vr)
  %i.vu = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.vs)
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %index ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  store <4 x i32> %i.vt, ptr %i.vv, align 4, !tbaa !14
  store <4 x i32> %i.vu, ptr %i.vw, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vx = icmp eq i64 %index.next, %n.vec
  br i1 %i.vx, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge44, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader35, %middle.block
  %indvars.iv160.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader35 ], [ %n.vec, %middle.block ] ; 4 uses
  %.625141.ph = phi i32 [ %i.vh, %vector.memcheck ], [ %i.vh, %vector.scevcheck ], [ %i.vh, %.preheader35 ], [ %i.vm, %middle.block ] ; 3 uses
  br i1 %lcmp.mod552.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.vy = zext i32 %.625141.ph to i64
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.vy
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !29
  %i.wb = xor i32 %i.wa, 128
  %i.wc = tail call i32 @llvm.bswap.i32(i32 %i.wb)
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %indvars.iv160.ph
  store i32 %i.wc, ptr %i.wd, align 4, !tbaa !14
  %indvars.iv.next161.prol = or disjoint i64 %indvars.iv160.ph, 1
  %i.we = add i32 %.625141.ph, %3
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv160.unr = phi i64 [ %indvars.iv160.ph, %scalar.ph.preheader ], [ %indvars.iv.next161.prol, %scalar.ph.prol ]
  %.625141.unr = phi i32 [ %.625141.ph, %scalar.ph.preheader ], [ %i.we, %scalar.ph.prol ]
  %i.wf = icmp eq i64 %indvars.iv160.ph, %i.ux
  br i1 %i.wf, label %._crit_edge44, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.1, %scalar.ph ], [ %indvars.iv160.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.625141 = phi i32 [ %i.wu, %scalar.ph ], [ %.625141.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.wg = zext i32 %.625141 to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !29
  %i.wj = xor i32 %i.wi, 128
  %i.wk = tail call i32 @llvm.bswap.i32(i32 %i.wj)
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %indvars.iv160
  store i32 %i.wk, ptr %i.wl, align 4, !tbaa !14
  %i.wm = add i32 %.625141, %3                    ; 2 uses
  %i.wn = zext i32 %i.wm to i64
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !29
  %i.wq = xor i32 %i.wp, 128
  %i.wr = tail call i32 @llvm.bswap.i32(i32 %i.wq)
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %indvars.iv160
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  store i32 %i.wr, ptr %i.wt, align 4, !tbaa !14
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %i.wu = add i32 %i.wm, %3
  %exitcond164.not.1 = icmp eq i64 %indvars.iv.next161.1, %wide.trip.count163
  br i1 %exitcond164.not.1, label %._crit_edge44, label %scalar.ph, !llvm.loop !197

._crit_edge44:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %.loopexit, label %.preheader35, !llvm.loop !198

.preheader32:                                     ; preds = %.preheader32.preheader, %._crit_edge49
  %indvars.iv175 = phi i64 [ 0, %.preheader32.preheader ], [ %indvars.iv.next176, %._crit_edge49 ] ; 5 uses
  %i.wv = shl i64 %indvars.iv175, 2
  %i.ww = sub i64 sub (i64 0, i64 ptrtoaddr (ptr @ubuffer to i64)), %i.wv
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv175
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !13 ; 7 uses
  %i.wz = ptrtoaddr ptr %i.wy to i64
  %i.xa = trunc i64 %indvars.iv175 to i32         ; 5 uses
  br i1 %min.iters.check366, label %scalar.ph365.preheader, label %vector.scevcheck361

vector.scevcheck361:                              ; preds = %.preheader32
  %i.xb = xor i32 %i.xa, -1
  %i.xc = icmp ult i32 %i.xb, %i.uz
  %.reass605 = or i1 %i.xc, %invariant.op604
  br i1 %.reass605, label %scalar.ph365.preheader, label %vector.memcheck363

vector.memcheck363:                               ; preds = %vector.scevcheck361
  %i.xd = add i64 %i.ww, %i.wz
  %i.xe = add i64 %i.xd, -1
  %diff.check364 = icmp ult i64 %i.xe, 31
  br i1 %diff.check364, label %scalar.ph365.preheader, label %vector.ph367

vector.ph367:                                     ; preds = %vector.memcheck363
  %i.xf = add i32 %i.xa, %i.vb
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph367
  %index370 = phi i64 [ 0, %vector.ph367 ], [ %index.next373, %vector.body369 ] ; 3 uses
  %i.xg = add i64 %indvars.iv175, %index370
  %i.xh = and i64 %i.xg, 4294967295
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr @ubuffer, i64 %i.xh ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %wide.load371 = load <4 x i32>, ptr %i.xi, align 4, !tbaa !29
  %wide.load372 = load <4 x i32>, ptr %i.xj, align 4, !tbaa !29
  %i.xk = xor <4 x i32> %wide.load371, splat (i32 -2147483648)
end_hunk_1
