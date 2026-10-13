Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/g2meet?download=true
inline.NumInlined: 41
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@g2m_decode_frame:bb.a
  br i1 %i.tl, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !109
  %i.to = and i32 %i.tn, -3
  %masksel = select i1 %.not201, i32 0, i32 2
  %.sink = or disjoint i32 %i.to, %masksel
  %i.tp = select i1 %.not201, i32 2, i32 1
  store i32 %.sink, ptr %i.tm, align 4, !tbaa !109
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %i.tp, ptr %i.tq, align 8, !tbaa !110
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !85
  %i.tt = icmp sgt i32 %i.ts, 0
  br i1 %i.tt, label %.lr.ph475, label %._crit_edge

.lr.ph475:                                        ; preds = %bb.cw
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.f, i64 10784
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph475, %bb.cx
  %.0170474 = phi i32 [ 0, %.lr.ph475 ], [ %i.uj, %bb.cx ] ; 3 uses
  %i.tw = load ptr, ptr %1, align 8, !tbaa !111
  %i.tx = load i32, ptr %i.tu, align 8, !tbaa !30
  %i.ty = mul nsw i32 %i.tx, %.0170474
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds i8, ptr %i.tw, i64 %i.tz
  %i.ub = load ptr, ptr %i.ti, align 8, !tbaa !48
  %i.uc = load i32, ptr %i.tv, align 16, !tbaa !47
  %i.ud = mul nsw i32 %i.uc, %.0170474
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds i8, ptr %i.ub, i64 %i.ue
  %i.ug = load i32, ptr %i.te, align 8, !tbaa !43
  %i.uh = mul nsw i32 %i.ug, 3
  %i.ui = sext i32 %i.uh to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ua, ptr align 1 %i.uf, i64 %i.ui, i1 false)
  %i.uj = add nuw nsw i32 %.0170474, 1            ; 2 uses
  %i.uk = load i32, ptr %i.tr, align 4, !tbaa !85
  %i.ul = icmp slt i32 %i.uj, %i.uk
  br i1 %i.ul, label %bb.cx, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.cx, %bb.cw
  %i.um = load ptr, ptr %1, align 8, !tbaa !111
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !30
  tail call fastcc void @g2m_paint_cursor(ptr noundef nonnull %i.f, ptr noundef %i.um, i32 noundef %i.uo)
  store i32 1, ptr %2, align 4, !tbaa !30
  br label %bb.cy

g2m_init_buffers.exit.thread:                     ; preds = %bb.ak, %bb.al, %bb.ac, %bb.aj, %bb.an, %bb.q, %.loopexit355, %bytestream2_get_be32.exit.thread, %bb.y, %.loopexit354, %.loopexit353, %.loopexit352
  %.1 = phi i32 [ -1094995529, %.loopexit352 ], [ -1163346256, %.loopexit355 ], [ -1163346256, %.loopexit353 ], [ -1094995529, %.loopexit354 ], [ -1094995529, %bb.y ], [ -1163346256, %bytestream2_get_be32.exit.thread ], [ %i.ci, %bb.q ], [ -12, %bb.an ], [ -12, %bb.aj ], [ -12, %bb.ac ], [ -12, %bb.al ], [ -12, %bb.ak ]
  store i32 0, ptr %i.al, align 4, !tbaa !44
  store i32 0, ptr %i.ak, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cs, %bb.ct, %bb.cu, %._crit_edge, %bb.cv, %g2m_init_buffers.exit.thread, %bytestream2_get_be32.exit231.thread, %bb.b
  %.0173 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bytestream2_get_be32.exit231.thread ], [ %.1, %g2m_init_buffers.exit.thread ], [ %i.tk, %bb.cv ], [ %i.d, %._crit_edge ], [ %i.d, %bb.cu ], [ %i.d, %bb.ct ], [ %i.d, %bb.cs ]
  ret i32 %.0173
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @g2m_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9600
  tail call fastcc void @jpg_free_context(ptr noundef nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 10816
  tail call void @av_freep(ptr noundef nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 10808
  store ptr null, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10848
  tail call void @av_freep(ptr noundef nonnull %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 10856
  tail call void @av_freep(ptr noundef nonnull %i.g) #11
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 10792
  tail call void @av_freep(ptr noundef nonnull %i.h) #11
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 10800
  tail call void @av_freep(ptr noundef nonnull %i.i) #11
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 10864
  tail call void @av_freep(ptr noundef nonnull %i.j) #11
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 10776
  tail call void @av_freep(ptr noundef nonnull %i.k) #11
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 10788
  store i32 0, ptr %i.l, align 4, !tbaa !112
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc i32 @jpg_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = tail call i32 @ff_mjpeg_build_vlc(ptr noundef nonnull %i.a, ptr noundef nonnull @ff_mjpeg_bits_dc_luminance, ptr noundef nonnull @ff_mjpeg_val_dc, i32 noundef 0, ptr noundef %0) #11 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = tail call i32 @ff_mjpeg_build_vlc(ptr noundef nonnull %i.c, ptr noundef nonnull @ff_mjpeg_bits_dc_chrominance, ptr noundef nonnull @ff_mjpeg_val_dc, i32 noundef 0, ptr noundef %0) #11 ; 2 uses
  %.not25 = icmp eq i32 %i.d, 0
  br i1 %.not25, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.f = tail call i32 @ff_mjpeg_build_vlc(ptr noundef nonnull %i.e, ptr noundef nonnull @ff_mjpeg_bits_ac_luminance, ptr noundef nonnull @ff_mjpeg_val_ac_luminance, i32 noundef 1, ptr noundef %0) #11 ; 2 uses
  %.not26 = icmp eq i32 %i.f, 0
  br i1 %.not26, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.h = tail call i32 @ff_mjpeg_build_vlc(ptr noundef nonnull %i.g, ptr noundef nonnull @ff_mjpeg_bits_ac_chrominance, ptr noundef nonnull @ff_mjpeg_val_ac_chrominance, i32 noundef 1, ptr noundef %0) #11 ; 2 uses
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ff_blockdsp_init(ptr noundef nonnull %1) #11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @ff_idctdsp_init(ptr noundef nonnull %i.i, ptr noundef %0) #11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @ff_permute_scantable(ptr noundef nonnull %i.j, ptr noundef nonnull @ff_zigzag_direct, ptr noundef nonnull %i.k) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_mjpeg_build_vlc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_blockdsp_init(ptr noundef) local_unnamed_addr #3

declare void @ff_idctdsp_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_permute_scantable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @av_image_check_size2(i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @epic_jb_decode_tile(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 256) %2, ptr noundef %3, i64 noundef range(i64 0, 4294967294) %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %3, align 1, !tbaa !31      ; 2 uses
  %i.b = add nsw i64 %4, -1                       ; 2 uses
  %i.c = zext i8 %i.a to i32                      ; 7 uses
  %.not276 = icmp sgt i8 %i.a, -1
  br i1 %.not276, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = and i32 %i.c, 64
  %.not312 = icmp eq i32 %i.d, 0
  br i1 %.not312, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.e = and i32 %i.c, 32
  %.not313 = icmp eq i32 %i.e, 0
  br i1 %.not313, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.f = and i32 %i.c, 16
  %.not314 = icmp eq i32 %i.f, 0
  br i1 %.not314, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.g = and i32 %i.c, 8
  %.not315 = icmp eq i32 %i.g, 0
  br i1 %.not315, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.h = and i32 %i.c, 4
  %.not316 = icmp eq i32 %i.h, 0
  br i1 %.not316, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.i = and i32 %i.c, 2
  %.not317 = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not317, i32 6, i32 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.5, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %bb.b
  %.0211.lcssa = phi i32 [ 0, %bb.b ], [ 1, %.lr.ph ], [ 2, %.lr.ph.1 ], [ 3, %.lr.ph.2 ], [ 4, %.lr.ph.3 ], [ 5, %.lr.ph.4 ], [ %spec.select, %.lr.ph.5 ] ; 9 uses
  %i.j = icmp samesign ugt i32 %.0211.lcssa, 3
  %i.k = zext nneg i32 %.0211.lcssa to i64
  %i.l = icmp samesign ult i64 %i.b, %i.k
  %or.cond = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %5, i32 noundef 16, ptr noundef nonnull @.str.23) #11
  br label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %i.m = lshr exact i32 128, %.0211.lcssa
  %i.n = add nuw nsw i32 %i.m, 255
  %i.o = and i32 %i.n, %i.c
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %.0217237 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.not302 = icmp eq i32 %.0211.lcssa, 0
  br i1 %.not302, label %._crit_edge244, label %.lr.ph243

.lr.ph243:                                        ; preds = %bb.d
  %i.q = shl nuw nsw i64 %i.p, 8
  %i.r = load i8, ptr %.0217237, align 1, !tbaa !31
  %i.s = zext i8 %i.r to i64
  %i.t = or disjoint i64 %i.q, %i.s               ; 2 uses
  %.not318 = icmp eq i32 %.0211.lcssa, 1
  br i1 %.not318, label %._crit_edge244.loopexit, label %.lr.ph243.1

.lr.ph243.1:                                      ; preds = %.lr.ph243
  %.0217 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = load i8, ptr %.0217, align 1, !tbaa !31
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.u, %i.w               ; 2 uses
  %i.y = icmp sgt i32 %.0211.lcssa, 2
  br i1 %i.y, label %.lr.ph243.2, label %._crit_edge244.loopexit

.lr.ph243.2:                                      ; preds = %.lr.ph243.1
  %.0217.1 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %6 = shl nuw nsw i64 %i.x, 8
  %7 = load i8, ptr %.0217.1, align 1, !tbaa !31
  %8 = zext i8 %7 to i64
  %9 = or disjoint i64 %6, %8                     ; 2 uses
  %.not319 = icmp eq i32 %.0211.lcssa, 3
  br i1 %.not319, label %._crit_edge244.loopexit, label %.lr.ph243.3

.lr.ph243.3:                                      ; preds = %.lr.ph243.2
  %.0217.2 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %10 = shl i64 %9, 8
  %11 = load i8, ptr %.0217.2, align 1, !tbaa !31
  %12 = zext i8 %11 to i64
  %13 = or disjoint i64 %10, %12                  ; 2 uses
  %14 = icmp sgt i32 %.0211.lcssa, 4
  br i1 %14, label %.lr.ph243.6, label %._crit_edge244.loopexit

.lr.ph243.6:                                      ; preds = %.lr.ph243.3
  %15 = shl i64 %13, 16
  %.0217.3 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %16 = load i8, ptr %.0217.3, align 1, !tbaa !31
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 8
  %19 = or disjoint i64 %15, %18
  %.0217.4 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %20 = load i8, ptr %.0217.4, align 1, !tbaa !31
  %21 = zext i8 %20 to i64
  %22 = or disjoint i64 %19, %21
  %.0217.5 = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.z = shl i64 %22, 8
  %i.aa = load i8, ptr %.0217.5, align 1, !tbaa !31
  %i.ab = zext i8 %i.aa to i64
  %i.ac = or disjoint i64 %i.z, %i.ab
  br label %._crit_edge244.loopexit

._crit_edge244.loopexit:                          ; preds = %.lr.ph243.6, %.lr.ph243.3, %.lr.ph243.2, %.lr.ph243.1, %.lr.ph243
  %.lcssa = phi i64 [ %i.t, %.lr.ph243 ], [ %i.x, %.lr.ph243.1 ], [ %9, %.lr.ph243.2 ], [ %13, %.lr.ph243.3 ], [ %i.ac, %.lr.ph243.6 ]
  %i.ad = add nsw i64 %4, -2
  %i.ae = add nsw i32 %.0211.lcssa, -1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = sub nsw i64 %i.ad, %i.af
  %i.ah = getelementptr i8, ptr %3, i64 %i.af
  %scevgep = getelementptr i8, ptr %i.ah, i64 2
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %._crit_edge244.loopexit, %bb.d
  %.0216.lcssa = phi i64 [ %i.b, %bb.d ], [ %i.ag, %._crit_edge244.loopexit ] ; 5 uses
  %.0210.lcssa = phi i64 [ %i.p, %bb.d ], [ %.lcssa, %._crit_edge244.loopexit ] ; 7 uses
  %.0217.lcssa = phi ptr [ %.0217237, %bb.d ], [ %scevgep, %._crit_edge244.loopexit ] ; 3 uses
  %i.ai = icmp ult i64 %.0216.lcssa, %.0210.lcssa
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge244
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %5, i32 noundef 16, ptr noundef nonnull @.str.24, i64 noundef %.0210.lcssa, i64 noundef %.0216.lcssa) #11
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge244
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 10728
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 10748 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !45 ; 2 uses
  %i.an = mul nsw i32 %i.am, %1                   ; 2 uses
  %i.ao = sub nsw i32 %i.ak, %i.an
  %. = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.am) ; 12 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 10732
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 10752 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 16, !tbaa !46 ; 2 uses
  %i.at = mul i32 %i.as, %2                       ; 2 uses
  %i.au = sub i32 %i.aq, %i.at
  %i.av = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.as) ; 7 uses
  %i.aw = add nsw i32 %., 15
  %i.ax = and i32 %i.aw, -16                      ; 2 uses
  %i.ay = add nsw i32 %i.av, 15
  %i.az = and i32 %i.ay, -16                      ; 3 uses
  %i.ba = icmp sgt i32 %., 16384
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %5, ptr noundef nonnull @.str.25) #11
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %.not226 = icmp eq i64 %.0210.lcssa, 0
  br i1 %.not226, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(9600) %0, i8 0, i64 9600, i1 false)
  tail call void @ff_els_decoder_init(ptr noundef nonnull %0, ptr noundef nonnull %.0217.lcssa, i64 noundef %.0210.lcssa) #11
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5504 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.bb, i8 0, i64 4096, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.bd = tail call i32 @ff_els_decode_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %i.bc) #11
  %i.be = tail call i32 @ff_els_decode_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %i.bc) #11
  %i.bf = tail call i32 @ff_els_decode_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %i.bc) #11
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !120
  %.not227 = icmp eq i32 %i.bh, 0
  br i1 %.not227, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %5, i32 noundef 16, ptr noundef nonnull @.str.26) #11
  tail call void @ff_els_decoder_uninit(ptr noundef nonnull %i.bc) #11
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 10808 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 10828 ; 4 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !51
  %i.bm = tail call fastcc i32 @epic_decode_tile(ptr noundef nonnull %0, ptr noundef %i.bj, i32 noundef %i.av, i32 noundef %., i32 noundef %i.bl)
  tail call fastcc void @epic_free_pixel_cache(ptr noundef nonnull %i.bb)
  tail call void @ff_els_decoder_uninit(ptr noundef nonnull %i.bc) #11
  %.not228 = icmp eq i32 %i.bm, 0
  br i1 %.not228, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 824
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !121
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %5, i32 noundef 16, ptr noundef nonnull @.str.27, i64 noundef %i.bo, i32 noundef %1, i32 noundef %2) #11
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 10776 ; 2 uses
  %i.bq = mul i32 %1, 3                           ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10784 ; 4 uses
  %i.bs = icmp sgt i32 %i.av, 0                   ; 2 uses
  %i.bt = icmp sgt i32 %., 0                      ; 2 uses
  %or.cond274 = and i1 %i.bs, %i.bt               ; 2 uses
  br i1 %or.cond274, label %.preheader233.preheader, label %._crit_edge255.split

.preheader233.preheader:                          ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !48
  %i.bv = load i32, ptr %i.al, align 4, !tbaa !45
  %i.bw = mul i32 %i.bq, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 %i.bx
  %i.bz = load i32, ptr %i.ar, align 16, !tbaa !46
  %i.ca = mul nsw i32 %i.bz, %2
  %i.cb = load i32, ptr %i.br, align 16, !tbaa !47
  %i.cc = mul nsw i32 %i.ca, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.by, i64 %i.cd
  %i.cf = load ptr, ptr %i.bi, align 8, !tbaa !52
  %wide.trip.count = zext nneg i32 %. to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cg = icmp eq i32 %., 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod305 = trunc i32 %. to i1
  br label %.preheader233

.preheader233:                                    ; preds = %.preheader233.preheader, %._crit_edge251
  %.0199254 = phi ptr [ %i.dt, %._crit_edge251 ], [ %i.cf, %.preheader233.preheader ] ; 4 uses
  %.0201253 = phi i32 [ %i.dx, %._crit_edge251 ], [ 0, %.preheader233.preheader ]
  %.0208252 = phi ptr [ %i.dw, %._crit_edge251 ], [ %i.ce, %.preheader233.preheader ] ; 3 uses
  br i1 %i.cg, label %.epil.preheader, label %.preheader233.new

.preheader233.new:                                ; preds = %.preheader233, %.preheader233.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader233.new ], [ 0, %.preheader233 ] ; 3 uses
  %.0196249 = phi ptr [ %i.df, %.preheader233.new ], [ %.0208252, %.preheader233 ] ; 7 uses
  %niter = phi i64 [ %niter.next.1, %.preheader233.new ], [ 0, %.preheader233 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.0199254, i64 %indvars.iv ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !30
  %i.cj = lshr i32 %i.ci, 16
  %i.ck = trunc i32 %i.cj to i8
  store i8 %i.ck, ptr %.0196249, align 1, !tbaa !31
  %i.cl = load i32, ptr %i.ch, align 4, !tbaa !30
  %i.cm = lshr i32 %i.cl, 8
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.0196249, i64 1
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !31
  %i.cp = load i32, ptr %i.ch, align 4, !tbaa !30
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %.0196249, i64 2
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %.0196249, i64 3
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.0199254, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !30
  %i.cw = lshr i32 %i.cv, 16
  %i.cx = trunc i32 %i.cw to i8
  store i8 %i.cx, ptr %i.cs, align 1, !tbaa !31
  %i.cy = load i32, ptr %i.cu, align 4, !tbaa !30
  %i.cz = lshr i32 %i.cy, 8
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.0196249, i64 4
  store i8 %i.da, ptr %i.db, align 1, !tbaa !31
  %i.dc = load i32, ptr %i.cu, align 4, !tbaa !30
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %.0196249, i64 5
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %.0196249, i64 6 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge251.unr-lcssa, label %.preheader233.new, !llvm.loop !113

._crit_edge251.unr-lcssa:                         ; preds = %.preheader233.new
  br i1 %lcmp.mod.not, label %._crit_edge251, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge251.unr-lcssa, %.preheader233
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader233 ], [ %indvars.iv.next.1, %._crit_edge251.unr-lcssa ]
  %.0196249.epil.init = phi ptr [ %.0208252, %.preheader233 ], [ %i.df, %._crit_edge251.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod305)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.0199254, i64 %indvars.iv.epil.init ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !30
  %i.di = lshr i32 %i.dh, 16
  %i.dj = trunc i32 %i.di to i8
  store i8 %i.dj, ptr %.0196249.epil.init, align 1, !tbaa !31
  %i.dk = load i32, ptr %i.dg, align 4, !tbaa !30
  %i.dl = lshr i32 %i.dk, 8
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %.0196249.epil.init, i64 1
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !31
  %i.do = load i32, ptr %i.dg, align 4, !tbaa !30
  %i.dp = trunc i32 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0196249.epil.init, i64 2
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !31
  br label %._crit_edge251

._crit_edge251:                                   ; preds = %._crit_edge251.unr-lcssa, %.epil.preheader
  %i.dr = load i32, ptr %i.bk, align 4, !tbaa !51
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %.0199254, i64 %i.ds
  %i.du = load i32, ptr %i.br, align 16, !tbaa !47
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %.0208252, i64 %i.dv
  %i.dx = add nuw nsw i32 %.0201253, 1            ; 2 uses
  %exitcond282.not = icmp eq i32 %i.dx, %i.av
  br i1 %exitcond282.not, label %._crit_edge255.split, label %.preheader233, !llvm.loop !114

._crit_edge255.split:                             ; preds = %._crit_edge251, %bb.m
  %i.dy = icmp ugt i64 %.0216.lcssa, %.0210.lcssa
  br i1 %i.dy, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %._crit_edge255.split
end_hunk_0
