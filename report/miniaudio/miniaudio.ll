Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_channel_map_is_valid:bb.a
  br i1 %i.a, label %ma_channel_map_get_channel.exit.us, label %ma_channel_map_get_channel.exit.preheader

ma_channel_map_get_channel.exit.preheader:        ; preds = %.lr.ph
  %wide.trip.count = zext i32 %1 to i64
  br label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit.us:               ; preds = %.lr.ph, %bb.b
  %.0912.us = phi i32 [ %i.d, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %i.b = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %1, i32 noundef %.0912.us)
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %ma_channel_map_get_channel.exit.us
  %i.d = add nuw i32 %.0912.us, 1                 ; 2 uses
  %exitcond16.not = icmp eq i32 %i.d, %1
  br i1 %exitcond16.not, label %.thread, label %ma_channel_map_get_channel.exit.us, !llvm.loop !40

bb.c:                                             ; preds = %ma_channel_map_get_channel.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %ma_channel_map_get_channel.exit, !llvm.loop !40

ma_channel_map_get_channel.exit:                  ; preds = %ma_channel_map_get_channel.exit.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %ma_channel_map_get_channel.exit.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !119
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %.loopexit, label %bb.c

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %ma_channel_map_get_channel.exit, %ma_channel_map_get_channel.exit.us, %bb.a, %.thread
  %.1 = phi i32 [ %1, %bb.a ], [ 1, %.thread ], [ 0, %ma_channel_map_get_channel.exit.us ], [ 0, %ma_channel_map_get_channel.exit ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ma_channel_map_is_equal(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.d, label %.loopexit, label %ma_channel_map_get_channel.exit.us.preheader

ma_channel_map_get_channel.exit.us.preheader:     ; preds = %.lr.ph.split.us
  %wide.trip.count47 = zext i32 %2 to i64
  br label %ma_channel_map_get_channel.exit.us

ma_channel_map_get_channel.exit.us:               ; preds = %ma_channel_map_get_channel.exit.us.preheader, %bb.b
  %indvars.iv44 = phi i64 [ 0, %ma_channel_map_get_channel.exit.us.preheader ], [ %indvars.iv.next45, %bb.b ] ; 3 uses
  %i.e = trunc nuw i64 %indvars.iv44 to i32
  %i.f = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %2, i32 noundef %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv44
  %i.h = load i8, ptr %i.g, align 1, !tbaa !119
  %.not.us = icmp eq i8 %i.f, %i.h
  br i1 %.not.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %ma_channel_map_get_channel.exit.us
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48.not, label %.loopexit, label %ma_channel_map_get_channel.exit.us, !llvm.loop !42

.lr.ph.split:                                     ; preds = %.lr.ph
  %wide.trip.count42 = zext i32 %2 to i64         ; 2 uses
  br i1 %i.d, label %ma_channel_map_get_channel.exit.us21, label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit.us21:             ; preds = %.lr.ph.split, %bb.c
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %bb.c ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv39
  %i.j = load i8, ptr %i.i, align 1, !tbaa !119
  %i.k = trunc nuw i64 %indvars.iv39 to i32
  %i.l = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %2, i32 noundef %i.k)
  %.not.us25 = icmp eq i8 %i.j, %i.l
  br i1 %.not.us25, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %ma_channel_map_get_channel.exit.us21
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %.loopexit, label %ma_channel_map_get_channel.exit.us21, !llvm.loop !42

bb.d:                                             ; preds = %ma_channel_map_get_channel.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count42
  br i1 %exitcond.not, label %.loopexit, label %ma_channel_map_get_channel.exit, !llvm.loop !42

ma_channel_map_get_channel.exit:                  ; preds = %.lr.ph.split, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !119
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %ma_channel_map_get_channel.exit, %bb.d, %ma_channel_map_get_channel.exit.us21, %bb.c, %ma_channel_map_get_channel.exit.us, %bb.b, %.lr.ph.split.us, %bb.a
  %.011 = phi i32 [ 1, %bb.a ], [ 1, %.lr.ph.split.us ], [ 1, %bb.c ], [ 0, %ma_channel_map_get_channel.exit.us ], [ 1, %bb.b ], [ 0, %ma_channel_map_get_channel.exit.us21 ], [ 1, %bb.d ], [ 0, %ma_channel_map_get_channel.exit ]
  ret i32 %.011
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ma_channel_map_is_blank(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not11 = icmp eq i32 %1, 0
  br i1 %.not11, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !2177

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1, !tbaa !119
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %.lr.ph ], [ 1, %bb.b ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ma_channel_position_to_string(i8 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i8 %0, 52
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ma_channel_position_to_string, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.96, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_convert_frames(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #8 {
bb.a:
  %10 = alloca %struct.ma_data_converter_config, align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.11.0..sroa_idx, i8 0, i64 20, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.12.0..sroa_idx, i8 0, i64 20, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx, i8 0, i64 20, i1 false)
  store i32 %7, ptr %10, align 8, !tbaa !118
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !118
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %8, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !118
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %3, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !118
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %9, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !118
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 %4, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !118
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !118
  %.sroa.119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i32 0, ptr %.sroa.119.0..sroa_idx, align 8, !tbaa !118
  %.sroa.1210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i32 0, ptr %.sroa.1210.0..sroa_idx, align 8, !tbaa !118
  %.sroa.1311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 112
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 116
  store i32 0, ptr %.sroa.14.0..sroa_idx, align 4
  store i32 4, ptr %.sroa.1311.0..sroa_idx, align 8, !tbaa !245
  %i.a = call i64 @ma_convert_frames_ex(ptr noundef %0, i64 noundef %1, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #55
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @ma_convert_frames_ex(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.ma_data_converter_heap_layout, align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %struct.ma_data_converter, align 8  ; 20 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !164
  store i64 %3, ptr %i.b, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.e = icmp eq i64 %3, 0
  %i.f = icmp eq ptr %4, null
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %ma_data_converter_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.g = call fastcc i32 @ma_data_converter_get_heap_layout(ptr noundef nonnull readonly %4, ptr noundef %5)
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %ma_data_converter_get_heap_size.exit.i

ma_data_converter_get_heap_size.exit.i:           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %ma_data_converter_init.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %5, align 8, !tbaa !259    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %.not18.i = icmp eq i64 %i.h, 0
  br i1 %.not18.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias noundef ptr @malloc(i64 noundef %i.h) #67 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %ma_data_converter_init.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call i32 @ma_data_converter_init_preallocated(ptr noundef nonnull readonly %4, ptr noundef nonnull %i.i, ptr noundef nonnull %6)
  %.not19.i = icmp eq i32 %i.k, 0
  br i1 %.not19.i, label %bb.g, label %bb.f

.thread.i:                                        ; preds = %bb.c
  %i.l = call i32 @ma_data_converter_init_preallocated(ptr noundef nonnull readonly %4, ptr noundef null, ptr noundef nonnull %6)
  %.not1930.i = icmp eq i32 %i.l, 0
  br i1 %.not1930.i, label %bb.g, label %ma_data_converter_init.exit.thread

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.i) #55
  br label %ma_data_converter_init.exit.thread

bb.g:                                             ; preds = %.thread.i, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 301 ; 2 uses
  store i8 1, ptr %i.m, align 1, !tbaa !256
  %i.n = icmp eq ptr %0, null
  br i1 %i.n, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.a, align 8, !tbaa !164
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 299
  %i.p = load i8, ptr %i.o, align 1, !tbaa !246
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %ma_data_converter_get_expected_output_frame_count.exit.thread27, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !247  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.preheader.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !542  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.preheader.preheader, label %ma_data_converter_get_expected_output_frame_count.exit

ma_data_converter_get_expected_output_frame_count.exit.thread27: ; preds = %bb.h
  store i64 %3, ptr %i.a, align 8, !tbaa !164
  br label %.loopexit

ma_data_converter_get_expected_output_frame_count.exit: ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !250
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !251
  %i.aa = call i32 %i.v(ptr noundef %i.y, ptr noundef %i.z, i64 noundef %3, ptr noundef nonnull %i.a) #55, !inline_history !2178
  %i.ab = icmp eq i32 %i.aa, -29
  br i1 %i.ab, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %ma_data_converter_get_expected_output_frame_count.exit, %bb.i, %bb.j
  store i64 0, ptr %i.a, align 8, !tbaa !164
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %i.ac = phi i64 [ %3, %.preheader.preheader ], [ %i.af, %bb.k ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  store i64 4294967295, ptr %i.d, align 8, !tbaa !164
  %i.ad = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull %i.d)
  %.not20 = icmp eq i32 %i.ad, 0
  br i1 %.not20, label %bb.k, label %.thread

.thread:                                          ; preds = %.preheader
  store i64 %i.ac, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %.loopexit

bb.k:                                             ; preds = %.preheader
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !164 ; 2 uses
  %i.af = sub i64 %i.ac, %i.ae                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %.not19 = icmp eq i64 %i.ac, %i.ae
  br i1 %.not19, label %bb.m, label %.preheader

bb.l:                                             ; preds = %bb.g
  %i.ag = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %.not18 = icmp eq i32 %i.ag, 0
  br i1 %.not18, label %.loopexit, label %7

7:                                                ; preds = %bb.l
  store i64 0, ptr %i.a, align 8, !tbaa !164
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  store i64 %i.af, ptr %i.b, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.thread, %ma_data_converter_get_expected_output_frame_count.exit.thread27, %bb.l, %7, %ma_data_converter_get_expected_output_frame_count.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 299
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !246
  %.not.i22 = icmp eq i8 %i.ai, 0
  br i1 %.not.i22, label %ma_resampler_uninit.exit.i, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !247 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %ma_resampler_uninit.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !249 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %ma_resampler_uninit.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !250
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !251
  call void %i.ao(ptr noundef %i.ar, ptr noundef %i.as, ptr noundef null) #55, !inline_history !334
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.au = load i32, ptr %i.at, align 8, !tbaa !252
  %.not.i.i23 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i23, label %ma_resampler_uninit.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 280
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !253 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %ma_resampler_uninit.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.aw) #55
  br label %ma_resampler_uninit.exit.i

ma_resampler_uninit.exit.i:                       ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %.loopexit
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !254
  %.not.i10.i = icmp eq i32 %i.az, 0
  br i1 %.not.i10.i, label %ma_channel_converter_uninit.exit.i, label %bb.s

bb.s:                                             ; preds = %ma_resampler_uninit.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !255 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %ma_channel_converter_uninit.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.bb) #55
  br label %ma_channel_converter_uninit.exit.i

ma_channel_converter_uninit.exit.i:               ; preds = %bb.t, %bb.s, %ma_resampler_uninit.exit.i
  %i.bd = load i8, ptr %i.m, align 1, !tbaa !256
  %.not9.i = icmp eq i8 %i.bd, 0
  br i1 %.not9.i, label %ma_data_converter_uninit.exit, label %bb.u

bb.u:                                             ; preds = %ma_channel_converter_uninit.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 304
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !257 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %ma_data_converter_uninit.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.bf) #55
  br label %ma_data_converter_uninit.exit

ma_data_converter_uninit.exit:                    ; preds = %ma_channel_converter_uninit.exit.i, %bb.u, %bb.v
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !164
  br label %ma_data_converter_init.exit.thread

ma_data_converter_init.exit.thread:               ; preds = %.thread.i, %bb.d, %bb.f, %ma_data_converter_get_heap_size.exit.i, %bb.a, %ma_data_converter_uninit.exit
  %.015 = phi i64 [ %i.bh, %ma_data_converter_uninit.exit ], [ 0, %bb.a ], [ 0, %ma_data_converter_get_heap_size.exit.i ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  ret i64 %.015
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_rb_init_ex(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %5, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  %i.c = add i64 %0, -2147483617
  %i.d = icmp ult i64 %i.c, -2147483616
  %or.cond40 = or i1 %i.d, %i.b
  br i1 %or.cond40, label %.critedge, label %ma_zero_memory_default.exit42

ma_zero_memory_default.exit42:                    ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.f = icmp eq ptr %4, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %ma_zero_memory_default.exit42
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @ma__malloc_default, ptr %.sroa.416.0..sroa_idx.i, align 8, !tbaa !134
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr @ma__realloc_default, ptr %.sroa.517.0..sroa_idx.i, align 8, !tbaa !134
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @ma__free_default, ptr %.sroa.618.0..sroa_idx.i, align 8, !tbaa !134
  br label %ma_allocation_callbacks_init_copy.exit

bb.d:                                             ; preds = %ma_zero_memory_default.exit42
  %i.g = load ptr, ptr %4, align 8, !tbaa !126
  %i.h = icmp eq ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !132
  %i.k = icmp eq ptr %i.j, null                   ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.k, label %bb.f, label %.thread22.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !135
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @ma__malloc_default, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !134
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr @ma__realloc_default, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @ma__free_default, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !134
  br label %ma_allocation_callbacks_init_copy.exit

bb.i:                                             ; preds = %bb.d
  br i1 %i.k, label %.critedge, label %.thread22.i

.thread22.i:                                      ; preds = %bb.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread22.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread22.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !136
  br label %ma_allocation_callbacks_init_copy.exit

ma_allocation_callbacks_init_copy.exit:           ; preds = %bb.k, %bb.h, %bb.c
  %i.x = trunc nuw nsw i64 %0 to i32              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !352
  %i.z = trunc i64 %1 to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !353
  %.not38 = icmp eq ptr %3, null
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %ma_allocation_callbacks_init_copy.exit
  %i.ab = trunc i64 %2 to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !354
  store ptr %3, ptr %5, align 8, !tbaa !332
  br label %.critedge

bb.m:                                             ; preds = %ma_allocation_callbacks_init_copy.exit
  %i.ad = add nuw nsw i32 %i.x, 31
  %i.ae = and i32 %i.ad, 2147483616               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !354
  %i.ag = and i64 %1, 4294967295
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = mul nuw nsw i64 %i.ag, %i.ah            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !125 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ak, null
  br i1 %.not8.i.i, label %ma_aligned_malloc.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = add nuw nsw i64 %i.ai, 39
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.an = tail call ptr %i.ak(i64 noundef %i.al, ptr noundef %i.am) #55, !inline_history !2179 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %ma_aligned_malloc.exit.thread, label %ma_aligned_malloc.exit

ma_aligned_malloc.exit.thread:                    ; preds = %bb.m, %bb.n
  store ptr null, ptr %5, align 8, !tbaa !332
  br label %.critedge

ma_aligned_malloc.exit:                           ; preds = %bb.n
end_hunk_0
