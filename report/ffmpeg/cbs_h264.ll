Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cbs_h264?download=true
inline.NumInlined: 53
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cbs_h264_read_nal_unit:bb.a

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
  %.35.i.ph = phi i32 [ %i.qy, %.critedge.i93 ], [ %i.qw, %bb.dv ], [ %i.to, %bb.er ], [ %i.ti, %bb.ep ], [ %i.tw, %bb.eu ], [ %i.vf, %bb.fb ], [ %i.sl, %bb.ej ], [ %i.ui, %bb.ex ], [ %i.rd, %bb.dy ], [ -1094995529, %bb.ea ], [ %i.rn, %bb.ec ], [ %i.rs, %bb.ee ], [ %i.rx, %bb.eg ], [ %i.uc, %bb.fd ], [ %i.vn, %bb.fe ], [ %i.vs, %bb.fg ], [ %i.vx, %bb.fi ], [ %i.wc, %bb.fk ], [ %i.wl, %bb.fm ], [ %i.wq, %bb.fo ], [ %i.wv, %bb.fq ], [ %i.xa, %bb.fs ], [ %i.xf, %bb.fu ], [ %i.xk, %bb.fw ], [ %i.xs, %bb.fz ], [ %i.xx, %bb.gb ], [ %i.zb, %bb.gk ], [ %i.ta, %bb.em ], [ %i.yh, %bb.ge ], [ -12, %bb.ey ], [ %i.yo, %bb.gh ], [ %i.ys, %bb.gi ]
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
  %i.abp = zext i8 %i.abo to i64
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %i.abp
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !75 ; 11 uses
  %.not390.i = icmp eq ptr %i.abr, null
  br i1 %.not390.i, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.abs = load ptr, ptr %0, align 8, !tbaa !24
  %i.abt = zext i8 %i.abo to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.abs, i32 noundef 16, ptr noundef nonnull @.str.113, i32 noundef %i.abt) #8
  br label %.thread

bb.hh:                                            ; preds = %bb.hf
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aae, i64 2360
  store ptr %i.abr, ptr %i.abu, align 8, !tbaa !78
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abr, i64 15
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !48
  %.not391.i = icmp eq i8 %i.abw, 0
  br i1 %.not391.i, label %bb.hk, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  %i.abx = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2, ptr noundef nonnull @.str.145, ptr noundef null, ptr noundef nonnull %i.l, i32 noundef 0, i32 noundef 2) #8 ; 2 uses
  %i.aby = icmp sgt i32 %i.abx, -1
  br i1 %i.aby, label %.thread416.i, label %bb.hj

.thread416.i:                                     ; preds = %bb.hi
  %i.abz = load i32, ptr %i.l, align 4, !tbaa !31
  %i.aca = trunc i32 %i.abz to i8
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aac, i64 10
  store i8 %i.aca, ptr %i.acb, align 2, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
end_hunk_0
begin_hunk_1_@cbs_h264_read_nal_unit:bb.a
  %i.aka = load i8, ptr %i.agr, align 2, !tbaa !91
  %.not408.i = icmp eq i8 %i.aka, 0
  br i1 %.not408.i, label %cbs_h264_read_slice_header.exit, label %.preheader.i108

.preheader.i108:                                  ; preds = %bb.km, %bb.kn
  %.val.i = load i32, ptr %i.du, align 8, !tbaa !28
  %i.akb = and i32 %.val.i, 7
  %.not409.i = icmp eq i32 %i.akb, 0
  br i1 %.not409.i, label %cbs_h264_read_slice_header.exit, label %bb.kn

bb.kn:                                            ; preds = %.preheader.i108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #8
  %i.akc = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.168, ptr noundef null, ptr noundef nonnull %i.ah, i32 noundef 1, i32 noundef 1) #8 ; 2 uses
  %i.akd = icmp sgt i32 %i.akc, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #8
  br i1 %i.akd, label %.preheader.i108, label %.thread, !llvm.loop !314

.critedge.i103:                                   ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  br label %.thread

cbs_h264_read_slice_header.exit:                  ; preds = %.preheader.i108, %bb.km
  %i.ake = call i32 @ff_cbs_h2645_read_more_rbsp_data(ptr noundef nonnull %2) #8
  %.not = icmp eq i32 %i.ake, 0
  br i1 %.not, label %.thread, label %bb.ko

bb.ko:                                            ; preds = %cbs_h264_read_slice_header.exit
  %.val = load i32, ptr %i.du, align 8, !tbaa !28 ; 2 uses
  %i.akf = load i64, ptr %i.dn, align 8, !tbaa !317
  %i.akg = trunc i64 %i.akf to i32
  %i.akh = sdiv i32 %.val, 8                      ; 2 uses
  %i.aki = srem i32 %.val, 8
  %i.akj = sub nsw i32 %i.akg, %i.akh
  %i.akk = sext i32 %i.akj to i64
  %i.akl = getelementptr inbounds nuw i8, ptr %i.aac, i64 2184
  store i64 %i.akk, ptr %i.akl, align 8, !tbaa !144
  %i.akm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !325
  %i.ako = call ptr @av_buffer_ref(ptr noundef %i.akn) #8 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.aac, i64 2176
  store ptr %i.ako, ptr %i.akp, align 8, !tbaa !326
  %.not85 = icmp eq ptr %i.ako, null
  br i1 %.not85, label %.thread, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.akq = load ptr, ptr %i.dl, align 8, !tbaa !316
  %i.akr = sext i32 %i.akh to i64
  %i.aks = getelementptr inbounds i8, ptr %i.akq, i64 %i.akr
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aac, i64 2168
  store ptr %i.aks, ptr %i.akt, align 8, !tbaa !145
  %i.aku = getelementptr inbounds nuw i8, ptr %i.aac, i64 2192
  store i32 %i.aki, ptr %i.aku, align 8, !tbaa !146
  br label %cbs_h264_read_sps_extension.exit

bb.kq:                                            ; preds = %bb.c
  %i.akv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !30 ; 2 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.196) #8
  %i.akx = call fastcc i32 @cbs_h264_read_nal_unit_header(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.akw, i32 noundef 512) ; 2 uses
  %i.aky = icmp slt i32 %i.akx, 0
  br i1 %i.aky, label %.thread, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.akz = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 3, ptr noundef nonnull @.str.197, ptr noundef nonnull %i.h) #8 ; 2 uses
  %i.ala = icmp sgt i32 %i.akz, -1
  br i1 %i.ala, label %bb.ks, label %.critedge.i110

bb.ks:                                            ; preds = %bb.kr
  %i.alb = load i32, ptr %i.h, align 4, !tbaa !31
  %i.alc = trunc i32 %i.alb to i8
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akw, i64 4
  store i8 %i.alc, ptr %i.ald, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.ale = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef null, ptr noundef nonnull %i.f, i32 noundef 1, i32 noundef 1) #8 ; 2 uses
  %i.alf = icmp sgt i32 %i.ale, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br i1 %i.alf, label %.preheader.i.i111, label %.thread

.preheader.i.i111:                                ; preds = %bb.ks, %bb.kt
  %.val.i.i112 = load i32, ptr %i.du, align 8, !tbaa !28
  %i.alg = and i32 %.val.i.i112, 7
  %.not.i.i113 = icmp eq i32 %i.alg, 0
  br i1 %.not.i.i113, label %cbs_h264_read_sps_extension.exit, label %bb.kt

bb.kt:                                            ; preds = %.preheader.i.i111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.alh = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef null, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.ali = icmp sgt i32 %i.alh, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br i1 %i.ali, label %.preheader.i.i111, label %.thread, !llvm.loop !0

.critedge.i110:                                   ; preds = %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %.thread

bb.ku:                                            ; preds = %bb.c
  %i.alj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !30 ; 2 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.198) #8
  %i.all = call fastcc i32 @cbs_h264_read_nal_unit_header(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.alk, i32 noundef 64) ; 2 uses
  %i.alm = icmp slt i32 %i.all, 0
  br i1 %i.alm, label %.thread, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  %i.alo = call i32 @ff_cbs_sei_read_message_list(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %i.aln, i32 noundef 1) #8 ; 2 uses
  %i.alp = icmp slt i32 %i.alo, 0
  br i1 %i.alp, label %.thread, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.alq = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 1, i32 noundef 1) #8 ; 2 uses
  %i.alr = icmp sgt i32 %i.alq, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br i1 %i.alr, label %.preheader.i.i115, label %.thread

.preheader.i.i115:                                ; preds = %bb.kw, %bb.kx
  %.val.i.i116 = load i32, ptr %i.du, align 8, !tbaa !28
  %i.als = and i32 %.val.i.i116, 7
  %.not.i.i117 = icmp eq i32 %i.als, 0
  br i1 %.not.i.i117, label %cbs_h264_read_sps_extension.exit, label %bb.kx

bb.kx:                                            ; preds = %.preheader.i.i115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.alt = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef null, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.alu = icmp sgt i32 %i.alt, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br i1 %i.alu, label %.preheader.i.i115, label %.thread, !llvm.loop !0

bb.ky:                                            ; preds = %bb.c
  %i.alv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !30 ; 2 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.199) #8
  %i.alx = call fastcc i32 @cbs_h264_read_nal_unit_header(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.alw, i32 noundef 4096) ; 2 uses
  %i.aly = icmp slt i32 %i.alx, 0
  br i1 %i.aly, label %.thread, label %.preheader.i118

.preheader.i118:                                  ; preds = %bb.ky
  %.val30.i = load ptr, ptr %2, align 8, !tbaa !318
  %.val2331.i = load i32, ptr %i.du, align 8, !tbaa !28 ; 2 uses
  %i.alz = lshr i32 %.val2331.i, 3
  %i.ama = zext nneg i32 %i.alz to i64
  %i.amb = getelementptr inbounds nuw i8, ptr %.val30.i, i64 %i.ama
  %i.amc = load i32, ptr %i.amb, align 1, !tbaa !19
  %i.amd = call i32 @llvm.bswap.i32(i32 %i.amc)
  %i.ame = and i32 %.val2331.i, 7
  %i.amf = shl i32 %i.amd, %i.ame
  %i.amg = icmp ugt i32 %i.amf, -16777217
  br i1 %i.amg, label %.lr.ph.i122, label %._crit_edge.i

.lr.ph.i122:                                      ; preds = %.preheader.i118
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alw, i64 4 ; 2 uses
  br label %bb.kz

bb.kz:                                            ; preds = %bb.la, %.lr.ph.i122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ami = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 8, ptr noundef nonnull @.str.200, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef 255, i32 noundef 255) #8 ; 2 uses
  %i.amj = icmp sgt i32 %i.ami, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br i1 %i.amj, label %bb.la, label %.thread

bb.la:                                            ; preds = %bb.kz
  %i.amk = load i32, ptr %i.amh, align 4, !tbaa !150
  %i.aml = add i32 %i.amk, 1
  store i32 %i.aml, ptr %i.amh, align 4, !tbaa !150
  %.val.i123 = load ptr, ptr %2, align 8, !tbaa !318
  %.val23.i = load i32, ptr %i.du, align 8, !tbaa !28 ; 2 uses
  %i.amm = lshr i32 %.val23.i, 3
  %i.amn = zext nneg i32 %i.amm to i64
  %i.amo = getelementptr inbounds nuw i8, ptr %.val.i123, i64 %i.amn
  %i.amp = load i32, ptr %i.amo, align 1, !tbaa !19
  %i.amq = call i32 @llvm.bswap.i32(i32 %i.amp)
  %i.amr = and i32 %.val23.i, 7
  %i.ams = shl i32 %i.amq, %i.amr
  %i.amt = icmp ugt i32 %i.ams, -16777217
  br i1 %i.amt, label %bb.kz, label %._crit_edge.i, !llvm.loop !315

._crit_edge.i:                                    ; preds = %bb.la, %.preheader.i118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.amu = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1) #8 ; 2 uses
  %i.amv = icmp sgt i32 %i.amu, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.amv, label %.preheader.i.i119, label %.thread

.preheader.i.i119:                                ; preds = %._crit_edge.i, %bb.lb
  %.val.i.i120 = load i32, ptr %i.du, align 8, !tbaa !28
  %i.amw = and i32 %.val.i.i120, 7
  %.not.i.i121 = icmp eq i32 %i.amw, 0
  br i1 %.not.i.i121, label %cbs_h264_read_sps_extension.exit, label %bb.lb

bb.lb:                                            ; preds = %.preheader.i.i119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.amx = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef null, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.amy = icmp sgt i32 %i.amx, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br i1 %i.amy, label %.preheader.i.i119, label %.thread, !llvm.loop !0

bb.lc:                                            ; preds = %bb.c, %bb.c
  %i.amz = icmp eq i32 %i.dx, 10                  ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %i.ana = select i1 %i.amz, ptr @.str.201, ptr @.str.202
  %. = select i1 %i.amz, i32 1024, i32 2048
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull %i.ana) #8
  %5 = call fastcc range(i32 -2147483648, 1) i32 @cbs_h264_read_nal_unit_header(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4, i32 noundef %.) ; 2 uses
  %i.anb = icmp slt i32 %5, 0
  br i1 %i.anb, label %.thread, label %cbs_h264_read_sps_extension.exit

cbs_h264_read_sps_extension.exit:                 ; preds = %.preheader.i.i119, %.preheader.i.i115, %.preheader.i.i111, %.preheader.i.i, %bb.kp, %bb.gr, %bb.dd, %bb.lc
  br label %.thread

.thread:                                          ; preds = %bb.kz, %bb.lb, %bb.kx, %bb.kt, %bb.kn, %bb.du, %._crit_edge.i, %bb.ky, %bb.kw, %bb.ku, %bb.kv, %bb.ks, %.critedge.i110, %bb.kq, %bb.gy, %bb.ha, %bb.hc, %bb.he, %bb.hg, %bb.hj, %bb.hl, %bb.ho, %bb.hr, %bb.hw, %bb.ig, %bb.ik, %bb.hz, %bb.id, %bb.ip, %bb.it, %bb.iw, %bb.iz, %bb.jc, %bb.jp, %bb.jr, %bb.jv, %bb.jx, %bb.ka, %bb.kd, %bb.kf, %bb.kl, %bb.jm, %bb.gs, %bb.jk, %bb.jg, %.critedge.i103, %bb.jf, %bb.gv, %bb.ko, %cbs_h264_read_slice_header.exit, %bb.gm, %cbs_h264_read_pps.exit.thread, %cbs_h264_read_pps.exit, %bb.dk, %bb.do, %bb.dm, %bb.dh, %bb.dq, %bb.ds, %.critedge.i91, %bb.dt, %bb.de, %bb.cy, %cbs_h264_read_sps.exit.thread, %cbs_h264_read_sps.exit, %bb.c, %bb.lc, %bb.b, %bb.a, %cbs_h264_read_sps_extension.exit
  %.3 = phi i32 [ %i.alo, %bb.kv ], [ -1094995529, %bb.a ], [ %5, %bb.lc ], [ 0, %cbs_h264_read_sps_extension.exit ], [ -38, %bb.c ], [ %i.dv, %bb.b ], [ %i.oz, %bb.de ], [ %i.zk, %cbs_h264_read_pps.exit ], [ %i.of, %cbs_h264_read_sps.exit ], [ -1094995529, %bb.gv ], [ %i.akx, %bb.kq ], [ %i.om, %bb.cy ], [ %.45.i.ph, %cbs_h264_read_sps.exit.thread ], [ %i.alx, %bb.ky ], [ %i.pl, %bb.dk ], [ %i.py, %bb.do ], [ %i.pq, %bb.dm ], [ %i.pg, %bb.dh ], [ %i.qd, %bb.dq ], [ %i.qi, %bb.ds ], [ %i.pb, %.critedge.i91 ], [ %i.qn, %bb.dt ], [ %i.zq, %bb.gm ], [ %.35.i.ph, %cbs_h264_read_pps.exit.thread ], [ -12, %bb.ko ], [ -1094995529, %cbs_h264_read_slice_header.exit ], [ %i.qq, %bb.du ], [ %i.aar, %bb.gy ], [ -1094995529, %bb.ha ], [ %i.abb, %bb.hc ], [ -1094995529, %bb.he ], [ -1094995529, %bb.hg ], [ %i.abx, %bb.hj ], [ %i.acg, %bb.hl ], [ %i.acn, %bb.ho ], [ %i.acs, %bb.hr ], [ %i.ada, %bb.hw ], [ %i.aea, %bb.ig ], [ %i.aei, %bb.ik ], [ %i.adl, %bb.hz ], [ %i.adu, %bb.id ], [ %i.aer, %bb.ip ], [ %i.afc, %bb.it ], [ %i.afh, %bb.iw ], [ %i.afm, %bb.iz ], [ %i.afr, %bb.jc ], [ %i.agu, %bb.jp ], [ %i.ahf, %bb.jr ], [ %i.ahl, %bb.jv ], [ %i.ahq, %bb.jx ], [ %i.ahx, %bb.ka ], [ %i.aic, %bb.kd ], [ %i.aih, %bb.kf ], [ %i.ajv, %bb.kl ], [ %i.agp, %bb.jm ], [ %i.aaf, %bb.gs ], [ %i.agm, %bb.jk ], [ %i.agf, %bb.jg ], [ %i.aan, %.critedge.i103 ], [ -1163346256, %bb.jf ], [ %i.akc, %bb.kn ], [ %i.ale, %bb.ks ], [ %i.akz, %.critedge.i110 ], [ %i.alh, %bb.kt ], [ %i.alq, %bb.kw ], [ %i.all, %bb.ku ], [ %i.amx, %bb.lb ], [ %i.alt, %bb.kx ], [ %i.amu, %._crit_edge.i ], [ %i.ami, %bb.kz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_write_nal_unit(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  %i.c = alloca [2 x i32], align 4                ; 6 uses
  %i.d = alloca [2 x i32], align 4                ; 6 uses
  %i.e = alloca [2 x i32], align 4                ; 6 uses
  %i.f = alloca [2 x i32], align 4                ; 18 uses
  %i.g = alloca [2 x i32], align 4                ; 6 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !29     ; 2 uses
  switch i32 %i.h, label %bb.ja [
    i32 7, label %bb.b
    i32 13, label %bb.ca
    i32 8, label %bb.cm
    i32 1, label %bb.eo
    i32 5, label %bb.eo
    i32 19, label %bb.eo
    i32 9, label %bb.ik
    i32 6, label %bb.ip
    i32 12, label %bb.iu
    i32 10, label %bb.iy
    i32 11, label %bb.iz
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.10) #8
  %i.k = tail call fastcc i32 @cbs_h264_write_nal_unit_header(ptr noundef %0, ptr noundef %2, ptr noundef readonly %i.j, i32 noundef 128) ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %cbs_h264_write_sps.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !37
  %i.o = zext i8 %i.n to i32
  %i.p = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 8, ptr noundef nonnull @.str.11, i32 noundef %i.o) #8 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.d, label %cbs_h264_write_sps.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !38
  %i.t = zext i8 %i.s to i32
  %i.u = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %i.t) #8 ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.e, label %cbs_h264_write_sps.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.x = load i8, ptr %i.w, align 2, !tbaa !39
  %i.y = zext i8 %i.x to i32
  %i.z = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %i.y) #8 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.f, label %cbs_h264_write_sps.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !40
  %i.ad = zext i8 %i.ac to i32
  %i.ae = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %i.ad) #8 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.g, label %cbs_h264_write_sps.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !41
  %i.ai = zext i8 %i.ah to i32
  %i.aj = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %i.ai) #8 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.h, label %cbs_h264_write_sps.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !42
  %i.an = zext i8 %i.am to i32
  %i.ao = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %i.an) #8 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.i, label %cbs_h264_write_sps.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !43
  %i.as = zext i8 %i.ar to i32
  %i.at = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %i.as) #8 ; 2 uses
  %i.au = icmp sgt i32 %i.at, -1
  br i1 %i.au, label %bb.j, label %cbs_h264_write_sps.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !44
  %i.ax = zext i8 %i.aw to i32
  %i.ay = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef %i.ax, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.k, label %cbs_h264_write_sps.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !45
  %i.bc = zext i8 %i.bb to i32
  %i.bd = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 8, ptr noundef nonnull @.str.19, i32 noundef %i.bc) #8 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.l, label %cbs_h264_write_sps.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !46
  %i.bh = zext i8 %i.bg to i32
  %i.bi = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef %i.bh, i32 noundef 0, i32 noundef 31) #8 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, -1
  br i1 %i.bj, label %bb.m, label %cbs_h264_write_sps.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bk = load i8, ptr %i.m, align 4, !tbaa !37   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 14 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !47  ; 3 uses
  switch i8 %i.bk, label %bb.am [
    i8 100, label %bb.n
    i8 110, label %bb.n
    i8 122, label %bb.n
    i8 -12, label %bb.n
    i8 44, label %bb.n
    i8 83, label %bb.n
    i8 86, label %bb.n
    i8 118, label %bb.n
    i8 -128, label %bb.n
    i8 -118, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.bn = zext i8 %i.bm to i32
  %i.bo = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef %i.bn, i32 noundef 0, i32 noundef 3) #8 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.o, label %cbs_h264_write_sps.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bq = load i8, ptr %i.bl, align 2, !tbaa !47
  %i.br = icmp eq i8 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !48  ; 3 uses
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = zext i8 %i.bt to i32
  %i.bv = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef %i.bu) #8 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.s, label %cbs_h264_write_sps.exit.thread

bb.q:                                             ; preds = %bb.o
  %.not473.i = icmp eq i8 %i.bt, 0
  br i1 %.not473.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = load ptr, ptr %0, align 8, !tbaa !24
  %i.by = zext i8 %i.bt to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bx, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.22, i64 noundef %i.by, i64 noundef 0) #8
  br label %cbs_h264_write_sps.exit.thread

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !49
  %i.cb = zext i8 %i.ca to i32
  %i.cc = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef null, i32 noundef %i.cb, i32 noundef 0, i32 noundef 6) #8 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, -1
  br i1 %i.cd, label %bb.t, label %cbs_h264_write_sps.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !50
  %i.cg = zext i8 %i.cf to i32
  %i.ch = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef %i.cg, i32 noundef 0, i32 noundef 6) #8 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %bb.u, label %cbs_h264_write_sps.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !51
  %i.cl = zext i8 %i.ck to i32
  %i.cm = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %i.cl) #8 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, -1
  br i1 %i.cn, label %bb.v, label %cbs_h264_write_sps.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 19 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !52
  %i.cq = zext i8 %i.cp to i32
  %i.cr = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef %i.cq) #8 ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %bb.w, label %cbs_h264_write_sps.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ct = load i8, ptr %i.co, align 1, !tbaa !52
  %.not474.i = icmp eq i8 %i.ct, 0
  br i1 %.not474.i, label %.loopexit484.i, label %.preheader483.i

.preheader483.i:                                  ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.cx = load i8, ptr %i.cu, align 4, !tbaa !19
  %i.cy = zext i8 %i.cx to i32
  store i32 1, ptr %i.f, align 4, !tbaa !31
  store i32 0, ptr %i.cv, align 4, !tbaa !31
  %i.cz = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.f, i32 noundef %i.cy, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, -1
  br i1 %i.da, label %bb.x, label %cbs_h264_write_sps.exit.thread

bb.x:                                             ; preds = %.preheader483.i
  %i.db = load i8, ptr %i.cu, align 4, !tbaa !19
  %.not479.peel.i = icmp eq i8 %i.db, 0
  br i1 %.not479.peel.i, label %.peel.next.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = call fastcc i32 @cbs_h264_write_scaling_list(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %i.cw, i32 noundef 16) ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %cbs_h264_write_sps.exit.thread, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.y, %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 21 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19
  %i.dg = zext i8 %i.df to i32
  store i32 1, ptr %i.f, align 4, !tbaa !31
  store i32 1, ptr %i.cv, align 4, !tbaa !31
  %i.dh = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.f, i32 noundef %i.dg, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.di = icmp sgt i32 %i.dh, -1
  br i1 %i.di, label %bb.z, label %cbs_h264_write_sps.exit.thread

bb.z:                                             ; preds = %.peel.next.i
  %i.dj = load i8, ptr %i.de, align 1, !tbaa !19
  %.not479.peel494.i = icmp eq i8 %i.dj, 0
  br i1 %.not479.peel494.i, label %.peel.next493.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.dl = call fastcc i32 @cbs_h264_write_scaling_list(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %i.dk, i32 noundef 16) ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %cbs_h264_write_sps.exit.thread, label %.peel.next493.i

.peel.next493.i:                                  ; preds = %bb.aa, %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 22 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !19
  %i.dp = zext i8 %i.do to i32
  store i32 1, ptr %i.f, align 4, !tbaa !31
  store i32 2, ptr %i.cv, align 4, !tbaa !31
  %i.dq = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.f, i32 noundef %i.dp, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, -1
  br i1 %i.dr, label %bb.ab, label %cbs_h264_write_sps.exit.thread

bb.ab:                                            ; preds = %.peel.next493.i
  %i.ds = load i8, ptr %i.dn, align 2, !tbaa !19
  %.not479.peel498.i = icmp eq i8 %i.ds, 0
  br i1 %.not479.peel498.i, label %.peel.next497.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.du = call fastcc i32 @cbs_h264_write_scaling_list(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %i.dt, i32 noundef 16) ; 2 uses
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %cbs_h264_write_sps.exit.thread, label %.peel.next497.i

.peel.next497.i:                                  ; preds = %bb.ac, %bb.ab
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 23 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !19
  %i.dy = zext i8 %i.dx to i32
  store i32 1, ptr %i.f, align 4, !tbaa !31
  store i32 3, ptr %i.cv, align 4, !tbaa !31
  %i.dz = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.f, i32 noundef %i.dy, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, -1
  br i1 %i.ea, label %bb.ad, label %cbs_h264_write_sps.exit.thread

bb.ad:                                            ; preds = %.peel.next497.i
  %i.eb = load i8, ptr %i.dw, align 1, !tbaa !19
  %.not479.peel502.i = icmp eq i8 %i.eb, 0
  br i1 %.not479.peel502.i, label %.peel.next501.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.ed = call fastcc i32 @cbs_h264_write_scaling_list(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %i.ec, i32 noundef 16) ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 0
  br i1 %i.ee, label %cbs_h264_write_sps.exit.thread, label %.peel.next501.i

.peel.next501.i:                                  ; preds = %bb.ae, %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !19
  %i.eh = zext i8 %i.eg to i32
  store i32 1, ptr %i.f, align 4, !tbaa !31
  store i32 4, ptr %i.cv, align 4, !tbaa !31
  %i.ei = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.f, i32 noundef %i.eh, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, -1
  br i1 %i.ej, label %bb.af, label %cbs_h264_write_sps.exit.thread

bb.af:                                            ; preds = %.peel.next501.i
  %i.ek = load i8, ptr %i.ef, align 4, !tbaa !19
  %.not479.peel506.i = icmp eq i8 %i.ek, 0
  br i1 %.not479.peel506.i, label %.peel.next505.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.em = call fastcc i32 @cbs_h264_write_scaling_list(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %i.el, i32 noundef 16) ; 2 uses
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %cbs_h264_write_sps.exit.thread, label %.peel.next505.i

.peel.next505.i:                                  ; preds = %bb.ag, %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 25 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !19
  %i.eq = zext i8 %i.ep to i32
  store i32 1, ptr %i.f, align 4, !tbaa !31
  store i32 5, ptr %i.cv, align 4, !tbaa !31
  %i.er = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.f, i32 noundef %i.eq, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.es = icmp sgt i32 %i.er, -1
  br i1 %i.es, label %bb.ah, label %cbs_h264_write_sps.exit.thread

bb.ah:                                            ; preds = %.peel.next505.i
  %i.et = load i8, ptr %i.eo, align 1, !tbaa !19
  %.not479.peel510.i = icmp eq i8 %i.et, 0
  br i1 %.not479.peel510.i, label %.peel.next509.i.preheader, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  %i.ev = call fastcc i32 @cbs_h264_write_scaling_list(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %i.eu, i32 noundef 16) ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %cbs_h264_write_sps.exit.thread, label %.peel.next509.i.preheader

.peel.next509.i.preheader:                        ; preds = %bb.ai, %bb.ah
  br label %.peel.next509.i

.peel.next509.i:                                  ; preds = %.peel.next509.i.preheader, %bb.al
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.al ], [ 6, %.peel.next509.i.preheader ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv.i ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !19
  %i.ez = zext i8 %i.ey to i32
  store i32 1, ptr %i.f, align 4, !tbaa !31
  %i.fa = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.fa, ptr %i.cv, align 4, !tbaa !31
  %i.fb = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.f, i32 noundef %i.ez, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, -1
  br i1 %i.fc, label %bb.aj, label %cbs_h264_write_sps.exit.thread

bb.aj:                                            ; preds = %.peel.next509.i
  %i.fd = load i8, ptr %i.ex, align 1, !tbaa !19
  %.not479.i = icmp eq i8 %i.fd, 0
  br i1 %.not479.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fe = getelementptr [64 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.ff = getelementptr i8, ptr %i.fe, i64 32
  %i.fg = call fastcc i32 @cbs_h264_write_scaling_list(ptr noundef %0, ptr noundef %2, ptr noundef readonly %i.ff, i32 noundef 64) ; 2 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %cbs_h264_write_sps.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fi = load i8, ptr %i.bl, align 2, !tbaa !47
  %.not475.i = icmp eq i8 %i.fi, 3
  %i.fj = select i1 %.not475.i, i64 12, i64 8
  %i.fk = icmp samesign ult i64 %indvars.iv.next.i, %i.fj
  br i1 %i.fk, label %.peel.next509.i, label %.loopexit484.i, !llvm.loop !327

bb.am:                                            ; preds = %bb.m
  %i.fl = icmp ne i8 %i.bk, -73                   ; 2 uses
  %i.fm = zext i1 %i.fl to i8
  %.not.i = icmp eq i8 %i.bm, %i.fm
  br i1 %.not.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fn = load ptr, ptr %0, align 8, !tbaa !24
  %i.fo = zext i8 %i.bm to i64
  %i.fp = zext i1 %i.fl to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fn, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.21, i64 noundef %i.fo, i64 noundef %i.fp) #8
  br label %cbs_h264_write_sps.exit.thread

bb.ao:                                            ; preds = %bb.am
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !48  ; 2 uses
  %.not470.i = icmp eq i8 %i.fr, 0
  br i1 %.not470.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fs = load ptr, ptr %0, align 8, !tbaa !24
  %i.ft = zext i8 %i.fr to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fs, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.22, i64 noundef %i.ft, i64 noundef 0) #8
  br label %cbs_h264_write_sps.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fv = load i8, ptr %i.fu, align 4, !tbaa !49  ; 2 uses
  %.not471.i = icmp eq i8 %i.fv, 0
  br i1 %.not471.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fw = load ptr, ptr %0, align 8, !tbaa !24
  %i.fx = zext i8 %i.fv to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fw, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.23, i64 noundef %i.fx, i64 noundef 0) #8
  br label %cbs_h264_write_sps.exit.thread

bb.as:                                            ; preds = %bb.aq
  %i.fy = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !50  ; 2 uses
  %.not472.i = icmp eq i8 %i.fz, 0
  br i1 %.not472.i, label %.loopexit484.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ga = load ptr, ptr %0, align 8, !tbaa !24
  %i.gb = zext i8 %i.fz to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ga, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.24, i64 noundef %i.gb, i64 noundef 0) #8
  br label %cbs_h264_write_sps.exit.thread

.loopexit484.i:                                   ; preds = %bb.al, %bb.as, %bb.w
  %i.gc = getelementptr inbounds nuw i8, ptr %i.j, i64 800
  %i.gd = load i8, ptr %i.gc, align 4, !tbaa !54
  %i.ge = zext i8 %i.gd to i32
  %i.gf = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef null, i32 noundef %i.ge, i32 noundef 0, i32 noundef 12) #8 ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, -1
  br i1 %i.gg, label %bb.au, label %cbs_h264_write_sps.exit.thread

bb.au:                                            ; preds = %.loopexit484.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.j, i64 801 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !55
  %i.gj = zext i8 %i.gi to i32
  %i.gk = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef null, i32 noundef %i.gj, i32 noundef 0, i32 noundef 2) #8 ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, -1
  br i1 %i.gl, label %bb.av, label %cbs_h264_write_sps.exit.thread

bb.av:                                            ; preds = %bb.au
  %i.gm = load i8, ptr %i.gh, align 1, !tbaa !55
  switch i8 %i.gm, label %.loopexit.i [
    i8 0, label %bb.aw
    i8 1, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 802
  %i.go = load i8, ptr %i.gn, align 2, !tbaa !56
  %i.gp = zext i8 %i.go to i32
  %i.gq = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.30, ptr noundef null, i32 noundef %i.gp, i32 noundef 0, i32 noundef 12) #8 ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, -1
  br i1 %i.gr, label %.loopexit.i, label %cbs_h264_write_sps.exit.thread

bb.ax:                                            ; preds = %bb.av
  %i.gs = getelementptr inbounds nuw i8, ptr %i.j, i64 803
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !57
  %i.gu = zext i8 %i.gt to i32
  %i.gv = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.31, i32 noundef %i.gu) #8 ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, -1
  br i1 %i.gw, label %bb.ay, label %cbs_h264_write_sps.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.gx = getelementptr inbounds nuw i8, ptr %i.j, i64 804
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !58
  %i.gz = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef %i.gy, i32 noundef -2147483647, i32 noundef 2147483647) #8 ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, -1
  br i1 %i.ha, label %bb.az, label %cbs_h264_write_sps.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.hb = getelementptr inbounds nuw i8, ptr %i.j, i64 808
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !59
  %i.hd = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef null, i32 noundef %i.hc, i32 noundef -2147483647, i32 noundef 2147483647) #8 ; 2 uses
  %i.he = icmp sgt i32 %i.hd, -1
  br i1 %i.he, label %bb.ba, label %cbs_h264_write_sps.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.hf = getelementptr inbounds nuw i8, ptr %i.j, i64 812 ; 3 uses
  %i.hg = load i8, ptr %i.hf, align 4, !tbaa !60
  %i.hh = zext i8 %i.hg to i32
  %i.hi = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.34, ptr noundef null, i32 noundef %i.hh, i32 noundef 0, i32 noundef 255) #8 ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, -1
  br i1 %i.hj, label %.preheader.i, label %cbs_h264_write_sps.exit.thread

.preheader.i:                                     ; preds = %bb.ba
  %i.hk = load i8, ptr %i.hf, align 4, !tbaa !60
  %.not489.i = icmp eq i8 %i.hk, 0
  br i1 %.not489.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.j, i64 816
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bc
  %indvars.iv.next515.i = add nuw nsw i64 %indvars.iv514.i, 1 ; 2 uses
  %i.hn = load i8, ptr %i.hf, align 4, !tbaa !60
  %i.ho = zext i8 %i.hn to i64
  %i.hp = icmp samesign ult i64 %indvars.iv.next515.i, %i.ho
  br i1 %i.hp, label %bb.bc, label %.loopexit.i, !llvm.loop !328

bb.bc:                                            ; preds = %bb.bb, %.lr.ph.i
  %indvars.iv514.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next515.i, %bb.bb ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv514.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !31
  store i32 1, ptr %i.g, align 4, !tbaa !31
  %i.hs = trunc nuw nsw i64 %indvars.iv514.i to i32
  store i32 %i.hs, ptr %i.hm, align 4, !tbaa !31
  %i.ht = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.g, i32 noundef %i.hr, i32 noundef -2147483647, i32 noundef 2147483647) #8 ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, -1
  br i1 %i.hu, label %bb.bb, label %cbs_h264_write_sps.exit.thread

.loopexit.i:                                      ; preds = %bb.bb, %.preheader.i, %bb.aw, %bb.av
  %i.hv = getelementptr inbounds nuw i8, ptr %i.j, i64 1840
  %i.hw = load i8, ptr %i.hv, align 4, !tbaa !61
  %i.hx = zext i8 %i.hw to i32
  %i.hy = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.36, ptr noundef null, i32 noundef %i.hx, i32 noundef 0, i32 noundef 16) #8 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, -1
  br i1 %i.hz, label %bb.bd, label %cbs_h264_write_sps.exit.thread

bb.bd:                                            ; preds = %.loopexit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.j, i64 1841
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !62
  %i.ic = zext i8 %i.ib to i32
  %i.id = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %i.ic) #8 ; 2 uses
  %i.ie = icmp sgt i32 %i.id, -1
  br i1 %i.ie, label %bb.be, label %cbs_h264_write_sps.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.if = getelementptr inbounds nuw i8, ptr %i.j, i64 1842
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !63
  %i.ih = zext i16 %i.ig to i32
  %i.ii = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef %i.ih, i32 noundef 0, i32 noundef 1055) #8 ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, -1
  br i1 %i.ij, label %bb.bf, label %cbs_h264_write_sps.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.ik = getelementptr inbounds nuw i8, ptr %i.j, i64 1844
  %i.il = load i16, ptr %i.ik, align 4, !tbaa !64
  %i.im = zext i16 %i.il to i32
  %i.in = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.39, ptr noundef null, i32 noundef %i.im, i32 noundef 0, i32 noundef 1055) #8 ; 2 uses
  %i.io = icmp sgt i32 %i.in, -1
  br i1 %i.io, label %bb.bg, label %cbs_h264_write_sps.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.ip = getelementptr inbounds nuw i8, ptr %i.j, i64 1846 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 2, !tbaa !65
  %i.ir = zext i8 %i.iq to i32
  %i.is = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef %i.ir) #8 ; 2 uses
  %i.it = icmp sgt i32 %i.is, -1
  br i1 %i.it, label %bb.bh, label %cbs_h264_write_sps.exit.thread

bb.bh:                                            ; preds = %bb.bg
  %i.iu = load i8, ptr %i.ip, align 2, !tbaa !65
  %.not476.i = icmp eq i8 %i.iu, 0
  br i1 %.not476.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.iv = getelementptr inbounds nuw i8, ptr %i.j, i64 1847
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !66
  %i.ix = zext i8 %i.iw to i32
  %i.iy = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.41, i32 noundef %i.ix) #8 ; 2 uses
  %i.iz = icmp sgt i32 %i.iy, -1
  br i1 %i.iz, label %bb.bj, label %cbs_h264_write_sps.exit.thread

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ja = getelementptr inbounds nuw i8, ptr %i.j, i64 1848
  %i.jb = load i8, ptr %i.ja, align 4, !tbaa !67
  %i.jc = zext i8 %i.jb to i32
  %i.jd = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.42, i32 noundef %i.jc) #8 ; 2 uses
  %i.je = icmp sgt i32 %i.jd, -1
  br i1 %i.je, label %bb.bk, label %cbs_h264_write_sps.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.jf = getelementptr inbounds nuw i8, ptr %i.j, i64 1849 ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !68
  %i.jh = zext i8 %i.jg to i32
  %i.ji = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.43, i32 noundef %i.jh) #8 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, -1
  br i1 %i.jj, label %bb.bl, label %cbs_h264_write_sps.exit.thread

bb.bl:                                            ; preds = %bb.bk
  %i.jk = load i8, ptr %i.jf, align 1, !tbaa !68
  %.not477.i = icmp eq i8 %i.jk, 0
  br i1 %.not477.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jl = getelementptr inbounds nuw i8, ptr %i.j, i64 1850
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !69
  %i.jn = zext i16 %i.jm to i32
  %i.jo = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.44, ptr noundef null, i32 noundef %i.jn, i32 noundef 0, i32 noundef 16880) #8 ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, -1
  br i1 %i.jp, label %bb.bn, label %cbs_h264_write_sps.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.jq = getelementptr inbounds nuw i8, ptr %i.j, i64 1852
  %i.jr = load i16, ptr %i.jq, align 4, !tbaa !70
  %i.js = zext i16 %i.jr to i32
  %i.jt = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef null, i32 noundef %i.js, i32 noundef 0, i32 noundef 16880) #8 ; 2 uses
  %i.ju = icmp sgt i32 %i.jt, -1
  br i1 %i.ju, label %bb.bo, label %cbs_h264_write_sps.exit.thread

bb.bo:                                            ; preds = %bb.bn
  %i.jv = getelementptr inbounds nuw i8, ptr %i.j, i64 1854
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !71
  %i.jx = zext i16 %i.jw to i32
  %i.jy = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.46, ptr noundef null, i32 noundef %i.jx, i32 noundef 0, i32 noundef 16880) #8 ; 2 uses
  %i.jz = icmp sgt i32 %i.jy, -1
  br i1 %i.jz, label %bb.bp, label %cbs_h264_write_sps.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.ka = getelementptr inbounds nuw i8, ptr %i.j, i64 1856
  %i.kb = load i16, ptr %i.ka, align 4, !tbaa !72
  %i.kc = zext i16 %i.kb to i32
  %i.kd = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.47, ptr noundef null, i32 noundef %i.kc, i32 noundef 0, i32 noundef 16880) #8 ; 2 uses
  %i.ke = icmp sgt i32 %i.kd, -1
  br i1 %i.ke, label %bb.bq, label %cbs_h264_write_sps.exit.thread

bb.bq:                                            ; preds = %bb.bp, %bb.bl
  %i.kf = getelementptr inbounds nuw i8, ptr %i.j, i64 1858 ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 2, !tbaa !73
  %i.kh = zext i8 %i.kg to i32
  %i.ki = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.48, i32 noundef %i.kh) #8 ; 2 uses
  %i.kj = icmp sgt i32 %i.ki, -1
  br i1 %i.kj, label %bb.br, label %cbs_h264_write_sps.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.kk = load i8, ptr %i.kf, align 2, !tbaa !73
  %.not478.i = icmp eq i8 %i.kk, 0
  %i.kl = getelementptr inbounds nuw i8, ptr %i.j, i64 1860 ; 2 uses
  br i1 %.not478.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.km = call fastcc i32 @cbs_h264_write_vui_parameters(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %i.kl, ptr noundef nonnull readonly %i.j) ; 2 uses
  %i.kn = icmp slt i32 %i.km, 0
  br i1 %i.kn, label %cbs_h264_write_sps.exit.thread, label %cbs_h264_write_sps.exit

bb.bt:                                            ; preds = %bb.br
  %i.ko = call fastcc i32 @cbs_h264_write_vui_parameters_default(ptr noundef %0, ptr noundef nonnull readonly %i.kl, ptr noundef nonnull readonly %i.j) ; 2 uses
  %i.kp = icmp slt i32 %i.ko, 0
  br i1 %i.kp, label %cbs_h264_write_sps.exit.thread, label %cbs_h264_write_sps.exit

cbs_h264_write_sps.exit.thread:                   ; preds = %.peel.next509.i, %bb.ak, %bb.bc, %bb.c, %bb.b, %bb.f, %bb.e, %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bi, %bb.bg, %bb.bf, %bb.be, %bb.bd, %.loopexit.i, %bb.aw, %bb.d, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.au, %.loopexit484.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.p, %bb.r, %bb.n, %bb.an, %bb.ap, %bb.ar, %bb.at, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %.peel.next505.i, %.peel.next501.i, %bb.ai, %.preheader483.i, %.peel.next497.i, %bb.y, %.peel.next.i, %bb.ag, %bb.aa, %.peel.next493.i, %bb.ae, %bb.ac
  %.45.i.ph = phi i32 [ %i.k, %bb.b ], [ %i.ht, %bb.bc ], [ %i.du, %bb.ac ], [ %i.ed, %bb.ae ], [ %i.dq, %.peel.next493.i ], [ %i.dl, %bb.aa ], [ %i.em, %bb.ag ], [ %i.dh, %.peel.next.i ], [ %i.dc, %bb.y ], [ %i.dz, %.peel.next497.i ], [ %i.cz, %.preheader483.i ], [ %i.ev, %bb.ai ], [ %i.ei, %.peel.next501.i ], [ %i.er, %.peel.next505.i ], [ %i.aj, %bb.g ], [ %i.ao, %bb.h ], [ %i.at, %bb.i ], [ %i.ay, %bb.j ], [ %i.bd, %bb.k ], [ %i.bi, %bb.l ], [ -1094995529, %bb.at ], [ -1094995529, %bb.ar ], [ -1094995529, %bb.ap ], [ -1094995529, %bb.an ], [ %i.bo, %bb.n ], [ -1094995529, %bb.r ], [ %i.bv, %bb.p ], [ %i.cc, %bb.s ], [ %i.ch, %bb.t ], [ %i.cm, %bb.u ], [ %i.cr, %bb.v ], [ %i.gf, %.loopexit484.i ], [ %i.gk, %bb.au ], [ %i.gv, %bb.ax ], [ %i.gz, %bb.ay ], [ %i.hd, %bb.az ], [ %i.hi, %bb.ba ], [ %i.u, %bb.d ], [ %i.gq, %bb.aw ], [ %i.hy, %.loopexit.i ], [ %i.id, %bb.bd ], [ %i.ii, %bb.be ], [ %i.in, %bb.bf ], [ %i.is, %bb.bg ], [ %i.iy, %bb.bi ], [ %i.jd, %bb.bj ], [ %i.ji, %bb.bk ], [ %i.jo, %bb.bm ], [ %i.jt, %bb.bn ], [ %i.jy, %bb.bo ], [ %i.kd, %bb.bp ], [ %i.ki, %bb.bq ], [ %i.km, %bb.bs ], [ %i.ko, %bb.bt ], [ %i.p, %bb.c ], [ %i.z, %bb.e ], [ %i.ae, %bb.f ], [ %i.fb, %.peel.next509.i ], [ %i.fg, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.thread

cbs_h264_write_sps.exit:                          ; preds = %bb.bs, %bb.bt
  %i.kq = call fastcc i32 @cbs_h264_write_rbsp_trailing_bits(ptr noundef %0, ptr noundef %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.kr = icmp slt i32 %i.kq, 0
  br i1 %i.kr, label %.thread, label %bb.bu

bb.bu:                                            ; preds = %cbs_h264_write_sps.exit
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !17 ; 2 uses
  %i.ku = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 13
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !46
  %i.kx = call i32 @ff_cbs_make_unit_refcounted(ptr noundef %0, ptr noundef nonnull %1) #8 ; 2 uses
  %i.ky = icmp slt i32 %i.kx, 0
  br i1 %i.ky, label %.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 56
  %i.la = zext i8 %i.kw to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.la ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !75
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 2360 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !78
  %i.lf = icmp eq ptr %i.lc, %i.le
  br i1 %i.lf, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store ptr null, ptr %i.ld, align 8, !tbaa !78
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !79 ; 2 uses
  %.not.i94 = icmp eq ptr %i.lh, null
  br i1 %.not.i94, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.3, i32 noundef 378) #8
  call void @abort() #9
  unreachable

bb.bz:                                            ; preds = %bb.bx
  call void @av_refstruct_replace(ptr noundef nonnull %i.lb, ptr noundef nonnull %i.lh) #8
  br label %cbs_h264_write_sps_extension.exit

bb.ca:                                            ; preds = %bb.a
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !30 ; 8 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.104) #8
  %i.lk = tail call fastcc i32 @cbs_h264_write_nal_unit_header(ptr noundef %0, ptr noundef %2, ptr noundef readonly %i.lj, i32 noundef 8192) ; 2 uses
  %i.ll = icmp slt i32 %i.lk, 0
end_hunk_1
begin_hunk_2_@cbs_h264_write_nal_unit:bb.a
  %i.lu = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.105, ptr noundef null, i32 noundef %i.lt, i32 noundef 0, i32 noundef 3) #8 ; 2 uses
  %i.lv = icmp sgt i32 %i.lu, -1
  br i1 %i.lv, label %bb.cd, label %.thread

bb.cd:                                            ; preds = %bb.cc
  %i.lw = load i8, ptr %i.lr, align 1, !tbaa !82
  %.not.i95 = icmp eq i8 %i.lw, 0
  br i1 %.not.i95, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lj, i64 6 ; 2 uses
  %i.ly = load i8, ptr %i.lx, align 2, !tbaa !83
  %i.lz = zext i8 %i.ly to i32
  %i.ma = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.106, ptr noundef null, i32 noundef %i.lz, i32 noundef 0, i32 noundef 4) #8 ; 2 uses
  %i.mb = icmp sgt i32 %i.ma, -1
  br i1 %i.mb, label %bb.cf, label %.thread

bb.cf:                                            ; preds = %bb.ce
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lj, i64 7
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !84
  %i.me = zext i8 %i.md to i32
  %i.mf = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.107, i32 noundef %i.me) #8 ; 2 uses
  %i.mg = icmp sgt i32 %i.mf, -1
  br i1 %i.mg, label %bb.cg, label %.thread

bb.cg:                                            ; preds = %bb.cf
  %i.mh = load i8, ptr %i.lx, align 2, !tbaa !83
  %i.mi = zext i8 %i.mh to i32
  %i.mj = add nuw nsw i32 %i.mi, 9                ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !85
  %i.mm = zext i16 %i.ml to i32
  %i.mn = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef %i.mj, ptr noundef nonnull @.str.108, i32 noundef %i.mm) #8 ; 2 uses
  %i.mo = icmp sgt i32 %i.mn, -1
  br i1 %i.mo, label %bb.ch, label %.thread

bb.ch:                                            ; preds = %bb.cg
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lj, i64 10
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !86
  %i.mr = zext i16 %i.mq to i32
  %i.ms = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef %i.mj, ptr noundef nonnull @.str.109, i32 noundef %i.mr) #8 ; 2 uses
  %i.mt = icmp sgt i32 %i.ms, -1
  br i1 %i.mt, label %bb.ci, label %.thread

bb.ci:                                            ; preds = %bb.ch, %bb.cd
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  %i.mv = load i8, ptr %i.mu, align 2, !tbaa !87
  %i.mw = zext i8 %i.mv to i32
  %i.mx = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.110, i32 noundef %i.mw) #8 ; 2 uses
  %i.my = icmp sgt i32 %i.mx, -1
  br i1 %i.my, label %bb.cj, label %.thread

bb.cj:                                            ; preds = %bb.ci
  %i.mz = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 1) #8 ; 2 uses
  %i.na = icmp sgt i32 %i.mz, -1
  br i1 %i.na, label %.preheader.i.i, label %.thread

.preheader.i.i:                                   ; preds = %bb.cj
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.preheader.i.i
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !152
  %reass.sub.i.i.i = sub i32 0, %i.nc
  %i.nd = and i32 %reass.sub.i.i.i, 7
  %.not.i.i = icmp eq i32 %i.nd, 0
  br i1 %.not.i.i, label %cbs_h264_write_sps_extension.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ne = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, -1
  br i1 %i.nf, label %bb.ck, label %.thread, !llvm.loop !1

bb.cm:                                            ; preds = %bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !30 ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !17
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.111) #8
  %i.nk = tail call fastcc i32 @cbs_h264_write_nal_unit_header(ptr noundef %0, ptr noundef %2, ptr noundef readonly %i.nh, i32 noundef 256) ; 2 uses
  %i.nl = icmp slt i32 %i.nk, 0
  br i1 %i.nl, label %cbs_h264_write_pps.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nn = load i8, ptr %i.nm, align 4, !tbaa !89
  %i.no = zext i8 %i.nn to i32
  %i.np = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.112, ptr noundef null, i32 noundef %i.no, i32 noundef 0, i32 noundef 255) #8 ; 2 uses
  %i.nq = icmp sgt i32 %i.np, -1
  br i1 %i.nq, label %bb.co, label %cbs_h264_write_pps.exit.thread

bb.co:                                            ; preds = %bb.cn
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nh, i64 5 ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !90
  %i.nt = zext i8 %i.ns to i32
  %i.nu = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef %i.nt, i32 noundef 0, i32 noundef 31) #8 ; 2 uses
  %i.nv = icmp sgt i32 %i.nu, -1
  br i1 %i.nv, label %bb.cp, label %cbs_h264_write_pps.exit.thread

bb.cp:                                            ; preds = %bb.co
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nj, i64 56
  %i.nx = load i8, ptr %i.nr, align 1, !tbaa !90  ; 2 uses
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.ny
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !75 ; 5 uses
  %.not.i96 = icmp eq ptr %i.oa, null
  br i1 %.not.i96, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ob = load ptr, ptr %0, align 8, !tbaa !24
  %i.oc = zext i8 %i.nx to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ob, i32 noundef 16, ptr noundef nonnull @.str.113, i32 noundef %i.oc) #8
  br label %cbs_h264_write_pps.exit.thread

bb.cr:                                            ; preds = %bb.cp
  %i.od = getelementptr inbounds nuw i8, ptr %i.nh, i64 6
  %i.oe = load i8, ptr %i.od, align 2, !tbaa !91
  %i.of = zext i8 %i.oe to i32
  %i.og = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.114, i32 noundef %i.of) #8 ; 2 uses
  %i.oh = icmp sgt i32 %i.og, -1
  br i1 %i.oh, label %bb.cs, label %cbs_h264_write_pps.exit.thread

bb.cs:                                            ; preds = %bb.cr
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nh, i64 7
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !92
  %i.ok = zext i8 %i.oj to i32
  %i.ol = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.115, i32 noundef %i.ok) #8 ; 2 uses
  %i.om = icmp sgt i32 %i.ol, -1
  br i1 %i.om, label %bb.ct, label %cbs_h264_write_pps.exit.thread

bb.ct:                                            ; preds = %bb.cs
  %i.on = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 6 uses
  %i.oo = load i8, ptr %i.on, align 8, !tbaa !93
  %i.op = zext i8 %i.oo to i32
  %i.oq = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.116, ptr noundef null, i32 noundef %i.op, i32 noundef 0, i32 noundef 7) #8 ; 2 uses
  %i.or = icmp sgt i32 %i.oq, -1
  br i1 %i.or, label %bb.cu, label %cbs_h264_write_pps.exit.thread

bb.cu:                                            ; preds = %bb.ct
  %i.os = load i8, ptr %i.on, align 8, !tbaa !93
  %.not370.i = icmp eq i8 %i.os, 0
  br i1 %.not370.i, label %.thread387.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oa, i64 1842
  %i.ou = load i16, ptr %i.ot, align 2, !tbaa !63
  %i.ov = zext i16 %i.ou to i32
  %i.ow = add nuw nsw i32 %i.ov, 1
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oa, i64 1844
  %i.oy = load i16, ptr %i.ox, align 4, !tbaa !64
  %i.oz = zext i16 %i.oy to i32
  %i.pa = add nuw nsw i32 %i.oz, 1
  %i.pb = mul nuw nsw i32 %i.pa, %i.ow            ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nh, i64 9 ; 2 uses
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !94
  %i.pe = zext i8 %i.pd to i32
  %i.pf = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.117, ptr noundef null, i32 noundef %i.pe, i32 noundef 0, i32 noundef 6) #8 ; 2 uses
  %i.pg = icmp sgt i32 %i.pf, -1
  br i1 %i.pg, label %bb.cw, label %cbs_h264_write_pps.exit.thread

bb.cw:                                            ; preds = %bb.cv
  %i.ph = load i8, ptr %i.pc, align 1, !tbaa !94
  switch i8 %i.ph, label %.thread387.i [
    i8 0, label %.preheader390.i
    i8 2, label %.preheader392.i
    i8 3, label %bb.dc
    i8 4, label %bb.dc
    i8 5, label %bb.dc
    i8 6, label %bb.dd
  ]

.preheader392.i:                                  ; preds = %bb.cw
  %i.pi = load i8, ptr %i.on, align 8, !tbaa !93
  %.not405.i = icmp eq i8 %i.pi, 0
  br i1 %.not405.i, label %.thread387.i, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %.preheader392.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nh, i64 26
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.pl = add nsw i32 %i.pb, -1                   ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.nh, i64 42
  %i.pn = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.da

.preheader390.i:                                  ; preds = %bb.cw
  %i.po = getelementptr inbounds nuw i8, ptr %i.nh, i64 10
  %i.pp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.pq = add nsw i32 %i.pb, -1
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cy
  %indvars.iv.next420.i = add nuw nsw i64 %indvars.iv419.i, 1
  %i.pr = load i8, ptr %i.on, align 8, !tbaa !93
  %i.ps = zext i8 %i.pr to i64
  %.not373.not.i = icmp samesign ult i64 %indvars.iv419.i, %i.ps
  br i1 %.not373.not.i, label %bb.cy, label %.thread387.i, !llvm.loop !329

bb.cy:                                            ; preds = %bb.cx, %.preheader390.i
  %indvars.iv419.i = phi i64 [ 0, %.preheader390.i ], [ %indvars.iv.next420.i, %bb.cx ] ; 4 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.po, i64 %indvars.iv419.i
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !95
  %i.pv = zext i16 %i.pu to i32
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.pw = trunc nuw nsw i64 %indvars.iv419.i to i32
  store i32 %i.pw, ptr %i.pp, align 4, !tbaa !31
  %i.px = call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.a, i32 noundef %i.pv, i32 noundef 0, i32 noundef %i.pq) #8 ; 2 uses
  %i.py = icmp sgt i32 %i.px, -1
  br i1 %i.py, label %bb.cx, label %cbs_h264_write_pps.exit.thread

bb.cz:                                            ; preds = %bb.db
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 1 ; 2 uses
  %i.pz = load i8, ptr %i.on, align 8, !tbaa !93
  %i.qa = zext i8 %i.pz to i64
  %i.qb = icmp samesign ult i64 %indvars.iv.next417.i, %i.qa
  br i1 %i.qb, label %bb.da, label %.thread387.i, !llvm.loop !330

bb.da:                                            ; preds = %bb.cz, %.lr.ph.i102
  %indvars.iv416.i = phi i64 [ 0, %.lr.ph.i102 ], [ %indvars.iv.next417.i, %bb.cz ] ; 4 uses
  %i.qc = getelementptr inbounds nuw [2 x i8], ptr %i.pj, i64 %indvars.iv416.i ; 2 uses
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !95
  %i.qe = zext i16 %i.qd to i32
  store i32 1, ptr %i.b, align 4, !tbaa !31
  %i.qf = trunc nuw nsw i64 %indvars.iv416.i to i32 ; 2 uses
  store i32 %i.qf, ptr %i.pk, align 4, !tbaa !31
  %i.qg = call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.119, ptr noundef nonnull %i.b, i32 noundef %i.qe, i32 noundef 0, i32 noundef %i.pl) #8 ; 2 uses
  %i.qh = icmp sgt i32 %i.qg, -1
  br i1 %i.qh, label %bb.db, label %cbs_h264_write_pps.exit.thread

bb.db:                                            ; preds = %bb.da
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %indvars.iv416.i
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !95
  %i.qk = zext i16 %i.qj to i32
  store i32 1, ptr %i.c, align 4, !tbaa !31
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
  br i1 %.not372.not.i, label %bb.dh, label %.thread387.i, !llvm.loop !331

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
  br i1 %i.vr, label %bb.dw, label %.loopexit.i101, !llvm.loop !332

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
  %.not450.i = icmp eq ptr %i.yt, null
end_hunk_2
begin_hunk_3_@cbs_h264_write_nal_unit:bb.a
  br i1 %i.aer, label %bb.hj, label %.thread

bb.hj:                                            ; preds = %bb.hi, %switch.early.test485.i, %switch.early.test485.i, %bb.hh
  %i.aes = getelementptr inbounds nuw i8, ptr %i.xb, i64 2157
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !136
  %i.aeu = sext i8 %i.aet to i32
  %i.aev = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %i.aew = load i8, ptr %i.aev, align 4, !tbaa !49
  %i.aex = zext i8 %i.aew to i32
  %i.aey = mul nuw nsw i32 %i.aex, 6              ; 2 uses
  %i.aez = sub nuw nsw i32 -51, %i.aey
  %i.afa = add nuw nsw i32 %i.aey, 51
  %i.afb = tail call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.161, ptr noundef null, i32 noundef %i.aeu, i32 noundef %i.aez, i32 noundef %i.afa) #8 ; 2 uses
  %i.afc = icmp sgt i32 %i.afb, -1
  br i1 %i.afc, label %bb.hk, label %.thread

bb.hk:                                            ; preds = %bb.hj
  %i.afd = icmp samesign ugt i8 %i.xx, 2
  br i1 %i.afd, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %bb.hk
  br i1 %i.xz, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.afe = getelementptr inbounds nuw i8, ptr %i.xb, i64 2158
  %i.aff = load i8, ptr %i.afe, align 2, !tbaa !137
  %i.afg = zext i8 %i.aff to i32
  %i.afh = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.162, i32 noundef %i.afg) #8 ; 2 uses
  %i.afi = icmp sgt i32 %i.afh, -1
  br i1 %i.afi, label %bb.hn, label %.thread

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.afj = getelementptr inbounds nuw i8, ptr %i.xb, i64 2159
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !138
  %i.afl = sext i8 %i.afk to i32
  %i.afm = tail call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.163, ptr noundef null, i32 noundef %i.afl, i32 noundef -51, i32 noundef 51) #8 ; 2 uses
  %i.afn = icmp sgt i32 %i.afm, -1
  br i1 %i.afn, label %bb.ho, label %.thread

bb.ho:                                            ; preds = %bb.hn, %bb.hk
  %i.afo = getelementptr inbounds nuw i8, ptr %i.yk, i64 87
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !107
  %.not474.i108 = icmp eq i8 %i.afp, 0
  %i.afq = getelementptr inbounds nuw i8, ptr %i.xb, i64 2160 ; 2 uses
  %i.afr = load i8, ptr %i.afq, align 4, !tbaa !139 ; 3 uses
  br i1 %.not474.i108, label %bb.hx, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.afs = zext i8 %i.afr to i32
  %i.aft = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.164, ptr noundef null, i32 noundef %i.afs, i32 noundef 0, i32 noundef 2) #8 ; 2 uses
  %i.afu = icmp sgt i32 %i.aft, -1
  br i1 %i.afu, label %bb.hq, label %.thread

bb.hq:                                            ; preds = %bb.hp
  %i.afv = load i8, ptr %i.afq, align 4, !tbaa !139
  %.not478.i109 = icmp eq i8 %i.afv, 1
  %i.afw = getelementptr inbounds nuw i8, ptr %i.xb, i64 2161
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !140 ; 3 uses
  br i1 %.not478.i109, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.afy = sext i8 %i.afx to i32
  %i.afz = tail call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.165, ptr noundef null, i32 noundef %i.afy, i32 noundef -6, i32 noundef 6) #8 ; 2 uses
  %i.aga = icmp sgt i32 %i.afz, -1
  br i1 %i.aga, label %bb.hs, label %.thread

bb.hs:                                            ; preds = %bb.hr
  %i.agb = getelementptr inbounds nuw i8, ptr %i.xb, i64 2162
  %i.agc = load i8, ptr %i.agb, align 2, !tbaa !141
  %i.agd = sext i8 %i.agc to i32
  %i.age = tail call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.166, ptr noundef null, i32 noundef %i.agd, i32 noundef -6, i32 noundef 6) #8 ; 2 uses
  %i.agf = icmp sgt i32 %i.age, -1
  br i1 %i.agf, label %bb.id, label %.thread

bb.ht:                                            ; preds = %bb.hq
  %.not479.i111 = icmp eq i8 %i.afx, 0
  br i1 %.not479.i111, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.agg = load ptr, ptr %0, align 8, !tbaa !24
  %i.agh = sext i8 %i.afx to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.agg, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.165, i64 noundef %i.agh, i64 noundef 0) #8
  br label %.thread

bb.hv:                                            ; preds = %bb.ht
  %i.agi = getelementptr inbounds nuw i8, ptr %i.xb, i64 2162
  %i.agj = load i8, ptr %i.agi, align 2, !tbaa !141 ; 2 uses
  %.not480.i = icmp eq i8 %i.agj, 0
  br i1 %.not480.i, label %bb.id, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.agk = load ptr, ptr %0, align 8, !tbaa !24
  %i.agl = sext i8 %i.agj to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.agk, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.166, i64 noundef %i.agl, i64 noundef 0) #8
  br label %.thread

bb.hx:                                            ; preds = %bb.ho
  %.not475.i112 = icmp eq i8 %i.afr, 0
  br i1 %.not475.i112, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.agm = load ptr, ptr %0, align 8, !tbaa !24
  %i.agn = zext i8 %i.afr to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.agm, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.164, i64 noundef %i.agn, i64 noundef 0) #8
  br label %.thread

bb.hz:                                            ; preds = %bb.hx
  %i.ago = getelementptr inbounds nuw i8, ptr %i.xb, i64 2161
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !140 ; 2 uses
  %.not476.i113 = icmp eq i8 %i.agp, 0
  br i1 %.not476.i113, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.agq = load ptr, ptr %0, align 8, !tbaa !24
  %i.agr = sext i8 %i.agp to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.agq, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.165, i64 noundef %i.agr, i64 noundef 0) #8
  br label %.thread

bb.ib:                                            ; preds = %bb.hz
  %i.ags = getelementptr inbounds nuw i8, ptr %i.xb, i64 2162
  %i.agt = load i8, ptr %i.ags, align 2, !tbaa !141 ; 2 uses
  %.not477.i114 = icmp eq i8 %i.agt, 0
  br i1 %.not477.i114, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.agu = load ptr, ptr %0, align 8, !tbaa !24
  %i.agv = sext i8 %i.agt to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.agu, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.166, i64 noundef %i.agv, i64 noundef 0) #8
  br label %.thread

bb.id:                                            ; preds = %bb.ib, %bb.hv, %bb.hs
  %i.agw = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.agx = load i8, ptr %i.agw, align 8, !tbaa !93
  %.not481.i = icmp eq i8 %i.agx, 0
  br i1 %.not481.i, label %bb.ig, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.agy = getelementptr inbounds nuw i8, ptr %i.yk, i64 9
  %i.agz = load i8, ptr %i.agy, align 1, !tbaa !94
  %i.aha = add i8 %i.agz, -3
  %or.cond.i = icmp ult i8 %i.aha, 3
  br i1 %or.cond.i, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.yt, i64 1842
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !63
  %i.ahd = zext i16 %i.ahc to i32
  %i.ahe = add nuw nsw i32 %i.ahd, 1
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.yt, i64 1844
  %i.ahg = load i16, ptr %i.ahf, align 4, !tbaa !64
  %i.ahh = zext i16 %i.ahg to i32
  %i.ahi = add nuw nsw i32 %i.ahh, 1
  %i.ahj = mul nuw nsw i32 %i.ahi, %i.ahe
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.yk, i64 60
  %i.ahl = load i16, ptr %i.ahk, align 4, !tbaa !97
  %i.ahm = zext i16 %i.ahl to i32                 ; 2 uses
  %i.ahn = add nuw i32 %i.ahj, %i.ahm
  %i.aho = add nuw nsw i32 %i.ahm, 1
  %i.ahp = udiv i32 %i.ahn, %i.aho                ; 2 uses
  %i.ahq = shl i32 %i.ahp, 1                      ; 3 uses
  %i.ahr = icmp ugt i32 %i.ahq, 65535             ; 2 uses
  %i.ahs = lshr i32 %i.ahq, 16
  %spec.select.i.i.i = select i1 %i.ahr, i32 %i.ahs, i32 %i.ahq ; 3 uses
  %spec.select11.i.i.i = select i1 %i.ahr, i32 16, i32 0 ; 2 uses
  %.not.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.aht = lshr i32 %spec.select.i.i.i, 8
  %i.ahu = or disjoint i32 %spec.select11.i.i.i, 8
  %.110.i.i.i = select i1 %.not.i.i.i, i32 %spec.select.i.i.i, i32 %i.aht
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %spec.select11.i.i.i, i32 %i.ahu
  %i.ahv = zext nneg i32 %.110.i.i.i to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ahv
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !19
  %i.ahy = zext i8 %i.ahx to i32
  %i.ahz = add nuw nsw i32 %.1.i.i.i, %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %i.xb, i64 2164
  %i.aib = load i16, ptr %i.aia, align 4, !tbaa !142
  %i.aic = zext i16 %i.aib to i32
  %i.aid = tail call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.ahz, ptr noundef nonnull @.str.167, ptr noundef null, i32 noundef %i.aic, i32 noundef 0, i32 noundef %i.ahp) #8 ; 2 uses
  %i.aie = icmp sgt i32 %i.aid, -1
  br i1 %i.aie, label %bb.ig, label %.thread

bb.ig:                                            ; preds = %bb.if, %bb.ie, %bb.id
  %i.aif = load i8, ptr %i.aek, align 2, !tbaa !91
  %.not482.i = icmp eq i8 %i.aif, 0
  br i1 %.not482.i, label %cbs_h264_write_slice_header.exit, label %.preheader.i110

.preheader.i110:                                  ; preds = %bb.ig
  %i.aig = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ii, %.preheader.i110
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !152
  %reass.sub.i.i = sub i32 0, %i.aih
  %i.aii = and i32 %reass.sub.i.i, 7
  %.not483.i = icmp eq i32 %i.aii, 0
  br i1 %.not483.i, label %cbs_h264_write_slice_header.exit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.aij = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.168, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 1) #8 ; 2 uses
  %i.aik = icmp sgt i32 %i.aij, -1
  br i1 %i.aik, label %bb.ih, label %.thread, !llvm.loop !333

cbs_h264_write_slice_header.exit:                 ; preds = %bb.ih, %bb.ig
  %i.ail = getelementptr inbounds nuw i8, ptr %i.xb, i64 2168
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !145 ; 2 uses
  %.not = icmp eq ptr %i.aim, null
  br i1 %.not, label %cbs_h264_write_sps_extension.exit, label %bb.ij

bb.ij:                                            ; preds = %cbs_h264_write_slice_header.exit
  %i.ain = getelementptr inbounds nuw i8, ptr %i.xb, i64 2184
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !144
  %i.aip = getelementptr inbounds nuw i8, ptr %i.xb, i64 2192
  %i.aiq = load i32, ptr %i.aip, align 8, !tbaa !146
  %i.air = tail call i32 @ff_cbs_h2645_write_slice_data(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.aim, i64 noundef %i.aio, i32 noundef %i.aiq) #8 ; 2 uses
  %i.ais = icmp slt i32 %i.air, 0
  br i1 %i.ais, label %.thread, label %cbs_h264_write_sps_extension.exit

bb.ik:                                            ; preds = %bb.a
  %i.ait = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !30 ; 2 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.196) #8
  %i.aiv = tail call fastcc i32 @cbs_h264_write_nal_unit_header(ptr noundef %0, ptr noundef %2, ptr noundef readonly %i.aiu, i32 noundef 512) ; 2 uses
  %i.aiw = icmp slt i32 %i.aiv, 0
  br i1 %i.aiw, label %.thread, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiu, i64 4
  %i.aiy = load i8, ptr %i.aix, align 1, !tbaa !148
  %i.aiz = zext i8 %i.aiy to i32
  %i.aja = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 3, ptr noundef nonnull @.str.197, i32 noundef %i.aiz) #8 ; 2 uses
  %i.ajb = icmp sgt i32 %i.aja, -1
  br i1 %i.ajb, label %bb.im, label %.thread

bb.im:                                            ; preds = %bb.il
  %i.ajc = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 1) #8 ; 2 uses
  %i.ajd = icmp sgt i32 %i.ajc, -1
  br i1 %i.ajd, label %.preheader.i.i118, label %.thread

.preheader.i.i118:                                ; preds = %bb.im
  %i.aje = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.in

bb.in:                                            ; preds = %bb.io, %.preheader.i.i118
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !152
  %reass.sub.i.i.i119 = sub i32 0, %i.ajf
  %i.ajg = and i32 %reass.sub.i.i.i119, 7
  %.not.i.i120 = icmp eq i32 %i.ajg, 0
  br i1 %.not.i.i120, label %cbs_h264_write_sps_extension.exit, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.ajh = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.aji = icmp sgt i32 %i.ajh, -1
  br i1 %i.aji, label %bb.in, label %.thread, !llvm.loop !1

bb.ip:                                            ; preds = %bb.a
  %i.ajj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !30 ; 2 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.198) #8
  %i.ajl = tail call fastcc i32 @cbs_h264_write_nal_unit_header(ptr noundef %0, ptr noundef %2, ptr noundef %i.ajk, i32 noundef 64) ; 2 uses
  %i.ajm = icmp slt i32 %i.ajl, 0
  br i1 %i.ajm, label %.thread, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ajo = tail call i32 @ff_cbs_sei_write_message_list(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.ajn, i32 noundef 1) #8 ; 2 uses
  %i.ajp = icmp slt i32 %i.ajo, 0
  br i1 %i.ajp, label %.thread, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ajq = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 1) #8 ; 2 uses
  %i.ajr = icmp sgt i32 %i.ajq, -1
  br i1 %i.ajr, label %.preheader.i.i122, label %.thread

.preheader.i.i122:                                ; preds = %bb.ir
  %i.ajs = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.is

bb.is:                                            ; preds = %bb.it, %.preheader.i.i122
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !152
  %reass.sub.i.i.i123 = sub i32 0, %i.ajt
  %i.aju = and i32 %reass.sub.i.i.i123, 7
  %.not.i.i124 = icmp eq i32 %i.aju, 0
  br i1 %.not.i.i124, label %cbs_h264_write_sps_extension.exit, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.ajv = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.ajw = icmp sgt i32 %i.ajv, -1
  br i1 %i.ajw, label %bb.is, label %.thread, !llvm.loop !1

bb.iu:                                            ; preds = %bb.a
  %i.ajx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !30 ; 2 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.199) #8
  %i.ajz = tail call fastcc i32 @cbs_h264_write_nal_unit_header(ptr noundef %0, ptr noundef %2, ptr noundef readonly %i.ajy, i32 noundef 4096) ; 2 uses
  %i.aka = icmp slt i32 %i.ajz, 0
  br i1 %i.aka, label %.thread, label %.preheader.i125

.preheader.i125:                                  ; preds = %bb.iu
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajy, i64 4 ; 2 uses
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !150
  %.not35.not.i = icmp eq i32 %i.akc, 0
  br i1 %.not35.not.i, label %._crit_edge.i, label %.lr.ph.i126

bb.iv:                                            ; preds = %.lr.ph.i126
  %i.akd = add nuw i32 %.036.i, 1                 ; 2 uses
  %i.ake = load i32, ptr %i.akb, align 4, !tbaa !150
  %.not.i127 = icmp ult i32 %i.akd, %i.ake
  br i1 %.not.i127, label %.lr.ph.i126, label %._crit_edge.i, !llvm.loop !334

.lr.ph.i126:                                      ; preds = %.preheader.i125, %bb.iv
  %.036.i = phi i32 [ %i.akd, %bb.iv ], [ 0, %.preheader.i125 ]
  %i.akf = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 8, ptr noundef nonnull @.str.200, ptr noundef null, i32 noundef 255, i32 noundef 255, i32 noundef 255) #8 ; 2 uses
  %i.akg = icmp sgt i32 %i.akf, -1
  br i1 %i.akg, label %bb.iv, label %.thread

._crit_edge.i:                                    ; preds = %bb.iv, %.preheader.i125
  %i.akh = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 1) #8 ; 2 uses
  %i.aki = icmp sgt i32 %i.akh, -1
  br i1 %i.aki, label %.preheader.i.i128, label %.thread

.preheader.i.i128:                                ; preds = %._crit_edge.i
  %i.akj = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.iw

bb.iw:                                            ; preds = %bb.ix, %.preheader.i.i128
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !152
  %reass.sub.i.i.i129 = sub i32 0, %i.akk
  %i.akl = and i32 %reass.sub.i.i.i129, 7
  %.not.i.i130 = icmp eq i32 %i.akl, 0
  br i1 %.not.i.i130, label %cbs_h264_write_sps_extension.exit, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.akm = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.akn = icmp sgt i32 %i.akm, -1
  br i1 %i.akn, label %bb.iw, label %.thread, !llvm.loop !1

bb.iy:                                            ; preds = %bb.a
  %i.ako = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !30
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.201) #8
  %i.akq = tail call fastcc range(i32 -2147483648, 1) i32 @cbs_h264_write_nal_unit_header(ptr noundef %0, ptr noundef %2, ptr noundef readonly %i.akp, i32 noundef 1024) ; 2 uses
  %i.akr = icmp slt i32 %i.akq, 0
  br i1 %i.akr, label %.thread, label %cbs_h264_write_sps_extension.exit

bb.iz:                                            ; preds = %bb.a
  %i.aks = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !30
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.202) #8
  %i.aku = tail call fastcc range(i32 -2147483648, 1) i32 @cbs_h264_write_nal_unit_header(ptr noundef %0, ptr noundef %2, ptr noundef readonly %i.akt, i32 noundef 2048) ; 2 uses
  %i.akv = icmp slt i32 %i.aku, 0
  br i1 %i.akv, label %.thread, label %cbs_h264_write_sps_extension.exit

bb.ja:                                            ; preds = %bb.a
  %i.akw = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.akw, i32 noundef 16, ptr noundef nonnull @.str.203, i32 noundef %i.h) #8
  br label %.thread

cbs_h264_write_sps_extension.exit:                ; preds = %bb.iw, %bb.is, %bb.in, %bb.ck, %cbs_h264_write_slice_header.exit, %bb.ij, %bb.en, %bb.bz, %bb.iz, %bb.iy
  br label %.thread

.thread:                                          ; preds = %.lr.ph.i126, %bb.ix, %bb.it, %bb.io, %bb.ii, %bb.cl, %bb.iu, %._crit_edge.i, %bb.ir, %bb.ip, %bb.iq, %bb.im, %bb.ik, %bb.il, %bb.es, %bb.et, %bb.ev, %bb.ew, %bb.ey, %bb.fa, %bb.fc, %bb.fd, %bb.ff, %bb.fj, %bb.fh, %bb.fp, %bb.fw, %bb.fz, %bb.gb, %bb.gf, %bb.gd, %bb.fr, %bb.fu, %bb.gj, %bb.gh, %bb.go, %.thread.i, %bb.gx, %bb.gv, %bb.gr, %bb.gt, %bb.hi, %bb.hj, %bb.hm, %bb.hn, %bb.ic, %bb.ia, %bb.hy, %bb.hp, %bb.hw, %bb.hu, %bb.hr, %bb.hs, %bb.if, %bb.hg, %bb.he, %bb.ha, %bb.eo, %bb.gz, %bb.fn, %bb.fl, %bb.er, %bb.ij, %bb.ei, %cbs_h264_write_pps.exit.thread, %cbs_h264_write_pps.exit, %bb.ce, %bb.cg, %bb.cf, %bb.cc, %bb.ch, %bb.ci, %bb.ca, %bb.cj, %bb.cb, %bb.bu, %cbs_h264_write_sps.exit.thread, %cbs_h264_write_sps.exit, %bb.iz, %bb.iy, %cbs_h264_write_sps_extension.exit, %bb.ja
  %.4 = phi i32 [ -1163346256, %bb.ja ], [ 0, %cbs_h264_write_sps_extension.exit ], [ %i.aku, %bb.iz ], [ %i.kq, %cbs_h264_write_sps.exit ], [ %i.lp, %bb.cb ], [ %i.wj, %cbs_h264_write_pps.exit ], [ %i.akq, %bb.iy ], [ -1094995529, %bb.er ], [ %i.aja, %bb.il ], [ %i.ajo, %bb.iq ], [ %i.kx, %bb.bu ], [ %.45.i.ph, %cbs_h264_write_sps.exit.thread ], [ %i.akh, %._crit_edge.i ], [ %i.ma, %bb.ce ], [ %i.mn, %bb.cg ], [ %i.mf, %bb.cf ], [ %i.lu, %bb.cc ], [ %i.ms, %bb.ch ], [ %i.mx, %bb.ci ], [ %i.lk, %bb.ca ], [ %i.mz, %bb.cj ], [ %i.wp, %bb.ei ], [ %.35.i.ph, %cbs_h264_write_pps.exit.thread ], [ %i.air, %bb.ij ], [ %i.aij, %bb.ii ], [ %i.xo, %bb.es ], [ %i.xt, %bb.et ], [ -1094995529, %bb.ev ], [ %i.ye, %bb.ew ], [ -1094995529, %bb.ey ], [ -1094995529, %bb.fa ], [ %i.zc, %bb.fc ], [ %i.zl, %bb.fd ], [ %i.zs, %bb.ff ], [ -1094995529, %bb.fj ], [ %i.zy, %bb.fh ], [ %i.aal, %bb.fp ], [ %i.abj, %bb.fw ], [ %i.abq, %bb.fz ], [ -1094995529, %bb.gb ], [ -1094995529, %bb.gf ], [ -1094995529, %bb.gd ], [ %i.aaw, %bb.fr ], [ %i.abd, %bb.fu ], [ -1094995529, %bb.gj ], [ %i.ach, %bb.gh ], [ %i.acr, %bb.go ], [ %i.acw, %.thread.i ], [ -1094995529, %bb.gx ], [ -1094995529, %bb.gv ], [ %i.adc, %bb.gr ], [ %i.adh, %bb.gt ], [ %i.aeq, %bb.hi ], [ %i.afb, %bb.hj ], [ %i.afh, %bb.hm ], [ %i.afm, %bb.hn ], [ -1094995529, %bb.ic ], [ -1094995529, %bb.ia ], [ -1094995529, %bb.hy ], [ %i.aft, %bb.hp ], [ -1094995529, %bb.hw ], [ -1094995529, %bb.hu ], [ %i.afz, %bb.hr ], [ %i.age, %bb.hs ], [ %i.aid, %bb.if ], [ %i.aei, %bb.hg ], [ %i.aef, %bb.he ], [ %i.ady, %bb.ha ], [ %i.xe, %bb.eo ], [ -1163346256, %bb.gz ], [ -1094995529, %bb.fn ], [ -1094995529, %bb.fl ], [ %i.ajh, %bb.io ], [ %i.ajc, %bb.im ], [ %i.aiv, %bb.ik ], [ %i.ajv, %bb.it ], [ %i.ajq, %bb.ir ], [ %i.ajl, %bb.ip ], [ %i.ne, %bb.cl ], [ %i.akm, %bb.ix ], [ %i.ajz, %bb.iu ], [ %i.akf, %.lr.ph.i126 ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cbs_h264_discarded_nal_unit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %.thread39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !29     ; 2 uses
  switch i32 %i.b, label %.thread39 [
    i32 1, label %bb.c
    i32 5, label %bb.c
    i32 19, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.c = icmp samesign ugt i32 %2, 47
  br i1 %i.c, label %.thread39, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %2, 32
  %.not34 = icmp eq i32 %i.b, 5
  %or.cond40 = or i1 %i.d, %.not34
  br i1 %or.cond40, label %bb.e, label %.thread39

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %.not35 = icmp eq ptr %i.f, null
  br i1 %.not35, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.g, i32 noundef 24, ptr noundef nonnull @.str.207) #8
  br label %.thread39

bb.g:                                             ; preds = %bb.e
  %i.h = icmp samesign ugt i32 %2, 7
  br i1 %i.h, label %bb.h, label %.thread39

bb.h:                                             ; preds = %bb.g
  %i.i = load i8, ptr %i.f, align 1, !tbaa !153
  %.not36 = icmp eq i8 %i.i, 0
  br i1 %.not36, label %.thread39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i8, ptr %i.j, align 4, !tbaa !120
  %i.l = urem i8 %i.k, 5                          ; 2 uses
  %i.m = icmp eq i8 %i.l, 1
  %i.n = icmp samesign ugt i32 %2, 15
  %or.cond = select i1 %i.n, i1 %i.m, i1 false
  br i1 %or.cond, label %.thread39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = icmp samesign ult i32 %2, 24
  br i1 %i.o, label %.thread39, label %switch.early.test

switch.early.test:                                ; preds = %bb.j
  %i.p = add nsw i8 %i.l, -2
  %switch.and = and i8 %i.p, -3
  %switch.selectcmp = icmp ne i8 %switch.and, 0
  %i.q = zext i1 %switch.selectcmp to i32
  br label %.thread39

.thread39:                                        ; preds = %bb.d, %bb.g, %bb.j, %switch.early.test, %bb.i, %bb.h, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.h ], [ %i.q, %switch.early.test ], [ 1, %bb.i ], [ 0, %bb.j ], [ 1, %bb.d ], [ 0, %bb.g ]
  ret i32 %.0
}

declare i32 @ff_cbs_h2645_assemble_fragment(ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind optsize uwtable
define internal void @cbs_h264_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  br label %bb.d

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.e) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !335

bb.c:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false)
  ret void

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv17 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next18, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv17
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.g) #8
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %exitcond20.not = icmp eq i64 %indvars.iv.next18, 256
  br i1 %exitcond20.not, label %bb.c, label %bb.d, !llvm.loop !336
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @cbs_h264_close(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @ff_h2645_packet_uninit(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.f) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !337

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv14 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next15, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv14
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.g) #8
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1 ; 2 uses
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 256
  br i1 %exitcond17.not, label %bb.d, label %bb.c, !llvm.loop !338

bb.d:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_read_sei_buffering_period_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i32], align 4                ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [2 x i32], align 4                ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [2 x i32], align 4                ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.209) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.l = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 31) #8 ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %i.o = trunc i32 %i.n to i8
  store i8 %i.o, ptr %2, align 4, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.mask.i = and i32 %i.n, 255                    ; 2 uses
  %i.q = zext nneg i32 %.mask.i to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 8 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %0, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.t, i32 noundef 16, ptr noundef nonnull @.str.113, i32 noundef %.mask.i) #8
  br label %cbs_h264_read_sei_buffering_period.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 2360
  store ptr %i.s, ptr %i.u, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1889
  %i.w = load i8, ptr %i.v, align 1, !tbaa !157
  %.not81.i = icmp eq i8 %i.w, 0
  br i1 %.not81.i, label %.loopexit13.i, label %.preheader12.i

.preheader12.i:                                   ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 1892
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2184
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 132
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.preheader12.i
  %indvars.iv.i = phi i64 [ 0, %.preheader12.i ], [ %indvars.iv.next.i, %bb.i ] ; 5 uses
  %i.ad = load i8, ptr %i.y, align 4, !tbaa !158
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nuw nsw i32 %i.ae, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 1, ptr %i.c, align 4, !tbaa !31
  %i.ag = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  store i32 %i.ag, ptr %i.z, align 4, !tbaa !31
  %i.ah = zext nneg i32 %i.af to i64
  %notmask85.i = shl nsw i64 -1, %i.ah
  %i.ai = trunc i64 %notmask85.i to i32
  %i.aj = xor i32 %i.ai, -1                       ; 2 uses
  %i.ak = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef %i.af, ptr noundef nonnull @.str.210, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef %i.aj) #8 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %cbs_h264_read_sei_buffering_period.exit

bb.g:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.b, align 4, !tbaa !31
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 1, ptr %i.e, align 4, !tbaa !31
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !31
  %i.ao = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef %i.af, ptr noundef nonnull @.str.211, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef %i.aj) #8 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %cbs_h264_read_sei_buffering_period.exit

bb.i:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !31
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.as = load i8, ptr %i.x, align 4, !tbaa !159
  %i.at = zext i8 %i.as to i64
  %.not82.not.i = icmp samesign ult i64 %indvars.iv.i, %i.at
  br i1 %.not82.not.i, label %bb.e, label %.loopexit13.i, !llvm.loop !339

.loopexit13.i:                                    ; preds = %bb.i, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 2188
  %i.av = load i8, ptr %i.au, align 4, !tbaa !160
  %.not83.i = icmp eq i8 %i.av, 0
  br i1 %.not83.i, label %cbs_h264_read_sei_buffering_period.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit13.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 2192
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 2484
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 388
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.preheader.i
  %indvars.iv31.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next32.i, %bb.n ] ; 5 uses
  %i.bc = load i8, ptr %i.ax, align 4, !tbaa !161
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.g, align 4, !tbaa !31
  %i.bf = trunc nuw nsw i64 %indvars.iv31.i to i32 ; 2 uses
  store i32 %i.bf, ptr %i.ay, align 4, !tbaa !31
  %i.bg = zext nneg i32 %i.be to i64
  %notmask.i = shl nsw i64 -1, %i.bg
  %i.bh = trunc i64 %notmask.i to i32
  %i.bi = xor i32 %i.bh, -1                       ; 2 uses
  %i.bj = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef %i.be, ptr noundef nonnull @.str.210, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i32 noundef 1, i32 noundef %i.bi) #8 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, -1
  br i1 %i.bk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %cbs_h264_read_sei_buffering_period.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = load i32, ptr %i.f, align 4, !tbaa !31
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv31.i
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  store i32 1, ptr %i.i, align 4, !tbaa !31
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !31
  %i.bn = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef %i.be, ptr noundef nonnull @.str.211, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef %i.bi) #8 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %cbs_h264_read_sei_buffering_period.exit

bb.n:                                             ; preds = %bb.l
  %i.bp = load i32, ptr %i.h, align 4, !tbaa !31
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv31.i
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %i.br = load i8, ptr %i.aw, align 4, !tbaa !162
  %i.bs = zext i8 %i.br to i64
  %.not84.not.i = icmp samesign ult i64 %indvars.iv31.i, %i.bs
  br i1 %.not84.not.i, label %bb.j, label %cbs_h264_read_sei_buffering_period.exit, !llvm.loop !340

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %cbs_h264_read_sei_buffering_period.exit

cbs_h264_read_sei_buffering_period.exit:          ; preds = %bb.n, %bb.c, %bb.f, %bb.h, %.loopexit13.i, %bb.k, %bb.m, %.critedge.i
  %.8.i = phi i32 [ %i.ao, %bb.h ], [ %i.ak, %bb.f ], [ %i.bn, %bb.m ], [ %i.bj, %bb.k ], [ %i.l, %.critedge.i ], [ -1094995529, %bb.c ], [ 0, %.loopexit13.i ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i32 %.8.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_write_sei_buffering_period_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = alloca [2 x i32], align 4                ; 5 uses
  %i.d = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.209) #8
  %i.g = load i8, ptr %2, align 4, !tbaa !156
  %i.h = zext i8 %i.g to i32
  %i.i = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef %i.h, i32 noundef 0, i32 noundef 31) #8 ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.b, label %cbs_h264_write_sei_buffering_period.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.l = load i8, ptr %2, align 4, !tbaa !156     ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75   ; 8 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !24
  %i.q = zext i8 %i.l to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.p, i32 noundef 16, ptr noundef nonnull @.str.113, i32 noundef %i.q) #8
  br label %cbs_h264_write_sei_buffering_period.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 2360
  store ptr %i.o, ptr %i.r, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1889
  %i.t = load i8, ptr %i.s, align 1, !tbaa !157
  %.not86.i = icmp eq i8 %i.t, 0
  br i1 %.not86.i, label %.loopexit2.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1892
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 2184
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.aa = load i8, ptr %i.u, align 4, !tbaa !159
  %i.ab = zext i8 %i.aa to i64
  %.not87.not.i = icmp samesign ult i64 %indvars.iv.i, %i.ab
  br i1 %.not87.not.i, label %bb.f, label %.loopexit2.i, !llvm.loop !341

bb.f:                                             ; preds = %bb.e, %.preheader1.i
  %indvars.iv.i = phi i64 [ 0, %.preheader1.i ], [ %indvars.iv.next.i, %bb.e ] ; 5 uses
  %i.ac = load i8, ptr %i.v, align 4, !tbaa !158
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.ad, 1                ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  store i32 %i.ah, ptr %i.x, align 4, !tbaa !31
  %i.ai = zext nneg i32 %i.ae to i64
  %notmask90.i = shl nsw i64 -1, %i.ai
  %i.aj = trunc i64 %notmask90.i to i32
  %i.ak = xor i32 %i.aj, -1                       ; 2 uses
  %i.al = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef %i.ae, ptr noundef nonnull @.str.210, ptr noundef nonnull %i.a, i32 noundef %i.ag, i32 noundef 1, i32 noundef %i.ak) #8 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.g, label %cbs_h264_write_sei_buffering_period.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !31
  store i32 1, ptr %i.b, align 4, !tbaa !31
  store i32 %i.ah, ptr %i.z, align 4, !tbaa !31
  %i.ap = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef %i.ae, ptr noundef nonnull @.str.211, ptr noundef nonnull %i.b, i32 noundef %i.ao, i32 noundef 0, i32 noundef %i.ak) #8 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.e, label %cbs_h264_write_sei_buffering_period.exit

.loopexit2.i:                                     ; preds = %bb.e, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 2188
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !160
  %.not88.i = icmp eq i8 %i.as, 0
  br i1 %.not88.i, label %cbs_h264_write_sei_buffering_period.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit2.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 2484
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 388
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 2192
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %i.az = load i8, ptr %i.av, align 4, !tbaa !162
  %i.ba = zext i8 %i.az to i64
  %.not89.not.i = icmp samesign ult i64 %indvars.iv10.i, %i.ba
  br i1 %.not89.not.i, label %bb.i, label %cbs_h264_write_sei_buffering_period.exit, !llvm.loop !342

bb.i:                                             ; preds = %bb.h, %.preheader.i
  %indvars.iv10.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next11.i, %bb.h ] ; 5 uses
  %i.bb = load i8, ptr %i.at, align 4, !tbaa !161
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.bc, 1                ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv10.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !31
  store i32 1, ptr %i.c, align 4, !tbaa !31
  %i.bg = trunc nuw nsw i64 %indvars.iv10.i to i32 ; 2 uses
  store i32 %i.bg, ptr %i.ax, align 4, !tbaa !31
  %i.bh = zext nneg i32 %i.bd to i64
  %notmask.i = shl nsw i64 -1, %i.bh
  %i.bi = trunc i64 %notmask.i to i32
  %i.bj = xor i32 %i.bi, -1                       ; 2 uses
  %i.bk = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef %i.bd, ptr noundef nonnull @.str.210, ptr noundef nonnull %i.c, i32 noundef %i.bf, i32 noundef 1, i32 noundef %i.bj) #8 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %bb.j, label %cbs_h264_write_sei_buffering_period.exit

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv10.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !31
  store i32 1, ptr %i.d, align 4, !tbaa !31
  store i32 %i.bg, ptr %i.ay, align 4, !tbaa !31
  %i.bo = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef %i.bd, ptr noundef nonnull @.str.211, ptr noundef nonnull %i.d, i32 noundef %i.bn, i32 noundef 0, i32 noundef %i.bj) #8 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.h, label %cbs_h264_write_sei_buffering_period.exit

cbs_h264_write_sei_buffering_period.exit:         ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.a, %bb.c, %.loopexit2.i
  %.8.i = phi i32 [ %i.i, %bb.a ], [ %i.bo, %bb.j ], [ -1094995529, %bb.c ], [ 0, %.loopexit2.i ], [ %i.bk, %bb.i ], [ 0, %bb.h ], [ %i.al, %bb.f ], [ %i.ap, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i32 %.8.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_read_sei_pic_timing_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17   ; 63 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.212) #8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2360
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !78   ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %.preheader30.i, label %.thread7.i

.preheader30.i:                                   ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75
  %.not91.not.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75
  %.not91.1.i = icmp eq ptr %i.ad, null           ; 2 uses
  br i1 %.not91.not.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %.preheader30.i
  br i1 %.not91.1.i, label %.thread350.i, label %bb.c

.thread.i:                                        ; preds = %.preheader30.i
  br i1 %.not91.1.i, label %bb.c, label %.thread2.i

bb.c:                                             ; preds = %.thread.i, %bb.b
  %.174.1.i = phi i64 [ 0, %.thread.i ], [ 1, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75
  %.not91.2.i = icmp eq ptr %i.af, null
  br i1 %.not91.2.i, label %.thread354.i, label %.thread2.i

.thread350.i:                                     ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %.not91.2352.i = icmp eq ptr %i.ah, null
  br i1 %.not91.2352.i, label %.thread356.i, label %.thread354.i

.thread354.i:                                     ; preds = %.thread350.i, %bb.c
  %.174.2.i = phi i64 [ %.174.1.i, %bb.c ], [ 2, %.thread350.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !75
  %.not91.3.i = icmp eq ptr %i.aj, null
  br i1 %.not91.3.i, label %.thread360.i, label %.thread2.i

.thread356.i:                                     ; preds = %.thread350.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75
  %.not91.3358.i = icmp eq ptr %i.al, null
  br i1 %.not91.3358.i, label %.thread362.i, label %.thread360.i

.thread360.i:                                     ; preds = %.thread356.i, %.thread354.i
  %.174.3.i = phi i64 [ %.174.2.i, %.thread354.i ], [ 3, %.thread356.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75
  %.not91.4.i = icmp eq ptr %i.an, null
  br i1 %.not91.4.i, label %.thread366.i, label %.thread2.i

.thread362.i:                                     ; preds = %.thread356.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75
  %.not91.4364.i = icmp eq ptr %i.ap, null
  br i1 %.not91.4364.i, label %.thread368.i, label %.thread366.i

.thread366.i:                                     ; preds = %.thread362.i, %.thread360.i
  %.174.4.i = phi i64 [ %.174.3.i, %.thread360.i ], [ 4, %.thread362.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !75
  %.not91.5.i = icmp eq ptr %i.ar, null
  br i1 %.not91.5.i, label %.thread372.i, label %.thread2.i

.thread368.i:                                     ; preds = %.thread362.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !75
  %.not91.5370.i = icmp eq ptr %i.at, null
  br i1 %.not91.5370.i, label %.thread374.i, label %.thread372.i

.thread372.i:                                     ; preds = %.thread368.i, %.thread366.i
  %.174.5.i = phi i64 [ %.174.4.i, %.thread366.i ], [ 5, %.thread368.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !75
  %.not91.6.i = icmp eq ptr %i.av, null
  br i1 %.not91.6.i, label %.thread378.i, label %.thread2.i

.thread374.i:                                     ; preds = %.thread368.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !75
  %.not91.6376.i = icmp eq ptr %i.ax, null
  br i1 %.not91.6376.i, label %.thread380.i, label %.thread378.i

.thread378.i:                                     ; preds = %.thread374.i, %.thread372.i
  %.174.6.i = phi i64 [ %.174.5.i, %.thread372.i ], [ 6, %.thread374.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !75
  %.not91.7.i = icmp eq ptr %i.az, null
  br i1 %.not91.7.i, label %.thread384.i, label %.thread2.i

.thread380.i:                                     ; preds = %.thread374.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !75
  %.not91.7382.i = icmp eq ptr %i.bb, null
  br i1 %.not91.7382.i, label %.thread386.i, label %.thread384.i

.thread384.i:                                     ; preds = %.thread380.i, %.thread378.i
  %.174.7.i = phi i64 [ %.174.6.i, %.thread378.i ], [ 7, %.thread380.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !75
  %.not91.8.i = icmp eq ptr %i.bd, null
  br i1 %.not91.8.i, label %.thread390.i, label %.thread2.i

.thread386.i:                                     ; preds = %.thread380.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !75
  %.not91.8388.i = icmp eq ptr %i.bf, null
  br i1 %.not91.8388.i, label %.thread392.i, label %.thread390.i

.thread390.i:                                     ; preds = %.thread386.i, %.thread384.i
  %.174.8.i = phi i64 [ %.174.7.i, %.thread384.i ], [ 8, %.thread386.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !75
  %.not91.9.i = icmp eq ptr %i.bh, null
  br i1 %.not91.9.i, label %.thread396.i, label %.thread2.i

.thread392.i:                                     ; preds = %.thread386.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !75
  %.not91.9394.i = icmp eq ptr %i.bj, null
  br i1 %.not91.9394.i, label %.thread398.i, label %.thread396.i

.thread396.i:                                     ; preds = %.thread392.i, %.thread390.i
  %.174.9.i = phi i64 [ %.174.8.i, %.thread390.i ], [ 9, %.thread392.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !75
  %.not91.10.i = icmp eq ptr %i.bl, null
  br i1 %.not91.10.i, label %.thread402.i, label %.thread2.i

.thread398.i:                                     ; preds = %.thread392.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !75
end_hunk_3
begin_hunk_4_@cbs_h264_read_sei_pic_timing_internal:bb.a
  %i.hw = trunc i32 %i.hv to i8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i8 %i.hw, ptr %i.hx, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  %i.hy = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.227, ptr noundef null, ptr noundef nonnull %i.i, i32 noundef 0, i32 noundef 59) #8 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, -1
  br i1 %i.hz, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  br label %cbs_h264_read_sei_pic_timing.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ia = load i32, ptr %i.i, align 4, !tbaa !31
  %i.ib = trunc i32 %i.ia to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gj, i64 10
  store i8 %i.ib, ptr %i.ic, align 2, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  %i.id = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.228, ptr noundef null, ptr noundef nonnull %i.j, i32 noundef 0, i32 noundef 23) #8 ; 2 uses
  %i.ie = icmp sgt i32 %i.id, -1
  br i1 %i.ie, label %.thread195.i.i, label %bb.ah

.thread195.i.i:                                   ; preds = %bb.ag
  %i.if = load i32, ptr %i.j, align 4, !tbaa !31
  %i.ig = trunc i32 %i.if to i8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i8 %i.ig, ptr %i.ih, align 4, !tbaa !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  br label %bb.ax

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  br label %cbs_h264_read_sei_pic_timing.exit

bb.ai:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  %i.ii = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.229, ptr noundef nonnull %i.k) #8 ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, -1
  br i1 %i.ij, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  br label %cbs_h264_read_sei_pic_timing.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ik = load i32, ptr %i.k, align 4, !tbaa !31
  %i.il = trunc i32 %i.ik to i8                   ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.gj, i64 7
  store i8 %i.il, ptr %i.im, align 1, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  %.not166.i.i = icmp eq i8 %i.il, 0
  br i1 %.not166.i.i, label %bb.ax, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  %i.in = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.226, ptr noundef null, ptr noundef nonnull %i.l, i32 noundef 0, i32 noundef 59) #8 ; 2 uses
  %i.io = icmp sgt i32 %i.in, -1
  br i1 %i.io, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  br label %cbs_h264_read_sei_pic_timing.exit

bb.an:                                            ; preds = %bb.al
  %i.ip = load i32, ptr %i.l, align 4, !tbaa !31
  %i.iq = trunc i32 %i.ip to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i8 %i.iq, ptr %i.ir, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  %i.is = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.230, ptr noundef nonnull %i.m) #8 ; 2 uses
  %i.it = icmp sgt i32 %i.is, -1
  br i1 %i.it, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  br label %cbs_h264_read_sei_pic_timing.exit

bb.ap:                                            ; preds = %bb.an
  %i.iu = load i32, ptr %i.m, align 4, !tbaa !31
  %i.iv = trunc i32 %i.iu to i8                   ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gj, i64 9
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  %.not167.i.i = icmp eq i8 %i.iv, 0
  br i1 %.not167.i.i, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #8
  %i.ix = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.227, ptr noundef null, ptr noundef nonnull %i.n, i32 noundef 0, i32 noundef 59) #8 ; 2 uses
  %i.iy = icmp sgt i32 %i.ix, -1
  br i1 %i.iy, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  br label %cbs_h264_read_sei_pic_timing.exit

bb.as:                                            ; preds = %bb.aq
  %i.iz = load i32, ptr %i.n, align 4, !tbaa !31
  %i.ja = trunc i32 %i.iz to i8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gj, i64 10
  store i8 %i.ja, ptr %i.jb, align 2, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #8
  %i.jc = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.231, ptr noundef nonnull %i.o) #8 ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, -1
  br i1 %i.jd, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  br label %cbs_h264_read_sei_pic_timing.exit

bb.au:                                            ; preds = %bb.as
  %i.je = load i32, ptr %i.o, align 4, !tbaa !31
  %i.jf = trunc i32 %i.je to i8                   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.gj, i64 11
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  %.not168.i.i = icmp eq i8 %i.jf, 0
  br i1 %.not168.i.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #8
  %i.jh = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.228, ptr noundef null, ptr noundef nonnull %i.p, i32 noundef 0, i32 noundef 23) #8 ; 2 uses
  %i.ji = icmp sgt i32 %i.jh, -1
  br i1 %i.ji, label %.thread212.i.i, label %bb.aw

.thread212.i.i:                                   ; preds = %bb.av
  %i.jj = load i32, ptr %i.p, align 4, !tbaa !31
  %i.jk = trunc i32 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i8 %i.jk, ptr %i.jl, align 4, !tbaa !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  br label %cbs_h264_read_sei_pic_timing.exit

bb.ax:                                            ; preds = %.thread212.i.i, %bb.au, %bb.ap, %bb.ak, %.thread195.i.i
  %i.jm = load i8, ptr %i.ex, align 1, !tbaa !157
  %.not169.i.i = icmp eq i8 %i.jm, 0
  br i1 %.not169.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jn = load i8, ptr %i.gc, align 4, !tbaa !160
  %.not170.i.i = icmp eq i8 %i.jn, 0
  br i1 %.not170.i.i, label %.thread214.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink.i.i = phi i64 [ 2187, %bb.ax ], [ 2487, %bb.ay ]
  %i.jo = getelementptr inbounds nuw i8, ptr %.17810.i, i64 %.sink.i.i
  %.0131.i.i = load i8, ptr %i.jo, align 1, !tbaa !19 ; 2 uses
  %.not171.i.i = icmp eq i8 %.0131.i.i, 0
  br i1 %.not171.i.i, label %bb.bb, label %.thread214.i.i

.thread214.i.i:                                   ; preds = %bb.az, %bb.ay
  %.0131217.i.i = phi i8 [ %.0131.i.i, %bb.az ], [ 24, %bb.ay ]
  %i.jp = zext i8 %.0131217.i.i to i32            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #8
  %i.jq = add nsw i32 %i.jp, -1
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = shl nuw i64 1, %i.jr
  %i.jt = trunc i64 %i.js to i32                  ; 2 uses
  %i.ju = sub i32 0, %i.jt
  %i.jv = add i32 %i.jt, -1
  %i.jw = call i32 @ff_cbs_read_signed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.jp, ptr noundef nonnull @.str.232, ptr noundef null, ptr noundef nonnull %i.q, i32 noundef %i.ju, i32 noundef %i.jv) #8 ; 2 uses
  %i.jx = icmp sgt i32 %i.jw, -1
  br i1 %i.jx, label %.thread218.i.i, label %bb.ba

.thread218.i.i:                                   ; preds = %.thread214.i.i
  %i.jy = load i32, ptr %i.q, align 4, !tbaa !31
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  br label %cbs_h264_read_sei_pic_timestamp.exit.i

bb.ba:                                            ; preds = %.thread214.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  br label %cbs_h264_read_sei_pic_timing.exit

bb.bb:                                            ; preds = %bb.az
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store i32 0, ptr %i.ka, align 4, !tbaa !184
  br label %cbs_h264_read_sei_pic_timestamp.exit.i

.critedge.i.i:                                    ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %cbs_h264_read_sei_pic_timing.exit

cbs_h264_read_sei_pic_timestamp.exit.i:           ; preds = %bb.bb, %.thread218.i.i, %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kb = load i8, ptr %i.fx, align 4, !tbaa !169
  %i.kc = zext i8 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr @cbs_h264_write_sei_pic_timing.num_clock_ts, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !19
  %i.kf = zext i8 %i.ke to i64
  %i.kg = icmp samesign ult i64 %indvars.iv.next.i, %i.kf
  br i1 %i.kg, label %bb.l, label %cbs_h264_read_sei_pic_timing.exit, !llvm.loop !343

cbs_h264_read_sei_pic_timing.exit:                ; preds = %cbs_h264_read_sei_pic_timestamp.exit.i, %.thread2.i, %.critedge.i, %bb.g, %bb.h, %bb.j, %bb.k, %bb.m, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.am, %bb.ao, %bb.ar, %bb.at, %bb.aw, %bb.ba, %.critedge.i.i
  %.8.i = phi i32 [ 0, %bb.h ], [ %i.fg, %.critedge.i ], [ %i.fn, %bb.g ], [ -1094995529, %.thread2.i ], [ %i.gk, %.critedge.i.i ], [ %i.jw, %bb.ba ], [ %i.ft, %bb.j ], [ %i.ge, %bb.m ], [ -1094995529, %bb.k ], [ %i.go, %bb.q ], [ %i.gt, %bb.s ], [ %i.gy, %bb.u ], [ %i.hd, %bb.w ], [ %i.hi, %bb.y ], [ %i.hn, %bb.aa ], [ %i.ii, %bb.aj ], [ %i.in, %bb.am ], [ %i.is, %bb.ao ], [ %i.ix, %bb.ar ], [ %i.jc, %bb.at ], [ %i.jh, %bb.aw ], [ %i.ht, %bb.ad ], [ %i.hy, %bb.af ], [ %i.id, %bb.ah ], [ 0, %cbs_h264_read_sei_pic_timestamp.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret i32 %.8.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_write_sei_pic_timing_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 63 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.212) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2360
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.preheader22.i, label %.thread7.i

.preheader22.i:                                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %.not95.not.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %.not95.1.i = icmp eq ptr %i.i, null            ; 2 uses
  br i1 %.not95.not.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %.preheader22.i
  br i1 %.not95.1.i, label %.thread92.i, label %bb.c

.thread.i:                                        ; preds = %.preheader22.i
  br i1 %.not95.1.i, label %bb.c, label %.thread2.i

bb.c:                                             ; preds = %.thread.i, %bb.b
  %.178.1.i = phi i64 [ 0, %.thread.i ], [ 1, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %.not95.2.i = icmp eq ptr %i.k, null
  br i1 %.not95.2.i, label %.thread96.i, label %.thread2.i

.thread92.i:                                      ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75
  %.not95.294.i = icmp eq ptr %i.m, null
  br i1 %.not95.294.i, label %.thread98.i, label %.thread96.i

.thread96.i:                                      ; preds = %.thread92.i, %bb.c
  %.178.2.i = phi i64 [ %.178.1.i, %bb.c ], [ 2, %.thread92.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %.not95.3.i = icmp eq ptr %i.o, null
  br i1 %.not95.3.i, label %.thread102.i, label %.thread2.i

.thread98.i:                                      ; preds = %.thread92.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %.not95.3100.i = icmp eq ptr %i.q, null
  br i1 %.not95.3100.i, label %.thread104.i, label %.thread102.i

.thread102.i:                                     ; preds = %.thread98.i, %.thread96.i
  %.178.3.i = phi i64 [ %.178.2.i, %.thread96.i ], [ 3, %.thread98.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75
  %.not95.4.i = icmp eq ptr %i.s, null
  br i1 %.not95.4.i, label %.thread108.i, label %.thread2.i

.thread104.i:                                     ; preds = %.thread98.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75
  %.not95.4106.i = icmp eq ptr %i.u, null
  br i1 %.not95.4106.i, label %.thread110.i, label %.thread108.i

.thread108.i:                                     ; preds = %.thread104.i, %.thread102.i
  %.178.4.i = phi i64 [ %.178.3.i, %.thread102.i ], [ 4, %.thread104.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %.not95.5.i = icmp eq ptr %i.w, null
  br i1 %.not95.5.i, label %.thread114.i, label %.thread2.i

.thread110.i:                                     ; preds = %.thread104.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75
  %.not95.5112.i = icmp eq ptr %i.y, null
  br i1 %.not95.5112.i, label %.thread116.i, label %.thread114.i

.thread114.i:                                     ; preds = %.thread110.i, %.thread108.i
  %.178.5.i = phi i64 [ %.178.4.i, %.thread108.i ], [ 5, %.thread110.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %.not95.6.i = icmp eq ptr %i.aa, null
  br i1 %.not95.6.i, label %.thread120.i, label %.thread2.i

.thread116.i:                                     ; preds = %.thread110.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !75
  %.not95.6118.i = icmp eq ptr %i.ac, null
  br i1 %.not95.6118.i, label %.thread122.i, label %.thread120.i

.thread120.i:                                     ; preds = %.thread116.i, %.thread114.i
  %.178.6.i = phi i64 [ %.178.5.i, %.thread114.i ], [ 6, %.thread116.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %.not95.7.i = icmp eq ptr %i.ae, null
  br i1 %.not95.7.i, label %.thread126.i, label %.thread2.i

.thread122.i:                                     ; preds = %.thread116.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75
  %.not95.7124.i = icmp eq ptr %i.ag, null
  br i1 %.not95.7124.i, label %.thread128.i, label %.thread126.i

.thread126.i:                                     ; preds = %.thread122.i, %.thread120.i
  %.178.7.i = phi i64 [ %.178.6.i, %.thread120.i ], [ 7, %.thread122.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !75
  %.not95.8.i = icmp eq ptr %i.ai, null
  br i1 %.not95.8.i, label %.thread132.i, label %.thread2.i

.thread128.i:                                     ; preds = %.thread122.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75
  %.not95.8130.i = icmp eq ptr %i.ak, null
  br i1 %.not95.8130.i, label %.thread134.i, label %.thread132.i

.thread132.i:                                     ; preds = %.thread128.i, %.thread126.i
  %.178.8.i = phi i64 [ %.178.7.i, %.thread126.i ], [ 8, %.thread128.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75
  %.not95.9.i = icmp eq ptr %i.am, null
  br i1 %.not95.9.i, label %.thread138.i, label %.thread2.i

.thread134.i:                                     ; preds = %.thread128.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75
  %.not95.9136.i = icmp eq ptr %i.ao, null
  br i1 %.not95.9136.i, label %.thread140.i, label %.thread138.i

.thread138.i:                                     ; preds = %.thread134.i, %.thread132.i
  %.178.9.i = phi i64 [ %.178.8.i, %.thread132.i ], [ 9, %.thread134.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !75
  %.not95.10.i = icmp eq ptr %i.aq, null
  br i1 %.not95.10.i, label %.thread144.i, label %.thread2.i

.thread140.i:                                     ; preds = %.thread134.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75
  %.not95.10142.i = icmp eq ptr %i.as, null
  br i1 %.not95.10142.i, label %.thread146.i, label %.thread144.i

.thread144.i:                                     ; preds = %.thread140.i, %.thread138.i
  %.178.10.i = phi i64 [ %.178.9.i, %.thread138.i ], [ 10, %.thread140.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !75
  %.not95.11.i = icmp eq ptr %i.au, null
  br i1 %.not95.11.i, label %.thread150.i, label %.thread2.i

.thread146.i:                                     ; preds = %.thread140.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !75
  %.not95.11148.i = icmp eq ptr %i.aw, null
  br i1 %.not95.11148.i, label %.thread152.i, label %.thread150.i

.thread150.i:                                     ; preds = %.thread146.i, %.thread144.i
  %.178.11.i = phi i64 [ %.178.10.i, %.thread144.i ], [ 11, %.thread146.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75
  %.not95.12.i = icmp eq ptr %i.ay, null
  br i1 %.not95.12.i, label %.thread156.i, label %.thread2.i

.thread152.i:                                     ; preds = %.thread146.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !75
  %.not95.12154.i = icmp eq ptr %i.ba, null
  br i1 %.not95.12154.i, label %.thread158.i, label %.thread156.i

.thread156.i:                                     ; preds = %.thread152.i, %.thread150.i
  %.178.12.i = phi i64 [ %.178.11.i, %.thread150.i ], [ 12, %.thread152.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !75
  %.not95.13.i = icmp eq ptr %i.bc, null
  br i1 %.not95.13.i, label %.thread162.i, label %.thread2.i

.thread158.i:                                     ; preds = %.thread152.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !75
  %.not95.13160.i = icmp eq ptr %i.be, null
  br i1 %.not95.13160.i, label %.thread164.i, label %.thread162.i

.thread162.i:                                     ; preds = %.thread158.i, %.thread156.i
  %.178.13.i = phi i64 [ %.178.12.i, %.thread156.i ], [ 13, %.thread158.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !75
  %.not95.14.i = icmp eq ptr %i.bg, null
  br i1 %.not95.14.i, label %.thread168.i, label %.thread2.i

.thread164.i:                                     ; preds = %.thread158.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 168
end_hunk_4
begin_hunk_5_@cbs_h264_write_sei_pic_timing_internal:bb.a
bb.l:                                             ; preds = %bb.k
  %i.fq = getelementptr inbounds nuw [20 x i8], ptr %i.fh, i64 %indvars.iv.i ; 18 uses
  %i.fr = load i8, ptr %i.fq, align 4, !tbaa !171
  %i.fs = zext i8 %i.fr to i32
  %i.ft = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.219, ptr noundef null, i32 noundef %i.fs, i32 noundef 0, i32 noundef 2) #8 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %bb.m, label %cbs_h264_write_sei_pic_timing.exit

bb.m:                                             ; preds = %bb.l
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !172
  %i.fx = zext i8 %i.fw to i32
  %i.fy = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.220, i32 noundef %i.fx) #8 ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, -1
  br i1 %i.fz, label %bb.n, label %cbs_h264_write_sei_pic_timing.exit

bb.n:                                             ; preds = %bb.m
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.gb = load i8, ptr %i.ga, align 2, !tbaa !173
  %i.gc = zext i8 %i.gb to i32
  %i.gd = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.221, ptr noundef null, i32 noundef %i.gc, i32 noundef 0, i32 noundef 6) #8 ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, -1
  br i1 %i.ge, label %bb.o, label %cbs_h264_write_sei_pic_timing.exit

bb.o:                                             ; preds = %bb.n
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fq, i64 3 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !174
  %i.gh = zext i8 %i.gg to i32
  %i.gi = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.222, i32 noundef %i.gh) #8 ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, -1
  br i1 %i.gj, label %bb.p, label %cbs_h264_write_sei_pic_timing.exit

bb.p:                                             ; preds = %bb.o
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.gl = load i8, ptr %i.gk, align 4, !tbaa !175
  %i.gm = zext i8 %i.gl to i32
  %i.gn = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.223, i32 noundef %i.gm) #8 ; 2 uses
  %i.go = icmp sgt i32 %i.gn, -1
  br i1 %i.go, label %bb.q, label %cbs_h264_write_sei_pic_timing.exit

bb.q:                                             ; preds = %bb.p
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fq, i64 5
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !176
  %i.gr = zext i8 %i.gq to i32
  %i.gs = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.224, i32 noundef %i.gr) #8 ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, -1
  br i1 %i.gt, label %bb.r, label %cbs_h264_write_sei_pic_timing.exit

bb.r:                                             ; preds = %bb.q
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fq, i64 6
  %i.gv = load i8, ptr %i.gu, align 2, !tbaa !177
  %i.gw = zext i8 %i.gv to i32
  %i.gx = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.225, i32 noundef %i.gw) #8 ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, -1
  br i1 %i.gy, label %bb.s, label %cbs_h264_write_sei_pic_timing.exit

bb.s:                                             ; preds = %bb.r
  %i.gz = load i8, ptr %i.gf, align 1, !tbaa !174
  %.not.i.i = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.hb = load i8, ptr %i.ha, align 4, !tbaa !178
  %i.hc = zext i8 %i.hb to i32
  %i.hd = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.226, ptr noundef null, i32 noundef %i.hc, i32 noundef 0, i32 noundef 59) #8 ; 2 uses
  %i.he = icmp sgt i32 %i.hd, -1
  br i1 %i.he, label %bb.u, label %cbs_h264_write_sei_pic_timing.exit

bb.u:                                             ; preds = %bb.t
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fq, i64 10
  %i.hg = load i8, ptr %i.hf, align 2, !tbaa !179
  %i.hh = zext i8 %i.hg to i32
  %i.hi = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.227, ptr noundef null, i32 noundef %i.hh, i32 noundef 0, i32 noundef 59) #8 ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, -1
  br i1 %i.hj, label %bb.v, label %cbs_h264_write_sei_pic_timing.exit

bb.v:                                             ; preds = %bb.u
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.hl = load i8, ptr %i.hk, align 4, !tbaa !180
  %i.hm = zext i8 %i.hl to i32
  %i.hn = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.228, ptr noundef null, i32 noundef %i.hm, i32 noundef 0, i32 noundef 23) #8 ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  br i1 %i.ho, label %bb.af, label %cbs_h264_write_sei_pic_timing.exit

bb.w:                                             ; preds = %bb.s
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fq, i64 7 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !181
  %i.hr = zext i8 %i.hq to i32
  %i.hs = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.229, i32 noundef %i.hr) #8 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, -1
  br i1 %i.ht, label %bb.x, label %cbs_h264_write_sei_pic_timing.exit

bb.x:                                             ; preds = %bb.w
  %i.hu = load i8, ptr %i.hp, align 1, !tbaa !181
  %.not186.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not186.i.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.hw = load i8, ptr %i.hv, align 4, !tbaa !178
  %i.hx = zext i8 %i.hw to i32
  %i.hy = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.226, ptr noundef null, i32 noundef %i.hx, i32 noundef 0, i32 noundef 59) #8 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, -1
  br i1 %i.hz, label %bb.z, label %cbs_h264_write_sei_pic_timing.exit

bb.z:                                             ; preds = %bb.y
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fq, i64 9 ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !182
  %i.ic = zext i8 %i.ib to i32
  %i.id = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.230, i32 noundef %i.ic) #8 ; 2 uses
  %i.ie = icmp sgt i32 %i.id, -1
  br i1 %i.ie, label %bb.aa, label %cbs_h264_write_sei_pic_timing.exit

bb.aa:                                            ; preds = %bb.z
  %i.if = load i8, ptr %i.ia, align 1, !tbaa !182
  %.not187.i.i = icmp eq i8 %i.if, 0
  br i1 %.not187.i.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fq, i64 10
  %i.ih = load i8, ptr %i.ig, align 2, !tbaa !179
  %i.ii = zext i8 %i.ih to i32
  %i.ij = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.227, ptr noundef null, i32 noundef %i.ii, i32 noundef 0, i32 noundef 59) #8 ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, -1
  br i1 %i.ik, label %bb.ac, label %cbs_h264_write_sei_pic_timing.exit

bb.ac:                                            ; preds = %bb.ab
  %i.il = getelementptr inbounds nuw i8, ptr %i.fq, i64 11 ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !183
  %i.in = zext i8 %i.im to i32
  %i.io = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.231, i32 noundef %i.in) #8 ; 2 uses
  %i.ip = icmp sgt i32 %i.io, -1
  br i1 %i.ip, label %bb.ad, label %cbs_h264_write_sei_pic_timing.exit

bb.ad:                                            ; preds = %bb.ac
  %i.iq = load i8, ptr %i.il, align 1, !tbaa !183
  %.not188.i.i = icmp eq i8 %i.iq, 0
  br i1 %.not188.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.is = load i8, ptr %i.ir, align 4, !tbaa !180
  %i.it = zext i8 %i.is to i32
  %i.iu = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.228, ptr noundef null, i32 noundef %i.it, i32 noundef 0, i32 noundef 23) #8 ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, -1
  br i1 %i.iv, label %bb.af, label %cbs_h264_write_sei_pic_timing.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.x, %bb.v
  %i.iw = load i8, ptr %i.ec, align 1, !tbaa !157
  %.not189.i.i = icmp eq i8 %i.iw, 0
  br i1 %.not189.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ix = load i8, ptr %i.fi, align 4, !tbaa !160
  %.not190.i.i = icmp eq i8 %i.ix, 0
  br i1 %.not190.i.i, label %.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i.i = phi i64 [ 2187, %bb.af ], [ 2487, %bb.ag ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.18210.i, i64 %.sink.i.i
  %.0150.i.i = load i8, ptr %i.iy, align 1, !tbaa !19 ; 2 uses
  %.not191.i.i = icmp eq i8 %.0150.i.i, 0
  br i1 %.not191.i.i, label %bb.ai, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ah, %bb.ag
  %.0150196.i.i = phi i8 [ %.0150.i.i, %bb.ah ], [ 24, %bb.ag ]
  %i.iz = zext i8 %.0150196.i.i to i32            ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !184
  %i.jc = add nsw i32 %i.iz, -1
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = shl nuw i64 1, %i.jd
  %i.jf = trunc i64 %i.je to i32                  ; 2 uses
  %i.jg = sub i32 0, %i.jf
  %i.jh = add i32 %i.jf, -1
  %i.ji = call i32 @ff_cbs_write_signed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.iz, ptr noundef nonnull @.str.232, ptr noundef null, i32 noundef %i.jb, i32 noundef %i.jg, i32 noundef %i.jh) #8 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, -1
  br i1 %i.jj, label %cbs_h264_write_sei_pic_timestamp.exit.i, label %cbs_h264_write_sei_pic_timing.exit

bb.ai:                                            ; preds = %bb.ah
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !184 ; 2 uses
  %.not192.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not192.i.i, label %cbs_h264_write_sei_pic_timestamp.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load ptr, ptr %0, align 8, !tbaa !24
  %i.jn = sext i32 %i.jl to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jm, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.232, i64 noundef %i.jn, i64 noundef 0) #8
  br label %cbs_h264_write_sei_pic_timing.exit

cbs_h264_write_sei_pic_timestamp.exit.i:          ; preds = %bb.ai, %.thread.i.i, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jo = load i8, ptr %i.ey, align 4, !tbaa !169
  %i.jp = zext i8 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr @cbs_h264_write_sei_pic_timing.num_clock_ts, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !19
  %i.js = zext i8 %i.jr to i64
  %i.jt = icmp samesign ult i64 %indvars.iv.next.i, %i.js
  br i1 %i.jt, label %bb.j, label %cbs_h264_write_sei_pic_timing.exit, !llvm.loop !344

cbs_h264_write_sei_pic_timing.exit:               ; preds = %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v, %bb.w, %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ae, %.thread.i.i, %cbs_h264_write_sei_pic_timestamp.exit.i, %.thread2.i, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.aj
  %.8.i = phi i32 [ 0, %bb.g ], [ %i.em, %bb.e ], [ %i.eu, %bb.f ], [ -1094995529, %.thread2.i ], [ -1094995529, %bb.i ], [ -1094995529, %bb.aj ], [ %i.fb, %bb.h ], [ %i.ft, %bb.l ], [ 0, %cbs_h264_write_sei_pic_timestamp.exit.i ], [ %i.fy, %bb.m ], [ %i.gd, %bb.n ], [ %i.gi, %bb.o ], [ %i.gn, %bb.p ], [ %i.gs, %bb.q ], [ %i.gx, %bb.r ], [ %i.hs, %bb.w ], [ %i.hy, %bb.y ], [ %i.id, %bb.z ], [ %i.ij, %bb.ab ], [ %i.io, %bb.ac ], [ %i.iu, %bb.ae ], [ %i.hd, %bb.t ], [ %i.hi, %bb.u ], [ %i.hn, %bb.v ], [ %i.ji, %.thread.i.i ], [ %i.fn, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.8.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_read_sei_pan_scan_rect_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [2 x i32], align 4                ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [2 x i32], align 4                ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca [2 x i32], align 4                ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca [2 x i32], align 4                ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.233) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.m = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.234, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef -2) #8 ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.a, align 4, !tbaa !31
  store i32 %i.o, ptr %2, align 4, !tbaa !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.p = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.235, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %cbs_h264_read_sei_pan_scan_rect.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.b, align 4, !tbaa !31
  %i.s = trunc i32 %i.r to i8                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.s, ptr %i.t, align 4, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %bb.e, label %cbs_h264_read_sei_pan_scan_rect.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.u = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.236, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 2) #8 ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.f, label %.thread3.i

.thread3.i:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %cbs_h264_read_sei_pan_scan_rect.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.c, align 4, !tbaa !31
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  store i8 %i.x, ptr %i.y, align 1, !tbaa !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 44
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %bb.f
  %indvars.iv.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i, %bb.o ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 1, ptr %i.e, align 4, !tbaa !31
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  store i32 %i.ah, ptr %i.z, align 4, !tbaa !31
  %i.ai = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.237, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i32 noundef -2147483647, i32 noundef 2147483647) #8 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %cbs_h264_read_sei_pan_scan_rect.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !31
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.g, align 4, !tbaa !31
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !31
  %i.am = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.238, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i32 noundef -2147483647, i32 noundef 2147483647) #8 ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %cbs_h264_read_sei_pan_scan_rect.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !31
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  store i32 1, ptr %i.i, align 4, !tbaa !31
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !31
  %i.aq = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.239, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, i32 noundef -2147483647, i32 noundef 2147483647) #8 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %cbs_h264_read_sei_pan_scan_rect.exit

bb.m:                                             ; preds = %bb.k
  %i.as = load i32, ptr %i.h, align 4, !tbaa !31
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  store i32 1, ptr %i.k, align 4, !tbaa !31
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !31
  %i.au = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.240, ptr noundef nonnull %i.k, ptr noundef nonnull %i.j, i32 noundef -2147483647, i32 noundef 2147483647) #8 ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  br label %cbs_h264_read_sei_pan_scan_rect.exit

bb.o:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.j, align 4, !tbaa !31
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ay = load i8, ptr %i.y, align 1, !tbaa !188
  %i.az = zext i8 %i.ay to i64
  %.not84.not.i = icmp samesign ult i64 %indvars.iv.i, %i.az
  br i1 %.not84.not.i, label %bb.g, label %bb.p, !llvm.loop !345

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  %i.ba = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.241, ptr noundef null, ptr noundef nonnull %i.l, i32 noundef 0, i32 noundef 16384) #8 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %.thread17.i, label %bb.q

.thread17.i:                                      ; preds = %bb.p
  %i.bc = load i32, ptr %i.l, align 4, !tbaa !31
  %i.bd = trunc i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i16 %i.bd, ptr %i.be, align 4, !tbaa !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  br label %cbs_h264_read_sei_pan_scan_rect.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  br label %cbs_h264_read_sei_pan_scan_rect.exit

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %cbs_h264_read_sei_pan_scan_rect.exit

cbs_h264_read_sei_pan_scan_rect.exit:             ; preds = %bb.c, %bb.d, %.thread3.i, %bb.h, %bb.j, %bb.l, %bb.n, %.thread17.i, %bb.q, %.critedge.i
  %.9.i = phi i32 [ %i.m, %.critedge.i ], [ %i.au, %bb.n ], [ %i.aq, %bb.l ], [ %i.am, %bb.j ], [ %i.ai, %bb.h ], [ %i.ba, %bb.q ], [ %i.u, %.thread3.i ], [ %i.p, %bb.c ], [ 0, %.thread17.i ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret i32 %.9.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_write_sei_pan_scan_rect_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = alloca [2 x i32], align 4                ; 5 uses
  %i.d = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.233) #8
  %i.e = load i32, ptr %2, align 4, !tbaa !186
  %i.f = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.234, ptr noundef null, i32 noundef %i.e, i32 noundef 0, i32 noundef -2) #8 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %cbs_h264_write_sei_pan_scan_rect.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !187
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.235, i32 noundef %i.j) #8 ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %cbs_h264_write_sei_pan_scan_rect.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.h, align 4, !tbaa !187
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !188
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.236, ptr noundef null, i32 noundef %i.p, i32 noundef 0, i32 noundef 2) #8 ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %.preheader.i, label %cbs_h264_write_sei_pan_scan_rect.exit

.preheader.i:                                     ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.f

bb.e:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.aa = load i8, ptr %i.n, align 1, !tbaa !188
  %i.ab = zext i8 %i.aa to i64
  %.not92.not.i = icmp samesign ult i64 %indvars.iv.i, %i.ab
  br i1 %.not92.not.i, label %bb.f, label %bb.j, !llvm.loop !346

bb.f:                                             ; preds = %bb.e, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 7 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.ae = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  store i32 %i.ae, ptr %i.t, align 4, !tbaa !31
  %i.af = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.237, ptr noundef nonnull %i.a, i32 noundef %i.ad, i32 noundef -2147483647, i32 noundef 2147483647) #8 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.g, label %cbs_h264_write_sei_pan_scan_rect.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !31
  store i32 1, ptr %i.b, align 4, !tbaa !31
  store i32 %i.ae, ptr %i.v, align 4, !tbaa !31
  %i.aj = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.238, ptr noundef nonnull %i.b, i32 noundef %i.ai, i32 noundef -2147483647, i32 noundef 2147483647) #8 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.h, label %cbs_h264_write_sei_pan_scan_rect.exit

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !31
  store i32 1, ptr %i.c, align 4, !tbaa !31
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !31
  %i.an = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.239, ptr noundef nonnull %i.c, i32 noundef %i.am, i32 noundef -2147483647, i32 noundef 2147483647) #8 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.i, label %cbs_h264_write_sei_pan_scan_rect.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !31
  store i32 1, ptr %i.d, align 4, !tbaa !31
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !31
  %i.ar = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.240, ptr noundef nonnull %i.d, i32 noundef %i.aq, i32 noundef -2147483647, i32 noundef 2147483647) #8 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.e, label %cbs_h264_write_sei_pan_scan_rect.exit

bb.j:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.au = load i16, ptr %i.at, align 4, !tbaa !189
  %i.av = zext i16 %i.au to i32
  %i.aw = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.241, ptr noundef null, i32 noundef %i.av, i32 noundef 0, i32 noundef 16384) #8 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.k, label %cbs_h264_write_sei_pan_scan_rect.exit

bb.k:                                             ; preds = %bb.j, %bb.c
  br label %cbs_h264_write_sei_pan_scan_rect.exit

cbs_h264_write_sei_pan_scan_rect.exit:            ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.a, %bb.b, %bb.d, %bb.j, %bb.k
  %.9.i = phi i32 [ 0, %bb.k ], [ %i.aw, %bb.j ], [ %i.q, %bb.d ], [ %i.k, %bb.b ], [ %i.f, %bb.a ], [ %i.ar, %bb.i ], [ %i.an, %bb.h ], [ %i.aj, %bb.g ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i32 %.9.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_read_sei_recovery_point_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.242) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.e = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.243, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 65535) #8 ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 4, !tbaa !31
  %i.h = trunc i32 %i.g to i16
  store i16 %i.h, ptr %2, align 2, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.i = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.244, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %cbs_h264_read_sei_recovery_point.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.b, align 4, !tbaa !31
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.l, ptr %i.m, align 2, !tbaa !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.n = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.245, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %cbs_h264_read_sei_recovery_point.exit

bb.f:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.c, align 4, !tbaa !31
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.q, ptr %i.r, align 1, !tbaa !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.s = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.246, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 2) #8 ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.d, align 4, !tbaa !31
  %i.v = trunc i32 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.v, ptr %i.w, align 2, !tbaa !194
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %spec.select.i = phi i32 [ 0, %bb.g ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %cbs_h264_read_sei_recovery_point.exit

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %cbs_h264_read_sei_recovery_point.exit

cbs_h264_read_sei_recovery_point.exit:            ; preds = %bb.c, %bb.e, %bb.h, %.critedge.i
  %.4.i = phi i32 [ %i.e, %.critedge.i ], [ %spec.select.i, %bb.h ], [ %i.n, %bb.e ], [ %i.i, %bb.c ]
  ret i32 %.4.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_write_sei_recovery_point_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.242) #8
  %i.a = load i16, ptr %2, align 2, !tbaa !191
  %i.b = zext i16 %i.a to i32
  %i.c = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.243, ptr noundef null, i32 noundef %i.b, i32 noundef 0, i32 noundef 65535) #8 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %cbs_h264_write_sei_recovery_point.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !192
  %i.g = zext i8 %i.f to i32
  %i.h = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.244, i32 noundef %i.g) #8 ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %cbs_h264_write_sei_recovery_point.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !193
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.245, i32 noundef %i.l) #8 ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %cbs_h264_write_sei_recovery_point.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load i8, ptr %i.o, align 2, !tbaa !194
  %i.q = zext i8 %i.p to i32
  %i.r = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.246, ptr noundef null, i32 noundef %i.q, i32 noundef 0, i32 noundef 2) #8
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.r, i32 0)
  br label %cbs_h264_write_sei_recovery_point.exit

cbs_h264_write_sei_recovery_point.exit:           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.4.i = phi i32 [ %i.c, %bb.a ], [ %spec.select.i, %bb.d ], [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  ret i32 %.4.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_read_film_grain_characteristics_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 13 uses
  %i.n = alloca [2 x i32], align 4                ; 9 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca [2 x i32], align 4                ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca [2 x i32], align 4                ; 5 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca [3 x i32], align 4                ; 6 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca [3 x i32], align 4                ; 6 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %i.x = alloca [4 x i32], align 4                ; 7 uses
  %i.y = alloca i32, align 4                      ; 5 uses
end_hunk_5
begin_hunk_6_@cbs_h264_read_film_grain_characteristics_internal:bb.a
  %i.hy = icmp sgt i32 %i.hx, -1
  br i1 %i.hy, label %bb.ab, label %.thread28.i

.thread28.i:                                      ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  br label %.thread46.i

bb.ab:                                            ; preds = %bb.aa
  %i.hz = load i32, ptr %i.l, align 4, !tbaa !31
  %i.ia = trunc i32 %i.hz to i8
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %i.ia, ptr %i.ib, align 2, !tbaa !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  store i32 1, ptr %i.n, align 4, !tbaa !31
  store i32 0, ptr %i.ic, align 4, !tbaa !31
  %i.ie = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.260, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.if = icmp sgt i32 %i.ie, -1
  br i1 %i.if, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %.lcssa91.i = phi i32 [ %i.ie, %bb.ab ], [ %i.ii, %bb.ad ], [ %i.in, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  br label %.thread46.i

bb.ad:                                            ; preds = %bb.ab
  %i.ig = load i32, ptr %i.m, align 4, !tbaa !31
  %i.ih = trunc i32 %i.ig to i8
  store i8 %i.ih, ptr %i.id, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  store i32 1, ptr %i.n, align 4, !tbaa !31
  store i32 1, ptr %i.ic, align 4, !tbaa !31
  %i.ii = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.260, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, -1
  br i1 %i.ij, label %bb.ae, label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.ik = load i32, ptr %i.m, align 4, !tbaa !31
  %i.il = trunc i32 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %i.il, ptr %i.im, align 2, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  store i32 1, ptr %i.n, align 4, !tbaa !31
  store i32 2, ptr %i.ic, align 4, !tbaa !31
  %i.in = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.260, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.io = icmp sgt i32 %i.in, -1
  br i1 %i.io, label %.preheader.i, label %bb.ac

.preheader.i:                                     ; preds = %bb.ae
  %i.ip = load i32, ptr %i.m, align 4, !tbaa !31
  %i.iq = trunc i32 %i.ip to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  %i.is = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.iu = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.iw = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.iz = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 788
  %i.jc = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 1556
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.i, %.preheader.i
  %indvars.iv99.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next100.i, %.loopexit.i ] ; 9 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.id, i64 %indvars.iv99.i
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !19
  %.not249.i = icmp eq i8 %i.jh, 0
  br i1 %.not249.i, label %.loopexit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #8
  store i32 1, ptr %i.p, align 4, !tbaa !31
  %i.ji = trunc nuw nsw i64 %indvars.iv99.i to i32 ; 5 uses
  store i32 %i.ji, ptr %i.is, align 4, !tbaa !31
  %i.jj = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.261, ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, i32 noundef 0, i32 noundef 255) #8 ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, -1
  br i1 %i.jk, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  br label %.thread46.i

bb.ai:                                            ; preds = %bb.ag
  %i.jl = load i32, ptr %i.o, align 4, !tbaa !31
  %i.jm = trunc i32 %i.jl to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.it, i64 %indvars.iv99.i ; 2 uses
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #8
  store i32 1, ptr %i.r, align 4, !tbaa !31
  store i32 %i.ji, ptr %i.iu, align 4, !tbaa !31
  %i.jo = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.262, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q, i32 noundef 0, i32 noundef 5) #8 ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, -1
  br i1 %i.jp, label %bb.aj, label %.thread36.i

.thread36.i:                                      ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  br label %.thread46.i

bb.aj:                                            ; preds = %bb.ai
  %i.jq = load i32, ptr %i.q, align 4, !tbaa !31
  %i.jr = trunc i32 %i.jq to i8
  %i.js = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv99.i ; 2 uses
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  %i.jt = getelementptr inbounds nuw [256 x i8], ptr %i.iy, i64 %indvars.iv99.i
  %i.ju = getelementptr inbounds nuw [256 x i8], ptr %i.jb, i64 %indvars.iv99.i
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv99.i
  %i.jw = getelementptr inbounds nuw [3072 x i8], ptr %i.jf, i64 %indvars.iv99.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ar, %bb.aj
  %indvars.iv96.i = phi i64 [ 0, %bb.aj ], [ %indvars.iv.next97.i, %bb.ar ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #8
  store i32 2, ptr %i.t, align 4, !tbaa !31
  store i32 %i.ji, ptr %i.iw, align 4, !tbaa !31
  %i.jx = trunc nuw nsw i64 %indvars.iv96.i to i32 ; 3 uses
  store i32 %i.jx, ptr %i.ix, align 4, !tbaa !31
  %i.jy = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.263, ptr noundef nonnull %i.t, ptr noundef nonnull %i.s, i32 noundef 0, i32 noundef 255) #8 ; 2 uses
  %i.jz = icmp sgt i32 %i.jy, -1
  br i1 %i.jz, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  br label %.thread46.i

bb.am:                                            ; preds = %bb.ak
  %i.ka = load i32, ptr %i.s, align 4, !tbaa !31
  %i.kb = trunc i32 %i.ka to i8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv96.i
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #8
  store i32 2, ptr %i.v, align 4, !tbaa !31
  store i32 %i.ji, ptr %i.iz, align 4, !tbaa !31
  store i32 %i.jx, ptr %i.ja, align 4, !tbaa !31
  %i.kd = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.264, ptr noundef nonnull %i.v, ptr noundef nonnull %i.u, i32 noundef 0, i32 noundef 255) #8 ; 2 uses
  %i.ke = icmp sgt i32 %i.kd, -1
  br i1 %i.ke, label %bb.an, label %.thread41.i

.thread41.i:                                      ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  br label %.thread46.i

bb.an:                                            ; preds = %bb.am
  %i.kf = load i32, ptr %i.u, align 4, !tbaa !31
  %i.kg = trunc i32 %i.kf to i8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ju, i64 %indvars.iv96.i
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  %i.ki = load i32, ptr %i.jv, align 4, !tbaa !31 ; 2 uses
  %i.kj = add nsw i32 %i.ki, -1
  %notmask.i = shl nsw i32 -1, %i.ki
  %i.kk = xor i32 %notmask.i, -1
  %i.kl = getelementptr inbounds nuw [12 x i8], ptr %i.jw, i64 %indvars.iv96.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %indvars.iv.i = phi i64 [ 0, %bb.an ], [ %indvars.iv.next.i, %bb.aq ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #8
  store i32 3, ptr %i.x, align 4, !tbaa !31
  store i32 %i.ji, ptr %i.jc, align 4, !tbaa !31
  store i32 %i.jx, ptr %i.jd, align 4, !tbaa !31
  %i.km = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.km, ptr %i.je, align 4, !tbaa !31
  %i.kn = load i8, ptr %i.fh, align 1, !tbaa !197
  %i.ko = zext i8 %i.kn to i32
  %i.kp = shl i32 %i.ko, %i.kj                    ; 2 uses
  %i.kq = sub nsw i32 0, %i.kp
  %i.kr = sub nsw i32 %i.kk, %i.kp
  %i.ks = call i32 @ff_cbs_read_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.265, ptr noundef nonnull %i.x, ptr noundef nonnull %i.w, i32 noundef %i.kq, i32 noundef %i.kr) #8 ; 2 uses
  %i.kt = icmp sgt i32 %i.ks, -1
  br i1 %i.kt, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #8
  br label %.thread46.i

bb.aq:                                            ; preds = %bb.ao
  %i.ku = load i32, ptr %i.w, align 4, !tbaa !31
  %i.kv = trunc i32 %i.ku to i16
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %indvars.iv.i
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.kx = load i8, ptr %i.js, align 1, !tbaa !19
  %i.ky = zext i8 %i.kx to i64
  %.not251.not.i = icmp samesign ult i64 %indvars.iv.i, %i.ky
  br i1 %.not251.not.i, label %bb.ao, label %bb.ar, !llvm.loop !347

bb.ar:                                            ; preds = %bb.aq
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1
  %i.kz = load i8, ptr %i.jn, align 1, !tbaa !19
  %i.la = zext i8 %i.kz to i64
  %.not250.not.i = icmp samesign ult i64 %indvars.iv96.i, %i.la
  br i1 %.not250.not.i, label %bb.ak, label %.loopexit.i, !llvm.loop !348

.loopexit.i:                                      ; preds = %bb.ar, %bb.af
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next100.i, 3
  br i1 %exitcond.not.i, label %bb.as, label %bb.af, !llvm.loop !349

bb.as:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #8
  %i.lb = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.266, ptr noundef null, ptr noundef nonnull %i.y, i32 noundef 0, i32 noundef 16384) #8 ; 2 uses
  %i.lc = icmp sgt i32 %i.lb, -1
  br i1 %i.lc, label %.thread49.i, label %bb.at

.thread49.i:                                      ; preds = %bb.as
  %i.ld = load i32, ptr %i.y, align 4, !tbaa !31
  %i.le = trunc i32 %i.ld to i8
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 10772
  store i8 %i.le, ptr %i.lf, align 2, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %cbs_h264_read_film_grain_characteristics.exit

.thread46.i:                                      ; preds = %bb.ap, %.thread41.i, %bb.al, %.thread36.i, %bb.ah, %bb.ac, %.thread28.i, %bb.z, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.h, %bb.f
  %.24.ph.i = phi i32 [ %i.fd, %bb.f ], [ %i.fi, %bb.h ], [ -1094995529, %bb.w ], [ %i.fn, %bb.k ], [ %i.fs, %bb.m ], [ %i.fx, %bb.o ], [ %i.gc, %bb.q ], [ %i.gh, %bb.s ], [ %i.gm, %bb.u ], [ %i.hs, %bb.z ], [ %i.hx, %.thread28.i ], [ %i.jj, %bb.ah ], [ %i.jo, %.thread36.i ], [ %i.jy, %bb.al ], [ %i.kd, %.thread41.i ], [ %i.ks, %bb.ap ], [ %.lcssa91.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %cbs_h264_read_film_grain_characteristics.exit

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %cbs_h264_read_film_grain_characteristics.exit

.critedge.i:                                      ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %cbs_h264_read_film_grain_characteristics.exit

cbs_h264_read_film_grain_characteristics.exit:    ; preds = %bb.d, %.thread49.i, %.thread46.i, %bb.at, %.critedge.i
  %.25.i = phi i32 [ %.24.ph.i, %.thread46.i ], [ %i.lb, %bb.at ], [ %i.ez, %.critedge.i ], [ 0, %.thread49.i ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret i32 %.25.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_write_film_grain_characteristics_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = alloca [2 x i32], align 4                ; 9 uses
  %i.c = alloca [2 x i32], align 4                ; 5 uses
  %i.d = alloca [2 x i32], align 4                ; 5 uses
  %i.e = alloca [3 x i32], align 4                ; 6 uses
  %i.f = alloca [3 x i32], align 4                ; 6 uses
  %i.g = alloca [4 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 63 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.247) #8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.preheader12.i, label %.thread.i

.preheader12.i:                                   ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75
  %.not281.not.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %.not281.1.i = icmp eq ptr %i.o, null           ; 2 uses
  br i1 %.not281.not.i, label %bb.b, label %.thread72.i

bb.b:                                             ; preds = %.preheader12.i
  br i1 %.not281.1.i, label %.thread76.i, label %bb.c

.thread72.i:                                      ; preds = %.preheader12.i
  br i1 %.not281.1.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %.thread72.i, %bb.b
  %.1234.1.i = phi i64 [ 0, %.thread72.i ], [ 1, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %.not281.2.i = icmp eq ptr %i.q, null
  br i1 %.not281.2.i, label %.thread80.i, label %.thread.i

.thread76.i:                                      ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75
  %.not281.278.i = icmp eq ptr %i.s, null
  br i1 %.not281.278.i, label %.thread82.i, label %.thread80.i

.thread80.i:                                      ; preds = %.thread76.i, %bb.c
  %.1234.2.i = phi i64 [ %.1234.1.i, %bb.c ], [ 2, %.thread76.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75
  %.not281.3.i = icmp eq ptr %i.u, null
  br i1 %.not281.3.i, label %.thread86.i, label %.thread.i

.thread82.i:                                      ; preds = %.thread76.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %.not281.384.i = icmp eq ptr %i.w, null
  br i1 %.not281.384.i, label %.thread88.i, label %.thread86.i

.thread86.i:                                      ; preds = %.thread82.i, %.thread80.i
  %.1234.3.i = phi i64 [ %.1234.2.i, %.thread80.i ], [ 3, %.thread82.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75
  %.not281.4.i = icmp eq ptr %i.y, null
  br i1 %.not281.4.i, label %.thread92.i, label %.thread.i

.thread88.i:                                      ; preds = %.thread82.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %.not281.490.i = icmp eq ptr %i.aa, null
  br i1 %.not281.490.i, label %.thread94.i, label %.thread92.i

.thread92.i:                                      ; preds = %.thread88.i, %.thread86.i
  %.1234.4.i = phi i64 [ %.1234.3.i, %.thread86.i ], [ 4, %.thread88.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !75
  %.not281.5.i = icmp eq ptr %i.ac, null
  br i1 %.not281.5.i, label %.thread98.i, label %.thread.i

.thread94.i:                                      ; preds = %.thread88.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %.not281.596.i = icmp eq ptr %i.ae, null
  br i1 %.not281.596.i, label %.thread100.i, label %.thread98.i

.thread98.i:                                      ; preds = %.thread94.i, %.thread92.i
  %.1234.5.i = phi i64 [ %.1234.4.i, %.thread92.i ], [ 5, %.thread94.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75
  %.not281.6.i = icmp eq ptr %i.ag, null
  br i1 %.not281.6.i, label %.thread104.i, label %.thread.i

.thread100.i:                                     ; preds = %.thread94.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !75
  %.not281.6102.i = icmp eq ptr %i.ai, null
  br i1 %.not281.6102.i, label %.thread106.i, label %.thread104.i

.thread104.i:                                     ; preds = %.thread100.i, %.thread98.i
  %.1234.6.i = phi i64 [ %.1234.5.i, %.thread98.i ], [ 6, %.thread100.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75
  %.not281.7.i = icmp eq ptr %i.ak, null
  br i1 %.not281.7.i, label %.thread110.i, label %.thread.i

.thread106.i:                                     ; preds = %.thread100.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75
  %.not281.7108.i = icmp eq ptr %i.am, null
  br i1 %.not281.7108.i, label %.thread112.i, label %.thread110.i

.thread110.i:                                     ; preds = %.thread106.i, %.thread104.i
  %.1234.7.i = phi i64 [ %.1234.6.i, %.thread104.i ], [ 7, %.thread106.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75
  %.not281.8.i = icmp eq ptr %i.ao, null
  br i1 %.not281.8.i, label %.thread116.i, label %.thread.i

.thread112.i:                                     ; preds = %.thread106.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !75
  %.not281.8114.i = icmp eq ptr %i.aq, null
  br i1 %.not281.8114.i, label %.thread118.i, label %.thread116.i

.thread116.i:                                     ; preds = %.thread112.i, %.thread110.i
  %.1234.8.i = phi i64 [ %.1234.7.i, %.thread110.i ], [ 8, %.thread112.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75
  %.not281.9.i = icmp eq ptr %i.as, null
  br i1 %.not281.9.i, label %.thread122.i, label %.thread.i

.thread118.i:                                     ; preds = %.thread112.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !75
  %.not281.9120.i = icmp eq ptr %i.au, null
  br i1 %.not281.9120.i, label %.thread124.i, label %.thread122.i

.thread122.i:                                     ; preds = %.thread118.i, %.thread116.i
  %.1234.9.i = phi i64 [ %.1234.8.i, %.thread116.i ], [ 9, %.thread118.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !75
  %.not281.10.i = icmp eq ptr %i.aw, null
  br i1 %.not281.10.i, label %.thread128.i, label %.thread.i

.thread124.i:                                     ; preds = %.thread118.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75
  %.not281.10126.i = icmp eq ptr %i.ay, null
  br i1 %.not281.10126.i, label %.thread130.i, label %.thread128.i

.thread128.i:                                     ; preds = %.thread124.i, %.thread122.i
  %.1234.10.i = phi i64 [ %.1234.9.i, %.thread122.i ], [ 10, %.thread124.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 144
end_hunk_6
begin_hunk_7_@cbs_h264_write_film_grain_characteristics_internal:bb.a

bb.u:                                             ; preds = %bb.t
  %i.gu = load ptr, ptr %0, align 8, !tbaa !24
  %i.gv = zext i8 %i.gr to i64
  %i.gw = zext i8 %i.gt to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gu, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.253, i64 noundef %i.gv, i64 noundef %i.gw) #8
  br label %.thread2.i

bb.v:                                             ; preds = %bb.t
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.gy = load i8, ptr %i.gx, align 2, !tbaa !202 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.1242.i, i64 1872
  %i.ha = load i8, ptr %i.gz, align 4, !tbaa !206 ; 2 uses
  %.not288.i = icmp eq i8 %i.gy, %i.ha
  br i1 %.not288.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hb = load ptr, ptr %0, align 8, !tbaa !24
  %i.hc = zext i8 %i.gy to i64
  %i.hd = zext i8 %i.ha to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hb, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.254, i64 noundef %i.hc, i64 noundef %i.hd) #8
  br label %.thread2.i

bb.x:                                             ; preds = %bb.v
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !203 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.1242.i, i64 1873
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !207 ; 2 uses
  %.not289.i = icmp eq i8 %i.hf, %i.hh
  br i1 %.not289.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hi = load ptr, ptr %0, align 8, !tbaa !24
  %i.hj = zext i8 %i.hf to i64
  %i.hk = zext i8 %i.hh to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hi, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.255, i64 noundef %i.hj, i64 noundef %i.hk) #8
  br label %.thread2.i

bb.z:                                             ; preds = %bb.x
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hm = load i8, ptr %i.hl, align 2, !tbaa !204 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.1242.i, i64 1874
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !208 ; 2 uses
  %.not290.i = icmp eq i8 %i.hm, %i.ho
  br i1 %.not290.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hp = load ptr, ptr %0, align 8, !tbaa !24
  %i.hq = zext i8 %i.hm to i64
  %i.hr = zext i8 %i.ho to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hp, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.256, i64 noundef %i.hq, i64 noundef %i.hr) #8
  br label %.thread2.i

bb.ab:                                            ; preds = %bb.z, %._crit_edge.i
  %i.hs = phi i8 [ %.pre38.i, %._crit_edge.i ], [ %i.gk, %bb.z ]
  %i.ht = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.gd, %bb.z ]
  %i.hu = zext i8 %i.ht to i32
  %i.hv = add nuw nsw i32 %i.hu, 8
  store i32 %i.hv, ptr %i.a, align 4, !tbaa !31
  %i.hw = zext i8 %i.hs to i32
  %i.hx = add nuw nsw i32 %i.hw, 8                ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !31
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.hx, ptr %i.hz, align 4, !tbaa !31
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !209
  %i.ic = zext i8 %i.ib to i32
  %i.id = tail call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.258, ptr noundef null, i32 noundef %i.ic, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.ie = icmp sgt i32 %i.id, -1
  br i1 %i.ie, label %bb.ac, label %.thread2.i

bb.ac:                                            ; preds = %bb.ab
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ig = load i8, ptr %i.if, align 2, !tbaa !210
  %i.ih = zext i8 %i.ig to i32
  %i.ii = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.259, i32 noundef %i.ih) #8 ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, -1
  br i1 %i.ij, label %.preheader10.i, label %.thread2.i

.preheader10.i:                                   ; preds = %bb.ac
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.im = load i8, ptr %i.ik, align 1, !tbaa !19
  %i.in = zext i8 %i.im to i32
  store i32 1, ptr %i.b, align 4, !tbaa !31
  store i32 0, ptr %i.il, align 4, !tbaa !31
  %i.io = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.260, ptr noundef nonnull %i.b, i32 noundef %i.in, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.ip = icmp sgt i32 %i.io, -1
  br i1 %i.ip, label %bb.ad, label %.thread2.i

bb.ad:                                            ; preds = %.preheader10.i
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ir = load i8, ptr %i.iq, align 2, !tbaa !19
  %i.is = zext i8 %i.ir to i32
  store i32 1, ptr %i.b, align 4, !tbaa !31
  store i32 1, ptr %i.il, align 4, !tbaa !31
  %i.it = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.260, ptr noundef nonnull %i.b, i32 noundef %i.is, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.iu = icmp sgt i32 %i.it, -1
  br i1 %i.iu, label %bb.ae, label %.thread2.i

bb.ae:                                            ; preds = %bb.ad
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !19
  %i.ix = zext i8 %i.iw to i32
  store i32 1, ptr %i.b, align 4, !tbaa !31
  store i32 2, ptr %i.il, align 4, !tbaa !31
  %i.iy = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.260, ptr noundef nonnull %i.b, i32 noundef %i.ix, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.iz = icmp sgt i32 %i.iy, -1
  br i1 %i.iz, label %.preheader7.i, label %.thread2.i

.preheader7.i:                                    ; preds = %bb.ae
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.jb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.jd = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.jf = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 788
  %i.ji = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 1556
  %i.jl = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.i, %.preheader7.i
  %indvars.iv34.i = phi i64 [ 0, %.preheader7.i ], [ %indvars.iv.next35.i, %.loopexit.i ] ; 9 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ik, i64 %indvars.iv34.i
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !19
  %.not291.i = icmp eq i8 %i.jp, 0
  br i1 %.not291.i, label %.loopexit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ja, i64 %indvars.iv34.i ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !19
  %i.js = zext i8 %i.jr to i32
  store i32 1, ptr %i.c, align 4, !tbaa !31
  %i.jt = trunc nuw nsw i64 %indvars.iv34.i to i32 ; 5 uses
  store i32 %i.jt, ptr %i.jb, align 4, !tbaa !31
  %i.ju = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.261, ptr noundef nonnull %i.c, i32 noundef %i.js, i32 noundef 0, i32 noundef 255) #8 ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, -1
  br i1 %i.jv, label %bb.ah, label %.thread2.i

bb.ah:                                            ; preds = %bb.ag
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jc, i64 %indvars.iv34.i ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !19
  %i.jy = zext i8 %i.jx to i32
  store i32 1, ptr %i.d, align 4, !tbaa !31
  store i32 %i.jt, ptr %i.jd, align 4, !tbaa !31
  %i.jz = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.262, ptr noundef nonnull %i.d, i32 noundef %i.jy, i32 noundef 0, i32 noundef 5) #8 ; 2 uses
  %i.ka = icmp sgt i32 %i.jz, -1
  br i1 %i.ka, label %.preheader5.i, label %.thread2.i

.preheader5.i:                                    ; preds = %bb.ah
  %i.kb = getelementptr inbounds nuw [256 x i8], ptr %i.je, i64 %indvars.iv34.i
  %i.kc = getelementptr inbounds nuw [256 x i8], ptr %i.jh, i64 %indvars.iv34.i
  %i.kd = getelementptr inbounds nuw [3072 x i8], ptr %i.jk, i64 %indvars.iv34.i
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv34.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.am, %.preheader5.i
  %indvars.iv31.i = phi i64 [ 0, %.preheader5.i ], [ %indvars.iv.next32.i, %bb.am ] ; 6 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 %indvars.iv31.i
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !19
  %i.kh = zext i8 %i.kg to i32
  store i32 2, ptr %i.e, align 4, !tbaa !31
  store i32 %i.jt, ptr %i.jf, align 4, !tbaa !31
  %i.ki = trunc nuw nsw i64 %indvars.iv31.i to i32 ; 3 uses
  store i32 %i.ki, ptr %i.jg, align 4, !tbaa !31
  %i.kj = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.263, ptr noundef nonnull %i.e, i32 noundef %i.kh, i32 noundef 0, i32 noundef 255) #8 ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, -1
  br i1 %i.kk, label %bb.aj, label %.thread2.i

bb.aj:                                            ; preds = %bb.ai
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 %indvars.iv31.i
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !19
  %i.kn = zext i8 %i.km to i32
  store i32 2, ptr %i.f, align 4, !tbaa !31
  store i32 %i.jt, ptr %i.ji, align 4, !tbaa !31
  store i32 %i.ki, ptr %i.jj, align 4, !tbaa !31
  %i.ko = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.264, ptr noundef nonnull %i.f, i32 noundef %i.kn, i32 noundef 0, i32 noundef 255) #8 ; 2 uses
  %i.kp = icmp sgt i32 %i.ko, -1
  br i1 %i.kp, label %.preheader.i, label %.thread2.i

.preheader.i:                                     ; preds = %bb.aj
  %i.kq = getelementptr inbounds nuw [12 x i8], ptr %i.kd, i64 %indvars.iv31.i
  %i.kr = load i32, ptr %i.ke, align 4, !tbaa !31 ; 2 uses
  %i.ks = add nsw i32 %i.kr, -1
  %notmask.i = shl nsw i32 -1, %i.kr
  %i.kt = xor i32 %notmask.i, -1
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ku = load i8, ptr %i.jw, align 1, !tbaa !19
  %i.kv = zext i8 %i.ku to i64
  %.not293.not.i = icmp samesign ult i64 %indvars.iv.i, %i.kv
  br i1 %.not293.not.i, label %bb.al, label %bb.am, !llvm.loop !350

bb.al:                                            ; preds = %bb.ak, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.ak ] ; 4 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %indvars.iv.i
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !95
  %i.ky = sext i16 %i.kx to i32
  store i32 3, ptr %i.g, align 4, !tbaa !31
  store i32 %i.jt, ptr %i.jl, align 4, !tbaa !31
  store i32 %i.ki, ptr %i.jm, align 4, !tbaa !31
  %i.kz = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.kz, ptr %i.jn, align 4, !tbaa !31
  %i.la = load i8, ptr %i.em, align 1, !tbaa !197
  %i.lb = zext i8 %i.la to i32
  %i.lc = shl i32 %i.lb, %i.ks                    ; 2 uses
  %i.ld = sub nsw i32 0, %i.lc
  %i.le = sub nsw i32 %i.kt, %i.lc
  %i.lf = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.265, ptr noundef nonnull %i.g, i32 noundef %i.ky, i32 noundef %i.ld, i32 noundef %i.le) #8 ; 2 uses
  %i.lg = icmp sgt i32 %i.lf, -1
  br i1 %i.lg, label %bb.ak, label %.thread2.i

bb.am:                                            ; preds = %bb.ak
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %i.lh = load i8, ptr %i.jq, align 1, !tbaa !19
  %i.li = zext i8 %i.lh to i64
  %.not292.not.i = icmp samesign ult i64 %indvars.iv31.i, %i.li
  br i1 %.not292.not.i, label %bb.ai, label %.loopexit.i, !llvm.loop !351

.loopexit.i:                                      ; preds = %bb.am, %bb.af
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next35.i, 3
  br i1 %exitcond.not.i, label %bb.an, label %bb.af, !llvm.loop !352

.thread2.i:                                       ; preds = %bb.ah, %bb.ag, %bb.aj, %bb.ai, %bb.al, %bb.ae, %bb.ad, %.preheader10.i, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.24.ph.i = phi i32 [ %i.ep, %bb.e ], [ %i.eu, %bb.f ], [ -1094995529, %bb.o ], [ -1094995529, %bb.aa ], [ -1094995529, %bb.y ], [ -1094995529, %bb.w ], [ -1094995529, %bb.u ], [ -1094995529, %bb.s ], [ -1094995529, %bb.q ], [ %i.fa, %bb.h ], [ %i.ff, %bb.i ], [ %i.fk, %bb.j ], [ %i.fp, %bb.k ], [ %i.fu, %bb.l ], [ %i.fz, %bb.m ], [ %i.id, %bb.ab ], [ %i.ii, %bb.ac ], [ %i.io, %.preheader10.i ], [ %i.it, %bb.ad ], [ %i.iy, %bb.ae ], [ %i.kj, %bb.ai ], [ %i.lf, %bb.al ], [ %i.ko, %bb.aj ], [ %i.ju, %bb.ag ], [ %i.jz, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %cbs_h264_write_film_grain_characteristics.exit

bb.an:                                            ; preds = %.loopexit.i
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 10772
  %i.lk = load i8, ptr %i.lj, align 2, !tbaa !211
  %i.ll = zext i8 %i.lk to i32
  %i.lm = call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.266, ptr noundef null, i32 noundef %i.ll, i32 noundef 0, i32 noundef 16384) #8 ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.ln, label %bb.ao, label %cbs_h264_write_film_grain_characteristics.exit

bb.ao:                                            ; preds = %bb.an, %bb.d
  br label %cbs_h264_write_film_grain_characteristics.exit

cbs_h264_write_film_grain_characteristics.exit:   ; preds = %.thread.i, %.thread2.i, %bb.an, %bb.ao
  %.25.i = phi i32 [ 0, %bb.ao ], [ %i.lm, %bb.an ], [ %i.ej, %.thread.i ], [ %.24.ph.i, %.thread2.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i32 %.25.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_read_sei_frame_packing_arrangement_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 3 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.267) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.s = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.268, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 2147483647) #8 ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.u = load i32, ptr %i.a, align 4, !tbaa !31
  store i32 %i.u, ptr %2, align 4, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.v = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.269, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %cbs_h264_read_sei_frame_packing_arrangement.exit

bb.d:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.b, align 4, !tbaa !31
  %i.y = trunc i32 %i.x to i8                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.y, ptr %i.z, align 4, !tbaa !214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not.i = icmp eq i8 %i.y, 0
  br i1 %.not.i, label %bb.e, label %bb.aj

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.aa = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 7, ptr noundef nonnull @.str.270, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 7) #8 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %cbs_h264_read_sei_frame_packing_arrangement.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !31
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.af = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.271, ptr noundef nonnull %i.d) #8 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %cbs_h264_read_sei_frame_packing_arrangement.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !31
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  store i8 %i.ai, ptr %i.aj, align 2, !tbaa !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.ak = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.272, ptr noundef null, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 2) #8 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %cbs_h264_read_sei_frame_packing_arrangement.exit

bb.k:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.e, align 4, !tbaa !31
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.ap = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.273, ptr noundef nonnull %i.f) #8 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %cbs_h264_read_sei_frame_packing_arrangement.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = load i32, ptr %i.f, align 4, !tbaa !31
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.as, ptr %i.at, align 4, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.au = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.274, ptr noundef nonnull %i.g) #8 ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %cbs_h264_read_sei_frame_packing_arrangement.exit

bb.o:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.g, align 4, !tbaa !31
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.az = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.275, ptr noundef nonnull %i.h) #8 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %cbs_h264_read_sei_frame_packing_arrangement.exit

bb.q:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !31
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %i.bc, ptr %i.bd, align 2, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  %i.be = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.276, ptr noundef nonnull %i.i) #8 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  br label %cbs_h264_read_sei_frame_packing_arrangement.exit

bb.s:                                             ; preds = %bb.q
  %i.bg = load i32, ptr %i.i, align 4, !tbaa !31
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  %i.bj = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.277, ptr noundef nonnull %i.j) #8 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, -1
  br i1 %i.bk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  br label %cbs_h264_read_sei_frame_packing_arrangement.exit

bb.u:                                             ; preds = %bb.s
  %i.bl = load i32, ptr %i.j, align 4, !tbaa !31
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %i.bm, ptr %i.bn, align 4, !tbaa !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
end_hunk_7
begin_hunk_8_@cbs_h264_read_sei_display_orientation_internal:bb.a
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.286) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.g = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.287, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.a, align 4, !tbaa !31
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  store i8 %i.j, ptr %2, align 2, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.c, label %cbs_h264_read_sei_display_orientation.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.k = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.288, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %cbs_h264_read_sei_display_orientation.exit

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.b, align 4, !tbaa !31
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.p = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.289, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %cbs_h264_read_sei_display_orientation.exit

bb.g:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.c, align 4, !tbaa !31
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.s, ptr %i.t, align 2, !tbaa !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.u = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.290, ptr noundef nonnull %i.d) #8 ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %cbs_h264_read_sei_display_orientation.exit

bb.i:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.d, align 4, !tbaa !31
  %i.x = trunc i32 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 %i.x, ptr %i.y, align 2, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.z = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.291, ptr noundef null, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 16384) #8 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %cbs_h264_read_sei_display_orientation.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !31
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.ae = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.292, ptr noundef nonnull %i.f) #8 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %.thread12.i, label %bb.l

.thread12.i:                                      ; preds = %bb.k
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !31
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.ah, ptr %i.ai, align 2, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %cbs_h264_read_sei_display_orientation.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %cbs_h264_read_sei_display_orientation.exit

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %cbs_h264_read_sei_display_orientation.exit

cbs_h264_read_sei_display_orientation.exit:       ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %.thread12.i, %bb.l, %.critedge.i
  %.6.i = phi i32 [ %i.g, %.critedge.i ], [ %i.ae, %bb.l ], [ %i.z, %bb.j ], [ %i.u, %bb.h ], [ %i.p, %bb.f ], [ %i.k, %bb.d ], [ 0, %.thread12.i ], [ 0, %bb.b ]
  ret i32 %.6.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cbs_h264_write_sei_display_orientation_internal(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call void @ff_cbs_trace_header(ptr noundef %0, ptr noundef nonnull @.str.286) #8
  %i.a = load i8, ptr %2, align 2, !tbaa !231
  %i.b = zext i8 %i.a to i32
  %i.c = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.287, i32 noundef %i.b) #8 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %cbs_h264_write_sei_display_orientation.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %2, align 2, !tbaa !231
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !232
  %i.h = zext i8 %i.g to i32
  %i.i = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.288, i32 noundef %i.h) #8 ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %cbs_h264_write_sei_display_orientation.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.l = load i8, ptr %i.k, align 2, !tbaa !233
  %i.m = zext i8 %i.l to i32
  %i.n = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.289, i32 noundef %i.m) #8 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.e, label %cbs_h264_write_sei_display_orientation.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i16, ptr %i.p, align 2, !tbaa !234
  %i.r = zext i16 %i.q to i32
  %i.s = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.290, i32 noundef %i.r) #8 ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.f, label %cbs_h264_write_sei_display_orientation.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.v = load i16, ptr %i.u, align 2, !tbaa !235
  %i.w = zext i16 %i.v to i32
  %i.x = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.291, ptr noundef null, i32 noundef %i.w, i32 noundef 0, i32 noundef 16384) #8 ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.g, label %cbs_h264_write_sei_display_orientation.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !236
  %i.ab = zext i8 %i.aa to i32
  %i.ac = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.292, i32 noundef %i.ab) #8 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.h, label %cbs_h264_write_sei_display_orientation.exit

bb.h:                                             ; preds = %bb.g, %bb.b
  br label %cbs_h264_write_sei_display_orientation.exit

cbs_h264_write_sei_display_orientation.exit:      ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.6.i = phi i32 [ 0, %bb.h ], [ %i.ac, %bb.g ], [ %i.x, %bb.f ], [ %i.s, %bb.e ], [ %i.n, %bb.d ], [ %i.i, %bb.c ], [ %i.c, %bb.a ]
  ret i32 %.6.i
}

; Function Attrs: nounwind uwtable
define internal void @cbs_h264_free_sei(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @ff_cbs_sei_free_message_list(ptr noundef nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @ff_cbs_sei_free_message_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare i32 @ff_h2645_packet_split(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_cbs_h2645_fragment_add_nals(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_cbs_alloc_unit_content(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_cbs_h2645_read_more_rbsp_data(ptr noundef) local_unnamed_addr #1

declare ptr @av_buffer_ref(ptr noundef) local_unnamed_addr #1

declare void @ff_cbs_trace_header(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_read_nal_unit_header(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 64, 524323) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.f = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.g, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.h = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.b, align 4, !tbaa !31
  %i.k = trunc i32 %i.j to i8
  store i8 %i.k, ptr %2, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.l = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.c, align 4, !tbaa !31   ; 2 uses
  %i.o = trunc i32 %i.n to i8                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %i.q = and i32 %i.n, 255                        ; 2 uses
  %i.r = shl nuw i32 1, %i.q
  %i.s = and i32 %i.r, %3
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %0, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.t, i32 noundef 16, ptr noundef nonnull @.str.52, i32 noundef %i.q) #8
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  switch i8 %i.o, label %bb.r [
    i8 21, label %bb.k
    i8 14, label %bb.i
    i8 20, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.u = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.d) #8 ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %.thread66, label %bb.j

.thread66:                                        ; preds = %bb.i
  %i.w = load i32, ptr %i.d, align 4, !tbaa !31
  %i.x = trunc i32 %i.w to i8                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.x, ptr %i.y, align 1, !tbaa !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.r

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.z = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.e) #8 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %.thread68, label %bb.l

.thread68:                                        ; preds = %bb.k
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !31
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !238
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %bb.r

bb.m:                                             ; preds = %.thread68, %.thread66
  %i.ae = phi i8 [ %.pre, %.thread68 ], [ %i.x, %.thread66 ]
  %.not59 = icmp eq i8 %i.ae, 0
  br i1 %.not59, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %0, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.af, i32 noundef 16, ptr noundef nonnull @.str.55) #8
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !239
  %.not60 = icmp eq i8 %i.ah, 0
  %i.ai = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  br i1 %.not60, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ai, i32 noundef 16, ptr noundef nonnull @.str.56) #8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ai, i32 noundef 16, ptr noundef nonnull @.str.57) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %bb.l, %bb.j, %bb.e, %bb.c, %bb.a, %bb.q, %bb.p, %bb.n, %bb.g
  %.5 = phi i32 [ -1163346256, %bb.n ], [ -1163346256, %bb.p ], [ -1163346256, %bb.q ], [ %i.u, %bb.j ], [ %i.z, %bb.l ], [ %i.f, %bb.a ], [ -1094995529, %bb.g ], [ %i.l, %bb.e ], [ %i.h, %bb.c ], [ 0, %bb.h ]
  ret i32 %.5
}

declare i32 @ff_cbs_read_simple_unsigned(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_cbs_read_unsigned(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_cbs_read_ue_golomb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_read_scaling_list(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 16, 65) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.01523 = phi i8 [ 8, %bb.a ], [ %.narrow, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 1, ptr %i.b, align 4, !tbaa !31
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.d, ptr %i.c, align 4, !tbaa !31
  %i.e = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 4, !tbaa !31
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.h, ptr %i.i, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.narrow = add i8 %.01523, %i.h                 ; 2 uses
  %i.j = icmp eq i8 %.narrow, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.j, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %bb.b, !llvm.loop !353

.loopexit:                                        ; preds = %bb.d, %bb.c
  %.2 = phi i32 [ %i.e, %bb.c ], [ 0, %bb.d ]
  ret i32 %.2
}

declare i32 @ff_cbs_read_se_golomb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_read_vui_parameters(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %i.y = alloca i32, align 4                      ; 5 uses
  %i.z = alloca i32, align 4                      ; 5 uses
  %i.aa = alloca i32, align 4                     ; 5 uses
  %i.ab = alloca i32, align 4                     ; 5 uses
  %i.ac = alloca i32, align 4                     ; 5 uses
  %i.ad = alloca i32, align 4                     ; 5 uses
  %i.ae = alloca i32, align 4                     ; 5 uses
  %i.af = alloca i32, align 4                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ag = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !31
  %i.aj = trunc i32 %i.ai to i8                   ; 2 uses
  store i8 %i.aj, ptr %2, align 4, !tbaa !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i8 %i.aj, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ak = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 8, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.cj

bb.e:                                             ; preds = %bb.c
  %i.am = load i32, ptr %i.b, align 4, !tbaa !31
  %i.an = trunc i32 %i.am to i8                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ap = icmp eq i8 %i.an, -1
  br i1 %i.ap, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.aq = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 16, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.cj

bb.h:                                             ; preds = %bb.f
  %i.as = load i32, ptr %i.c, align 4, !tbaa !31
  %i.at = trunc i32 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.at, ptr %i.au, align 2, !tbaa !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.av = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 16, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.d) #8 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %.thread357, label %bb.i

.thread357:                                       ; preds = %bb.h
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !31
  %i.ay = trunc i32 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 %i.ay, ptr %i.az, align 4, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.cj

bb.j:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.ba, align 1, !tbaa !241
  br label %bb.k

bb.k:                                             ; preds = %.thread357, %bb.j, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.bb = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.e) #8 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, -1
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %bb.cj

bb.m:                                             ; preds = %bb.k
  %i.bd = load i32, ptr %i.e, align 4, !tbaa !31
  %i.be = trunc i32 %i.bd to i8                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.be, ptr %i.bf, align 2, !tbaa !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %.not341 = icmp eq i8 %i.be, 0
  br i1 %.not341, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.bg = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.f) #8 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %.thread362, label %bb.o

.thread362:                                       ; preds = %bb.n
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !31
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %bb.cj

bb.p:                                             ; preds = %.thread362, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.bl = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.g) #8 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, -1
  br i1 %i.bm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %bb.cj

bb.r:                                             ; preds = %bb.p
  %i.bn = load i32, ptr %i.g, align 4, !tbaa !31
  %i.bo = trunc i32 %i.bn to i8                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.bo, ptr %i.bp, align 4, !tbaa !246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  %.not342 = icmp eq i8 %i.bo, 0
  br i1 %.not342, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.bq = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 3, ptr noundef nonnull @.str.66, ptr noundef nonnull %i.h) #8 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, -1
  br i1 %i.br, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %bb.cj

bb.u:                                             ; preds = %bb.s
  %i.bs = load i32, ptr %i.h, align 4, !tbaa !31
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  %i.bv = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef nonnull %i.i) #8 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  br label %bb.cj

bb.w:                                             ; preds = %bb.u
  %i.bx = load i32, ptr %i.i, align 4, !tbaa !31
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %i.by, ptr %i.bz, align 2, !tbaa !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
end_hunk_8
begin_hunk_9_@cbs_h264_read_vui_parameters_default:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 2, ptr %i.e, align 1, !tbaa !251
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 2, ptr %i.f, align 2, !tbaa !252
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.g, align 4, !tbaa !254
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.h, align 1, !tbaa !255
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.i, align 4, !tbaa !259
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i8 1, ptr %i.j, align 4, !tbaa !262
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 629
  store i8 0, ptr %i.k, align 1, !tbaa !263
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 631
  store <4 x i8> <i8 1, i8 2, i8 1, i8 15>, ptr %i.l, align 1, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 635
  store i8 15, ptr %i.m, align 1, !tbaa !269
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i8, ptr %i.n, align 4, !tbaa !37
  switch i8 %i.o, label %bb.c [
    i8 44, label %bb.b
    i8 86, label %bb.b
    i8 100, label %bb.b
    i8 110, label %bb.b
    i8 122, label %bb.b
    i8 -12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i8, ptr %i.p, align 4, !tbaa !41
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink2 = phi i8 [ 16, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i8 %.sink2, ptr %i.r, align 4, !tbaa !270
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 637
  store i8 %.sink2, ptr %i.s, align 1, !tbaa !271
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_read_rbsp_trailing_bits(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1) #8 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.d, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.val = load i32, ptr %i.e, align 8, !tbaa !28
  %i.f = and i32 %.val, 7
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.g = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef null, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br i1 %i.h, label %bb.b, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.3 = phi i32 [ %i.c, %bb.a ], [ 0, %bb.b ], [ %i.g, %bb.c ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_read_hrd_parameters(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [2 x i32], align 4                ; 3 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [2 x i32], align 4                ; 3 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca [2 x i32], align 4                ; 3 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.n = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 31) #8 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.a, align 4, !tbaa !31
  %i.q = trunc i32 %i.p to i8
  store i8 %i.q, ptr %2, align 4, !tbaa !272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.r = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.b, align 4, !tbaa !31
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.w = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.e, label %.thread100

.thread100:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.c, align 4, !tbaa !31
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 260
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.l ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 1, ptr %i.e, align 4, !tbaa !31
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !31
  %i.ai = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.94, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef -2) #8 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !31
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.g, align 4, !tbaa !31
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !31
  %i.am = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.95, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef -2) #8 ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !31
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  store i32 1, ptr %i.i, align 4, !tbaa !31
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !31
  %i.aq = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.as = load i32, ptr %i.h, align 4, !tbaa !31
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv
  store i8 %i.at, ptr %i.au, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.av = load i8, ptr %2, align 4, !tbaa !272
  %i.aw = zext i8 %i.av to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.aw
  br i1 %.not.not, label %bb.f, label %bb.m, !llvm.loop !354

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  %i.ax = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5, ptr noundef nonnull @.str.97, ptr noundef nonnull %i.j) #8 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.j, align 4, !tbaa !31
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 292
  store i8 %i.ba, ptr %i.bb, align 4, !tbaa !275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  %i.bc = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5, ptr noundef nonnull @.str.98, ptr noundef nonnull %i.k) #8 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.be = load i32, ptr %i.k, align 4, !tbaa !31
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 293
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  %i.bh = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5, ptr noundef nonnull @.str.99, ptr noundef nonnull %i.l) #8 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, -1
  br i1 %i.bi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !31
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 294
  store i8 %i.bk, ptr %i.bl, align 2, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  %i.bm = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5, ptr noundef nonnull @.str.100, ptr noundef nonnull %i.m) #8 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = load i32, ptr %i.m, align 4, !tbaa !31
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 295
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !276
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %spec.select = phi i32 [ 0, %bb.t ], [ %i.bm, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  br label %bb.v

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.k, %bb.i, %bb.g, %.thread100, %bb.c, %bb.u, %.critedge
  %.11 = phi i32 [ %i.aq, %bb.k ], [ %i.am, %bb.i ], [ %i.ai, %bb.g ], [ %i.n, %.critedge ], [ %spec.select, %bb.u ], [ %i.bh, %bb.r ], [ %i.bc, %bb.p ], [ %i.ax, %bb.n ], [ %i.w, %.thread100 ], [ %i.r, %bb.c ]
  ret i32 %.11
}

declare i32 @ff_cbs_make_unit_refcounted(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @av_refstruct_replace(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @av_buffer_allocz(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_read_ref_pic_list_modification(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2360
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !120
  %i.o = urem i8 %i.n, 5
  switch i8 %i.o, label %bb.b [
    i8 2, label %.loopexit133
    i8 4, label %.loopexit133
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.p = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.169, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.a, align 4, !tbaa !31
  %i.s = trunc i32 %i.r to i8                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 37
  store i8 %i.s, ptr %i.t, align 1, !tbaa !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.not114 = icmp eq i8 %i.s, 0
  br i1 %.not114, label %.loopexit133, label %.preheader132

.preheader132:                                    ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 1840
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 800
  br label %bb.d

bb.d:                                             ; preds = %.preheader132, %bb.m
  %indvars.iv = phi i64 [ 0, %.preheader132 ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.y = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.170, ptr noundef null, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 3) #8 ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !31
  %i.ab = trunc i32 %i.aa to i8                   ; 4 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  store i8 %i.ab, ptr %i.ac, align 4, !tbaa !279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ad = icmp eq i8 %i.ab, 3
  br i1 %i.ad, label %.loopexit133, label %bb.g

bb.g:                                             ; preds = %bb.f
  %or.cond = icmp ult i8 %i.ab, 2
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ae = load i8, ptr %i.w, align 2, !tbaa !124
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = load i8, ptr %i.x, align 4, !tbaa !54
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = add nuw nsw i32 %i.ai, 4
  %i.ak = shl i32 %i.ag, %i.aj
  %i.al = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.171, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef %i.ak) #8 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %.thread118, label %bb.i

.thread118:                                       ; preds = %bb.h
  %i.an = load i32, ptr %i.c, align 4, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.ap = icmp eq i8 %i.ab, 2
  br i1 %i.ap, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.aq = load i8, ptr %i.v, align 4, !tbaa !61
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -1
  %i.at = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.172, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef %i.as) #8 ; 2 uses
  %i.au = icmp sgt i32 %i.at, -1
  br i1 %i.au, label %.thread120, label %bb.l

.thread120:                                       ; preds = %bb.k
  %i.av = load i32, ptr %i.d, align 4, !tbaa !31
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i8 %i.aw, ptr %i.ax, align 4, !tbaa !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.loopexit

bb.m:                                             ; preds = %.thread120, %.thread118, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 33
  br i1 %exitcond.not, label %.loopexit133, label %bb.d, !llvm.loop !355

.loopexit133:                                     ; preds = %bb.f, %bb.m, %bb.a, %bb.a, %bb.c
  %i.ay = load i8, ptr %i.m, align 4, !tbaa !120
  %i.az = urem i8 %i.ay, 5
  %i.ba = icmp eq i8 %i.az, 1
  br i1 %i.ba, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.loopexit133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.bb = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.173, ptr noundef nonnull %i.e) #8 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, -1
  br i1 %i.bc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bd = load i32, ptr %i.e, align 4, !tbaa !31
  %i.be = trunc i32 %i.bd to i8                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 38
  store i8 %i.be, ptr %i.bf, align 2, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %.not115 = icmp eq i8 %i.be, 0
  br i1 %.not115, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 436
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 1840
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 800
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.z
  %indvars.iv157 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next158, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.bk = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.170, ptr noundef null, ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 3) #8 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !31
  %i.bn = trunc i32 %i.bm to i8                   ; 4 uses
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.bg, i64 %indvars.iv157 ; 3 uses
  store i8 %i.bn, ptr %i.bo, align 4, !tbaa !279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  %i.bp = icmp eq i8 %i.bn, 3
  br i1 %i.bp, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %or.cond10 = icmp ult i8 %i.bn, 2
  br i1 %or.cond10, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.bq = load i8, ptr %i.bi, align 2, !tbaa !124
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.br, 1
  %i.bt = load i8, ptr %i.bj, align 4, !tbaa !54
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 4
  %i.bw = shl i32 %i.bs, %i.bv
  %i.bx = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.171, ptr noundef null, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef %i.bw) #8 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %.thread128, label %bb.v

.thread128:                                       ; preds = %bb.u
  %i.bz = load i32, ptr %i.g, align 4, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %.loopexit

bb.w:                                             ; preds = %bb.t
  %i.cb = icmp eq i8 %i.bn, 2
  br i1 %i.cb, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.cc = load i8, ptr %i.bh, align 4, !tbaa !61
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, -1
  %i.cf = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.172, ptr noundef null, ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef %i.ce) #8 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %.thread130, label %bb.y

.thread130:                                       ; preds = %bb.x
  %i.ch = load i32, ptr %i.h, align 4, !tbaa !31
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %i.ci, ptr %i.cj, align 4, !tbaa !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %.loopexit

bb.z:                                             ; preds = %.thread130, %.thread128, %bb.w
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next158, 33
  br i1 %exitcond160.not, label %.loopexit, label %bb.q, !llvm.loop !356

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %bb.s, %bb.y, %bb.v, %bb.r, %bb.o, %bb.l, %bb.i, %bb.e, %.loopexit133, %bb.p, %.critedge
  %.13 = phi i32 [ %i.p, %.critedge ], [ %i.bx, %bb.v ], [ %i.cf, %bb.y ], [ %i.bk, %bb.r ], [ %i.bb, %bb.o ], [ %i.al, %bb.i ], [ %i.at, %bb.l ], [ %i.y, %bb.e ], [ 0, %.loopexit133 ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.z ]
  ret i32 %.13
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_read_pred_weight_table(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca [2 x i32], align 4                ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca [2 x i32], align 4                ; 3 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [2 x i32], align 4                ; 3 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca [2 x i32], align 4                ; 3 uses
  %i.k = alloca i32, align 4                      ; 9 uses
  %i.l = alloca [3 x i32], align 4                ; 6 uses
  %i.m = alloca i32, align 4                      ; 9 uses
  %i.n = alloca [3 x i32], align 4                ; 6 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca [2 x i32], align 4                ; 3 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca [2 x i32], align 4                ; 3 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca [2 x i32], align 4                ; 3 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca [2 x i32], align 4                ; 3 uses
  %i.w = alloca i32, align 4                      ; 9 uses
  %i.x = alloca [3 x i32], align 4                ; 6 uses
  %i.y = alloca i32, align 4                      ; 9 uses
  %i.z = alloca [3 x i32], align 4                ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2360
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ae = call i32 @ff_cbs_read_ue_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.174, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 7) #8 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 832
  store i8 %i.ah, ptr %i.ai, align 4, !tbaa !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 15
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !48
  %.not = icmp eq i8 %i.ak, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 14
  %i.am = load i8, ptr %i.al, align 2, !tbaa !47
  %.not228 = icmp eq i8 %i.am, 0
  br i1 %.not228, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.an = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.175, ptr noundef null, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 7) #8 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %.thread192, label %bb.e

.thread192:                                       ; preds = %bb.d
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !31
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 833
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.loopexit230

.thread:                                          ; preds = %bb.b, %.thread192, %bb.c
  %i.as = phi i1 [ true, %.thread192 ], [ false, %bb.c ], [ false, %bb.b ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 834
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 866
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 898
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 930
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 962
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 1026
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.loopexit232
  %indvars.iv = phi i64 [ 0, %.thread ], [ %indvars.iv.next, %.loopexit232 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.d, align 4, !tbaa !31
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32    ; 8 uses
  store i32 %i.bi, ptr %i.au, align 4, !tbaa !31
  %i.bj = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.176, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, -1
  br i1 %i.bk, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.loopexit230

bb.h:                                             ; preds = %bb.f
  %i.bl = load i32, ptr %i.c, align 4, !tbaa !31
  %i.bm = trunc i32 %i.bl to i8                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %.not190 = icmp eq i8 %i.bm, 0
  br i1 %.not190, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 1, ptr %i.f, align 4, !tbaa !31
  store i32 %i.bi, ptr %i.aw, align 4, !tbaa !31
  %i.bo = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.177, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.loopexit230

bb.k:                                             ; preds = %bb.i
  %i.bq = load i32, ptr %i.e, align 4, !tbaa !31
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store i32 1, ptr %i.h, align 4, !tbaa !31
  store i32 %i.bi, ptr %i.ay, align 4, !tbaa !31
  %i.bt = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.178, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %.thread200, label %bb.l

.thread200:                                       ; preds = %bb.k
  %i.bv = load i32, ptr %i.g, align 4, !tbaa !31
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %.loopexit230

bb.m:                                             ; preds = %.thread200, %bb.h
  br i1 %i.as, label %bb.n, label %.loopexit232

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  store i32 1, ptr %i.j, align 4, !tbaa !31
  store i32 %i.bi, ptr %i.ba, align 4, !tbaa !31
  %i.by = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.179, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, -1
  br i1 %i.bz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  br label %.loopexit230

bb.p:                                             ; preds = %bb.n
  %i.ca = load i32, ptr %i.i, align 4, !tbaa !31
  %i.cb = trunc i32 %i.ca to i8                   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  %.not191 = icmp eq i8 %i.cb, 0
  br i1 %.not191, label %.loopexit232, label %.preheader231

.preheader231:                                    ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  store i32 2, ptr %i.l, align 4, !tbaa !31
  store i32 %i.bi, ptr %i.bc, align 4, !tbaa !31
  store i32 0, ptr %i.bd, align 4, !tbaa !31
  %i.cf = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.180, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.t, %.preheader231
  %.lcssa283 = phi i32 [ %i.cf, %.preheader231 ], [ %i.cn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  br label %.loopexit230

bb.r:                                             ; preds = %.preheader231
  %i.ch = load i32, ptr %i.k, align 4, !tbaa !31
  %i.ci = trunc i32 %i.ch to i8
  store i8 %i.ci, ptr %i.cd, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  store i32 2, ptr %i.n, align 4, !tbaa !31
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !31
  store i32 0, ptr %i.bg, align 4, !tbaa !31
  %i.cj = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.181, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.lcssa286 = phi i32 [ %i.cj, %bb.r ], [ %i.cs, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  br label %.loopexit230

bb.t:                                             ; preds = %bb.r
  %i.cl = load i32, ptr %i.m, align 4, !tbaa !31
  %i.cm = trunc i32 %i.cl to i8
  store i8 %i.cm, ptr %i.ce, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  store i32 2, ptr %i.l, align 4, !tbaa !31
  store i32 %i.bi, ptr %i.bc, align 4, !tbaa !31
  store i32 1, ptr %i.bd, align 4, !tbaa !31
  %i.cn = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.180, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %bb.u, label %bb.q

bb.u:                                             ; preds = %bb.t
  %i.cp = load i32, ptr %i.k, align 4, !tbaa !31
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  store i32 2, ptr %i.n, align 4, !tbaa !31
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !31
  store i32 1, ptr %i.bg, align 4, !tbaa !31
  %i.cs = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.181, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  br i1 %i.ct, label %.loopexit232.loopexit, label %bb.s

.loopexit232.loopexit:                            ; preds = %bb.u
  %i.cu = load i32, ptr %i.m, align 4, !tbaa !31
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  br label %.loopexit232

.loopexit232:                                     ; preds = %.loopexit232.loopexit, %bb.m, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cx = load i8, ptr %i.at, align 1, !tbaa !132
  %i.cy = zext i8 %i.cx to i64
  %.not186.not = icmp samesign ult i64 %indvars.iv, %i.cy
  br i1 %.not186.not, label %bb.f, label %bb.v, !llvm.loop !357

bb.v:                                             ; preds = %.loopexit232
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !120
  %i.db = urem i8 %i.da, 5
  %i.dc = icmp eq i8 %i.db, 1
  br i1 %i.dc, label %.preheader229, label %.loopexit230

.preheader229:                                    ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 1090
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 1122
  %i.di = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 1154
  %i.dk = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 1186
  %i.dm = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 1218
  %i.dp = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 1282
  br label %bb.w

bb.w:                                             ; preds = %.preheader229, %.loopexit
  %indvars.iv306 = phi i64 [ 0, %.preheader229 ], [ %indvars.iv.next307, %.loopexit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #8
  store i32 1, ptr %i.p, align 4, !tbaa !31
  %i.ds = trunc nuw nsw i64 %indvars.iv306 to i32 ; 8 uses
  store i32 %i.ds, ptr %i.de, align 4, !tbaa !31
  %i.dt = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.182, ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, -1
  br i1 %i.du, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  br label %.loopexit230

bb.y:                                             ; preds = %bb.w
  %i.dv = load i32, ptr %i.o, align 4, !tbaa !31
  %i.dw = trunc i32 %i.dv to i8                   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv306
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  %.not188 = icmp eq i8 %i.dw, 0
  br i1 %.not188, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #8
  store i32 1, ptr %i.r, align 4, !tbaa !31
  store i32 %i.ds, ptr %i.dg, align 4, !tbaa !31
  %i.dy = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.183, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, -1
  br i1 %i.dz, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  br label %.loopexit230

bb.ab:                                            ; preds = %bb.z
  %i.ea = load i32, ptr %i.q, align 4, !tbaa !31
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv306
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #8
  store i32 1, ptr %i.t, align 4, !tbaa !31
  store i32 %i.ds, ptr %i.di, align 4, !tbaa !31
  %i.ed = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.184, ptr noundef nonnull %i.t, ptr noundef nonnull %i.s, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, -1
  br i1 %i.ee, label %.thread217, label %bb.ac

.thread217:                                       ; preds = %bb.ab
  %i.ef = load i32, ptr %i.s, align 4, !tbaa !31
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv306
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  br label %.loopexit230

bb.ad:                                            ; preds = %.thread217, %bb.y
  br i1 %i.as, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #8
  store i32 1, ptr %i.v, align 4, !tbaa !31
  store i32 %i.ds, ptr %i.dk, align 4, !tbaa !31
  %i.ei = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.185, ptr noundef nonnull %i.v, ptr noundef nonnull %i.u, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, -1
  br i1 %i.ej, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  br label %.loopexit230

bb.ag:                                            ; preds = %bb.ae
  %i.ek = load i32, ptr %i.u, align 4, !tbaa !31
  %i.el = trunc i32 %i.ek to i8                   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv306
  store i8 %i.el, ptr %i.em, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  %.not189 = icmp eq i8 %i.el, 0
  br i1 %.not189, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv306 ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %indvars.iv306 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #8
  store i32 2, ptr %i.x, align 4, !tbaa !31
  store i32 %i.ds, ptr %i.dm, align 4, !tbaa !31
  store i32 0, ptr %i.dn, align 4, !tbaa !31
  %i.ep = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.186, ptr noundef nonnull %i.x, ptr noundef nonnull %i.w, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, -1
  br i1 %i.eq, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %.preheader
  %.lcssa = phi i32 [ %i.ep, %.preheader ], [ %i.ex, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #8
  br label %.loopexit230

bb.ai:                                            ; preds = %.preheader
  %i.er = load i32, ptr %i.w, align 4, !tbaa !31
  %i.es = trunc i32 %i.er to i8
  store i8 %i.es, ptr %i.en, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #8
  store i32 2, ptr %i.z, align 4, !tbaa !31
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !31
  store i32 0, ptr %i.dq, align 4, !tbaa !31
  %i.et = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.187, ptr noundef nonnull %i.z, ptr noundef nonnull %i.y, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.eu = icmp sgt i32 %i.et, -1
  br i1 %i.eu, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %.lcssa268 = phi i32 [ %i.et, %bb.ai ], [ %i.fc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #8
  br label %.loopexit230

bb.ak:                                            ; preds = %bb.ai
  %i.ev = load i32, ptr %i.y, align 4, !tbaa !31
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %i.eo, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #8
  store i32 2, ptr %i.x, align 4, !tbaa !31
  store i32 %i.ds, ptr %i.dm, align 4, !tbaa !31
  store i32 1, ptr %i.dn, align 4, !tbaa !31
  %i.ex = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.186, ptr noundef nonnull %i.x, ptr noundef nonnull %i.w, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, -1
  br i1 %i.ey, label %bb.al, label %bb.ah

bb.al:                                            ; preds = %bb.ak
  %i.ez = load i32, ptr %i.w, align 4, !tbaa !31
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #8
  store i32 2, ptr %i.z, align 4, !tbaa !31
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !31
  store i32 1, ptr %i.dq, align 4, !tbaa !31
  %i.fc = call i32 @ff_cbs_read_se_golomb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.187, ptr noundef nonnull %i.z, ptr noundef nonnull %i.y, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, -1
  br i1 %i.fd, label %.loopexit.loopexit, label %bb.aj

.loopexit.loopexit:                               ; preds = %bb.al
  %i.fe = load i32, ptr %i.y, align 4, !tbaa !31
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ad, %bb.ag
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1
  %i.fh = load i8, ptr %i.dd, align 4, !tbaa !133
  %i.fi = zext i8 %i.fh to i64
  %.not187.not = icmp samesign ult i64 %indvars.iv306, %i.fi
  br i1 %.not187.not, label %bb.w, label %.loopexit230, !llvm.loop !358

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit230

.loopexit230:                                     ; preds = %.loopexit, %bb.aj, %bb.ah, %bb.af, %bb.ac, %bb.aa, %bb.x, %bb.s, %bb.q, %bb.o, %bb.l, %bb.j, %bb.g, %bb.e, %bb.v, %.critedge
  %.23 = phi i32 [ %.lcssa286, %bb.s ], [ %.lcssa283, %bb.q ], [ %i.by, %bb.o ], [ %i.bt, %bb.l ], [ %i.bo, %bb.j ], [ %i.bj, %bb.g ], [ %.lcssa268, %bb.aj ], [ %.lcssa, %bb.ah ], [ %i.ei, %bb.af ], [ %i.ed, %bb.ac ], [ %i.dy, %bb.aa ], [ %i.dt, %bb.x ], [ %i.ae, %.critedge ], [ %i.an, %bb.e ], [ 0, %bb.v ], [ 0, %.loopexit ]
  ret i32 %.23
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_read_dec_ref_pic_marking(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2360
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.m = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.188, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.a, align 4, !tbaa !31
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1346
  store i8 %i.p, ptr %i.q, align 2, !tbaa !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.r = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.189, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.t = load i32, ptr %i.b, align 4, !tbaa !31
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1347
  store i8 %i.u, ptr %i.v, align 1, !tbaa !286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread116

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread116

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.w = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.190, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.f, label %.critedge101

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.c, align 4, !tbaa !31
  %i.z = trunc i32 %i.y to i8                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1348
  store i8 %i.z, ptr %i.aa, align 4, !tbaa !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %.not99 = icmp eq i8 %i.z, 0
  br i1 %.not99, label %.thread116, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1352
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 1840 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ad = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.191, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 6) #8 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread116

bb.i:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.d, align 4, !tbaa !31
  %i.ag = trunc i32 %i.af to i8                   ; 4 uses
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv ; 5 uses
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  switch i8 %i.ag, label %bb.r [
    i8 0, label %.thread116
    i8 3, label %bb.j
    i8 1, label %bb.j
    i8 2, label %bb.l
    i8 6, label %bb.n
    i8 4, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.ai = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.192, ptr noundef null, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 2147483647) #8 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %.thread106, label %bb.k

.thread106:                                       ; preds = %bb.j
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  switch i8 %i.ag, label %bb.r [
    i8 2, label %bb.l
    i8 3, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread116

bb.l:                                             ; preds = %bb.i, %.thread106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.am = load i8, ptr %i.ac, align 4, !tbaa !61
  %i.an = zext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.172, ptr noundef null, ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef %i.ao) #8 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %.thread113, label %bb.m

.thread113:                                       ; preds = %bb.l
  %i.ar = load i32, ptr %i.f, align 4, !tbaa !31
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 %i.as, ptr %i.at, align 4, !tbaa !291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %.thread116

bb.n:                                             ; preds = %.thread106, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.au = load i8, ptr %i.ac, align 4, !tbaa !61
  %i.av = zext i8 %i.au to i32
  %i.aw = add nsw i32 %i.av, -1
  %i.ax = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.193, ptr noundef null, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef %i.aw) #8 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %.thread111, label %bb.o

.thread111:                                       ; preds = %bb.n
  %i.az = load i32, ptr %i.g, align 4, !tbaa !31
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  %i.bc = icmp eq i8 %i.ag, 4
  br i1 %i.bc, label %bb.p, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %.thread116

bb.p:                                             ; preds = %bb.i, %.thread111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.bd = load i8, ptr %i.ac, align 4, !tbaa !61
  %i.be = zext i8 %i.bd to i32
  %i.bf = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.194, ptr noundef null, ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef %i.be) #8 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %.thread114, label %bb.q

.thread114:                                       ; preds = %bb.p
  %i.bh = load i32, ptr %i.h, align 4, !tbaa !31
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  store i8 %i.bi, ptr %i.bj, align 2, !tbaa !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %.thread116

bb.r:                                             ; preds = %bb.i, %.thread106, %.thread114, %.thread113, %.thread111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 67
  br i1 %exitcond.not, label %bb.s, label %bb.g, !llvm.loop !359

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %0, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bk, i32 noundef 16, ptr noundef nonnull @.str.195) #8
  br label %.thread116

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread116

.critedge101:                                     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread116

.thread116:                                       ; preds = %bb.i, %bb.f, %.thread, %bb.q, %bb.o, %bb.m, %bb.k, %bb.h, %bb.d, %.critedge101, %.critedge, %bb.s
  %.13 = phi i32 [ %i.m, %.critedge ], [ %i.r, %bb.d ], [ %i.w, %.critedge101 ], [ -1094995529, %bb.s ], [ %i.bf, %bb.q ], [ %i.ax, %bb.o ], [ %i.ap, %bb.m ], [ %i.ai, %bb.k ], [ %i.ad, %bb.h ], [ 0, %bb.f ], [ 0, %.thread ], [ 0, %bb.i ]
  ret i32 %.13
}

declare i32 @ff_cbs_sei_read_message_list(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_cbs_h2645_write_slice_data(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_write_nal_unit_header(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 64, 524323) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1, !tbaa !153
  %i.d = zext i8 %i.c to i32
  %i.e = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %i.d) #8 ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !237
  %i.i = zext i8 %i.h to i32
  %i.j = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.51, i32 noundef %i.i) #8 ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.g, align 1, !tbaa !237   ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = shl nuw i32 1, %i.m
  %i.o = and i32 %i.n, %3
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.p, i32 noundef 16, ptr noundef nonnull @.str.52, i32 noundef %i.m) #8
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  switch i8 %i.l, label %bb.n [
    i8 21, label %bb.h
    i8 14, label %bb.g
    i8 20, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !238
  %i.s = zext i8 %i.r to i32
  %i.t = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.53, i32 noundef %i.s) #8 ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.i, label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !239
  %i.x = zext i8 %i.w to i32
  %i.y = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef %i.x) #8 ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !238
  %.not65 = icmp eq i8 %i.ab, 0
  br i1 %.not65, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ac, i32 noundef 16, ptr noundef nonnull @.str.55) #8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !239
  %.not66 = icmp eq i8 %i.ae, 0
  %i.af = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.af, i32 noundef 16, ptr noundef nonnull @.str.56) #8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.af, i32 noundef 16, ptr noundef nonnull @.str.57) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.c, %bb.b, %bb.a, %bb.m, %bb.l, %bb.j, %bb.e
  %.5 = phi i32 [ -1163346256, %bb.j ], [ -1163346256, %bb.l ], [ -1163346256, %bb.m ], [ %i.t, %bb.g ], [ %i.y, %bb.h ], [ %i.a, %bb.a ], [ -1094995529, %bb.e ], [ %i.j, %bb.c ], [ %i.e, %bb.b ], [ 0, %bb.f ]
  ret i32 %.5
}

declare i32 @ff_cbs_write_simple_unsigned(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_cbs_write_unsigned(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_cbs_write_ue_golomb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_write_scaling_list(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 16, 65) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.01622 = phi i8 [ 8, %bb.a ], [ %.narrow, %bb.c ]
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19
  %i.e = sext i8 %i.d to i32
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.f, ptr %i.b, align 4, !tbaa !31
  %i.g = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.a, i32 noundef %i.e, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.c, align 1, !tbaa !19
  %.narrow = add i8 %i.i, %.01622                 ; 2 uses
  %i.j = icmp eq i8 %.narrow, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.j, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %bb.d, label %bb.b, !llvm.loop !360

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.c ]
  ret i32 %.2
}

declare i32 @ff_cbs_write_se_golomb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_write_vui_parameters(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %2, align 4, !tbaa !240
  %i.b = zext i8 %i.a to i32
  %i.c = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.59, i32 noundef %i.b) #8 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.cp

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %2, align 4, !tbaa !240
  %.not = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !241   ; 3 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext i8 %i.g to i32
  %i.i = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.60, i32 noundef %i.h) #8 ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.cp

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.f, align 1, !tbaa !241
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !242
  %i.o = zext i16 %i.n to i32
  %i.p = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.61, i32 noundef %i.o) #8 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.cp

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load i16, ptr %i.r, align 4, !tbaa !243
  %i.t = zext i16 %i.s to i32
  %i.u = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.62, i32 noundef %i.t) #8 ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.i, label %bb.cp

bb.g:                                             ; preds = %bb.b
  %.not419 = icmp eq i8 %i.g, 0
  br i1 %.not419, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %0, align 8, !tbaa !24
  %i.x = zext i8 %i.g to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.w, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.60, i64 noundef %i.x, i64 noundef 0) #8
  br label %bb.cp

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.z = load i8, ptr %i.y, align 2, !tbaa !244
  %i.aa = zext i8 %i.z to i32
  %i.ab = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.63, i32 noundef %i.aa) #8 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.j, label %bb.cp

bb.j:                                             ; preds = %bb.i
  %i.ad = load i8, ptr %i.y, align 2, !tbaa !244
  %.not420 = icmp eq i8 %i.ad, 0
  br i1 %.not420, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !245
  %i.ag = zext i8 %i.af to i32
  %i.ah = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.64, i32 noundef %i.ag) #8 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.l, label %bb.cp

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !246
  %i.al = zext i8 %i.ak to i32
  %i.am = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.65, i32 noundef %i.al) #8 ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.m, label %bb.cp

bb.m:                                             ; preds = %bb.l
  %i.ao = load i8, ptr %i.aj, align 4, !tbaa !246
  %.not421 = icmp eq i8 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !247 ; 3 uses
  br i1 %.not421, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = zext i8 %i.aq to i32
  %i.as = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.66, i32 noundef %i.ar) #8 ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %bb.o, label %bb.cp

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.av = load i8, ptr %i.au, align 2, !tbaa !248
  %i.aw = zext i8 %i.av to i32
  %i.ax = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.67, i32 noundef %i.aw) #8 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %bb.p, label %bb.cp

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !249
  %i.bb = zext i8 %i.ba to i32
  %i.bc = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.68, i32 noundef %i.bb) #8 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.q, label %bb.cp

bb.q:                                             ; preds = %bb.p
  %i.be = load i8, ptr %i.az, align 1, !tbaa !249
  %.not427 = icmp eq i8 %i.be, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !250 ; 3 uses
  br i1 %.not427, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = zext i8 %i.bg to i32
  %i.bi = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.69, i32 noundef %i.bh) #8 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, -1
  br i1 %i.bj, label %bb.s, label %bb.cp

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !251
  %i.bm = zext i8 %i.bl to i32
  %i.bn = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.70, i32 noundef %i.bm) #8 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %bb.t, label %bb.cp

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !252
  %i.br = zext i8 %i.bq to i32
  %i.bs = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.71, i32 noundef %i.br) #8 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  br i1 %i.bt, label %bb.ak, label %bb.cp

bb.u:                                             ; preds = %bb.q
  %.not428 = icmp eq i8 %i.bg, 2
  br i1 %.not428, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %0, align 8, !tbaa !24
  %i.bv = zext i8 %i.bg to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bu, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.69, i64 noundef %i.bv, i64 noundef 2) #8
  br label %bb.cp

bb.w:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !251 ; 2 uses
  %.not429 = icmp eq i8 %i.bx, 2
  br i1 %.not429, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %0, align 8, !tbaa !24
  %i.bz = zext i8 %i.bx to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.by, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.70, i64 noundef %i.bz, i64 noundef 2) #8
  br label %bb.cp

bb.y:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !252 ; 2 uses
  %.not430 = icmp eq i8 %i.cb, 2
  br i1 %.not430, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = load ptr, ptr %0, align 8, !tbaa !24
  %i.cd = zext i8 %i.cb to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cc, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.71, i64 noundef %i.cd, i64 noundef 2) #8
  br label %bb.cp

bb.aa:                                            ; preds = %bb.m
  %.not422 = icmp eq i8 %i.aq, 5
  br i1 %.not422, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load ptr, ptr %0, align 8, !tbaa !24
  %i.cf = zext i8 %i.aq to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ce, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.66, i64 noundef %i.cf, i64 noundef 5) #8
  br label %bb.cp

bb.ac:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !248 ; 2 uses
  %.not423 = icmp eq i8 %i.ch, 0
  br i1 %.not423, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = load ptr, ptr %0, align 8, !tbaa !24
end_hunk_9
begin_hunk_10_@cbs_h264_write_vui_parameters_default:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 631
  %i.at = load i8, ptr %i.as, align 1, !tbaa !265 ; 2 uses
  %.not78 = icmp eq i8 %i.at, 1
  br i1 %.not78, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = load ptr, ptr %0, align 8, !tbaa !24
  %i.av = zext i8 %i.at to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.au, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.84, i64 noundef %i.av, i64 noundef 1) #8
  br label %bb.aq

bb.y:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !266 ; 2 uses
  %.not79 = icmp eq i8 %i.ax, 2
  br i1 %.not79, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = load ptr, ptr %0, align 8, !tbaa !24
  %i.az = zext i8 %i.ax to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ay, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.85, i64 noundef %i.az, i64 noundef 2) #8
  br label %bb.aq

bb.aa:                                            ; preds = %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 633
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !267 ; 2 uses
  %.not80 = icmp eq i8 %i.bb, 1
  br i1 %.not80, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bc = load ptr, ptr %0, align 8, !tbaa !24
  %i.bd = zext i8 %i.bb to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bc, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.86, i64 noundef %i.bd, i64 noundef 1) #8
  br label %bb.aq

bb.ac:                                            ; preds = %bb.aa
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 634
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !268 ; 2 uses
  %.not81 = icmp eq i8 %i.bf, 15
  br i1 %.not81, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bg = load ptr, ptr %0, align 8, !tbaa !24
  %i.bh = zext i8 %i.bf to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bg, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.87, i64 noundef %i.bh, i64 noundef 15) #8
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 635
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !269 ; 2 uses
  %.not82 = icmp eq i8 %i.bj, 15
  br i1 %.not82, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bk = load ptr, ptr %0, align 8, !tbaa !24
  %i.bl = zext i8 %i.bj to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bk, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.88, i64 noundef %i.bl, i64 noundef 15) #8
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ae
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !37
  switch i8 %i.bn, label %bb.am [
    i8 44, label %bb.ah
    i8 86, label %bb.ah
    i8 100, label %bb.ah
    i8 110, label %bb.ah
    i8 122, label %bb.ah
    i8 -12, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !41
  %.not83 = icmp eq i8 %i.bp, 0
  br i1 %.not83, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 636
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !270 ; 2 uses
  %.not86 = icmp eq i8 %i.br, 0
  br i1 %.not86, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bs = load ptr, ptr %0, align 8, !tbaa !24
  %i.bt = zext i8 %i.br to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bs, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.89, i64 noundef %i.bt, i64 noundef 0) #8
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 637
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !271 ; 2 uses
  %.not87 = icmp eq i8 %i.bv, 0
  br i1 %.not87, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bw = load ptr, ptr %0, align 8, !tbaa !24
  %i.bx = zext i8 %i.bv to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bw, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.90, i64 noundef %i.bx, i64 noundef 0) #8
  br label %bb.aq

bb.am:                                            ; preds = %bb.ag, %bb.ah
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 636
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !270 ; 2 uses
  %.not84 = icmp eq i8 %i.bz, 16
  br i1 %.not84, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ca = load ptr, ptr %0, align 8, !tbaa !24
  %i.cb = zext i8 %i.bz to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ca, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.89, i64 noundef %i.cb, i64 noundef 16) #8
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 637
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !271 ; 2 uses
  %.not85 = icmp eq i8 %i.cd, 16
  br i1 %.not85, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ce = load ptr, ptr %0, align 8, !tbaa !24
  %i.cf = zext i8 %i.cd to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ce, i32 noundef 16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.90, i64 noundef %i.cf, i64 noundef 16) #8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ak, %bb.ao, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.d ], [ -1094995529, %bb.f ], [ -1094995529, %bb.h ], [ -1094995529, %bb.j ], [ -1094995529, %bb.l ], [ -1094995529, %bb.n ], [ -1094995529, %bb.p ], [ -1094995529, %bb.r ], [ -1094995529, %bb.t ], [ -1094995529, %bb.v ], [ -1094995529, %bb.x ], [ -1094995529, %bb.z ], [ -1094995529, %bb.ab ], [ -1094995529, %bb.ad ], [ -1094995529, %bb.af ], [ -1094995529, %bb.aj ], [ -1094995529, %bb.al ], [ -1094995529, %bb.ap ], [ -1094995529, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.ak ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_write_rbsp_trailing_bits(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 1) #8 ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %i.d = load i32, ptr %i.c, align 4, !tbaa !152
  %reass.sub.i = sub i32 0, %i.d
  %i.e = and i32 %reass.sub.i, 7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.3 = phi i32 [ %i.a, %bb.a ], [ 0, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_write_hrd_parameters(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 3 uses
  %i.b = alloca [2 x i32], align 4                ; 3 uses
  %i.c = alloca [2 x i32], align 4                ; 3 uses
  %i.d = load i8, ptr %2, align 4, !tbaa !272
  %i.e = zext i8 %i.d to i32
  %i.f = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.91, ptr noundef null, i32 noundef %i.e, i32 noundef 0, i32 noundef 31) #8 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !273
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.92, i32 noundef %i.j) #8 ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = load i8, ptr %i.m, align 2, !tbaa !274
  %i.o = zext i8 %i.n to i32
  %i.p = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.93, i32 noundef %i.o) #8 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.e

bb.d:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.x = load i8, ptr %2, align 4, !tbaa !272
  %i.y = zext i8 %i.x to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.y
  br i1 %.not.not, label %bb.e, label %bb.h, !llvm.loop !361

bb.e:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  store i32 %i.ab, ptr %i.s, align 4, !tbaa !31
  %i.ac = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.94, ptr noundef nonnull %i.a, i32 noundef %i.aa, i32 noundef 0, i32 noundef -2) #8 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31
  store i32 1, ptr %i.b, align 4, !tbaa !31
  store i32 %i.ab, ptr %i.u, align 4, !tbaa !31
  %i.ag = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef nonnull %i.b, i32 noundef %i.af, i32 noundef 0, i32 noundef -2) #8 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  %i.ak = zext i8 %i.aj to i32
  store i32 1, ptr %i.c, align 4, !tbaa !31
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !31
  %i.al = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.c, i32 noundef %i.ak, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.d, label %.loopexit

bb.h:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 292
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !275
  %i.ap = zext i8 %i.ao to i32
  %i.aq = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.97, i32 noundef %i.ap) #8 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 293
  %i.at = load i8, ptr %i.as, align 1, !tbaa !163
  %i.au = zext i8 %i.at to i32
  %i.av = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.98, i32 noundef %i.au) #8 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 294
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !166
  %i.az = zext i8 %i.ay to i32
  %i.ba = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.99, i32 noundef %i.az) #8 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 295
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !276
  %i.be = zext i8 %i.bd to i32
  %i.bf = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.100, i32 noundef %i.be) #8
  %spec.select = call i32 @llvm.smin.i32(i32 %i.bf, i32 0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.k, %bb.j, %bb.i, %bb.h, %bb.c, %bb.b, %bb.a
  %.11 = phi i32 [ %i.aq, %bb.h ], [ %i.p, %bb.c ], [ %i.k, %bb.b ], [ %i.f, %bb.a ], [ %spec.select, %bb.k ], [ %i.ba, %bb.j ], [ %i.av, %bb.i ], [ %i.ac, %bb.e ], [ %i.ag, %bb.f ], [ %i.al, %bb.g ]
  ret i32 %.11
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_write_ref_pic_list_modification(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2360
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !120
  %i.g = urem i8 %i.f, 5
  switch i8 %i.g, label %bb.b [
    i8 2, label %.loopexit127
    i8 4, label %.loopexit127
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 37 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !277
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.169, i32 noundef %i.j) #8 ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.h, align 1, !tbaa !277
  %.not122 = icmp eq i8 %i.m, 0
  br i1 %.not122, label %.loopexit127, label %.preheader126

.preheader126:                                    ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 1840
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  br label %bb.d

bb.d:                                             ; preds = %.preheader126, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader126 ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv ; 4 uses
  %i.s = load i8, ptr %i.r, align 4, !tbaa !279
  %i.t = zext i8 %i.s to i32
  %i.u = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.170, ptr noundef null, i32 noundef %i.t, i32 noundef 0, i32 noundef 3) #8 ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.w = load i8, ptr %i.r, align 4, !tbaa !279   ; 3 uses
  %i.x = icmp eq i8 %i.w, 3
  br i1 %i.x, label %.loopexit127, label %bb.f

bb.f:                                             ; preds = %bb.e
  %or.cond = icmp ult i8 %i.w, 2
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !280
  %i.aa = load i8, ptr %i.p, align 2, !tbaa !124
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nuw nsw i32 %i.ab, 1
  %i.ad = load i8, ptr %i.q, align 4, !tbaa !54
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = add nuw nsw i32 %i.ae, 4
  %i.ag = shl i32 %i.ac, %i.af
  %i.ah = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.171, ptr noundef null, i32 noundef %i.z, i32 noundef 0, i32 noundef %i.ag) #8 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.j, label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.aj = icmp eq i8 %i.w, 2
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !281
  %i.am = zext i8 %i.al to i32
  %i.an = load i8, ptr %i.o, align 4, !tbaa !61
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.172, ptr noundef null, i32 noundef %i.am, i32 noundef 0, i32 noundef %i.ap) #8 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 33
  br i1 %exitcond.not, label %.loopexit127, label %bb.d, !llvm.loop !362

.loopexit127:                                     ; preds = %bb.e, %bb.j, %bb.a, %bb.a, %bb.c
  %i.as = load i8, ptr %i.e, align 4, !tbaa !120
  %i.at = urem i8 %i.as, 5
  %i.au = icmp eq i8 %i.at, 1
  br i1 %i.au, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.loopexit127
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 38 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !282
  %i.ax = zext i8 %i.aw to i32
  %i.ay = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.173, i32 noundef %i.ax) #8 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ba = load i8, ptr %i.av, align 2, !tbaa !282
  %.not123 = icmp eq i8 %i.ba, 0
  br i1 %.not123, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 436
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 1840
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.s
  %indvars.iv135 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next136, %bb.s ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %indvars.iv135 ; 4 uses
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !279
  %i.bh = zext i8 %i.bg to i32
  %i.bi = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.170, ptr noundef null, i32 noundef %i.bh, i32 noundef 0, i32 noundef 3) #8 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, -1
  br i1 %i.bj, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bk = load i8, ptr %i.bf, align 4, !tbaa !279 ; 3 uses
  %i.bl = icmp eq i8 %i.bk, 3
  br i1 %i.bl, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %or.cond10 = icmp ult i8 %i.bk, 2
  br i1 %or.cond10, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !280
  %i.bo = load i8, ptr %i.bd, align 2, !tbaa !124
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bp, 1
  %i.br = load i8, ptr %i.be, align 4, !tbaa !54
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bs, 4
  %i.bu = shl i32 %i.bq, %i.bt
  %i.bv = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.171, ptr noundef null, i32 noundef %i.bn, i32 noundef 0, i32 noundef %i.bu) #8 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.s, label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.bx = icmp eq i8 %i.bk, 2
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !281
  %i.ca = zext i8 %i.bz to i32
  %i.cb = load i8, ptr %i.bc, align 4, !tbaa !61
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.cc, -1
  %i.ce = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.172, ptr noundef null, i32 noundef %i.ca, i32 noundef 0, i32 noundef %i.cd) #8 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, -1
  br i1 %i.cf, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, 33
  br i1 %exitcond138.not, label %.loopexit, label %bb.m, !llvm.loop !363

.loopexit:                                        ; preds = %bb.g, %bb.i, %bb.d, %bb.s, %bb.n, %bb.p, %bb.r, %bb.m, %.loopexit127, %bb.l, %bb.b, %bb.k
  %.13 = phi i32 [ %i.k, %bb.b ], [ %i.bv, %bb.p ], [ 0, %bb.l ], [ 0, %.loopexit127 ], [ %i.ay, %bb.k ], [ 0, %bb.s ], [ 0, %bb.n ], [ %i.bi, %bb.m ], [ %i.ce, %bb.r ], [ %i.aq, %bb.i ], [ %i.ah, %bb.g ], [ %i.u, %bb.d ]
  ret i32 %.13
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_write_pred_weight_table(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  %i.c = alloca [2 x i32], align 4                ; 6 uses
  %i.d = alloca [2 x i32], align 4                ; 3 uses
  %i.e = alloca [3 x i32], align 4                ; 6 uses
  %i.f = alloca [3 x i32], align 4                ; 6 uses
  %i.g = alloca [2 x i32], align 4                ; 6 uses
  %i.h = alloca [2 x i32], align 4                ; 6 uses
  %i.i = alloca [2 x i32], align 4                ; 6 uses
  %i.j = alloca [2 x i32], align 4                ; 3 uses
  %i.k = alloca [3 x i32], align 4                ; 6 uses
  %i.l = alloca [3 x i32], align 4                ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2360
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.r = load i8, ptr %i.q, align 4, !tbaa !283
  %i.s = zext i8 %i.r to i32
  %i.t = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.174, ptr noundef null, i32 noundef %i.s, i32 noundef 0, i32 noundef 7) #8 ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.b, label %.loopexit207

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %i.w = load i8, ptr %i.v, align 1, !tbaa !48
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %bb.c, label %.thread.split.preheader

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 14
  %i.y = load i8, ptr %i.x, align 2, !tbaa !47
  %.not206 = icmp eq i8 %i.y, 0
  br i1 %.not206, label %.thread.split.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 833
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !284
  %i.ab = zext i8 %i.aa to i32
  %i.ac = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.175, ptr noundef null, i32 noundef %i.ab, i32 noundef 0, i32 noundef 7) #8 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %.thread.split.us.preheader, label %.loopexit207

.thread.split.preheader:                          ; preds = %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 834
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 866
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 898
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %.thread.split

.thread.split.us.preheader:                       ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 834
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 866
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 898
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 930
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 962
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 1026
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %.thread.split.us

.thread.split.us:                                 ; preds = %.thread.split.us.preheader, %.loopexit212.us
  %indvars.iv239 = phi i64 [ 0, %.thread.split.us.preheader ], [ %indvars.iv.next240, %.loopexit212.us ] ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv239 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  %i.bc = zext i8 %i.bb to i32
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.bd = trunc nuw nsw i64 %indvars.iv239 to i32 ; 8 uses
  store i32 %i.bd, ptr %i.an, align 4, !tbaa !31
  %i.be = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.176, ptr noundef nonnull %i.a, i32 noundef %i.bc, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.e, label %.loopexit207

bb.e:                                             ; preds = %.thread.split.us
  %i.bg = load i8, ptr %i.ba, align 1, !tbaa !19
  %.not204.us = icmp eq i8 %i.bg, 0
  br i1 %.not204.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv239
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19
  %i.bj = sext i8 %i.bi to i32
  store i32 1, ptr %i.b, align 4, !tbaa !31
  store i32 %i.bd, ptr %i.ap, align 4, !tbaa !31
  %i.bk = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.177, ptr noundef nonnull %i.b, i32 noundef %i.bj, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %bb.g, label %.loopexit207

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv239
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !19
  %i.bo = sext i8 %i.bn to i32
  store i32 1, ptr %i.c, align 4, !tbaa !31
  store i32 %i.bd, ptr %i.ar, align 4, !tbaa !31
  %i.bp = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.178, ptr noundef nonnull %i.c, i32 noundef %i.bo, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %bb.h, label %.loopexit207

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv239 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19
  %i.bt = zext i8 %i.bs to i32
  store i32 1, ptr %i.d, align 4, !tbaa !31
  store i32 %i.bd, ptr %i.at, align 4, !tbaa !31
  %i.bu = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.179, ptr noundef nonnull %i.d, i32 noundef %i.bt, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, -1
  br i1 %i.bv, label %bb.i, label %.loopexit207

bb.i:                                             ; preds = %bb.h
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !19
  %.not205.us = icmp eq i8 %i.bw, 0
  br i1 %.not205.us, label %.loopexit212.us, label %.preheader211.us

bb.j:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !19
  %i.bz = sext i8 %i.by to i32
  store i32 2, ptr %i.e, align 4, !tbaa !31
  store i32 %i.bd, ptr %i.av, align 4, !tbaa !31
  store i32 1, ptr %i.aw, align 4, !tbaa !31
  %i.ca = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.180, ptr noundef nonnull %i.e, i32 noundef %i.bz, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  br i1 %i.cb, label %bb.k, label %.loopexit207

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !19
  %i.ce = sext i8 %i.cd to i32
  store i32 2, ptr %i.f, align 4, !tbaa !31
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !31
  store i32 1, ptr %i.az, align 4, !tbaa !31
  %i.cf = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.181, ptr noundef nonnull %i.f, i32 noundef %i.ce, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %.loopexit212.us, label %.loopexit207

bb.l:                                             ; preds = %.preheader211.us
  %i.ch = load i8, ptr %i.co, align 1, !tbaa !19
  %i.ci = sext i8 %i.ch to i32
  store i32 2, ptr %i.f, align 4, !tbaa !31
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !31
  store i32 0, ptr %i.az, align 4, !tbaa !31
  %i.cj = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.181, ptr noundef nonnull %i.f, i32 noundef %i.ci, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %bb.j, label %.loopexit207

.loopexit212.us:                                  ; preds = %bb.k, %bb.i
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1
  %i.cl = load i8, ptr %i.al, align 1, !tbaa !132
  %i.cm = zext i8 %i.cl to i64
  %.not200.us.not = icmp samesign ult i64 %indvars.iv239, %i.cm
  br i1 %.not200.us.not, label %.thread.split.us, label %.split.us, !llvm.loop !364

.preheader211.us:                                 ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv239 ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv239 ; 2 uses
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !19
  %i.cq = sext i8 %i.cp to i32
  store i32 2, ptr %i.e, align 4, !tbaa !31
  store i32 %i.bd, ptr %i.av, align 4, !tbaa !31
  store i32 0, ptr %i.aw, align 4, !tbaa !31
  %i.cr = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.180, ptr noundef nonnull %i.e, i32 noundef %i.cq, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %bb.l, label %.loopexit207

.thread.split:                                    ; preds = %.thread.split.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.thread.split.preheader ], [ %indvars.iv.next, %bb.p ] ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !19
  %i.cv = zext i8 %i.cu to i32
  store i32 1, ptr %i.a, align 4, !tbaa !31
  %i.cw = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  store i32 %i.cw, ptr %i.ag, align 4, !tbaa !31
  %i.cx = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.176, ptr noundef nonnull %i.a, i32 noundef %i.cv, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, -1
  br i1 %i.cy, label %bb.m, label %.loopexit207

bb.m:                                             ; preds = %.thread.split
  %i.cz = load i8, ptr %i.ct, align 1, !tbaa !19
  %.not204 = icmp eq i8 %i.cz, 0
  br i1 %.not204, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !tbaa !19
  %i.dc = sext i8 %i.db to i32
  store i32 1, ptr %i.b, align 4, !tbaa !31
  store i32 %i.cw, ptr %i.ai, align 4, !tbaa !31
  %i.dd = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.177, ptr noundef nonnull %i.b, i32 noundef %i.dc, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, -1
  br i1 %i.de, label %bb.o, label %.loopexit207

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !19
  %i.dh = sext i8 %i.dg to i32
  store i32 1, ptr %i.c, align 4, !tbaa !31
  store i32 %i.cw, ptr %i.ak, align 4, !tbaa !31
  %i.di = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.178, ptr noundef nonnull %i.c, i32 noundef %i.dh, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.dj = icmp sgt i32 %i.di, -1
  br i1 %i.dj, label %bb.p, label %.loopexit207

bb.p:                                             ; preds = %bb.o, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dk = load i8, ptr %i.ae, align 1, !tbaa !132
  %i.dl = zext i8 %i.dk to i64
  %.not200.not = icmp samesign ult i64 %indvars.iv, %i.dl
  br i1 %.not200.not, label %.thread.split, label %.split.us.thread, !llvm.loop !364

.split.us:                                        ; preds = %.loopexit212.us
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !120
  %i.do = urem i8 %i.dn, 5
  %i.dp = icmp eq i8 %i.do, 1
  br i1 %i.dp, label %.preheader208.split.us.preheader, label %.loopexit207

.split.us.thread:                                 ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !120
  %i.ds = urem i8 %i.dr, 5
  %i.dt = icmp eq i8 %i.ds, 1
  br i1 %i.dt, label %.preheader208.split.preheader, label %.loopexit207

.preheader208.split.preheader:                    ; preds = %.split.us.thread
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 1090
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 1122
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 1154
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.preheader208.split

.preheader208.split.us.preheader:                 ; preds = %.split.us
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 1090
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 1122
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 1154
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 1186
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 1218
  %i.el = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 1282
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %.preheader208.split.us

.preheader208.split.us:                           ; preds = %.preheader208.split.us.preheader, %.loopexit.us
  %indvars.iv248 = phi i64 [ 0, %.preheader208.split.us.preheader ], [ %indvars.iv.next249, %.loopexit.us ] ; 9 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 %indvars.iv248 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !19
  %i.es = zext i8 %i.er to i32
  store i32 1, ptr %i.g, align 4, !tbaa !31
  %i.et = trunc nuw nsw i64 %indvars.iv248 to i32 ; 8 uses
  store i32 %i.et, ptr %i.ed, align 4, !tbaa !31
  %i.eu = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.182, ptr noundef nonnull %i.g, i32 noundef %i.es, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, -1
  br i1 %i.ev, label %bb.q, label %.loopexit207

bb.q:                                             ; preds = %.preheader208.split.us
  %i.ew = load i8, ptr %i.eq, align 1, !tbaa !19
  %.not202.us = icmp eq i8 %i.ew, 0
  br i1 %.not202.us, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv248
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !19
  %i.ez = sext i8 %i.ey to i32
  store i32 1, ptr %i.h, align 4, !tbaa !31
  store i32 %i.et, ptr %i.ef, align 4, !tbaa !31
  %i.fa = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.183, ptr noundef nonnull %i.h, i32 noundef %i.ez, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, -1
  br i1 %i.fb, label %bb.s, label %.loopexit207

bb.s:                                             ; preds = %bb.r
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eg, i64 %indvars.iv248
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !19
  %i.fe = sext i8 %i.fd to i32
  store i32 1, ptr %i.i, align 4, !tbaa !31
  store i32 %i.et, ptr %i.eh, align 4, !tbaa !31
  %i.ff = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.184, ptr noundef nonnull %i.i, i32 noundef %i.fe, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, -1
  br i1 %i.fg, label %bb.t, label %.loopexit207

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv248 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !19
  %i.fj = zext i8 %i.fi to i32
  store i32 1, ptr %i.j, align 4, !tbaa !31
  store i32 %i.et, ptr %i.ej, align 4, !tbaa !31
  %i.fk = call i32 @ff_cbs_write_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.185, ptr noundef nonnull %i.j, i32 noundef %i.fj, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, -1
  br i1 %i.fl, label %bb.u, label %.loopexit207

bb.u:                                             ; preds = %bb.t
  %i.fm = load i8, ptr %i.fh, align 1, !tbaa !19
  %.not203.us = icmp eq i8 %i.fm, 0
  br i1 %.not203.us, label %.loopexit.us, label %.preheader.us

.preheader.us:                                    ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %indvars.iv248 ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %indvars.iv248 ; 2 uses
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !19
  %i.fq = sext i8 %i.fp to i32
  store i32 2, ptr %i.k, align 4, !tbaa !31
  store i32 %i.et, ptr %i.el, align 4, !tbaa !31
  store i32 0, ptr %i.em, align 4, !tbaa !31
  %i.fr = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.186, ptr noundef nonnull %i.k, i32 noundef %i.fq, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, -1
  br i1 %i.fs, label %bb.x, label %.loopexit207

bb.v:                                             ; preds = %bb.x
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !19
  %i.fv = sext i8 %i.fu to i32
  store i32 2, ptr %i.k, align 4, !tbaa !31
  store i32 %i.et, ptr %i.el, align 4, !tbaa !31
  store i32 1, ptr %i.em, align 4, !tbaa !31
  %i.fw = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.186, ptr noundef nonnull %i.k, i32 noundef %i.fv, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, -1
  br i1 %i.fx, label %bb.w, label %.loopexit207

bb.w:                                             ; preds = %bb.v
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !19
  %i.ga = sext i8 %i.fz to i32
  store i32 2, ptr %i.l, align 4, !tbaa !31
  store i32 %i.et, ptr %i.eo, align 4, !tbaa !31
  store i32 1, ptr %i.ep, align 4, !tbaa !31
  %i.gb = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.187, ptr noundef nonnull %i.l, i32 noundef %i.ga, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.gc = icmp sgt i32 %i.gb, -1
  br i1 %i.gc, label %.loopexit.us, label %.loopexit207

bb.x:                                             ; preds = %.preheader.us
  %i.gd = load i8, ptr %i.fo, align 1, !tbaa !19
  %i.ge = sext i8 %i.gd to i32
  store i32 2, ptr %i.l, align 4, !tbaa !31
  store i32 %i.et, ptr %i.eo, align 4, !tbaa !31
  store i32 0, ptr %i.ep, align 4, !tbaa !31
  %i.gf = call i32 @ff_cbs_write_se_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.187, ptr noundef nonnull %i.l, i32 noundef %i.ge, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, -1
  br i1 %i.gg, label %bb.v, label %.loopexit207

.loopexit.us:                                     ; preds = %bb.w, %bb.u
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1
  %i.gh = load i8, ptr %i.eb, align 4, !tbaa !133
  %i.gi = zext i8 %i.gh to i64
  %.not201.us.not = icmp samesign ult i64 %indvars.iv248, %i.gi
  br i1 %.not201.us.not, label %.preheader208.split.us, label %.loopexit207, !llvm.loop !365

.preheader208.split:                              ; preds = %.preheader208.split.preheader, %bb.ab
  %indvars.iv242 = phi i64 [ 0, %.preheader208.split.preheader ], [ %indvars.iv.next243, %bb.ab ] ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv242 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !19
  %i.gl = zext i8 %i.gk to i32
  store i32 1, ptr %i.g, align 4, !tbaa !31
  %i.gm = trunc nuw nsw i64 %indvars.iv242 to i32 ; 3 uses
  store i32 %i.gm, ptr %i.dw, align 4, !tbaa !31
  %i.gn = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.182, ptr noundef nonnull %i.g, i32 noundef %i.gl, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.go = icmp sgt i32 %i.gn, -1
  br i1 %i.go, label %bb.y, label %.loopexit207

bb.y:                                             ; preds = %.preheader208.split
  %i.gp = load i8, ptr %i.gj, align 1, !tbaa !19
  %.not202 = icmp eq i8 %i.gp, 0
  br i1 %.not202, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv242
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !19
  %i.gs = sext i8 %i.gr to i32
  store i32 1, ptr %i.h, align 4, !tbaa !31
  store i32 %i.gm, ptr %i.dy, align 4, !tbaa !31
  %i.gt = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.183, ptr noundef nonnull %i.h, i32 noundef %i.gs, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, -1
  br i1 %i.gu, label %bb.aa, label %.loopexit207

bb.aa:                                            ; preds = %bb.z
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv242
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !19
  %i.gx = sext i8 %i.gw to i32
  store i32 1, ptr %i.i, align 4, !tbaa !31
  store i32 %i.gm, ptr %i.ea, align 4, !tbaa !31
  %i.gy = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.184, ptr noundef nonnull %i.i, i32 noundef %i.gx, i32 noundef -128, i32 noundef 127) #8 ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, -1
  br i1 %i.gz, label %bb.ab, label %.loopexit207

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1
  %i.ha = load i8, ptr %i.du, align 4, !tbaa !133
  %i.hb = zext i8 %i.ha to i64
  %.not201.not = icmp samesign ult i64 %indvars.iv242, %i.hb
  br i1 %.not201.not, label %.preheader208.split, label %.loopexit207, !llvm.loop !365

.loopexit207:                                     ; preds = %bb.h, %bb.g, %bb.f, %.thread.split.us, %bb.l, %.preheader211.us, %bb.j, %bb.k, %.loopexit.us, %bb.t, %bb.s, %bb.r, %.preheader208.split.us, %bb.x, %.preheader.us, %bb.v, %bb.w, %.thread.split, %bb.n, %bb.o, %.preheader208.split, %bb.z, %bb.aa, %bb.ab, %.split.us.thread, %.split.us, %bb.d, %bb.a
  %.23 = phi i32 [ %i.t, %bb.a ], [ 0, %.split.us.thread ], [ %i.ac, %bb.d ], [ 0, %.split.us ], [ 0, %bb.ab ], [ 0, %.loopexit.us ], [ %i.di, %bb.o ], [ %i.gn, %.preheader208.split ], [ %i.gt, %bb.z ], [ %i.gy, %bb.aa ], [ %i.dd, %bb.n ], [ %i.cx, %.thread.split ], [ %i.eu, %.preheader208.split.us ], [ %i.fa, %bb.r ], [ %i.ff, %bb.s ], [ %i.fk, %bb.t ], [ %i.fw, %bb.v ], [ %i.gf, %bb.x ], [ %i.fr, %.preheader.us ], [ %i.gb, %bb.w ], [ %i.bp, %bb.g ], [ %i.be, %.thread.split.us ], [ %i.bk, %bb.f ], [ %i.bu, %bb.h ], [ %i.cj, %bb.l ], [ %i.ca, %bb.j ], [ %i.cr, %.preheader211.us ], [ %i.cf, %bb.k ]
  ret i32 %.23
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_h264_write_dec_ref_pic_marking(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2360
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1346
  %i.f = load i8, ptr %i.e, align 2, !tbaa !285
  %i.g = zext i8 %i.f to i32
  %i.h = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.188, i32 noundef %i.g) #8 ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1347
  %i.k = load i8, ptr %i.j, align 1, !tbaa !286
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.189, i32 noundef %i.l) #8 ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %.thread111, label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1348 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !287
  %i.q = zext i8 %i.p to i32
  %i.r = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.190, i32 noundef %i.q) #8 ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.o, align 4, !tbaa !287
  %.not107 = icmp eq i8 %i.t, 0
  br i1 %.not107, label %.thread111, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1352
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 1840 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.thread109
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.thread109 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv ; 6 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !289
  %i.y = zext i8 %i.x to i32
  %i.z = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.191, ptr noundef null, i32 noundef %i.y, i32 noundef 0, i32 noundef 6) #8 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.w, align 4, !tbaa !289  ; 3 uses
  switch i8 %i.ab, label %.thread109 [
    i8 0, label %.thread111
    i8 3, label %bb.h
    i8 1, label %bb.h
    i8 2, label %bb.j
    i8 6, label %bb.k
    i8 4, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !290
  %i.ae = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.192, ptr noundef null, i32 noundef %i.ad, i32 noundef 0, i32 noundef 2147483647) #8 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  switch i8 %i.ab, label %.thread109 [
    i8 2, label %bb.j
    i8 3, label %bb.k
  ]

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !291
  %i.ai = zext i8 %i.ah to i32
  %i.aj = load i8, ptr %i.v, align 4, !tbaa !61
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -1
  %i.am = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.172, ptr noundef null, i32 noundef %i.ai, i32 noundef 0, i32 noundef %i.al) #8 ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %.thread109, label %.loopexit

bb.k:                                             ; preds = %bb.i, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !292
  %i.aq = zext i8 %i.ap to i32
  %i.ar = load i8, ptr %i.v, align 4, !tbaa !61
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -1
  %i.au = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.193, ptr noundef null, i32 noundef %i.aq, i32 noundef 0, i32 noundef %i.at) #8 ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp eq i8 %i.ab, 4
  br i1 %i.aw, label %bb.m, label %.thread109

bb.m:                                             ; preds = %bb.g, %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !293
  %i.az = zext i8 %i.ay to i32
  %i.ba = load i8, ptr %i.v, align 4, !tbaa !61
  %i.bb = zext i8 %i.ba to i32
  %i.bc = tail call i32 @ff_cbs_write_ue_golomb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.194, ptr noundef null, i32 noundef %i.az, i32 noundef 0, i32 noundef %i.bb) #8 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %.thread109, label %.loopexit

.thread109:                                       ; preds = %bb.g, %bb.i, %bb.j, %bb.l, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 67
  br i1 %exitcond.not, label %bb.n, label %bb.f, !llvm.loop !366

bb.n:                                             ; preds = %.thread109
  %i.be = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.be, i32 noundef 16, ptr noundef nonnull @.str.195) #8
  br label %.loopexit

.thread111:                                       ; preds = %bb.g, %bb.e, %bb.c
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.j, %bb.k, %bb.m, %bb.f, %bb.c, %bb.b, %bb.d, %.thread111, %bb.n
  %.13 = phi i32 [ 0, %.thread111 ], [ %i.m, %bb.c ], [ %i.h, %bb.b ], [ -1094995529, %bb.n ], [ %i.r, %bb.d ], [ %i.z, %bb.f ], [ %i.ae, %bb.h ], [ %i.am, %bb.j ], [ %i.au, %bb.k ], [ %i.bc, %bb.m ]
  ret i32 %.13
}

declare i32 @ff_cbs_sei_write_message_list(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @av_refstruct_unref(ptr noundef) local_unnamed_addr #1

declare void @ff_h2645_packet_uninit(ptr noundef) local_unnamed_addr #1

declare i32 @ff_cbs_read_signed(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_cbs_write_signed(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !25}
!1 = distinct !{!1, !25}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS18CodedBitstreamType", !11, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"CodedBitstreamContext", !11, i64 0, !12, i64 8, !11, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !14, i64 72, !15, i64 80}
!17 = !{!16, !11, i64 16}
!18 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!"p1 _ZTS8H2645NAL", !11, i64 0}
!21 = !{!"H2645RBSP", !14, i64 0, !18, i64 8, !8, i64 16, !8, i64 20}
!22 = !{!"H2645Packet", !20, i64 0, !21, i64 8, !8, i64 32, !8, i64 36, !8, i64 40}
!23 = !{!"CodedBitstreamH2645Context", !8, i64 0, !8, i64 4, !22, i64 8}
!24 = !{!16, !11, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"CodedBitstreamUnit", !8, i64 0, !14, i64 8, !15, i64 16, !15, i64 24, !18, i64 32, !11, i64 40, !11, i64 48}
!27 = !{!"GetBitContext", !14, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!28 = !{!27, !8, i64 8}
!29 = !{!26, !8, i64 0}
!30 = !{!26, !11, i64 40}
!31 = !{!8, !8, i64 0}
!32 = !{!"H264RawNALUnitHeader", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3}
!33 = !{!"short", !7, i64 0}
!34 = !{!"H264RawHRD", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 4, !7, i64 132, !7, i64 260, !7, i64 292, !7, i64 293, !7, i64 294, !7, i64 295}
!35 = !{!"H264RawVUI", !7, i64 0, !7, i64 1, !33, i64 2, !33, i64 4, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15, !7, i64 16, !7, i64 17, !7, i64 18, !8, i64 20, !8, i64 24, !7, i64 28, !7, i64 29, !34, i64 32, !7, i64 328, !34, i64 332, !7, i64 628, !7, i64 629, !7, i64 630, !7, i64 631, !7, i64 632, !7, i64 633, !7, i64 634, !7, i64 635, !7, i64 636, !7, i64 637}
!36 = !{!"H264RawSPS", !32, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !7, i64 20, !7, i64 32, !7, i64 416, !7, i64 800, !7, i64 801, !7, i64 802, !7, i64 803, !8, i64 804, !8, i64 808, !7, i64 812, !7, i64 816, !7, i64 1840, !7, i64 1841, !33, i64 1842, !33, i64 1844, !7, i64 1846, !7, i64 1847, !7, i64 1848, !7, i64 1849, !33, i64 1850, !33, i64 1852, !33, i64 1854, !33, i64 1856, !7, i64 1858, !35, i64 1860}
!37 = !{!36, !7, i64 4}
!38 = !{!36, !7, i64 5}
!39 = !{!36, !7, i64 6}
!40 = !{!36, !7, i64 7}
!41 = !{!36, !7, i64 8}
!42 = !{!36, !7, i64 9}
!43 = !{!36, !7, i64 10}
!44 = !{!36, !7, i64 11}
!45 = !{!36, !7, i64 12}
!46 = !{!36, !7, i64 13}
!47 = !{!36, !7, i64 14}
!48 = !{!36, !7, i64 15}
!49 = !{!36, !7, i64 16}
!50 = !{!36, !7, i64 17}
!51 = !{!36, !7, i64 18}
!52 = !{!36, !7, i64 19}
!53 = !{!"llvm.loop.peeled.count", i32 6}
!54 = !{!36, !7, i64 800}
!55 = !{!36, !7, i64 801}
!56 = !{!36, !7, i64 802}
!57 = !{!36, !7, i64 803}
!58 = !{!36, !8, i64 804}
!59 = !{!36, !8, i64 808}
!60 = !{!36, !7, i64 812}
!61 = !{!36, !7, i64 1840}
!62 = !{!36, !7, i64 1841}
!63 = !{!36, !33, i64 1842}
!64 = !{!36, !33, i64 1844}
!65 = !{!36, !7, i64 1846}
!66 = !{!36, !7, i64 1847}
!67 = !{!36, !7, i64 1848}
!68 = !{!36, !7, i64 1849}
!69 = !{!36, !33, i64 1850}
!70 = !{!36, !33, i64 1852}
!71 = !{!36, !33, i64 1854}
!72 = !{!36, !33, i64 1856}
!73 = !{!36, !7, i64 1858}
!74 = !{!"p1 _ZTS10H264RawSPS", !11, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"p1 _ZTS10H264RawPPS", !11, i64 0}
!77 = !{!"CodedBitstreamH264Context", !23, i64 0, !7, i64 56, !7, i64 312, !74, i64 2360, !76, i64 2368, !7, i64 2376}
!78 = !{!77, !74, i64 2360}
!79 = !{!26, !11, i64 48}
!80 = !{!"H264RawSPSExtension", !32, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !33, i64 8, !33, i64 10, !7, i64 12}
!81 = !{!80, !7, i64 4}
!82 = !{!80, !7, i64 5}
!83 = !{!80, !7, i64 6}
!84 = !{!80, !7, i64 7}
!85 = !{!80, !33, i64 8}
!86 = !{!80, !33, i64 10}
!87 = !{!80, !7, i64 12}
!88 = !{!"H264RawPPS", !32, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 26, !7, i64 42, !7, i64 58, !33, i64 60, !33, i64 62, !14, i64 64, !18, i64 72, !7, i64 80, !7, i64 81, !7, i64 82, !7, i64 83, !7, i64 84, !7, i64 85, !7, i64 86, !7, i64 87, !7, i64 88, !7, i64 89, !7, i64 90, !7, i64 91, !7, i64 92, !7, i64 93, !7, i64 105, !7, i64 489, !7, i64 873}
!89 = !{!88, !7, i64 4}
!90 = !{!88, !7, i64 5}
!91 = !{!88, !7, i64 6}
!92 = !{!88, !7, i64 7}
!93 = !{!88, !7, i64 8}
!94 = !{!88, !7, i64 9}
!95 = !{!33, !33, i64 0}
!96 = !{!88, !7, i64 58}
!97 = !{!88, !33, i64 60}
!98 = !{!88, !33, i64 62}
!99 = !{!88, !14, i64 64}
!100 = !{!88, !7, i64 80}
!101 = !{!88, !7, i64 81}
!102 = !{!88, !7, i64 82}
!103 = !{!88, !7, i64 83}
!104 = !{!88, !7, i64 84}
!105 = !{!88, !7, i64 85}
!106 = !{!88, !7, i64 86}
!107 = !{!88, !7, i64 87}
!108 = !{!88, !7, i64 88}
!109 = !{!88, !7, i64 90}
!110 = !{!88, !7, i64 89}
!111 = !{!88, !7, i64 91}
!112 = !{!88, !7, i64 92}
!113 = !{!88, !7, i64 873}
!114 = !{!76, !76, i64 0}
!115 = !{!77, !76, i64 2368}
!116 = !{!"H264RawSliceHeader", !32, i64 0, !8, i64 4, !7, i64 8, !7, i64 9, !7, i64 10, !33, i64 12, !7, i64 14, !7, i64 15, !33, i64 16, !33, i64 18, !8, i64 20, !7, i64 24, !7, i64 32, !7, i64 33, !7, i64 34, !7, i64 35, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 40, !7, i64 436, !7, i64 832, !7, i64 833, !7, i64 834, !7, i64 866, !7, i64 898, !7, i64 930, !7, i64 962, !7, i64 1026, !7, i64 1090, !7, i64 1122, !7, i64 1154, !7, i64 1186, !7, i64 1218, !7, i64 1282, !7, i64 1346, !7, i64 1347, !7, i64 1348, !7, i64 1352, !7, i64 2156, !7, i64 2157, !7, i64 2158, !7, i64 2159, !7, i64 2160, !7, i64 2161, !7, i64 2162, !33, i64 2164}
!117 = !{!116, !7, i64 1}
!118 = !{!77, !7, i64 2376}
!119 = !{!116, !8, i64 4}
!120 = !{!116, !7, i64 8}
!121 = !{!116, !7, i64 9}
!122 = !{!116, !7, i64 10}
!123 = !{!116, !33, i64 12}
!124 = !{!116, !7, i64 14}
!125 = !{!116, !7, i64 15}
!126 = !{!116, !33, i64 16}
!127 = !{!116, !33, i64 18}
!128 = !{!116, !8, i64 20}
!129 = !{!116, !7, i64 32}
!130 = !{!116, !7, i64 33}
!131 = !{!116, !7, i64 34}
!132 = !{!116, !7, i64 35}
!133 = !{!116, !7, i64 36}
!134 = !{!116, !7, i64 0}
!135 = !{!116, !7, i64 2156}
!136 = !{!116, !7, i64 2157}
!137 = !{!116, !7, i64 2158}
!138 = !{!116, !7, i64 2159}
!139 = !{!116, !7, i64 2160}
!140 = !{!116, !7, i64 2161}
!141 = !{!116, !7, i64 2162}
!142 = !{!116, !33, i64 2164}
!143 = !{!"H264RawSlice", !116, i64 0, !14, i64 2168, !18, i64 2176, !15, i64 2184, !8, i64 2192}
!144 = !{!143, !15, i64 2184}
!145 = !{!143, !14, i64 2168}
!146 = !{!143, !8, i64 2192}
!147 = !{!"H264RawAUD", !32, i64 0, !7, i64 4}
!148 = !{!147, !7, i64 4}
!149 = !{!"H264RawFiller", !32, i64 0, !8, i64 4}
!150 = !{!149, !8, i64 4}
!151 = !{!"PutBitContext", !8, i64 0, !8, i64 4, !14, i64 8, !14, i64 16, !14, i64 24}
!152 = !{!151, !8, i64 4}
!153 = !{!32, !7, i64 0}
!154 = !{!"", !7, i64 0, !7, i64 128}
!155 = !{!"H264RawSEIBufferingPeriod", !7, i64 0, !154, i64 4, !154, i64 260}
!156 = !{!155, !7, i64 0}
!157 = !{!36, !7, i64 1889}
!158 = !{!36, !7, i64 2184}
!159 = !{!36, !7, i64 1892}
!160 = !{!36, !7, i64 2188}
!161 = !{!36, !7, i64 2484}
!162 = !{!36, !7, i64 2192}
!163 = !{!34, !7, i64 293}
!164 = !{!"H264RawSEIPicTiming", !8, i64 0, !8, i64 4, !7, i64 8, !7, i64 9, !7, i64 12}
!165 = !{!164, !8, i64 0}
!166 = !{!34, !7, i64 294}
!167 = !{!164, !8, i64 4}
!168 = !{!36, !7, i64 2489}
!169 = !{!164, !7, i64 8}
!170 = !{!"H264RawSEIPicTimestamp", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !8, i64 16}
!171 = !{!170, !7, i64 0}
!172 = !{!170, !7, i64 1}
!173 = !{!170, !7, i64 2}
!174 = !{!170, !7, i64 3}
!175 = !{!170, !7, i64 4}
!176 = !{!170, !7, i64 5}
!177 = !{!170, !7, i64 6}
!178 = !{!170, !7, i64 8}
!179 = !{!170, !7, i64 10}
!180 = !{!170, !7, i64 12}
!181 = !{!170, !7, i64 7}
!182 = !{!170, !7, i64 9}
!183 = !{!170, !7, i64 11}
!184 = !{!170, !8, i64 16}
!185 = !{!"H264RawSEIPanScanRect", !8, i64 0, !7, i64 4, !7, i64 5, !7, i64 8, !7, i64 20, !7, i64 32, !7, i64 44, !33, i64 56}
!186 = !{!185, !8, i64 0}
!187 = !{!185, !7, i64 4}
!188 = !{!185, !7, i64 5}
!189 = !{!185, !33, i64 56}
!190 = !{!"H264RawSEIRecoveryPoint", !33, i64 0, !7, i64 2, !7, i64 3, !7, i64 4}
!191 = !{!190, !33, i64 0}
!192 = !{!190, !7, i64 2}
!193 = !{!190, !7, i64 3}
!194 = !{!190, !7, i64 4}
!195 = !{!"H264RawFilmGrainCharacteristics", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 14, !7, i64 17, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 10772}
!196 = !{!195, !7, i64 0}
!197 = !{!195, !7, i64 1}
!198 = !{!195, !7, i64 2}
!199 = !{!195, !7, i64 3}
!200 = !{!195, !7, i64 4}
!201 = !{!195, !7, i64 5}
!202 = !{!195, !7, i64 6}
!203 = !{!195, !7, i64 7}
!204 = !{!195, !7, i64 8}
!205 = !{!36, !7, i64 1870}
!206 = !{!36, !7, i64 1872}
!207 = !{!36, !7, i64 1873}
!208 = !{!36, !7, i64 1874}
!209 = !{!195, !7, i64 9}
!210 = !{!195, !7, i64 10}
!211 = !{!195, !7, i64 10772}
!212 = !{!"H264RawSEIFramePackingArrangement", !8, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15, !7, i64 16, !7, i64 17, !33, i64 18, !7, i64 20}
!213 = !{!212, !8, i64 0}
!214 = !{!212, !7, i64 4}
!215 = !{!212, !7, i64 5}
!216 = !{!212, !7, i64 6}
!217 = !{!212, !7, i64 7}
!218 = !{!212, !7, i64 8}
!219 = !{!212, !7, i64 9}
!220 = !{!212, !7, i64 10}
!221 = !{!212, !7, i64 11}
!222 = !{!212, !7, i64 12}
!223 = !{!212, !7, i64 13}
!224 = !{!212, !7, i64 14}
!225 = !{!212, !7, i64 15}
!226 = !{!212, !7, i64 16}
!227 = !{!212, !7, i64 17}
!228 = !{!212, !33, i64 18}
!229 = !{!212, !7, i64 20}
!230 = !{!"H264RawSEIDisplayOrientation", !7, i64 0, !7, i64 1, !7, i64 2, !33, i64 4, !33, i64 6, !7, i64 8}
!231 = !{!230, !7, i64 0}
!232 = !{!230, !7, i64 1}
!233 = !{!230, !7, i64 2}
!234 = !{!230, !33, i64 4}
!235 = !{!230, !33, i64 6}
!236 = !{!230, !7, i64 8}
!237 = !{!32, !7, i64 1}
!238 = !{!32, !7, i64 2}
!239 = !{!32, !7, i64 3}
!240 = !{!35, !7, i64 0}
!241 = !{!35, !7, i64 1}
!242 = !{!35, !33, i64 2}
!243 = !{!35, !33, i64 4}
!244 = !{!35, !7, i64 6}
!245 = !{!35, !7, i64 7}
!246 = !{!35, !7, i64 8}
!247 = !{!35, !7, i64 9}
!248 = !{!35, !7, i64 10}
!249 = !{!35, !7, i64 11}
!250 = !{!35, !7, i64 12}
!251 = !{!35, !7, i64 13}
!252 = !{!35, !7, i64 14}
!253 = !{!35, !7, i64 15}
!254 = !{!35, !7, i64 16}
!255 = !{!35, !7, i64 17}
!256 = !{!35, !7, i64 18}
!257 = !{!35, !8, i64 20}
!258 = !{!35, !8, i64 24}
!259 = !{!35, !7, i64 28}
!260 = !{!35, !7, i64 29}
!261 = !{!35, !7, i64 328}
!262 = !{!35, !7, i64 628}
!263 = !{!35, !7, i64 629}
!264 = !{!35, !7, i64 630}
!265 = !{!35, !7, i64 631}
!266 = !{!35, !7, i64 632}
!267 = !{!35, !7, i64 633}
!268 = !{!35, !7, i64 634}
!269 = !{!35, !7, i64 635}
!270 = !{!35, !7, i64 636}
!271 = !{!35, !7, i64 637}
!272 = !{!34, !7, i64 0}
!273 = !{!34, !7, i64 1}
!274 = !{!34, !7, i64 2}
!275 = !{!34, !7, i64 292}
!276 = !{!34, !7, i64 295}
!277 = !{!116, !7, i64 37}
!278 = !{!"", !7, i64 0, !8, i64 4, !7, i64 8}
!279 = !{!278, !7, i64 0}
!280 = !{!278, !8, i64 4}
!281 = !{!278, !7, i64 8}
!282 = !{!116, !7, i64 38}
!283 = !{!116, !7, i64 832}
!284 = !{!116, !7, i64 833}
!285 = !{!116, !7, i64 1346}
!286 = !{!116, !7, i64 1347}
!287 = !{!116, !7, i64 1348}
!288 = !{!"", !7, i64 0, !8, i64 4, !7, i64 8, !7, i64 9, !7, i64 10}
!289 = !{!288, !7, i64 0}
!290 = !{!288, !8, i64 4}
!291 = !{!288, !7, i64 8}
!292 = !{!288, !7, i64 9}
!293 = !{!288, !7, i64 10}
!294 = distinct !{!294, !25}
!295 = distinct !{!295, !25}
!296 = !{!16, !12, i64 8}
!297 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!298 = !{!"p1 _ZTS32CodedBitstreamUnitTypeDescriptor", !11, i64 0}
!299 = !{!"CodedBitstreamType", !8, i64 0, !297, i64 8, !15, i64 16, !298, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80}
!300 = !{!299, !8, i64 0}
!301 = !{!"p1 _ZTS18CodedBitstreamUnit", !11, i64 0}
!302 = !{!"CodedBitstreamFragment", !14, i64 0, !15, i64 8, !15, i64 16, !18, i64 24, !8, i64 32, !8, i64 36, !301, i64 40}
!303 = !{!302, !14, i64 0}
!304 = !{!302, !8, i64 32}
!305 = !{!302, !15, i64 8}
!306 = !{!23, !8, i64 0}
!307 = !{!23, !8, i64 4}
!308 = distinct !{!308, !25, !53}
!309 = distinct !{!309, !25}
!310 = distinct !{!310, !25}
!311 = distinct !{!311, !25}
!312 = distinct !{!312, !25}
!313 = distinct !{!313, !25}
!314 = distinct !{!314, !25}
!315 = distinct !{!315, !25}
!316 = !{!26, !14, i64 8}
!317 = !{!26, !15, i64 16}
!318 = !{!27, !14, i64 0}
!319 = !{!27, !8, i64 12}
!320 = !{!27, !8, i64 16}
!321 = !{!88, !18, i64 72}
!322 = !{!"p1 _ZTS8AVBuffer", !11, i64 0}
!323 = !{!"AVBufferRef", !322, i64 0, !14, i64 8, !15, i64 16}
!324 = !{!323, !14, i64 8}
!325 = !{!26, !18, i64 32}
!326 = !{!143, !18, i64 2176}
!327 = distinct !{!327, !25, !53}
!328 = distinct !{!328, !25}
!329 = distinct !{!329, !25}
!330 = distinct !{!330, !25}
!331 = distinct !{!331, !25}
!332 = distinct !{!332, !25}
!333 = distinct !{!333, !25}
!334 = distinct !{!334, !25}
!335 = distinct !{!335, !25}
!336 = distinct !{!336, !25}
!337 = distinct !{!337, !25}
!338 = distinct !{!338, !25}
!339 = distinct !{!339, !25}
!340 = distinct !{!340, !25}
!341 = distinct !{!341, !25}
!342 = distinct !{!342, !25}
!343 = distinct !{!343, !25}
!344 = distinct !{!344, !25}
!345 = distinct !{!345, !25}
!346 = distinct !{!346, !25}
!347 = distinct !{!347, !25}
!348 = distinct !{!348, !25}
!349 = distinct !{!349, !25}
!350 = distinct !{!350, !25}
!351 = distinct !{!351, !25}
!352 = distinct !{!352, !25}
!353 = distinct !{!353, !25}
!354 = distinct !{!354, !25}
!355 = distinct !{!355, !25}
!356 = distinct !{!356, !25}
!357 = distinct !{!357, !25}
!358 = distinct !{!358, !25}
!359 = distinct !{!359, !25}
!360 = distinct !{!360, !25}
!361 = distinct !{!361, !25}
!362 = distinct !{!362, !25}
!363 = distinct !{!363, !25}
!364 = distinct !{!364, !25}
!365 = distinct !{!365, !25}
!366 = distinct !{!366, !25}
end_hunk_10
