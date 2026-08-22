Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/msmpeg4enc?download=true
inline.NumInlined: 80
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ff_msmpeg4_encode_block:bb.a
bb.dq:                                            ; preds = %bb.do
  %i.vx = load ptr, ptr %i.hr, align 8, !tbaa !14
  %i.vy = load ptr, ptr %i.hs, align 8, !tbaa !15 ; 2 uses
  %i.vz = ptrtoint ptr %i.vx to i64
  %i.wa = ptrtoint ptr %i.vy to i64
  %i.wb = sub i64 %i.vz, %i.wa
  %i.wc = icmp ugt i64 %i.wb, 3
  br i1 %i.wc, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.wd = shl i32 %.026.i.i, %.0.i.i
  %i.we = icmp eq i32 %.0.i.i, 1
  %i.wf = zext i1 %i.we to i32
  %i.wg = or i32 %i.wd, %i.wf
  %i.wh = call i32 @llvm.bswap.i32(i32 %i.wg)
  store i32 %i.wh, ptr %i.vy, align 1, !tbaa !16
  %i.wi = load ptr, ptr %i.hs, align 8, !tbaa !15
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  store ptr %i.wj, ptr %i.hs, align 8, !tbaa !15
  br label %put_bits.exit218

bb.ds:                                            ; preds = %bb.dq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit218

put_bits.exit218:                                 ; preds = %bb.dr, %bb.ds, %bb.dp
  %.sink309 = phi i32 [ -1, %bb.dp ], [ 31, %bb.ds ], [ 31, %bb.dr ]
  %.026.i.i216 = phi i32 [ %i.vw, %bb.dp ], [ 1, %bb.ds ], [ 1, %bb.dr ] ; 3 uses
  %i.wk = add nsw i32 %.0.i.i, %.sink309          ; 6 uses
  store i32 %.026.i.i216, ptr %i.ho, align 8, !tbaa !9
  store i32 %i.wk, ptr %i.hq, align 4, !tbaa !13
  %i.wl = load ptr, ptr %i.hp, align 8, !tbaa !96
  %i.wm = zext nneg i32 %i.lg to i64
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %i.wm ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 2
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !84
  %i.wq = zext i16 %i.wp to i32                   ; 4 uses
  %i.wr = load i16, ptr %i.wn, align 2, !tbaa !84
  %i.ws = zext i16 %i.wr to i32                   ; 3 uses
  %i.wt = icmp sgt i32 %i.wk, %i.wq
  br i1 %i.wt, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %put_bits.exit218
  %i.wu = shl i32 %.026.i.i216, %i.wq
  %i.wv = or i32 %i.wu, %i.ws
  br label %put_bits.exit222

bb.du:                                            ; preds = %put_bits.exit218
  %i.ww = load ptr, ptr %i.hr, align 8, !tbaa !14
  %i.wx = load ptr, ptr %i.hs, align 8, !tbaa !15 ; 2 uses
  %i.wy = ptrtoint ptr %i.ww to i64
  %i.wz = ptrtoint ptr %i.wx to i64
  %i.xa = sub i64 %i.wy, %i.wz
  %i.xb = icmp ugt i64 %i.xa, 3
  br i1 %i.xb, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.xc = shl i32 %.026.i.i216, %i.wk
  %i.xd = sub nsw i32 %i.wq, %i.wk
  %i.xe = lshr i32 %i.ws, %i.xd
  %i.xf = or i32 %i.xe, %i.xc
  %i.xg = call i32 @llvm.bswap.i32(i32 %i.xf)
  store i32 %i.xg, ptr %i.wx, align 1, !tbaa !16
  %i.xh = load ptr, ptr %i.hs, align 8, !tbaa !15
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  store ptr %i.xi, ptr %i.hs, align 8, !tbaa !15
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %reass.sub.i219 = add nsw i32 %i.wk, 32
  br label %put_bits.exit222

put_bits.exit222:                                 ; preds = %bb.dt, %bb.dx
  %.026.i.i220 = phi i32 [ %i.wv, %bb.dt ], [ %i.ws, %bb.dx ] ; 3 uses
  %.0.i.i217.pn = phi i32 [ %i.wk, %bb.dt ], [ %reass.sub.i219, %bb.dx ]
  %.0.i.i221 = sub i32 %.0.i.i217.pn, %i.wq       ; 5 uses
  store i32 %.026.i.i220, ptr %i.ho, align 8, !tbaa !9
  store i32 %.0.i.i221, ptr %i.hq, align 4, !tbaa !13
  %i.xj = icmp sgt i32 %.0.i.i221, 1
  br i1 %i.xj, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %put_bits.exit222
  %i.xk = shl i32 %.026.i.i220, 1
  %i.xl = or disjoint i32 %i.xk, %spec.select156
  br label %put_bits.exit226

bb.dz:                                            ; preds = %put_bits.exit222
  %i.xm = load ptr, ptr %i.hr, align 8, !tbaa !14
  %i.xn = load ptr, ptr %i.hs, align 8, !tbaa !15 ; 2 uses
  %i.xo = ptrtoint ptr %i.xm to i64
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = sub i64 %i.xo, %i.xp
  %i.xr = icmp ugt i64 %i.xq, 3
  br i1 %i.xr, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.xs = shl i32 %.026.i.i220, %.0.i.i221
  %i.xt = sub nsw i32 1, %.0.i.i221
  %i.xu = lshr i32 %spec.select156, %i.xt
  %i.xv = or i32 %i.xu, %i.xs
  %i.xw = call i32 @llvm.bswap.i32(i32 %i.xv)
  store i32 %i.xw, ptr %i.xn, align 1, !tbaa !16
  %i.xx = load ptr, ptr %i.hs, align 8, !tbaa !15
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 4
  store ptr %i.xy, ptr %i.hs, align 8, !tbaa !15
  br label %put_bits.exit226

bb.eb:                                            ; preds = %bb.dz
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit226

put_bits.exit226:                                 ; preds = %bb.ea, %bb.eb, %bb.dy
  %.sink310 = phi i32 [ -1, %bb.dy ], [ 31, %bb.eb ], [ 31, %bb.ea ]
  %.026.i.i224 = phi i32 [ %i.xl, %bb.dy ], [ %spec.select156, %bb.eb ], [ %spec.select156, %bb.ea ]
  %i.xz = add nsw i32 %.0.i.i221, %.sink310
  br label %.sink.split312

bb.ec:                                            ; preds = %put_bits.exit
  %i.ya = icmp sgt i32 %.0.i.i, 1
  br i1 %i.ya, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.yb = shl i32 %.026.i.i, 1
  %i.yc = or disjoint i32 %i.yb, %spec.select156
  br label %put_bits.exit230

bb.ee:                                            ; preds = %bb.ec
  %i.yd = load ptr, ptr %i.hr, align 8, !tbaa !14
  %i.ye = load ptr, ptr %i.hs, align 8, !tbaa !15 ; 2 uses
  %i.yf = ptrtoint ptr %i.yd to i64
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = sub i64 %i.yf, %i.yg
  %i.yi = icmp ugt i64 %i.yh, 3
  br i1 %i.yi, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.yj = shl i32 %.026.i.i, %.0.i.i
  %i.yk = sub nsw i32 1, %.0.i.i
  %i.yl = lshr i32 %spec.select156, %i.yk
  %i.ym = or i32 %i.yl, %i.yj
  %i.yn = call i32 @llvm.bswap.i32(i32 %i.ym)
  store i32 %i.yn, ptr %i.ye, align 1, !tbaa !16
  %i.yo = load ptr, ptr %i.hs, align 8, !tbaa !15
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  store ptr %i.yp, ptr %i.hs, align 8, !tbaa !15
  br label %put_bits.exit230

bb.eg:                                            ; preds = %bb.ee
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit230

put_bits.exit230:                                 ; preds = %bb.ef, %bb.eg, %bb.ed
  %.sink311 = phi i32 [ -1, %bb.ed ], [ 31, %bb.eg ], [ 31, %bb.ef ]
  %.026.i.i228 = phi i32 [ %i.yc, %bb.ed ], [ %spec.select156, %bb.eg ], [ %spec.select156, %bb.ef ]
  %i.yq = add nsw i32 %.0.i.i, %.sink311
  br label %.sink.split312

.sink.split312:                                   ; preds = %put_bits.exit226, %put_bits.exit195, %put_sbits.exit, %put_bits.exit214, %put_bits.exit230
  %.026.i.i228.sink = phi i32 [ %.026.i.i228, %put_bits.exit230 ], [ %.026.i.i212, %put_bits.exit214 ], [ %.026.i.i.i202, %put_sbits.exit ], [ %.026.i.i193, %put_bits.exit195 ], [ %.026.i.i224, %put_bits.exit226 ]
  %.sink313 = phi i32 [ %i.yq, %put_bits.exit230 ], [ %i.vt, %put_bits.exit214 ], [ %i.tn, %put_sbits.exit ], [ %.0.i.i194, %put_bits.exit195 ], [ %i.xz, %put_bits.exit226 ]
  store i32 %.026.i.i228.sink, ptr %i.ho, align 8, !tbaa !9
  store i32 %.sink313, ptr %i.hq, align 4, !tbaa !13
  br label %bb.eh

bb.eh:                                            ; preds = %.sink.split312, %bb.am
  %.1141 = phi i32 [ %.0140243, %bb.am ], [ %i.ih, %.sink.split312 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.am, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.eh, %._crit_edge251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define void @ff_msmpeg4_encode_init(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6644
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6708
  tail call void @ff_msmpeg4_common_init(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %i.e = icmp ult i32 %i.d, 5
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10392
  store ptr @msmpeg4_encode_picture_header, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6552
  store ptr @msmpeg4_encode_mb, ptr %i.g, align 8, !tbaa !102
  %i.h = icmp eq i32 %i.d, 4
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6128
  store i32 -255, ptr %i.i, align 16, !tbaa !103
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 6132
  store i32 255, ptr %1, align 4, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.j = tail call i32 @pthread_once(ptr noundef nonnull @ff_msmpeg4_encode_init.init_static_once, ptr noundef nonnull @msmpeg4_encode_init_static) #10 ; 0 uses
  ret void
}

declare void @ff_msmpeg4_common_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @msmpeg4_encode_picture_header(ptr nofree noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 78620 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112420 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.d = load i32, ptr %i.c, align 16, !tbaa !105 ; 4 uses
  %i.e = icmp eq i32 %i.d, 1                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11020 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44820 ; 3 uses
  br i1 %i.e, label %.preheader.us.us.i, label %.preheader.i

.preheader.us.us.i:                               ; preds = %bb.a, %.split117.us.us.us.i
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i, %.split117.us.us.us.i ], [ 0, %bb.a ] ; 5 uses
  %.1122.us.us.i = phi i32 [ %.4.us.us.us.us.1.i, %.split117.us.us.us.i ], [ 0, %bb.a ]
  %.187121.us.us.i = phi i32 [ %i.ak, %.split117.us.us.us.i ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw [520 x i8], ptr %i.a, i64 %indvars.iv157.i
  %i.i = getelementptr inbounds nuw [520 x i8], ptr %i.b, i64 %indvars.iv157.i
  %i.j = getelementptr inbounds nuw [130 x i8], ptr @rl_length, i64 %indvars.iv157.i
  %i.k = getelementptr inbounds nuw [130 x i8], ptr getelementptr inbounds nuw (i8, ptr @rl_length, i64 25350), i64 %indvars.iv157.i
  br label %.split.us.us.us.us.i

.split.us.us.us.us.i:                             ; preds = %.split.us.us.us.us.i, %.preheader.us.us.i
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %.split.us.us.us.us.i ], [ 0, %.preheader.us.us.i ] ; 6 uses
  %.2114.us.us.us.i = phi i32 [ %.4.us.us.us.us.1.i, %.split.us.us.us.us.i ], [ %.1122.us.us.i, %.preheader.us.us.i ] ; 2 uses
  %.288113.us.us.us.i = phi i32 [ %i.ak, %.split.us.us.us.us.i ], [ %.187121.us.us.i, %.preheader.us.us.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv154.i ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv154.i ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv154.i ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv154.i ; 2 uses
  %i.p = load i32, ptr %i.l, align 4, !tbaa !78
  %i.q = load i32, ptr %i.m, align 4, !tbaa !78
  %i.r = load i8, ptr %i.n, align 2, !tbaa !16
  %i.s = zext i8 %i.r to i32
  %i.t = mul nsw i32 %i.p, %i.s
  %i.u = load i8, ptr %i.o, align 2, !tbaa !16
  %i.v = zext i8 %i.u to i32
  %i.w = mul nsw i32 %i.q, %i.v
  %i.x = add nsw i32 %i.w, %.288113.us.us.us.i
  %.4.us.us.us.us.i = add nsw i32 %i.t, %.2114.us.us.us.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nsw i32 %i.z, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = zext i8 %i.ah to i32
  %i.aj = mul nsw i32 %i.ab, %i.ai
  %i.ak = add nsw i32 %i.x, %i.aj                 ; 5 uses
  %.4.us.us.us.us.1.i = add nsw i32 %.4.us.us.us.us.i, %i.af ; 5 uses
  %i.al = add nsw i32 %.288113.us.us.us.i, %.2114.us.us.us.i
  %i.am = add nsw i32 %i.ak, %.4.us.us.us.us.1.i
  %i.an = icmp ne i32 %i.al, %i.am
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1
  %i.ao = icmp samesign ult i64 %indvars.iv154.i, 64
  %or.cond.i = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond.i, label %.split.us.us.us.us.i, label %.split117.us.us.us.i, !llvm.loop !106

.split117.us.us.us.i:                             ; preds = %.split.us.us.us.us.i
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %exitcond160.not.i = icmp eq i64 %indvars.iv.next158.i, 65
  br i1 %exitcond160.not.i, label %.preheader.us.us.1.i, label %.preheader.us.us.i, !llvm.loop !107

.preheader.us.us.1.i:                             ; preds = %.split117.us.us.us.i, %.split117.us.us.us.1.i
  %indvars.iv157.1.i = phi i64 [ %indvars.iv.next158.1.i, %.split117.us.us.us.1.i ], [ 0, %.split117.us.us.us.i ] ; 5 uses
  %.1122.us.us.1.i = phi i32 [ %.4.us.us.us.us.1.1.i, %.split117.us.us.us.1.i ], [ 1, %.split117.us.us.us.i ]
  %.187121.us.us.1.i = phi i32 [ %i.bs, %.split117.us.us.us.1.i ], [ 1, %.split117.us.us.us.i ]
  %i.ap = getelementptr inbounds nuw [520 x i8], ptr %i.a, i64 %indvars.iv157.1.i
  %i.aq = getelementptr inbounds nuw [520 x i8], ptr %i.b, i64 %indvars.iv157.1.i
  %i.ar = getelementptr inbounds nuw [130 x i8], ptr getelementptr inbounds nuw (i8, ptr @rl_length, i64 8450), i64 %indvars.iv157.1.i
  %i.as = getelementptr inbounds nuw [130 x i8], ptr getelementptr inbounds nuw (i8, ptr @rl_length, i64 33800), i64 %indvars.iv157.1.i
  br label %.split.us.us.us.us.1.i

.split.us.us.us.us.1.i:                           ; preds = %.split.us.us.us.us.1.i, %.preheader.us.us.1.i
  %indvars.iv154.1.i = phi i64 [ %indvars.iv.next155.1.i, %.split.us.us.us.us.1.i ], [ 0, %.preheader.us.us.1.i ] ; 6 uses
  %.2114.us.us.us.1.i = phi i32 [ %.4.us.us.us.us.1.1.i, %.split.us.us.us.us.1.i ], [ %.1122.us.us.1.i, %.preheader.us.us.1.i ] ; 2 uses
  %.288113.us.us.us.1.i = phi i32 [ %i.bs, %.split.us.us.us.us.1.i ], [ %.187121.us.us.1.i, %.preheader.us.us.1.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv154.1.i ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv154.1.i ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv154.1.i ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv154.1.i ; 2 uses
  %i.ax = load i32, ptr %i.at, align 4, !tbaa !78
  %i.ay = load i32, ptr %i.au, align 4, !tbaa !78
  %i.az = load i8, ptr %i.av, align 2, !tbaa !16
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nsw i32 %i.ax, %i.ba
  %i.bc = load i8, ptr %i.aw, align 2, !tbaa !16
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nsw i32 %i.ay, %i.bd
  %i.bf = add nsw i32 %i.be, %.288113.us.us.us.1.i
  %.4.us.us.us.us.1165.i = add nsw i32 %i.bb, %.2114.us.us.us.1.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !78
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.bm = zext i8 %i.bl to i32
  %i.bn = mul nsw i32 %i.bh, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = zext i8 %i.bp to i32
  %i.br = mul nsw i32 %i.bj, %i.bq
  %i.bs = add nsw i32 %i.bf, %i.br                ; 5 uses
  %.4.us.us.us.us.1.1.i = add nsw i32 %.4.us.us.us.us.1165.i, %i.bn ; 5 uses
  %i.bt = add nsw i32 %.288113.us.us.us.1.i, %.2114.us.us.us.1.i
  %i.bu = add nsw i32 %i.bs, %.4.us.us.us.us.1.1.i
  %i.bv = icmp ne i32 %i.bt, %i.bu
  %indvars.iv.next155.1.i = add nuw nsw i64 %indvars.iv154.1.i, 1
  %i.bw = icmp samesign ult i64 %indvars.iv154.1.i, 64
  %or.cond.1.i = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.1.i, label %.split.us.us.us.us.1.i, label %.split117.us.us.us.1.i, !llvm.loop !106

.split117.us.us.us.1.i:                           ; preds = %.split.us.us.us.us.1.i
  %indvars.iv.next158.1.i = add nuw nsw i64 %indvars.iv157.1.i, 1 ; 2 uses
  %exitcond160.1.not.i = icmp eq i64 %indvars.iv.next158.1.i, 65
  br i1 %exitcond160.1.not.i, label %.preheader.us.us.2.i, label %.preheader.us.us.1.i, !llvm.loop !107

.preheader.us.us.2.i:                             ; preds = %.split117.us.us.us.1.i, %.split117.us.us.us.2.i
  %indvars.iv157.2.i = phi i64 [ %indvars.iv.next158.2.i, %.split117.us.us.us.2.i ], [ 0, %.split117.us.us.us.1.i ] ; 5 uses
  %.1122.us.us.2.i = phi i32 [ %.4.us.us.us.us.1.2.i, %.split117.us.us.us.2.i ], [ 1, %.split117.us.us.us.1.i ]
  %.187121.us.us.2.i = phi i32 [ %i.da, %.split117.us.us.us.2.i ], [ 1, %.split117.us.us.us.1.i ]
  %i.bx = getelementptr inbounds nuw [520 x i8], ptr %i.a, i64 %indvars.iv157.2.i
  %i.by = getelementptr inbounds nuw [520 x i8], ptr %i.b, i64 %indvars.iv157.2.i
  %i.bz = getelementptr inbounds nuw [130 x i8], ptr getelementptr inbounds nuw (i8, ptr @rl_length, i64 16900), i64 %indvars.iv157.2.i
  %i.ca = getelementptr inbounds nuw [130 x i8], ptr getelementptr inbounds nuw (i8, ptr @rl_length, i64 42250), i64 %indvars.iv157.2.i
  br label %.split.us.us.us.us.2.i

.split.us.us.us.us.2.i:                           ; preds = %.split.us.us.us.us.2.i, %.preheader.us.us.2.i
  %indvars.iv154.2.i = phi i64 [ %indvars.iv.next155.2.i, %.split.us.us.us.us.2.i ], [ 0, %.preheader.us.us.2.i ] ; 6 uses
  %.2114.us.us.us.2.i = phi i32 [ %.4.us.us.us.us.1.2.i, %.split.us.us.us.us.2.i ], [ %.1122.us.us.2.i, %.preheader.us.us.2.i ] ; 2 uses
  %.288113.us.us.us.2.i = phi i32 [ %i.da, %.split.us.us.us.us.2.i ], [ %.187121.us.us.2.i, %.preheader.us.us.2.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv154.2.i ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv154.2.i ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv154.2.i ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv154.2.i ; 2 uses
  %i.cf = load i32, ptr %i.cb, align 4, !tbaa !78
  %i.cg = load i32, ptr %i.cc, align 4, !tbaa !78
  %i.ch = load i8, ptr %i.cd, align 2, !tbaa !16
  %i.ci = zext i8 %i.ch to i32
  %i.cj = mul nsw i32 %i.cf, %i.ci
  %i.ck = load i8, ptr %i.ce, align 2, !tbaa !16
  %i.cl = zext i8 %i.ck to i32
  %i.cm = mul nsw i32 %i.cg, %i.cl
  %i.cn = add nsw i32 %i.cm, %.288113.us.us.us.2.i
  %.4.us.us.us.us.2.i = add nsw i32 %i.cj, %.2114.us.us.us.2.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !78
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !78
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nsw i32 %i.cp, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !16
  %i.cy = zext i8 %i.cx to i32
  %i.cz = mul nsw i32 %i.cr, %i.cy
  %i.da = add nsw i32 %i.cn, %i.cz                ; 4 uses
  %.4.us.us.us.us.1.2.i = add nsw i32 %.4.us.us.us.us.2.i, %i.cv ; 4 uses
  %i.db = add nsw i32 %.288113.us.us.us.2.i, %.2114.us.us.us.2.i
  %i.dc = add nsw i32 %i.da, %.4.us.us.us.us.1.2.i
  %i.dd = icmp ne i32 %i.db, %i.dc
  %indvars.iv.next155.2.i = add nuw nsw i64 %indvars.iv154.2.i, 1
  %i.de = icmp samesign ult i64 %indvars.iv154.2.i, 64
  %or.cond.2.i = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond.2.i, label %.split.us.us.us.us.2.i, label %.split117.us.us.us.2.i, !llvm.loop !106

.split117.us.us.us.2.i:                           ; preds = %.split.us.us.us.us.2.i
  %indvars.iv.next158.2.i = add nuw nsw i64 %indvars.iv157.2.i, 1 ; 2 uses
  %exitcond160.2.not.i = icmp eq i64 %indvars.iv.next158.2.i, 65
  br i1 %exitcond160.2.not.i, label %.split125.us.us.2.i, label %.preheader.us.us.2.i, !llvm.loop !107

.split125.us.us.2.i:                              ; preds = %.split117.us.us.us.2.i
  %i.df = icmp slt i32 %.4.us.us.us.us.1.1.i, %.4.us.us.us.us.1.i
  %spec.select104.us.1.i = zext i1 %i.df to i32
  %spec.select105.us.1.i = tail call i32 @llvm.smin.i32(i32 %.4.us.us.us.us.1.1.i, i32 %.4.us.us.us.us.1.i)
  %i.dg = icmp slt i32 %i.bs, %i.ak
  %.196.us.1.i = zext i1 %i.dg to i32
  %.194.us.1.i = tail call i32 @llvm.smin.i32(i32 %i.bs, i32 %i.ak)
  %i.dh = icmp slt i32 %.4.us.us.us.us.1.2.i, %spec.select105.us.1.i
  %spec.select104.us.2.i = select i1 %i.dh, i32 2, i32 %spec.select104.us.1.i
  %i.di = icmp slt i32 %i.da, %.194.us.1.i
  %.196.us.2.i = select i1 %i.di, i32 2, i32 %.196.us.1.i
  br label %.split134.us.i

.preheader.i:                                     ; preds = %bb.a, %.split117.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %.split117.i ], [ 0, %bb.a ] ; 7 uses
  %.1122.i = phi i32 [ %.4.1.i, %.split117.i ], [ 0, %bb.a ]
  %i.dj = getelementptr inbounds nuw [520 x i8], ptr %i.a, i64 %indvars.iv141.i
  %i.dk = getelementptr inbounds nuw [520 x i8], ptr %i.b, i64 %indvars.iv141.i
  %i.dl = getelementptr inbounds nuw [520 x i8], ptr %i.f, i64 %indvars.iv141.i
  %i.dm = getelementptr inbounds nuw [520 x i8], ptr %i.g, i64 %indvars.iv141.i
  %i.dn = getelementptr inbounds nuw [130 x i8], ptr @rl_length, i64 %indvars.iv141.i
  %i.do = getelementptr inbounds nuw [130 x i8], ptr getelementptr inbounds nuw (i8, ptr @rl_length, i64 25350), i64 %indvars.iv141.i
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.i ], [ 0, %.preheader.i ] ; 8 uses
  %.2114.i = phi i32 [ %.4.1.i, %.split.i ], [ %.1122.i, %.preheader.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv.i ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv.i ; 2 uses
  %i.dv = load i32, ptr %i.dp, align 4, !tbaa !78
  %i.dw = load i32, ptr %i.dq, align 4, !tbaa !78
  %i.dx = load i32, ptr %i.dr, align 4, !tbaa !78
  %i.dy = load i32, ptr %i.ds, align 4, !tbaa !78
  %i.dz = load i8, ptr %i.dt, align 2, !tbaa !16
  %i.ea = zext i8 %i.dz to i32
  %i.eb = mul nsw i32 %i.dv, %i.ea
  %i.ec = load i8, ptr %i.du, align 2, !tbaa !16
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add i32 %i.dx, %i.dw
  %reass.add.i = add i32 %i.ee, %i.dy
  %reass.mul.i = mul i32 %reass.add.i, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !78
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !78
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !78
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !78
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !16
  %i.ep = zext i8 %i.eo to i32
  %i.eq = mul nsw i32 %i.eg, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !16
  %i.et = zext i8 %i.es to i32
  %i.eu = add i32 %i.ek, %i.ei
  %reass.add.1.i = add i32 %i.eu, %i.em
  %reass.mul.1.i = mul i32 %reass.add.1.i, %i.et
  %i.ev = add i32 %i.eb, %.2114.i
  %i.ew = add i32 %i.ev, %reass.mul.i
  %.4.i = add i32 %i.ew, %i.eq
  %.4.1.i = add i32 %.4.i, %reass.mul.1.i         ; 5 uses
  %i.ex = icmp ne i32 %.2114.i, %.4.1.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ey = icmp samesign ult i64 %indvars.iv.i, 64
  %or.cond137.i = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond137.i, label %.split.i, label %.split117.i, !llvm.loop !106

.split117.i:                                      ; preds = %.split.i
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next142.i, 65
  br i1 %exitcond.not.i, label %.preheader.1.i, label %.preheader.i, !llvm.loop !107

.preheader.1.i:                                   ; preds = %.split117.i, %.split117.1.i
  %indvars.iv141.1.i = phi i64 [ %indvars.iv.next142.1.i, %.split117.1.i ], [ 0, %.split117.i ] ; 7 uses
  %.1122.1.i = phi i32 [ %.4.1.1.i, %.split117.1.i ], [ 1, %.split117.i ]
  %i.ez = getelementptr inbounds nuw [520 x i8], ptr %i.a, i64 %indvars.iv141.1.i
  %i.fa = getelementptr inbounds nuw [520 x i8], ptr %i.b, i64 %indvars.iv141.1.i
  %i.fb = getelementptr inbounds nuw [520 x i8], ptr %i.f, i64 %indvars.iv141.1.i
  %i.fc = getelementptr inbounds nuw [520 x i8], ptr %i.g, i64 %indvars.iv141.1.i
  %i.fd = getelementptr inbounds nuw [130 x i8], ptr getelementptr inbounds nuw (i8, ptr @rl_length, i64 8450), i64 %indvars.iv141.1.i
  %i.fe = getelementptr inbounds nuw [130 x i8], ptr getelementptr inbounds nuw (i8, ptr @rl_length, i64 33800), i64 %indvars.iv141.1.i
  br label %.split.1.i

.split.1.i:                                       ; preds = %.split.1.i, %.preheader.1.i
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %.split.1.i ], [ 0, %.preheader.1.i ] ; 8 uses
  %.2114.1.i = phi i32 [ %.4.1.1.i, %.split.1.i ], [ %.1122.1.i, %.preheader.1.i ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.1.i ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.1.i ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.1.i ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.1.i ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv.1.i ; 2 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %indvars.iv.1.i ; 2 uses
  %i.fl = load i32, ptr %i.ff, align 4, !tbaa !78
  %i.fm = load i32, ptr %i.fg, align 4, !tbaa !78
  %i.fn = load i32, ptr %i.fh, align 4, !tbaa !78
  %i.fo = load i32, ptr %i.fi, align 4, !tbaa !78
  %i.fp = load i8, ptr %i.fj, align 2, !tbaa !16
  %i.fq = zext i8 %i.fp to i32
  %i.fr = mul nsw i32 %i.fl, %i.fq
  %i.fs = load i8, ptr %i.fk, align 2, !tbaa !16
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add i32 %i.fn, %i.fm
  %reass.add.1148.i = add i32 %i.fu, %i.fo
  %reass.mul.1149.i = mul i32 %reass.add.1148.i, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !78
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !78
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !78
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !78
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !16
  %i.gf = zext i8 %i.ge to i32
  %i.gg = mul nsw i32 %i.fw, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !16
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add i32 %i.ga, %i.fy
  %reass.add.1.1.i = add i32 %i.gk, %i.gc
  %reass.mul.1.1.i = mul i32 %reass.add.1.1.i, %i.gj
  %i.gl = add i32 %i.fr, %.2114.1.i
  %i.gm = add i32 %i.gl, %reass.mul.1149.i
  %.4.1150.i = add i32 %i.gm, %i.gg
  %.4.1.1.i = add i32 %.4.1150.i, %reass.mul.1.1.i ; 5 uses
  %i.gn = icmp ne i32 %.2114.1.i, %.4.1.1.i
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1
  %i.go = icmp samesign ult i64 %indvars.iv.1.i, 64
  %or.cond137.1.i = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond137.1.i, label %.split.1.i, label %.split117.1.i, !llvm.loop !106

.split117.1.i:                                    ; preds = %.split.1.i
  %indvars.iv.next142.1.i = add nuw nsw i64 %indvars.iv141.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next142.1.i, 65
  br i1 %exitcond.1.not.i, label %.preheader.2.i, label %.preheader.1.i, !llvm.loop !107

.preheader.2.i:                                   ; preds = %.split117.1.i, %.split117.2.i
  %indvars.iv141.2.i = phi i64 [ %indvars.iv.next142.2.i, %.split117.2.i ], [ 0, %.split117.1.i ] ; 7 uses
  %.1122.2.i = phi i32 [ %.4.1.2.i, %.split117.2.i ], [ 1, %.split117.1.i ]
  %i.gp = getelementptr inbounds nuw [520 x i8], ptr %i.a, i64 %indvars.iv141.2.i
  %i.gq = getelementptr inbounds nuw [520 x i8], ptr %i.b, i64 %indvars.iv141.2.i
  %i.gr = getelementptr inbounds nuw [520 x i8], ptr %i.f, i64 %indvars.iv141.2.i
  %i.gs = getelementptr inbounds nuw [520 x i8], ptr %i.g, i64 %indvars.iv141.2.i
  %i.gt = getelementptr inbounds nuw [130 x i8], ptr getelementptr inbounds nuw (i8, ptr @rl_length, i64 16900), i64 %indvars.iv141.2.i
  %i.gu = getelementptr inbounds nuw [130 x i8], ptr getelementptr inbounds nuw (i8, ptr @rl_length, i64 42250), i64 %indvars.iv141.2.i
  br label %.split.2.i

.split.2.i:                                       ; preds = %.split.2.i, %.preheader.2.i
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %.split.2.i ], [ 0, %.preheader.2.i ] ; 8 uses
  %.2114.2.i = phi i32 [ %.4.1.2.i, %.split.2.i ], [ %.1122.2.i, %.preheader.2.i ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.2.i ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.2.i ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.2.i ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.2.i ; 2 uses
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %indvars.iv.2.i ; 2 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %indvars.iv.2.i ; 2 uses
  %i.hb = load i32, ptr %i.gv, align 4, !tbaa !78
  %i.hc = load i32, ptr %i.gw, align 4, !tbaa !78
  %i.hd = load i32, ptr %i.gx, align 4, !tbaa !78
  %i.he = load i32, ptr %i.gy, align 4, !tbaa !78
  %i.hf = load i8, ptr %i.gz, align 2, !tbaa !16
  %i.hg = zext i8 %i.hf to i32
  %i.hh = mul nsw i32 %i.hb, %i.hg
  %i.hi = load i8, ptr %i.ha, align 2, !tbaa !16
  %i.hj = zext i8 %i.hi to i32
  %i.hk = add i32 %i.hd, %i.hc
  %reass.add.2.i = add i32 %i.hk, %i.he
  %reass.mul.2.i = mul i32 %reass.add.2.i, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !78
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !78
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !78
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !78
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !16
  %i.hv = zext i8 %i.hu to i32
  %i.hw = mul nsw i32 %i.hm, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !16
  %i.hz = zext i8 %i.hy to i32
  %i.ia = add i32 %i.hq, %i.ho
  %reass.add.1.2.i = add i32 %i.ia, %i.hs
  %reass.mul.1.2.i = mul i32 %reass.add.1.2.i, %i.hz
  %i.ib = add i32 %i.hh, %.2114.2.i
  %i.ic = add i32 %i.ib, %reass.mul.2.i
  %.4.2.i = add i32 %i.ic, %i.hw
  %.4.1.2.i = add i32 %.4.2.i, %reass.mul.1.2.i   ; 4 uses
  %i.id = icmp ne i32 %.2114.2.i, %.4.1.2.i
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1
  %i.ie = icmp samesign ult i64 %indvars.iv.2.i, 64
  %or.cond137.2.i = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond137.2.i, label %.split.2.i, label %.split117.2.i, !llvm.loop !106

.split117.2.i:                                    ; preds = %.split.2.i
  %indvars.iv.next142.2.i = add nuw nsw i64 %indvars.iv141.2.i, 1 ; 2 uses
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next142.2.i, 65
  br i1 %exitcond.2.not.i, label %.split125.2.i, label %.preheader.2.i, !llvm.loop !107

.split125.2.i:                                    ; preds = %.split117.2.i
  %i.if = icmp slt i32 %.4.1.1.i, %.4.1.i
  %spec.select104.1.i = zext i1 %i.if to i32
  %spec.select105.1.i = tail call i32 @llvm.smin.i32(i32 %.4.1.1.i, i32 %.4.1.i)
  %i.ig = icmp slt i32 %.4.1.2.i, %spec.select105.1.i
  %spec.select104.2.i = select i1 %i.ig, i32 2, i32 %spec.select104.1.i
  br label %.split134.us.i

.split134.us.i:                                   ; preds = %.split125.2.i, %.split125.us.us.2.i
  %.us-phi135.i = phi i32 [ %spec.select104.us.2.i, %.split125.us.us.2.i ], [ %spec.select104.2.i, %.split125.2.i ] ; 3 uses
  %.us-phi136.i = phi i32 [ %.196.us.2.i, %.split125.us.us.2.i ], [ 0, %.split125.2.i ]
  %i.ih = icmp eq i32 %i.d, 2                     ; 2 uses
  %spec.select106.i = select i1 %i.ih, i32 %.us-phi135.i, i32 %.us-phi136.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(135200) %i.f, i8 0, i64 135200, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 10996 ; 3 uses
  store i32 %.us-phi135.i, ptr %i.ii, align 4, !tbaa !89
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 11000 ; 3 uses
  store i32 %spec.select106.i, ptr %i.ij, align 8, !tbaa !90
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 10460
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !108
  %.not.i = icmp eq i32 %i.d, %i.il
  br i1 %.not.i, label %put_bits.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %.split134.us.i
  store i32 2, ptr %i.ii, align 4, !tbaa !89
  %..i = select i1 %i.e, i32 1, i32 2
  store i32 %..i, ptr %i.ij, align 8, !tbaa !90
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %.split134.us.i, %.sink.split.i
  %i.im = phi i32 [ %.us-phi135.i, %.split134.us.i ], [ 2, %.sink.split.i ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 14 uses
  %i.io = getelementptr i8, ptr %0, i64 4388      ; 10 uses
  %i.ip = load i32, ptr %i.in, align 16, !tbaa !9
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !99
  %i.is = shl i32 %i.ip, 7
  %i.it = shl i32 %i.d, 5
  %i.iu = add i32 %i.it, -32
  %i.iv = or i32 %i.is, %i.iu
  %i.iw = or i32 %i.iv, %i.ir                     ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 3784 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !74 ; 6 uses
  %i.iz = icmp ult i32 %i.iy, 3
  br i1 %i.iz, label %.thread, label %bb.b

.thread:                                          ; preds = %put_bits.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 11004
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 10992 ; 2 uses
  store <4 x i32> <i32 1, i32 2, i32 2, i32 1>, ptr %i.jb, align 16, !tbaa !78
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 11008
  store i32 1, ptr %i.jc, align 16, !tbaa !109
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 11012 ; 2 uses
  store i32 0, ptr %i.jd, align 4, !tbaa !110
  br label %bb.e

bb.b:                                             ; preds = %put_bits.exit
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 11004 ; 4 uses
  store i32 1, ptr %i.je, align 4, !tbaa !88
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 10992 ; 3 uses
  store i32 1, ptr %i.jf, align 16, !tbaa !76
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 11008
  store i32 1, ptr %i.jg, align 16, !tbaa !109
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 11012 ; 3 uses
  store i32 0, ptr %i.jh, align 4, !tbaa !110
  %i.ji = icmp eq i32 %i.iy, 4
  br i1 %i.ji, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.jk = load i32, ptr %i.jj, align 16, !tbaa !111
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !112
  %i.jn = mul nsw i32 %i.jm, %i.jk
  %i.jo = icmp slt i32 %i.jn, 76800
  br i1 %i.jo, label %bb.d, label %.thread103

bb.d:                                             ; preds = %bb.c
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.jq = load i64, ptr %i.jp, align 16, !tbaa !67
  %i.jr = icmp slt i64 %i.jq, 131073
  %narrow = and i1 %i.jr, %i.ih
  %spec.select = zext i1 %narrow to i32
  br label %.thread103

bb.e:                                             ; preds = %.thread, %bb.b
  %i.js = phi i32 [ 2, %.thread ], [ %i.im, %bb.b ] ; 2 uses
  %i.jt = phi ptr [ %i.jd, %.thread ], [ %i.jh, %bb.b ]
  %i.ju = phi ptr [ %i.jb, %.thread ], [ %i.jf, %bb.b ] ; 2 uses
  %i.jv = phi ptr [ %i.ja, %.thread ], [ %i.je, %bb.b ] ; 3 uses
  br i1 %i.e, label %put_bits.exit64, label %put_bits.exit76

.thread103:                                       ; preds = %bb.d, %bb.c
  %i.jw = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.c ]
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 3788
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !113
  br i1 %i.e, label %put_bits.exit64, label %put_bits.exit76.thread

put_bits.exit76.thread:                           ; preds = %.thread103
  %i.jy = shl i32 %i.iw, 1
  %i.jz = or disjoint i32 %i.jy, 1                ; 2 uses
  store i32 %i.jz, ptr %i.in, align 16, !tbaa !9
  store i32 24, ptr %i.io, align 4, !tbaa !13
  br label %bb.t

put_bits.exit64:                                  ; preds = %.thread103, %bb.e
  %i.ka = phi ptr [ %i.je, %.thread103 ], [ %i.jv, %bb.e ]
  %i.kb = phi ptr [ %i.jh, %.thread103 ], [ %i.jt, %bb.e ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !114
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 6520
  store i32 %i.kd, ptr %i.ke, align 8, !tbaa !80
  %i.kf = shl i32 %i.iw, 5
  %i.kg = or disjoint i32 %i.kf, 23
  store i32 %i.kg, ptr %i.in, align 16, !tbaa !9
  store i32 20, ptr %i.io, align 4, !tbaa !13
  %i.kh = icmp eq i32 %i.iy, 4
  br i1 %i.kh, label %bb.f, label %bb.l

bb.f:                                             ; preds = %put_bits.exit64
  tail call void @ff_msmpeg4_encode_ext_header(ptr noundef nonnull %0)
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.kj = load i64, ptr %i.ki, align 16, !tbaa !67
  %i.kk = icmp sgt i64 %i.kj, 51200
  br i1 %i.kk, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.kl = load i32, ptr %i.kb, align 4, !tbaa !110 ; 4 uses
  %i.km = load i32, ptr %i.in, align 16, !tbaa !9 ; 2 uses
  %i.kn = load i32, ptr %i.io, align 4, !tbaa !13 ; 4 uses
  %i.ko = icmp sgt i32 %i.kn, 1
  br i1 %i.ko, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.kp = shl i32 %i.km, 1
  %i.kq = or i32 %i.kp, %i.kl
  br label %put_bits.exit68

bb.i:                                             ; preds = %bb.g
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !14
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.ku = load ptr, ptr %i.kt, align 16, !tbaa !15 ; 2 uses
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = icmp ugt i64 %i.kx, 3
  br i1 %i.ky, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.kz = shl i32 %i.km, %i.kn
  %i.la = sub nsw i32 1, %i.kn
  %i.lb = lshr i32 %i.kl, %i.la
  %i.lc = or i32 %i.lb, %i.kz
  %i.ld = tail call i32 @llvm.bswap.i32(i32 %i.lc)
  store i32 %i.ld, ptr %i.ku, align 1, !tbaa !16
  %i.le = load ptr, ptr %i.kt, align 16, !tbaa !15
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store ptr %i.lf, ptr %i.kt, align 16, !tbaa !15
  br label %put_bits.exit68

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit68

put_bits.exit68:                                  ; preds = %bb.j, %bb.k, %bb.h
  %.sink = phi i32 [ -1, %bb.h ], [ 31, %bb.k ], [ 31, %bb.j ]
  %.026.i.i66 = phi i32 [ %i.kq, %bb.h ], [ %i.kl, %bb.k ], [ %i.kl, %bb.j ]
  %i.lg = add nsw i32 %i.kn, %.sink
  store i32 %.026.i.i66, ptr %i.in, align 16, !tbaa !9
  store i32 %i.lg, ptr %i.io, align 4, !tbaa !13
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %put_bits.exit68, %bb.f
  %.pr = load i32, ptr %i.ix, align 8, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %put_bits.exit64
  %i.lh = phi i32 [ %.pr, %thread-pre-split ], [ %i.iy, %put_bits.exit64 ]
  %i.li = icmp ugt i32 %i.lh, 2
  br i1 %i.li, label %bb.m, label %bb.ac

bb.m:                                             ; preds = %bb.l
  %i.lj = load i32, ptr %i.kb, align 4, !tbaa !110
  %.not56 = icmp eq i32 %i.lj, 0
  br i1 %.not56, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.lk = load i32, ptr %i.ij, align 8, !tbaa !90
  tail call void @ff_msmpeg4_code012(ptr noundef nonnull %i.in, i32 noundef %i.lk)
  %i.ll = load i32, ptr %i.ii, align 4, !tbaa !89
  tail call void @ff_msmpeg4_code012(ptr noundef nonnull %i.in, i32 noundef %i.ll)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.lm = load i32, ptr %i.ka, align 4, !tbaa !88 ; 4 uses
  %i.ln = load i32, ptr %i.in, align 16, !tbaa !9 ; 2 uses
  %i.lo = load i32, ptr %i.io, align 4, !tbaa !13 ; 4 uses
  %i.lp = icmp sgt i32 %i.lo, 1
  br i1 %i.lp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.lq = shl i32 %i.ln, 1
  %i.lr = or i32 %i.lq, %i.lm
  br label %put_bits.exit72

bb.q:                                             ; preds = %bb.o
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !14
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.lv = load ptr, ptr %i.lu, align 16, !tbaa !15 ; 2 uses
  %i.lw = ptrtoint ptr %i.lt to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = icmp ugt i64 %i.ly, 3
  br i1 %i.lz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ma = shl i32 %i.ln, %i.lo
  %i.mb = sub nsw i32 1, %i.lo
  %i.mc = lshr i32 %i.lm, %i.mb
  %i.md = or i32 %i.mc, %i.ma
  %i.me = tail call i32 @llvm.bswap.i32(i32 %i.md)
  store i32 %i.me, ptr %i.lv, align 1, !tbaa !16
  %i.mf = load ptr, ptr %i.lu, align 16, !tbaa !15
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  store ptr %i.mg, ptr %i.lu, align 16, !tbaa !15
  br label %put_bits.exit72

bb.s:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit72

put_bits.exit72:                                  ; preds = %bb.r, %bb.s, %bb.p
  %.sink106 = phi i32 [ -1, %bb.p ], [ 31, %bb.s ], [ 31, %bb.r ]
  %.026.i.i70 = phi i32 [ %i.lr, %bb.p ], [ %i.lm, %bb.s ], [ %i.lm, %bb.r ]
  %i.mh = add nsw i32 %i.lo, %.sink106
  br label %.sink.split

put_bits.exit76:                                  ; preds = %bb.e
  %i.mi = shl i32 %i.iw, 1
  %i.mj = or disjoint i32 %i.mi, 1                ; 2 uses
  store i32 %i.mj, ptr %i.in, align 16, !tbaa !9
  store i32 24, ptr %i.io, align 4, !tbaa !13
  %i.mk = icmp eq i32 %i.iy, 4
  br i1 %i.mk, label %bb.t, label %thread-pre-split89

bb.t:                                             ; preds = %put_bits.exit76.thread, %put_bits.exit76
  %i.ml = phi i32 [ %i.jz, %put_bits.exit76.thread ], [ %i.mj, %put_bits.exit76 ]
  %i.mm = phi i32 [ %i.im, %put_bits.exit76.thread ], [ %i.js, %put_bits.exit76 ] ; 2 uses
  %i.mn = phi ptr [ %i.jf, %put_bits.exit76.thread ], [ %i.ju, %put_bits.exit76 ] ; 2 uses
  %i.mo = phi ptr [ %i.je, %put_bits.exit76.thread ], [ %i.jv, %put_bits.exit76 ] ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.mq = load i64, ptr %i.mp, align 16, !tbaa !67
  %i.mr = icmp sgt i64 %i.mq, 51200
  br i1 %i.mr, label %put_bits.exit80, label %thread-pre-split89.thread

put_bits.exit80:                                  ; preds = %bb.t
  %i.ms = shl i32 %i.ml, 1
  store i32 %i.ms, ptr %i.in, align 16, !tbaa !9
  store i32 23, ptr %i.io, align 4, !tbaa !13
  br label %thread-pre-split89.thread

thread-pre-split89:                               ; preds = %put_bits.exit76
  %i.mt = icmp ugt i32 %i.iy, 2
  br i1 %i.mt, label %thread-pre-split89.thread, label %bb.ac

thread-pre-split89.thread:                        ; preds = %bb.t, %put_bits.exit80, %thread-pre-split89
  %i.mu = phi ptr [ %i.jv, %thread-pre-split89 ], [ %i.mo, %put_bits.exit80 ], [ %i.mo, %bb.t ]
  %i.mv = phi ptr [ %i.ju, %thread-pre-split89 ], [ %i.mn, %put_bits.exit80 ], [ %i.mn, %bb.t ]
  %i.mw = phi i32 [ %i.js, %thread-pre-split89 ], [ %i.mm, %put_bits.exit80 ], [ %i.mm, %bb.t ]
  tail call void @ff_msmpeg4_code012(ptr noundef nonnull %i.in, i32 noundef %i.mw)
  %.pre = load i32, ptr %i.mu, align 4, !tbaa !88 ; 4 uses
  %.pre95 = load i32, ptr %i.in, align 16, !tbaa !9 ; 2 uses
  %.pre96 = load i32, ptr %i.io, align 4, !tbaa !13 ; 4 uses
  %i.mx = icmp sgt i32 %.pre96, 1
  br i1 %i.mx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %thread-pre-split89.thread
  %i.my = shl i32 %.pre95, 1
  %i.mz = or i32 %i.my, %.pre
  br label %put_bits.exit84

bb.v:                                             ; preds = %thread-pre-split89.thread
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !14
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.nd = load ptr, ptr %i.nc, align 16, !tbaa !15 ; 2 uses
  %i.ne = ptrtoint ptr %i.nb to i64
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = icmp ugt i64 %i.ng, 3
  br i1 %i.nh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ni = shl i32 %.pre95, %.pre96
  %i.nj = sub nsw i32 1, %.pre96
  %i.nk = lshr i32 %.pre, %i.nj
  %i.nl = or i32 %i.nk, %i.ni
  %i.nm = tail call i32 @llvm.bswap.i32(i32 %i.nl)
  store i32 %i.nm, ptr %i.nd, align 1, !tbaa !16
  %i.nn = load ptr, ptr %i.nc, align 16, !tbaa !15
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  store ptr %i.no, ptr %i.nc, align 16, !tbaa !15
  br label %put_bits.exit84

bb.x:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit84

put_bits.exit84:                                  ; preds = %bb.w, %bb.x, %bb.u
  %.sink107 = phi i32 [ -1, %bb.u ], [ 31, %bb.x ], [ 31, %bb.w ]
  %.026.i.i82 = phi i32 [ %i.mz, %bb.u ], [ %.pre, %bb.x ], [ %.pre, %bb.w ] ; 3 uses
  %i.np = add nsw i32 %.pre96, %.sink107          ; 5 uses
  store i32 %.026.i.i82, ptr %i.in, align 16, !tbaa !9
  store i32 %i.np, ptr %i.io, align 4, !tbaa !13
  %i.nq = load i32, ptr %i.mv, align 16, !tbaa !76 ; 4 uses
  %i.nr = icmp sgt i32 %i.np, 1
  br i1 %i.nr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %put_bits.exit84
  %i.ns = shl i32 %.026.i.i82, 1
  %i.nt = or i32 %i.nq, %i.ns
  br label %put_bits.exit88

bb.z:                                             ; preds = %put_bits.exit84
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !14
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.nx = load ptr, ptr %i.nw, align 16, !tbaa !15 ; 2 uses
  %i.ny = ptrtoint ptr %i.nv to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = icmp ugt i64 %i.oa, 3
  br i1 %i.ob, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.oc = shl i32 %.026.i.i82, %i.np
  %i.od = sub nsw i32 1, %i.np
  %i.oe = lshr i32 %i.nq, %i.od
  %i.of = or i32 %i.oe, %i.oc
  %i.og = tail call i32 @llvm.bswap.i32(i32 %i.of)
  store i32 %i.og, ptr %i.nx, align 1, !tbaa !16
  %i.oh = load ptr, ptr %i.nw, align 16, !tbaa !15
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  store ptr %i.oi, ptr %i.nw, align 16, !tbaa !15
  br label %put_bits.exit88

bb.ab:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit88

put_bits.exit88:                                  ; preds = %bb.aa, %bb.ab, %bb.y
  %.sink108 = phi i32 [ -1, %bb.y ], [ 31, %bb.ab ], [ 31, %bb.aa ]
  %.026.i.i86 = phi i32 [ %i.nt, %bb.y ], [ %i.nq, %bb.ab ], [ %i.nq, %bb.aa ]
  %i.oj = add nsw i32 %i.np, %.sink108
  br label %.sink.split

.sink.split:                                      ; preds = %put_bits.exit72, %put_bits.exit88
  %.026.i.i86.sink = phi i32 [ %.026.i.i86, %put_bits.exit88 ], [ %.026.i.i70, %put_bits.exit72 ]
  %.sink109 = phi i32 [ %i.oj, %put_bits.exit88 ], [ %i.mh, %put_bits.exit72 ]
  store i32 %.026.i.i86.sink, ptr %i.in, align 16, !tbaa !9
  store i32 %.sink109, ptr %i.io, align 4, !tbaa !13
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %thread-pre-split89, %bb.l
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 6528
  store i32 0, ptr %i.ok, align 16, !tbaa !97
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 11016
  store i32 0, ptr %i.ol, align 8, !tbaa !98
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @msmpeg4_encode_mb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %ff_msmpeg4_handle_slices.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6520
  %i.h = load i32, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !81
  %i.k = srem i32 %i.j, %i.h
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.n = load i32, ptr %i.m, align 8, !tbaa !74
  %i.o = icmp ult i32 %i.n, 4
  br i1 %i.o, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  tail call void @ff_mpeg4_clean_buffers(ptr noundef nonnull %0) #10
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i = phi i32 [ 1, %bb.d ], [ 1, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3780
  store i32 %.sink.i, ptr %i.p, align 4, !tbaa !82
  br label %ff_msmpeg4_handle_slices.exit

ff_msmpeg4_handle_slices.exit:                    ; preds = %bb.a, %.sink.split.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.r = load i32, ptr %i.q, align 4, !tbaa !83
  %.not = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !78   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !78   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !78   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !78   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !78 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !78 ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader208

.preheader208:                                    ; preds = %ff_msmpeg4_handle_slices.exit
  %i.ae = icmp sgt i32 %i.t, 0
  %i.af = select i1 %i.ae, i32 32, i32 0
  %i.ag = icmp sgt i32 %i.v, 0
  %i.ah = select i1 %i.ag, i32 16, i32 0
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = icmp sgt i32 %i.x, 0
  %i.ak = select i1 %i.aj, i32 8, i32 0
  %i.al = or disjoint i32 %i.ak, %i.ai
  %i.am = icmp sgt i32 %i.z, 0
  %i.an = select i1 %i.am, i32 4, i32 0
  %i.ao = or disjoint i32 %i.an, %i.al            ; 2 uses
  %i.ap = icmp sgt i32 %i.ab, 0
  %i.aq = select i1 %i.ap, i32 2, i32 0
  %i.ar = icmp sgt i32 %i.ad, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as            ; 4 uses
  %i.au = or disjoint i32 %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !74
  %i.ax = icmp ult i32 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.az = load i32, ptr %i.ay, align 16, !tbaa !105
  %i.ba = icmp eq i32 %i.az, 1                    ; 2 uses
  br i1 %i.ax, label %bb.an, label %bb.bp

.preheader:                                       ; preds = %ff_msmpeg4_handle_slices.exit
  %i.bb = icmp slt i32 %i.t, 0
  %i.bc = select i1 %i.bb, i32 0, i32 32
  %i.bd = icmp slt i32 %i.v, 0
  %i.be = select i1 %i.bd, i32 0, i32 16
  %.1.1 = or disjoint i32 %i.be, %i.bc
  %i.bf = icmp slt i32 %i.x, 0
  %i.bg = select i1 %i.bf, i32 0, i32 8
  %.1.2 = or disjoint i32 %i.bg, %.1.1
  %i.bh = icmp slt i32 %i.z, 0
  %i.bi = select i1 %i.bh, i32 0, i32 4
  %.1.3 = or disjoint i32 %i.bi, %.1.2            ; 2 uses
  %i.bj = icmp slt i32 %i.ab, 0
  %i.bk = select i1 %i.bj, i32 0, i32 2
  %i.bl = icmp sgt i32 %i.ad, -1
  %i.bm = zext i1 %i.bl to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm            ; 3 uses
  %.1.5 = or disjoint i32 %i.bn, %.1.3            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 11008
  %i.bp = load i32, ptr %i.bo, align 16, !tbaa !109
  %.not120 = icmp eq i32 %i.bp, 0
  br i1 %.not120, label %.thread, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.bq = or i32 %3, %2
  %i.br = or i32 %i.bq, %.1.5
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 16, !tbaa !9 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !13 ; 6 uses
  %i.bx = icmp sgt i32 %i.bw, 1                   ; 2 uses
  br i1 %i.bs, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = shl i32 %i.bu, 1
  %i.bz = or disjoint i32 %i.by, 1
  br label %put_bits.exit

bb.i:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !15 ; 2 uses
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp ugt i64 %i.cg, 3
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ci = shl i32 %i.bu, %i.bw
  %i.cj = icmp eq i32 %i.bw, 1
  %i.ck = zext i1 %i.cj to i32
  %i.cl = or i32 %i.ci, %i.ck
  %i.cm = tail call i32 @llvm.bswap.i32(i32 %i.cl)
  store i32 %i.cm, ptr %i.cd, align 1, !tbaa !16
  %i.cn = load ptr, ptr %i.cc, align 16, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store ptr %i.co, ptr %i.cc, align 16, !tbaa !15
  br label %put_bits.exit

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.j, %bb.k, %bb.h
  %.sink = phi i32 [ -1, %bb.h ], [ 31, %bb.k ], [ 31, %bb.j ]
  %.026.i.i = phi i32 [ %i.bz, %bb.h ], [ 1, %bb.k ], [ 1, %bb.j ]
  %i.cp = add nsw i32 %i.bw, %.sink
  store i32 %.026.i.i, ptr %i.bt, align 16, !tbaa !9
  store i32 %i.cp, ptr %i.bv, align 4, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.cr = load <2 x i32>, ptr %i.cq, align 4, !tbaa !78
  %i.cs = add nsw <2 x i32> %i.cr, splat (i32 1)
  store <2 x i32> %i.cs, ptr %i.cq, align 4, !tbaa !78
  br label %bb.ct

bb.l:                                             ; preds = %bb.f
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ct = shl i32 %i.bu, 1
  br label %put_bits.exit129

bb.n:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 16, !tbaa !15 ; 2 uses
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = icmp ugt i64 %i.da, 3
  br i1 %i.db, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dc = shl i32 %i.bu, %i.bw
  %i.dd = tail call i32 @llvm.bswap.i32(i32 %i.dc)
  store i32 %i.dd, ptr %i.cx, align 1, !tbaa !16
  %i.de = load ptr, ptr %i.cw, align 16, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store ptr %i.df, ptr %i.cw, align 16, !tbaa !15
  br label %put_bits.exit129

bb.p:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit129

put_bits.exit129:                                 ; preds = %bb.o, %bb.p, %bb.m
  %.sink283 = phi i32 [ -1, %bb.m ], [ 31, %bb.p ], [ 31, %bb.o ]
  %.026.i.i127 = phi i32 [ %i.ct, %bb.m ], [ 0, %bb.p ], [ 0, %bb.o ]
  %i.dg = add nsw i32 %i.bw, %.sink283
  store i32 %.026.i.i127, ptr %i.bt, align 16, !tbaa !9
  store i32 %i.dg, ptr %i.bv, align 4, !tbaa !13
  br label %.thread

.thread:                                          ; preds = %.preheader, %put_bits.exit129
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !74
  %i.dj = icmp ult i32 %i.di, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 7 uses
  br i1 %i.dj, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %.thread
  %i.dl = zext nneg i32 %i.bn to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr @ff_v2_mb_type, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = zext i8 %i.do to i32                    ; 5 uses
  %i.dq = load i8, ptr %i.dm, align 2, !tbaa !16
  %i.dr = zext i8 %i.dq to i32                    ; 3 uses
  %i.ds = load i32, ptr %i.dk, align 16, !tbaa !9 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 4 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !13 ; 5 uses
  %i.dv = icmp sgt i32 %i.du, %i.dp
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dw = shl i32 %i.ds, %i.dp
  %i.dx = or i32 %i.dw, %i.dr
  %i.dy = sub nsw i32 %i.du, %i.dp
  br label %put_bits.exit133

bb.s:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 16, !tbaa !15 ; 2 uses
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = icmp ugt i64 %i.ef, 3
  br i1 %i.eg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eh = shl i32 %i.ds, %i.du
  %i.ei = sub nsw i32 %i.dp, %i.du
  %i.ej = lshr i32 %i.dr, %i.ei
  %i.ek = or i32 %i.ej, %i.eh
  %i.el = tail call i32 @llvm.bswap.i32(i32 %i.ek)
  store i32 %i.el, ptr %i.ec, align 1, !tbaa !16
  %i.em = load ptr, ptr %i.eb, align 16, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store ptr %i.en, ptr %i.eb, align 16, !tbaa !15
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %reass.sub222 = sub i32 %i.du, %i.dp
  %i.eo = add i32 %reass.sub222, 32
  br label %put_bits.exit133

put_bits.exit133:                                 ; preds = %bb.r, %bb.v
  %.026.i.i131 = phi i32 [ %i.dx, %bb.r ], [ %i.dr, %bb.v ] ; 3 uses
  %.0.i.i132 = phi i32 [ %i.dy, %bb.r ], [ %i.eo, %bb.v ] ; 6 uses
  store i32 %.026.i.i131, ptr %i.dk, align 16, !tbaa !9
  store i32 %.0.i.i132, ptr %i.dt, align 4, !tbaa !13
  %.not122 = icmp eq i32 %i.bn, 3
  %i.ep = lshr exact i32 %.1.3, 2                 ; 2 uses
  %i.eq = xor i32 %i.ep, 15
  %i.er = select i1 %.not122, i32 %i.ep, i32 %i.eq
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [2 x i8], ptr @ff_h263_cbpy_tab, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !16
  %i.ew = zext i8 %i.ev to i32                    ; 4 uses
  %i.ex = load i8, ptr %i.et, align 2, !tbaa !16
  %i.ey = zext i8 %i.ex to i32                    ; 3 uses
  %i.ez = icmp sgt i32 %.0.i.i132, %i.ew
  br i1 %i.ez, label %bb.w, label %bb.x

bb.w:                                             ; preds = %put_bits.exit133
  %i.fa = shl i32 %.026.i.i131, %i.ew
  %i.fb = or i32 %i.fa, %i.ey
  br label %put_bits.exit137

bb.x:                                             ; preds = %put_bits.exit133
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !14
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.ff = load ptr, ptr %i.fe, align 16, !tbaa !15 ; 2 uses
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = icmp ugt i64 %i.fi, 3
  br i1 %i.fj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fk = shl i32 %.026.i.i131, %.0.i.i132
  %i.fl = sub nsw i32 %i.ew, %.0.i.i132
  %i.fm = lshr i32 %i.ey, %i.fl
  %i.fn = or i32 %i.fm, %i.fk
  %i.fo = tail call i32 @llvm.bswap.i32(i32 %i.fn)
  store i32 %i.fo, ptr %i.ff, align 1, !tbaa !16
  %i.fp = load ptr, ptr %i.fe, align 16, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store ptr %i.fq, ptr %i.fe, align 16, !tbaa !15
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %reass.sub.i134 = add nsw i32 %.0.i.i132, 32
  br label %put_bits.exit137

put_bits.exit137:                                 ; preds = %bb.w, %bb.aa
  %.026.i.i135 = phi i32 [ %i.fb, %bb.w ], [ %i.ey, %bb.aa ]
  %.0.i.i132.pn = phi i32 [ %.0.i.i132, %bb.w ], [ %reass.sub.i134, %bb.aa ]
  %.0.i.i136 = sub i32 %.0.i.i132.pn, %i.ew       ; 2 uses
  store i32 %.026.i.i135, ptr %i.dk, align 16, !tbaa !9
  store i32 %.0.i.i136, ptr %i.dt, align 4, !tbaa !13
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.fs = load ptr, ptr %i.fr, align 16, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !115
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.tr.i.i = trunc i64 %i.fx to i32
  %i.fy = shl i32 %.tr.i.i, 3
  %reass.sub.i.i = sub i32 %i.fy, %.0.i.i136
  %i.fz = add i32 %reass.sub.i.i, 32              ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 16, !tbaa !116
  store i32 %i.fz, ptr %i.ga, align 16, !tbaa !116
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !117
  %i.ge = sub i32 %i.gd, %i.gb
  %i.gf = add i32 %i.ge, %i.fz
  store i32 %i.gf, ptr %i.gc, align 4, !tbaa !117
  %i.gg = call ptr @ff_h263_pred_motion(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.gh = load i32, ptr %i.a, align 4, !tbaa !78
  %i.gi = sub nsw i32 %2, %i.gh
  call fastcc void @msmpeg4v2_encode_motion(ptr noundef nonnull %0, i32 noundef %i.gi)
  %i.gj = load i32, ptr %i.b, align 4, !tbaa !78
  %i.gk = sub nsw i32 %3, %i.gj
  call fastcc void @msmpeg4v2_encode_motion(ptr noundef nonnull %0, i32 noundef %i.gk)
  %.pre237 = load i32, ptr %i.dt, align 4, !tbaa !13
  br label %bb.am

bb.ab:                                            ; preds = %.thread
  %i.gl = zext nneg i32 %.1.5 to i64
  %i.gm = getelementptr [8 x i8], ptr @ff_table_mb_non_intra, i64 %i.gl ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 512
  %i.go = getelementptr i8, ptr %i.gm, i64 516
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !78 ; 5 uses
  %i.gq = load i32, ptr %i.gn, align 8, !tbaa !78 ; 3 uses
  %i.gr = load i32, ptr %i.dk, align 16, !tbaa !9 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 4 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !13 ; 5 uses
  %i.gu = icmp slt i32 %i.gp, %i.gt
  br i1 %i.gu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gv = shl i32 %i.gr, %i.gp
  %i.gw = or i32 %i.gv, %i.gq
  %i.gx = sub nsw i32 %i.gt, %i.gp
  br label %put_bits.exit141

bb.ad:                                            ; preds = %bb.ab
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !14
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.hb = load ptr, ptr %i.ha, align 16, !tbaa !15 ; 2 uses
  %i.hc = ptrtoint ptr %i.gz to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = icmp ugt i64 %i.he, 3
  br i1 %i.hf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hg = shl i32 %i.gr, %i.gt
  %i.hh = sub nsw i32 %i.gp, %i.gt
  %i.hi = lshr i32 %i.gq, %i.hh
  %i.hj = or i32 %i.hi, %i.hg
  %i.hk = tail call i32 @llvm.bswap.i32(i32 %i.hj)
  store i32 %i.hk, ptr %i.hb, align 1, !tbaa !16
  %i.hl = load ptr, ptr %i.ha, align 16, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store ptr %i.hm, ptr %i.ha, align 16, !tbaa !15
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %reass.sub220 = sub i32 %i.gt, %i.gp
  %i.hn = add i32 %reass.sub220, 32
  br label %put_bits.exit141

put_bits.exit141:                                 ; preds = %bb.ac, %bb.ag
  %.026.i.i139 = phi i32 [ %i.gw, %bb.ac ], [ %i.gq, %bb.ag ]
  %.0.i.i140 = phi i32 [ %i.gx, %bb.ac ], [ %i.hn, %bb.ag ] ; 2 uses
  store i32 %.026.i.i139, ptr %i.dk, align 16, !tbaa !9
  store i32 %.0.i.i140, ptr %i.gs, align 4, !tbaa !13
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 4 uses
  %i.hp = load ptr, ptr %i.ho, align 16, !tbaa !15
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !115
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %.tr.i.i142 = trunc i64 %i.hu to i32
  %i.hv = shl i32 %.tr.i.i142, 3
  %reass.sub.i.i143 = sub i32 %i.hv, %.0.i.i140
  %i.hw = add i32 %reass.sub.i.i143, 32           ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 16, !tbaa !116
  store i32 %i.hw, ptr %i.hx, align 16, !tbaa !116
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !117
  %i.ib = sub i32 %i.ia, %i.hy
  %i.ic = add i32 %i.ib, %i.hw
  store i32 %i.ic, ptr %i.hz, align 4, !tbaa !117
  %i.id = call ptr @ff_h263_pred_motion(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.ie = load i32, ptr %i.a, align 4, !tbaa !78
  %i.if = sub nsw i32 %2, %i.ie                   ; 5 uses
  %i.ig = load i32, ptr %i.b, align 4, !tbaa !78
  %i.ih = sub nsw i32 %3, %i.ig                   ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 10992
  %i.ij = load i32, ptr %i.ii, align 16, !tbaa !76
  %i.ik = icmp slt i32 %i.if, -63
  %i.il = add nsw i32 %i.if, 64
  %i.im = icmp sgt i32 %i.if, 63
  %i.in = add nuw i32 %i.if, 67108800
  %spec.select.i = select i1 %i.im, i32 %i.in, i32 %i.if
  %.017.i = select i1 %i.ik, i32 %i.il, i32 %spec.select.i
  %i.io = icmp slt i32 %i.ih, -63
  %i.ip = add nsw i32 %i.ih, 64
  %i.iq = icmp sgt i32 %i.ih, 63
  %i.ir = add nsw i32 %i.ih, -64
  %spec.select21.i = select i1 %i.iq, i32 %i.ir, i32 %i.ih
  %.0.i = select i1 %i.io, i32 %i.ip, i32 %spec.select21.i
  %i.is = sext i32 %i.ij to i64
  %i.it = getelementptr inbounds [16384 x i8], ptr @mv_vector_tables, i64 %i.is
  %i.iu = add nsw i32 %.0.i, 32
  %i.iv = shl i32 %.017.i, 6
  %i.iw = add i32 %i.iv, 2048
  %i.ix = or i32 %i.iw, %i.iu
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !78 ; 2 uses
  %i.jb = and i32 %i.ja, 255                      ; 5 uses
  %i.jc = lshr i32 %i.ja, 8                       ; 3 uses
  %i.jd = load i32, ptr %i.dk, align 16, !tbaa !9 ; 2 uses
  %i.je = load i32, ptr %i.gs, align 4, !tbaa !13 ; 5 uses
  %i.jf = icmp slt i32 %i.jb, %i.je
  br i1 %i.jf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %put_bits.exit141
  %i.jg = shl i32 %i.jd, %i.jb
  %i.jh = or i32 %i.jg, %i.jc
  %i.ji = sub nsw i32 %i.je, %i.jb
  br label %ff_msmpeg4_encode_motion.exit

bb.ai:                                            ; preds = %put_bits.exit141
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !14
  %i.jl = load ptr, ptr %i.ho, align 16, !tbaa !15 ; 2 uses
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = icmp ugt i64 %i.jo, 3
  br i1 %i.jp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.jq = shl i32 %i.jd, %i.je
  %i.jr = sub nsw i32 %i.jb, %i.je
  %i.js = lshr i32 %i.jc, %i.jr
  %i.jt = or i32 %i.js, %i.jq
  %i.ju = call i32 @llvm.bswap.i32(i32 %i.jt)
  store i32 %i.ju, ptr %i.jl, align 1, !tbaa !16
  %i.jv = load ptr, ptr %i.ho, align 16, !tbaa !15
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store ptr %i.jw, ptr %i.ho, align 16, !tbaa !15
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %reass.sub221 = sub i32 %i.je, %i.jb
  %i.jx = add i32 %reass.sub221, 32
  br label %ff_msmpeg4_encode_motion.exit

ff_msmpeg4_encode_motion.exit:                    ; preds = %bb.ah, %bb.al
  %.026.i.i.i = phi i32 [ %i.jh, %bb.ah ], [ %i.jc, %bb.al ]
  %.0.i.i.i = phi i32 [ %i.ji, %bb.ah ], [ %i.jx, %bb.al ] ; 2 uses
  store i32 %.026.i.i.i, ptr %i.dk, align 16, !tbaa !9
  store i32 %.0.i.i.i, ptr %i.gs, align 4, !tbaa !13
  br label %bb.am

bb.am:                                            ; preds = %ff_msmpeg4_encode_motion.exit, %put_bits.exit137
  %i.jy = phi i32 [ %.0.i.i.i, %ff_msmpeg4_encode_motion.exit ], [ %.pre237, %put_bits.exit137 ]
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 16, !tbaa !15
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !115
  %i.kd = ptrtoint ptr %i.ka to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %.tr.i.i145 = trunc i64 %i.kf to i32
  %i.kh = shl i32 %.tr.i.i145, 3
  %reass.sub.i.i146 = sub i32 %i.kh, %i.jy
  %i.ki = add i32 %reass.sub.i.i146, 32           ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 4 uses
  %i.kk = load i32, ptr %i.kj, align 16, !tbaa !116
  store i32 %i.ki, ptr %i.kj, align 16, !tbaa !116
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 6332 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !118
  %i.kn = sub i32 %i.km, %i.kk
  %i.ko = add i32 %i.kn, %i.ki
  store i32 %i.ko, ptr %i.kl, align 4, !tbaa !118
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0)
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.kp, i32 noundef 1)
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.kq, i32 noundef 2)
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.kr, i32 noundef 3)
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.ks, i32 noundef 4)
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 640
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.kt, i32 noundef 5)
  %i.ku = load ptr, ptr %i.jz, align 16, !tbaa !15
  %i.kv = load ptr, ptr %i.kb, align 8, !tbaa !115
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = load i32, ptr %i.kg, align 4, !tbaa !13
  %.tr.i.i147 = trunc i64 %i.ky to i32
  %i.la = shl i32 %.tr.i.i147, 3
  %reass.sub.i.i148 = sub i32 %i.la, %i.kz
  %i.lb = add i32 %reass.sub.i.i148, 32           ; 2 uses
  %i.lc = load i32, ptr %i.kj, align 16, !tbaa !116
  store i32 %i.lb, ptr %i.kj, align 16, !tbaa !116
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 6340 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !119
  %i.lf = sub i32 %i.le, %i.lc
  %i.lg = add i32 %i.lf, %i.lb
  store i32 %i.lg, ptr %i.ld, align 4, !tbaa !119
  br label %bb.ct

bb.an:                                            ; preds = %.preheader208
  br i1 %i.ba, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.li = zext nneg i32 %i.at to i64
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr @ff_v2_intra_cbpc, i64 %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !16
  %i.lm = zext i8 %i.ll to i32                    ; 5 uses
  %i.ln = load i8, ptr %i.lj, align 1, !tbaa !16
  %i.lo = zext i8 %i.ln to i32                    ; 3 uses
  %i.lp = load i32, ptr %i.lh, align 16, !tbaa !9 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !13 ; 5 uses
  %i.ls = icmp sgt i32 %i.lr, %i.lm
  br i1 %i.ls, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.lt = shl i32 %i.lp, %i.lm
  %i.lu = or i32 %i.lt, %i.lo
  %i.lv = sub nsw i32 %i.lr, %i.lm
  br label %put_bits.exit152

bb.aq:                                            ; preds = %bb.ao
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !14
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.lz = load ptr, ptr %i.ly, align 16, !tbaa !15 ; 2 uses
  %i.ma = ptrtoint ptr %i.lx to i64
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = icmp ugt i64 %i.mc, 3
  br i1 %i.md, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.me = shl i32 %i.lp, %i.lr
  %i.mf = sub nsw i32 %i.lm, %i.lr
  %i.mg = lshr i32 %i.lo, %i.mf
  %i.mh = or i32 %i.mg, %i.me
  %i.mi = tail call i32 @llvm.bswap.i32(i32 %i.mh)
  store i32 %i.mi, ptr %i.lz, align 1, !tbaa !16
  %i.mj = load ptr, ptr %i.ly, align 16, !tbaa !15
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  store ptr %i.mk, ptr %i.ly, align 16, !tbaa !15
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %reass.sub219 = sub i32 %i.lr, %i.lm
  %i.ml = add i32 %reass.sub219, 32
  br label %put_bits.exit152

put_bits.exit152:                                 ; preds = %bb.ap, %bb.at
  %.026.i.i150 = phi i32 [ %i.lu, %bb.ap ], [ %i.lo, %bb.at ] ; 2 uses
  %.0.i.i151 = phi i32 [ %i.lv, %bb.ap ], [ %i.ml, %bb.at ] ; 2 uses
  store i32 %.026.i.i150, ptr %i.lh, align 16, !tbaa !9
  store i32 %.0.i.i151, ptr %i.lq, align 4, !tbaa !13
  br label %bb.bf

bb.au:                                            ; preds = %bb.an
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 11008
  %i.mn = load i32, ptr %i.mm, align 16, !tbaa !109
  %.not125 = icmp eq i32 %i.mn, 0
  %.phi.trans.insert232 = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %.pre233 = load i32, ptr %.phi.trans.insert232, align 16, !tbaa !9 ; 3 uses
  %.phi.trans.insert234 = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %.pre235 = load i32, ptr %.phi.trans.insert234, align 4, !tbaa !13 ; 4 uses
  br i1 %.not125, label %._crit_edge231, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mo = icmp sgt i32 %.pre235, 1
  br i1 %i.mo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mp = shl i32 %.pre233, 1
  br label %put_bits.exit156

bb.ax:                                            ; preds = %bb.av
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !14
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.mt = load ptr, ptr %i.ms, align 16, !tbaa !15 ; 2 uses
  %i.mu = ptrtoint ptr %i.mr to i64
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = sub i64 %i.mu, %i.mv
  %i.mx = icmp ugt i64 %i.mw, 3
  br i1 %i.mx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.my = shl i32 %.pre233, %.pre235
  %i.mz = tail call i32 @llvm.bswap.i32(i32 %i.my)
  store i32 %i.mz, ptr %i.mt, align 1, !tbaa !16
  %i.na = load ptr, ptr %i.ms, align 16, !tbaa !15
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  store ptr %i.nb, ptr %i.ms, align 16, !tbaa !15
  br label %put_bits.exit156

bb.az:                                            ; preds = %bb.ax
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit156

put_bits.exit156:                                 ; preds = %bb.ay, %bb.az, %bb.aw
  %.sink284 = phi i32 [ -1, %bb.aw ], [ 31, %bb.az ], [ 31, %bb.ay ]
  %.026.i.i154 = phi i32 [ %i.mp, %bb.aw ], [ 0, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %i.nc = add nsw i32 %.pre235, %.sink284         ; 2 uses
  store i32 %.026.i.i154, ptr %.phi.trans.insert232, align 16, !tbaa !9
  store i32 %i.nc, ptr %.phi.trans.insert234, align 4, !tbaa !13
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %bb.au, %put_bits.exit156
  %i.nd = phi i32 [ %i.nc, %put_bits.exit156 ], [ %.pre235, %bb.au ] ; 5 uses
  %i.ne = phi i32 [ %.026.i.i154, %put_bits.exit156 ], [ %.pre233, %bb.au ] ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.ng = zext nneg i32 %i.at to i64
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr @ff_v2_mb_type, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 9
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !16
  %i.nl = zext i8 %i.nk to i32                    ; 5 uses
  %i.nm = load i8, ptr %i.ni, align 2, !tbaa !16
  %i.nn = zext i8 %i.nm to i32                    ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %i.np = icmp sgt i32 %i.nd, %i.nl
  br i1 %i.np, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %._crit_edge231
  %i.nq = shl i32 %i.ne, %i.nl
  %i.nr = or i32 %i.nq, %i.nn
  %i.ns = sub nsw i32 %i.nd, %i.nl
  br label %put_bits.exit160

bb.bb:                                            ; preds = %._crit_edge231
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !14
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.nw = load ptr, ptr %i.nv, align 16, !tbaa !15 ; 2 uses
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = sub i64 %i.nx, %i.ny
  %i.oa = icmp ugt i64 %i.nz, 3
  br i1 %i.oa, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ob = shl i32 %i.ne, %i.nd
  %i.oc = sub nsw i32 %i.nl, %i.nd
  %i.od = lshr i32 %i.nn, %i.oc
  %i.oe = or i32 %i.od, %i.ob
  %i.of = tail call i32 @llvm.bswap.i32(i32 %i.oe)
  store i32 %i.of, ptr %i.nw, align 1, !tbaa !16
  %i.og = load ptr, ptr %i.nv, align 16, !tbaa !15
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  store ptr %i.oh, ptr %i.nv, align 16, !tbaa !15
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %reass.sub218 = sub i32 %i.nd, %i.nl
  %i.oi = add i32 %reass.sub218, 32
  br label %put_bits.exit160

put_bits.exit160:                                 ; preds = %bb.ba, %bb.be
  %.026.i.i158 = phi i32 [ %i.nr, %bb.ba ], [ %i.nn, %bb.be ] ; 2 uses
  %.0.i.i159 = phi i32 [ %i.ns, %bb.ba ], [ %i.oi, %bb.be ] ; 2 uses
  store i32 %.026.i.i158, ptr %i.nf, align 16, !tbaa !9
  store i32 %.0.i.i159, ptr %i.no, align 4, !tbaa !13
  br label %bb.bf

bb.bf:                                            ; preds = %put_bits.exit160, %put_bits.exit152
  %i.oj = phi i32 [ %.0.i.i159, %put_bits.exit160 ], [ %.0.i.i151, %put_bits.exit152 ] ; 3 uses
  %i.ok = phi i32 [ %.026.i.i158, %put_bits.exit160 ], [ %.026.i.i150, %put_bits.exit152 ] ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %i.on = icmp sgt i32 %i.oj, 1
  br i1 %i.on, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.oo = shl i32 %i.ok, 1
  br label %put_bits.exit164

bb.bh:                                            ; preds = %bb.bf
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !14
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.os = load ptr, ptr %i.or, align 16, !tbaa !15 ; 2 uses
  %i.ot = ptrtoint ptr %i.oq to i64
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = icmp ugt i64 %i.ov, 3
  br i1 %i.ow, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ox = shl i32 %i.ok, %i.oj
  %i.oy = tail call i32 @llvm.bswap.i32(i32 %i.ox)
  store i32 %i.oy, ptr %i.os, align 1, !tbaa !16
  %i.oz = load ptr, ptr %i.or, align 16, !tbaa !15
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  store ptr %i.pa, ptr %i.or, align 16, !tbaa !15
  br label %put_bits.exit164

bb.bj:                                            ; preds = %bb.bh
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit164

put_bits.exit164:                                 ; preds = %bb.bi, %bb.bj, %bb.bg
  %.sink285 = phi i32 [ -1, %bb.bg ], [ 31, %bb.bj ], [ 31, %bb.bi ]
  %.026.i.i162 = phi i32 [ %i.oo, %bb.bg ], [ 0, %bb.bj ], [ 0, %bb.bi ] ; 3 uses
  %i.pb = add nsw i32 %i.oj, %.sink285            ; 6 uses
  store i32 %.026.i.i162, ptr %i.ol, align 16, !tbaa !9
  store i32 %i.pb, ptr %i.om, align 4, !tbaa !13
  %i.pc = lshr exact i32 %i.ao, 2
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr @ff_h263_cbpy_tab, i64 %i.pd ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !16
  %i.ph = zext i8 %i.pg to i32                    ; 4 uses
  %i.pi = load i8, ptr %i.pe, align 2, !tbaa !16
  %i.pj = zext i8 %i.pi to i32                    ; 3 uses
  %i.pk = icmp sgt i32 %i.pb, %i.ph
  br i1 %i.pk, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %put_bits.exit164
  %i.pl = shl i32 %.026.i.i162, %i.ph
  %i.pm = or i32 %i.pl, %i.pj
  br label %put_bits.exit168

bb.bl:                                            ; preds = %put_bits.exit164
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !14
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.pq = load ptr, ptr %i.pp, align 16, !tbaa !15 ; 2 uses
  %i.pr = ptrtoint ptr %i.po to i64
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = icmp ugt i64 %i.pt, 3
  br i1 %i.pu, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.pv = shl i32 %.026.i.i162, %i.pb
  %i.pw = sub nsw i32 %i.ph, %i.pb
  %i.px = lshr i32 %i.pj, %i.pw
  %i.py = or i32 %i.px, %i.pv
  %i.pz = tail call i32 @llvm.bswap.i32(i32 %i.py)
  store i32 %i.pz, ptr %i.pq, align 1, !tbaa !16
  %i.qa = load ptr, ptr %i.pp, align 16, !tbaa !15
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  store ptr %i.qb, ptr %i.pp, align 16, !tbaa !15
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %reass.sub.i165 = add nsw i32 %i.pb, 32
  br label %put_bits.exit168

put_bits.exit168:                                 ; preds = %bb.bk, %bb.bo
  %.026.i.i166 = phi i32 [ %i.pm, %bb.bk ], [ %i.pj, %bb.bo ]
  %.0.i.i163.pn = phi i32 [ %i.pb, %bb.bk ], [ %reass.sub.i165, %bb.bo ]
  %.0.i.i167 = sub i32 %.0.i.i163.pn, %i.ph       ; 2 uses
  store i32 %.026.i.i166, ptr %i.ol, align 16, !tbaa !9
  store i32 %.0.i.i167, ptr %i.om, align 4, !tbaa !13
  br label %bb.cs

bb.bp:                                            ; preds = %.preheader208
  br i1 %i.ba, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.qc = call i32 @ff_msmpeg4_coded_block_pred(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.c) #10
  %i.qd = load i32, ptr %i.s, align 4, !tbaa !78
  %i.qe = icmp sgt i32 %i.qd, 0                   ; 2 uses
  %i.qf = zext i1 %i.qe to i32
  %i.qg = zext i1 %i.qe to i8
  %i.qh = load ptr, ptr %i.c, align 8, !tbaa !93
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !16
  %i.qi = xor i32 %i.qc, %i.qf
  %i.qj = shl i32 %i.qi, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.qk = call i32 @ff_msmpeg4_coded_block_pred(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.c) #10
  %i.ql = load i32, ptr %i.u, align 8, !tbaa !78
  %i.qm = icmp sgt i32 %i.ql, 0                   ; 2 uses
  %i.qn = zext i1 %i.qm to i32
  %i.qo = zext i1 %i.qm to i8
  %i.qp = load ptr, ptr %i.c, align 8, !tbaa !93
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !16
  %i.qq = xor i32 %i.qk, %i.qn
  %i.qr = shl i32 %i.qq, 4
  %i.qs = or i32 %i.qj, %i.qr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.qt = call i32 @ff_msmpeg4_coded_block_pred(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %i.c) #10
  %i.qu = load i32, ptr %i.w, align 4, !tbaa !78
  %i.qv = icmp sgt i32 %i.qu, 0                   ; 2 uses
  %i.qw = zext i1 %i.qv to i32
  %i.qx = zext i1 %i.qv to i8
  %i.qy = load ptr, ptr %i.c, align 8, !tbaa !93
  store i8 %i.qx, ptr %i.qy, align 1, !tbaa !16
  %i.qz = xor i32 %i.qt, %i.qw
  %i.ra = shl i32 %i.qz, 3
  %i.rb = or i32 %i.qs, %i.ra
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.rc = call i32 @ff_msmpeg4_coded_block_pred(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.c) #10
  %i.rd = load i32, ptr %i.y, align 16, !tbaa !78
  %i.re = icmp sgt i32 %i.rd, 0                   ; 2 uses
  %i.rf = zext i1 %i.re to i32
  %i.rg = zext i1 %i.re to i8
  %i.rh = load ptr, ptr %i.c, align 8, !tbaa !93
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !16
  %i.ri = xor i32 %i.rc, %i.rf
  %i.rj = shl i32 %i.ri, 2
  %i.rk = or i32 %i.rb, %i.rj
  %i.rl = or disjoint i32 %i.rk, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.rn = sext i32 %i.rl to i64
  %i.ro = getelementptr inbounds [4 x i8], ptr @ff_msmp4_mb_i_table, i64 %i.rn ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 2
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !84
  %i.rr = zext i16 %i.rq to i32                   ; 5 uses
  %i.rs = load i16, ptr %i.ro, align 4, !tbaa !84
  %i.rt = zext i16 %i.rs to i32                   ; 3 uses
  %i.ru = load i32, ptr %i.rm, align 16, !tbaa !9 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !13 ; 5 uses
  %i.rx = icmp sgt i32 %i.rw, %i.rr
  br i1 %i.rx, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ry = shl i32 %i.ru, %i.rr
  %i.rz = or i32 %i.ry, %i.rt
  %i.sa = sub nsw i32 %i.rw, %i.rr
  br label %put_bits.exit172

bb.bs:                                            ; preds = %bb.bq
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !14
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.se = load ptr, ptr %i.sd, align 16, !tbaa !15 ; 2 uses
  %i.sf = ptrtoint ptr %i.sc to i64
  %i.sg = ptrtoint ptr %i.se to i64
  %i.sh = sub i64 %i.sf, %i.sg
  %i.si = icmp ugt i64 %i.sh, 3
  br i1 %i.si, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.sj = shl i32 %i.ru, %i.rw
  %i.sk = sub nsw i32 %i.rr, %i.rw
  %i.sl = lshr i32 %i.rt, %i.sk
  %i.sm = or i32 %i.sl, %i.sj
  %i.sn = call i32 @llvm.bswap.i32(i32 %i.sm)
  store i32 %i.sn, ptr %i.se, align 1, !tbaa !16
  %i.so = load ptr, ptr %i.sd, align 16, !tbaa !15
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  store ptr %i.sp, ptr %i.sd, align 16, !tbaa !15
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %reass.sub217 = sub i32 %i.rw, %i.rr
  %i.sq = add i32 %reass.sub217, 32
  br label %put_bits.exit172

put_bits.exit172:                                 ; preds = %bb.br, %bb.bv
  %.026.i.i170 = phi i32 [ %i.rz, %bb.br ], [ %i.rt, %bb.bv ] ; 2 uses
  %.0.i.i171 = phi i32 [ %i.sa, %bb.br ], [ %i.sq, %bb.bv ] ; 2 uses
  store i32 %.026.i.i170, ptr %i.rm, align 16, !tbaa !9
  store i32 %.0.i.i171, ptr %i.rv, align 4, !tbaa !13
  br label %bb.ch

bb.bw:                                            ; preds = %bb.bp
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 11008
  %i.ss = load i32, ptr %i.sr, align 16, !tbaa !109
  %.not123 = icmp eq i32 %i.ss, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 16, !tbaa !9 ; 3 uses
  %.phi.trans.insert229 = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %.pre230 = load i32, ptr %.phi.trans.insert229, align 4, !tbaa !13 ; 4 uses
  br i1 %.not123, label %._crit_edge, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.st = icmp sgt i32 %.pre230, 1
  br i1 %i.st, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.su = shl i32 %.pre, 1
  br label %put_bits.exit176

bb.bz:                                            ; preds = %bb.bx
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !14
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.sy = load ptr, ptr %i.sx, align 16, !tbaa !15 ; 2 uses
  %i.sz = ptrtoint ptr %i.sw to i64
  %i.ta = ptrtoint ptr %i.sy to i64
  %i.tb = sub i64 %i.sz, %i.ta
  %i.tc = icmp ugt i64 %i.tb, 3
  br i1 %i.tc, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.td = shl i32 %.pre, %.pre230
  %i.te = tail call i32 @llvm.bswap.i32(i32 %i.td)
  store i32 %i.te, ptr %i.sy, align 1, !tbaa !16
  %i.tf = load ptr, ptr %i.sx, align 16, !tbaa !15
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  store ptr %i.tg, ptr %i.sx, align 16, !tbaa !15
  br label %put_bits.exit176

bb.cb:                                            ; preds = %bb.bz
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit176

put_bits.exit176:                                 ; preds = %bb.ca, %bb.cb, %bb.by
  %.sink286 = phi i32 [ -1, %bb.by ], [ 31, %bb.cb ], [ 31, %bb.ca ]
  %.026.i.i174 = phi i32 [ %i.su, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.ca ] ; 2 uses
  %i.th = add nsw i32 %.pre230, %.sink286         ; 2 uses
  store i32 %.026.i.i174, ptr %.phi.trans.insert, align 16, !tbaa !9
  store i32 %i.th, ptr %.phi.trans.insert229, align 4, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bw, %put_bits.exit176
  %i.ti = phi i32 [ %i.th, %put_bits.exit176 ], [ %.pre230, %bb.bw ] ; 5 uses
  %i.tj = phi i32 [ %.026.i.i174, %put_bits.exit176 ], [ %.pre, %bb.bw ] ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.tl = zext nneg i32 %i.au to i64
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr @ff_table_mb_non_intra, i64 %i.tl ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !78 ; 5 uses
  %i.tp = load i32, ptr %i.tm, align 8, !tbaa !78 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %i.tr = icmp slt i32 %i.to, %i.ti
  br i1 %i.tr, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %._crit_edge
  %i.ts = shl i32 %i.tj, %i.to
  %i.tt = or i32 %i.ts, %i.tp
  %i.tu = sub nsw i32 %i.ti, %i.to
  br label %put_bits.exit180

bb.cd:                                            ; preds = %._crit_edge
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !14
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.ty = load ptr, ptr %i.tx, align 16, !tbaa !15 ; 2 uses
  %i.tz = ptrtoint ptr %i.tw to i64
  %i.ua = ptrtoint ptr %i.ty to i64
  %i.ub = sub i64 %i.tz, %i.ua
  %i.uc = icmp ugt i64 %i.ub, 3
  br i1 %i.uc, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ud = shl i32 %i.tj, %i.ti
  %i.ue = sub nsw i32 %i.to, %i.ti
  %i.uf = lshr i32 %i.tp, %i.ue
  %i.ug = or i32 %i.uf, %i.ud
  %i.uh = tail call i32 @llvm.bswap.i32(i32 %i.ug)
  store i32 %i.uh, ptr %i.ty, align 1, !tbaa !16
  %i.ui = load ptr, ptr %i.tx, align 16, !tbaa !15
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  store ptr %i.uj, ptr %i.tx, align 16, !tbaa !15
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %reass.sub = sub i32 %i.ti, %i.to
  %i.uk = add i32 %reass.sub, 32
  br label %put_bits.exit180

put_bits.exit180:                                 ; preds = %bb.cc, %bb.cg
  %.026.i.i178 = phi i32 [ %i.tt, %bb.cc ], [ %i.tp, %bb.cg ] ; 2 uses
  %.0.i.i179 = phi i32 [ %i.tu, %bb.cc ], [ %i.uk, %bb.cg ] ; 2 uses
  store i32 %.026.i.i178, ptr %i.tk, align 16, !tbaa !9
  store i32 %.0.i.i179, ptr %i.tq, align 4, !tbaa !13
  br label %bb.ch

bb.ch:                                            ; preds = %put_bits.exit180, %put_bits.exit172
  %i.ul = phi i32 [ %.0.i.i179, %put_bits.exit180 ], [ %.0.i.i171, %put_bits.exit172 ] ; 3 uses
  %i.um = phi i32 [ %.026.i.i178, %put_bits.exit180 ], [ %.026.i.i170, %put_bits.exit172 ] ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %i.up = icmp sgt i32 %i.ul, 1
  br i1 %i.up, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.uq = shl i32 %i.um, 1
  br label %put_bits.exit184

bb.cj:                                            ; preds = %bb.ch
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !14
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.uu = load ptr, ptr %i.ut, align 16, !tbaa !15 ; 2 uses
  %i.uv = ptrtoint ptr %i.us to i64
  %i.uw = ptrtoint ptr %i.uu to i64
  %i.ux = sub i64 %i.uv, %i.uw
  %i.uy = icmp ugt i64 %i.ux, 3
  br i1 %i.uy, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.uz = shl i32 %i.um, %i.ul
  %i.va = call i32 @llvm.bswap.i32(i32 %i.uz)
  store i32 %i.va, ptr %i.uu, align 1, !tbaa !16
  %i.vb = load ptr, ptr %i.ut, align 16, !tbaa !15
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  store ptr %i.vc, ptr %i.ut, align 16, !tbaa !15
  br label %put_bits.exit184

bb.cl:                                            ; preds = %bb.cj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit184

put_bits.exit184:                                 ; preds = %bb.ck, %bb.cl, %bb.ci
  %.sink287 = phi i32 [ -1, %bb.ci ], [ 31, %bb.cl ], [ 31, %bb.ck ]
  %.026.i.i182 = phi i32 [ %i.uq, %bb.ci ], [ 0, %bb.cl ], [ 0, %bb.ck ] ; 3 uses
  %i.vd = add nsw i32 %i.ul, %.sink287            ; 7 uses
  store i32 %.026.i.i182, ptr %i.un, align 16, !tbaa !9
  store i32 %i.vd, ptr %i.uo, align 4, !tbaa !13
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 3788
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !113
  %.not124 = icmp eq i32 %i.vf, 0
  br i1 %.not124, label %bb.cs, label %bb.cm

bb.cm:                                            ; preds = %put_bits.exit184
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store i32 0, ptr %i.vg, align 16, !tbaa !120
  %i.vh = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_table_inter_intra, i64 1), align 1, !tbaa !16
  %i.vi = zext i8 %i.vh to i32                    ; 4 uses
  %i.vj = load i8, ptr @ff_table_inter_intra, align 1, !tbaa !16
  %i.vk = zext i8 %i.vj to i32                    ; 3 uses
  %i.vl = icmp sgt i32 %i.vd, %i.vi
  br i1 %i.vl, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.vm = shl i32 %.026.i.i182, %i.vi
  %i.vn = or i32 %i.vm, %i.vk
  br label %put_bits.exit188

bb.co:                                            ; preds = %bb.cm
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !14
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.vr = load ptr, ptr %i.vq, align 16, !tbaa !15 ; 2 uses
  %i.vs = ptrtoint ptr %i.vp to i64
  %i.vt = ptrtoint ptr %i.vr to i64
  %i.vu = sub i64 %i.vs, %i.vt
  %i.vv = icmp ugt i64 %i.vu, 3
  br i1 %i.vv, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.vw = shl i32 %.026.i.i182, %i.vd
  %i.vx = sub nsw i32 %i.vi, %i.vd
  %i.vy = lshr i32 %i.vk, %i.vx
  %i.vz = or i32 %i.vy, %i.vw
  %i.wa = call i32 @llvm.bswap.i32(i32 %i.vz)
  store i32 %i.wa, ptr %i.vr, align 1, !tbaa !16
  %i.wb = load ptr, ptr %i.vq, align 16, !tbaa !15
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  store ptr %i.wc, ptr %i.vq, align 16, !tbaa !15
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %reass.sub.i185 = add nsw i32 %i.vd, 32
  br label %put_bits.exit188

put_bits.exit188:                                 ; preds = %bb.cn, %bb.cr
  %.026.i.i186 = phi i32 [ %i.vn, %bb.cn ], [ %i.vk, %bb.cr ]
  %.0.i.i183.pn = phi i32 [ %i.vd, %bb.cn ], [ %reass.sub.i185, %bb.cr ]
  %.0.i.i187 = sub i32 %.0.i.i183.pn, %i.vi       ; 2 uses
  store i32 %.026.i.i186, ptr %i.un, align 16, !tbaa !9
  store i32 %.0.i.i187, ptr %i.uo, align 4, !tbaa !13
  br label %bb.cs

bb.cs:                                            ; preds = %put_bits.exit184, %put_bits.exit188, %put_bits.exit168
  %i.wd = phi i32 [ %i.vd, %put_bits.exit184 ], [ %.0.i.i187, %put_bits.exit188 ], [ %.0.i.i167, %put_bits.exit168 ]
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 16, !tbaa !15
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 2 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !115
  %i.wi = ptrtoint ptr %i.wf to i64
  %i.wj = ptrtoint ptr %i.wh to i64
  %i.wk = sub i64 %i.wi, %i.wj
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %.tr.i.i189 = trunc i64 %i.wk to i32
  %i.wm = shl i32 %.tr.i.i189, 3
  %reass.sub.i.i190 = sub i32 %i.wm, %i.wd
  %i.wn = add i32 %reass.sub.i.i190, 32           ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 4 uses
  %i.wp = load i32, ptr %i.wo, align 16, !tbaa !116
  store i32 %i.wn, ptr %i.wo, align 16, !tbaa !116
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !117
  %i.ws = sub i32 %i.wr, %i.wp
  %i.wt = add i32 %i.ws, %i.wn
  store i32 %i.wt, ptr %i.wq, align 4, !tbaa !117
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0)
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.wu, i32 noundef 1)
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.wv, i32 noundef 2)
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.ww, i32 noundef 3)
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.wx, i32 noundef 4)
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 640
  call void @ff_msmpeg4_encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.wy, i32 noundef 5)
  %i.wz = load ptr, ptr %i.we, align 16, !tbaa !15
  %i.xa = load ptr, ptr %i.wg, align 8, !tbaa !115
  %i.xb = ptrtoint ptr %i.wz to i64
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = sub i64 %i.xb, %i.xc
  %i.xe = load i32, ptr %i.wl, align 4, !tbaa !13
  %.tr.i.i191 = trunc i64 %i.xd to i32
  %i.xf = shl i32 %.tr.i.i191, 3
  %reass.sub.i.i192 = sub i32 %i.xf, %i.xe
  %i.xg = add i32 %reass.sub.i.i192, 32           ; 2 uses
  %i.xh = load i32, ptr %i.wo, align 16, !tbaa !116
  store i32 %i.xg, ptr %i.wo, align 16, !tbaa !116
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 6336 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 16, !tbaa !121
  %i.xk = sub i32 %i.xj, %i.xh
  %i.xl = add i32 %i.xk, %i.xg
  store i32 %i.xl, ptr %i.xi, align 16, !tbaa !121
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 6344 ; 2 uses
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !122
  %i.xo = add nsw i32 %i.xn, 1
  store i32 %i.xo, ptr %i.xm, align 8, !tbaa !122
  br label %bb.ct

bb.ct:                                            ; preds = %bb.am, %bb.cs, %put_bits.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define internal void @msmpeg4_encode_init_static() #5 {
bb.a:
  tail call fastcc void @init_mv_table(ptr noundef nonnull @ff_msmp4_mv_table0, ptr noundef nonnull @ff_msmp4_mv_table0_lens, ptr noundef nonnull @mv_vector_tables, i32 noundef 0, i32 noundef 20) #12
  tail call fastcc void @init_mv_table(ptr noundef nonnull @ff_msmp4_mv_table1, ptr noundef nonnull @ff_msmp4_mv_table1_lens, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mv_vector_tables, i64 16384), i32 noundef 11, i32 noundef 16) #12
  br label %.preheader20

.preheader20:                                     ; preds = %bb.a, %bb.c
  %indvars.iv34 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next35, %bb.c ] ; 3 uses
  %i.a = getelementptr inbounds nuw [336 x i8], ptr @ff_rl_table, i64 %indvars.iv34 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = getelementptr inbounds nuw [8450 x i8], ptr @rl_length, i64 %indvars.iv34
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %.preheader19

bb.b:                                             ; preds = %bb.c
  ret void

.preheader19:                                     ; preds = %.preheader20, %bb.d
  %indvars.iv29 = phi i64 [ 1, %.preheader20 ], [ %indvars.iv.next30, %bb.d ] ; 7 uses
  %i.g = getelementptr inbounds nuw [130 x i8], ptr %i.c, i64 %indvars.iv29
  %i.h = add nsw i64 %indvars.iv29, -1            ; 2 uses
  %i.i = trunc nuw nsw i64 %indvars.iv29 to i32
  br label %.preheader

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next35, 6
  br i1 %exitcond37.not, label %bb.b, label %.preheader20, !llvm.loop !123

.preheader:                                       ; preds = %.preheader19, %bb.e
  %indvars.iv26 = phi i64 [ 0, %.preheader19 ], [ %indvars.iv.next27, %bb.e ] ; 6 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv26
  %i.k = trunc nuw nsw i64 %indvars.iv26 to i32
  br label %bb.f

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, 65
  br i1 %exitcond33.not, label %bb.c, label %.preheader19, !llvm.loop !124

bb.e:                                             ; preds = %get_size_of_code.exit
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next27, 65
  br i1 %exitcond.not, label %bb.d, label %.preheader, !llvm.loop !125

bb.f:                                             ; preds = %.preheader, %get_size_of_code.exit
  %i.l = phi i1 [ true, %.preheader ], [ false, %get_size_of_code.exit ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ 1, %get_size_of_code.exit ] ; 6 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv26
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16    ; 2 uses
  %i.q = sext i8 %i.p to i32                      ; 2 uses
  %i.r = sext i8 %i.p to i64
  %i.s = icmp sgt i64 %indvars.iv29, %i.r
  br i1 %i.s, label %get_rl_index.exit.thread.i, label %get_rl_index.exit.i

get_rl_index.exit.thread.i:                       ; preds = %bb.f
  %i.t = load i32, ptr %i.a, align 16, !tbaa !94  ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !84
  %i.z = trunc i16 %i.y to i8
  br label %bb.g

get_rl_index.exit.i:                              ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv26
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i64
  %i.af = add nuw nsw i64 %i.h, %i.ae             ; 2 uses
  %.pre.i = load i32, ptr %i.a, align 16, !tbaa !94 ; 2 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !96  ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !84
  %i.ak = trunc i16 %i.aj to i8                   ; 2 uses
  %i.al = sext i32 %.pre.i to i64
  %.wide31 = icmp eq i64 %i.af, %i.al
  br i1 %.wide31, label %bb.g, label %bb.k

bb.g:                                             ; preds = %get_rl_index.exit.i, %get_rl_index.exit.thread.i
  %i.am = phi i8 [ %i.z, %get_rl_index.exit.thread.i ], [ %i.ak, %get_rl_index.exit.i ] ; 3 uses
  %i.an = phi ptr [ %i.u, %get_rl_index.exit.thread.i ], [ %i.ag, %get_rl_index.exit.i ] ; 2 uses
  %i.ao = phi i32 [ %i.t, %get_rl_index.exit.thread.i ], [ %.pre.i, %get_rl_index.exit.i ] ; 2 uses
  %i.ap = sub nsw i32 %i.i, %i.q                  ; 3 uses
  %i.aq = icmp slt i32 %i.ap, 1
  %i.ar = icmp sgt i32 %i.ap, %i.q
  %or.cond.i = or i1 %i.aq, %i.ar
  br i1 %or.cond.i, label %get_rl_index.exit49.thread.i, label %get_rl_index.exit49.i

get_rl_index.exit49.i:                            ; preds = %bb.g
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !93
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv26
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.ap, -1
  %i.ay = add nuw nsw i32 %i.ax, %i.aw            ; 2 uses
  %i.az = icmp eq i32 %i.ay, %i.ao
  br i1 %i.az, label %get_rl_index.exit49.thread.i, label %bb.j

get_rl_index.exit49.thread.i:                     ; preds = %get_rl_index.exit49.i, %bb.g
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !93
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv29
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !16
  %i.be = xor i8 %i.bd, -1
  %i.bf = sext i8 %i.be to i32
  %i.bg = add nsw i32 %i.k, %i.bf                 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %get_rl_index.exit51.thread.i, label %bb.h

bb.h:                                             ; preds = %get_rl_index.exit49.thread.i
  %i.bi = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = sext i8 %i.bk to i64
  %i.bm = icmp sgt i64 %indvars.iv29, %i.bl
  br i1 %i.bm, label %get_rl_index.exit51.thread.i, label %get_rl_index.exit51.i

get_rl_index.exit51.i:                            ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !93
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = zext i8 %i.bq to i64
  %i.bs = add nuw nsw i64 %i.h, %i.br             ; 2 uses
  %i.bt = sext i32 %i.ao to i64
  %.wide = icmp eq i64 %i.bs, %i.bt
  br i1 %.wide, label %get_rl_index.exit51.thread.i, label %bb.i

get_rl_index.exit51.thread.i:                     ; preds = %get_rl_index.exit51.i, %bb.h, %get_rl_index.exit49.thread.i
  %i.bu = add i8 %i.am, 17
  br label %get_size_of_code.exit

bb.i:                                             ; preds = %get_rl_index.exit51.i
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !84
  %i.by = trunc i16 %i.bx to i8
  %i.bz = add i8 %i.am, 3
  %i.ca = add i8 %i.bz, %i.by
  br label %get_size_of_code.exit

bb.j:                                             ; preds = %get_rl_index.exit49.i
  %i.cb = zext nneg i32 %i.ay to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !84
  %i.cf = trunc i16 %i.ce to i8
  %i.cg = add i8 %i.am, 2
  %i.ch = add i8 %i.cg, %i.cf
  br label %get_size_of_code.exit

bb.k:                                             ; preds = %get_rl_index.exit.i
  %i.ci = add i8 %i.ak, 1
  br label %get_size_of_code.exit

get_size_of_code.exit:                            ; preds = %get_rl_index.exit51.thread.i, %bb.i, %bb.j, %bb.k
  %.1.i = phi i8 [ %i.ci, %bb.k ], [ %i.bu, %get_rl_index.exit51.thread.i ], [ %i.ca, %bb.i ], [ %i.ch, %bb.j ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 %.1.i, ptr %i.cj, align 1, !tbaa !16
  br i1 %i.l, label %bb.f, label %bb.e, !llvm.loop !126
}

declare i32 @ff_mpv_encode_init(ptr noundef) #2

declare i32 @ff_mpv_encode_picture(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ff_mpv_encode_end(ptr noundef) #2

declare i32 @ff_msmpeg4_pred_dc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @ff_h263_pred_motion(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @msmpeg4v2_encode_motion(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 4 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = shl i32 %i.c, 1
  %i.h = or disjoint i32 %i.g, 1
  br label %put_bits.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ugt i64 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = shl i32 %i.c, %i.e
  %i.r = icmp eq i32 %i.e, 1
  %i.s = zext i1 %i.r to i32
  %i.t = or i32 %i.q, %i.s
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.t)
  store i32 %i.u, ptr %i.l, align 1, !tbaa !16
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.w, ptr %i.k, align 8, !tbaa !15
  br label %put_bits.exit

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.e, %bb.f, %bb.c
  %.sink = phi i32 [ -1, %bb.c ], [ 31, %bb.f ], [ 31, %bb.e ]
  %.026.i.i = phi i32 [ %i.h, %bb.c ], [ 1, %bb.f ], [ 1, %bb.e ]
  %i.x = add nsw i32 %i.e, %.sink
  store i32 %.026.i.i, ptr %i.b, align 8, !tbaa !9
  store i32 %i.x, ptr %i.d, align 4, !tbaa !13
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5896
  %i.z = load i32, ptr %i.y, align 8, !tbaa !127  ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 5 uses
  %i.ab = icmp slt i32 %1, -63
  %i.ac = add nsw i32 %1, 64
  %i.ad = icmp sgt i32 %1, 63
  %i.ae = add nsw i32 %1, -64
  %spec.select = select i1 %i.ad, i32 %i.ae, i32 %1
  %.022 = select i1 %i.ab, i32 %i.ac, i32 %spec.select ; 2 uses
  %.1 = tail call i32 @llvm.abs.i32(i32 %.022, i1 true)
  %i.af = add nsw i32 %.1, -1                     ; 2 uses
  %i.ag = ashr i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 3 uses
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr [2 x i8], ptr @ff_mvtab, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  %i.al = getelementptr i8, ptr %i.aj, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = add nuw nsw i32 %i.an, 1                ; 4 uses
  %i.ap = load i8, ptr %i.ak, align 2, !tbaa !16
  %i.aq = zext i8 %i.ap to i32
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %.022, i32 1) ; 3 uses
  %i.as = load i32, ptr %i.ah, align 8, !tbaa !9  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !13 ; 5 uses
  %i.av = icmp slt i32 %i.ao, %i.au
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = shl i32 %i.as, %i.ao
  %i.ax = or i32 %i.aw, %i.ar
  %i.ay = sub nsw i32 %i.au, %i.ao
  br label %put_bits.exit28

bb.i:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15 ; 2 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp ugt i64 %i.bf, 3
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = shl i32 %i.as, %i.au
  %i.bi = sub nsw i32 %i.ao, %i.au
  %i.bj = lshr i32 %i.ar, %i.bi
  %i.bk = or i32 %i.bj, %i.bh
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  store i32 %i.bl, ptr %i.bc, align 1, !tbaa !16
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store ptr %i.bn, ptr %i.bb, align 8, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %reass.sub = sub i32 %i.au, %i.an
  %i.bo = add i32 %reass.sub, 31
  br label %put_bits.exit28

put_bits.exit28:                                  ; preds = %bb.h, %bb.l
  %.026.i.i26 = phi i32 [ %i.ax, %bb.h ], [ %i.ar, %bb.l ] ; 3 uses
  %.0.i.i27 = phi i32 [ %i.ay, %bb.h ], [ %i.bo, %bb.l ] ; 6 uses
  store i32 %.026.i.i26, ptr %i.ah, align 8, !tbaa !9
  store i32 %.0.i.i27, ptr %i.at, align 4, !tbaa !13
  %i.bp = icmp sgt i32 %i.z, 1
  br i1 %i.bp, label %bb.m, label %bb.s

bb.m:                                             ; preds = %put_bits.exit28
  %notmask = shl nsw i32 -1, %i.aa
  %i.bq = xor i32 %notmask, -1
  %i.br = and i32 %i.af, %i.bq                    ; 3 uses
  %.not = icmp sgt i32 %i.z, %.0.i.i27
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = shl i32 %.026.i.i26, %i.aa
  %i.bt = or i32 %i.bs, %i.br
  %i.bu = sub nsw i32 %.0.i.i27, %i.aa
  br label %put_bits.exit32

bb.o:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !15 ; 2 uses
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = icmp ugt i64 %i.cb, 3
  br i1 %i.cc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = shl i32 %.026.i.i26, %.0.i.i27
  %i.ce = sub nsw i32 %i.aa, %.0.i.i27
  %i.cf = lshr i32 %i.br, %i.ce
  %i.cg = or i32 %i.cf, %i.cd
  %i.ch = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  store i32 %i.ch, ptr %i.by, align 1, !tbaa !16
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store ptr %i.cj, ptr %i.bx, align 8, !tbaa !15
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %reass.sub34 = sub i32 %.0.i.i27, %i.z
  %i.ck = add i32 %reass.sub34, 33
  br label %put_bits.exit32

put_bits.exit32:                                  ; preds = %bb.n, %bb.r
  %.026.i.i30 = phi i32 [ %i.bt, %bb.n ], [ %i.br, %bb.r ]
  %.0.i.i31 = phi i32 [ %i.bu, %bb.n ], [ %i.ck, %bb.r ]
  store i32 %.026.i.i30, ptr %i.ah, align 8, !tbaa !9
  store i32 %.0.i.i31, ptr %i.at, align 4, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %put_bits.exit28, %put_bits.exit32, %put_bits.exit
  ret void
}

declare i32 @ff_msmpeg4_coded_block_pred(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @init_mv_table(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 0, 12) %3, i32 noundef range(i32 16, 21) %4) unnamed_addr #7 {
vector.ph:
  %i.a = shl nuw nsw i32 %3, 20
  %invariant.op = or disjoint i32 %i.a, %4        ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %i.c = shl <4 x i32> %vec.ind, splat (i32 8)
  %i.d = add <4 x i32> %i.c, %broadcast.splat
  store <4 x i32> %i.d, ptr %i.b, align 4, !tbaa !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.e = icmp eq i64 %index.next, 4096
  br i1 %i.e, label %.preheader, label %vector.body, !llvm.loop !128

bb.a:                                             ; preds = %.preheader
  store i32 %invariant.op, ptr %2, align 4, !tbaa !78
  ret void

.preheader:                                       ; preds = %vector.body, %.preheader
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.preheader ], [ 0, %vector.body ] ; 3 uses
  %.02628 = phi i32 [ %i.w, %.preheader ], [ 0, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv32
  %i.g = load i16, ptr %i.f, align 2, !tbaa !84
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv32
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = zext i8 %i.j to i32                      ; 3 uses
  %i.l = and i32 %i.h, 255
  %i.m = sub nsw i32 24, %i.k
  %i.n = lshr i32 %.02628, %i.m
  %i.o = or i32 %i.n, %i.k
  %i.p = lshr i32 %i.h, 2
  %i.q = and i32 %i.p, 16320
  %i.r = or i32 %i.q, %i.l
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  store i32 %i.o, ptr %i.t, align 4, !tbaa !78
  %i.u = sub nsw i32 32, %i.k
  %i.v = shl nuw i32 1, %i.u
  %i.w = add i32 %i.v, %.02628
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next33, 1100
  br i1 %exitcond35.not, label %bb.a, label %.preheader, !llvm.loop !131
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { cold nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16, !11, i64 24}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !6, i64 4}
!14 = !{!10, !11, i64 24}
!15 = !{!10, !11, i64 16}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !22, i64 344}
!18 = !{!"MPVEncContext", !19, i64 0, !10, i64 4384, !6, i64 4416, !6, i64 4420, !28, i64 4424, !6, i64 4432, !6, i64 4436, !6, i64 4440, !6, i64 4444, !6, i64 4448, !6, i64 4452, !6, i64 4456, !6, i64 4460, !41, i64 4464, !44, i64 4472, !45, i64 4480, !46, i64 4496, !47, i64 4576, !48, i64 4608, !6, i64 5896, !6, i64 5900, !29, i64 5904, !29, i64 5912, !29, i64 5920, !29, i64 5928, !29, i64 5936, !29, i64 5944, !7, i64 5952, !7, i64 6016, !7, i64 6032, !29, i64 6064, !29, i64 6072, !29, i64 6080, !11, i64 6088, !7, i64 6096, !6, i64 6120, !6, i64 6124, !6, i64 6128, !6, i64 6132, !6, i64 6136, !11, i64 6144, !11, i64 6152, !11, i64 6160, !11, i64 6168, !11, i64 6176, !11, i64 6184, !11, i64 6192, !7, i64 6200, !29, i64 6248, !28, i64 6256, !28, i64 6264, !28, i64 6272, !29, i64 6280, !29, i64 6288, !29, i64 6296, !28, i64 6304, !7, i64 6312, !29, i64 6320, !6, i64 6328, !6, i64 6332, !6, i64 6336, !6, i64 6340, !6, i64 6344, !6, i64 6348, !6, i64 6352, !6, i64 6356, !7, i64 6360, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !6, i64 6388, !11, i64 6392, !6, i64 6400, !6, i64 6404, !6, i64 6408, !6, i64 6412, !6, i64 6416, !50, i64 6424, !6, i64 6432, !6, i64 6436, !6, i64 6440, !6, i64 6444, !6, i64 6448, !10, i64 6456, !10, i64 6488, !6, i64 6520, !6, i64 6524, !6, i64 6528, !6, i64 6532, !6, i64 6536, !6, i64 6540, !11, i64 6544, !12, i64 6552, !12, i64 6560, !7, i64 6568, !7, i64 6584, !7, i64 6600, !7, i64 6616, !12, i64 6632, !6, i64 6640, !7, i64 6644, !7, i64 6708, !7, i64 6784}
!19 = !{!"MpegEncContext", !20, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 68, !21, i64 72, !21, i64 208, !22, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !23, i64 416, !23, i64 424, !24, i64 432, !25, i64 440, !6, i64 496, !6, i64 500, !7, i64 504, !6, i64 760, !26, i64 768, !26, i64 888, !26, i64 1008, !29, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !29, i64 1176, !29, i64 1184, !29, i64 1192, !6, i64 1200, !11, i64 1208, !11, i64 1216, !11, i64 1224, !11, i64 1232, !30, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !31, i64 1288, !32, i64 1320, !33, i64 1384, !34, i64 1768, !35, i64 1888, !36, i64 2656, !37, i64 2672, !29, i64 2688, !7, i64 2696, !6, i64 2728, !6, i64 2732, !7, i64 2736, !7, i64 2800, !7, i64 2816, !7, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !7, i64 3120, !7, i64 3144, !7, i64 3168, !28, i64 3192, !7, i64 3200, !7, i64 3328, !7, i64 3456, !7, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !23, i64 3744, !23, i64 3752, !38, i64 3760, !38, i64 3762, !38, i64 3764, !38, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !7, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !7, i64 3872, !6, i64 3880, !6, i64 3884, !12, i64 3888, !12, i64 3896, !6, i64 3904, !6, i64 3908, !39, i64 3912}
!20 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!21 = !{!"ScanTable", !11, i64 0, !7, i64 8, !7, i64 72}
!22 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"p1 _ZTS15AVRefStructPool", !12, i64 0}
!25 = !{!"BufferPoolContext", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!26 = !{!"MPVWorkPicture", !7, i64 0, !7, i64 24, !27, i64 48, !11, i64 56, !7, i64 64, !28, i64 80, !11, i64 88, !7, i64 96, !6, i64 112}
!27 = !{!"p1 _ZTS10MPVPicture", !12, i64 0}
!28 = !{!"p1 int", !12, i64 0}
!29 = !{!"p1 short", !12, i64 0}
!30 = !{!"ScratchpadContext", !11, i64 0, !11, i64 8, !7, i64 16, !6, i64 24}
!31 = !{!"BlockDSPContext", !12, i64 0, !12, i64 8, !7, i64 16}
!32 = !{!"H264ChromaContext", !7, i64 0, !7, i64 32}
!33 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!34 = !{!"IDCTDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!35 = !{!"QpelDSPContext", !7, i64 0, !7, i64 256, !7, i64 512}
!36 = !{!"VideoDSPContext", !12, i64 0, !12, i64 8}
!37 = !{!"H263DSPContext", !12, i64 0, !12, i64 8}
!38 = !{!"short", !7, i64 0}
!39 = !{!"ERContext", !22, i64 0, !12, i64 8, !28, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !23, i64 40, !23, i64 48, !7, i64 56, !6, i64 60, !11, i64 64, !11, i64 72, !7, i64 80, !11, i64 104, !11, i64 112, !7, i64 120, !40, i64 184, !40, i64 256, !40, i64 328, !7, i64 400, !7, i64 416, !38, i64 432, !38, i64 434, !6, i64 436, !6, i64 440, !12, i64 448, !12, i64 456}
!40 = !{!"ERPicture", !41, i64 0, !42, i64 8, !43, i64 16, !7, i64 24, !7, i64 40, !28, i64 56, !6, i64 64}
!41 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!42 = !{!"p1 _ZTS11ThreadFrame", !12, i64 0}
!43 = !{!"p1 _ZTS14ThreadProgress", !12, i64 0}
!44 = !{!"p1 _ZTS17MPVMainEncContext", !12, i64 0}
!45 = !{!"FDCTDSPContext", !12, i64 0, !12, i64 8}
!46 = !{!"MpegvideoEncDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !12, i64 72}
!47 = !{!"PixblockDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!48 = !{!"MotionEstContext", !22, i64 0, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 48, !11, i64 80, !11, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !7, i64 168, !7, i64 296, !6, i64 424, !6, i64 428, !23, i64 432, !23, i64 440, !6, i64 448, !7, i64 456, !7, i64 504, !7, i64 552, !7, i64 600, !7, i64 648, !12, i64 712, !49, i64 720, !49, i64 728, !49, i64 736, !49, i64 744, !11, i64 752, !11, i64 760, !12, i64 768, !7, i64 776, !7, i64 1032}
!49 = !{!"any p2 pointer", !12, i64 0}
!50 = !{!"p1 _ZTS12MJpegContext", !12, i64 0}
!51 = !{!52, !6, i64 100}
!52 = !{!"AVCodecContext", !20, i64 0, !6, i64 8, !6, i64 12, !53, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !54, i64 40, !12, i64 48, !23, i64 56, !6, i64 64, !6, i64 68, !11, i64 72, !6, i64 80, !55, i64 84, !55, i64 92, !55, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !55, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !56, i64 204, !56, i64 208, !56, i64 212, !56, i64 216, !56, i64 220, !56, i64 224, !56, i64 228, !56, i64 232, !56, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !29, i64 288, !29, i64 296, !29, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !57, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !56, i64 428, !56, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !58, i64 456, !23, i64 464, !23, i64 472, !56, i64 480, !56, i64 484, !6, i64 488, !6, i64 492, !11, i64 496, !11, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !59, i64 536, !12, i64 544, !60, i64 552, !60, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !61, i64 728, !11, i64 736, !6, i64 744, !6, i64 748, !11, i64 752, !11, i64 760, !11, i64 768, !62, i64 776, !6, i64 784, !6, i64 788, !23, i64 792, !6, i64 800, !6, i64 804, !23, i64 808, !12, i64 816, !23, i64 824, !28, i64 832, !6, i64 840, !63, i64 848, !6, i64 856, !6, i64 860}
!53 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!54 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!55 = !{!"AVRational", !6, i64 0, !6, i64 4}
!56 = !{!"float", !7, i64 0}
!57 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!58 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!59 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!60 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!61 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!62 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!63 = !{!"p2 _ZTS15AVFrameSideData", !49, i64 0}
!64 = !{!52, !6, i64 104}
!65 = !{!52, !6, i64 88}
!66 = !{!52, !6, i64 84}
!67 = !{!68, !23, i64 10400}
!68 = !{!"MPVMainEncContext", !18, i64 0, !6, i64 9856, !6, i64 9860, !6, i64 9864, !6, i64 9868, !6, i64 9872, !6, i64 9876, !7, i64 9880, !7, i64 10016, !23, i64 10152, !23, i64 10160, !23, i64 10168, !7, i64 10176, !6, i64 10320, !6, i64 10324, !6, i64 10328, !6, i64 10332, !6, i64 10336, !56, i64 10340, !6, i64 10344, !6, i64 10348, !6, i64 10352, !6, i64 10356, !11, i64 10360, !6, i64 10368, !6, i64 10372, !6, i64 10376, !6, i64 10380, !12, i64 10384, !12, i64 10392, !23, i64 10400, !23, i64 10408, !6, i64 10416, !6, i64 10420, !6, i64 10424, !6, i64 10428, !6, i64 10432, !7, i64 10436, !6, i64 10456, !6, i64 10460, !69, i64 10464, !6, i64 10944, !6, i64 10948, !23, i64 10952, !23, i64 10960, !11, i64 10968, !11, i64 10976, !29, i64 10984}
!69 = !{!"RateControlContext", !6, i64 0, !70, i64 8, !71, i64 16, !7, i64 24, !71, i64 144, !71, i64 152, !71, i64 160, !71, i64 168, !71, i64 176, !7, i64 184, !23, i64 224, !23, i64 232, !7, i64 240, !7, i64 280, !7, i64 320, !7, i64 360, !7, i64 400, !6, i64 420, !56, i64 424, !56, i64 428, !6, i64 432, !56, i64 436, !56, i64 440, !11, i64 448, !72, i64 456, !73, i64 464, !73, i64 472}
!70 = !{!"p1 _ZTS16RateControlEntry", !12, i64 0}
!71 = !{!"double", !7, i64 0}
!72 = !{!"p1 _ZTS6AVExpr", !12, i64 0}
!73 = !{!"p1 float", !12, i64 0}
!74 = !{!18, !6, i64 3784}
!75 = !{!18, !6, i64 6524}
!76 = !{!77, !6, i64 10992}
!77 = !{!"MSMPEG4EncContext", !68, i64 0, !6, i64 10992, !6, i64 10996, !6, i64 11000, !6, i64 11004, !6, i64 11008, !6, i64 11012, !6, i64 11016, !7, i64 11020}
!78 = !{!6, !6, i64 0}
!79 = !{!18, !6, i64 3108}
!80 = !{!18, !6, i64 6520}
!81 = !{!18, !6, i64 3112}
!82 = !{!18, !6, i64 3780}
!83 = !{!18, !6, i64 3116}
!84 = !{!38, !38, i64 0}
!85 = !{!29, !29, i64 0}
!86 = !{!18, !6, i64 8}
!87 = !{!18, !6, i64 12}
!88 = !{!77, !6, i64 11004}
!89 = !{!77, !6, i64 10996}
!90 = !{!77, !6, i64 11000}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!11, !11, i64 0}
!94 = !{!95, !6, i64 0}
!95 = !{!"RLTable", !6, i64 0, !6, i64 4, !29, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !7, i64 48, !7, i64 64, !7, i64 80}
!96 = !{!95, !29, i64 8}
!97 = !{!18, !6, i64 6528}
!98 = !{!77, !6, i64 11016}
!99 = !{!18, !6, i64 1272}
!100 = distinct !{!100, !92}
!101 = !{!68, !12, i64 10392}
!102 = !{!18, !12, i64 6552}
!103 = !{!18, !6, i64 6128}
!104 = !{!18, !6, i64 6132}
!105 = !{!18, !6, i64 1280}
!106 = distinct !{!106, !92}
!107 = distinct !{!107, !92}
!108 = !{!77, !6, i64 10460}
!109 = !{!77, !6, i64 11008}
!110 = !{!77, !6, i64 11012}
!111 = !{!18, !6, i64 352}
!112 = !{!18, !6, i64 356}
!113 = !{!18, !6, i64 3788}
!114 = !{!18, !6, i64 392}
!115 = !{!10, !11, i64 8}
!116 = !{!18, !6, i64 6352}
!117 = !{!18, !6, i64 6348}
!118 = !{!18, !6, i64 6332}
!119 = !{!18, !6, i64 6340}
!120 = !{!18, !6, i64 3728}
!121 = !{!18, !6, i64 6336}
!122 = !{!18, !6, i64 6344}
!123 = distinct !{!123, !92}
!124 = distinct !{!124, !92}
!125 = distinct !{!125, !92}
!126 = distinct !{!126, !92}
!127 = !{!18, !6, i64 5896}
!128 = distinct !{!128, !92, !129, !130}
!129 = !{!"llvm.loop.isvectorized", i32 1}
!130 = !{!"llvm.loop.unroll.runtime.disable"}
!131 = distinct !{!131, !92}
end_hunk_0
