Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 46
begin_hunk_0_@stb_vorbis_decode_filename:bb.a
  %i.q = shl nsw i64 %i.p, 1
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #29 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.t = load i32, ptr %i.l, align 4, !tbaa !101
  %i.u = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %i.j, i32 noundef %i.t, ptr noundef nonnull %i.r, i32 noundef %i.n) ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  call void @vorbis_deinit(ptr noundef nonnull %i.j)
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

.lr.ph:                                           ; preds = %.preheader, %stb_vorbis_close.exit60
  %i.y = phi i32 [ %i.ap, %stb_vorbis_close.exit60 ], [ %i.u, %.preheader ] ; 2 uses
  %.04083 = phi ptr [ %.3, %stb_vorbis_close.exit60 ], [ %i.r, %.preheader ] ; 3 uses
  %.04282 = phi i32 [ %.244, %stb_vorbis_close.exit60 ], [ %i.n, %.preheader ] ; 3 uses
  %.04581 = phi i32 [ %i.ac, %stb_vorbis_close.exit60 ], [ 0, %.preheader ]
  %.04780 = phi i32 [ %i.z, %stb_vorbis_close.exit60 ], [ 0, %.preheader ]
  %i.z = add nsw i32 %i.y, %.04780                ; 2 uses
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !101 ; 2 uses
  %i.ab = mul nsw i32 %i.aa, %i.y
  %i.ac = add nsw i32 %i.ab, %.04581              ; 4 uses
  %i.ad = add nsw i32 %i.ac, %i.n
  %i.ae = icmp sgt i32 %i.ad, %.04282
  br i1 %i.ae, label %bb.f, label %stb_vorbis_close.exit60

bb.f:                                             ; preds = %.lr.ph
  %i.af = shl nsw i32 %.04282, 1                  ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 1
  %i.ai = call ptr @realloc(ptr noundef %.04083, i64 noundef %i.ah) #31 ; 2 uses
  %.not58 = icmp eq ptr %i.ai, null
  br i1 %.not58, label %bb.g, label %.stb_vorbis_close.exit60_crit_edge

.stb_vorbis_close.exit60_crit_edge:               ; preds = %bb.f
  %.pre = load i32, ptr %i.l, align 4, !tbaa !101
  br label %stb_vorbis_close.exit60

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.04083) #30
  call void @vorbis_deinit(ptr noundef nonnull %i.j)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43
  %.not.i.i59 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i59, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

stb_vorbis_close.exit60:                          ; preds = %.stb_vorbis_close.exit60_crit_edge, %.lr.ph
  %i.al = phi i32 [ %i.aa, %.lr.ph ], [ %.pre, %.stb_vorbis_close.exit60_crit_edge ]
  %.244 = phi i32 [ %.04282, %.lr.ph ], [ %i.af, %.stb_vorbis_close.exit60_crit_edge ] ; 2 uses
  %.3 = phi ptr [ %.04083, %.lr.ph ], [ %i.ai, %.stb_vorbis_close.exit60_crit_edge ] ; 3 uses
  %i.am = sext i32 %i.ac to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %.3, i64 %i.am
  %i.ao = sub nsw i32 %.244, %i.ac
  %i.ap = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %i.j, i32 noundef %i.al, ptr noundef %i.an, i32 noundef %i.ao) ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %stb_vorbis_close.exit60, %.preheader
  %.047.lcssa = phi i32 [ 0, %.preheader ], [ %i.z, %stb_vorbis_close.exit60 ] ; 2 uses
  %.040.lcssa = phi ptr [ %i.r, %.preheader ], [ %.3, %stb_vorbis_close.exit60 ]
  store ptr %.040.lcssa, ptr %3, align 8, !tbaa !66
  call void @vorbis_deinit(ptr noundef nonnull %i.j)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !43
  %.not.i.i61 = icmp eq ptr %i.as, null
  br i1 %.not.i.i61, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

stb_vorbis_close.exit.sink.split:                 ; preds = %._crit_edge, %bb.g, %bb.e
  %.4.ph = phi i32 [ -2, %bb.g ], [ -2, %bb.e ], [ %.047.lcssa, %._crit_edge ]
  call void @free(ptr noundef nonnull %i.j) #30
  br label %stb_vorbis_close.exit

stb_vorbis_close.exit:                            ; preds = %stb_vorbis_close.exit.sink.split, %bb.a, %bb.g, %._crit_edge, %bb.e, %stb_vorbis_open_filename.exit
  %.4 = phi i32 [ %.047.lcssa, %._crit_edge ], [ -2, %bb.g ], [ -1, %bb.a ], [ -1, %stb_vorbis_open_filename.exit ], [ -2, %bb.e ], [ %.4.ph, %stb_vorbis_close.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable
define i32 @stb_vorbis_decode_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = call ptr @stb_vorbis_open_memory(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef null) ; 12 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %stb_vorbis_close.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !101  ; 2 uses
  %i.f = shl nsw i32 %i.e, 12                     ; 4 uses
  store i32 %i.e, ptr %2, align 4, !tbaa !46
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.b, align 8, !tbaa !133
  store i32 %i.g, ptr %3, align 4, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = sext i32 %i.f to i64
  %i.i = shl nsw i64 %i.h, 1
  %i.j = call noalias ptr @malloc(i64 noundef %i.i) #29 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.l = load i32, ptr %i.d, align 4, !tbaa !101
  %i.m = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %i.b, i32 noundef %i.l, ptr noundef nonnull %i.j, i32 noundef %i.f) ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  call void @vorbis_deinit(ptr noundef nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

.lr.ph:                                           ; preds = %.preheader, %stb_vorbis_close.exit61
  %i.q = phi i32 [ %i.ah, %stb_vorbis_close.exit61 ], [ %i.m, %.preheader ] ; 2 uses
  %.04183 = phi ptr [ %.3, %stb_vorbis_close.exit61 ], [ %i.j, %.preheader ] ; 3 uses
  %.04382 = phi i32 [ %.245, %stb_vorbis_close.exit61 ], [ %i.f, %.preheader ] ; 3 uses
  %.04681 = phi i32 [ %i.u, %stb_vorbis_close.exit61 ], [ 0, %.preheader ]
  %.04880 = phi i32 [ %i.r, %stb_vorbis_close.exit61 ], [ 0, %.preheader ]
  %i.r = add nsw i32 %i.q, %.04880                ; 2 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !101  ; 2 uses
  %i.t = mul nsw i32 %i.s, %i.q
  %i.u = add nsw i32 %i.t, %.04681                ; 4 uses
  %i.v = add nsw i32 %i.u, %i.f
  %i.w = icmp sgt i32 %i.v, %.04382
  br i1 %i.w, label %bb.f, label %stb_vorbis_close.exit61

bb.f:                                             ; preds = %.lr.ph
  %i.x = shl nsw i32 %.04382, 1                   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 1
  %i.aa = call ptr @realloc(ptr noundef %.04183, i64 noundef %i.z) #31 ; 2 uses
  %.not59 = icmp eq ptr %i.aa, null
  br i1 %.not59, label %bb.g, label %.stb_vorbis_close.exit61_crit_edge

.stb_vorbis_close.exit61_crit_edge:               ; preds = %bb.f
  %.pre = load i32, ptr %i.d, align 4, !tbaa !101
  br label %stb_vorbis_close.exit61

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.04183) #30
  call void @vorbis_deinit(ptr noundef nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %.not.i.i60 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i60, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

stb_vorbis_close.exit61:                          ; preds = %.stb_vorbis_close.exit61_crit_edge, %.lr.ph
  %i.ad = phi i32 [ %i.s, %.lr.ph ], [ %.pre, %.stb_vorbis_close.exit61_crit_edge ]
  %.245 = phi i32 [ %.04382, %.lr.ph ], [ %i.x, %.stb_vorbis_close.exit61_crit_edge ] ; 2 uses
  %.3 = phi ptr [ %.04183, %.lr.ph ], [ %i.aa, %.stb_vorbis_close.exit61_crit_edge ] ; 3 uses
  %i.ae = sext i32 %i.u to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %.3, i64 %i.ae
  %i.ag = sub nsw i32 %.245, %i.u
  %i.ah = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %i.b, i32 noundef %i.ad, ptr noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %stb_vorbis_close.exit61, %.preheader
  %.048.lcssa = phi i32 [ 0, %.preheader ], [ %i.r, %stb_vorbis_close.exit61 ] ; 2 uses
  %.041.lcssa = phi ptr [ %i.j, %.preheader ], [ %.3, %stb_vorbis_close.exit61 ]
  store ptr %.041.lcssa, ptr %4, align 8, !tbaa !66
  call void @vorbis_deinit(ptr noundef nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43
  %.not.i.i62 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i62, label %stb_vorbis_close.exit.sink.split, label %stb_vorbis_close.exit

stb_vorbis_close.exit.sink.split:                 ; preds = %._crit_edge, %bb.g, %bb.e
  %.4.ph = phi i32 [ -2, %bb.e ], [ -2, %bb.g ], [ %.048.lcssa, %._crit_edge ]
  call void @free(ptr noundef nonnull %i.b) #30
  br label %stb_vorbis_close.exit

stb_vorbis_close.exit:                            ; preds = %stb_vorbis_close.exit.sink.split, %bb.g, %._crit_edge, %bb.e, %bb.a
  %.4 = phi i32 [ %.048.lcssa, %._crit_edge ], [ -1, %bb.a ], [ -2, %bb.g ], [ -2, %bb.e ], [ %.4.ph, %stb_vorbis_close.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.4
}

; Function Attrs: nofree nounwind uwtable
define i32 @stb_vorbis_get_samples_float_interleaved(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = sdiv i32 %3, %1                          ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !101
  %.fr = freeze i32 %i.d                          ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.fr, i32 %1) ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1892 ; 6 uses
  %i.g = icmp sgt i32 %spec.select, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 5 uses
  br i1 %i.g, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.i = add nuw i32 %spec.select, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 %i.i)
  %i.j = xor i32 %spec.select, -1
  %i.k = add i32 %smax, %i.j
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 4
  %i.o = add nsw i32 %spec.select, -1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = add nuw nsw i64 %i.l, %i.p
  %i.r = shl nuw nsw i64 %i.q, 2
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 2 uses
  %i.s = icmp slt i32 %.fr, %1
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.t = icmp ult i32 %spec.select, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod115 = icmp ne i64 %xtraiter, 0
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.d
  %.044.us = phi ptr [ %.145.lcssa.us, %bb.d ], [ %2, %.split.us.preheader ] ; 2 uses
  %.042.us = phi i32 [ %i.bm, %bb.d ], [ 0, %.split.us.preheader ] ; 5 uses
  %i.u = icmp slt i32 %.042.us, %i.b
  br i1 %i.u, label %bb.b, label %.thread

bb.b:                                             ; preds = %.split.us
  %i.v = load i32, ptr %i.e, align 8, !tbaa !116
  %i.w = load i32, ptr %i.f, align 4, !tbaa !117  ; 3 uses
  %i.x = sub nsw i32 %i.v, %i.w                   ; 2 uses
  %i.y = add nsw i32 %i.x, %.042.us
  %.not.us = icmp slt i32 %i.y, %i.b
  %i.z = sub nsw i32 %i.b, %.042.us
  %spec.select50.us = select i1 %.not.us, i32 %i.x, i32 %i.z ; 4 uses
  %i.aa = icmp sgt i32 %spec.select50.us, 0
  br i1 %i.aa, label %.preheader52.us.us.preheader, label %._crit_edge62.split.us.us

.preheader52.us.us.preheader:                     ; preds = %bb.b
  %i.ab = sext i32 %i.w to i64                    ; 5 uses
  %i.ac = zext nneg i32 %spec.select50.us to i64
  br label %.preheader52.us.us

.preheader52.us.us:                               ; preds = %.preheader52.us.us.preheader, %._crit_edge.us.us
  %indvars.iv95 = phi i64 [ 0, %.preheader52.us.us.preheader ], [ %indvars.iv.next96, %._crit_edge.us.us ] ; 6 uses
  %.14560.us.us = phi ptr [ %.044.us, %.preheader52.us.us.preheader ], [ %.3.lcssa.us.us, %._crit_edge.us.us ] ; 3 uses
  br i1 %i.t, label %.epil.preheader, label %.preheader52.us.us.new

.preheader52.us.us.new:                           ; preds = %.preheader52.us.us, %.preheader52.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader52.us.us.new ], [ 0, %.preheader52.us.us ] ; 5 uses
  %.253.us.us = phi ptr [ %i.bd, %.preheader52.us.us.new ], [ %.14560.us.us, %.preheader52.us.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader52.us.us.new ], [ 0, %.preheader52.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %indvars.iv95
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.ab
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !63
  %i.ai = getelementptr i8, ptr %.253.us.us, i64 4
  store float %i.ah, ptr %.253.us.us, align 4, !tbaa !63
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv95
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.ab
  %i.ao = load float, ptr %i.an, align 4, !tbaa !63
  %i.ap = getelementptr i8, ptr %.253.us.us, i64 8
  store float %i.ao, ptr %i.ai, align 4, !tbaa !63
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv95
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.ab
  %i.av = load float, ptr %i.au, align 4, !tbaa !63
  %i.aw = getelementptr i8, ptr %.253.us.us, i64 12
  store float %i.av, ptr %i.ap, align 4, !tbaa !63
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv95
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %i.ab
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !63
  %i.bd = getelementptr i8, ptr %.253.us.us, i64 16 ; 3 uses
  store float %i.bc, ptr %i.aw, align 4, !tbaa !63
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.us.unr-lcssa, label %.preheader52.us.us.new, !llvm.loop !465

..preheader_crit_edge.us.us.unr-lcssa:            ; preds = %.preheader52.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.unr-lcssa, %.preheader52.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader52.us.us ], [ %indvars.iv.next.3, %..preheader_crit_edge.us.us.unr-lcssa ]
  %.253.us.us.epil.init = phi ptr [ %.14560.us.us, %.preheader52.us.us ], [ %i.bd, %..preheader_crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod115)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.c ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 2 uses
  %.253.us.us.epil = phi ptr [ %i.bj, %bb.c ], [ %.253.us.us.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !64
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv95
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %i.ab
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !63
  %i.bj = getelementptr i8, ptr %.253.us.us.epil, i64 4 ; 2 uses
  store float %i.bi, ptr %.253.us.us.epil, align 4, !tbaa !63
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.us, label %bb.c, !llvm.loop !466

..preheader_crit_edge.us.us:                      ; preds = %bb.c, %..preheader_crit_edge.us.us.unr-lcssa
  %.lcssa = phi ptr [ %i.bd, %..preheader_crit_edge.us.us.unr-lcssa ], [ %i.bj, %bb.c ] ; 2 uses
  br i1 %i.s, label %.lr.ph58.us.us.preheader, label %._crit_edge.us.us

.lr.ph58.us.us.preheader:                         ; preds = %..preheader_crit_edge.us.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.lcssa, i8 0, i64 %i.n, i1 false), !tbaa !63
  %i.bk = getelementptr i8, ptr %.14560.us.us, i64 %i.r
  %scevgep = getelementptr i8, ptr %i.bk, i64 8
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %.lr.ph58.us.us.preheader, %..preheader_crit_edge.us.us
  %.3.lcssa.us.us = phi ptr [ %.lcssa, %..preheader_crit_edge.us.us ], [ %scevgep, %.lr.ph58.us.us.preheader ] ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.bl = icmp samesign ult i64 %indvars.iv.next96, %i.ac
  br i1 %i.bl, label %.preheader52.us.us, label %._crit_edge62.split.us.us, !llvm.loop !467

._crit_edge62.split.us.us:                        ; preds = %._crit_edge.us.us, %bb.b
  %.145.lcssa.us = phi ptr [ %.044.us, %bb.b ], [ %.3.lcssa.us.us, %._crit_edge.us.us ]
  %i.bm = add nsw i32 %spec.select50.us, %.042.us ; 3 uses
  %i.bn = add nsw i32 %spec.select50.us, %i.w
  store i32 %i.bn, ptr %i.f, align 4, !tbaa !117
  %i.bo = icmp eq i32 %i.bm, %i.b
  br i1 %i.bo, label %.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge62.split.us.us
  %i.bp = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not49.us = icmp eq i32 %i.bp, 0
  br i1 %.not49.us, label %.thread, label %.split.us

.split:                                           ; preds = %bb.a
  %i.bq = icmp sgt i32 %1, 0
  br i1 %i.bq, label %.split.split.us.preheader, label %.split.split

.split.split.us.preheader:                        ; preds = %.split
  %i.br = zext nneg i32 %1 to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = add nsw i32 %1, -1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 4                ; 2 uses
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader, %bb.f
  %.044.us76 = phi ptr [ %.145.lcssa.us81, %bb.f ], [ %2, %.split.split.us.preheader ] ; 3 uses
  %.042.us77 = phi i32 [ %i.cj, %bb.f ], [ 0, %.split.split.us.preheader ] ; 6 uses
  %i.bx = icmp slt i32 %.042.us77, %i.b
  br i1 %i.bx, label %bb.e, label %.thread

bb.e:                                             ; preds = %.split.split.us
  %i.by = load i32, ptr %i.e, align 8, !tbaa !116
  %i.bz = load i32, ptr %i.f, align 4, !tbaa !117 ; 2 uses
  %i.ca = sub nsw i32 %i.by, %i.bz                ; 2 uses
  %i.cb = add nsw i32 %i.ca, %.042.us77           ; 2 uses
  %.not.us78 = icmp slt i32 %i.cb, %i.b
  %i.cc = sub nsw i32 %i.b, %.042.us77
  %spec.select50.us79 = select i1 %.not.us78, i32 %i.ca, i32 %i.cc ; 4 uses
  %i.cd = icmp sgt i32 %spec.select50.us79, 0
  br i1 %i.cd, label %.preheader52.us64.us.preheader, label %._crit_edge62.split.split.us.us

.preheader52.us64.us.preheader:                   ; preds = %bb.e
  %i.ce = zext nneg i32 %spec.select50.us79 to i64
  %i.cf = mul nuw i64 %i.bs, %i.ce
  call void @llvm.memset.p0.i64(ptr align 4 %.044.us76, i8 0, i64 %i.cf, i1 false), !tbaa !63
  %scevgep91 = getelementptr i8, ptr %.044.us76, i64 %i.bw
  %smin = call i32 @llvm.smin.i32(i32 %i.b, i32 %i.cb)
  %4 = xor i32 %.042.us77, -1
  %i.cg = add i32 %smin, %4
  %i.ch = zext i32 %i.cg to i64
  %i.ci = mul i64 %i.bw, %i.ch
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %i.ci
  br label %._crit_edge62.split.split.us.us

._crit_edge62.split.split.us.us:                  ; preds = %.preheader52.us64.us.preheader, %bb.e
  %.145.lcssa.us81 = phi ptr [ %.044.us76, %bb.e ], [ %scevgep92, %.preheader52.us64.us.preheader ]
  %i.cj = add nsw i32 %spec.select50.us79, %.042.us77 ; 3 uses
  %i.ck = add nsw i32 %spec.select50.us79, %i.bz
  store i32 %i.ck, ptr %i.f, align 4, !tbaa !117
  %i.cl = icmp eq i32 %i.cj, %i.b
  br i1 %i.cl, label %.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge62.split.split.us.us
  %i.cm = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not49.us82 = icmp eq i32 %i.cm, 0
  br i1 %.not49.us82, label %.thread, label %.split.split.us

.split.split:                                     ; preds = %.split, %bb.g
  %.042 = phi i32 [ %i.ct, %bb.g ], [ 0, %.split ] ; 5 uses
  %i.cn = icmp slt i32 %.042, %i.b
  br i1 %i.cn, label %._crit_edge62.split.split, label %.thread

._crit_edge62.split.split:                        ; preds = %.split.split
  %i.co = load i32, ptr %i.e, align 8, !tbaa !116
  %i.cp = load i32, ptr %i.f, align 4, !tbaa !117 ; 2 uses
  %i.cq = sub nsw i32 %i.co, %i.cp                ; 2 uses
  %i.cr = add nsw i32 %i.cq, %.042
  %.not = icmp slt i32 %i.cr, %i.b
  %i.cs = sub nsw i32 %i.b, %.042
  %spec.select50 = select i1 %.not, i32 %i.cq, i32 %i.cs ; 2 uses
  %i.ct = add nsw i32 %spec.select50, %.042       ; 3 uses
  %i.cu = add nsw i32 %spec.select50, %i.cp
  store i32 %i.cu, ptr %i.f, align 4, !tbaa !117
  %i.cv = icmp eq i32 %i.ct, %i.b
  br i1 %i.cv, label %.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge62.split.split
  %i.cw = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not49 = icmp eq i32 %i.cw, 0
  br i1 %.not49, label %.thread, label %.split.split

.thread:                                          ; preds = %bb.g, %._crit_edge62.split.split, %.split.split, %bb.f, %._crit_edge62.split.split.us.us, %.split.split.us, %.split.us, %._crit_edge62.split.us.us, %bb.d
  %.us-phi75 = phi i32 [ %i.bm, %bb.d ], [ %i.cj, %bb.f ], [ %.042.us, %.split.us ], [ %i.b, %._crit_edge62.split.us.us ], [ %.042.us77, %.split.split.us ], [ %i.b, %._crit_edge62.split.split.us.us ], [ %.042, %.split.split ], [ %i.b, %._crit_edge62.split.split ], [ %i.ct, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.us-phi75
}

; Function Attrs: nofree nounwind uwtable
define i32 @stb_vorbis_get_samples_float(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !101
  %.fr = freeze i32 %i.c                          ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.fr, i32 %1) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1892 ; 11 uses
  %i.f = icmp sgt i32 %spec.select, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 3 uses
  br i1 %i.f, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %wide.trip.count75 = zext nneg i32 %spec.select to i64 ; 2 uses
  %i.h = icmp slt i32 %.fr, %1
  %xtraiter100 = and i64 %wide.trip.count75, 1
  %i.i = icmp eq i32 %spec.select, 1
  %unroll_iter105 = and i64 %wide.trip.count75, 2147483646
  %lcmp.mod102.not = icmp eq i64 %xtraiter100, 0
  %lcmp.mod104 = trunc i32 %spec.select to i1
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.c
  %.042.us = phi i32 [ %i.ak, %bb.c ], [ 0, %.split.us.preheader ] ; 6 uses
  %i.j = icmp slt i32 %.042.us, %3
  br i1 %i.j, label %bb.b, label %.thread

bb.b:                                             ; preds = %.split.us
  %i.k = load i32, ptr %i.d, align 8, !tbaa !116
  %i.l = load i32, ptr %i.e, align 4, !tbaa !117
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = add nsw i32 %i.m, %.042.us
  %.not.us = icmp slt i32 %i.n, %3
  %i.o = sub nsw i32 %3, %.042.us
  %spec.select49.us = select i1 %.not.us, i32 %i.m, i32 %i.o ; 4 uses
  %.not47.us = icmp eq i32 %spec.select49.us, 0
  br i1 %.not47.us, label %.loopexit.us, label %.preheader51.us

.preheader51.us.new:                              ; preds = %.preheader51.us, %.preheader51.us.new
  %indvars.iv77 = phi i64 [ %indvars.iv.next78.1, %.preheader51.us.new ], [ 1, %.preheader51.us ] ; 2 uses
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.1, %.preheader51.us.new ], [ 0, %.preheader51.us ] ; 4 uses
  %niter106 = phi i64 [ %niter106.next.1, %.preheader51.us.new ], [ 0, %.preheader51.us ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ap
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = load i32, ptr %i.e, align 4, !tbaa !117
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.r, ptr align 4 %i.w, i64 %i.ar, i1 false)
  %indvars.iv.next73 = or disjoint i64 %indvars.iv72, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next73
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ap
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next73
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !117
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr align 4 %i.ae, i64 %i.ar, i1 false)
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %indvars.iv.next78.1 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %niter106.next.1 = add i64 %niter106, 2         ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %..preheader_crit_edge.us.unr-lcssa, label %.preheader51.us.new, !llvm.loop !468

.lr.ph54.us:                                      ; preds = %..preheader_crit_edge.us, %.lr.ph54.us
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.lr.ph54.us ], [ %indvars.iv77.lcssa, %..preheader_crit_edge.us ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv79
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ap
  call void @llvm.memset.p0.i64(ptr align 4 %i.ah, i8 0, i64 %i.ar, i1 false)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.ai = trunc nuw i64 %indvars.iv.next80 to i32
  %i.aj = icmp sgt i32 %1, %i.ai
  br i1 %i.aj, label %.lr.ph54.us, label %.loopexit.us, !llvm.loop !469

.loopexit.us:                                     ; preds = %.lr.ph54.us, %..preheader_crit_edge.us, %bb.b
  %i.ak = add nsw i32 %spec.select49.us, %.042.us ; 3 uses
  %i.al = load i32, ptr %i.e, align 4, !tbaa !117
  %i.am = add nsw i32 %i.al, %spec.select49.us
  store i32 %i.am, ptr %i.e, align 4, !tbaa !117
  %i.an = icmp eq i32 %i.ak, %3
  br i1 %i.an, label %.thread, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.ao = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not48.us = icmp eq i32 %i.ao, 0
  br i1 %.not48.us, label %.thread, label %.split.us

.preheader51.us:                                  ; preds = %bb.b
  %i.ap = sext i32 %.042.us to i64                ; 4 uses
  %i.aq = sext i32 %spec.select49.us to i64
  %i.ar = shl nsw i64 %i.aq, 2                    ; 4 uses
  br i1 %i.i, label %.epil.preheader99, label %.preheader51.us.new

..preheader_crit_edge.us.unr-lcssa:               ; preds = %.preheader51.us.new
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br i1 %lcmp.mod102.not, label %..preheader_crit_edge.us, label %.epil.preheader99

.epil.preheader99:                                ; preds = %..preheader_crit_edge.us.unr-lcssa, %.preheader51.us
  %indvars.iv77.epil.init = phi i64 [ 1, %.preheader51.us ], [ %indvars.iv.next78.1, %..preheader_crit_edge.us.unr-lcssa ]
  %indvars.iv72.epil.init = phi i64 [ 0, %.preheader51.us ], [ %indvars.iv.next73.1, %..preheader_crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72.epil.init
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv72.epil.init
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !117
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.au, ptr align 4 %i.az, i64 %i.ar, i1 false)
  br label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.unr-lcssa, %.epil.preheader99
  %indvars.iv77.lcssa = phi i64 [ %indvars.iv.next78, %..preheader_crit_edge.us.unr-lcssa ], [ %indvars.iv77.epil.init, %.epil.preheader99 ]
  br i1 %i.h, label %.lr.ph54.us, label %.loopexit.us

.split:                                           ; preds = %bb.a
  %i.ba = icmp sgt i32 %1, 0
  br i1 %i.ba, label %.split.split.us.preheader, label %.split.split

.split.split.us.preheader:                        ; preds = %.split
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.bb = icmp ult i32 %1, 8
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader, %bb.f
  %.042.us55 = phi i32 [ %i.cu, %bb.f ], [ 0, %.split.split.us.preheader ] ; 6 uses
  %i.bc = icmp slt i32 %.042.us55, %3
  br i1 %i.bc, label %bb.d, label %.thread

bb.d:                                             ; preds = %.split.split.us
  %i.bd = load i32, ptr %i.d, align 8, !tbaa !116
  %i.be = load i32, ptr %i.e, align 4, !tbaa !117 ; 2 uses
  %i.bf = sub nsw i32 %i.bd, %i.be                ; 2 uses
  %i.bg = add nsw i32 %i.bf, %.042.us55
  %.not.us56 = icmp slt i32 %i.bg, %3
  %i.bh = sub nsw i32 %3, %.042.us55
  %spec.select49.us57 = select i1 %.not.us56, i32 %i.bf, i32 %i.bh ; 4 uses
  %.not47.us58 = icmp eq i32 %spec.select49.us57, 0
  br i1 %.not47.us58, label %..loopexit_crit_edge.us62, label %.preheader51.us59

.preheader51.us59:                                ; preds = %bb.d
  %i.bi = sext i32 %.042.us55 to i64              ; 9 uses
end_hunk_0
