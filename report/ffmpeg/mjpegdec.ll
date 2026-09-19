Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mjpegdec?download=true
inline.NumInlined: 62
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ff_mjpeg_decode_frame_from_buf:bb.a

mjpeg_decode_dri.exit:                            ; preds = %bb.fa
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  store ptr %i.vx, ptr %i.ab, align 8, !tbaa !66
  %i.vy = load i16, ptr %i.vv, align 1, !tbaa !63
  %i.vz = call i16 @llvm.bswap.i16(i16 %i.vy)
  %i.wa = zext i16 %i.vz to i32                   ; 2 uses
  store i32 %i.wa, ptr %i.as, align 8, !tbaa !125
  %i.wb = load ptr, ptr %i.af, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.wb, i32 noundef 48, ptr noundef nonnull @.str.145, i32 noundef %i.wa) #10
  br label %bb.fc

bb.fb:                                            ; preds = %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp, %bb.dp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.61, i32 noundef %i.cg) #10
  br label %bb.fc

bb.fc:                                            ; preds = %mjpeg_decode_dri.exit, %bb.ey, %bb.ez, %bb.eo, %bb.dy, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.dr, %bb.fb, %bb.em, %bb.dq, %bb.dp
  %.2713 = phi ptr [ %.1712, %bb.em ], [ %.1712, %bb.eo ], [ %i.ca, %bb.dp ], [ %i.ca, %bb.dq ], [ %i.ca, %bb.dr ], [ %i.ca, %bb.dt ], [ %i.ca, %bb.du ], [ %i.ca, %bb.dv ], [ %i.ca, %bb.dw ], [ %i.ca, %bb.dy ], [ %i.ca, %bb.ez ], [ %i.ca, %bb.ey ], [ %i.ca, %mjpeg_decode_dri.exit ], [ %i.ca, %bb.fb ] ; 3 uses
  %.3569 = phi i32 [ %.2568, %bb.em ], [ %.2568, %bb.eo ], [ %i.cg, %bb.dp ], [ 216, %bb.dq ], [ 196, %bb.dr ], [ %i.cg, %bb.dt ], [ 194, %bb.du ], [ 195, %bb.dv ], [ 247, %bb.dw ], [ 248, %bb.dy ], [ 218, %bb.ez ], [ 218, %bb.ey ], [ 221, %mjpeg_decode_dri.exit ], [ %i.cg, %bb.fb ] ; 3 uses
  %i.wc = load i32, ptr %i.ar, align 8, !tbaa !104
  %i.wd = icmp eq i32 %i.wc, 48
  br i1 %i.wd, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  switch i32 %.3569, label %bb.ff [
    i32 192, label %bb.fe
    i32 193, label %bb.fe
    i32 194, label %bb.fe
    i32 195, label %bb.fe
    i32 247, label %bb.fe
  ]

bb.fe:                                            ; preds = %bb.fd, %bb.fd, %bb.fd, %bb.fd, %bb.fd
  store i32 0, ptr %i.ap, align 16, !tbaa !52
  br label %bb.ie

bb.ff:                                            ; preds = %bb.fc, %bb.fd, %bb.do
  %.3714 = phi ptr [ %.2713, %bb.fd ], [ %.2713, %bb.fc ], [ %i.ca, %bb.do ]
  %.4570 = phi i32 [ %.3569, %bb.fd ], [ %.3569, %bb.fc ], [ %i.cg, %bb.do ]
  %i.we = load ptr, ptr %i.ab, align 8, !tbaa !56
  %i.wf = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.wg = ptrtoint ptr %i.we to i64
  %i.wh = ptrtoint ptr %i.wf to i64
  %i.wi = sub i64 %i.wg, %i.wh                    ; 2 uses
  %i.wj = trunc i64 %i.wi to i32
  %sext = shl i64 %i.wi, 32
  %i.wk = ashr exact i64 %sext, 32
  %i.wl = getelementptr inbounds i8, ptr %.3714, i64 %i.wk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.62, i32 noundef %i.wj) #10
  br label %.loopexit747.backedge

.loopexit747.backedge:                            ; preds = %bb.ff, %bb.dy
  %.0711.be = phi ptr [ %i.wl, %bb.ff ], [ %4, %bb.dy ]
  %.1567.be = phi i32 [ %.4570, %bb.ff ], [ 248, %bb.dy ]
  br label %.loopexit747, !llvm.loop !281

ff_mjpeg_find_marker.exit.thread:                 ; preds = %.loopexit.i, %bb.d, %.loopexit747
  %.4715 = phi ptr [ %i.z, %bb.d ], [ %.0711, %.loopexit747 ], [ %i.z, %.loopexit.i ]
  %.5571 = phi i32 [ -1, %bb.d ], [ %.1567, %.loopexit747 ], [ -1, %.loopexit.i ]
  %i.wm = load i32, ptr %i.ap, align 16, !tbaa !52
  %.not638 = icmp eq i32 %i.wm, 0
  br i1 %.not638, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %ff_mjpeg_find_marker.exit.thread
  %i.wn = load i32, ptr %i.at, align 16, !tbaa !74
  %.not639 = icmp eq i32 %i.wn, 0
  br i1 %.not639, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.63) #10
  br label %bb.dz

bb.fi:                                            ; preds = %bb.fg, %ff_mjpeg_find_marker.exit.thread
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.64) #10
  br label %.critedge

.loopexit746:                                     ; preds = %bb.ez, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds
  %.0580 = phi i32 [ %i.pf, %bb.ds ], [ %i.vq, %bb.ez ], [ %i.pq, %bb.dx ], [ %i.po, %bb.dw ], [ %i.pm, %bb.dv ], [ %i.pk, %bb.du ], [ %i.pi, %bb.dt ]
  store i32 0, ptr %i.ap, align 16, !tbaa !52
  br label %.critedge

bb.fj:                                            ; preds = %bb.ev, %bb.ew, %bb.ex
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !101
  %i.wq = call ptr @av_pix_fmt_desc_get(i32 noundef %i.wp) #10
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 28
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !338
  %i.wt = icmp sgt i32 %i.ws, 1                   ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.g, i64 932 ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !63
  %.not651 = icmp eq i32 %i.wv, 0
  br i1 %.not651, label %.loopexit745, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ww = load i32, ptr %i.wo, align 8, !tbaa !101 ; 2 uses
  switch i32 %i.ww, label %bb.fl [
    i32 14, label %bb.fm
    i32 5, label %bb.fm
    i32 32, label %bb.fm
    i32 31, label %bb.fm
    i32 79, label %bb.fm
    i32 13, label %bb.fm
    i32 4, label %bb.fm
    i32 12, label %bb.fm
    i32 0, label %bb.fm
    i32 45, label %bb.fm
    i32 33, label %bb.fm
    i32 93, label %bb.fm
    i32 71, label %bb.fm
    i32 111, label %bb.fm
  ]

bb.fl:                                            ; preds = %bb.fk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.29, i32 noundef 2654) #10
  call void @abort() #11
  unreachable

bb.fm:                                            ; preds = %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk
  %i.wx = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef %i.ww, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not652 = icmp eq i32 %i.wx, 0
  br i1 %.not652, label %bb.fn, label %.critedge

bb.fn:                                            ; preds = %bb.fm
  %i.wy = load i32, ptr %i.bd, align 16, !tbaa !86
  %i.wz = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 116
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !339
  %i.xc = call i32 @av_pix_fmt_count_planes(i32 noundef %i.xb) #10
  %i.xd = icmp eq i32 %i.wy, %i.xc
  br i1 %i.xd, label %.preheader744, label %bb.fo

.preheader744:                                    ; preds = %bb.fn
  %i.xe = load i32, ptr %i.bd, align 16, !tbaa !86 ; 2 uses
  %i.xf = icmp sgt i32 %i.xe, 0
  br i1 %i.xf, label %.lr.ph789, label %.loopexit745

.lr.ph789:                                        ; preds = %.preheader744
  %i.xg = getelementptr inbounds nuw i8, ptr %i.g, i64 936
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.29, i32 noundef 2659) #10
  call void @abort() #11
  unreachable

bb.fp:                                            ; preds = %.lr.ph789, %.loopexit743
  %i.xh = phi i32 [ %i.xe, %.lr.ph789 ], [ %i.aew, %.loopexit743 ] ; 2 uses
  %indvars.iv856 = phi i64 [ 0, %.lr.ph789 ], [ %indvars.iv.next857, %.loopexit743 ] ; 6 uses
  %i.xi = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %indvars.iv856
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !66
  %i.xl = load i32, ptr %i.bk, align 16, !tbaa !80 ; 2 uses
  %i.xm = load i32, ptr %i.bl, align 4, !tbaa !81 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wu, i64 %indvars.iv856 ; 2 uses
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !63
  %.not653 = icmp eq i8 %i.xo, 0
  br i1 %.not653, label %.loopexit743, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.xp = trunc i64 %indvars.iv856 to i32
  %i.xq = add i32 %i.xp, -1
  %or.cond7 = icmp ult i32 %i.xq, 2
  br i1 %or.cond7, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.xr = load i32, ptr %i.b, align 4, !tbaa !55
  %i.xs = sub nsw i32 0, %i.xl
  %i.xt = ashr i32 %i.xs, %i.xr
  %i.xu = sub nsw i32 0, %i.xt
  %i.xv = load i32, ptr %i.c, align 4, !tbaa !55
  %i.xw = sub nsw i32 0, %i.xm
  %i.xx = ashr i32 %i.xw, %i.xv
  %i.xy = sub nsw i32 0, %i.xx
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.0596 = phi i32 [ %i.xm, %bb.fq ], [ %i.xy, %bb.fr ] ; 2 uses
  %.0588 = phi i32 [ %i.xl, %bb.fq ], [ %i.xu, %bb.fr ] ; 10 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xg, i64 %indvars.iv856
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !63
  %i.yb = icmp eq i8 %i.ya, 1
  %i.yc = add nsw i32 %.0596, 1
  %i.yd = ashr i32 %i.yc, 1
  %.1597 = select i1 %i.yb, i32 %i.yd, i32 %.0596 ; 2 uses
  %i.ye = icmp sgt i32 %.0588, 0
  br i1 %i.ye, label %.preheader742, label %bb.ft

.preheader742:                                    ; preds = %bb.fs
  %i.yf = icmp sgt i32 %.1597, 0
  br i1 %i.yf, label %.lr.ph787, label %.loopexit743

.lr.ph787:                                        ; preds = %.preheader742
  %i.yg = add nsw i32 %.0588, -1                  ; 4 uses
  %i.yh = lshr i32 %i.yg, 2
  %i.yi = zext nneg i32 %i.yh to i64              ; 2 uses
  %i.yj = zext nneg i32 %i.yg to i64              ; 6 uses
  %.not654 = icmp eq i32 %.0588, 1                ; 4 uses
  %i.yk = add nsw i32 %.0588, -2                  ; 2 uses
  %i.yl = lshr i32 %i.yk, 2
  %i.ym = zext nneg i32 %i.yl to i64              ; 2 uses
  %i.yn = zext i32 %i.yk to i64                   ; 15 uses
  %i.yo = icmp samesign ugt i32 %.0588, 2         ; 4 uses
  %i.yp = zext nneg i32 %.0588 to i64             ; 4 uses
  %i.yq = add nsw i32 %.0588, -4
  %i.yr = icmp samesign ugt i32 %.0588, 4
  %i.ys = udiv i32 %i.yg, 3
  %i.yt = zext nneg i32 %i.ys to i64              ; 2 uses
  %i.yu = add nsw i32 %.0588, -3
  %i.yv = icmp samesign ugt i32 %.0588, 3
  %i.yw = lshr i32 %i.yg, 1
  %i.yx = zext nneg i32 %i.yw to i64              ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv856
  %i.yz = zext i32 %i.yq to i64
  %i.za = zext i32 %i.yu to i64
  %6 = add nsw i64 %i.yn, -1                      ; 2 uses
  %xtraiter1267 = and i64 %i.yn, 1
  %lcmp.mod1268.not = icmp eq i64 %xtraiter1267, 0
  %7 = lshr i64 %i.yn, 1
  %8 = add nuw nsw i64 %i.yn, 1
  %9 = lshr exact i64 %8, 1
  %10 = and i64 %9, 2147483647
  %indvars.iv.next851.prol = add nsw i64 %i.yn, -1
  %11 = icmp eq i64 %6, 0
  %xtraiter1270 = and i64 %i.yn, 1
  %lcmp.mod1271.not = icmp eq i64 %xtraiter1270, 0
  %12 = lshr i64 %i.yn, 1
  %13 = add nuw nsw i64 %i.yn, 1
  %14 = lshr exact i64 %13, 1
  %15 = and i64 %14, 2147483647
  %indvars.iv.next854.prol = add nsw i64 %i.yn, -1
  %16 = icmp eq i64 %6, 0
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.29, i32 noundef 2672) #10
  call void @abort() #11
  unreachable

bb.fu:                                            ; preds = %.lr.ph787, %.loopexit739
  %.0587784 = phi ptr [ %i.xk, %.lr.ph787 ], [ %i.aeu, %.loopexit739 ] ; 48 uses
  %.0595783 = phi i32 [ 0, %.lr.ph787 ], [ %i.aev, %.loopexit739 ]
  %i.zb = load i8, ptr %i.xn, align 1, !tbaa !63
  switch i8 %i.zb, label %.loopexit739 [
    i8 1, label %bb.fv
    i8 2, label %bb.fx
    i8 4, label %bb.gd
  ]

bb.fv:                                            ; preds = %bb.fu
  br i1 %i.wt, label %bb.fw, label %.thread974

bb.fw:                                            ; preds = %bb.fv
  %i.zc = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.yx
  %i.zd = load i16, ptr %i.zc, align 2, !tbaa !72
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.yj
  store i16 %i.zd, ptr %i.ze, align 2, !tbaa !72
  br i1 %i.yo, label %.lr.ph782.split.us.preheader, label %.loopexit739

.lr.ph782.split.us.preheader:                     ; preds = %bb.fw
  br i1 %lcmp.mod1271.not, label %.lr.ph782.split.us.prol.loopexit, label %.lr.ph782.split.us.prol

.lr.ph782.split.us.prol:                          ; preds = %.lr.ph782.split.us.preheader
  %17 = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %12
  %18 = load i16, ptr %17, align 2, !tbaa !72
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %15
  %21 = load i16, ptr %20, align 2, !tbaa !72
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, %19
  %24 = lshr i32 %23, 1
  %25 = trunc nuw i32 %24 to i16
  %26 = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.yn
  store i16 %25, ptr %26, align 2, !tbaa !72
  br label %.lr.ph782.split.us.prol.loopexit

.lr.ph782.split.us.prol.loopexit:                 ; preds = %.lr.ph782.split.us.prol, %.lr.ph782.split.us.preheader
  %indvars.iv853.unr = phi i64 [ %i.yn, %.lr.ph782.split.us.preheader ], [ %indvars.iv.next854.prol, %.lr.ph782.split.us.prol ]
  br i1 %16, label %.loopexit739, label %.lr.ph782.split.us

.thread974:                                       ; preds = %bb.fv
  %i.zf = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.yx
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !63
  %i.zh = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.yj
  store i8 %i.zg, ptr %i.zh, align 1, !tbaa !63
  br i1 %i.yo, label %.lr.ph782.split.preheader, label %.loopexit739

.lr.ph782.split.preheader:                        ; preds = %.thread974
  br i1 %lcmp.mod1268.not, label %.lr.ph782.split.prol.loopexit, label %.lr.ph782.split.prol

.lr.ph782.split.prol:                             ; preds = %.lr.ph782.split.preheader
  %27 = getelementptr inbounds nuw i8, ptr %.0587784, i64 %7
  %28 = load i8, ptr %27, align 1, !tbaa !63
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds nuw i8, ptr %.0587784, i64 %10
  %31 = load i8, ptr %30, align 1, !tbaa !63
  %32 = zext i8 %31 to i16
  %33 = add nuw nsw i16 %32, %29
  %34 = lshr i16 %33, 1
  %35 = trunc nuw i16 %34 to i8
  %36 = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.yn
  store i8 %35, ptr %36, align 1, !tbaa !63
  br label %.lr.ph782.split.prol.loopexit

.lr.ph782.split.prol.loopexit:                    ; preds = %.lr.ph782.split.prol, %.lr.ph782.split.preheader
  %indvars.iv850.unr = phi i64 [ %i.yn, %.lr.ph782.split.preheader ], [ %indvars.iv.next851.prol, %.lr.ph782.split.prol ]
  br i1 %11, label %.loopexit739, label %.lr.ph782.split

.lr.ph782.split.us:                               ; preds = %.lr.ph782.split.us.prol.loopexit, %.lr.ph782.split.us
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %.lr.ph782.split.us ], [ %indvars.iv853.unr, %.lr.ph782.split.us.prol.loopexit ] ; 7 uses
  %37 = lshr i64 %indvars.iv853, 1
  %38 = and i64 %37, 2147483647
  %39 = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !72
  %41 = zext i16 %40 to i32
  %42 = add nuw nsw i64 %indvars.iv853, 1
  %i.zi = lshr i64 %42, 1
  %i.zj = and i64 %i.zi, 2147483647
  %i.zk = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.zj
  %i.zl = load i16, ptr %i.zk, align 2, !tbaa !72
  %i.zm = zext i16 %i.zl to i32
  %43 = add nuw nsw i32 %i.zm, %41
  %44 = lshr i32 %43, 1
  %45 = trunc nuw i32 %44 to i16
  %46 = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %indvars.iv853
  store i16 %45, ptr %46, align 2, !tbaa !72
  %i.zn = add nsw i64 %indvars.iv853, -1          ; 2 uses
  %47 = lshr i64 %i.zn, 1
  %48 = and i64 %47, 2147483647
  %49 = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !72
  %51 = zext i16 %50 to i32
  %i.zo = lshr i64 %indvars.iv853, 1
  %i.zp = and i64 %i.zo, 2147483647
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.zp
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !72
  %i.zs = zext i16 %i.zr to i32
  %i.zt = add nuw nsw i32 %i.zs, %51
  %i.zu = lshr i32 %i.zt, 1
  %i.zv = trunc nuw i32 %i.zu to i16
  %i.zw = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.zn
  store i16 %i.zv, ptr %i.zw, align 2, !tbaa !72
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -2
  %52 = icmp sgt i64 %indvars.iv853, 2
  br i1 %52, label %.lr.ph782.split.us, label %.loopexit739, !llvm.loop !282

.lr.ph782.split:                                  ; preds = %.lr.ph782.split.prol.loopexit, %.lr.ph782.split
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %.lr.ph782.split ], [ %indvars.iv850.unr, %.lr.ph782.split.prol.loopexit ] ; 7 uses
  %53 = lshr i64 %indvars.iv850, 1
  %54 = and i64 %53, 2147483647
  %55 = getelementptr inbounds nuw i8, ptr %.0587784, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !63
  %57 = zext i8 %56 to i16
  %58 = add nsw i64 %indvars.iv850, 1
  %i.zx = lshr i64 %58, 1
  %i.zy = and i64 %i.zx, 2147483647
  %i.zz = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.zy
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !63
  %i.aab = zext i8 %i.aaa to i16
  %59 = add nuw nsw i16 %i.aab, %57
  %60 = lshr i16 %59, 1
  %61 = trunc nuw i16 %60 to i8
  %62 = getelementptr inbounds nuw i8, ptr %.0587784, i64 %indvars.iv850
  store i8 %61, ptr %62, align 1, !tbaa !63
  %i.aac = add nsw i64 %indvars.iv850, -1         ; 2 uses
  %63 = lshr i64 %i.aac, 1
  %64 = and i64 %63, 2147483647
  %65 = getelementptr inbounds nuw i8, ptr %.0587784, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !63
  %67 = zext i8 %66 to i16
  %i.aad = lshr i64 %indvars.iv850, 1
  %i.aae = and i64 %i.aad, 2147483647
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.aae
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !63
  %i.aah = zext i8 %i.aag to i16
  %i.aai = add nuw nsw i16 %i.aah, %67
  %i.aaj = lshr i16 %i.aai, 1
  %i.aak = trunc nuw i16 %i.aaj to i8
  %i.aal = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.aac
  store i8 %i.aak, ptr %i.aal, align 1, !tbaa !63
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -2
  %i.aam = icmp sgt i64 %indvars.iv850, 2
  br i1 %i.aam, label %.lr.ph782.split, label %.loopexit739, !llvm.loop !282

bb.fx:                                            ; preds = %bb.fu
  br i1 %i.wt, label %bb.fy, label %bb.ga

bb.fy:                                            ; preds = %bb.fx
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.yt
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !72 ; 2 uses
  %i.aap = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.yj
  store i16 %i.aao, ptr %i.aap, align 2, !tbaa !72
  br i1 %.not654, label %.loopexit739, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aaq = getelementptr [2 x i8], ptr %.0587784, i64 %i.yp
  %i.aar = getelementptr i8, ptr %i.aaq, i64 -4
  store i16 %i.aao, ptr %i.aar, align 2, !tbaa !72
  br label %bb.gc

bb.ga:                                            ; preds = %bb.fx
  %i.aas = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.yt
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !63 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.yj
  store i8 %i.aat, ptr %i.aau, align 1, !tbaa !63
  br i1 %.not654, label %.loopexit739, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aav = getelementptr i8, ptr %.0587784, i64 %i.yp
  %i.aaw = getelementptr i8, ptr %i.aav, i64 -2
  store i8 %i.aat, ptr %i.aaw, align 1, !tbaa !63
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fz
  br i1 %i.yv, label %.lr.ph780, label %.loopexit739

.lr.ph780:                                        ; preds = %bb.gc, %.lr.ph780
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %.lr.ph780 ], [ %i.za, %bb.gc ] ; 6 uses
  %i.aax = trunc nuw nsw i64 %indvars.iv847 to i32
  %i.aay = udiv i32 %i.aax, 3
  %i.aaz = zext nneg i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.aaz
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !63
  %i.abc = zext i8 %i.abb to i16
  %i.abd = trunc i64 %indvars.iv847 to i32
  %i.abe = add i32 %i.abd, 1
  %i.abf = udiv i32 %i.abe, 3
  %i.abg = zext nneg i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.abg
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !63
  %i.abj = zext i8 %i.abi to i16
  %i.abk = trunc i64 %indvars.iv847 to i32
  %i.abl = add i32 %i.abk, 2
  %i.abm = udiv i32 %i.abl, 3
  %i.abn = zext nneg i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !63
  %i.abq = zext i8 %i.abp to i16
  %i.abr = add nuw nsw i16 %i.abc, 1
  %i.abs = add nuw nsw i16 %i.abr, %i.abj
  %i.abt = add nuw nsw i16 %i.abs, %i.abq
  %i.abu = udiv i16 %i.abt, 3
  %i.abv = trunc nuw i16 %i.abu to i8
  %i.abw = getelementptr inbounds nuw i8, ptr %.0587784, i64 %indvars.iv847
  store i8 %i.abv, ptr %i.abw, align 1, !tbaa !63
  %indvars.iv.next848 = add nsw i64 %indvars.iv847, -1
  %i.abx = icmp samesign ugt i64 %indvars.iv847, 1
  br i1 %i.abx, label %.lr.ph780, label %.loopexit739, !llvm.loop !283

bb.gd:                                            ; preds = %bb.fu
  br i1 %i.wt, label %bb.ge, label %bb.gh

bb.ge:                                            ; preds = %bb.gd
  %i.aby = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.yi ; 2 uses
  %i.abz = load i16, ptr %i.aby, align 2, !tbaa !72 ; 2 uses
  %i.aca = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.yj
  store i16 %i.abz, ptr %i.aca, align 2, !tbaa !72
  br i1 %.not654, label %.loopexit739, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.acb = zext i16 %i.abz to i32
  %i.acc = mul nuw nsw i32 %i.acb, 3
  %i.acd = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.ym ; 2 uses
  %i.ace = load i16, ptr %i.acd, align 2, !tbaa !72
  %i.acf = zext i16 %i.ace to i32
  %i.acg = add nuw nsw i32 %i.acc, %i.acf
  %i.ach = lshr i32 %i.acg, 2
  %i.aci = trunc nuw i32 %i.ach to i16
  %i.acj = getelementptr inbounds nuw [2 x i8], ptr %.0587784, i64 %i.yn
  store i16 %i.aci, ptr %i.acj, align 2, !tbaa !72
  br i1 %i.yo, label %bb.gg, label %.loopexit739

bb.gg:                                            ; preds = %bb.gf
  %i.ack = load i16, ptr %i.aby, align 2, !tbaa !72
  %i.acl = zext i16 %i.ack to i32
  %i.acm = load i16, ptr %i.acd, align 2, !tbaa !72
  %i.acn = zext i16 %i.acm to i32
  %i.aco = add nuw nsw i32 %i.acn, %i.acl
  %i.acp = lshr i32 %i.aco, 1
  %i.acq = trunc nuw i32 %i.acp to i16
  %i.acr = getelementptr [2 x i8], ptr %.0587784, i64 %i.yp
  %i.acs = getelementptr i8, ptr %i.acr, i64 -6
  store i16 %i.acq, ptr %i.acs, align 2, !tbaa !72
  br label %.thread

bb.gh:                                            ; preds = %bb.gd
  %i.act = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.yi ; 2 uses
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !63 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.yj
  store i8 %i.acu, ptr %i.acv, align 1, !tbaa !63
  br i1 %.not654, label %.loopexit739, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.acw = zext i8 %i.acu to i16
  %i.acx = mul nuw nsw i16 %i.acw, 3
  %i.acy = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.ym ; 2 uses
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !63
  %i.ada = zext i8 %i.acz to i16
  %i.adb = add nuw nsw i16 %i.acx, %i.ada
  %i.adc = lshr i16 %i.adb, 2
  %i.add = trunc nuw i16 %i.adc to i8
  %i.ade = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.yn
  store i8 %i.add, ptr %i.ade, align 1, !tbaa !63
  br i1 %i.yo, label %bb.gj, label %.loopexit739

bb.gj:                                            ; preds = %bb.gi
  %i.adf = load i8, ptr %i.act, align 1, !tbaa !63
  %i.adg = zext i8 %i.adf to i16
  %i.adh = load i8, ptr %i.acy, align 1, !tbaa !63
  %i.adi = zext i8 %i.adh to i16
  %i.adj = add nuw nsw i16 %i.adi, %i.adg
  %i.adk = lshr i16 %i.adj, 1
  %i.adl = trunc nuw i16 %i.adk to i8
  %i.adm = getelementptr i8, ptr %.0587784, i64 %i.yp
  %i.adn = getelementptr i8, ptr %i.adm, i64 -3
  store i8 %i.adl, ptr %i.adn, align 1, !tbaa !63
  br label %.thread

.thread:                                          ; preds = %bb.gg, %bb.gj
  br i1 %i.yr, label %.lr.ph, label %.loopexit739

.lr.ph:                                           ; preds = %.thread, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.yz, %.thread ] ; 7 uses
  %i.ado = add nuw i64 %indvars.iv, 3
  %i.adp = lshr i64 %i.ado, 2
  %i.adq = and i64 %i.adp, 1073741823
  %i.adr = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.adq
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !63
  %i.adt = zext i8 %i.ads to i16
  %i.adu = add nuw i64 %indvars.iv, 2
  %i.adv = lshr i64 %i.adu, 2
  %i.adw = and i64 %i.adv, 1073741823
  %i.adx = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.adw
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !63
  %i.adz = zext i8 %i.ady to i16
  %i.aea = add nuw nsw i16 %i.adz, %i.adt
  %i.aeb = add nuw nsw i64 %indvars.iv, 1
  %i.aec = lshr i64 %i.aeb, 2
  %i.aed = and i64 %i.aec, 1073741823
  %i.aee = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.aed
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !63
  %i.aeg = zext i8 %i.aef to i16
  %i.aeh = add nuw nsw i16 %i.aea, %i.aeg
  %i.aei = lshr i64 %indvars.iv, 2
  %i.aej = and i64 %i.aei, 1073741823
  %i.aek = getelementptr inbounds nuw i8, ptr %.0587784, i64 %i.aej
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !63
  %i.aem = zext i8 %i.ael to i16
  %i.aen = add nuw nsw i16 %i.aeh, %i.aem
  %i.aeo = lshr i16 %i.aen, 2
  %i.aep = trunc nuw i16 %i.aeo to i8
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0587784, i64 %indvars.iv
  store i8 %i.aep, ptr %i.aeq, align 1, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aer = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aer, label %.lr.ph, label %.loopexit739, !llvm.loop !284

.loopexit739:                                     ; preds = %.lr.ph, %.lr.ph780, %.lr.ph782.split.prol.loopexit, %.lr.ph782.split, %.lr.ph782.split.us.prol.loopexit, %.lr.ph782.split.us, %bb.gi, %bb.gf, %bb.ge, %bb.gh, %bb.fy, %bb.ga, %.thread974, %.thread, %bb.gc, %bb.fw, %bb.fu
  %i.aes = load i32, ptr %i.yy, align 4, !tbaa !55
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds i8, ptr %.0587784, i64 %i.aet
  %i.aev = add nuw nsw i32 %.0595783, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.aev, %.1597
  br i1 %exitcond.not, label %.loopexit743.loopexit, label %bb.fu, !llvm.loop !285

.loopexit743.loopexit:                            ; preds = %.loopexit739
  %.pre = load i32, ptr %i.bd, align 16, !tbaa !86
  br label %.loopexit743

.loopexit743:                                     ; preds = %.loopexit743.loopexit, %.preheader742, %bb.fp
  %i.aew = phi i32 [ %.pre, %.loopexit743.loopexit ], [ %i.xh, %.preheader742 ], [ %i.xh, %bb.fp ] ; 2 uses
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1 ; 2 uses
  %i.aex = sext i32 %i.aew to i64
  %i.aey = icmp slt i64 %indvars.iv.next857, %i.aex
  br i1 %i.aey, label %bb.fp, label %.loopexit745, !llvm.loop !286

.loopexit745:                                     ; preds = %.loopexit743, %.preheader744, %bb.fj
  %i.aez = getelementptr inbounds nuw i8, ptr %i.g, i64 936 ; 2 uses
  %i.afa = load i32, ptr %i.aez, align 8, !tbaa !63
  %.not658 = icmp eq i32 %i.afa, 0
  br i1 %.not658, label %.loopexit738, label %bb.gk

bb.gk:                                            ; preds = %.loopexit745
  %i.afb = load i32, ptr %i.wo, align 8, !tbaa !101 ; 2 uses
  switch i32 %i.afb, label %bb.gl [
    i32 14, label %bb.gm
    i32 5, label %bb.gm
    i32 13, label %bb.gm
    i32 4, label %bb.gm
    i32 12, label %bb.gm
    i32 0, label %bb.gm
    i32 31, label %bb.gm
    i32 32, label %bb.gm
    i32 79, label %bb.gm
    i32 33, label %bb.gm
    i32 93, label %bb.gm
    i32 71, label %bb.gm
    i32 111, label %bb.gm
  ]

bb.gl:                                            ; preds = %bb.gk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.29, i32 noundef 2734) #10
  call void @abort() #11
  unreachable

bb.gm:                                            ; preds = %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk
  %i.afc = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef %i.afb, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not659 = icmp eq i32 %i.afc, 0
  br i1 %.not659, label %bb.gn, label %.critedge

bb.gn:                                            ; preds = %bb.gm
  %i.afd = load i32, ptr %i.bd, align 16, !tbaa !86
  %i.afe = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 116
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !339
  %i.afh = call i32 @av_pix_fmt_count_planes(i32 noundef %i.afg) #10
  %i.afi = icmp eq i32 %i.afd, %i.afh
  br i1 %i.afi, label %.preheader737, label %bb.go

.preheader737:                                    ; preds = %bb.gn
  %i.afj = load i32, ptr %i.bd, align 16, !tbaa !86
  %i.afk = icmp sgt i32 %i.afj, 0
  br i1 %i.afk, label %.lr.ph799, label %.loopexit738

bb.go:                                            ; preds = %bb.gn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.29, i32 noundef 2739) #10
  call void @abort() #11
  unreachable

.lr.ph799:                                        ; preds = %.preheader737, %.loopexit736
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %.loopexit736 ], [ 0, %.preheader737 ] ; 7 uses
  %i.afl = load i32, ptr %i.bk, align 16, !tbaa !80 ; 2 uses
  %i.afm = load i32, ptr %i.bl, align 4, !tbaa !81 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aez, i64 %indvars.iv864 ; 3 uses
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !63 ; 3 uses
  %.not660 = icmp eq i8 %i.afo, 0
  br i1 %.not660, label %.loopexit736, label %bb.gp

bb.gp:                                            ; preds = %.lr.ph799
  %i.afp = trunc i64 %indvars.iv864 to i32
  %i.afq = add i32 %i.afp, -1
  %or.cond9 = icmp ult i32 %i.afq, 2
  br i1 %or.cond9, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.afr = load i32, ptr %i.b, align 4, !tbaa !55
  %i.afs = sub nsw i32 0, %i.afl
  %i.aft = ashr i32 %i.afs, %i.afr
  %i.afu = sub nsw i32 0, %i.aft
  %i.afv = load i32, ptr %i.c, align 4, !tbaa !55
  %i.afw = sub nsw i32 0, %i.afm
  %i.afx = ashr i32 %i.afw, %i.afv
  %i.afy = sub nsw i32 0, %i.afx
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %.0592 = phi i32 [ %i.afl, %bb.gp ], [ %i.afu, %bb.gq ]
  %.0591 = phi i32 [ %i.afm, %bb.gp ], [ %i.afy, %bb.gq ] ; 2 uses
  %.0592.fr = freeze i32 %.0592                   ; 5 uses
  %i.afz = add nsw i32 %.0591, -1                 ; 5 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv864 ; 4 uses
  %.not661792 = icmp eq i32 %i.afz, 0
  br i1 %.not661792, label %.loopexit736, label %.lr.ph797

.lr.ph797:                                        ; preds = %bb.gr
  %i.agb = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.agb, i64 %indvars.iv864
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !66 ; 2 uses
  %i.age = load i32, ptr %i.aga, align 4, !tbaa !55 ; 4 uses
  %i.agf = mul nsw i32 %i.age, %i.afz
  %i.agg = sext i32 %i.agf to i64
  %i.agh = getelementptr inbounds i8, ptr %i.agd, i64 %i.agg ; 3 uses
  %i.agi = sext i32 %.0592.fr to i64              ; 3 uses
  %i.agj = icmp sgt i32 %.0592.fr, 0
  br i1 %i.agj, label %.lr.ph797.split.us.preheader, label %.lr.ph797.split.preheader

.lr.ph797.split.preheader:                        ; preds = %.lr.ph797
  %.not662.peel = icmp eq i8 %i.afo, 2
  br i1 %.not662.peel, label %.loopexit735.peel, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph797.split.preheader
  %i.agk = zext i8 %i.afo to i32                  ; 2 uses
  %i.agl = mul nsw i32 %i.afz, %i.agk
  %i.agm = add nuw nsw i32 %i.agk, 1
  %i.agn = sdiv i32 %i.agl, %i.agm
  %i.ago = mul nsw i32 %i.age, %i.agn
  %i.agp = sext i32 %i.ago to i64
  %i.agq = getelementptr inbounds i8, ptr %i.agd, i64 %i.agp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agh, ptr align 1 %i.agq, i64 %i.agi, i1 false)
  %.pre904 = load i32, ptr %i.aga, align 4, !tbaa !55
  br label %.loopexit735.peel

.loopexit735.peel:                                ; preds = %bb.gs, %.lr.ph797.split.preheader
  %i.agr = phi i32 [ %i.age, %.lr.ph797.split.preheader ], [ %.pre904, %bb.gs ] ; 2 uses
  %i.ags = add nsw i32 %.0591, -2                 ; 2 uses
  %.not661.peel = icmp eq i32 %i.ags, 0
  br i1 %.not661.peel, label %.loopexit736, label %.lr.ph797.split.peel.next

.lr.ph797.split.peel.next:                        ; preds = %.loopexit735.peel
  %i.agt = sext i32 %i.agr to i64
  %i.agu = sub nsw i64 0, %i.agt
  %i.agv = getelementptr inbounds i8, ptr %i.agh, i64 %i.agu
  br label %.lr.ph797.split

.lr.ph797.split.us.preheader:                     ; preds = %.lr.ph797
  %wide.trip.count = zext nneg i32 %.0592.fr to i64 ; 8 uses
  %min.iters.check1076 = icmp ult i32 %.0592.fr, 8
  %min.iters.check1077 = icmp ult i32 %.0592.fr, 32
  %i.agw = and i64 %wide.trip.count, 24
  %n.vec1079 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n1088 = icmp eq i64 %n.vec1079, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.agw, 0
  %n.vec1089 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n1094 = icmp eq i64 %n.vec1089, %wide.trip.count
  %xtraiter1267.a = and i64 %wide.trip.count, 1
  %lcmp.mod1268.not.a = icmp eq i64 %xtraiter1267.a, 0
  %i.agx = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph797.split.us

.lr.ph797.split.us:                               ; preds = %.lr.ph797.split.us.preheader, %..loopexit735_crit_edge.us
  %i.agy = phi i32 [ %i.akc, %..loopexit735_crit_edge.us ], [ %i.age, %.lr.ph797.split.us.preheader ] ; 2 uses
  %.0590795.us = phi i32 [ %i.akg, %..loopexit735_crit_edge.us ], [ %i.afz, %.lr.ph797.split.us.preheader ] ; 4 uses
  %.0593793.us = phi ptr [ %i.akf, %..loopexit735_crit_edge.us ], [ %i.agh, %.lr.ph797.split.us.preheader ] ; 8 uses
  %.0593793.us1072 = ptrtoaddr ptr %.0593793.us to i64 ; 2 uses
  %i.agz = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.agz, i64 %indvars.iv864
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !66 ; 3 uses
  %i.ahc = ptrtoaddr ptr %i.ahb to i64            ; 2 uses
  %i.ahd = load i8, ptr %i.afn, align 1, !tbaa !63 ; 2 uses
  %i.ahe = zext i8 %i.ahd to i32                  ; 3 uses
  %i.ahf = mul nsw i32 %.0590795.us, %i.ahe
  %i.ahg = add nuw nsw i32 %i.ahe, 1              ; 2 uses
  %i.ahh = sdiv i32 %i.ahf, %i.ahg
  %i.ahi = mul i32 %i.agy, %i.ahh                 ; 2 uses
  %i.ahj = sext i32 %i.ahi to i64                 ; 2 uses
  %i.ahk = getelementptr inbounds i8, ptr %i.ahb, i64 %i.ahj ; 6 uses
  %i.ahl = add nsw i32 %.0590795.us, 1
  %i.ahm = mul nsw i32 %i.ahl, %i.ahe
  %i.ahn = sdiv i32 %i.ahm, %i.ahg
  %i.aho = mul i32 %i.ahn, %i.agy                 ; 2 uses
  %i.ahp = sext i32 %i.aho to i64                 ; 2 uses
  %i.ahq = getelementptr inbounds i8, ptr %i.ahb, i64 %i.ahp ; 5 uses
  %.not662.us = icmp eq i8 %i.ahd, 2
  br i1 %.not662.us, label %iter.check, label %bb.gt

bb.gt:                                            ; preds = %.lr.ph797.split.us
  %i.ahr = icmp eq i32 %i.ahi, %i.aho
  %i.ahs = icmp eq i32 %.0590795.us, %i.afz
  %or.cond675.us = or i1 %i.ahr, %i.ahs
  br i1 %or.cond675.us, label %bb.gu, label %iter.check

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0593793.us, ptr align 1 %i.ahk, i64 %i.agi, i1 false)
  br label %..loopexit735_crit_edge.us

iter.check:                                       ; preds = %bb.gt, %.lr.ph797.split.us
  br i1 %min.iters.check1076, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck1071

end_hunk_0
