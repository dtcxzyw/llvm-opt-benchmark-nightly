Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/params_api_test?download=true
inline.NumInlined: 35
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@test_param_clear_free:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  call void @OSSL_PARAM_clear_free(ptr noundef nonnull %i.g) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @test_int_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_param_type_null(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca double, align 8                   ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  switch i32 %i.e, label %bb.j [
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.i
    i32 4, label %bb.k
    i32 5, label %bb.k
    i32 6, label %bb.k
    i32 7, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  switch i64 %i.g, label %bb.k [
    i64 4, label %bb.c
    i64 8, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @OSSL_PARAM_get_int32(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #3
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.i = call i32 @OSSL_PARAM_get_int64(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #3
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  switch i64 %i.k, label %bb.h [
    i64 4, label %bb.f
    i64 8, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = call i32 @OSSL_PARAM_get_uint32(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #3
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.m = call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #3
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.n = call i32 @OSSL_PARAM_get_BN(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #3
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.o = call i32 @OSSL_PARAM_get_double(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #3
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.c, %bb.d, %bb.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.n, %bb.h ], [ %i.o, %bb.i ]
  %i.p = icmp eq i32 %.0, 0
  %i.q = zext i1 %i.p to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.j
  %.012 = phi i32 [ %i.q, %bb.j ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.012
}

declare i32 @test_true(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_int(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @test_mem_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_param_type_extra(ptr noundef nonnull initializes((32, 40)) %0, ptr noundef %1, i64 noundef range(i64 4, 9) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [20 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = icmp ult i64 %i.f, 5                     ; 3 uses
  %i.h = icmp ugt i64 %i.f, 8                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = icmp eq i32 %i.j, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.l, align 8, !tbaa !21
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @OSSL_PARAM_get_int32(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #3
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = call i32 @test_true(ptr noundef nonnull @.str.19, i32 noundef 135, ptr noundef nonnull @.str.27, i32 noundef %i.o) #3
  %.not42 = icmp eq i32 %i.p, 0
  br i1 %.not42, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = call i32 @OSSL_PARAM_get_int64(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #3
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = call i32 @test_true(ptr noundef nonnull @.str.19, i32 noundef 136, ptr noundef nonnull @.str.28, i32 noundef %i.s) #3
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %bb.z, label %bb.j

bb.e:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = call i32 @OSSL_PARAM_get_uint32(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #3
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = call i32 @test_true(ptr noundef nonnull @.str.19, i32 noundef 140, ptr noundef nonnull @.str.29, i32 noundef %i.w) #3
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.z, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #3
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = call i32 @test_true(ptr noundef nonnull @.str.19, i32 noundef 141, ptr noundef nonnull @.str.30, i32 noundef %i.aa) #3
  %.not40 = icmp eq i32 %i.ab, 0
  br i1 %.not40, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.h, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = call i32 @OSSL_PARAM_get_size_t(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #3
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = call i32 @test_true(ptr noundef nonnull @.str.19, i32 noundef 142, ptr noundef nonnull @.str.31, i32 noundef %i.ae) #3
  %.not41 = icmp eq i32 %i.af, 0
  br i1 %.not41, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.d
  %i.ag = call i32 @OSSL_PARAM_modified(ptr noundef nonnull %0) #3
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = call i32 @test_false(ptr noundef nonnull @.str.19, i32 noundef 145, ptr noundef nonnull @.str.32, i32 noundef %i.ai) #3
  %.not44 = icmp eq i32 %i.aj, 0
  br i1 %.not44, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.g, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = load i32, ptr %i.a, align 4
  store i32 %i.ak, ptr %i.d, align 16
  %i.al = call i32 @test_mem_eq(ptr noundef nonnull @.str.19, i32 noundef 152, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.d, i64 noundef 4, ptr noundef %1, i64 noundef 4) #3
  %.not45 = icmp eq i32 %i.al, 0
  br i1 %.not45, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = load i64, ptr %i.b, align 8
  store i64 %i.am, ptr %i.d, align 16
  %i.an = call i32 @test_mem_eq(ptr noundef nonnull @.str.19, i32 noundef 157, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.d, i64 noundef %2, ptr noundef %1, i64 noundef %2) #3
  %.not46 = icmp eq i32 %i.an, 0
  br i1 %.not46, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %or.cond = or i1 %i.h, %i.k
  br i1 %or.cond, label %3, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = load i64, ptr %i.c, align 8
  store i64 %i.ao, ptr %i.d, align 16
  %i.ap = call i32 @test_mem_eq(ptr noundef nonnull @.str.19, i32 noundef 162, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.d, i64 noundef %2, ptr noundef %1, i64 noundef %2) #3
  %.not47 = icmp eq i32 %i.ap, 0
  br i1 %.not47, label %bb.z, label %bb.p

3:                                                ; preds = %bb.n
  %4 = icmp samesign ult i64 %2, 8
  br i1 %4, label %bb.q, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.aq = icmp samesign ult i64 %2, 8
  br i1 %i.aq, label %bb.u, label %bb.y

bb.q:                                             ; preds = %3
  br i1 %i.k, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ar = call i32 @OSSL_PARAM_set_int32(ptr noundef nonnull %0, i32 noundef 12345) #3
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = call i32 @test_true(ptr noundef nonnull @.str.19, i32 noundef 169, ptr noundef nonnull @.str.34, i32 noundef %i.at) #3
  %.not51 = icmp eq i32 %i.au, 0
  br i1 %.not51, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = call i32 @OSSL_PARAM_get_int64(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #3
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = call i32 @test_true(ptr noundef nonnull @.str.19, i32 noundef 170, ptr noundef nonnull @.str.28, i32 noundef %i.ax) #3
  %.not52 = icmp eq i32 %i.ay, 0
  br i1 %.not52, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ba = call i32 @test_size_t_eq(ptr noundef nonnull @.str.19, i32 noundef 171, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i64 noundef %i.az, i64 noundef 12345) #3
  %.not53 = icmp eq i32 %i.ba, 0
  br i1 %.not53, label %bb.z, label %bb.x

bb.u:                                             ; preds = %bb.p, %bb.q
  %i.bb = call i32 @OSSL_PARAM_set_uint32(ptr noundef nonnull %0, i32 noundef 12345) #3
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = call i32 @test_true(ptr noundef nonnull @.str.19, i32 noundef 174, ptr noundef nonnull @.str.37, i32 noundef %i.bd) #3
  %.not48 = icmp eq i32 %i.be, 0
  br i1 %.not48, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = call i32 @OSSL_PARAM_get_uint64(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #3
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = call i32 @test_true(ptr noundef nonnull @.str.19, i32 noundef 175, ptr noundef nonnull @.str.30, i32 noundef %i.bh) #3
  %.not49 = icmp eq i32 %i.bi, 0
  br i1 %.not49, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !17
  %i.bk = call i32 @test_size_t_eq(ptr noundef nonnull @.str.19, i32 noundef 176, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i64 noundef %i.bj, i64 noundef 12345) #3
  %.not50 = icmp eq i32 %i.bk, 0
  br i1 %.not50, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.bl = call i32 @OSSL_PARAM_modified(ptr noundef nonnull %0) #3
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = call i32 @test_true(ptr noundef nonnull @.str.19, i32 noundef 179, ptr noundef nonnull @.str.32, i32 noundef %i.bn) #3
  %.not54 = icmp eq i32 %i.bo, 0
  br i1 %.not54, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.p, %bb.x, %3
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.u, %bb.v, %bb.w, %bb.r, %bb.s, %bb.t, %bb.o, %bb.m, %bb.l, %bb.j, %bb.f, %bb.g, %bb.i, %bb.c, %bb.d, %bb.y
  %.0 = phi i32 [ 1, %bb.y ], [ 0, %bb.u ], [ 0, %bb.o ], [ 0, %bb.r ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @OSSL_PARAM_get_int32(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_int64(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_uint32(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_uint64(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_BN(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_double(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_size_t(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @test_false(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_modified(ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_int32(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @test_size_t_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_uint32(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_long(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_long(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_uint(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_uint(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_ulong(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_ulong(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_size_t(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_time_t(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_time_t(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_uint64(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @test_ptr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BN_lebin2bn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_BN(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @test_BN_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BN_free(ptr noundef) local_unnamed_addr #1

declare ptr @BN_signed_lebin2bn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_is_negative(ptr noundef) local_unnamed_addr #1

declare i32 @BN_print_fp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_double(ptr noundef, double noundef) local_unnamed_addr #1

declare i32 @test_double_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_int(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_uint(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_long(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_ulong(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_int32(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_int64(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_uint32(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_uint64(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_double(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_BN(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_utf8_ptr(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_octet_ptr(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_end(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

declare ptr @OSSL_PARAM_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @OSSL_PARAM_dup(ptr noundef) local_unnamed_addr #1

declare i32 @test_ptr_null(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @OSSL_PARAM_locate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @test_note(ptr noundef, ...) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_utf8_string(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_utf8_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @test_str_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_utf8_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_utf8_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @test_ptr_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_octet_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_octet_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_octet_string_or_ptr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_set_octet_ptr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_octet_ptr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_set_all_unmodified(ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_free(ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_clear_free(ptr noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"", !9, i64 0, !5, i64 8}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"ossl_param_st", !13, i64 0, !6, i64 8, !12, i64 16, !9, i64 24, !9, i64 32}
!15 = !{!14, !12, i64 16}
!16 = !{!6, !6, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!"p1 _ZTS9bignum_st", !12, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!14, !9, i64 24}
!21 = !{!14, !9, i64 32}
!22 = !{!"double", !5, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!12, !12, i64 0}
!25 = !{!13, !13, i64 0}
!26 = !{i64 0, i64 8, !25, i64 8, i64 4, !16, i64 16, i64 8, !24, i64 24, i64 8, !17, i64 32, i64 8, !17}
!27 = !{!14, !6, i64 8}
!28 = !{!5, !5, i64 0}
!29 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!30 = !{!29, !29, i64 0}
end_hunk_0
