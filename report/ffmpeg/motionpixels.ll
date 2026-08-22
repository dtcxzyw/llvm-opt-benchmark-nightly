Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/motionpixels?download=true
inline.NumInlined: 28
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mp_decode_frame:bb.a

mp_get_vlc.exit.i.i:                              ; preds = %bb.au, %bb.at
  %i.wk = phi i32 [ %i.wh, %bb.at ], [ %i.uy, %bb.au ]
  %i.wl = phi i32 [ %i.wf, %bb.at ], [ %i.wj, %bb.au ] ; 3 uses
  %i.wm = load i8, ptr %i.ij, align 2, !tbaa !41
  %i.wn = icmp eq i32 %i.wl, 0
  %i.wo = icmp eq i32 %i.wl, 14
  %i.wp = or i1 %i.wn, %i.wo
  %i.wq = select i1 %i.wp, i8 2, i8 1
  store i8 %i.wq, ptr %i.ij, align 2, !tbaa !41
  %i.wr = trunc i32 %i.wl to i8
  %i.ws = add i8 %i.wr, -7
  %i.wt = mul i8 %i.ws, %i.wm
  %i.wu = add i8 %i.wt, %.sroa.12.0100.i.i        ; 3 uses
  %i.wv = sext i8 %i.wu to i32
  %i.ww = add nsw i32 %i.wv, -32
  %i.wx = icmp ult i32 %i.ww, -64
  %i.wy = icmp sgt i8 %i.wu, -1
  %i.wz = select i1 %i.wy, i8 31, i8 -32
  %i.xa = select i1 %i.wx, i8 %i.wz, i8 %i.wu     ; 2 uses
  %i.xb = load ptr, ptr %i.ie, align 8, !tbaa !44
  %i.xc = load i32, ptr %i.qh, align 8, !tbaa !31
  %i.xd = mul nsw i32 %i.xc, %i.qe
  %i.xe = add nsw i32 %i.xd, %.1103.i.i
  %i.xf = sdiv i32 %i.xe, 4
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [3 x i8], ptr %i.xb, i64 %i.xg ; 3 uses
  store i8 %i.ua, ptr %i.xh, align 1, !tbaa !41
  %.sroa.8.0..sroa_idx93.i.i = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  store i8 %i.vo, ptr %.sroa.8.0..sroa_idx93.i.i, align 1, !tbaa !41
  %.sroa.12.0..sroa_idx96.i.i = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  store i8 %i.xa, ptr %.sroa.12.0..sroa_idx96.i.i, align 1, !tbaa !41
  br label %bb.aw

bb.av:                                            ; preds = %bb.ap
  %i.xi = load ptr, ptr %i.ie, align 8, !tbaa !44
  %i.xj = load i32, ptr %i.qh, align 8, !tbaa !31
  %i.xk = mul nsw i32 %i.xj, %i.qe
  %i.xl = add nsw i32 %i.xk, %.1103.i.i
  %i.xm = sdiv i32 %i.xl, 4
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr inbounds [3 x i8], ptr %i.xi, i64 %i.xn ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 1
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !72
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xo, i64 2
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !74
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %mp_get_vlc.exit.i.i, %mp_get_vlc.exit82.i.i
  %i.xt = phi i32 [ %i.wk, %mp_get_vlc.exit.i.i ], [ %i.tm, %bb.av ], [ %i.tm, %mp_get_vlc.exit82.i.i ]
  %.sroa.12.1.i.i = phi i8 [ %i.xa, %mp_get_vlc.exit.i.i ], [ %i.xs, %bb.av ], [ %.sroa.12.0100.i.i, %mp_get_vlc.exit82.i.i ] ; 2 uses
  %.sroa.8.1.i.i = phi i8 [ %i.vo, %mp_get_vlc.exit.i.i ], [ %i.xq, %bb.av ], [ %.sroa.8.0101.i.i, %mp_get_vlc.exit82.i.i ] ; 2 uses
  %.val88.i.i = load ptr, ptr %i.g, align 8, !tbaa !46 ; 2 uses
  %.val88.val.i.i = load ptr, ptr %.val88.i.i, align 8, !tbaa !59
  %i.xu = getelementptr i8, ptr %.val88.i.i, i64 64
  %.val88.val89.i.i = load i32, ptr %i.xu, align 8, !tbaa !68
  %i.xv = sext i8 %.sroa.8.1.i.i to i32           ; 2 uses
  %i.xw = sext i8 %.sroa.12.1.i.i to i32          ; 2 uses
  %i.xx = mul nsw i32 %.0.i.i.i, 1000             ; 3 uses
  %i.xy = mul nsw i32 %i.xv, 701
  %i.xz = add nsw i32 %i.xy, %i.xx
  %i.ya = sdiv i32 %i.xz, 1000
  %.neg.i.i.i.i = mul nsw i32 %i.xv, -357
  %.neg26.i.i.i.i = mul nsw i32 %i.xw, -172
  %i.yb = add nsw i32 %.neg26.i.i.i.i, %i.xx
  %i.yc = add nsw i32 %i.yb, %.neg.i.i.i.i
  %i.yd = sdiv i32 %i.yc, 1000
  %i.ye = mul nsw i32 %i.xw, 886
  %i.yf = add nsw i32 %i.ye, %i.xx
  %i.yg = sdiv i32 %i.yf, 1000
  %i.yh = shl nsw i32 %i.ya, 3
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.yi
  %i.yk = load i8, ptr %i.yj, align 8, !tbaa !41
  %i.yl = and i8 %i.yk, -8
  %i.ym = zext i8 %i.yl to i16
  %i.yn = shl nuw nsw i16 %i.ym, 7
  %i.yo = shl nsw i32 %i.yd, 3
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 8, !tbaa !41
  %i.ys = and i8 %i.yr, -8
  %i.yt = zext i8 %i.ys to i16
  %i.yu = shl nuw nsw i16 %i.yt, 2
  %i.yv = or disjoint i16 %i.yu, %i.yn
  %i.yw = shl nsw i32 %i.yg, 3
  %i.yx = sext i32 %i.yw to i64
  %i.yy = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.yx
  %i.yz = load i8, ptr %i.yy, align 8, !tbaa !41
  %i.za = lshr i8 %i.yz, 3
  %i.zb = zext nneg i8 %i.za to i16
  %i.zc = or disjoint i16 %i.yv, %i.zb
  %i.zd = mul nsw i32 %.val88.val89.i.i, %i.pr
  %i.ze = shl nsw i32 %.1103.i.i, 1
  %i.zf = add nsw i32 %i.zd, %i.ze
  %i.zg = sext i32 %i.zf to i64
  %i.zh = getelementptr inbounds i8, ptr %.val88.val.i.i, i64 %i.zg
  store i16 %i.zc, ptr %i.zh, align 2, !tbaa !60
  %i.zi = add nsw i32 %.1103.i.i, 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.loopexit.i.i
  %i.zj = phi i32 [ %i.xt, %bb.aw ], [ %i.qf, %.loopexit.i.i ] ; 2 uses
  %.sroa.12.2.i.i = phi i8 [ %.sroa.12.1.i.i, %bb.aw ], [ %.sroa.12.0.extract.trunc.i.i, %.loopexit.i.i ]
  %.sroa.8.2.i.i = phi i8 [ %.sroa.8.1.i.i, %bb.aw ], [ %.sroa.8.0.extract.trunc.i.i, %.loopexit.i.i ]
  %.sroa.0.1.i.i = phi i8 [ %i.ua, %bb.aw ], [ %.sroa.0.0.extract.trunc.i.i, %.loopexit.i.i ]
  %.2.i.i = phi i32 [ %i.zi, %bb.aw ], [ %i.se, %.loopexit.i.i ] ; 2 uses
  %i.zk = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 112 ; 2 uses
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !31 ; 2 uses
  %i.zn = icmp slt i32 %.2.i.i, %i.zm
  br i1 %i.zn, label %bb.ag, label %mp_decode_line.exit.i, !llvm.loop !75

mp_decode_line.exit.i:                            ; preds = %bb.ax, %bb.af
  %.lcssa8284 = phi i32 [ %.lcssa8285, %bb.af ], [ %i.zj, %bb.ax ] ; 2 uses
  %i.zo = phi ptr [ %i.pn, %bb.af ], [ %i.zk, %bb.ax ] ; 5 uses
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 2 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 116
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !30
  %i.zr = sext i32 %i.zq to i64
  %i.zs = icmp slt i64 %indvars.iv.next58.i, %i.zr
  br i1 %i.zs, label %.lr.ph53.i, label %._crit_edge.i71, !llvm.loop !76

._crit_edge.i71:                                  ; preds = %mp_decode_line.exit.i, %.preheader.i
  %.lcssa8284.lcssa87 = phi i32 [ %.lcssa8284.lcssa88, %.preheader.i ], [ %.lcssa8284, %mp_decode_line.exit.i ]
  %i.zt = phi ptr [ %i.pi, %.preheader.i ], [ %i.zo, %mp_decode_line.exit.i ]
  %i.zu = phi ptr [ %i.pj, %.preheader.i ], [ %i.zo, %mp_decode_line.exit.i ]
  br i1 %exitcond.not.i70, label %mp_decode_frame_helper.exit, label %.preheader.i, !llvm.loop !77

mp_decode_frame_helper.exit:                      ; preds = %._crit_edge.i71
  %i.zv = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  tail call void @ff_vlc_free(ptr noundef nonnull %i.zv) #11
  br label %mp_read_codes_table.exit.thread

mp_read_codes_table.exit.thread:                  ; preds = %._crit_edge.i, %bb.m, %bb.q, %bb.o, %bb.e, %mp_decode_frame_helper.exit
  %i.zw = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.zx = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.zw) #11 ; 2 uses
  %i.zy = icmp slt i32 %i.zx, 0
  br i1 %i.zy, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %mp_read_codes_table.exit.thread
  store i32 1, ptr %2, align 4, !tbaa !68
  br label %bb.az

bb.az:                                            ; preds = %mp_read_codes_table.exit.thread, %bb.b, %bb.a, %bb.ay
  %.061 = phi i32 [ %i.i, %bb.a ], [ -12, %bb.b ], [ %i.d, %bb.ay ], [ %i.zx, %mp_read_codes_table.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.061
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @mp_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @av_freep(ptr noundef nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  tail call void @av_freep(ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  tail call void @av_freep(ptr noundef nonnull %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_frame_free(ptr noundef nonnull %i.g) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_bswapdsp_init(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @av_frame_alloc() local_unnamed_addr #3

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @motionpixels_tableinit() #4 {
bb.a:
  tail call fastcc void @mp_build_rgb_yuv_table() #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mp_build_rgb_yuv_table() unnamed_addr #5 {
bb.a:
  br label %.preheader4

.preheader4:                                      ; preds = %bb.a, %bb.f
  %.0307 = phi i32 [ 0, %bb.a ], [ %i.z, %bb.f ]  ; 3 uses
  %i.a = mul nuw nsw i32 %.0307, 1000             ; 3 uses
  %i.b = trunc nuw nsw i32 %.0307 to i8
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader4, %bb.e
  %.0296 = phi i32 [ -31, %.preheader4 ], [ %i.y, %bb.e ] ; 4 uses
  %i.c = mul nsw i32 %.0296, 701
  %i.d = add nsw i32 %i.c, %i.a
  %i.e = sdiv i32 %i.d, 1000                      ; 2 uses
  %.neg.i = mul nsw i32 %.0296, -357
  %i.f = add nsw i32 %.neg.i, %i.a
  %i.g = shl nuw nsw i32 %i.e, 10
  %i.h = trunc i32 %.0296 to i8
  br label %bb.b

bb.b:                                             ; preds = %.preheader3, %mp_yuv_to_rgb.exit
  %.0285 = phi i32 [ -31, %.preheader3 ], [ %i.x, %mp_yuv_to_rgb.exit ] ; 4 uses
  %.neg26.i.a = mul nsw i32 %.0285, -172
  %0 = add nsw i32 %i.f, %.neg26.i.a
  %1 = sdiv i32 %0, 1000                          ; 2 uses
  %2 = mul nsw i32 %.0285, 886
  %3 = add nsw i32 %2, %i.a
  %4 = sdiv i32 %3, 1000                          ; 2 uses
  %i.i = or i32 %1, %i.e
  %or.cond.i = icmp ult i32 %i.i, 32
  %i.j = icmp ult i32 %4, 32
  %or.cond3.i = select i1 %or.cond.i, i1 %i.j, i1 false
  br i1 %or.cond3.i, label %bb.c, label %mp_yuv_to_rgb.exit

bb.c:                                             ; preds = %bb.b
  %i.k = shl nuw nsw i32 %1, 5
  %i.l = or disjoint i32 %i.k, %i.g
  %i.m = or disjoint i32 %i.l, %4
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [3 x i8], ptr @mp_rgb_yuv_table, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !72
  %i.t = or i8 %i.s, %i.q
  %i.u = load i8, ptr %i.o, align 1, !tbaa !78
  %i.v = or i8 %i.t, %i.u
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.d, label %mp_yuv_to_rgb.exit

bb.d:                                             ; preds = %bb.c
  store i8 %i.b, ptr %i.o, align 1, !tbaa !78
  store i8 %i.h, ptr %i.r, align 1, !tbaa !72
  %i.w = trunc i32 %.0285 to i8
  store i8 %i.w, ptr %i.p, align 1, !tbaa !74
  br label %mp_yuv_to_rgb.exit

mp_yuv_to_rgb.exit:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.x = add nsw i32 %.0285, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, 32
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !79

bb.e:                                             ; preds = %mp_yuv_to_rgb.exit
  %i.y = add nsw i32 %.0296, 1                    ; 2 uses
  %exitcond9.not = icmp eq i32 %i.y, 32
  br i1 %exitcond9.not, label %bb.f, label %.preheader3, !llvm.loop !80

bb.f:                                             ; preds = %bb.e
  %i.z = add nuw nsw i32 %.0307, 1                ; 2 uses
  %exitcond10.not = icmp eq i32 %i.z, 32
  br i1 %exitcond10.not, label %.preheader, label %.preheader4, !llvm.loop !81

.preheader:                                       ; preds = %bb.f, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.f ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 96
  %i.aa = getelementptr inbounds nuw i8, ptr @mp_rgb_yuv_table, i64 %.idx
  tail call fastcc void @mp_set_zero_yuv(ptr noundef nonnull %i.aa) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond12.not = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond12.not, label %bb.g, label %.preheader, !llvm.loop !82

bb.g:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @mp_set_zero_yuv(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  br label %.preheader29

.preheader29:                                     ; preds = %bb.a, %._crit_edge
  %indvars.iv42 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next43, %._crit_edge ] ; 2 uses
  %indvars.iv40 = phi i64 [ 31, %bb.a ], [ %indvars.iv.next41, %._crit_edge ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader29, %bb.d
  %indvars.iv = phi i64 [ 31, %.preheader29 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.a = getelementptr inbounds [3 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i8, ptr %i.b, align 1, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !72
  %i.f = or i8 %i.e, %i.c
  %i.g = load i8, ptr %i.a, align 1, !tbaa !78
  %i.h = or i8 %i.f, %i.g
  %.not28 = icmp eq i8 %i.h, 0
  br i1 %.not28, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.a, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) %i.i, i64 3, i1 false), !tbaa.struct !83
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.j = icmp samesign ugt i64 %indvars.iv.next, %indvars.iv42
  br i1 %i.j, label %bb.b, label %.lr.ph, !llvm.loop !84

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %indvars.iv35 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !72
  %i.p = or i8 %i.o, %i.m
  %i.q = load i8, ptr %i.k, align 1, !tbaa !78
  %i.r = or i8 %i.p, %i.q
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.k, ptr noundef nonnull align 1 dereferenceable(3) %i.s, i64 3, i1 false), !tbaa.struct !83
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next36, %indvars.iv40
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.f
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  %exitcond47.not = icmp eq i64 %indvars.iv.next43, 31
  br i1 %exitcond47.not, label %bb.g, label %.preheader29, !llvm.loop !86

bb.g:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mp_read_changes_map(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i32 noundef range(i32 4, 9) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #8 {
bb.a:
  %.not67 = icmp eq i32 %2, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = sub nuw nsw i32 32, %3                   ; 2 uses
  %.not55 = icmp eq i32 %4, 0                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  br label %bb.b

..loopexit58_crit_edge:                           ; preds = %.preheader.prol.loopexit, %.preheader, %..loopexit_crit_edge.us, %.lr.ph63.split.us.prol.loopexit, %.lr.ph63.split.us
  br label %.backedge, !llvm.loop !87

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.in = phi i32 [ %2, %.lr.ph ], [ %i.g, %.backedge ]
  %.04568 = phi i32 [ 0, %.lr.ph ], [ %.1, %.backedge ]
  %i.g = add nsw i32 %.in, -1                     ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !42   ; 6 uses
  %.not.i = icmp eq i32 %i.h, 0
  %.pre = load i32, ptr %i.b, align 8, !tbaa !56  ; 5 uses
  %.pre72 = load i32, ptr %i.c, align 8, !tbaa !55 ; 6 uses
  %.pre73 = load ptr, ptr %1, align 8, !tbaa !52  ; 5 uses
  br i1 %.not.i, label %get_bits_long.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %i.h, 26
  %i.j = lshr i32 %.pre, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.pre73, i64 %i.k
  %i.m = load i32, ptr %i.l, align 1, !tbaa !41
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.o = and i32 %.pre, 7
  %i.p = shl i32 %i.n, %i.o                       ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = sub nsw i32 32, %i.h
  %i.r = lshr i32 %i.p, %i.q
  %i.s = add i32 %.pre, %i.h
  %i.t = tail call i32 @llvm.umin.i32(i32 %.pre72, i32 %i.s) ; 2 uses
  store i32 %i.t, ptr %i.b, align 8, !tbaa !56
  br label %get_bits_long.exit

bb.e:                                             ; preds = %bb.c
  %i.u = lshr i32 %i.p, 16
  %i.v = add i32 %.pre, 16
  %i.w = tail call i32 @llvm.umin.i32(i32 %.pre72, i32 %i.v) ; 4 uses
  store i32 %i.w, ptr %i.b, align 8, !tbaa !56
  %i.x = add nsw i32 %i.h, -16                    ; 2 uses
  %i.y = shl i32 %i.u, %i.x
  %i.z = lshr i32 %i.w, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre73, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !41
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = and i32 %i.w, 7
  %i.af = shl i32 %i.ad, %i.ae
  %i.ag = sub nsw i32 48, %i.h
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = add i32 %i.w, %i.x
  %i.aj = tail call i32 @llvm.umin.i32(i32 %.pre72, i32 %i.ai) ; 2 uses
  store i32 %i.aj, ptr %i.b, align 8, !tbaa !56
  %i.ak = or i32 %i.ah, %i.y
  br label %get_bits_long.exit

get_bits_long.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %i.al = phi i32 [ %i.t, %bb.d ], [ %i.aj, %bb.e ], [ %.pre, %bb.b ] ; 3 uses
  %.0.i = phi i32 [ %i.r, %bb.d ], [ %i.ak, %bb.e ], [ 0, %bb.b ] ; 9 uses
  %i.am = lshr i32 %i.al, 3
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre73, i64 %i.an
end_hunk_0
