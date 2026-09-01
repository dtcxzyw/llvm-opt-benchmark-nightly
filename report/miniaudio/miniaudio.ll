Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_data_source_get_length_in_seconds:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.q = load ptr, ptr %0, align 8, !tbaa !353
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1496 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %ma_data_source_get_data_format.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call i32 %i.s(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #55, !inline_history !1498 ; 2 uses
  %.not36.i = icmp eq i32 %i.u, 0
  br i1 %.not36.i, label %bb.g, label %ma_data_source_get_data_format.exit.thread

ma_data_source_get_data_format.exit.thread:       ; preds = %bb.f, %bb.e
  %.0.i13.ph = phi i32 [ -29, %bb.e ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_data_source_get_length_in_pcm_frames.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.c, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.w = load i64, ptr %i.d, align 8, !tbaa !69
  %i.x = sitofp i64 %i.w to float
  %i.y = uitofp i32 %i.v to float
  %i.z = fdiv float %i.x, %i.y
  store float %i.z, ptr %1, align 4, !tbaa !336
  br label %ma_data_source_get_length_in_pcm_frames.exit.thread

ma_data_source_get_length_in_pcm_frames.exit.thread: ; preds = %bb.b, %bb.d, %ma_data_source_get_data_format.exit.thread, %ma_data_source_get_length_in_pcm_frames.exit, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -2, %bb.a ], [ %i.p, %ma_data_source_get_length_in_pcm_frames.exit ], [ %.0.i13.ph, %ma_data_source_get_data_format.exit.thread ], [ -2, %bb.b ], [ -29, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_data_source_set_looping(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = atomicrmw xchg ptr %i.b, i32 %1 seq_cst, align 8 ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !353
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1514 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 %i.f(ptr noundef nonnull %0, i32 noundef %1) #55
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ -2, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_range_in_pcm_frames(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp ult i64 %2, %1
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %ma_data_source_seek_to_pcm_frame.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.d = load ptr, ptr %0, align 8, !tbaa !353
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1510 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 %i.f(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #55, !inline_history !1511
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !1502
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.j, align 8, !tbaa !354
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.k, align 8, !tbaa !1504
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.l, align 8, !tbaa !355
  br label %ma_data_source_seek_to_pcm_frame.exit

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.p = call i64 @llvm.umax.i64(i64 %i.m, i64 %i.o) ; 2 uses
  store i64 %1, ptr %i.n, align 8, !tbaa !1502
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.q, align 8, !tbaa !354
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.r, align 8, !tbaa !1504
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.s, align 8, !tbaa !355
  %i.t = icmp ult i64 %i.p, %1
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !353
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1501 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %ma_data_source_seek_to_pcm_frame.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call i32 %i.w(ptr noundef nonnull %0, i64 noundef %1) #55, !inline_history !1503 ; 0 uses
  br label %ma_data_source_seek_to_pcm_frame.exit

bb.h:                                             ; preds = %bb.e
  %i.z = icmp ugt i64 %i.p, %2
  br i1 %i.z, label %bb.i, label %ma_data_source_seek_to_pcm_frame.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %0, align 8, !tbaa !353
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1501 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %ma_data_source_seek_to_pcm_frame.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = call i32 %i.ac(ptr noundef nonnull %0, i64 noundef %2) #55, !inline_history !1503 ; 0 uses
  br label %ma_data_source_seek_to_pcm_frame.exit

ma_data_source_seek_to_pcm_frame.exit:            ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.h, %bb.a
  %.023 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ma_data_source_get_range_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not15 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %2, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1502
  store i64 %i.c, ptr %1, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !354
  store i64 %i.e, ptr %2, align 8, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_loop_point_in_pcm_frames(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i64 %2, %1
  %or.cond24 = or i1 %i.a, %i.b
  br i1 %or.cond24, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !354  ; 2 uses
  %i.e = icmp ugt i64 %2, %i.d
  %i.f = icmp ne i64 %2, -1                       ; 2 uses
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.g, align 8, !tbaa !1504
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1502
  %i.k = sub i64 %i.d, %i.j
  %i.l = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.k)
  %spec.store.select = select i1 %i.f, i64 %i.l, i64 -1
  store i64 %spec.store.select, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ma_data_source_get_loop_point_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not15 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %2, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1504
  store i64 %i.c, ptr %1, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !355
  store i64 %i.e, ptr %2, align 8, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_current(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !356
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_data_source_get_current(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !356
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_next(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.b, align 8, !tbaa !1499
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_data_source_get_next(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1499
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_next_callback(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.b, align 8, !tbaa !1500
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_data_source_get_next_callback(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1500
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_init(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr @g_ma_audio_buffer_ref_data_source_vtable, ptr %4, align 8, !tbaa !353
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -1, ptr %i.c, align 8, !tbaa !354
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -1, ptr %i.d, align 8, !tbaa !355
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %4, ptr %i.e, align 8, !tbaa !356
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %0, ptr %i.g, align 8, !tbaa !1515
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i32 %1, ptr %i.h, align 4, !tbaa !1517
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %i.i, align 8, !tbaa !1518
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %3, ptr %i.j, align 8, !tbaa !1519
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %2, ptr %i.k, align 8, !tbaa !1520
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @ma_audio_buffer_ref_uninit(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_set_data(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.b, align 8, !tbaa !1518
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %2, ptr %i.c, align 8, !tbaa !1519
end_hunk_0
begin_hunk_1_@ma_resource_manager_data_buffer_node_unacquire:bb.a

bb.ah:                                            ; preds = %.lr.ph.split.i.i
  %i.fz = load ptr, ptr %0, align 8, !tbaa !25
  tail call void %i.fy(ptr noundef nonnull %.010.i.i, ptr noundef %i.fz) #55, !inline_history !2360
  br label %ma_free.exit.i.i

ma_free.exit.i.i:                                 ; preds = %bb.ah, %.lr.ph.split.i.i
  %.not.i20.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i20.i, label %.thread.i, label %.lr.ph.split.i.i, !llvm.loop !1538

.sink.split.i:                                    ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.fm, %bb.ae ], [ %i.fe, %bb.y ], [ %i.fe, %bb.z ], [ %i.fe, %bb.aa ], [ %i.fm, %bb.ac ], [ %i.fm, %bb.ad ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i8 0, i64 16, i1 false)
  br label %.thread.i

.thread.i:                                        ; preds = %ma_free.exit.i.i, %bb.w, %bb.af, %bb.ag, %.sink.split.i
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !31 ; 2 uses
  %.not9.i22.i = icmp eq ptr %i.gb, null
  br i1 %.not9.i22.i, label %ma_resource_manager_data_buffer_bst_unlock.exit, label %bb.ai

bb.ai:                                            ; preds = %.thread.i
  %i.gc = load ptr, ptr %0, align 8, !tbaa !25
  tail call void %i.gb(ptr noundef nonnull %.0, ptr noundef %i.gc) #55, !inline_history !2359
  br label %ma_resource_manager_data_buffer_bst_unlock.exit

ma_resource_manager_data_buffer_bst_unlock.exit:  ; preds = %bb.m, %bb.ai, %.thread.i, %bb.l, %.loopexit, %bb.q, %bb.c, %bb.a
  %.1 = phi i32 [ %spec.select, %.loopexit ], [ -2, %bb.a ], [ -2, %bb.c ], [ 0, %bb.q ], [ 0, %bb.ai ], [ -7, %bb.l ], [ 0, %.thread.i ], [ -7, %bb.m ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @ma_resource_manager_data_stream_init_ex(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.ma_job, align 8             ; 14 uses
  %4 = alloca %struct.ma_resource_manager_inline_notification, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.b, label %ma_zero_memory_default.exit

bb.b:                                             ; preds = %bb.a
  %.not83 = icmp eq ptr %1, null
  br i1 %.not83, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2310 ; 3 uses
  %.not84 = icmp eq ptr %i.d, null
  br i1 %.not84, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2311 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %ma_async_notification_signal.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_async_notification_signal.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.f(ptr noundef nonnull %i.e) #55, !inline_history !2313
  br label %ma_async_notification_signal.exit.i

ma_async_notification_signal.exit.i:              ; preds = %bb.f, %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2314 ; 3 uses
  %.not7.i = icmp eq ptr %i.i, null
  br i1 %.not7.i, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.g

bb.g:                                             ; preds = %ma_async_notification_signal.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.j(ptr noundef nonnull %i.i) #55, !inline_history !2313
  br label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(728) %2, i8 0, i64 728, i1 false)
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.i

bb.i:                                             ; preds = %ma_zero_memory_default.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2310 ; 5 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0122.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !33
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !33
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !33
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.17.0 = phi ptr [ %.sroa.17.0.copyload, %bb.j ], [ null, %bb.i ] ; 3 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.0.copyload, %bb.j ], [ null, %bb.i ] ; 9 uses
  %.sroa.10.0 = phi ptr [ %.sroa.10.0.copyload, %bb.j ], [ null, %bb.i ] ; 4 uses
  %.sroa.0122.0 = phi ptr [ %.sroa.0122.0.copyload, %bb.j ], [ null, %bb.i ] ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  store ptr @g_ma_resource_manager_data_stream_vtable, ptr %2, align 8, !tbaa !353
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i64 -1, ptr %i.p, align 8, !tbaa !354
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store i64 -1, ptr %i.q, align 8, !tbaa !355
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %2, ptr %i.r, align 8, !tbaa !356
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !2316 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !2309
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %0, ptr %i.x, align 8, !tbaa !2361
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.u, ptr %i.y, align 8, !tbaa !2363
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  store i32 -19, ptr %i.z, align 8, !tbaa !2364
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !2304 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !2306 ; 5 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_ma_resource_manager_data_stream_vtable, i64 24), align 8, !tbaa !1510 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = call i32 %i.af(ptr noundef nonnull %2, ptr noundef nonnull %i.a) #55, !inline_history !2365
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ab, ptr %i.ai, align 8, !tbaa !1502
  store i64 %i.ad, ptr %i.p, align 8, !tbaa !354
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.aj, align 8, !tbaa !1504
  store i64 -1, ptr %i.q, align 8, !tbaa !355
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.o:                                             ; preds = %bb.m
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.an = call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.am) ; 2 uses
  store i64 %i.ab, ptr %i.al, align 8, !tbaa !1502
  store i64 %i.ad, ptr %i.p, align 8, !tbaa !354
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.ao, align 8, !tbaa !1504
  store i64 -1, ptr %i.q, align 8, !tbaa !355
  %i.ap = icmp ult i64 %i.an, %i.ab
  br i1 %i.ap, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %2, align 8, !tbaa !353
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1501 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = call i32 %i.as(ptr noundef nonnull %2, i64 noundef %i.ab) #55, !inline_history !2366 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.r:                                             ; preds = %bb.o
  %i.av = icmp ugt i64 %i.an, %i.ad
  br i1 %i.av, label %bb.s, label %ma_data_source_set_range_in_pcm_frames.exit

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr %2, align 8, !tbaa !353
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1501 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = call i32 %i.ay(ptr noundef nonnull %2, i64 noundef %i.ad) #55, !inline_history !2366 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

ma_data_source_set_range_in_pcm_frames.exit:      ; preds = %bb.k, %bb.n, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !2307 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !2308 ; 4 uses
  %i.bf = icmp ult i64 %i.be, %i.bc
  br i1 %i.bf, label %bb.w, label %bb.u

bb.u:                                             ; preds = %ma_data_source_set_range_in_pcm_frames.exit
  %i.bg = load i64, ptr %i.p, align 8, !tbaa !354 ; 2 uses
  %i.bh = icmp ugt i64 %i.be, %i.bg
  %i.bi = icmp ne i64 %i.be, -1                   ; 2 uses
  %or.cond.i91 = and i1 %i.bi, %i.bh
  br i1 %or.cond.i91, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.bc, ptr %i.bj, align 8, !tbaa !1504
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !1502
  %i.bm = sub i64 %i.bg, %i.bl
  %i.bn = call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bm)
  %spec.store.select.i = select i1 %i.bi, i64 %i.bn, i64 -1
  store i64 %spec.store.select.i, ptr %i.q, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %ma_data_source_set_range_in_pcm_frames.exit
  %i.bo = and i32 %i.u, 32
  %i.bp = or i32 %i.bo, %i.w
  %.narrow = icmp ne i32 %i.bp, 0
  %.lobit = zext i1 %.narrow to i32               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = atomicrmw xchg ptr %i.bq, i32 %.lobit seq_cst, align 8 ; 0 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !353
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1514 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %ma_data_source_set_looping.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = call i32 %i.bu(ptr noundef nonnull %2, i32 noundef %.lobit) #55, !inline_history !2341 ; 0 uses
  br label %ma_data_source_set_looping.exit

ma_data_source_set_looping.exit:                  ; preds = %bb.w, %bb.x
  %i.bx = icmp eq ptr %0, null
  br i1 %i.bx, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %ma_data_source_set_looping.exit
  %i.by = load ptr, ptr %1, align 8, !tbaa !2318  ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2319 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z, %ma_data_source_set_looping.exit
  %.not.i94 = icmp eq ptr %.sroa.0122.0, null
  br i1 %.not.i94, label %ma_async_notification_signal.exit.i95, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = load ptr, ptr %.sroa.0122.0, align 8, !tbaa !52 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %ma_async_notification_signal.exit.i95, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void %i.cd(ptr noundef nonnull %.sroa.0122.0) #55, !inline_history !2313
  br label %ma_async_notification_signal.exit.i95

ma_async_notification_signal.exit.i95:            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.not7.i96 = icmp eq ptr %.sroa.13.0, null
  br i1 %.not7.i96, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.ad

bb.ad:                                            ; preds = %ma_async_notification_signal.exit.i95
  %i.cf = load ptr, ptr %.sroa.13.0, align 8, !tbaa !52 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void %i.cf(ptr noundef nonnull %.sroa.13.0) #55, !inline_history !2313
  br label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit

bb.af:                                            ; preds = %bb.y
  %i.ch = call ptr @ma_copy_string(ptr noundef nonnull %i.by, ptr noundef nonnull %0)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.z
  %i.ci = call ptr @ma_copy_string_w(ptr noundef nonnull %i.cb, ptr noundef nonnull %0)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.063 = phi ptr [ %i.ch, %bb.af ], [ null, %bb.ag ] ; 3 uses
  %.062 = phi ptr [ null, %bb.af ], [ %i.ci, %bb.ag ] ; 3 uses
  %i.cj = icmp eq ptr %.063, null                 ; 2 uses
  %i.ck = icmp eq ptr %.062, null                 ; 2 uses
  %or.cond = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %.not.i98 = icmp eq ptr %.sroa.0122.0, null
  br i1 %.not.i98, label %ma_async_notification_signal.exit.i99, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cl = load ptr, ptr %.sroa.0122.0, align 8, !tbaa !52 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %ma_async_notification_signal.exit.i99, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void %i.cl(ptr noundef nonnull %.sroa.0122.0) #55, !inline_history !2313
  br label %ma_async_notification_signal.exit.i99

ma_async_notification_signal.exit.i99:            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.not7.i100 = icmp eq ptr %.sroa.13.0, null
  br i1 %.not7.i100, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.al

bb.al:                                            ; preds = %ma_async_notification_signal.exit.i99
  %i.cn = load ptr, ptr %.sroa.13.0, align 8, !tbaa !52 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void %i.cn(ptr noundef nonnull %.sroa.13.0) #55, !inline_history !2313
  br label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit

bb.an:                                            ; preds = %bb.ah
  %i.cp = load i32, ptr %i.t, align 8, !tbaa !2316
  %i.cq = and i32 %i.cp, 12
  %or.cond85.not = icmp eq i32 %i.cq, 4           ; 4 uses
  br i1 %or.cond85.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @ma_resource_manager_inline_notification_init(ptr noundef nonnull %0, ptr noundef %4)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.not.i102 = icmp eq ptr %.sroa.10.0, null
  br i1 %.not.i102, label %ma_fence_acquire.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ap
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.10.0, i64 96 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.preheader.i.i
  %i.cs = load atomic i32, ptr %i.cr seq_cst, align 8 ; 2 uses
  %i.ct = add i32 %i.cs, 1                        ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %ma_fence_acquire.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cv = cmpxchg weak ptr %i.cr, i32 %i.cs, i32 %i.ct seq_cst seq_cst, align 8 ; 2 uses
  %i.cw = extractvalue { i32, i1 } %i.cv, 1
  %i.cx = extractvalue { i32, i1 } %i.cv, 0
  %.not.i.i103 = icmp eq i32 %i.cx, 2147483647
  %or.cond.i104 = select i1 %i.cw, i1 true, i1 %.not.i.i103
  br i1 %or.cond.i104, label %ma_fence_acquire.exit.i, label %bb.aq

ma_fence_acquire.exit.i:                          ; preds = %bb.ar, %bb.aq, %bb.ap
  %.not7.i105 = icmp eq ptr %.sroa.17.0, null
  br i1 %.not7.i105, label %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit, label %.preheader.i8.i

.preheader.i8.i:                                  ; preds = %ma_fence_acquire.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 96 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %.preheader.i8.i
  %i.cz = load atomic i32, ptr %i.cy seq_cst, align 8 ; 2 uses
  %i.da = add i32 %i.cz, 1                        ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dc = cmpxchg weak ptr %i.cy, i32 %i.cz, i32 %i.da seq_cst seq_cst, align 8 ; 2 uses
  %i.dd = extractvalue { i32, i1 } %i.dc, 1
  %i.de = extractvalue { i32, i1 } %i.dc, 0
  %.not.i9.i = icmp eq i32 %i.de, 2147483647
  %or.cond12.i = select i1 %i.dd, i1 true, i1 %.not.i9.i
  br i1 %or.cond12.i, label %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit, label %bb.as

ma_resource_manager_pipeline_notifications_acquire_all_fences.exit: ; preds = %bb.as, %bb.at, %ma_fence_acquire.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !2329 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !2367 ; 3 uses
  %i.dj = icmp ule i64 %i.dg, %i.di
  %.not.i106 = icmp eq i64 %i.di, 0
  %or.cond.i107 = or i1 %i.dj, %.not.i106
  br i1 %or.cond.i107, label %ma_resource_manager_post_job.exit, label %bb.au

bb.au:                                            ; preds = %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit
  %i.dk = urem i64 %i.dg, %i.di
  br label %ma_resource_manager_post_job.exit

ma_resource_manager_post_job.exit:                ; preds = %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit, %bb.au
  %.0.i108 = phi i64 [ %i.dk, %bb.au ], [ %i.dg, %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.dm = atomicrmw xchg ptr %i.dl, i64 %.0.i108 seq_cst, align 8 ; 0 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx, i8 0, i64 88, i1 false)
  store i16 7, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 -1, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !9
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %.sroa.6121.0..sroa_idx, align 8, !tbaa !69
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 676
  %i.do = atomicrmw add ptr %i.dn, i32 1 seq_cst, align 4
  store i32 %i.do, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2327
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.dp, align 8, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.063, ptr %i.dq, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %.062, ptr %i.dr, align 8, !tbaa !9
  %i.ds = load i64, ptr %i.df, align 8, !tbaa !2329
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !9
  %i.du = select i1 %or.cond85.not, ptr %.sroa.0122.0, ptr %4
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 64
end_hunk_1
begin_hunk_2_@ma_sound_init_from_data_source_internal:bb.a
  %.not8.i.i = icmp eq ptr %i.at, null
  br i1 %.not8.i.i, label %ma_sound_set_looping.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.av = call ptr %i.at(i64 noundef %i.ar, ptr noundef %i.au) #55, !inline_history !2624 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %ma_sound_set_looping.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = call i32 @ma_engine_node_init_preallocated(ptr noundef nonnull readonly %4, ptr noundef nonnull %i.av, ptr noundef nonnull %2) ; 3 uses
  %.not19.i = icmp eq i32 %i.ax, 0
  br i1 %.not19.i, label %bb.p, label %bb.n

.thread.i:                                        ; preds = %bb.j
  %i.ay = call i32 @ma_engine_node_init_preallocated(ptr noundef nonnull readonly %4, ptr noundef null, ptr noundef nonnull %2) ; 2 uses
  %.not1930.i = icmp eq i32 %i.ay, 0
  br i1 %.not1930.i, label %bb.p, label %ma_sound_set_looping.exit

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ba, null
  br i1 %.not9.i.i, label %ma_sound_set_looping.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.ap, align 8, !tbaa !25
  call void %i.ba(ptr noundef nonnull %i.av, ptr noundef %i.bb) #55, !inline_history !2625
  br label %ma_sound_set_looping.exit

bb.p:                                             ; preds = %.thread.i, %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 936
  store i8 1, ptr %i.bc, align 8, !tbaa !2525
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2604 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bg = load i32, ptr %i.h, align 8, !tbaa !2603
  %i.bh = and i32 %i.bg, 4096
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bk = call i32 @ma_node_attach_output_bus(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %i.bj, i32 noundef 0)
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !2626
  %i.bn = call i32 @ma_node_attach_output_bus(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %i.be, i32 noundef %i.bm)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.056 = phi i32 [ %i.bk, %bb.r ], [ %i.bn, %bb.s ] ; 2 uses
  %.not67 = icmp eq i32 %.056, 0
  br i1 %.not67, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @ma_engine_node_uninit(ptr noundef nonnull %2, ptr noundef nonnull %i.ap)
  br label %ma_sound_set_looping.exit

.thread:                                          ; preds = %bb.q, %bb.t
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !2594
  %.not68 = icmp eq ptr %i.bo, null
  br i1 %.not68, label %bb.z, label %ma_node_graph_get_processing_size_in_frames.exit

ma_node_graph_get_processing_size_in_frames.exit: ; preds = %.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 1000
  store i32 0, ptr %i.bp, align 8, !tbaa !2627
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !2380 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 1004
  %i.bt = icmp eq i32 %i.br, 0
  %spec.select = select i1 %i.bt, i32 512, i32 %i.br ; 2 uses
  store i32 %spec.select, ptr %i.bs, align 4, !tbaa !2628
  %i.bu = shl i32 %i.ao, 2
  %i.bv = mul i32 %i.bu, %spec.select             ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !22 ; 2 uses
  %.not8.i.i77 = icmp eq ptr %i.by, null
  br i1 %.not8.i.i77, label %bb.y, label %bb.v

bb.v:                                             ; preds = %ma_node_graph_get_processing_size_in_frames.exit
  %i.bz = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.ca = call ptr %i.by(i64 noundef %i.bw, ptr noundef %i.bz) #55, !inline_history !2629 ; 3 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not8.i = icmp eq i32 %i.bv, 0
  br i1 %.not8.i, label %ma_calloc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ca, i8 0, i64 %i.bw, i1 false)
  br label %ma_calloc.exit

ma_calloc.exit:                                   ; preds = %bb.w, %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 992
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !2591
  br label %bb.z

bb.y:                                             ; preds = %bb.v, %ma_node_graph_get_processing_size_in_frames.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 992
  store ptr null, ptr %i.cc, align 8, !tbaa !2591
  call void @ma_engine_node_uninit(ptr noundef nonnull %2, ptr noundef nonnull %i.ap)
  br label %ma_sound_set_looping.exit

bb.z:                                             ; preds = %ma_calloc.exit, %.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !2630 ; 6 uses
  %.not69 = icmp eq i64 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !2535 ; 6 uses
  %.not70 = icmp eq i64 %i.cg, -1
  %or.cond = select i1 %.not69, i1 %.not70, i1 false
  br i1 %or.cond, label %ma_data_source_set_range_in_pcm_frames.exit, label %ma_sound_get_data_source.exit

ma_sound_get_data_source.exit:                    ; preds = %bb.z
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !2594 ; 15 uses
  %i.ci = icmp eq ptr %i.ch, null
  %i.cj = icmp ult i64 %i.cg, %i.ce
  %or.cond.i = or i1 %i.ci, %i.cj
  br i1 %or.cond.i, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.aa

bb.aa:                                            ; preds = %ma_sound_get_data_source.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !353
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1510 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = call i32 %i.cm(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.a) #55, !inline_history !2365
  %.not.i.i79 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i79, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.ce, ptr %i.cp, align 8, !tbaa !1502
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.cg, ptr %i.cq, align 8, !tbaa !354
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 0, ptr %i.cr, align 8, !tbaa !1504
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i64 -1, ptr %i.cs, align 8, !tbaa !355
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !69
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.cw = call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cv) ; 2 uses
  store i64 %i.ce, ptr %i.cu, align 8, !tbaa !1502
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.cg, ptr %i.cx, align 8, !tbaa !354
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 0, ptr %i.cy, align 8, !tbaa !1504
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i64 -1, ptr %i.cz, align 8, !tbaa !355
  %i.da = icmp ult i64 %i.cw, %i.ce
  br i1 %i.da, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.db = load ptr, ptr %i.ch, align 8, !tbaa !353
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1501 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = call i32 %i.dd(ptr noundef nonnull %i.ch, i64 noundef %i.ce) #55, !inline_history !2366 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.ag:                                            ; preds = %bb.ad
  %i.dg = icmp ugt i64 %i.cw, %i.cg
  br i1 %i.dg, label %bb.ah, label %ma_data_source_set_range_in_pcm_frames.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dh = load ptr, ptr %i.ch, align 8, !tbaa !353
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1501 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = call i32 %i.dj(ptr noundef nonnull %i.ch, i64 noundef %i.cg) #55, !inline_history !2366 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

ma_data_source_set_range_in_pcm_frames.exit:      ; preds = %bb.z, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac, %ma_sound_get_data_source.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !2631 ; 3 uses
  %.not71 = icmp eq i64 %i.dn, 0
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !2536 ; 5 uses
  %.not72 = icmp eq i64 %i.dp, -1
  %or.cond122 = select i1 %.not71, i1 %.not72, i1 false
  br i1 %or.cond122, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %ma_sound_get_data_source.exit81

ma_sound_get_data_source.exit81:                  ; preds = %ma_data_source_set_range_in_pcm_frames.exit
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !2594 ; 5 uses
  %i.dr = icmp eq ptr %i.dq, null
  %i.ds = icmp ult i64 %i.dp, %i.dn
  %or.cond24.i = or i1 %i.dr, %i.ds
  br i1 %or.cond24.i, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.aj

bb.aj:                                            ; preds = %ma_sound_get_data_source.exit81
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !354 ; 2 uses
  %i.dv = icmp ugt i64 %i.dp, %i.du
  %i.dw = icmp ne i64 %i.dp, -1                   ; 2 uses
  %or.cond.i82 = and i1 %i.dw, %i.dv
  br i1 %or.cond.i82, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store i64 %i.dn, ptr %i.dx, align 8, !tbaa !1504
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1502
  %i.eb = sub i64 %i.du, %i.ea
  %i.ec = call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.eb)
  %spec.store.select.i = select i1 %i.dw, i64 %i.ec, i64 -1
  store i64 %spec.store.select.i, ptr %i.dy, align 8
  br label %ma_data_source_set_loop_point_in_pcm_frames.exit

ma_data_source_set_loop_point_in_pcm_frames.exit: ; preds = %ma_data_source_set_range_in_pcm_frames.exit, %bb.ak, %bb.aj, %ma_sound_get_data_source.exit81
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !2613
  %.not73 = icmp eq i32 %i.ee, 0
  br i1 %.not73, label %bb.al, label %bb.am

bb.al:                                            ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit
  %i.ef = load i32, ptr %i.h, align 8, !tbaa !2603
  %i.eg = lshr i32 %i.ef, 5
  %.lobit = and i32 %i.eg, 1
  br label %bb.am

bb.am:                                            ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit, %bb.al
  %i.eh = phi i32 [ 1, %ma_data_source_set_loop_point_in_pcm_frames.exit ], [ %.lobit, %bb.al ] ; 2 uses
  %i.ei = load ptr, ptr %i.g, align 8, !tbaa !2594 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %ma_sound_set_looping.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.el = atomicrmw xchg ptr %i.ek, i32 %i.eh seq_cst, align 8 ; 0 uses
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !353
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1514 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %ma_sound_set_looping.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = call i32 %i.eo(ptr noundef nonnull %i.ei, i32 noundef %i.eh) #55, !inline_history !2632 ; 0 uses
  br label %ma_sound_set_looping.exit

ma_sound_set_looping.exit:                        ; preds = %bb.n, %.thread.i, %bb.k, %bb.l, %bb.o, %ma_engine_node_get_heap_size.exit.i, %bb.ao, %bb.an, %bb.am, %ma_data_source_get_data_format.exit.thread, %bb.f, %bb.y, %bb.u
  %.057 = phi i32 [ 0, %bb.ao ], [ -4, %bb.y ], [ %.0.i.ph, %ma_data_source_get_data_format.exit.thread ], [ -3, %bb.f ], [ %.056, %bb.u ], [ 0, %bb.am ], [ 0, %bb.an ], [ %i.ax, %bb.n ], [ %i.ay, %.thread.i ], [ -4, %bb.k ], [ -4, %bb.l ], [ %i.ax, %bb.o ], [ %i.aq, %ma_engine_node_get_heap_size.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  ret i32 %.057
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_ex(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_sound_preinit.exit.thread, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 960
  store i64 -1, ptr %i.b, align 8, !tbaa !2606
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %ma_sound_preinit.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 976
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !33
  store <2 x ptr> %i.g, ptr %i.f, align 8, !tbaa !33
  %i.h = load ptr, ptr %1, align 8, !tbaa !2602
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2633
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call i32 @ma_sound_init_from_file_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %ma_sound_preinit.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @ma_sound_init_from_data_source_internal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %ma_sound_preinit.exit.thread

ma_sound_preinit.exit.thread:                     ; preds = %ma_zero_memory_default.exit.i, %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ %i.l, %bb.e ], [ -2, %ma_zero_memory_default.exit.i ], [ %i.k, %bb.d ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_from_file_w(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #8 {
bb.a:
  %6 = alloca %struct.ma_sound_config, align 8    ; 18 uses
  %.sroa.9 = alloca [16 x i8], align 4            ; 5 uses
  %.sroa.10 = alloca [20 x i8], align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_sound_init_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2634)
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.c = load i32, ptr %i.b, align 4, !tbaa !2505, !noalias !2634
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.sroa.711.112.copyload = load i32, ptr %i.d, align 8, !tbaa !8
  %.sroa.9.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.112..sroa_idx, i64 16, i1 false), !tbaa.struct !2548
  %.sroa.10.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.112..sroa_idx, i64 20, i1 false), !tbaa.struct !2549
  %.sroa.11.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.e = load <2 x i32>, ptr %.sroa.11.112..sroa_idx, align 8
  br label %ma_sound_config_init_2.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, i8 0, i64 20, i1 false), !alias.scope !2634
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false), !alias.scope !2634
  br label %ma_sound_config_init_2.exit

ma_sound_config_init_2.exit:                      ; preds = %bb.c, %bb.d
  %.sroa.711.0 = phi i32 [ 5, %bb.d ], [ %.sroa.711.112.copyload, %bb.c ]
  %.sink.i = phi i32 [ 0, %bb.d ], [ %i.c, %bb.c ]
  %i.f = phi <2 x i32> [ zeroinitializer, %bb.d ], [ %i.e, %bb.c ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %6, i8 0, i64 44, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %.sink.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 -1, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !69
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !69
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 -1, ptr %.sroa.610.0..sroa_idx, align 8, !tbaa !69
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i32 %.sroa.711.0, ptr %.sroa.711.0..sroa_idx, align 8, !tbaa !8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, i64 16, i1 false), !tbaa.struct !2611
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, i64 20, i1 false), !tbaa.struct !2612
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 152
  store <2 x i32> %i.f, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !2633
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !2603
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.h, align 8, !tbaa !2604
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %4, ptr %i.i, align 8, !tbaa !2605
  %i.j = icmp eq ptr %5, null
  br i1 %i.j, label %ma_sound_init_ex.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_sound_config_init_2.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 960
  store i64 -1, ptr %i.k, align 8, !tbaa !2606
  br i1 %.not.i, label %ma_sound_init_ex.exit, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 976
  %i.m = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !33
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !33
  %i.n = call i32 @ma_sound_init_from_file_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, ptr noundef nonnull %5)
  br label %ma_sound_init_ex.exit

ma_sound_init_ex.exit:                            ; preds = %bb.e, %ma_zero_memory_default.exit.i.i, %ma_sound_config_init_2.exit, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ -2, %ma_sound_config_init_2.exit ], [ -2, %ma_zero_memory_default.exit.i.i ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_copy(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.ma_resource_manager_data_source_config, align 8 ; 9 uses
  %6 = alloca %struct.ma_sound_config, align 8    ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %ma_free.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 960
  store i64 -1, ptr %i.b, align 8, !tbaa !2606
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2593
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_free.exit, label %bb.c

end_hunk_2
begin_hunk_3_@ma_resource_manager_data_buffer_init_connector:bb.a
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !2324 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.l = load <2 x i32>, ptr %i.k, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(151) %i.p, i8 0, i64 151, i1 false)
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %ma_fence_release.exit, label %ma_allocation_callbacks_init_copy.exit.i.i

ma_allocation_callbacks_init_copy.exit.i.i:       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, i8 0, i64 80, i1 false)
  store ptr @g_ma_audio_buffer_ref_data_source_vtable, ptr %i.p, align 8, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -1, ptr %i.s, align 8, !tbaa !354
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 -1, ptr %i.t, align 8, !tbaa !355
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.p, ptr %i.u, align 8, !tbaa !356
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  store <2 x i32> %i.l, ptr %i.w, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.aa, align 8
  store ptr @ma__malloc_default, ptr %.sroa.17.32..sroa_idx, align 8, !tbaa !33
  %.sroa.20.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @ma__realloc_default, ptr %.sroa.20.32..sroa_idx, align 8, !tbaa !33
  %.sroa.23.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @ma__free_default, ptr %.sroa.23.32..sroa_idx, align 8, !tbaa !33
  store i64 0, ptr %i.x, align 8, !tbaa !1518
  store i64 %i.n, ptr %i.y, align 8, !tbaa !1519
  store ptr %i.o, ptr %i.z, align 8, !tbaa !1520
  br label %ma_audio_buffer_init.exit.thread

ma_paged_audio_buffer_init.exit:                  ; preds = %bb.b
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !2324 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i8 0, i64 64, i1 false)
  store ptr @g_ma_paged_audio_buffer_data_source_vtable, ptr %i.ad, align 8, !tbaa !353
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -1, ptr %i.af, align 8, !tbaa !354
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 -1, ptr %i.ag, align 8, !tbaa !355
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !356
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !1544
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !1546
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %ma_audio_buffer_init.exit.thread

ma_audio_buffer_init.exit:                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2320 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !2987, !noalias !2997
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.666.0..sroa_idx, i8 0, i64 20, i1 false)
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.868.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2280, !noalias !2997
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.av = load i32, ptr %i.au, align 8, !tbaa !2281, !noalias !2997
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2283, !noalias !2997
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.767.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false)
  %i.az = load <2 x i32>, ptr %i.ap, align 8, !tbaa !8, !noalias !2997
  store <2 x i32> %i.az, ptr %4, align 8, !tbaa !8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ar, ptr %.sroa.565.0..sroa_idx, align 8, !tbaa !8
  %.sroa.969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i32 0, ptr %.sroa.969.0..sroa_idx, align 8, !tbaa !8
  %.sroa.1070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 116
  store i32 0, ptr %.sroa.1070.0..sroa_idx, align 4, !tbaa !8
  %.sroa.1171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.at, ptr %.sroa.1171.0..sroa_idx, align 8, !tbaa !1594
  %.sroa.1272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %i.av, ptr %.sroa.1272.0..sroa_idx, align 8, !tbaa !8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 132
  store i32 0, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.1373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 136
  store ptr %i.ax, ptr %.sroa.1373.0..sroa_idx, align 8, !tbaa !33
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !2324 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = call i32 @ma_decoder_init_memory(ptr noundef %i.bc, i64 noundef %i.be, ptr noundef nonnull %4, ptr noundef nonnull %i.bf) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %ma_audio_buffer_init.exit.thread, label %ma_fence_release.exit

ma_audio_buffer_init.exit.thread:                 ; preds = %ma_allocation_callbacks_init_copy.exit.i.i, %ma_paged_audio_buffer_init.exit, %ma_audio_buffer_init.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !2304 ; 6 uses
  %.not = icmp eq i64 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !2306 ; 6 uses
  %.not42 = icmp eq i64 %i.bl, -1
  %or.cond = select i1 %.not, i1 %.not42, i1 false
  %i.bm = icmp ult i64 %i.bl, %i.bj
  %or.cond98 = select i1 %or.cond, i1 true, i1 %i.bm
  br i1 %or.cond98, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.d

bb.d:                                             ; preds = %ma_audio_buffer_init.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.bn = load ptr, ptr %0, align 8, !tbaa !353
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1510 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = call i32 %i.bp(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #55, !inline_history !2365
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bj, ptr %i.bs, align 8, !tbaa !1502
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bl, ptr %i.bt, align 8, !tbaa !354
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.bu, align 8, !tbaa !1504
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.bv, align 8, !tbaa !355
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.g:                                             ; preds = %bb.e
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.bz = call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.by) ; 2 uses
  store i64 %i.bj, ptr %i.bx, align 8, !tbaa !1502
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bl, ptr %i.ca, align 8, !tbaa !354
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.cb, align 8, !tbaa !1504
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.cc, align 8, !tbaa !355
  %i.cd = icmp ult i64 %i.bz, %i.bj
  br i1 %i.cd, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ce = load ptr, ptr %0, align 8, !tbaa !353
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1501 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = call i32 %i.cg(ptr noundef nonnull %0, i64 noundef %i.bj) #55, !inline_history !2366 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.j:                                             ; preds = %bb.g
  %i.cj = icmp ugt i64 %i.bz, %i.bl
  br i1 %i.cj, label %bb.k, label %ma_data_source_set_range_in_pcm_frames.exit

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %0, align 8, !tbaa !353
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1501 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = call i32 %i.cm(ptr noundef nonnull %0, i64 noundef %i.bl) #55, !inline_history !2366 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

ma_data_source_set_range_in_pcm_frames.exit:      ; preds = %ma_audio_buffer_init.exit.thread, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !2307 ; 3 uses
  %.not43 = icmp eq i64 %i.cq, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !2308 ; 5 uses
  %.not44 = icmp eq i64 %i.cs, -1
  %or.cond99 = select i1 %.not43, i1 %.not44, i1 false
  %i.ct = icmp ult i64 %i.cs, %i.cq
  %or.cond100 = select i1 %or.cond99, i1 true, i1 %i.ct
  br i1 %or.cond100, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.m

bb.m:                                             ; preds = %ma_data_source_set_range_in_pcm_frames.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !354 ; 2 uses
  %i.cw = icmp ugt i64 %i.cs, %i.cv
  %i.cx = icmp ne i64 %i.cs, -1                   ; 2 uses
  %or.cond.i48 = and i1 %i.cx, %i.cw
  br i1 %or.cond.i48, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cq, ptr %i.cy, align 8, !tbaa !1504
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !1502
  %i.dc = sub i64 %i.cv, %i.db
  %i.dd = call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.dc)
  %spec.store.select.i = select i1 %i.cx, i64 %i.dd, i64 -1
  store i64 %spec.store.select.i, ptr %i.cz, align 8
  br label %ma_data_source_set_loop_point_in_pcm_frames.exit

ma_data_source_set_loop_point_in_pcm_frames.exit: ; preds = %ma_data_source_set_range_in_pcm_frames.exit, %bb.n, %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.df = load i32, ptr %i.de, align 4, !tbaa !2309 ; 3 uses
  %.not45 = icmp eq i32 %i.df, 0
  br i1 %.not45, label %ma_data_source_set_looping.exit, label %bb.o

bb.o:                                             ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = atomicrmw xchg ptr %i.dg, i32 %i.df seq_cst, align 8 ; 0 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !353
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1514 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %ma_data_source_set_looping.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = call i32 %i.dk(ptr noundef nonnull %0, i32 noundef %i.df) #55, !inline_history !2341 ; 0 uses
  br label %ma_data_source_set_looping.exit

ma_data_source_set_looping.exit:                  ; preds = %bb.p, %bb.o, %ma_data_source_set_loop_point_in_pcm_frames.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 124
  store atomic i32 1, ptr %i.dn seq_cst, align 4
  %.not46 = icmp eq ptr %2, null
  br i1 %.not46, label %ma_async_notification_signal.exit, label %bb.q

bb.q:                                             ; preds = %ma_data_source_set_looping.exit
  %i.do = load ptr, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %ma_async_notification_signal.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %i.do(ptr noundef nonnull %2) #55, !inline_history !2328
  br label %ma_async_notification_signal.exit

ma_async_notification_signal.exit:                ; preds = %bb.r, %bb.q, %ma_data_source_set_looping.exit
  %.not47 = icmp eq ptr %3, null
  br i1 %.not47, label %ma_fence_release.exit, label %.preheader.i

.preheader.i:                                     ; preds = %ma_async_notification_signal.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.preheader.i
  %i.dr = load atomic i32, ptr %i.dq seq_cst, align 8 ; 3 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %ma_fence_release.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = add i32 %i.dr, -1                       ; 2 uses
  %i.du = cmpxchg weak ptr %i.dq, i32 %i.dr, i32 %i.dt seq_cst seq_cst, align 8 ; 2 uses
  %i.dv = extractvalue { i32, i1 } %i.du, 1
  br i1 %i.dv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dw = icmp eq i32 %i.dt, 0
  br i1 %i.dw, label %ma_event_signal.exit.i, label %ma_fence_release.exit

ma_event_signal.exit.i:                           ; preds = %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dy = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.dx) #55 ; 0 uses
  store i32 1, ptr %3, align 8, !tbaa !48
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ea = call i32 @pthread_cond_signal(ptr noundef nonnull %i.dz) #55 ; 0 uses
  %i.eb = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dx) #55 ; 0 uses
  br label %ma_fence_release.exit

bb.v:                                             ; preds = %bb.t
  %i.ec = extractvalue { i32, i1 } %i.du, 0
  %.not.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i, label %ma_fence_release.exit, label %bb.s

ma_fence_release.exit:                            ; preds = %bb.v, %bb.s, %bb.c, %ma_event_signal.exit.i, %bb.u, %ma_audio_buffer_init.exit, %ma_async_notification_signal.exit, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.b ], [ %i.e, %bb.a ], [ 0, %ma_async_notification_signal.exit ], [ 0, %ma_event_signal.exit.i ], [ %i.bg, %ma_audio_buffer_init.exit ], [ -2, %bb.c ], [ 0, %bb.u ], [ 0, %bb.s ], [ 0, %bb.v ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ma_resource_manager_data_stream_fill_page(ptr noundef %0, i32 noundef %1) unnamed_addr #8 {
ma_resource_manager_data_stream_is_looping.exit:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 0, ptr %i.b, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2371
  %i.e = getelementptr i8, ptr %0, i64 232
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !2374
  %.fr.i.i = freeze i32 %.val.i                   ; 2 uses
  %i.f = urem i32 %.fr.i.i, 1000
  %i.g = sub nuw i32 %.fr.i.i, %i.f               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2372
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.k = load i32, ptr %i.j, align 4, !tbaa !2373
  %i.l = zext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = mul i32 %i.k, %1
  %i.p = mul i32 %i.o, %i.n
  %i.q = mul i32 %i.p, %i.g
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r
  %i.t = zext i32 %i.g to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.w = load atomic i32, ptr %i.v seq_cst, align 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = atomicrmw xchg ptr %i.x, i32 %i.w seq_cst, align 8 ; 0 uses
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !353
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1514 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %ma_data_source_get_range_in_pcm_frames.exit, label %bb.a

bb.a:                                             ; preds = %ma_resource_manager_data_stream_is_looping.exit
  %i.ad = tail call i32 %i.ab(ptr noundef nonnull %i.u, i32 noundef %i.w) #55, !inline_history !2341 ; 0 uses
  br label %ma_data_source_get_range_in_pcm_frames.exit

ma_data_source_get_range_in_pcm_frames.exit:      ; preds = %ma_resource_manager_data_stream_is_looping.exit, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1502 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !354 ; 5 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %ma_data_source_get_loop_point_in_pcm_frames.exit, label %bb.b

bb.b:                                             ; preds = %ma_data_source_get_range_in_pcm_frames.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !353
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1510 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = call i32 %i.al(ptr noundef nonnull %i.u, ptr noundef nonnull %i.a) #55, !inline_history !2365
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.af, ptr %i.ao, align 8, !tbaa !1502
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ah, ptr %i.ap, align 8, !tbaa !354
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.aq, align 8, !tbaa !1504
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 -1, ptr %i.ar, align 8, !tbaa !355
  br label %ma_data_source_get_loop_point_in_pcm_frames.exit

bb.e:                                             ; preds = %bb.c
  %i.as = load i64, ptr %i.a, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.av = call i64 @llvm.umax.i64(i64 %i.as, i64 %i.au) ; 2 uses
  store i64 %i.af, ptr %i.at, align 8, !tbaa !1502
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ah, ptr %i.aw, align 8, !tbaa !354
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.ax, align 8, !tbaa !1504
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 -1, ptr %i.ay, align 8, !tbaa !355
  %i.az = icmp ult i64 %i.av, %i.af
  br i1 %i.az, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !353
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1501 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %ma_data_source_get_loop_point_in_pcm_frames.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = call i32 %i.bc(ptr noundef nonnull %i.u, i64 noundef %i.af) #55, !inline_history !2366 ; 0 uses
  br label %ma_data_source_get_loop_point_in_pcm_frames.exit

bb.h:                                             ; preds = %bb.e
  %i.bf = icmp ugt i64 %i.av, %i.ah
  br i1 %i.bf, label %bb.i, label %ma_data_source_get_loop_point_in_pcm_frames.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !353
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1501 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %ma_data_source_get_loop_point_in_pcm_frames.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = call i32 %i.bi(ptr noundef nonnull %i.u, i64 noundef %i.ah) #55, !inline_history !2366 ; 0 uses
  br label %ma_data_source_get_loop_point_in_pcm_frames.exit

ma_data_source_get_loop_point_in_pcm_frames.exit: ; preds = %ma_data_source_get_range_in_pcm_frames.exit, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !1504 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !355 ; 4 uses
  %i.bp = icmp ult i64 %i.bo, %i.bm
  br i1 %i.bp, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.k

bb.k:                                             ; preds = %ma_data_source_get_loop_point_in_pcm_frames.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !354 ; 2 uses
  %i.bs = icmp ugt i64 %i.bo, %i.br
  %i.bt = icmp ne i64 %i.bo, -1                   ; 2 uses
  %or.cond.i = and i1 %i.bt, %i.bs
  br i1 %or.cond.i, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bm, ptr %i.bu, align 8, !tbaa !1504
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !1502
  %i.by = sub i64 %i.br, %i.bx
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.by)
  %spec.store.select.i = select i1 %i.bt, i64 %i.bz, i64 -1
  store i64 %spec.store.select.i, ptr %i.bv, align 8
  br label %ma_data_source_set_loop_point_in_pcm_frames.exit

ma_data_source_set_loop_point_in_pcm_frames.exit: ; preds = %ma_data_source_get_loop_point_in_pcm_frames.exit, %bb.k, %bb.l
  %i.ca = call i32 @ma_data_source_read_pcm_frames(ptr noundef nonnull %i.u, ptr noundef %i.s, i64 noundef %i.t, ptr noundef nonnull %i.b)
  %i.cb = icmp eq i32 %i.ca, -17
  %i.cc = load i64, ptr %i.b, align 8             ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.t
  %or.cond = select i1 %i.cb, i1 true, i1 %i.cd
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.cf = atomicrmw xchg ptr %i.ce, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit, %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ch = zext i32 %1 to i64                      ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = trunc i64 %i.cc to i32
  %i.ck = atomicrmw xchg ptr %i.ci, i32 %i.cj seq_cst, align 4 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = atomicrmw xchg ptr %i.cm, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -51, 1) i32 @ma_thread_create__posix(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %union.pthread_attr_t, align 8      ; 10 uses
  %5 = alloca %struct.sched_param, align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.a = call i32 @pthread_attr_init(ptr noundef nonnull %4) #55
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, -5                       ; 2 uses
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @pthread_attr_setschedpolicy(ptr noundef nonnull %4, i32 noundef 1) #55
  %i.f = icmp eq i32 %i.e, 0
  %spec.select = select i1 %i.f, i32 1, i32 -1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = call i32 @sched_getscheduler(i32 noundef 0) #55
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.g, %bb.e ], [ %spec.select, %bb.d ] ; 3 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 @pthread_attr_setstacksize(ptr noundef nonnull %4, i64 noundef %2) #55 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not45 = icmp eq i32 %.0, -1
  br i1 %.not45, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = call i32 @sched_get_priority_min(i32 noundef %.0) #55 ; 4 uses
  %i.j = call i32 @sched_get_priority_max(i32 noundef %.0) #55 ; 4 uses
  %i.k = sub nsw i32 %i.j, %i.i
  %i.l = sdiv i32 %i.k, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.m = icmp ne i32 %i.i, -1
  %i.n = icmp ne i32 %i.j, -1
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.o = call i32 @pthread_attr_getschedparam(ptr noundef nonnull %4, ptr noundef nonnull %5) #55
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %i.c, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = icmp eq i32 %1, 1
  %i.r = add nsw i32 %1, 5
  %i.s = mul nsw i32 %i.l, %i.r
  %i.t = load i32, ptr %5, align 4
  %i.u = add nsw i32 %i.t, %i.s
  %.sink = select i1 %i.q, i32 %i.j, i32 %i.u     ; 2 uses
  %i.v = icmp slt i32 %.sink, %i.i
  br i1 %i.v, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.l, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %storemerge = phi i32 [ %i.i, %.sink.split ], [ %.sink, %bb.l ]
  %spec.select11 = call i32 @llvm.smin.i32(i32 %storemerge, i32 %i.j)
  store i32 %spec.select11, ptr %5, align 4, !tbaa !3000
  %i.w = call i32 @pthread_attr_setschedparam(ptr noundef nonnull %4, ptr noundef nonnull %5) #55
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = call i32 @pthread_attr_setinheritsched(ptr noundef nonnull %4, i32 noundef 1) #55 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.z = call i32 @pthread_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @ma_thread_entry_proxy, ptr noundef nonnull %3) #55
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.h
  %i.aa = call i32 @pthread_create(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull @ma_thread_entry_proxy, ptr noundef nonnull %3) #55
  %i.ab = call i32 @pthread_attr_destroy(ptr noundef nonnull %4) #55 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ac = phi i32 [ %i.aa, %bb.q ], [ %i.z, %bb.p ] ; 3 uses
  %.not47 = icmp eq i32 %i.ac, 0
  br i1 %.not47, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = icmp eq i32 %i.ac, 1
  %i.ae = icmp eq i32 %1, 1
  %or.cond3 = and i1 %i.ae, %i.ad
  br i1 %or.cond3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.af = call fastcc i32 @ma_thread_create__posix(ptr noundef %0, i32 noundef -2, i64 noundef %2, ptr noundef %3)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ag = call fastcc i32 @ma_result_from_errno(i32 noundef %i.ac)
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t
  %.039 = phi i32 [ %i.af, %bb.t ], [ %i.ag, %bb.u ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define internal ptr @ma_thread_entry_proxy(ptr noundef %0) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef %i.g) #55, !inline_history !32
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.a, %bb.b
  %i.h = tail call ptr %i.a(ptr noundef %i.c) #55
  ret ptr %i.h
}

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedpolicy(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sched_getscheduler(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_attr_setstacksize(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sched_get_priority_min(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sched_get_priority_max(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_attr_getschedparam(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedparam(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_attr_setinheritsched(ptr noundef, i32 noundef) local_unnamed_addr #13
end_hunk_3
