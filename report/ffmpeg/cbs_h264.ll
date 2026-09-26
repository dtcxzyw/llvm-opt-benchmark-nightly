Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cbs_h264?download=true
inline.NumInlined: 51
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cbs_h264_read_nal_unit:bb.a

bb.fe:                                            ; preds = %.thread386.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #8
  br label %cbs_h264_read_pps.exit.thread

bb.ff:                                            ; preds = %.thread386.i
  %i.vp = load i32, ptr %i.az, align 4, !tbaa !31
  %i.vq = trunc i32 %i.vp to i8
  %i.vr = getelementptr inbounds nuw i8, ptr %i.qt, i64 80
  store i8 %i.vq, ptr %i.vr, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #8
  %i.vs = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.126, ptr noundef null, ptr noundef nonnull %i.ba, i32 noundef 0, i32 noundef 31) #8 ; 2 uses
  %i.vt = icmp sgt i32 %i.vs, -1
  br i1 %i.vt, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #8
  br label %cbs_h264_read_pps.exit.thread

bb.fh:                                            ; preds = %bb.ff
  %i.vu = load i32, ptr %i.ba, align 4, !tbaa !31
  %i.vv = trunc i32 %i.vu to i8
  %i.vw = getelementptr inbounds nuw i8, ptr %i.qt, i64 81
  store i8 %i.vv, ptr %i.vw, align 1, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #8
  %i.vx = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.127, ptr noundef nonnull %i.bb) #8 ; 2 uses
  %i.vy = icmp sgt i32 %i.vx, -1
  br i1 %i.vy, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #8
  br label %cbs_h264_read_pps.exit.thread

bb.fj:                                            ; preds = %bb.fh
  %i.vz = load i32, ptr %i.bb, align 4, !tbaa !31
  %i.wa = trunc i32 %i.vz to i8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.qt, i64 82
  store i8 %i.wa, ptr %i.wb, align 2, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #8
  %i.wc = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2, ptr noundef nonnull @.str.128, ptr noundef null, ptr noundef nonnull %i.bc, i32 noundef 0, i32 noundef 2) #8 ; 2 uses
  %i.wd = icmp sgt i32 %i.wc, -1
  br i1 %i.wd, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #8
  br label %cbs_h264_read_pps.exit.thread

bb.fl:                                            ; preds = %bb.fj
  %i.we = load i32, ptr %i.bc, align 4, !tbaa !31
  %i.wf = trunc i32 %i.we to i8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.qt, i64 83
  store i8 %i.wf, ptr %i.wg, align 1, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #8
  %i.wh = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %i.wi = load i8, ptr %i.wh, align 4, !tbaa !49
  %i.wj = zext i8 %i.wi to i32
  %.neg.i = mul nsw i32 %i.wj, -6
  %i.wk = add nsw i32 %.neg.i, -26
  %i.wl = call i32 @ff_cbs_read_se_golomb(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef nonnull %i.bd, i32 noundef %i.wk, i32 noundef 25) #8 ; 2 uses
  %i.wm = icmp sgt i32 %i.wl, -1
  br i1 %i.wm, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #8
  br label %cbs_h264_read_pps.exit.thread

bb.fn:                                            ; preds = %bb.fl
  %i.wn = load i32, ptr %i.bd, align 4, !tbaa !31
  %i.wo = trunc i32 %i.wn to i8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.qt, i64 84
  store i8 %i.wo, ptr %i.wp, align 4, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #8
  %i.wq = call i32 @ff_cbs_read_se_golomb(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.130, ptr noundef null, ptr noundef nonnull %i.be, i32 noundef -26, i32 noundef 25) #8 ; 2 uses
  %i.wr = icmp sgt i32 %i.wq, -1
  br i1 %i.wr, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #8
  br label %cbs_h264_read_pps.exit.thread

bb.fp:                                            ; preds = %bb.fn
  %i.ws = load i32, ptr %i.be, align 4, !tbaa !31
  %i.wt = trunc i32 %i.ws to i8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.qt, i64 85
  store i8 %i.wt, ptr %i.wu, align 1, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #8
  %i.wv = call i32 @ff_cbs_read_se_golomb(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.131, ptr noundef null, ptr noundef nonnull %i.bf, i32 noundef -12, i32 noundef 12) #8 ; 2 uses
  %i.ww = icmp sgt i32 %i.wv, -1
  br i1 %i.ww, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #8
  br label %cbs_h264_read_pps.exit.thread

bb.fr:                                            ; preds = %bb.fp
  %i.wx = load i32, ptr %i.bf, align 4, !tbaa !31
  %i.wy = trunc i32 %i.wx to i8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.qt, i64 86 ; 2 uses
  store i8 %i.wy, ptr %i.wz, align 2, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #8
  %i.xa = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.bg) #8 ; 2 uses
  %i.xb = icmp sgt i32 %i.xa, -1
  br i1 %i.xb, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #8
  br label %cbs_h264_read_pps.exit.thread

bb.ft:                                            ; preds = %bb.fr
  %i.xc = load i32, ptr %i.bg, align 4, !tbaa !31
  %i.xd = trunc i32 %i.xc to i8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.qt, i64 87
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #8
  %i.xf = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.133, ptr noundef nonnull %i.bh) #8 ; 2 uses
  %i.xg = icmp sgt i32 %i.xf, -1
  br i1 %i.xg, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #8
  br label %cbs_h264_read_pps.exit.thread

bb.fv:                                            ; preds = %bb.ft
  %i.xh = load i32, ptr %i.bh, align 4, !tbaa !31
  %i.xi = trunc i32 %i.xh to i8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.qt, i64 88
  store i8 %i.xi, ptr %i.xj, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #8
  %i.xk = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.134, ptr noundef nonnull %i.bi) #8 ; 2 uses
  %i.xl = icmp sgt i32 %i.xk, -1
  br i1 %i.xl, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #8
  br label %cbs_h264_read_pps.exit.thread

bb.fx:                                            ; preds = %bb.fv
  %i.xm = load i32, ptr %i.bi, align 4, !tbaa !31
  %i.xn = trunc i32 %i.xm to i8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.qt, i64 90
  store i8 %i.xn, ptr %i.xo, align 2, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #8
  %i.xp = call i32 @ff_cbs_h2645_read_more_rbsp_data(ptr noundef nonnull %2) #8
  %i.xq = trunc i32 %i.xp to i8                   ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.qt, i64 89
  store i8 %i.xq, ptr %i.xr, align 1, !tbaa !110
  %.not345.i = icmp eq i8 %i.xq, 0
  br i1 %.not345.i, label %bb.gl, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #8
  %i.xs = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.135, ptr noundef nonnull %i.bj) #8 ; 2 uses
  %i.xt = icmp sgt i32 %i.xs, -1
  br i1 %i.xt, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #8
  br label %cbs_h264_read_pps.exit.thread

bb.ga:                                            ; preds = %bb.fy
  %i.xu = load i32, ptr %i.bj, align 4, !tbaa !31
  %i.xv = trunc i32 %i.xu to i8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.qt, i64 91 ; 2 uses
  store i8 %i.xv, ptr %i.xw, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #8
  %i.xx = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.136, ptr noundef nonnull %i.bk) #8 ; 2 uses
  %i.xy = icmp sgt i32 %i.xx, -1
  br i1 %i.xy, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk) #8
  br label %cbs_h264_read_pps.exit.thread

bb.gc:                                            ; preds = %bb.ga
  %i.xz = load i32, ptr %i.bk, align 4, !tbaa !31
  %i.ya = trunc i32 %i.xz to i8                   ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.qt, i64 92
  store i8 %i.ya, ptr %i.yb, align 4, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk) #8
  %.not346.i = icmp eq i8 %i.ya, 0
  br i1 %.not346.i, label %.loopexit.i99, label %.preheader.i98

.preheader.i98:                                   ; preds = %bb.gc
  %i.yc = getelementptr inbounds nuw i8, ptr %i.rl, i64 14
  %i.yd = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.ye = getelementptr inbounds nuw i8, ptr %i.qt, i64 93
  %i.yf = getelementptr inbounds nuw i8, ptr %i.qt, i64 105
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gj, %.preheader.i98
  %indvars.iv469.i = phi i64 [ 0, %.preheader.i98 ], [ %indvars.iv.next470.i, %bb.gj ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl) #8
  store i32 1, ptr %i.bm, align 4, !tbaa !31
  %i.yg = trunc nuw nsw i64 %indvars.iv469.i to i32
  store i32 %i.yg, ptr %i.yd, align 4, !tbaa !31
  %i.yh = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bl, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.yi = icmp sgt i32 %i.yh, -1
  br i1 %i.yi, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #8
  br label %cbs_h264_read_pps.exit.thread

bb.gf:                                            ; preds = %bb.gd
  %i.yj = load i32, ptr %i.bl, align 4, !tbaa !31
  %i.yk = trunc i32 %i.yj to i8                   ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ye, i64 %indvars.iv469.i
  store i8 %i.yk, ptr %i.yl, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #8
  %.not348.i = icmp eq i8 %i.yk, 0
  br i1 %.not348.i, label %bb.gj, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ym = icmp samesign ult i64 %indvars.iv469.i, 6
  br i1 %i.ym, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.yn = getelementptr inbounds nuw [64 x i8], ptr %i.yf, i64 %indvars.iv469.i
  %i.yo = call fastcc i32 @cbs_h264_read_scaling_list(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %i.yn, i32 noundef 16) ; 2 uses
  %i.yp = icmp slt i32 %i.yo, 0
  br i1 %i.yp, label %cbs_h264_read_pps.exit.thread, label %bb.gj

bb.gi:                                            ; preds = %bb.gg
  %i.yq = getelementptr [64 x i8], ptr %i.qt, i64 %indvars.iv469.i
  %i.yr = getelementptr i8, ptr %i.yq, i64 105
  %i.ys = call fastcc i32 @cbs_h264_read_scaling_list(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.yr, i32 noundef 64) ; 2 uses
  %i.yt = icmp slt i32 %i.ys, 0
  br i1 %i.yt, label %cbs_h264_read_pps.exit.thread, label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gf
  %indvars.iv.next470.i = add nuw nsw i64 %indvars.iv469.i, 1 ; 2 uses
  %i.yu = load i8, ptr %i.yc, align 2, !tbaa !47
  %.not347.i = icmp eq i8 %i.yu, 3
  %i.yv = select i1 %.not347.i, i64 6, i64 2
  %i.yw = load i8, ptr %i.xw, align 1, !tbaa !111
  %i.yx = zext i8 %i.yw to i64
  %i.yy = mul nuw nsw i64 %i.yv, %i.yx
  %i.yz = add nuw nsw i64 %i.yy, 6
  %i.za = icmp samesign ult i64 %indvars.iv.next470.i, %i.yz
  br i1 %i.za, label %bb.gd, label %.loopexit.i99, !llvm.loop !313

.loopexit.i99:                                    ; preds = %bb.gj, %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #8
  %i.zb = call i32 @ff_cbs_read_se_golomb(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.138, ptr noundef null, ptr noundef nonnull %i.bn, i32 noundef -12, i32 noundef 12) #8 ; 2 uses
  %i.zc = icmp sgt i32 %i.zb, -1
  br i1 %i.zc, label %.thread430.i, label %bb.gk

.thread430.i:                                     ; preds = %.loopexit.i99
  %i.zd = load i32, ptr %i.bn, align 4, !tbaa !31
  %i.ze = trunc i32 %i.zd to i8
  %i.zf = getelementptr inbounds nuw i8, ptr %i.qt, i64 873
  store i8 %i.ze, ptr %i.zf, align 1, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #8
  br label %cbs_h264_read_pps.exit

bb.gk:                                            ; preds = %.loopexit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #8
  br label %cbs_h264_read_pps.exit.thread

bb.gl:                                            ; preds = %bb.fx
  %i.zg = getelementptr inbounds nuw i8, ptr %i.qt, i64 91
  store i8 0, ptr %i.zg, align 1, !tbaa !111
  %i.zh = getelementptr inbounds nuw i8, ptr %i.qt, i64 92
  store i8 0, ptr %i.zh, align 4, !tbaa !112
  %i.zi = load i8, ptr %i.wz, align 2, !tbaa !106
  %i.zj = getelementptr inbounds nuw i8, ptr %i.qt, i64 873
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !113
  br label %cbs_h264_read_pps.exit

.critedge.i93:                                    ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #8
  br label %cbs_h264_read_pps.exit.thread

cbs_h264_read_pps.exit.thread:                    ; preds = %bb.gi, %bb.gh, %bb.dv, %.critedge.i93, %bb.ey, %bb.ge, %bb.em, %bb.gk, %bb.gb, %bb.fz, %bb.fw, %bb.fu, %bb.fs, %bb.fq, %bb.fo, %bb.fm, %bb.fk, %bb.fi, %bb.fg, %bb.fe, %bb.fd, %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.ex, %bb.ej, %bb.fb, %bb.eu, %bb.ep, %bb.er
  %.35.i.ph = phi i32 [ %i.qy, %.critedge.i93 ], [ %i.qw, %bb.dv ], [ %i.to, %bb.er ], [ %i.ti, %bb.ep ], [ %i.tw, %bb.eu ], [ %i.vf, %bb.fb ], [ %i.sl, %bb.ej ], [ %i.ui, %bb.ex ], [ %i.rd, %bb.dy ], [ -1094995529, %bb.ea ], [ %i.rn, %bb.ec ], [ %i.rs, %bb.ee ], [ %i.rx, %bb.eg ], [ %i.uc, %bb.fd ], [ %i.vn, %bb.fe ], [ %i.vs, %bb.fg ], [ %i.vx, %bb.fi ], [ %i.wc, %bb.fk ], [ %i.wl, %bb.fm ], [ %i.wq, %bb.fo ], [ %i.wv, %bb.fq ], [ %i.xa, %bb.fs ], [ %i.xf, %bb.fu ], [ %i.xk, %bb.fw ], [ %i.xs, %bb.fz ], [ %i.xx, %bb.gb ], [ %i.zb, %bb.gk ], [ %i.ta, %bb.em ], [ %i.yh, %bb.ge ], [ -12, %bb.ey ], [ %i.ys, %bb.gi ], [ %i.yo, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %.thread

cbs_h264_read_pps.exit:                           ; preds = %.thread430.i, %bb.gl
  %i.zk = call fastcc i32 @cbs_h264_read_rbsp_trailing_bits(ptr noundef nonnull %0, ptr noundef nonnull %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.zl = icmp slt i32 %i.zk, 0
  br i1 %i.zl, label %.thread, label %bb.gm

bb.gm:                                            ; preds = %cbs_h264_read_pps.exit
  %i.zm = load ptr, ptr %i.qu, align 8, !tbaa !17 ; 2 uses
  %i.zn = load ptr, ptr %i.qs, align 8, !tbaa !30
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  %i.zp = load i8, ptr %i.zo, align 4, !tbaa !89
  %i.zq = call i32 @ff_cbs_make_unit_refcounted(ptr noundef nonnull %0, ptr noundef nonnull %1) #8 ; 2 uses
  %i.zr = icmp slt i32 %i.zq, 0
  br i1 %i.zr, label %.thread, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zm, i64 312
  %i.zt = zext i8 %i.zp to i64
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %i.zt ; 2 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !114
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zm, i64 2368 ; 2 uses
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !115
  %i.zy = icmp eq ptr %i.zv, %i.zx
  br i1 %i.zy, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  store ptr null, ptr %i.zw, align 8, !tbaa !115
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !79 ; 2 uses
  %.not.i101 = icmp eq ptr %i.aaa, null
  br i1 %.not.i101, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.3, i32 noundef 379) #8
  call void @abort() #9
  unreachable

bb.gr:                                            ; preds = %bb.gp
  call void @av_refstruct_replace(ptr noundef nonnull %i.zu, ptr noundef nonnull %i.aaa) #8
  br label %cbs_h264_read_sps_extension.exit

bb.gs:                                            ; preds = %bb.c, %bb.c, %bb.c
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !30 ; 51 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !17 ; 6 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.139) #8
  %i.aaf = call fastcc i32 @cbs_h264_read_nal_unit_header(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.aac, i32 noundef 524322) ; 2 uses
  %i.aag = icmp slt i32 %i.aaf, 0
  br i1 %i.aag, label %.thread, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aac, i64 1 ; 4 uses
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !117 ; 2 uses
  %i.aaj = icmp eq i8 %i.aai, 19
  br i1 %i.aaj, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aae, i64 2376
  %i.aal = load i8, ptr %i.aak, align 8, !tbaa !118 ; 2 uses
  %.not.i109 = icmp eq i8 %i.aal, 0
  br i1 %.not.i109, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.aam = load ptr, ptr %0, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aam, i32 noundef 16, ptr noundef nonnull @.str.140) #8
  br label %.thread

bb.gw:                                            ; preds = %bb.gu, %bb.gt
  %.0326.in.in.i = phi i8 [ %i.aal, %bb.gu ], [ %i.aai, %bb.gt ]
  %.0326.in.in.fr.i = freeze i8 %.0326.in.in.i
  %.0326.in.i = icmp eq i8 %.0326.in.in.fr.i, 5   ; 3 uses
  %.0326.i = zext i1 %.0326.in.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  %i.aan = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.141, ptr noundef null, ptr noundef nonnull %i.i, i32 noundef 0, i32 noundef 139263) #8 ; 2 uses
  %i.aao = icmp sgt i32 %i.aan, -1
  br i1 %i.aao, label %bb.gx, label %.critedge.i103

bb.gx:                                            ; preds = %bb.gw
  %i.aap = load i32, ptr %i.i, align 4, !tbaa !31
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  store i32 %i.aap, ptr %i.aaq, align 4, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  %i.aar = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.142, ptr noundef null, ptr noundef nonnull %i.j, i32 noundef 0, i32 noundef 9) #8 ; 2 uses
  %i.aas = icmp sgt i32 %i.aar, -1
  br i1 %i.aas, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  br label %.thread

bb.gz:                                            ; preds = %bb.gx
  %i.aat = load i32, ptr %i.j, align 4, !tbaa !31 ; 2 uses
  %i.aau = trunc i32 %i.aat to i8                 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  store i8 %i.aau, ptr %i.aav, align 4, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  %i.aaw = and i32 %i.aat, 255
  %i.aax = urem i8 %i.aau, 5                      ; 7 uses
  %i.aay = icmp eq i8 %i.aax, 1                   ; 3 uses
  %i.aaz = icmp eq i8 %i.aax, 3
  br i1 %.0326.in.i, label %switch.early.test.i, label %bb.hb

switch.early.test.i:                              ; preds = %bb.gz
  switch i8 %i.aax, label %bb.ha [
    i8 4, label %bb.hb
    i8 2, label %bb.hb
  ]

bb.ha:                                            ; preds = %switch.early.test.i
  %i.aba = load ptr, ptr %0, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aba, i32 noundef 16, ptr noundef nonnull @.str.143, i32 noundef %i.aaw) #8
  br label %.thread

bb.hb:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  %i.abb = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.112, ptr noundef null, ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef 255) #8 ; 2 uses
  %i.abc = icmp sgt i32 %i.abb, -1
  br i1 %i.abc, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  br label %.thread

bb.hd:                                            ; preds = %bb.hb
  %i.abd = load i32, ptr %i.k, align 4, !tbaa !31 ; 2 uses
  %i.abe = trunc i32 %i.abd to i8
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aac, i64 9
  store i8 %i.abe, ptr %i.abf, align 1, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aae, i64 312
  %.mask.i105 = and i32 %i.abd, 255               ; 2 uses
  %i.abh = zext nneg i32 %.mask.i105 to i64
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.abh
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !114 ; 15 uses
  %.not389.i = icmp eq ptr %i.abj, null
  br i1 %.not389.i, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.abk = load ptr, ptr %0, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.abk, i32 noundef 16, ptr noundef nonnull @.str.144, i32 noundef %.mask.i105) #8
  br label %.thread

bb.hf:                                            ; preds = %bb.hd
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aae, i64 2368
  store ptr %i.abj, ptr %i.abl, align 8, !tbaa !115
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aae, i64 56
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 5
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !90 ; 2 uses
end_hunk_0
begin_hunk_1_@cbs_h264_write_nal_unit:bb.a
  store i32 %i.qf, ptr %i.pn, align 4, !tbaa !31
  %i.ql = load i16, ptr %i.qc, align 2, !tbaa !95
  %i.qm = zext i16 %i.ql to i32
  %i.qn = call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.120, ptr noundef nonnull %i.c, i32 noundef %i.qk, i32 noundef %i.qm, i32 noundef %i.pl) #8 ; 2 uses
  %i.qo = icmp sgt i32 %i.qn, -1
  br i1 %i.qo, label %bb.cz, label %cbs_h264_write_pps.exit.thread

bb.dc:                                            ; preds = %bb.cw, %bb.cw, %bb.cw
  %i.qp = getelementptr inbounds nuw i8, ptr %i.nh, i64 58
  %i.qq = load i8, ptr %i.qp, align 2, !tbaa !96
  %i.qr = zext i8 %i.qq to i32
  %i.qs = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.121, i32 noundef %i.qr) #8 ; 2 uses
  %i.qt = icmp sgt i32 %i.qs, -1
  br i1 %i.qt, label %bb.di, label %cbs_h264_write_pps.exit.thread

bb.dd:                                            ; preds = %bb.cw
  %i.qu = getelementptr inbounds nuw i8, ptr %i.nh, i64 62 ; 2 uses
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !98
  %i.qw = zext i16 %i.qv to i32
  %i.qx = add nsw i32 %i.pb, -1                   ; 2 uses
  %i.qy = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.123, ptr noundef null, i32 noundef %i.qw, i32 noundef %i.qx, i32 noundef %i.qx) #8 ; 2 uses
  %i.qz = icmp sgt i32 %i.qy, -1
  br i1 %i.qz, label %bb.de, label %cbs_h264_write_pps.exit.thread

bb.de:                                            ; preds = %bb.dd
  %i.ra = getelementptr inbounds nuw i8, ptr %i.nh, i64 64 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !99
  %.not371.i = icmp eq ptr %i.rb, null
  br i1 %.not371.i, label %bb.df, label %.preheader396.i

.preheader396.i:                                  ; preds = %bb.de
  %i.rc = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.rd = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.rd, i32 noundef 16, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.206) #8
  br label %cbs_h264_write_pps.exit.thread

bb.dg:                                            ; preds = %bb.dh
  %indvars.iv.next.i99 = add nuw nsw i64 %indvars.iv.i97, 1
  %i.re = load i16, ptr %i.qu, align 2, !tbaa !98
  %i.rf = zext i16 %i.re to i64
  %.not372.not.i = icmp samesign ult i64 %indvars.iv.i97, %i.rf
  br i1 %.not372.not.i, label %bb.dh, label %.thread387.i, !llvm.loop !332

bb.dh:                                            ; preds = %bb.dg, %.preheader396.i
  %indvars.iv.i97 = phi i64 [ 0, %.preheader396.i ], [ %indvars.iv.next.i99, %bb.dg ] ; 4 uses
  %i.rg = load ptr, ptr %i.ra, align 8, !tbaa !99
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %indvars.iv.i97
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !19
  %i.rj = zext i8 %i.ri to i32
  %i.rk = load i8, ptr %i.on, align 8, !tbaa !93  ; 2 uses
  %i.rl = zext i8 %i.rk to i32                    ; 2 uses
  %i.rm = shl nuw nsw i32 %i.rl, 1
  %i.rn = or disjoint i32 %i.rm, 1
  %.not.i.i98 = icmp sgt i8 %i.rk, -1             ; 2 uses
  %.1.i.i = select i1 %.not.i.i98, i32 0, i32 8
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = select i1 %.not.i.i98, i64 %i.ro, i64 1
  %i.rq = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.rp
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !19
  %i.rs = zext i8 %i.rr to i32
  %i.rt = add nuw nsw i32 %.1.i.i, %i.rs
  store i32 1, ptr %i.d, align 4, !tbaa !31
  %i.ru = trunc nuw nsw i64 %indvars.iv.i97 to i32
  store i32 %i.ru, ptr %i.rc, align 4, !tbaa !31
  %i.rv = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.rt, ptr noundef nonnull @.str.124, ptr noundef nonnull %i.d, i32 noundef %i.rj, i32 noundef 0, i32 noundef %i.rl) #8 ; 2 uses
  %i.rw = icmp sgt i32 %i.rv, -1
  br i1 %i.rw, label %bb.dg, label %cbs_h264_write_pps.exit.thread

bb.di:                                            ; preds = %bb.dc
  %i.rx = getelementptr inbounds nuw i8, ptr %i.nh, i64 60
  %i.ry = load i16, ptr %i.rx, align 4, !tbaa !97
  %i.rz = zext i16 %i.ry to i32
  %i.sa = add nsw i32 %i.pb, -1
  %i.sb = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.122, ptr noundef null, i32 noundef %i.rz, i32 noundef 0, i32 noundef %i.sa) #8 ; 2 uses
  %i.sc = icmp sgt i32 %i.sb, -1
  br i1 %i.sc, label %.thread387.i, label %cbs_h264_write_pps.exit.thread

.thread387.i:                                     ; preds = %bb.dg, %bb.cz, %bb.cx, %bb.di, %.preheader392.i, %bb.cw, %bb.cu
  %i.sd = getelementptr inbounds nuw i8, ptr %i.nh, i64 80
  %i.se = load i8, ptr %i.sd, align 8, !tbaa !100
  %i.sf = zext i8 %i.se to i32
  %i.sg = call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.125, ptr noundef null, i32 noundef %i.sf, i32 noundef 0, i32 noundef 31) #8 ; 2 uses
  %i.sh = icmp sgt i32 %i.sg, -1
  br i1 %i.sh, label %bb.dj, label %cbs_h264_write_pps.exit.thread

bb.dj:                                            ; preds = %.thread387.i
  %i.si = getelementptr inbounds nuw i8, ptr %i.nh, i64 81
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !101
  %i.sk = zext i8 %i.sj to i32
  %i.sl = call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.126, ptr noundef null, i32 noundef %i.sk, i32 noundef 0, i32 noundef 31) #8 ; 2 uses
  %i.sm = icmp sgt i32 %i.sl, -1
  br i1 %i.sm, label %bb.dk, label %cbs_h264_write_pps.exit.thread

bb.dk:                                            ; preds = %bb.dj
  %i.sn = getelementptr inbounds nuw i8, ptr %i.nh, i64 82
  %i.so = load i8, ptr %i.sn, align 2, !tbaa !102
  %i.sp = zext i8 %i.so to i32
  %i.sq = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.127, i32 noundef %i.sp) #8 ; 2 uses
  %i.sr = icmp sgt i32 %i.sq, -1
  br i1 %i.sr, label %bb.dl, label %cbs_h264_write_pps.exit.thread

bb.dl:                                            ; preds = %bb.dk
  %i.ss = getelementptr inbounds nuw i8, ptr %i.nh, i64 83
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !103
  %i.su = zext i8 %i.st to i32
  %i.sv = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.128, ptr noundef null, i32 noundef %i.su, i32 noundef 0, i32 noundef 2) #8 ; 2 uses
  %i.sw = icmp sgt i32 %i.sv, -1
  br i1 %i.sw, label %bb.dm, label %cbs_h264_write_pps.exit.thread

bb.dm:                                            ; preds = %bb.dl
  %i.sx = getelementptr inbounds nuw i8, ptr %i.nh, i64 84
  %i.sy = load i8, ptr %i.sx, align 4, !tbaa !104
  %i.sz = sext i8 %i.sy to i32
  %i.ta = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.tb = load i8, ptr %i.ta, align 4, !tbaa !49
  %i.tc = zext i8 %i.tb to i32
  %.neg.i = mul nsw i32 %i.tc, -6
  %i.td = add nsw i32 %.neg.i, -26
  %i.te = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.129, ptr noundef null, i32 noundef %i.sz, i32 noundef %i.td, i32 noundef 25) #8 ; 2 uses
  %i.tf = icmp sgt i32 %i.te, -1
  br i1 %i.tf, label %bb.dn, label %cbs_h264_write_pps.exit.thread

bb.dn:                                            ; preds = %bb.dm
  %i.tg = getelementptr inbounds nuw i8, ptr %i.nh, i64 85
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !105
  %i.ti = sext i8 %i.th to i32
  %i.tj = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.130, ptr noundef null, i32 noundef %i.ti, i32 noundef -26, i32 noundef 25) #8 ; 2 uses
  %i.tk = icmp sgt i32 %i.tj, -1
  br i1 %i.tk, label %bb.do, label %cbs_h264_write_pps.exit.thread

bb.do:                                            ; preds = %bb.dn
  %i.tl = getelementptr inbounds nuw i8, ptr %i.nh, i64 86 ; 2 uses
  %i.tm = load i8, ptr %i.tl, align 2, !tbaa !106
  %i.tn = sext i8 %i.tm to i32
  %i.to = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.131, ptr noundef null, i32 noundef %i.tn, i32 noundef -12, i32 noundef 12) #8 ; 2 uses
  %i.tp = icmp sgt i32 %i.to, -1
  br i1 %i.tp, label %bb.dp, label %cbs_h264_write_pps.exit.thread

bb.dp:                                            ; preds = %bb.do
  %i.tq = getelementptr inbounds nuw i8, ptr %i.nh, i64 87
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !107
  %i.ts = zext i8 %i.tr to i32
  %i.tt = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.132, i32 noundef %i.ts) #8 ; 2 uses
  %i.tu = icmp sgt i32 %i.tt, -1
  br i1 %i.tu, label %bb.dq, label %cbs_h264_write_pps.exit.thread

bb.dq:                                            ; preds = %bb.dp
  %i.tv = getelementptr inbounds nuw i8, ptr %i.nh, i64 88
  %i.tw = load i8, ptr %i.tv, align 8, !tbaa !108
  %i.tx = zext i8 %i.tw to i32
  %i.ty = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.133, i32 noundef %i.tx) #8 ; 2 uses
  %i.tz = icmp sgt i32 %i.ty, -1
  br i1 %i.tz, label %bb.dr, label %cbs_h264_write_pps.exit.thread

bb.dr:                                            ; preds = %bb.dq
  %i.ua = getelementptr inbounds nuw i8, ptr %i.nh, i64 90
  %i.ub = load i8, ptr %i.ua, align 2, !tbaa !109
  %i.uc = zext i8 %i.ub to i32
  %i.ud = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.134, i32 noundef %i.uc) #8 ; 2 uses
  %i.ue = icmp sgt i32 %i.ud, -1
  br i1 %i.ue, label %bb.ds, label %cbs_h264_write_pps.exit.thread

bb.ds:                                            ; preds = %bb.dr
  %i.uf = getelementptr inbounds nuw i8, ptr %i.nh, i64 89
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !110
  %.not374.i = icmp eq i8 %i.ug, 0
  %i.uh = getelementptr inbounds nuw i8, ptr %i.nh, i64 91 ; 2 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !111 ; 3 uses
  br i1 %.not374.i, label %bb.ec, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.uj = zext i8 %i.ui to i32
  %i.uk = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.135, i32 noundef %i.uj) #8 ; 2 uses
  %i.ul = icmp sgt i32 %i.uk, -1
  br i1 %i.ul, label %bb.du, label %cbs_h264_write_pps.exit.thread

bb.du:                                            ; preds = %bb.dt
  %i.um = getelementptr inbounds nuw i8, ptr %i.nh, i64 92 ; 2 uses
  %i.un = load i8, ptr %i.um, align 4, !tbaa !112
  %i.uo = zext i8 %i.un to i32
  %i.up = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.136, i32 noundef %i.uo) #8 ; 2 uses
  %i.uq = icmp sgt i32 %i.up, -1
  br i1 %i.uq, label %bb.dv, label %cbs_h264_write_pps.exit.thread

bb.dv:                                            ; preds = %bb.du
  %i.ur = load i8, ptr %i.um, align 4, !tbaa !112
  %.not378.i = icmp eq i8 %i.ur, 0
  br i1 %.not378.i, label %.loopexit.i101, label %.preheader.i100

.preheader.i100:                                  ; preds = %bb.dv
  %i.us = getelementptr inbounds nuw i8, ptr %i.oa, i64 14
  %i.ut = getelementptr inbounds nuw i8, ptr %i.nh, i64 93
  %i.uu = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.uv = getelementptr inbounds nuw i8, ptr %i.nh, i64 105
  br label %bb.dw

bb.dw:                                            ; preds = %bb.eb, %.preheader.i100
  %indvars.iv422.i = phi i64 [ 0, %.preheader.i100 ], [ %indvars.iv.next423.i, %bb.eb ] ; 6 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 %indvars.iv422.i ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !19
  %i.uy = zext i8 %i.ux to i32
  store i32 1, ptr %i.e, align 4, !tbaa !31
  %i.uz = trunc nuw nsw i64 %indvars.iv422.i to i32
  store i32 %i.uz, ptr %i.uu, align 4, !tbaa !31
  %i.va = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull %i.e, i32 noundef %i.uy, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.vb = icmp sgt i32 %i.va, -1
  br i1 %i.vb, label %bb.dx, label %cbs_h264_write_pps.exit.thread

bb.dx:                                            ; preds = %bb.dw
  %i.vc = load i8, ptr %i.uw, align 1, !tbaa !19
  %.not380.i = icmp eq i8 %i.vc, 0
  br i1 %.not380.i, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.vd = icmp samesign ult i64 %indvars.iv422.i, 6
  br i1 %i.vd, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.ve = getelementptr inbounds nuw [64 x i8], ptr %i.uv, i64 %indvars.iv422.i
  %i.vf = call fastcc i32 @cbs_h264_write_scaling_list(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull readonly %i.ve, i32 noundef 16) ; 2 uses
  %i.vg = icmp slt i32 %i.vf, 0
  br i1 %i.vg, label %cbs_h264_write_pps.exit.thread, label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.vh = getelementptr [64 x i8], ptr %i.nh, i64 %indvars.iv422.i
  %i.vi = getelementptr i8, ptr %i.vh, i64 105
  %i.vj = call fastcc i32 @cbs_h264_write_scaling_list(ptr noundef nonnull %0, ptr noundef %2, ptr noundef readonly %i.vi, i32 noundef 64) ; 2 uses
  %i.vk = icmp slt i32 %i.vj, 0
  br i1 %i.vk, label %cbs_h264_write_pps.exit.thread, label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.dx
  %indvars.iv.next423.i = add nuw nsw i64 %indvars.iv422.i, 1 ; 2 uses
  %i.vl = load i8, ptr %i.us, align 2, !tbaa !47
  %.not379.i = icmp eq i8 %i.vl, 3
  %i.vm = select i1 %.not379.i, i64 6, i64 2
  %i.vn = load i8, ptr %i.uh, align 1, !tbaa !111
  %i.vo = zext i8 %i.vn to i64
  %i.vp = mul nuw nsw i64 %i.vm, %i.vo
  %i.vq = add nuw nsw i64 %i.vp, 6
  %i.vr = icmp samesign ult i64 %indvars.iv.next423.i, %i.vq
  br i1 %i.vr, label %bb.dw, label %.loopexit.i101, !llvm.loop !333

.loopexit.i101:                                   ; preds = %bb.eb, %bb.dv
  %i.vs = getelementptr inbounds nuw i8, ptr %i.nh, i64 873
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !113
  %i.vu = sext i8 %i.vt to i32
  %i.vv = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.138, ptr noundef null, i32 noundef %i.vu, i32 noundef -12, i32 noundef 12) #8 ; 2 uses
  %i.vw = icmp sgt i32 %i.vv, -1
  br i1 %i.vw, label %cbs_h264_write_pps.exit, label %cbs_h264_write_pps.exit.thread

bb.ec:                                            ; preds = %bb.ds
  %.not375.i = icmp eq i8 %i.ui, 0
  br i1 %.not375.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vx = load ptr, ptr %0, align 8, !tbaa !24
  %i.vy = zext i8 %i.ui to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vx, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.135, i64 noundef %i.vy, i64 noundef 0) #8
  br label %cbs_h264_write_pps.exit.thread

bb.ee:                                            ; preds = %bb.ec
  %i.vz = getelementptr inbounds nuw i8, ptr %i.nh, i64 92
  %i.wa = load i8, ptr %i.vz, align 4, !tbaa !112 ; 2 uses
  %.not376.i = icmp eq i8 %i.wa, 0
  br i1 %.not376.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.wb = load ptr, ptr %0, align 8, !tbaa !24
  %i.wc = zext i8 %i.wa to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.wb, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.136, i64 noundef %i.wc, i64 noundef 0) #8
  br label %cbs_h264_write_pps.exit.thread

bb.eg:                                            ; preds = %bb.ee
  %i.wd = getelementptr inbounds nuw i8, ptr %i.nh, i64 873
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !113 ; 2 uses
  %i.wf = load i8, ptr %i.tl, align 2, !tbaa !106 ; 2 uses
  %.not377.i = icmp eq i8 %i.we, %i.wf
  br i1 %.not377.i, label %cbs_h264_write_pps.exit, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.wg = load ptr, ptr %0, align 8, !tbaa !24
  %i.wh = sext i8 %i.we to i64
  %i.wi = sext i8 %i.wf to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.wg, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.138, i64 noundef %i.wh, i64 noundef %i.wi) #8
  br label %cbs_h264_write_pps.exit.thread

cbs_h264_write_pps.exit.thread:                   ; preds = %bb.dh, %bb.db, %bb.da, %bb.cy, %bb.dz, %bb.ea, %bb.dw, %bb.cn, %bb.cm, %bb.cv, %.loopexit.i101, %bb.du, %bb.dt, %bb.ed, %bb.ef, %bb.eh, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %.thread387.i, %bb.di, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.co, %bb.dd, %bb.df, %bb.dc
  %.35.i.ph = phi i32 [ %i.qg, %bb.da ], [ %i.pf, %bb.cv ], [ %i.px, %bb.cy ], [ %i.nk, %bb.cm ], [ %i.qs, %bb.dc ], [ %i.np, %bb.cn ], [ -1094995529, %bb.df ], [ %i.qy, %bb.dd ], [ %i.nu, %bb.co ], [ -1094995529, %bb.cq ], [ %i.og, %bb.cr ], [ %i.ol, %bb.cs ], [ %i.oq, %bb.ct ], [ %i.sb, %bb.di ], [ %i.sg, %.thread387.i ], [ %i.sl, %bb.dj ], [ %i.sq, %bb.dk ], [ %i.sv, %bb.dl ], [ %i.te, %bb.dm ], [ %i.tj, %bb.dn ], [ %i.to, %bb.do ], [ %i.tt, %bb.dp ], [ %i.ty, %bb.dq ], [ %i.ud, %bb.dr ], [ -1094995529, %bb.eh ], [ -1094995529, %bb.ef ], [ -1094995529, %bb.ed ], [ %i.uk, %bb.dt ], [ %i.up, %bb.du ], [ %i.vv, %.loopexit.i101 ], [ %i.va, %bb.dw ], [ %i.vf, %bb.dz ], [ %i.vj, %bb.ea ], [ %i.qn, %bb.db ], [ %i.rv, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread

cbs_h264_write_pps.exit:                          ; preds = %.loopexit.i101, %bb.eg
  %i.wj = call fastcc i32 @cbs_h264_write_rbsp_trailing_bits(ptr noundef nonnull %0, ptr noundef %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.wk = icmp slt i32 %i.wj, 0
  br i1 %i.wk, label %.thread, label %bb.ei

bb.ei:                                            ; preds = %cbs_h264_write_pps.exit
  %i.wl = load ptr, ptr %i.ni, align 8, !tbaa !17 ; 2 uses
  %i.wm = load ptr, ptr %i.ng, align 8, !tbaa !30
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.wo = load i8, ptr %i.wn, align 4, !tbaa !89
  %i.wp = call i32 @ff_cbs_make_unit_refcounted(ptr noundef nonnull %0, ptr noundef nonnull %1) #8 ; 2 uses
  %i.wq = icmp slt i32 %i.wp, 0
  br i1 %i.wq, label %.thread, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wl, i64 312
  %i.ws = zext i8 %i.wo to i64
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.ws ; 2 uses
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !114
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wl, i64 2368 ; 2 uses
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !115
  %i.wx = icmp eq ptr %i.wu, %i.ww
  br i1 %i.wx, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  store ptr null, ptr %i.wv, align 8, !tbaa !115
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !79 ; 2 uses
  %.not.i103 = icmp eq ptr %i.wz, null
  br i1 %.not.i103, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.3, i32 noundef 379) #8
  call void @abort() #9
  unreachable

bb.en:                                            ; preds = %bb.el
  call void @av_refstruct_replace(ptr noundef nonnull %i.wt, ptr noundef nonnull %i.wz) #8
  br label %cbs_h264_write_sps_extension.exit

bb.eo:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !30 ; 41 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !17 ; 6 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.139) #8
  %i.xe = tail call fastcc i32 @cbs_h264_write_nal_unit_header(ptr noundef %0, ptr noundef %2, ptr noundef readonly %i.xb, i32 noundef 524322) ; 2 uses
  %i.xf = icmp slt i32 %i.xe, 0
  br i1 %i.xf, label %.thread, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xb, i64 1 ; 3 uses
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !117 ; 2 uses
  %i.xi = icmp eq i8 %i.xh, 19
  br i1 %i.xi, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xd, i64 2376
  %i.xk = load i8, ptr %i.xj, align 8, !tbaa !118 ; 2 uses
  %.not.i117 = icmp eq i8 %i.xk, 0
  br i1 %.not.i117, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.xl = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xl, i32 noundef 16, ptr noundef nonnull @.str.140) #8
  br label %.thread

bb.es:                                            ; preds = %bb.eq, %bb.ep
  %.0383.in.in.i = phi i8 [ %i.xk, %bb.eq ], [ %i.xh, %bb.ep ]
  %.0383.in.in.fr.i = freeze i8 %.0383.in.in.i
  %.0383.in.i = icmp eq i8 %.0383.in.in.fr.i, 5   ; 3 uses
  %.0383.i = zext i1 %.0383.in.i to i32
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !119
  %i.xo = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.141, ptr noundef null, i32 noundef %i.xn, i32 noundef 0, i32 noundef 139263) #8 ; 2 uses
  %i.xp = icmp sgt i32 %i.xo, -1
  br i1 %i.xp, label %bb.et, label %.thread

bb.et:                                            ; preds = %bb.es
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xb, i64 8 ; 2 uses
  %i.xr = load i8, ptr %i.xq, align 4, !tbaa !120
  %i.xs = zext i8 %i.xr to i32
  %i.xt = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.142, ptr noundef null, i32 noundef %i.xs, i32 noundef 0, i32 noundef 9) #8 ; 2 uses
  %i.xu = icmp sgt i32 %i.xt, -1
  br i1 %i.xu, label %bb.eu, label %.thread

bb.eu:                                            ; preds = %bb.et
  %i.xv = load i8, ptr %i.xq, align 4, !tbaa !120 ; 2 uses
  %i.xw = zext i8 %i.xv to i32
  %i.xx = urem i8 %i.xv, 5                        ; 7 uses
  %i.xy = icmp eq i8 %i.xx, 1                     ; 3 uses
  %i.xz = icmp eq i8 %i.xx, 3
  br i1 %.0383.in.i, label %switch.early.test.i, label %bb.ew

switch.early.test.i:                              ; preds = %bb.eu
  switch i8 %i.xx, label %bb.ev [
    i8 4, label %bb.ew
    i8 2, label %bb.ew
  ]

bb.ev:                                            ; preds = %switch.early.test.i
  %i.ya = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ya, i32 noundef 16, ptr noundef nonnull @.str.143, i32 noundef %i.xw) #8
  br label %.thread

bb.ew:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %bb.eu
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xb, i64 9 ; 2 uses
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !121
  %i.yd = zext i8 %i.yc to i32
  %i.ye = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.112, ptr noundef null, i32 noundef %i.yd, i32 noundef 0, i32 noundef 255) #8 ; 2 uses
  %i.yf = icmp sgt i32 %i.ye, -1
  br i1 %i.yf, label %bb.ex, label %.thread

bb.ex:                                            ; preds = %bb.ew
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xd, i64 312
  %i.yh = load i8, ptr %i.yb, align 1, !tbaa !121 ; 2 uses
  %i.yi = zext i8 %i.yh to i64
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.yi
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !114 ; 15 uses
  %.not449.i = icmp eq ptr %i.yk, null
  br i1 %.not449.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.yl = load ptr, ptr %0, align 8, !tbaa !24
  %i.ym = zext i8 %i.yh to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.yl, i32 noundef 16, ptr noundef nonnull @.str.144, i32 noundef %i.ym) #8
  br label %.thread

bb.ez:                                            ; preds = %bb.ex
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xd, i64 2368
  store ptr %i.yk, ptr %i.yn, align 8, !tbaa !115
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xd, i64 56
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yk, i64 5
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !90  ; 2 uses
  %i.yr = zext i8 %i.yq to i64
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %i.yr
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !75 ; 11 uses
end_hunk_1
