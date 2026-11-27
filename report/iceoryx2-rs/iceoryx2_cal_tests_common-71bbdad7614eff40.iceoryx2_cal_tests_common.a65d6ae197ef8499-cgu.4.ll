Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal_tests_common-71bbdad7614eff40.iceoryx2_cal_tests_common.a65d6ae197ef8499-cgu.4?download=true
inline.NumInlined: 54
inline.NumDeleted: 29
begin_hunk_0_@_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_pool_allocator_tests72___iox2_test_new_resize_hint_with_power_of_two_when_buckets_are_exhausted
define internal void @_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_pool_allocator_tests72___iox2_test_new_resize_hint_with_power_of_two_when_buckets_are_exhausted() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call fastcc void @_RNvMNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_pool_allocator_testsNtB2_11TestContext3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ad, i64 noundef 4, i64 noundef 12) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !noundef !6 ; 2 uses
  %exitcond.not.i1 = icmp eq i32 %i.ah, 0
  br i1 %exitcond.not.i1, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.ai = add nuw i32 %.sroa.068.0.i2, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ai, %i.ah
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.y, ptr noundef nonnull align 8 %i.af, i64 noundef 8, i64 noundef 14) #12
  %i.aj = load i8, ptr %i.y, align 8, !range !8, !noundef !6
  %.not.i = icmp eq i8 %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !4

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.068.0.i2 = phi i32 [ %i.ai, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ac, ptr noundef nonnull align 8 %i.af, i64 noundef 4, i64 noundef 12) #12
  %i.ak = load i8, ptr %i.ac, align 8, !range !8, !noundef !6
  %i.al = icmp eq i8 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br i1 %i.al, label %bb.b, label %bb.l, !prof !5

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.am = tail call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %spec.select.i = select i1 %i.am, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select98.i = select i1 %i.am, i64 9, i64 0
  store ptr %spec.select.i, ptr %i.x, align 8, !captures !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %spec.select98.i, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ao = tail call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %.sink81.i = select i1 %i.ao, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink80.i = select i1 %i.ao, i64 4, i64 0
  store ptr %.sink81.i, ptr %i.w, align 8, !captures !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sink80.i, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.x, ptr %i.v, align 8
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.413.0..sroa_idx.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.aq, align 8
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.417.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #14
  unreachable

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator11resize_hint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull align 8 %i.af, i64 noundef 8, i64 noundef 14, i8 noundef 1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !6 ; 2 uses
  store i64 %i.as, ptr %i.s, align 8
  store ptr %i.s, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 16, ptr %i.q, align 8
  store ptr %i.q, ptr %i.r, align 8
  %i.at = icmp eq i64 %i.as, 16
  br i1 %i.at, label %bb.f, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.au = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %spec.select99.i = select i1 %i.au, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select100.i = select i1 %i.au, i64 9, i64 0
  store ptr %spec.select99.i, ptr %i.p, align 8, !captures !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %spec.select100.i, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.aw = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %.sink85.i = select i1 %i.aw, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink84.i = select i1 %i.aw, i64 4, i64 0
  store ptr %.sink85.i, ptr %i.o, align 8, !captures !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sink84.i, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.421.0..sroa_idx.i, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.t, ptr %i.ay, align 8
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.425.0..sroa_idx.i, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.r, ptr %i.az, align 8
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.429.0..sroa_idx.i, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.o, ptr %i.ba, align 8
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.433.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bb = load i64, ptr %i.u, align 8, !range !11, !noundef !6 ; 2 uses
  store i64 %i.bb, ptr %i.l, align 8
  store ptr %i.l, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 8, ptr %i.j, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.bc = icmp eq i64 %i.bb, 8
  br i1 %i.bc, label %bb.h, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bd = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %spec.select101.i = select i1 %i.bd, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select102.i = select i1 %i.bd, i64 9, i64 0
  store ptr %spec.select101.i, ptr %i.i, align 8, !captures !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %spec.select102.i, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bf = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %.sink89.i = select i1 %i.bf, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink88.i = select i1 %i.bf, i64 4, i64 0
  store ptr %.sink89.i, ptr %i.h, align 8, !captures !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sink88.i, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.437.0..sroa_idx.i, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.m, ptr %i.bh, align 8
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.441.0..sroa_idx.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.k, ptr %i.bi, align 8
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.445.0..sroa_idx.i, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.h, ptr %i.bj, align 8
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.449.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @39, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.bk, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bl = load i32, ptr %i.ag, align 8, !noundef !6
  %0 = add i32 %i.bl, 1
  %1 = call i32 @llvm.usub.sat.i32(i32 %0, i32 1) ; 2 uses
  %i.bm = icmp sgt i32 %1, -1
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %1, i1 false)
  %i.bo = sub nuw nsw i32 32, %i.bn
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 16, %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.051.0.i = phi i64 [ %i.bq, %bb.i ], [ 0, %bb.h ] ; 2 uses
  store i64 %.sroa.051.0.i, ptr %i.d, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.br = load i64, ptr %i.bk, align 8, !noundef !6
  %i.bs = icmp eq i64 %i.br, %.sroa.051.0.i
  br i1 %i.bs, label %_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_pool_allocator_tests60new_resize_hint_with_power_of_two_when_buckets_are_exhausted.exit, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bt = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %spec.select103.i = select i1 %i.bt, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select104.i = select i1 %i.bt, i64 9, i64 0
  store ptr %spec.select103.i, ptr %i.c, align 8, !captures !7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select104.i, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %.sink93.i = select i1 %i.bv, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink92.i = select i1 %i.bv, i64 4, i64 0
  store ptr %.sink93.i, ptr %i.b, align 8, !captures !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink92.i, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.455.0..sroa_idx.i, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.bx, align 8
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.459.0..sroa_idx.i, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.by, align 8
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.463.0..sroa_idx.i, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.bz, align 8
  %.sroa.467.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.467.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @71, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #14
  unreachable

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ca = tail call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %spec.select105.i = select i1 %i.ca, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select106.i = select i1 %i.ca, i64 9, i64 0
  store ptr %spec.select105.i, ptr %i.ab, align 8, !captures !7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %spec.select106.i, ptr %i.cb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.cc = tail call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %.sink97.i = select i1 %i.cc, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink96.i = select i1 %i.cc, i64 4, i64 0
  store ptr %.sink97.i, ptr %i.aa, align 8, !captures !7
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sink96.i, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.ab, ptr %i.z, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.45.0..sroa_idx.i, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.ce, align 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.49.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #14
  unreachable

_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_pool_allocator_tests60new_resize_hint_with_power_of_two_when_buckets_are_exhausted.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.val.i = load ptr, ptr %i.ad, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 163840, i64 noundef 1) #12
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 96, i64 noundef 8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_pool_allocator_tests73___iox2_test_allocated_memory_has_correct_alignment_uniform_alignment_case() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 9 uses
  %i.r = alloca [4 x i8], align 4                 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit58.preheader.i

.loopexit.i:                                      ; preds = %bb.i
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next82.i, 12
  br i1 %exitcond86.not.i, label %_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_pool_allocator_tests61allocated_memory_has_correct_alignment_uniform_alignment_case.exit, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit58.preheader.i

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit58.preheader.i: ; preds = %.loopexit.i, %bb.a
  %indvars.iv81.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next82.i, %.loopexit.i ] ; 2 uses
  %indvars.iv79.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next80.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %i.w = shl nuw nsw i64 1, %indvars.iv81.i       ; 3 uses
  %i.x = call i64 @llvm.umin.i64(i64 %i.w, i64 128) ; 3 uses
  %invariant.op.i = sub nuw i64 -9223372036854775808, %i.x
  br label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit58.i

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit58.i: ; preds = %bb.i, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit58.preheader.i
  %indvars.iv.i = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit58.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !56
  %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i = call dereferenceable_or_null(163840) ptr @_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed(i64 163840, i64 1), !noalias !57 ; 4 uses
  %i.y = icmp eq ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i, null
  br i1 %i.y, label %bb.b, label %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i, !prof !4

bb.b:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit58.i
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 163840) #13, !noalias !56
  unreachable

_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit58.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !57
  %i.z = getelementptr inbounds nuw i8, ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i, i64 8192
  %i.aa = ptrtoint ptr %i.z to i64
  store i64 %i.aa, ptr %i.e, align 8, !noalias !57
  store i64 163840, ptr %i.t, align 8, !noalias !57
  store i64 0, ptr %i.u, align 8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !57
  store i64 %i.w, ptr %i.d, align 8, !noalias !57
  store i64 %i.w, ptr %i.v, align 8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !57
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator10new_uninit(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.c, i64 noundef 4096, ptr noundef nonnull %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i, i64 noundef 8192, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #12, !noalias !57
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !58
  %i.ab = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 96, 163841) 96, i64 noundef range(i64 1, 9) 8) #12, !noalias !58 ; 6 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.c, label %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit3.i, !prof !4

bb.c:                                             ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #13, !noalias !58
  unreachable

_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit3.i: ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !57
  %i.ad = call noundef i8 @_RINvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB6_13PoolAllocatorNtB8_12ShmAllocator4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 %i.e) #12, !noalias !57 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ad, 2
  br i1 %.not.i.i, label %_RNvMNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_pool_allocator_testsNtB2_11TestContext3new.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !57
  store i8 %i.ad, ptr %i.b, align 1, !noalias !57
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #14, !noalias !57
  unreachable

_RNvMNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_pool_allocator_testsNtB2_11TestContext3new.exit: ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !57
  %i.ae = shl nuw i64 1, %indvars.iv.i            ; 4 uses
  %.not54.i = icmp ugt i64 %i.ae, %invariant.op.i
  br i1 %.not54.i, label %select.unfold68.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i

select.unfold68.i:                                ; preds = %_RNvMNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_pool_allocator_testsNtB2_11TestContext3new.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #14
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i: ; preds = %_RNvMNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_pool_allocator_testsNtB2_11TestContext3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 0, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noundef nonnull align 8 %i.ab, i64 noundef %i.ae, i64 noundef %i.x) #12
  %i.af = load i8, ptr %i.q, align 8, !range !8, !noundef !6
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i
  %i.ah = add nsw i64 %i.ae, -1
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.f, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.r, ptr %i.j, align 8
end_hunk_0
