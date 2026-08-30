Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_hd?download=true
inline.NumInlined: 158
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nghttp2_hd_deflate_new
define range(i32 -901, 1) i32 @nghttp2_hd_deflate_new(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @nghttp2_mem_default() #11 ; 4 uses
  %i.b = tail call ptr @nghttp2_mem_malloc(ptr noundef %i.a, i64 noundef 1112) #11 ; 15 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %nghttp2_hd_deflate_new2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i8 0, ptr %i.e, align 4, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 4096, ptr %i.f, align 8, !tbaa !33
  %i.g = tail call ptr @nghttp2_mem_malloc(ptr noundef %i.a, i64 noundef 1024) #11 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !34
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %nghttp2_hd_deflate_init2.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 127, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.m, i8 0, i64 1024, i1 false)
  %i.n = icmp ult i64 %1, 4096
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %1, ptr %i.f, align 8, !tbaa !43
  br label %bb.e

nghttp2_hd_deflate_init2.exit.i:                  ; preds = %bb.b
  tail call void @nghttp2_mem_free(ptr noundef %i.a, ptr noundef nonnull %i.b) #11
  br label %nghttp2_hd_deflate_new2.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i.i = phi i8 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  store i8 %.sink.i.i, ptr %i.o, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  store i64 %1, ptr %i.p, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  store i64 4294967295, ptr %i.q, align 8, !tbaa !42
  store ptr %i.b, ptr %0, align 8, !tbaa !102
  br label %nghttp2_hd_deflate_new2.exit

nghttp2_hd_deflate_new2.exit:                     ; preds = %bb.a, %nghttp2_hd_deflate_init2.exit.i, %bb.e
  %.0.i = phi i32 [ 0, %bb.e ], [ -901, %nghttp2_hd_deflate_init2.exit.i ], [ -901, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 -901, 1) i32 @nghttp2_hd_deflate_new2(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @nghttp2_mem_default() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.012.a = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ] ; 4 uses
  %i.c = tail call ptr @nghttp2_mem_malloc(ptr noundef %.012.a, i64 noundef 1112) #11 ; 15 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.012.a, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i8 0, ptr %i.f, align 4, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 4096, ptr %i.g, align 8, !tbaa !33
  %i.h = tail call ptr @nghttp2_mem_malloc(ptr noundef %.012.a, i64 noundef 1024) #11 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !34
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %nghttp2_hd_deflate_init2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 127, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 0, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.n, i8 0, i64 1024, i1 false)
  %i.o = icmp ult i64 %1, 4096
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %1, ptr %i.g, align 8, !tbaa !43
  br label %bb.g

nghttp2_hd_deflate_init2.exit:                    ; preds = %bb.d
  tail call void @nghttp2_mem_free(ptr noundef %.012.a, ptr noundef nonnull %i.c) #11
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1104
  store i8 %.sink.i, ptr %i.p, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1088
  store i64 %1, ptr %i.q, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1096
  store i64 4294967295, ptr %i.r, align 8, !tbaa !42
  store ptr %i.c, ptr %0, align 8, !tbaa !102
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %nghttp2_hd_deflate_init2.exit
  %.0 = phi i32 [ 0, %bb.g ], [ -901, %nghttp2_hd_deflate_init2.exit ], [ -901, %bb.c ]
  ret i32 %.0
}

declare ptr @nghttp2_mem_default() local_unnamed_addr #3

declare ptr @nghttp2_mem_malloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @nghttp2_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @nghttp2_hd_deflate_del(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %nghttp2_hd_deflate_free.exit, label %hd_ringbuf_get.exit.lr.ph.i.i.i

hd_ringbuf_get.exit.lr.ph.i.i.i:                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %hd_ringbuf_get.exit.i.i.i

hd_ringbuf_get.exit.i.i.i:                        ; preds = %hd_ringbuf_get.exit.i.i.i, %hd_ringbuf_get.exit.lr.ph.i.i.i
  %.011.i.i.i = phi i64 [ 0, %hd_ringbuf_get.exit.lr.ph.i.i.i ], [ %i.q, %hd_ringbuf_get.exit.i.i.i ] ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !34
  %i.h = load i64, ptr %i.e, align 8, !tbaa !57
  %i.i = add i64 %i.h, %.011.i.i.i
  %i.j = load i64, ptr %i.f, align 8, !tbaa !35
  %i.k = and i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  tail call void @nghttp2_rcbuf_decref(ptr noundef %i.o) #11
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !22
  tail call void @nghttp2_rcbuf_decref(ptr noundef %i.p) #11
  tail call void @nghttp2_mem_free(ptr noundef %i.b, ptr noundef nonnull %i.m) #11
  %i.q = add nuw i64 %.011.i.i.i, 1               ; 2 uses
  %i.r = load i64, ptr %i.c, align 8, !tbaa !56
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %hd_ringbuf_get.exit.i.i.i, label %nghttp2_hd_deflate_free.exit, !llvm.loop !59

nghttp2_hd_deflate_free.exit:                     ; preds = %hd_ringbuf_get.exit.i.i.i, %bb.a
  %i.t = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @nghttp2_mem_free(ptr noundef %i.b, ptr noundef %i.t) #11
  tail call void @nghttp2_mem_free(ptr noundef %i.b, ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_inflate_hd(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.nghttp2_hd_nv, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = call i64 @nghttp2_hd_inflate_hd_nv(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %nghttp2_hd_inflate_hd2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4, !tbaa !73
  %i.d = and i32 %i.c, 2
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %nghttp2_hd_inflate_hd2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %6, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.q = load i8, ptr %i.p, align 4, !tbaa !18
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 7, i1 false)
  store ptr %i.g, ptr %1, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.k, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.m, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !20
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !20
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !21
  br label %nghttp2_hd_inflate_hd2.exit

nghttp2_hd_inflate_hd2.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_inflate_hd2(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.nghttp2_hd_nv, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = call i64 @nghttp2_hd_inflate_hd_nv(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %nghttp2_hd_inflate_hd3.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4, !tbaa !73
  %i.d = and i32 %i.c, 2
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %nghttp2_hd_inflate_hd3.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %6, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.q = load i8, ptr %i.p, align 4, !tbaa !18
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i, i8 0, i64 7, i1 false)
  store ptr %i.g, ptr %1, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.k, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.m, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !20
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !20
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !21
  br label %nghttp2_hd_inflate_hd3.exit

nghttp2_hd_inflate_hd3.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_inflate_hd3(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.nghttp2_hd_nv, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = call i64 @nghttp2_hd_inflate_hd_nv(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4, !tbaa !73
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %6, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.q = load i8, ptr %i.p, align 4, !tbaa !18
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, i8 0, i64 7, i1 false)
  store ptr %i.g, ptr %1, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.k, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.m, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i64 @nghttp2_hd_inflate_hd_nv(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 38 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !105
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.fh

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  tail call void @nghttp2_rcbuf_decref(ptr noundef %i.g) #11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  tail call void @nghttp2_rcbuf_decref(ptr noundef %i.i) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i32 0, ptr %2, align 4, !tbaa !73
  %.not462 = icmp samesign eq i64 %4, 0
  br i1 %.not462, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 25 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 19 uses
  %i.n = ptrtoaddr ptr %i.a to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.r = ptrtoint ptr %i.a to i64                 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 234
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.fc
  %.0210461 = phi ptr [ %3, %.lr.ph ], [ %.3213.a, %bb.fc ] ; 42 uses
  %i.ah = load i32, ptr %i.j, align 4, !tbaa !51  ; 2 uses
  switch i32 %i.ah, label %bb.fc [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.m
    i32 4, label %bb.an
    i32 5, label %.thread561
    i32 6, label %bb.bx
    i32 7, label %bb.dc
    i32 8, label %bb.dg
    i32 9, label %.thread573
    i32 10, label %bb.dj
    i32 11, label %bb.eo
    i32 12, label %bb.ev
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = load i8, ptr %.0210461, align 1, !tbaa !21
  %i.aj = and i8 %i.ai, -32
  %.not257 = icmp eq i8 %i.aj, 32
  br i1 %.not257, label %.thread342, label %hd_inflate_read_len.exit.thread

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.ak = load i8, ptr %.0210461, align 1, !tbaa !21 ; 3 uses
  %i.al = and i8 %i.ak, -32
  %i.am = icmp eq i8 %i.al, 32
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq i32 %i.ah, 2
  br i1 %i.an, label %hd_inflate_read_len.exit.thread, label %.thread342

.thread342:                                       ; preds = %bb.d, %bb.f
  store i32 1, ptr %i.w, align 8, !tbaa !50
  store i32 3, ptr %i.j, align 4, !tbaa !51
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %.not258 = icmp sgt i8 %i.ak, -1
  br i1 %.not258, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.w, align 8, !tbaa !50
  store i32 4, ptr %i.j, align 4, !tbaa !51
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  switch i8 %i.ak, label %bb.j [
    i8 64, label %bb.k
    i8 0, label %bb.k
    i8 16, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.j
  %spec.select.idx = phi i64 [ 0, %bb.j ], [ 1, %bb.i ], [ 1, %bb.i ], [ 1, %bb.i ]
  %i.ao = phi <2 x i32> [ <i32 3, i32 4>, %bb.j ], [ <i32 2, i32 5>, %bb.i ], [ <i32 2, i32 5>, %bb.i ], [ <i32 2, i32 5>, %bb.i ]
  store <2 x i32> %i.ao, ptr %i.w, align 8, !tbaa !73
  %i.ap = load i8, ptr %.0210461, align 1, !tbaa !21
  %i.aq = lshr i8 %i.ap, 6
  %.lobit = and i8 %i.aq, 1
  store i8 %.lobit, ptr %i.x, align 1, !tbaa !54
  %i.ar = load i8, ptr %.0210461, align 1, !tbaa !21
  %i.as = and i8 %i.ar, -16
  %i.at = icmp eq i8 %i.as, 16
  %i.au = zext i1 %i.at to i8
  store i8 %i.au, ptr %i.ag, align 2, !tbaa !55
  %spec.select = getelementptr inbounds nuw i8, ptr %.0210461, i64 %spec.select.idx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %.thread342
  %.1211 = phi ptr [ %.0210461, %.thread342 ], [ %.0210461, %bb.h ], [ %spec.select, %bb.k ]
  store i64 0, ptr %i.l, align 8, !tbaa !106
  store i64 0, ptr %i.m, align 8, !tbaa !53
  br label %bb.fc

bb.m:                                             ; preds = %bb.c
  %i.av = load i64, ptr %i.aa, align 8, !tbaa !49
  %i.aw = load i64, ptr %i.ab, align 8, !tbaa !44
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.aw)
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !106
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !53  ; 13 uses
  store i64 0, ptr %i.m, align 8, !tbaa !20
  %i.bb = icmp eq i32 %i.az, 0
  br i1 %i.bb, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bc = load i8, ptr %.0210461, align 1, !tbaa !21
  %i.bd = and i8 %i.bc, 31                        ; 2 uses
  %i.be = zext nneg i8 %i.bd to i32
  %.not.i.i = icmp eq i8 %i.bd, 31
  br i1 %.not.i.i, label %bb.o, label %decode_length.exit.thread18.i

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.0210461, i64 1 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.a
  br i1 %i.bg, label %decode_length.exit.thread18.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.054.i.i = phi ptr [ %i.bf, %bb.o ], [ %.0210461, %bb.m ] ; 10 uses
  %.050.i.i = phi i32 [ 31, %bb.o ], [ %i.az, %bb.m ] ; 3 uses
  %.not6278.i.i = icmp eq ptr %.054.i.i, %i.a
  br i1 %.not6278.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %.05491.i.i = ptrtoaddr ptr %.054.i.i to i64
  %i.bh = sub i64 %i.r, %.05491.i.i
  %scevgep.i.i = getelementptr i8, ptr %.054.i.i, i64 %i.bh ; 5 uses
  %i.bi = load i8, ptr %.054.i.i, align 1, !tbaa !21 ; 2 uses
  %i.bj = and i8 %i.bi, 127
  %i.bk = zext nneg i8 %i.bj to i32               ; 2 uses
  %i.bl = icmp ugt i64 %i.ba, 31
  br i1 %i.bl, label %hd_inflate_read_len.exit.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph.preheader.i.i
  %i.bm = trunc nuw nsw i64 %i.ba to i32          ; 2 uses
  %i.bn = lshr i32 -1, %i.bm
  %i.bo = icmp ult i32 %i.bn, %i.bk
  br i1 %i.bo, label %hd_inflate_read_len.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = shl i32 %i.bk, %i.bm                    ; 2 uses
  %i.bq = xor i32 %i.bp, -1
  %i.br = icmp ugt i32 %.050.i.i, %i.bq
  br i1 %i.br, label %hd_inflate_read_len.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = add i32 %i.bp, %.050.i.i                ; 4 uses
  %i.bt = icmp sgt i8 %i.bi, -1
  br i1 %i.bt, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %.054.i.i, i64 1 ; 3 uses
  %i.bv = add nuw nsw i64 %i.ba, 7                ; 3 uses
  %.not62.i.i = icmp eq ptr %i.bu, %i.a
  br i1 %.not62.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.1

end_hunk_0
