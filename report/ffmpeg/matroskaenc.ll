Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/matroskaenc?download=true
inline.NumInlined: 332
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 23
begin_hunk_0_@av_packet_get_side_data
declare ptr @av_packet_get_side_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mkv_update_codecprivate(ptr noundef %0, ptr %.320.val, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 0, 5) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = call fastcc i32 @mkv_assemble_codecprivate(ptr noundef %0, ptr noundef %.320.val, ptr noundef %3, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 4, !tbaa !55   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !158  ; 2 uses
  %i.i = icmp ule i32 %i.f, %i.h
  %i.j = icmp ne i32 %6, 0
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i32 %i.f, %i.h
  %spec.select = select i1 %i.k, i32 %6, i32 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !157
  %i.n = sext i32 %i.m to i64
  %i.o = call i64 @avio_seek(ptr noundef %4, i64 noundef %i.n, i32 noundef 0) #14 ; 0 uses
  %i.p = load i32, ptr %i.g, align 4, !tbaa !158
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !95
  call fastcc void @mkv_put_codecprivate(ptr noundef %4, i32 noundef %i.p, ptr noundef %i.q, i32 noundef %spec.select)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !97
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = call i32 @ff_alloc_extradata(ptr noundef nonnull %3, i32 noundef %2) #14 ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !96
  %i.x = sext i32 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %1, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ %i.d, %bb.a ], [ 0, %bb.c ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ -28, %bb.b ]
  call void @ffio_reset_dyn_buf(ptr noundef %.320.val) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare i32 @ff_alloc_extradata(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @mkv_add_cuepoint(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !130  ; 3 uses
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.f = add nsw i32 %i.c, 1
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @av_realloc_array(ptr noundef %i.e, i64 noundef %i.g, i64 noundef 40) #14 ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.a, align 8, !tbaa !129
  %.not4046 = icmp eq i32 %i.c, 0
  br i1 %.not4046, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = zext i32 %i.c to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %.not40 = icmp eq i64 %i.j, 0
  br i1 %.not40, label %.critedge, label %bb.e, !llvm.loop !307

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv47 = phi i64 [ %i.i, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  %i.j = add nsw i64 %indvars.iv47, -1            ; 3 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !132
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %.critedge.split.loop.exit43, !llvm.loop !307

.critedge.split.loop.exit43:                      ; preds = %bb.e
  %i.n = trunc nuw i64 %indvars.iv47 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %.critedge.split.loop.exit43
  %.0.lcssa = phi i32 [ %i.n, %.critedge.split.loop.exit43 ], [ 0, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %i.o = add i32 %.0.lcssa, 1
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.p
  %i.r = zext i32 %.0.lcssa to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.r ; 6 uses
  %i.t = load i32, ptr %i.b, align 8, !tbaa !130
  %i.u = sub i32 %i.t, %.0.lcssa
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.v, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.s, i64 %i.w, i1 false)
  store i64 %2, ptr %i.s, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.x, align 8, !tbaa !133
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !58
  %i.aa = sub nsw i64 %3, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %4, ptr %i.ac, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %5, ptr %i.ad, align 8, !tbaa !137
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !130
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.b, align 8, !tbaa !130
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %.critedge
  %.037 = phi i32 [ 0, %bb.a ], [ 0, %.critedge ], [ -12, %bb.b ]
  ret i32 %.037
}

declare i32 @av_dynamic_hdr_plus_to_t35(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_dynamic_hdr_smpte2094_app5_to_t35(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare ptr @av_realloc_array(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare i32 @ff_format_shift_data(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avcodec_get_type(i32 noundef) local_unnamed_addr #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @av_lfg_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_get_random_seed() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mkv_reformat_wavpack(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.WvHeader, align 4           ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 31
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !152  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %.not = icmp eq ptr %1, null
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.02546.us = phi i32 [ %i.y, %bb.c ], [ 0, %.lr.ph ]
  %.02645.us = phi i32 [ %i.x, %bb.c ], [ %i.b, %.lr.ph ]
  %.02844.us = phi ptr [ %i.w, %bb.c ], [ %i.e, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.k = call i32 @ff_wv_parse_header(ptr noundef nonnull %4, ptr noundef %.02844.us) #14 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.m = add nsw i32 %.02645.us, -32              ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !310    ; 4 uses
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.02844.us, i64 32
  %i.q = load i32, ptr %i.f, align 4, !tbaa !311
  %i.r = icmp eq i32 %i.q, 0                      ; 2 uses
  %i.s = load i32, ptr %i.g, align 4
  %i.t = icmp eq i32 %i.s, 0
  %.not37.us = select i1 %i.r, i1 true, i1 %i.t
  %5 = xor i1 %i.r, %.not37.us
  %i.u = select i1 %5, i32 16, i32 12
  %6 = add nsw i32 %i.u, %.02546.us
  %i.v = zext nneg i32 %i.n to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.v
  %i.x = sub nuw nsw i32 %i.m, %i.n               ; 2 uses
  %i.y = add i32 %6, %i.n                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.z = icmp sgt i32 %i.x, 31
  br i1 %i.z, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !308

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.02546 = phi i32 [ %i.ay, %bb.i ], [ 0, %.lr.ph ]
  %.02645 = phi i32 [ %i.ax, %bb.i ], [ %i.b, %.lr.ph ]
  %.02844 = phi ptr [ %i.aw, %bb.i ], [ %i.e, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.aa = call i32 @ff_wv_parse_header(ptr noundef nonnull %4, ptr noundef %.02844) #14 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.ac = getelementptr inbounds nuw i8, ptr %.02844, i64 32 ; 2 uses
  %i.ad = add nsw i32 %.02645, -32                ; 2 uses
  %i.ae = load i32, ptr %4, align 4, !tbaa !310
  %i.af = icmp ult i32 %i.ad, %i.ae
  br i1 %i.af, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !311
  %i.ah = icmp eq i32 %i.ag, 0                    ; 3 uses
  %i.ai = load i32, ptr %i.g, align 4
  %i.aj = icmp eq i32 %i.ai, 0
  %.not37 = select i1 %i.ah, i1 true, i1 %i.aj
  %7 = xor i1 %i.ah, %.not37
  %i.ak = select i1 %7, i32 16, i32 12
  %8 = add nsw i32 %i.ak, %.02546
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.h, align 4, !tbaa !312
  call void @avio_wl32(ptr noundef nonnull %1, i32 noundef %i.al) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = load i32, ptr %i.i, align 4, !tbaa !313
  call void @avio_wl32(ptr noundef nonnull %1, i32 noundef %i.am) #14
  %i.an = load i32, ptr %i.j, align 4, !tbaa !314
  call void @avio_wl32(ptr noundef nonnull %1, i32 noundef %i.an) #14
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !311
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = load i32, ptr %i.g, align 4
  %i.ar = icmp ne i32 %i.aq, 0
  %or.cond = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i32, ptr %4, align 4, !tbaa !310
  call void @avio_wl32(ptr noundef nonnull %1, i32 noundef %i.as) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.at = load i32, ptr %4, align 4, !tbaa !310
  call void @avio_write(ptr noundef nonnull %1, ptr noundef nonnull %i.ac, i32 noundef %i.at) #14
  %i.au = load i32, ptr %4, align 4, !tbaa !310   ; 3 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.av
  %i.ax = sub i32 %i.ad, %i.au                    ; 2 uses
  %i.ay = add i32 %8, %i.au                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.az = icmp sgt i32 %i.ax, 31
  br i1 %i.az, label %.lr.ph.split, label %._crit_edge, !llvm.loop !308

.thread:                                          ; preds = %bb.d, %.lr.ph.split, %.lr.ph.split.us, %bb.b
  %.us-phi = phi i32 [ %i.k, %.lr.ph.split.us ], [ -1094995529, %bb.b ], [ -1094995529, %bb.d ], [ %i.aa, %.lr.ph.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.j

._crit_edge:                                      ; preds = %bb.i, %bb.c, %bb.a
  %.025.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %bb.c ], [ %i.ay, %bb.i ]
  store i32 %.025.lcssa, ptr %3, align 4, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %.thread, %._crit_edge
  %.2 = phi i32 [ %.us-phi, %.thread ], [ 0, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mkv_reformat_h2645(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_nal_units_write_list(ptr noundef nonnull %i.a, ptr noundef nonnull %1, ptr noundef %i.c) #14
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !128
  %i.f = tail call i32 @ff_nal_units_create_list(ptr noundef nonnull %i.a, ptr noundef %i.c, i32 noundef %i.e) #14 ; 3 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mkv_reformat_av1(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !128
  %i.e = tail call i32 @ff_av1_filter_obus(ptr noundef %1, ptr noundef %i.b, i32 noundef %i.d) #14 ; 3 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.e, ptr %3, align 4, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.e, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -34, 1) i32 @webm_reformat_vtt(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %i.e = add i32 %i.d, 2                          ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @av_packet_get_side_data(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull %i.a) #14
  %i.h = call ptr @av_packet_get_side_data(ptr noundef nonnull %2, i32 noundef 17, ptr noundef nonnull %i.b) #14
  %i.i = load i64, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.j = sub nsw i32 2147483645, %i.d
  %i.k = zext nneg i32 %i.j to i64
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.b, align 8, !tbaa !65   ; 2 uses
  %i.n = trunc nuw nsw i64 %i.i to i32            ; 2 uses
  %i.o = add nuw i32 %i.e, %i.n                   ; 2 uses
  %i.p = sub i32 2147483647, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.m, %i.q
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = trunc nuw i64 %i.m to i32
  %i.t = add i32 %i.o, %i.s
  store i32 %i.t, ptr %3, align 4, !tbaa !55
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @avio_write(ptr noundef nonnull %1, ptr noundef %i.g, i32 noundef %i.n) #14
  call void @avio_w8(ptr noundef nonnull %1, i32 noundef 10) #14
  %i.u = load i64, ptr %i.b, align 8, !tbaa !65
  %i.v = trunc i64 %i.u to i32
  call void @avio_write(ptr noundef nonnull %1, ptr noundef %i.h, i32 noundef %i.v) #14
  call void @avio_w8(ptr noundef nonnull %1, i32 noundef 10) #14
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152
  %i.y = load i32, ptr %i.c, align 8, !tbaa !128
  call void @avio_write(ptr noundef nonnull %1, ptr noundef %i.x, i32 noundef %i.y) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -34, %bb.b ], [ -34, %bb.a ], [ -34, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_wv_parse_header(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_nal_units_write_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_nal_units_create_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_av1_filter_obus(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_stream_add_bitstream_filter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = distinct !{!2, !57}
!3 = distinct !{!3, !57}
!4 = distinct !{!4, !57}
!5 = distinct !{!5, !57}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 1, !"override-stack-alignment", i32 16}
end_hunk_0
