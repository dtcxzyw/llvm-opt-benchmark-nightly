Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideo_enc?download=true
inline.NumInlined: 128
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 125
begin_hunk_0_@ff_mpv_replace_picture

declare void @ff_set_mpeg4_time(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @estimate_qp(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10428 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !235  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !202
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store i32 %i.b, ptr %i.f, align 8, !tbaa !234
  %.not26 = icmp eq i32 %1, 0
  br i1 %.not26, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !235
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10432
  %i.h = load i32, ptr %i.g, align 16, !tbaa !114
  %.not25 = icmp eq i32 %i.h, 0
  br i1 %.not25, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call nsz float @ff_rate_estimate_qscale(ptr noundef nonnull %0, i32 noundef %1) #14
  %i.j = fptosi float %i.i to i32                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !202
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !191
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store i32 %i.j, ptr %i.n, align 8, !tbaa !234
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4432
  %i.q = load i32, ptr %i.p, align 16, !tbaa !116
  %.not27 = icmp eq i32 %i.q, 0
  br i1 %.not27, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !238
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !201
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %init_qscale_tab.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !173
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !463
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %i.ag = mul i32 %i.af, 139
  %i.ah = add i32 %i.ag, 8192
  %i.ai = lshr i32 %i.ah, 14                      ; 2 uses
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !56  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 436
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !128 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 440
  %i.an = load i32, ptr %i.am, align 8, !tbaa !129
  %i.ao = icmp slt i32 %i.ai, %i.al
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.an)
  %.0.i.i = select i1 %i.ao, i32 %i.al, i32 %..i.i
  %i.ap = trunc i32 %.0.i.i to i8
  %i.aq = getelementptr inbounds i8, ptr %i.s, i64 %i.ad
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = load i32, ptr %i.t, align 4, !tbaa !201
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next.i, %i.as
  br i1 %i.at, label %bb.h, label %init_qscale_tab.exit, !llvm.loop !462

init_qscale_tab.exit:                             ; preds = %bb.h, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.av = load i32, ptr %i.au, align 16, !tbaa !107
  switch i32 %i.av, label %bb.k [
    i32 12, label %bb.i
    i32 4, label %bb.j
    i32 19, label %bb.j
    i32 21, label %bb.j
  ]

bb.i:                                             ; preds = %init_qscale_tab.exit
  tail call void @ff_clean_mpeg4_qscales(ptr noundef nonnull %0) #14
  br label %bb.k

bb.j:                                             ; preds = %init_qscale_tab.exit, %init_qscale_tab.exit, %init_qscale_tab.exit
  tail call void @ff_clean_h263_qscales(ptr noundef nonnull %0) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %init_qscale_tab.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !173
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !202
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !191
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.in = phi ptr [ %i.bb, %bb.l ], [ %i.ax, %bb.k ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !54 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4416
  store i32 %.sink, ptr %i.bc, align 16, !tbaa !198
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 436
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 10352
  %i.bi = load i32, ptr %i.bh, align 16, !tbaa !185
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %bb.n, label %update_qscale.exit

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 440
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !129
  br label %update_qscale.exit

update_qscale.exit:                               ; preds = %bb.m, %bb.n
  %i.bl = phi i32 [ %i.bk, %bb.n ], [ 31, %bb.m ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.bn = mul i32 %.sink, 139
  %i.bo = add i32 %i.bn, 8192
  %i.bp = lshr i32 %i.bo, 14                      ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.bg
  %..i.i28 = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.bl)
  %.0.i.i29 = select i1 %i.bq, i32 %i.bg, i32 %..i.i28
  store i32 %.0.i.i29, ptr %i.bm, align 8, !tbaa !221
  %i.br = mul i32 %.sink, %.sink
  %i.bs = add i32 %i.br, 64
  %i.bt = lshr i32 %i.bs, 7
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4420
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !87
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %update_qscale.exit
  %.1 = phi i32 [ 0, %update_qscale.exit ], [ -1, %bb.e ]
  ret i32 %.1
}

declare void @ff_get_2pass_fcode(ptr noundef) local_unnamed_addr #0

declare i32 @ff_update_duplicate_context(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @ff_me_init_pic(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @pre_estimate_motion_thread(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !157    ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4736 ; 2 uses
  store i32 1, ptr %i.b, align 16, !tbaa !466
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.f = load i32, ptr %i.e, align 8, !tbaa !467
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4740
  store i32 %i.f, ptr %i.g, align 4, !tbaa !239
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3780 ; 3 uses
  store i32 1, ptr %i.h, align 4, !tbaa !240
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 500
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3112 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 496 ; 2 uses
  %storemerge.in23 = load i32, ptr %i.i, align 4, !tbaa !54 ; 2 uses
  %storemerge24 = add nsw i32 %storemerge.in23, -1 ; 3 uses
  store i32 %storemerge24, ptr %i.j, align 8, !tbaa !227
  %i.l = load i32, ptr %i.k, align 16, !tbaa !222 ; 3 uses
  %.not.not25 = icmp sgt i32 %storemerge.in23, %i.l
  br i1 %.not.not25, label %.lr.ph27, label %._crit_edge28

.lr.ph27:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 388 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3108 ; 4 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !54   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph27.split, label %.lr.ph27.split.us

.lr.ph27.split.us:                                ; preds = %.lr.ph27
  store i32 0, ptr %i.h, align 4, !tbaa !240
  %smin = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %storemerge24)
  %i.q = add i32 %smin, -1
  %storemerge1921.us.le = add nsw i32 %i.o, -1
  store i32 %storemerge1921.us.le, ptr %i.n, align 4, !tbaa !228
  store i32 %i.q, ptr %i.j, align 8, !tbaa !54
  br label %._crit_edge28

.lr.ph27.splitthread-pre-split:                   ; preds = %._crit_edge
  %storemerge19.in20.pr = load i32, ptr %i.m, align 4, !tbaa !54
  br label %.lr.ph27.split

.lr.ph27.split:                                   ; preds = %.lr.ph27, %.lr.ph27.splitthread-pre-split
  %storemerge19.in20 = phi i32 [ %storemerge19.in20.pr, %.lr.ph27.splitthread-pre-split ], [ %i.o, %.lr.ph27 ] ; 2 uses
  %i.r = phi i32 [ %i.w, %.lr.ph27.splitthread-pre-split ], [ %i.l, %.lr.ph27 ]
  %storemerge.in30 = phi i32 [ %storemerge, %.lr.ph27.splitthread-pre-split ], [ %storemerge24, %.lr.ph27 ]
  %storemerge1921 = add nsw i32 %storemerge19.in20, -1 ; 2 uses
  store i32 %storemerge1921, ptr %i.n, align 4, !tbaa !228
  %i.s = icmp sgt i32 %storemerge19.in20, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph27.split, %.lr.ph
  %storemerge1922 = phi i32 [ %storemerge19, %.lr.ph ], [ %storemerge1921, %.lr.ph27.split ]
  %i.t = load i32, ptr %i.j, align 8, !tbaa !227
  %i.u = tail call i32 @ff_pre_estimate_p_frame_motion(ptr noundef nonnull %i.a, i32 noundef %storemerge1922, i32 noundef %i.t) #14 ; 0 uses
  %storemerge19.in = load i32, ptr %i.n, align 4, !tbaa !54 ; 2 uses
  %storemerge19 = add nsw i32 %storemerge19.in, -1 ; 2 uses
  store i32 %storemerge19, ptr %i.n, align 4, !tbaa !228
  %i.v = icmp sgt i32 %storemerge19.in, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !464

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %storemerge.in.pre = load i32, ptr %i.j, align 8, !tbaa !54
  %.pre = load i32, ptr %i.k, align 16, !tbaa !222
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph27.split
  %i.w = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.r, %.lr.ph27.split ] ; 2 uses
  %storemerge.in = phi i32 [ %storemerge.in.pre, %._crit_edge.loopexit ], [ %storemerge.in30, %.lr.ph27.split ] ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !240
  %storemerge = add nsw i32 %storemerge.in, -1    ; 2 uses
  store i32 %storemerge, ptr %i.j, align 8, !tbaa !227
  %.not.not = icmp sgt i32 %storemerge.in, %i.w
  br i1 %.not.not, label %.lr.ph27.splitthread-pre-split, label %._crit_edge28, !llvm.loop !465

._crit_edge28:                                    ; preds = %._crit_edge, %.lr.ph27.split.us, %bb.a
  store i32 0, ptr %i.b, align 16, !tbaa !466
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @estimate_motion_thread(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !157    ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !470
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4740
  store i32 %i.e, ptr %i.f, align 4, !tbaa !239
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3780 ; 2 uses
  store i32 1, ptr %i.g, align 4, !tbaa !240
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.i = load i32, ptr %i.h, align 16, !tbaa !222 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3112 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 500 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !227
  %i.l = load i32, ptr %i.k, align 4, !tbaa !223
  %i.m = icmp slt i32 %i.i, %i.l
  br i1 %i.m, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3108 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 388 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 3120 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %._crit_edge
  store i32 0, ptr %i.n, align 4, !tbaa !228
  tail call void @ff_init_block_index(ptr noundef nonnull %i.a) #14
  store i32 0, ptr %i.n, align 4, !tbaa !228
  %i.r = load i32, ptr %i.o, align 4, !tbaa !197
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %storemerge2728 = phi i32 [ %i.z, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.t = load <4 x i32>, ptr %i.p, align 16, !tbaa !54
  %i.u = add nsw <4 x i32> %i.t, splat (i32 2)
  store <4 x i32> %i.u, ptr %i.p, align 16, !tbaa !54
  %i.v = load i32, ptr %i.q, align 16, !tbaa !218
  %i.w = icmp eq i32 %i.v, 3
  %i.x = load i32, ptr %i.j, align 8, !tbaa !227  ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void @ff_estimate_b_frame_motion(ptr noundef nonnull %i.a, i32 noundef %storemerge2728, i32 noundef %i.x) #14
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  tail call void @ff_estimate_p_frame_motion(ptr noundef nonnull %i.a, i32 noundef %storemerge2728, i32 noundef %i.x) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = load i32, ptr %i.n, align 4, !tbaa !228
  %i.z = add nsw i32 %i.y, 1                      ; 3 uses
  store i32 %i.z, ptr %i.n, align 4, !tbaa !228
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !197
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !468

._crit_edge:                                      ; preds = %bb.e, %bb.b
  store i32 0, ptr %i.g, align 4, !tbaa !240
  %i.ac = load i32, ptr %i.j, align 8, !tbaa !227
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  store i32 %i.ad, ptr %i.j, align 8, !tbaa !227
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !223
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.b, label %._crit_edge31, !llvm.loop !469

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mb_var_thread(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !157    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.c = load i32, ptr %i.b, align 16, !tbaa !222 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 500 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !223  ; 2 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge36

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 388 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4464
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 416 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4520
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4528
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 6072
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 396
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 6088
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 5048 ; 2 uses
  %i.p = load i32, ptr %i.g, align 4, !tbaa !197  ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader.preheader, label %._crit_edge36

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.r = sext i32 %i.c to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.s = phi i32 [ %i.e, %.preheader.preheader ], [ %i.x, %._crit_edge ]
  %i.t = phi i32 [ %i.p, %.preheader.preheader ], [ %i.y, %._crit_edge ] ; 2 uses
  %indvars.iv39 = phi i64 [ %i.r, %.preheader.preheader ], [ %indvars.iv.next40, %._crit_edge ] ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.v = shl nsw i64 %indvars.iv39, 4
  %i.w = trunc nsw i64 %indvars.iv39 to i32
  br label %bb.b

._crit_edge36:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.d, align 4, !tbaa !223
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.x = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.s, %.preheader ] ; 2 uses
  %i.y = phi i32 [ %i.bh, %._crit_edge.loopexit ], [ %i.t, %.preheader ]
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.z = sext i32 %i.x to i64
  %i.aa = icmp slt i64 %indvars.iv.next40, %i.z
  br i1 %i.aa, label %.preheader, label %._crit_edge36, !llvm.loop !471

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ab = shl nuw nsw i64 %indvars.iv, 4
  %i.ac = load ptr, ptr %i.h, align 16, !tbaa !145
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !91
  %i.ae = load i64, ptr %i.i, align 16, !tbaa !186 ; 2 uses
  %i.af = mul nsw i64 %i.ae, %i.v
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab ; 2 uses
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !200
  %i.aj = tail call i32 %i.ai(ptr noundef %i.ah, i64 noundef %i.ae) #14 ; 3 uses
  %i.ak = load ptr, ptr %i.k, align 16, !tbaa !473
  %i.al = load i64, ptr %i.i, align 16, !tbaa !186
  %i.am = tail call i32 %i.ak(ptr noundef %i.ah, i64 noundef %i.al) #14
  %i.an = mul i32 %i.aj, %i.aj
  %i.ao = lshr i32 %i.an, 8
  %reass.sub = sub i32 %i.am, %i.ao
  %i.ap = add i32 %reass.sub, 628
  %i.aq = lshr i32 %i.ap, 8                       ; 2 uses
  %i.ar = trunc i32 %i.aq to i16
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !171
end_hunk_0
begin_hunk_1_@get_visual_weight:bb.a

.lr.ph52:                                         ; preds = %bb.b
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.i, i32 6)
  %i.l = add nuw nsw i32 %i.k, 2                  ; 3 uses
  %i.m = zext nneg i32 %i.l to i64
  %.not61 = icmp samesign ugt i64 %indvars.iv70, %i.m
  br i1 %.not61, label %._crit_edge53, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph52
  %i.n = zext nneg i32 %i.l to i64                ; 6 uses
  %i.o = icmp samesign ult i32 %smax, %i.l
  %indvars.iv.next.1 = add nuw nsw i64 %i.j, 1    ; 2 uses
  %i.p = icmp samesign ult i64 %indvars.iv.next.1, %i.n
  %indvars.iv.next.2 = add nuw nsw i64 %i.j, 2    ; 2 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next.2, %i.n
  %indvars.iv.next.3 = add nuw nsw i64 %i.j, 3    ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next.3, %i.n
  %indvars.iv.next.4 = add nuw nsw i64 %i.j, 4    ; 2 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next.4, %i.n
  %indvars.iv.next.5 = add nuw nsw i64 %i.j, 5    ; 2 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next.5, %i.n
  %indvars.iv.next.6 = add nuw nsw i64 %i.j, 6    ; 2 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next.6, %i.n
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv67 = phi i64 [ %i.d, %.lr.ph.us.preheader ], [ %indvars.iv.next68, %._crit_edge.us ] ; 2 uses
  %.03350.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.lcssa, %._crit_edge.us ] ; 8 uses
  %.03449.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.lcssa83, %._crit_edge.us ]
  %.03648.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.lcssa84, %._crit_edge.us ]
  %i.v = mul nsw i64 %indvars.iv67, %i.a
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.v ; 8 uses
  %i.w = getelementptr i8, ptr %invariant.gep, i64 %i.j
  %gep = getelementptr i8, ptr %i.w, i64 -1
  %i.x = load i8, ptr %gep, align 1, !tbaa !52
  %i.y = zext i8 %i.x to i32                      ; 3 uses
  %i.z = add nsw i32 %.03648.us, %i.y             ; 2 uses
  %i.aa = mul nuw nsw i32 %i.y, %i.y
  %i.ab = add nsw i32 %i.aa, %.03449.us           ; 2 uses
  %i.ac = add nsw i32 %.03350.us, 1
  br i1 %i.o, label %bb.c, label %._crit_edge.us

bb.c:                                             ; preds = %.lr.ph.us
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.j
  %i.ad = load i8, ptr %gep.1, align 1, !tbaa !52
  %i.ae = zext i8 %i.ad to i32                    ; 3 uses
  %i.af = add nsw i32 %i.z, %i.ae                 ; 2 uses
  %i.ag = mul nuw nsw i32 %i.ae, %i.ae
  %i.ah = add nsw i32 %i.ag, %i.ab                ; 2 uses
  %i.ai = add nsw i32 %.03350.us, 2
  br i1 %i.p, label %bb.d, label %._crit_edge.us

bb.d:                                             ; preds = %bb.c
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.aj = load i8, ptr %gep.2, align 1, !tbaa !52
  %i.ak = zext i8 %i.aj to i32                    ; 3 uses
  %i.al = add nsw i32 %i.af, %i.ak                ; 2 uses
  %i.am = mul nuw nsw i32 %i.ak, %i.ak
  %i.an = add nsw i32 %i.am, %i.ah                ; 2 uses
  %i.ao = add nsw i32 %.03350.us, 3
  br i1 %i.q, label %bb.e, label %._crit_edge.us

bb.e:                                             ; preds = %bb.d
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ap = load i8, ptr %gep.3, align 1, !tbaa !52
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = add nsw i32 %i.al, %i.aq                ; 2 uses
  %i.as = mul nuw nsw i32 %i.aq, %i.aq
  %i.at = add nsw i32 %i.as, %i.an                ; 2 uses
  %i.au = add nsw i32 %.03350.us, 4
  br i1 %i.r, label %bb.f, label %._crit_edge.us

bb.f:                                             ; preds = %bb.e
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.av = load i8, ptr %gep.4, align 1, !tbaa !52
  %i.aw = zext i8 %i.av to i32                    ; 3 uses
  %i.ax = add nsw i32 %i.ar, %i.aw                ; 2 uses
  %i.ay = mul nuw nsw i32 %i.aw, %i.aw
  %i.az = add nsw i32 %i.ay, %i.at                ; 2 uses
  %i.ba = add nsw i32 %.03350.us, 5
  br i1 %i.s, label %bb.g, label %._crit_edge.us

bb.g:                                             ; preds = %bb.f
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.bb = load i8, ptr %gep.5, align 1, !tbaa !52
  %i.bc = zext i8 %i.bb to i32                    ; 3 uses
  %i.bd = add nsw i32 %i.ax, %i.bc                ; 2 uses
  %i.be = mul nuw nsw i32 %i.bc, %i.bc
  %i.bf = add nsw i32 %i.be, %i.az                ; 2 uses
  %i.bg = add nsw i32 %.03350.us, 6
  br i1 %i.t, label %bb.h, label %._crit_edge.us

bb.h:                                             ; preds = %bb.g
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bh = load i8, ptr %gep.6, align 1, !tbaa !52
  %i.bi = zext i8 %i.bh to i32                    ; 3 uses
  %i.bj = add nsw i32 %i.bd, %i.bi                ; 2 uses
  %i.bk = mul nuw nsw i32 %i.bi, %i.bi
  %i.bl = add nsw i32 %i.bk, %i.bf                ; 2 uses
  %i.bm = add nsw i32 %.03350.us, 7
  br i1 %i.u, label %bb.i, label %._crit_edge.us

bb.i:                                             ; preds = %bb.h
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.bn = load i8, ptr %gep.7, align 1, !tbaa !52
  %i.bo = zext i8 %i.bn to i32                    ; 3 uses
  %i.bp = add nsw i32 %i.bj, %i.bo
  %i.bq = mul nuw nsw i32 %i.bo, %i.bo
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %.03350.us, 8
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.lr.ph.us
  %.lcssa84 = phi i32 [ %i.z, %.lr.ph.us ], [ %i.af, %bb.c ], [ %i.al, %bb.d ], [ %i.ar, %bb.e ], [ %i.ax, %bb.f ], [ %i.bd, %bb.g ], [ %i.bj, %bb.h ], [ %i.bp, %bb.i ] ; 3 uses
  %.lcssa83 = phi i32 [ %i.ab, %.lr.ph.us ], [ %i.ah, %bb.c ], [ %i.an, %bb.d ], [ %i.at, %bb.e ], [ %i.az, %bb.f ], [ %i.bf, %bb.g ], [ %i.bl, %bb.h ], [ %i.br, %bb.i ] ; 2 uses
  %.lcssa = phi i32 [ %i.ac, %.lr.ph.us ], [ %i.ai, %bb.c ], [ %i.ao, %bb.d ], [ %i.au, %bb.e ], [ %i.ba, %bb.f ], [ %i.bg, %bb.g ], [ %i.bm, %bb.h ], [ %i.bs, %bb.i ] ; 3 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next68, %i.h
  br i1 %i.bt, label %.lr.ph.us, label %._crit_edge53.loopexit62, !llvm.loop !527

._crit_edge53.loopexit62:                         ; preds = %._crit_edge.us
  %i.bu = mul nsw i32 %.lcssa, %.lcssa83
  %i.bv = mul nsw i32 %.lcssa84, %.lcssa84
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %.lr.ph52, %._crit_edge53.loopexit62, %bb.b
  %.036.lcssa = phi i32 [ 0, %bb.b ], [ %i.bv, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %.034.lcssa = phi i32 [ 0, %bb.b ], [ %i.bu, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %.033.lcssa = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %i.bw = sub nsw i32 %.034.lcssa, %.036.lcssa    ; 12 uses
  %i.bx = icmp ult i32 %i.bw, 255
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge53
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !52
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.cc, -1
  %i.ce = ashr i32 %i.cd, 4
  br label %ff_sqrt.exit

bb.k:                                             ; preds = %._crit_edge53
  %i.cf = icmp ult i32 %i.bw, 4096
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = lshr i32 %i.bw, 4
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !52
  %i.ck = lshr i8 %i.cj, 2
  %i.cl = zext nneg i8 %i.ck to i32
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.cm = icmp ult i32 %i.bw, 16384
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = lshr i32 %i.bw, 6
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !52
  %i.cr = lshr i8 %i.cq, 1
  %i.cs = zext nneg i8 %i.cr to i32
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ct = icmp ult i32 %i.bw, 65536
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cu = lshr i32 %i.bw, 8
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !52
  %i.cy = zext i8 %i.cx to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.not.i.i = icmp ult i32 %i.bw, 16777216        ; 2 uses
  %spec.select.i.v.i = select i1 %.not.i.i, i32 16, i32 24
  %spec.select.i.i = lshr i32 %i.bw, %spec.select.i.v.i
  %spec.select7.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.cz = zext nneg i32 %spec.select.i.i to i64
  %i.da = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !52
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nuw nsw i32 %spec.select7.i.i, %i.dc
  %i.de = lshr i32 %i.dd, 1                       ; 3 uses
  %i.df = add nuw nsw i32 %i.de, 2
  %i.dg = lshr i32 %i.bw, %i.df                   ; 2 uses
  %i.dh = add nuw nsw i32 %i.de, 8
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !52  ; 2 uses
  %i.dm = zext i8 %i.dl to i32
  %i.dn = zext i8 %i.dl to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !54
  %3 = tail call i32 @llvm.umulh.i32(i32 %i.dg, i32 %i.dp)
  %i.dq = shl i32 %i.dm, %i.de
  %i.dr = add i32 %3, %i.dq
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l
  %.022.i = phi i32 [ %i.cl, %bb.l ], [ %i.cs, %bb.n ], [ %i.cy, %bb.p ], [ %i.dr, %bb.q ] ; 3 uses
  %i.ds = mul i32 %.022.i, %.022.i
  %i.dt = icmp ult i32 %i.bw, %i.ds
  %.neg.i = sext i1 %i.dt to i32
  %i.du = add i32 %.022.i, %.neg.i
  br label %ff_sqrt.exit

ff_sqrt.exit:                                     ; preds = %bb.j, %bb.r
  %.0.i = phi i32 [ %i.ce, %bb.j ], [ %i.du, %bb.r ]
  %i.dv = mul i32 %.0.i, 36
  %i.dw = udiv i32 %i.dv, %.033.lcssa
  %i.dx = trunc i32 %i.dw to i16
  %gep80 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep79, i64 %indvars.iv70
  store i16 %i.dx, ptr %gep80, align 2, !tbaa !53
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next71, 8
  br i1 %exitcond.not, label %bb.s, label %bb.b, !llvm.loop !528

bb.s:                                             ; preds = %ff_sqrt.exit
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next74, 8
  br i1 %exitcond76.not, label %bb.t, label %.preheader, !llvm.loop !529

bb.t:                                             ; preds = %bb.s
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dct_quantize_refine(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 -2147483648, 12) %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 25 uses
  %i.b = alloca [64 x i16], align 16              ; 13 uses
  %i.c = alloca [65 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = load i16, ptr @basis, align 16, !tbaa !53
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.b, label %build_basis.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1816
  br label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.d, %bb.b
  %indvars.iv39.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next40.i, %bb.d ] ; 4 uses
  %i.g = shl nuw nsw i64 %indvars.iv39.i, 3
  %i.h = icmp eq i64 %indvars.iv39.i, 0
  %.0.i = select nsz i1 %i.h, double f0x40C6A09E667F3BCD, double 1.638400e+04 ; 2 uses
  %i.i = fmul nnan nsz double %.0.i, f0x3FE6A09E667F3BCD
  %i.j = trunc nuw nsw i64 %indvars.iv39.i to i32
  %i.k = uitofp nsz nneg i32 %i.j to double
  %i.l = fmul nnan nsz double %i.k, f0x3FD921FB54442D18
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.m = insertelement <4 x double> poison, double %i.l, i64 0
  %i.n = shufflevector <4 x double> %i.m, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.o = fmul nnan nsz <4 x double> %i.n, <double 5.000000e-01, double 1.500000e+00, double 2.500000e+00, double 3.500000e+00>
  %i.p = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.o)
  %i.q = fmul nnan nsz <4 x double> %i.n, <double 4.500000e+00, double 5.500000e+00, double 6.500000e+00, double 7.500000e+00>
  %i.r = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.q)
  br label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.c, %.preheader28.i
  %indvars.iv35.i = phi i64 [ 0, %.preheader28.i ], [ %indvars.iv.next36.i, %bb.c ] ; 4 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv35.i ; 8 uses
  %i.s = icmp eq i64 %indvars.iv35.i, 0
  %.1.i = select nsz i1 %i.s, double %i.i, double %.0.i
  %i.t = trunc nuw nsw i64 %indvars.iv35.i to i32
  %i.u = uitofp nsz nneg i32 %i.t to double
  %i.v = fmul nnan nsz double %i.u, f0x3FD921FB54442D18
  %i.w = insertelement <4 x double> poison, double %.1.i, i64 0
  %i.x = shufflevector <4 x double> %i.w, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.y = fmul nsz <4 x double> %i.p, %i.x
  %i.z = fmul nsz <4 x double> %i.r, %i.x
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader27.i
  %indvars.iv.i = phi i64 [ 0, %.preheader27.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 10 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ab = uitofp nsz nneg i32 %i.aa to double
  %i.ac = fadd nnan nsz double %i.ab, 5.000000e-01
  %i.ad = fmul nsz double %i.v, %i.ac
  %i.ae = tail call nsz double @llvm.cos.f64(double %i.ad)
  %i.af = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = insertelement <4 x double> poison, double %i.ae, i64 0
  %i.ak = shufflevector <4 x double> %i.aj, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.al = fmul nsz <4 x double> %i.y, %i.ak
  %i.am = fptrunc <4 x double> %i.al to <4 x float> ; 4 uses
  %i.an = extractelement <4 x float> %i.am, i64 0
  %i.ao = tail call i64 @llvm.lrint.i64.f32(float %i.an)
  %i.ap = trunc i64 %i.ao to i16
  store i16 %i.ap, ptr %i.ai, align 2, !tbaa !53
  %i.aq = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ar = extractelement <4 x float> %i.am, i64 1
  %i.as = tail call i64 @llvm.lrint.i64.f32(float %i.ar)
  %i.at = trunc i64 %i.as to i16
  %i.au = zext i8 %i.aq to i64
  %i.av = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.au
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i16 %i.at, ptr %i.ax, align 2, !tbaa !53
  %i.ay = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.az = extractelement <4 x float> %i.am, i64 2
  %i.ba = tail call i64 @llvm.lrint.i64.f32(float %i.az)
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = zext i8 %i.ay to i64
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.bc
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i16 %i.bb, ptr %i.bf, align 2, !tbaa !53
  %i.bg = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.bh = extractelement <4 x float> %i.am, i64 3
  %i.bi = tail call i64 @llvm.lrint.i64.f32(float %i.bh)
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = zext i8 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i16 %i.bj, ptr %i.bn, align 2, !tbaa !53
  %i.bo = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.bp
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = fmul nsz <4 x double> %i.z, %i.ak
  %i.bu = fptrunc <4 x double> %i.bt to <4 x float> ; 4 uses
  %i.bv = extractelement <4 x float> %i.bu, i64 0
  %i.bw = tail call i64 @llvm.lrint.i64.f32(float %i.bv)
  %i.bx = trunc i64 %i.bw to i16
  store i16 %i.bx, ptr %i.bs, align 2, !tbaa !53
  %i.by = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.bz = extractelement <4 x float> %i.bu, i64 1
  %i.ca = tail call i64 @llvm.lrint.i64.f32(float %i.bz)
  %i.cb = trunc i64 %i.ca to i16
  %i.cc = zext i8 %i.by to i64
  %i.cd = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  store i16 %i.cb, ptr %i.cf, align 2, !tbaa !53
  %i.cg = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ch = extractelement <4 x float> %i.bu, i64 2
  %i.ci = tail call i64 @llvm.lrint.i64.f32(float %i.ch)
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = zext i8 %i.cg to i64
  %i.cl = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  store i16 %i.cj, ptr %i.cn, align 2, !tbaa !53
  %i.co = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.cp = extractelement <4 x float> %i.bu, i64 3
  %i.cq = tail call i64 @llvm.lrint.i64.f32(float %i.cp)
  %i.cr = trunc i64 %i.cq to i16
  %i.cs = zext i8 %i.co to i64
  %i.ct = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  store i16 %i.cr, ptr %i.cv, align 2, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %bb.c, label %.preheader.i, !llvm.loop !530

bb.c:                                             ; preds = %.preheader.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next36.i, 8
  br i1 %exitcond38.not.i, label %bb.d, label %.preheader27.i, !llvm.loop !531

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 8
  br i1 %exitcond42.not.i, label %build_basis.exit, label %.preheader28.i, !llvm.loop !532

build_basis.exit:                                 ; preds = %bb.d, %bb.a
  %i.cw = shl nsw i32 %5, 1                       ; 4 uses
  %i.cx = add nsw i32 %5, -1
  %i.cy = or i32 %i.cx, 1                         ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !77
  %.not = icmp eq i32 %i.da, 0                    ; 2 uses
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %build_basis.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dc = load ptr, ptr %i.db, align 16, !tbaa !80 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.df = load i32, ptr %i.de, align 4, !tbaa !81
  %.not422 = icmp eq i32 %i.df, 0
  br i1 %.not422, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dg = icmp slt i32 %4, 4
  %i.dh = load i16, ptr %1, align 2, !tbaa !53
  %i.di = zext i16 %i.dh to i32                   ; 2 uses
  br i1 %i.dg, label %.thread446, label %.thread
end_hunk_1
begin_hunk_2_@dct_quantize_refine:bb.a
  %i.wd = load ptr, ptr %i.hk, align 8, !tbaa !540
  %i.we = call i32 %i.wd(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull %i.ns, i32 noundef %i.wc) #14
  %i.wf = add nsw i32 %i.we, %i.wb                ; 2 uses
  %i.wg = icmp slt i32 %i.wf, %.7365
  br i1 %i.wg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.wh = trunc nuw nsw i64 %indvars.iv546 to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bd, %bb.aw, %bb.au
  %.7365.1 = phi i32 [ %.7365, %bb.aw ], [ %.7365, %bb.au ], [ %.7365, %bb.bd ], [ %i.wf, %bb.bq ], [ %.7365, %bb.bp ]
  %.7355.1 = phi i32 [ %.7355, %bb.aw ], [ %.7355, %bb.au ], [ %.7355, %bb.bd ], [ %i.wh, %bb.bq ], [ %.7355, %bb.bp ] ; 2 uses
  %.7345.1 = phi i32 [ %.7345, %bb.aw ], [ %.7345, %bb.au ], [ %.7345, %bb.bd ], [ 1, %bb.bq ], [ %.7345, %bb.bp ] ; 2 uses
  %.7.1 = phi i32 [ %.7, %bb.aw ], [ %.7, %bb.au ], [ %.7, %bb.bd ], [ %i.wc, %bb.bq ], [ %.7, %bb.bp ] ; 2 uses
  %i.wi = icmp ugt i32 %invariant.op, 127
  %spec.store.select7 = select i1 %i.wi, i32 0, i32 %invariant.op
  %i.wj = add nsw i32 %.2373511, 1
  %.1405 = select i1 %.not426, i32 %.0404507, i32 %.2373511
  %.1402 = select i1 %.not426, i32 %.0401508, i32 %spec.store.select7
  %.3374 = select i1 %.not426, i32 %i.wj, i32 0
  %exitcond549.not = icmp eq i64 %indvars.iv.next547, 64
  br i1 %exitcond549.not, label %bb.bs, label %bb.t, !llvm.loop !535

bb.bs:                                            ; preds = %bb.t, %bb.br
  %.4352.lcssa = phi i32 [ %.4352513, %bb.t ], [ %.7355.1, %bb.br ] ; 3 uses
  %.4342.lcssa = phi i32 [ %.4342514, %bb.t ], [ %.7345.1, %bb.br ] ; 2 uses
  %.4.lcssa = phi i32 [ %.4516, %bb.t ], [ %.7.1, %bb.br ]
  %.not431 = icmp eq i32 %.4342.lcssa, 0
  br i1 %.not431, label %bb.cb, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.wk = sext i32 %.4352.lcssa to i64
  %i.wl = getelementptr inbounds i8, ptr %.0407, i64 %i.wk
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !52
  %i.wn = zext i8 %i.wm to i64                    ; 2 uses
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.wn ; 2 uses
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !53
  %i.wq = trunc nsw i32 %.4342.lcssa to i16
  %i.wr = add i16 %i.wp, %i.wq
  store i16 %i.wr, ptr %i.wo, align 2, !tbaa !53
  %i.ws = icmp sgt i32 %.4352.lcssa, %.0394
  br i1 %i.ws, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bt
  %.not432517 = icmp slt i32 %.0394, %.0398
  br i1 %.not432517, label %.loopexit, label %.lr.ph519

.lr.ph519:                                        ; preds = %.preheader, %bb.bu
  %.1395518 = phi i32 [ %i.wz, %bb.bu ], [ %.0394, %.preheader ] ; 4 uses
  %i.wt = zext nneg i32 %.1395518 to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %.0407, i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !52
  %i.ww = zext i8 %i.wv to i64
  %i.wx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ww
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !53
  %.not433 = icmp eq i16 %i.wy, 0
  br i1 %.not433, label %bb.bu, label %.loopexit

bb.bu:                                            ; preds = %.lr.ph519
  %i.wz = add nsw i32 %.1395518, -1
  %.not432.not = icmp sgt i32 %.1395518, %.0398
  br i1 %.not432.not, label %.lr.ph519, label %.loopexit, !llvm.loop !536

.loopexit:                                        ; preds = %.lr.ph519, %bb.bu, %.preheader, %bb.bt
  %.2396 = phi i32 [ %.4352.lcssa, %bb.bt ], [ %.0394, %.preheader ], [ %.1395518, %.lr.ph519 ], [ %i.ho, %bb.bu ] ; 3 uses
  %.not434522 = icmp sgt i32 %.0398, %.2396
  br i1 %.not434522, label %._crit_edge, label %.lr.ph526.preheader

.lr.ph526.preheader:                              ; preds = %.loopexit
  %i.xa = add i32 %.2396, 1
  %wide.trip.count553 = zext i32 %i.xa to i64     ; 2 uses
  %i.xb = sub nsw i64 %wide.trip.count553, %.pre-phi556 ; 3 uses
  %xtraiter = and i64 %i.xb, 1
  %i.xc = add nsw i64 %wide.trip.count553, -1
  %i.xd = icmp eq i64 %.pre-phi556, %i.xc
  br i1 %i.xd, label %.lr.ph526.epil.preheader, label %.lr.ph526.preheader.new

.lr.ph526.preheader.new:                          ; preds = %.lr.ph526.preheader
  %unroll_iter = and i64 %i.xb, -2
  br label %.lr.ph526

.lr.ph526:                                        ; preds = %bb.bz, %.lr.ph526.preheader.new
  %indvars.iv550 = phi i64 [ %.pre-phi556, %.lr.ph526.preheader.new ], [ %indvars.iv.next551.1, %bb.bz ] ; 3 uses
  %.5376525 = phi i32 [ 0, %.lr.ph526.preheader.new ], [ %.6377.1, %bb.bz ] ; 2 uses
  %.5383524 = phi i32 [ 0, %.lr.ph526.preheader.new ], [ %.6384.1, %bb.bz ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph526.preheader.new ], [ %niter.next.1, %bb.bz ]
  %i.xe = getelementptr inbounds nuw i8, ptr %.0407, i64 %indvars.iv550
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !52
  %i.xg = zext i8 %i.xf to i64
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.xg
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !53
  %.not435 = icmp eq i16 %i.xi, 0
  br i1 %.not435, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph526
  %i.xj = add nsw i32 %.5383524, 1
  %i.xk = sext i32 %.5383524 to i64
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.xk
  store i32 %.5376525, ptr %i.xl, align 4, !tbaa !54
  br label %.lr.ph526.1

bb.bw:                                            ; preds = %.lr.ph526
  %i.xm = add nsw i32 %.5376525, 1
  br label %.lr.ph526.1

.lr.ph526.1:                                      ; preds = %bb.bw, %bb.bv
  %.6384 = phi i32 [ %i.xj, %bb.bv ], [ %.5383524, %bb.bw ] ; 3 uses
  %.6377 = phi i32 [ 0, %bb.bv ], [ %i.xm, %bb.bw ] ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.0407, i64 %indvars.iv550
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 1
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !52
  %i.xq = zext i8 %i.xp to i64
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.xq
  %i.xs = load i16, ptr %i.xr, align 2, !tbaa !53
  %.not435.1 = icmp eq i16 %i.xs, 0
  br i1 %.not435.1, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph526.1
  %i.xt = add nsw i32 %.6384, 1
  %i.xu = sext i32 %.6384 to i64
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.xu
  store i32 %.6377, ptr %i.xv, align 4, !tbaa !54
  br label %bb.bz

bb.by:                                            ; preds = %.lr.ph526.1
  %i.xw = add nsw i32 %.6377, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.6384.1 = phi i32 [ %i.xt, %bb.bx ], [ %.6384, %bb.by ] ; 2 uses
  %.6377.1 = phi i32 [ 0, %bb.bx ], [ %i.xw, %bb.by ] ; 2 uses
  %indvars.iv.next551.1 = add nuw nsw i64 %indvars.iv550, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph526, !llvm.loop !537

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bz
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph526.epil.preheader

.lr.ph526.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph526.preheader
  %indvars.iv550.epil.init = phi i64 [ %.pre-phi556, %.lr.ph526.preheader ], [ %indvars.iv.next551.1, %._crit_edge.loopexit.unr-lcssa ]
  %.5376525.epil.init = phi i32 [ 0, %.lr.ph526.preheader ], [ %.6377.1, %._crit_edge.loopexit.unr-lcssa ]
  %.5383524.epil.init = phi i32 [ 0, %.lr.ph526.preheader ], [ %.6384.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod585 = trunc i64 %i.xb to i1
  call void @llvm.assume(i1 %lcmp.mod585)
  %i.xx = getelementptr inbounds nuw i8, ptr %.0407, i64 %indvars.iv550.epil.init
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !52
  %i.xz = zext i8 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.xz
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !53
  %.not435.epil = icmp eq i16 %i.yb, 0
  br i1 %.not435.epil, label %._crit_edge, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph526.epil.preheader
  %i.yc = sext i32 %.5383524.epil.init to i64
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.yc
  store i32 %.5376525.epil.init, ptr %i.yd, align 4, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph526.epil.preheader, %bb.ca, %.loopexit
  %i.ye = load ptr, ptr %i.hn, align 16, !tbaa !539
  %i.yf = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.wn
  call void %i.ye(ptr noundef nonnull %i.a, ptr noundef nonnull %i.yf, i32 noundef %.4.lcssa) #14
  br label %bb.n

bb.cb:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0394
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #10

declare void @ff_clean_intra_table_entries(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #10

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null}
!1 = distinct !{!1, !55}
!2 = distinct !{!2, !55}
!3 = distinct !{!3, !55}
!4 = distinct !{!4, !55}
!5 = distinct !{!5, !55}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 1, !"override-stack-alignment", i32 16}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"FDCTDSPContext", !15, i64 0, !15, i64 8}
!17 = !{!"p1 _ZTS7AVClass", !15, i64 0}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!"ScanTable", !18, i64 0, !11, i64 8, !11, i64 72}
!20 = !{!"p1 _ZTS14AVCodecContext", !15, i64 0}
!21 = !{!"long", !11, i64 0}
!22 = !{!"p1 _ZTS15AVRefStructPool", !15, i64 0}
!23 = !{!"BufferPoolContext", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !12, i64 40, !12, i64 44, !12, i64 48}
!24 = !{!"p1 _ZTS10MPVPicture", !15, i64 0}
!25 = !{!"p1 int", !15, i64 0}
!26 = !{!"MPVWorkPicture", !11, i64 0, !11, i64 24, !24, i64 48, !18, i64 56, !11, i64 64, !25, i64 80, !18, i64 88, !11, i64 96, !12, i64 112}
!27 = !{!"p1 short", !15, i64 0}
!28 = !{!"ScratchpadContext", !18, i64 0, !18, i64 8, !11, i64 16, !12, i64 24}
!29 = !{!"BlockDSPContext", !15, i64 0, !15, i64 8, !11, i64 16}
!30 = !{!"H264ChromaContext", !11, i64 0, !11, i64 32}
!31 = !{!"HpelDSPContext", !11, i64 0, !11, i64 128, !11, i64 256, !11, i64 352}
!32 = !{!"IDCTDSPContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !11, i64 48, !12, i64 112, !12, i64 116}
!33 = !{!"QpelDSPContext", !11, i64 0, !11, i64 256, !11, i64 512}
!34 = !{!"VideoDSPContext", !15, i64 0, !15, i64 8}
!35 = !{!"H263DSPContext", !15, i64 0, !15, i64 8}
!36 = !{!"short", !11, i64 0}
!37 = !{!"p1 _ZTS7AVFrame", !15, i64 0}
!38 = !{!"p1 _ZTS11ThreadFrame", !15, i64 0}
!39 = !{!"p1 _ZTS14ThreadProgress", !15, i64 0}
!40 = !{!"ERPicture", !37, i64 0, !38, i64 8, !39, i64 16, !11, i64 24, !11, i64 40, !25, i64 56, !12, i64 64}
!41 = !{!"ERContext", !20, i64 0, !15, i64 8, !25, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !21, i64 40, !21, i64 48, !11, i64 56, !12, i64 60, !18, i64 64, !18, i64 72, !11, i64 80, !18, i64 104, !18, i64 112, !11, i64 120, !40, i64 184, !40, i64 256, !40, i64 328, !11, i64 400, !11, i64 416, !36, i64 432, !36, i64 434, !12, i64 436, !12, i64 440, !15, i64 448, !15, i64 456}
!42 = !{!"MpegEncContext", !17, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !11, i64 20, !12, i64 68, !19, i64 72, !19, i64 208, !20, i64 344, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !12, i64 368, !12, i64 372, !12, i64 376, !12, i64 380, !12, i64 384, !12, i64 388, !12, i64 392, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408, !12, i64 412, !21, i64 416, !21, i64 424, !22, i64 432, !23, i64 440, !12, i64 496, !12, i64 500, !11, i64 504, !12, i64 760, !26, i64 768, !26, i64 888, !26, i64 1008, !27, i64 1128, !18, i64 1136, !18, i64 1144, !18, i64 1152, !18, i64 1160, !18, i64 1168, !27, i64 1176, !27, i64 1184, !27, i64 1192, !12, i64 1200, !18, i64 1208, !18, i64 1216, !18, i64 1224, !18, i64 1232, !28, i64 1240, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !29, i64 1288, !30, i64 1320, !31, i64 1384, !32, i64 1768, !33, i64 1888, !34, i64 2656, !35, i64 2672, !27, i64 2688, !11, i64 2696, !12, i64 2728, !12, i64 2732, !11, i64 2736, !11, i64 2800, !11, i64 2816, !11, i64 2848, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !11, i64 3120, !11, i64 3144, !11, i64 3168, !25, i64 3192, !11, i64 3200, !11, i64 3328, !11, i64 3456, !11, i64 3584, !12, i64 3712, !12, i64 3716, !12, i64 3720, !12, i64 3724, !12, i64 3728, !12, i64 3732, !12, i64 3736, !12, i64 3740, !21, i64 3744, !21, i64 3752, !36, i64 3760, !36, i64 3762, !36, i64 3764, !36, i64 3766, !12, i64 3768, !12, i64 3772, !12, i64 3776, !12, i64 3780, !12, i64 3784, !12, i64 3788, !12, i64 3792, !12, i64 3796, !11, i64 3800, !12, i64 3816, !12, i64 3820, !12, i64 3824, !12, i64 3828, !12, i64 3832, !12, i64 3836, !12, i64 3840, !12, i64 3844, !12, i64 3848, !12, i64 3852, !12, i64 3856, !12, i64 3860, !12, i64 3864, !12, i64 3868, !11, i64 3872, !12, i64 3880, !12, i64 3884, !15, i64 3888, !15, i64 3896, !12, i64 3904, !12, i64 3908, !41, i64 3912}
!43 = !{!"PutBitContext", !12, i64 0, !12, i64 4, !18, i64 8, !18, i64 16, !18, i64 24}
!44 = !{!"p1 _ZTS17MPVMainEncContext", !15, i64 0}
!45 = !{!"MpegvideoEncDSPContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !11, i64 40, !15, i64 72}
!46 = !{!"PixblockDSPContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!47 = !{!"any p2 pointer", !15, i64 0}
!48 = !{!"MotionEstContext", !20, i64 0, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 48, !18, i64 80, !18, i64 88, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !11, i64 168, !11, i64 296, !12, i64 424, !12, i64 428, !21, i64 432, !21, i64 440, !12, i64 448, !11, i64 456, !11, i64 504, !11, i64 552, !11, i64 600, !11, i64 648, !15, i64 712, !47, i64 720, !47, i64 728, !47, i64 736, !47, i64 744, !18, i64 752, !18, i64 760, !15, i64 768, !11, i64 776, !11, i64 1032}
!49 = !{!"p1 _ZTS12MJpegContext", !15, i64 0}
!50 = !{!"MPVEncContext", !42, i64 0, !43, i64 4384, !12, i64 4416, !12, i64 4420, !25, i64 4424, !12, i64 4432, !12, i64 4436, !12, i64 4440, !12, i64 4444, !12, i64 4448, !12, i64 4452, !12, i64 4456, !12, i64 4460, !37, i64 4464, !44, i64 4472, !16, i64 4480, !45, i64 4496, !46, i64 4576, !48, i64 4608, !12, i64 5896, !12, i64 5900, !27, i64 5904, !27, i64 5912, !27, i64 5920, !27, i64 5928, !27, i64 5936, !27, i64 5944, !11, i64 5952, !11, i64 6016, !11, i64 6032, !27, i64 6064, !27, i64 6072, !27, i64 6080, !18, i64 6088, !11, i64 6096, !12, i64 6120, !12, i64 6124, !12, i64 6128, !12, i64 6132, !12, i64 6136, !18, i64 6144, !18, i64 6152, !18, i64 6160, !18, i64 6168, !18, i64 6176, !18, i64 6184, !18, i64 6192, !11, i64 6200, !27, i64 6248, !25, i64 6256, !25, i64 6264, !25, i64 6272, !27, i64 6280, !27, i64 6288, !27, i64 6296, !25, i64 6304, !11, i64 6312, !27, i64 6320, !12, i64 6328, !12, i64 6332, !12, i64 6336, !12, i64 6340, !12, i64 6344, !12, i64 6348, !12, i64 6352, !12, i64 6356, !11, i64 6360, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !18, i64 6392, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !49, i64 6424, !12, i64 6432, !12, i64 6436, !12, i64 6440, !12, i64 6444, !12, i64 6448, !43, i64 6456, !43, i64 6488, !12, i64 6520, !12, i64 6524, !12, i64 6528, !12, i64 6532, !12, i64 6536, !12, i64 6540, !18, i64 6544, !15, i64 6552, !15, i64 6560, !11, i64 6568, !11, i64 6584, !11, i64 6600, !11, i64 6616, !15, i64 6632, !12, i64 6640, !11, i64 6644, !11, i64 6708, !11, i64 6784}
!51 = !{!50, !12, i64 3836}
!52 = !{!11, !11, i64 0}
!53 = !{!36, !36, i64 0}
!54 = !{!12, !12, i64 0}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!50, !20, i64 344}
!57 = !{!43, !12, i64 0}
!58 = !{!43, !12, i64 4}
!59 = !{!43, !18, i64 24}
!60 = !{!43, !18, i64 16}
!61 = !{!"p1 _ZTS7AVCodec", !15, i64 0}
!62 = !{!"p1 _ZTS15AVCodecInternal", !15, i64 0}
!63 = !{!"AVRational", !12, i64 0, !12, i64 4}
!64 = !{!"float", !11, i64 0}
!65 = !{!"AVChannelLayout", !12, i64 0, !12, i64 4, !11, i64 8, !15, i64 16}
!66 = !{!"p1 _ZTS10RcOverride", !15, i64 0}
!67 = !{!"p1 _ZTS9AVHWAccel", !15, i64 0}
!68 = !{!"p1 _ZTS11AVBufferRef", !15, i64 0}
!69 = !{!"p1 _ZTS17AVCodecDescriptor", !15, i64 0}
!70 = !{!"p1 _ZTS16AVPacketSideData", !15, i64 0}
!71 = !{!"p2 _ZTS15AVFrameSideData", !47, i64 0}
!72 = !{!"AVCodecContext", !17, i64 0, !12, i64 8, !12, i64 12, !61, i64 16, !12, i64 24, !12, i64 28, !15, i64 32, !62, i64 40, !15, i64 48, !21, i64 56, !12, i64 64, !12, i64 68, !18, i64 72, !12, i64 80, !63, i64 84, !63, i64 92, !63, i64 100, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !63, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !15, i64 184, !15, i64 192, !12, i64 200, !64, i64 204, !64, i64 208, !64, i64 212, !64, i64 216, !64, i64 220, !64, i64 224, !64, i64 228, !64, i64 232, !64, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !27, i64 288, !27, i64 296, !27, i64 304, !12, i64 312, !12, i64 316, !12, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !12, i64 348, !65, i64 352, !12, i64 376, !12, i64 380, !12, i64 384, !12, i64 388, !12, i64 392, !12, i64 396, !12, i64 400, !12, i64 404, !15, i64 408, !12, i64 416, !12, i64 420, !12, i64 424, !64, i64 428, !64, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !66, i64 456, !21, i64 464, !21, i64 472, !64, i64 480, !64, i64 484, !12, i64 488, !12, i64 492, !18, i64 496, !18, i64 504, !12, i64 512, !12, i64 516, !12, i64 520, !12, i64 524, !12, i64 528, !67, i64 536, !15, i64 544, !68, i64 552, !68, i64 560, !12, i64 568, !12, i64 572, !11, i64 576, !12, i64 640, !12, i64 644, !12, i64 648, !12, i64 652, !12, i64 656, !12, i64 660, !12, i64 664, !15, i64 672, !15, i64 680, !12, i64 688, !12, i64 692, !12, i64 696, !12, i64 700, !12, i64 704, !12, i64 708, !12, i64 712, !12, i64 716, !12, i64 720, !69, i64 728, !18, i64 736, !12, i64 744, !12, i64 748, !18, i64 752, !18, i64 760, !18, i64 768, !70, i64 776, !12, i64 784, !12, i64 788, !21, i64 792, !12, i64 800, !12, i64 804, !21, i64 808, !15, i64 816, !21, i64 824, !25, i64 832, !12, i64 840, !71, i64 848, !12, i64 856, !12, i64 860}
!73 = !{!72, !12, i64 492}
!74 = !{!50, !15, i64 6560}
!75 = !{!50, !15, i64 4480}
!76 = !{!50, !25, i64 6304}
!77 = !{!50, !12, i64 3116}
!78 = !{!50, !15, i64 4496}
!79 = !{!50, !27, i64 6320}
!80 = !{!50, !18, i64 208}
!81 = !{!50, !12, i64 68}
!82 = !{!25, !25, i64 0}
!83 = !{!50, !18, i64 72}
!84 = !{!50, !25, i64 6272}
!85 = !{!50, !12, i64 6132}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!50, !12, i64 4420}
!88 = !{!50, !12, i64 6448}
!89 = !{!50, !12, i64 360}
!90 = !{!50, !18, i64 6160}
!91 = !{!18, !18, i64 0}
!92 = !{!72, !15, i64 32}
!93 = !{!72, !12, i64 136}
!94 = !{!50, !12, i64 3856}
!95 = !{!"p1 _ZTS16RateControlEntry", !15, i64 0}
!96 = !{!"double", !11, i64 0}
!97 = !{!"p1 _ZTS6AVExpr", !15, i64 0}
!98 = !{!"p1 float", !15, i64 0}
!99 = !{!"RateControlContext", !12, i64 0, !95, i64 8, !96, i64 16, !11, i64 24, !96, i64 144, !96, i64 152, !96, i64 160, !96, i64 168, !96, i64 176, !11, i64 184, !21, i64 224, !21, i64 232, !11, i64 240, !11, i64 280, !11, i64 320, !11, i64 360, !11, i64 400, !12, i64 420, !64, i64 424, !64, i64 428, !12, i64 432, !64, i64 436, !64, i64 440, !18, i64 448, !97, i64 456, !98, i64 464, !98, i64 472}
!100 = !{!"MPVMainEncContext", !50, i64 0, !12, i64 9856, !12, i64 9860, !12, i64 9864, !12, i64 9868, !12, i64 9872, !12, i64 9876, !11, i64 9880, !11, i64 10016, !21, i64 10152, !21, i64 10160, !21, i64 10168, !11, i64 10176, !12, i64 10320, !12, i64 10324, !12, i64 10328, !12, i64 10332, !12, i64 10336, !64, i64 10340, !12, i64 10344, !12, i64 10348, !12, i64 10352, !12, i64 10356, !18, i64 10360, !12, i64 10368, !12, i64 10372, !12, i64 10376, !12, i64 10380, !15, i64 10384, !15, i64 10392, !21, i64 10400, !21, i64 10408, !12, i64 10416, !12, i64 10420, !12, i64 10424, !12, i64 10428, !12, i64 10432, !11, i64 10436, !12, i64 10456, !12, i64 10460, !99, i64 10464, !12, i64 10944, !12, i64 10948, !21, i64 10952, !21, i64 10960, !18, i64 10968, !18, i64 10976, !27, i64 10984}
!101 = !{!100, !12, i64 9860}
!102 = !{!72, !12, i64 200}
!103 = !{!100, !12, i64 9864}
!104 = !{!72, !61, i64 16}
!105 = !{!"p1 _ZTS9AVProfile", !15, i64 0}
!106 = !{!"AVCodec", !18, i64 0, !18, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !11, i64 28, !17, i64 32, !105, i64 40, !18, i64 48}
!107 = !{!50, !12, i64 368}
!108 = !{!106, !12, i64 24}
!109 = !{!72, !12, i64 64}
!110 = !{!50, !12, i64 6536}
!111 = !{!50, !12, i64 6532}
!112 = !{!100, !21, i64 10152}
!113 = !{!100, !12, i64 9856}
!114 = !{!100, !12, i64 10432}
!115 = !{!50, !12, i64 4456}
!116 = !{!50, !12, i64 4432}
!117 = !{!50, !12, i64 6416}
!118 = !{!72, !21, i64 464}
!119 = !{!72, !12, i64 448}
!120 = !{!72, !12, i64 24}
!121 = !{!72, !21, i64 472}
!122 = !{!72, !12, i64 84}
!123 = !{!72, !12, i64 284}
!124 = !{!72, !12, i64 112}
!125 = !{!72, !12, i64 116}
!126 = !{!100, !12, i64 10332}
!127 = !{!100, !12, i64 10320}
!128 = !{!72, !12, i64 436}
!129 = !{!72, !12, i64 440}
!130 = !{!50, !12, i64 3776}
!131 = !{!50, !12, i64 352}
!132 = !{!50, !12, i64 356}
!133 = !{!50, !12, i64 6400}
!134 = !{!50, !12, i64 4744}
!135 = !{!50, !12, i64 6524}
!136 = !{!100, !15, i64 10392}
!137 = !{!50, !12, i64 3784}
end_hunk_2
