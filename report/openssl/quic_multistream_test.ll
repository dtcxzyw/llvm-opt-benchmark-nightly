Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_multistream_test?download=true
inline.NumInlined: 103
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@check_avail_streams:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17
  switch i64 %i.e, label %bb.g [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.h = call i32 @SSL_get_value_uint(ptr noundef %i.g, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a) #14
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5463, ptr noundef nonnull @.str.373, i32 noundef %i.j) #14
  %.not8 = icmp eq i32 %i.k, 0
  br i1 %.not8, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = call i32 @SSL_get_value_uint(ptr noundef %i.m, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %i.a) #14
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5467, ptr noundef nonnull @.str.374, i32 noundef %i.p) #14
  %.not7 = icmp eq i32 %i.q, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69
  %i.t = call i32 @SSL_get_value_uint(ptr noundef %i.s, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %i.a) #14
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5471, ptr noundef nonnull @.str.375, i32 noundef %i.v) #14
  %.not6 = icmp eq i32 %i.w, 0
  br i1 %.not6, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.z = call i32 @SSL_get_value_uint(ptr noundef %i.y, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %i.a) #14
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5475, ptr noundef nonnull @.str.376, i32 noundef %i.ab) #14
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !18
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ah = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5482, ptr noundef nonnull @.str.356, ptr noundef nonnull @.str.221, i64 noundef %i.ad, i64 noundef %i.ag) #14
  %.not9 = icmp ne i32 %i.ah, 0
  %. = zext i1 %.not9 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ %., %bb.f ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @check_write_buf_stat(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = tail call fastcc ptr @helper_local_get_c_stream(ptr noundef %1, ptr noundef nonnull @.str.169) ; 4 uses
  %i.e = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 5496, ptr noundef nonnull @.str.377, ptr noundef %i.d) #14
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @SSL_get_value_uint(ptr noundef %i.d, i32 noundef 0, i32 noundef 7, ptr noundef nonnull %i.a) #14
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5499, ptr noundef nonnull @.str.378, i32 noundef %i.h) #14
  %.not5 = icmp eq i32 %i.i, 0
  br i1 %.not5, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 @SSL_get_value_uint(ptr noundef %i.d, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %i.b) #14
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5500, ptr noundef nonnull @.str.379, i32 noundef %i.l) #14
  %.not6 = icmp eq i32 %i.m, 0
  br i1 %.not6, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @SSL_get_value_uint(ptr noundef %i.d, i32 noundef 0, i32 noundef 9, ptr noundef nonnull %i.c) #14
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 5501, ptr noundef nonnull @.str.380, i32 noundef %i.p) #14
  %.not7 = icmp eq i32 %i.q, 0
  br i1 %.not7, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.a, align 8, !tbaa !18
  %i.s = load i64, ptr %i.c, align 8, !tbaa !18
  %i.t = call i32 @test_uint64_t_ge(ptr noundef nonnull @.str.14, i32 noundef 5502, ptr noundef nonnull @.str.381, ptr noundef nonnull @.str.382, i64 noundef %i.r, i64 noundef %i.s) #14
  %.not8 = icmp eq i32 %i.t, 0
  br i1 %.not8, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.a, align 8, !tbaa !18
  %i.v = load i64, ptr %i.b, align 8, !tbaa !18
  %i.w = call i32 @test_uint64_t_ge(ptr noundef nonnull @.str.14, i32 noundef 5503, ptr noundef nonnull @.str.381, ptr noundef nonnull @.str.383, i64 noundef %i.u, i64 noundef %i.v) #14
  %.not9 = icmp eq i32 %i.w, 0
  br i1 %.not9, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.c, align 8, !tbaa !18
  %i.y = load i64, ptr %i.b, align 8, !tbaa !18
  %i.z = add i64 %i.y, %i.x
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !18
  %i.ab = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5504, ptr noundef nonnull @.str.384, ptr noundef nonnull @.str.381, i64 noundef %i.z, i64 noundef %i.aa) #14
  %.not10 = icmp eq i32 %i.ab, 0
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ah = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5507, ptr noundef nonnull @.str.383, ptr noundef nonnull @.str.385, i64 noundef %i.ac, i64 noundef %i.ag) #14
  %.not11 = icmp ne i32 %i.ah, 0
  %. = zext i1 %.not11 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ %., %bb.h ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @set_event_handling_mode_conn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((32, 36)) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %i.h = tail call i32 @SSL_set_value_uint(ptr noundef %i.c, i32 noundef 0, i32 noundef 6, i64 noundef %i.g) #14
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @reenable_test_event_handling(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((32, 36)) %1) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.a, align 8, !tbaa !90
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @script_85_poll(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca [5 x %struct.ssl_poll_item_st], align 16 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %2, i8 0, i64 144, i1 false)
  %i.b = tail call fastcc ptr @helper_local_get_c_stream(ptr noundef %1, ptr noundef nonnull @.str.169) ; 2 uses
  %i.c = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 5586, ptr noundef nonnull @.str.377, ptr noundef %i.b) #14
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @helper_local_get_c_stream(ptr noundef %1, ptr noundef nonnull @.str.172) ; 2 uses
  %i.e = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 5587, ptr noundef nonnull @.str.390, ptr noundef %i.d) #14
  %.not57 = icmp eq i32 %i.e, 0
  br i1 %.not57, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc ptr @helper_local_get_c_stream(ptr noundef %1, ptr noundef nonnull @.str.175) ; 2 uses
  %i.g = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 5588, ptr noundef nonnull @.str.391, ptr noundef %i.f) #14
  %.not58 = icmp eq i32 %i.g, 0
  br i1 %.not58, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc ptr @helper_local_get_c_stream(ptr noundef %1, ptr noundef nonnull @.str.177) ; 2 uses
  %i.i = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 5589, ptr noundef nonnull @.str.392, ptr noundef %i.h) #14
  %.not59 = icmp eq i32 %i.i, 0
  br i1 %.not59, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %3 = ptrtoint ptr %i.b to i64
  store i32 2, ptr %2, align 16, !tbaa !91
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %3, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = ptrtoint ptr %i.d to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, i8 -1, i64 16, i1 false)
  store i32 2, ptr %i.l, align 16, !tbaa !91
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %4, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %5 = ptrtoint ptr %i.f to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 -1, i64 16, i1 false)
  store i32 2, ptr %i.n, align 16, !tbaa !91
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %5, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %6 = ptrtoint ptr %i.h to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, i8 -1, i64 16, i1 false)
  store i32 2, ptr %i.p, align 16, !tbaa !91
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %6, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, i8 -1, i64 16, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69
  %7 = ptrtoint ptr %i.t to i64
  store i32 2, ptr %i.r, align 16, !tbaa !91
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 %7, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, i8 -1, i64 16, i1 false)
  store i64 -1, ptr %i.a, align 8, !tbaa !18
  %i.v = call i32 @SSL_poll(ptr noundef nonnull %2, i64 noundef 5, i64 noundef 32, ptr noundef nonnull @script_85_poll.timeout, i64 noundef 0, ptr noundef nonnull %i.a) #14
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  switch i64 %i.z, label %.loopexit [
    i64 0, label %bb.g
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 192, %bb.f ], [ 128, %bb.e ]
  %.sroa.6.0 = phi i64 [ 144, %bb.f ], [ 128, %bb.e ]
  %.sroa.9.0 = phi i64 [ 32, %bb.f ], [ 128, %bb.e ]
  %.sroa.15.0 = phi i64 [ 6656, %bb.f ], [ 6144, %bb.e ]
  %i.aa = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 5646, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.393, i32 noundef %i.v, i32 noundef 1) #14
  %.not60 = icmp eq i32 %i.aa, 0
  br i1 %.not60, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !18
  %i.ac = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5647, ptr noundef nonnull @.str.394, ptr noundef nonnull @.str.395, i64 noundef %i.ab, i64 noundef 5) #14
  %.not61 = icmp eq i32 %i.ac, 0
  br i1 %.not61, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.054 = phi i32 [ 1, %bb.h ], [ 0, %bb.i ]
  %i.ad = trunc nuw nsw i64 %i.z to i32           ; 5 uses
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !171
  %i.af = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5651, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i64 noundef %i.ae, i64 noundef %.sroa.0.0) #14
  %.not62 = icmp eq i32 %i.af, 0
  br i1 %.not62, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 5653, ptr noundef nonnull @.str.398, i64 noundef 0, i32 noundef %i.ad) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.2 = phi i32 [ %.054, %bb.j ], [ 0, %bb.k ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !171
  %i.ai = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5651, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i64 noundef %i.ah, i64 noundef %.sroa.6.0) #14
  %.not62.1 = icmp eq i32 %i.ai, 0
  br i1 %.not62.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 5653, ptr noundef nonnull @.str.398, i64 noundef 1, i32 noundef %i.ad) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2.1 = phi i32 [ %.2, %bb.l ], [ 0, %bb.m ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !171
  %i.al = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5651, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i64 noundef %i.ak, i64 noundef %.sroa.9.0) #14
  %.not62.2 = icmp eq i32 %i.al, 0
  br i1 %.not62.2, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 5653, ptr noundef nonnull @.str.398, i64 noundef 2, i32 noundef %i.ad) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.2.2 = phi i32 [ %.2.1, %bb.n ], [ 0, %bb.o ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.an = load i64, ptr %i.am, align 8, !tbaa !171
  %i.ao = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5651, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i64 noundef %i.an, i64 noundef 128) #14
  %.not62.3 = icmp eq i32 %i.ao, 0
  br i1 %.not62.3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 5653, ptr noundef nonnull @.str.398, i64 noundef 3, i32 noundef %i.ad) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.2.3 = phi i32 [ %.2.2, %bb.p ], [ 0, %bb.q ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !171
  %i.ar = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5651, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i64 noundef %i.aq, i64 noundef %.sroa.15.0) #14
  %.not62.4 = icmp eq i32 %i.ar, 0
  br i1 %.not62.4, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 5653, ptr noundef nonnull @.str.398, i64 noundef 4, i32 noundef %i.ad) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.s, %bb.e, %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.2.3, %bb.r ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare i32 @SSL_poll(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @set_event_handling_mode_stream(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = tail call fastcc ptr @helper_local_get_c_stream(ptr noundef %1, ptr noundef nonnull @.str.169) ; 2 uses
  %i.b = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 5915, ptr noundef nonnull @.str.401, ptr noundef %i.a) #14
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = tail call i32 @SSL_set_value_uint(ptr noundef %i.a, i32 noundef 0, i32 noundef 6, i64 noundef %i.f) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @script_88_poll(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca [2 x %struct.ssl_poll_item_st], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %2, i8 0, i64 48, i1 false)
  %i.b = tail call fastcc ptr @helper_local_get_c_stream(ptr noundef %1, ptr noundef nonnull @.str.169) ; 2 uses
  %i.c = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 5743, ptr noundef nonnull @.str.377, ptr noundef %i.b) #14
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = ptrtoint ptr %i.b to i64
  store i32 2, ptr %2, align 16, !tbaa !91
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %3, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 -1, i64 16, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69
  %4 = ptrtoint ptr %i.h to i64
  store i32 2, ptr %i.f, align 16, !tbaa !91
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %4, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, i8 -1, i64 16, i1 false)
  store i64 -1, ptr %i.a, align 8, !tbaa !18
  %i.j = call i32 @SSL_poll(ptr noundef nonnull %2, i64 noundef 2, i64 noundef 32, ptr noundef nonnull @script_88_poll.timeout, i64 noundef 0, ptr noundef nonnull %i.a) #14
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  switch i64 %i.n, label %bb.k [
    i64 0, label %bb.d
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not70 = phi ptr [ @.str.406, %bb.c ], [ @.str.413, %bb.b ]
  %.sroa.0.0 = phi i64 [ 64, %bb.c ], [ 128, %bb.b ] ; 2 uses
  %i.o = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 5777, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.393, i32 noundef %i.j, i32 noundef 1) #14
  %.not60 = icmp ne i32 %i.o, 0                   ; 2 uses
  %i.p = trunc nuw nsw i64 %i.n to i32            ; 2 uses
  %i.q = load i64, ptr %i.e, align 8, !tbaa !171  ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5791, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i64 noundef %i.q, i64 noundef %.sroa.0.0) #14
  %.not62 = icmp eq i32 %i.s, 0
  br i1 %.not62, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = and i64 %.sroa.0.0, 64
  %.not69 = icmp eq i64 %i.t, 0
  %i.u = select i1 %.not69, ptr @.str.406, ptr @.str.412
  %i.v = load i64, ptr %i.e, align 8, !tbaa !171  ; 13 uses
  %i.w = and i64 %i.v, 1
  %.not76 = icmp eq i64 %i.w, 0
  %i.x = select i1 %.not76, ptr @.str.406, ptr @.str.405
  %i.y = and i64 %i.v, 2
  %.not77 = icmp eq i64 %i.y, 0
  %i.z = select i1 %.not77, ptr @.str.406, ptr @.str.407
  %i.aa = and i64 %i.v, 4
  %.not78 = icmp eq i64 %i.aa, 0
  %i.ab = select i1 %.not78, ptr @.str.406, ptr @.str.408
  %i.ac = and i64 %i.v, 8
  %.not79 = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not79, ptr @.str.406, ptr @.str.409
  %i.ae = and i64 %i.v, 16
  %.not80 = icmp eq i64 %i.ae, 0
  %i.af = select i1 %.not80, ptr @.str.406, ptr @.str.410
  %i.ag = and i64 %i.v, 32
  %.not81 = icmp eq i64 %i.ag, 0
  %i.ah = select i1 %.not81, ptr @.str.406, ptr @.str.411
  %i.ai = and i64 %i.v, 64
  %.not82 = icmp eq i64 %i.ai, 0
  %i.aj = select i1 %.not82, ptr @.str.406, ptr @.str.412
  %i.ak = and i64 %i.v, 128
  %.not83 = icmp eq i64 %i.ak, 0
  %i.al = select i1 %.not83, ptr @.str.406, ptr @.str.413
  %i.am = and i64 %i.v, 256
  %.not84 = icmp eq i64 %i.am, 0
  %i.an = select i1 %.not84, ptr @.str.406, ptr @.str.414
  %i.ao = and i64 %i.v, 512
  %.not85 = icmp eq i64 %i.ao, 0
  %i.ap = select i1 %.not85, ptr @.str.406, ptr @.str.415
  %i.aq = and i64 %i.v, 1024
  %.not86 = icmp eq i64 %i.aq, 0
  %i.ar = select i1 %.not86, ptr @.str.406, ptr @.str.416
  %i.as = and i64 %i.v, 2048
  %.not87 = icmp eq i64 %i.as, 0
  %i.at = select i1 %.not87, ptr @.str.406, ptr @.str.417
  %i.au = and i64 %i.v, 4096
  %.not88 = icmp eq i64 %i.au, 0
  %i.av = select i1 %.not88, ptr @.str.406, ptr @.str.418
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 5794, ptr noundef nonnull @.str.404, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull %i.u, ptr noundef nonnull %.not70, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull %i.x, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.al, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.at, ptr noundef nonnull %i.av) #14
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 5796, ptr noundef nonnull @.str.398, i64 noundef 0, i32 noundef %i.p) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.157 = phi i64 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ] ; 2 uses
  %.2.shrunk = phi i1 [ %.not60, %bb.d ], [ %.not60, %bb.e ], [ false, %bb.f ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !171 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = add nuw nsw i64 %.157, 1                ; 2 uses
  %i.ba = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5791, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i64 noundef %i.ax, i64 noundef 6144) #14
  %.not62.1 = icmp eq i32 %i.ba, 0
  br i1 %.not62.1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !171 ; 13 uses
  %i.bc = and i64 %i.bb, 1
  %.not76.1 = icmp eq i64 %i.bc, 0
  %i.bd = select i1 %.not76.1, ptr @.str.406, ptr @.str.405
  %i.be = and i64 %i.bb, 2
  %.not77.1 = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not77.1, ptr @.str.406, ptr @.str.407
  %i.bg = and i64 %i.bb, 4
  %.not78.1 = icmp eq i64 %i.bg, 0
  %i.bh = select i1 %.not78.1, ptr @.str.406, ptr @.str.408
  %i.bi = and i64 %i.bb, 8
  %.not79.1 = icmp eq i64 %i.bi, 0
  %i.bj = select i1 %.not79.1, ptr @.str.406, ptr @.str.409
  %i.bk = and i64 %i.bb, 16
  %.not80.1 = icmp eq i64 %i.bk, 0
  %i.bl = select i1 %.not80.1, ptr @.str.406, ptr @.str.410
  %i.bm = and i64 %i.bb, 32
  %.not81.1 = icmp eq i64 %i.bm, 0
  %i.bn = select i1 %.not81.1, ptr @.str.406, ptr @.str.411
  %i.bo = and i64 %i.bb, 64
  %.not82.1 = icmp eq i64 %i.bo, 0
  %i.bp = select i1 %.not82.1, ptr @.str.406, ptr @.str.412
  %i.bq = and i64 %i.bb, 128
  %.not83.1 = icmp eq i64 %i.bq, 0
  %i.br = select i1 %.not83.1, ptr @.str.406, ptr @.str.413
  %i.bs = and i64 %i.bb, 256
  %.not84.1 = icmp eq i64 %i.bs, 0
  %i.bt = select i1 %.not84.1, ptr @.str.406, ptr @.str.414
  %i.bu = and i64 %i.bb, 512
  %.not85.1 = icmp eq i64 %i.bu, 0
  %i.bv = select i1 %.not85.1, ptr @.str.406, ptr @.str.415
  %i.bw = and i64 %i.bb, 1024
  %.not86.1 = icmp eq i64 %i.bw, 0
  %i.bx = select i1 %.not86.1, ptr @.str.406, ptr @.str.416
  %i.by = and i64 %i.bb, 2048
  %.not87.1 = icmp eq i64 %i.by, 0
  %i.bz = select i1 %.not87.1, ptr @.str.406, ptr @.str.417
  %i.ca = and i64 %i.bb, 4096
  %.not88.1 = icmp eq i64 %i.ca, 0
  %i.cb = select i1 %.not88.1, ptr @.str.406, ptr @.str.418
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 5794, ptr noundef nonnull @.str.404, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.417, ptr noundef nonnull @.str.418, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.cb) #14
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 5796, ptr noundef nonnull @.str.398, i64 noundef 1, i32 noundef %i.p) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.157.1 = phi i64 [ %.157, %bb.g ], [ %i.az, %bb.h ], [ %i.az, %bb.i ]
  %.2.1.shrunk = phi i1 [ %.2.shrunk, %bb.g ], [ %.2.shrunk, %bb.h ], [ false, %bb.i ]
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !18
  %i.cd = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 5801, ptr noundef nonnull @.str.419, ptr noundef nonnull @.str.394, i64 noundef %.157.1, i64 noundef %i.cc) #14
  %.not61 = icmp ne i32 %i.cd, 0
  %narrow = select i1 %.not61, i1 %.2.1.shrunk, i1 false
  %spec.select89 = zext i1 %narrow to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.j
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select89, %bb.j ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @script_88_poll_conly(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca [1 x %struct.ssl_poll_item_st], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %3 = ptrtoint ptr %i.c to i64
  store i32 2, ptr %2, align 16, !tbaa !91
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %3, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 -1, i64 16, i1 false)
  %i.f = tail call i64 @ossl_time_now() #14
  %.sroa.03.0.i = tail call i64 @llvm.uadd.sat.i64(i64 %i.f, i64 5000000000)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.backedge
  %i.g = call i32 @SSL_poll(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 32, ptr noundef nonnull @script_88_poll_conly.timeout, i64 noundef 0, ptr noundef nonnull %i.a) #14 ; 3 uses
  %i.h = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 5829, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.85, i32 noundef %i.g, i32 noundef 1) #14
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.backedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.a, align 8, !tbaa !18
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @OSSL_sleep(i64 noundef 10) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load i64, ptr %i.e, align 8, !tbaa !171  ; 13 uses
  %i.l = and i64 %i.k, 1
  %.not12 = icmp eq i64 %i.l, 0
  %i.m = select i1 %.not12, ptr @.str.406, ptr @.str.405
  %i.n = and i64 %i.k, 2
  %.not13 = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not13, ptr @.str.406, ptr @.str.407
  %i.p = and i64 %i.k, 4
  %.not14 = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not14, ptr @.str.406, ptr @.str.408
  %i.r = and i64 %i.k, 8
  %.not15 = icmp eq i64 %i.r, 0
  %i.s = select i1 %.not15, ptr @.str.406, ptr @.str.409
  %i.t = and i64 %i.k, 16
  %.not16 = icmp eq i64 %i.t, 0
  %i.u = select i1 %.not16, ptr @.str.406, ptr @.str.410
  %i.v = and i64 %i.k, 32
  %.not17 = icmp eq i64 %i.v, 0
  %i.w = select i1 %.not17, ptr @.str.406, ptr @.str.411
  %i.x = and i64 %i.k, 64
  %.not18 = icmp eq i64 %i.x, 0
  %i.y = select i1 %.not18, ptr @.str.406, ptr @.str.412
  %i.z = and i64 %i.k, 128
  %.not19 = icmp eq i64 %i.z, 0
  %i.aa = select i1 %.not19, ptr @.str.406, ptr @.str.413
  %i.ab = and i64 %i.k, 256
  %.not20 = icmp eq i64 %i.ab, 0
  %i.ac = select i1 %.not20, ptr @.str.406, ptr @.str.414
  %i.ad = and i64 %i.k, 512
  %.not21 = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not21, ptr @.str.406, ptr @.str.415
  %i.af = and i64 %i.k, 1024
  %.not22 = icmp eq i64 %i.af, 0
  %i.ag = select i1 %.not22, ptr @.str.406, ptr @.str.416
  %i.ah = and i64 %i.k, 2048
  %.not23 = icmp eq i64 %i.ah, 0
  %i.ai = select i1 %.not23, ptr @.str.406, ptr @.str.417
  %i.aj = and i64 %i.k, 4096
  %.not24 = icmp eq i64 %i.aj, 0
  %i.ak = select i1 %.not24, ptr @.str.406, ptr @.str.418
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 5835, ptr noundef nonnull @.str.420, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o, ptr noundef nonnull %i.q, ptr noundef nonnull %i.s, ptr noundef nonnull %i.u, ptr noundef nonnull %i.w, ptr noundef nonnull %i.y, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ak) #14
  %i.al = load i64, ptr %i.e, align 8, !tbaa !171 ; 2 uses
  %i.am = and i64 %i.al, 4
  %.not25 = icmp eq i64 %i.am, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.ao = call i32 @SSL_shutdown(ptr noundef %i.an) #14 ; 0 uses
  %.pre = load i64, ptr %i.e, align 8, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi i64 [ %.pre, %bb.f ], [ %i.al, %bb.e ]
  %i.aq = and i64 %i.ap, 8
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = call i64 @ossl_time_now() #14
  %i.at = icmp ugt i64 %i.as, %.sroa.03.0.i
  br i1 %i.at, label %.backedge.thread, label %.backedge

.backedge.thread:                                 ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 5842, ptr noundef nonnull @.str.421) #14
  br label %.loopexit

.backedge:                                        ; preds = %bb.g, %bb.b
  %.011.be = phi i1 [ true, %bb.b ], [ %i.ar, %bb.g ]
  %i.au = icmp eq i32 %i.g, 1
  %i.av = and i1 %.011.be, %i.au
  br i1 %i.av, label %bb.b, label %.loopexit, !llvm.loop !174

.loopexit:                                        ; preds = %.backedge, %.backedge.thread
  %.0.be28 = phi i32 [ 0, %.backedge.thread ], [ %i.g, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0.be28
}

declare i32 @SSL_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !6, i64 0}
!13 = !{!"script_op", !6, i64 0, !11, i64 8, !14, i64 16, !11, i64 24, !10, i64 32, !14, i64 40, !11, i64 48, !11, i64 56, !11, i64 64}
!14 = !{!"long", !7, i64 0}
!15 = !{!16, !14, i64 0}
!16 = !{!"forbidden_frame_type", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{!13, !14, i64 16}
!18 = !{!14, !14, i64 0}
!19 = !{!13, !14, i64 40}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS9script_op", !11, i64 0}
!22 = !{!23, !6, i64 80}
!23 = !{!"helper", !6, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !25, i64 40, !25, i64 48, !26, i64 56, !26, i64 64, !27, i64 72, !6, i64 80, !24, i64 88, !24, i64 96, !28, i64 104, !29, i64 112, !27, i64 120, !30, i64 128, !14, i64 136, !31, i64 144, !32, i64 152, !33, i64 160, !11, i64 168, !33, i64 176, !34, i64 184, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !35, i64 280, !6, i64 312}
!24 = !{!"p1 _ZTS6bio_st", !11, i64 0}
!25 = !{!"p1 _ZTS11bio_addr_st", !11, i64 0}
!26 = !{!"p1 _ZTS15quic_tserver_st", !11, i64 0}
!27 = !{!"p1 _ZTS20lhash_st_STREAM_INFO", !11, i64 0}
!28 = !{!"p1 _ZTS10ssl_ctx_st", !11, i64 0}
!29 = !{!"p1 _ZTS6ssl_st", !11, i64 0}
!30 = !{!"p1 _ZTS17child_thread_args", !11, i64 0}
!31 = !{!"p1 _ZTS15crypto_mutex_st", !11, i64 0}
!32 = !{!"p1 _ZTS17crypto_condvar_st", !11, i64 0}
!33 = !{!"", !14, i64 0}
!34 = !{!"p1 _ZTS11qtest_fault", !11, i64 0}
!35 = !{!"", !36, i64 0, !31, i64 8, !32, i64 16, !6, i64 24, !6, i64 28}
!36 = !{!"p1 _ZTS16crypto_thread_st", !11, i64 0}
!37 = !{!23, !6, i64 0}
!38 = !{!23, !6, i64 204}
!39 = !{!23, !6, i64 196}
!40 = !{!23, !6, i64 208}
!41 = !{!23, !11, i64 168}
!42 = !{!23, !27, i64 72}
!43 = !{!23, !27, i64 120}
!44 = !{!45, !6, i64 0}
!45 = !{!"in_addr", !6, i64 0}
!46 = !{!23, !25, i64 40}
!47 = !{!23, !25, i64 48}
!48 = !{!7, !7, i64 0}
!49 = !{!23, !24, i64 16}
!50 = !{!23, !24, i64 8}
!51 = !{!23, !24, i64 32}
!52 = !{!23, !24, i64 24}
!53 = !{!54, !24, i64 32}
!54 = !{!"quic_tserver_args_st", !55, i64 0, !10, i64 8, !28, i64 16, !24, i64 24, !24, i64 32, !11, i64 40, !11, i64 48, !10, i64 56, !14, i64 64}
!55 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!56 = !{!54, !24, i64 24}
!57 = !{!54, !10, i64 56}
!58 = !{!54, !11, i64 40}
!59 = !{!54, !11, i64 48}
!60 = !{!54, !28, i64 16}
!61 = !{!23, !26, i64 64}
!62 = !{!23, !26, i64 56}
!63 = !{!23, !34, i64 184}
end_hunk_0
