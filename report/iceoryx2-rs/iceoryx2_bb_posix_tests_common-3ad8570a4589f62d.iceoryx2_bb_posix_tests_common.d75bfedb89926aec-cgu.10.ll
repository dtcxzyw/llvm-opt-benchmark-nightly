Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_posix_tests_common-3ad8570a4589f62d.iceoryx2_bb_posix_tests_common.d75bfedb89926aec-cgu.10?download=true
inline.NumInlined: 128
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common13barrier_tests6blocks:bb.a
  br label %bb.i
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common13process_tests14is_alive_works() unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = tail call noundef i32 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process9from_self() #10
  store i32 %i.o, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.p = call noundef zeroext i1 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process8is_alive(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n) #10 ; 2 uses
  %i.q = zext i1 %i.p to i8
  store i8 %i.q, ptr %i.l, align 1
  store ptr %i.l, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @37, ptr %i.k, align 8, !captures !4
  br i1 %i.p, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.r = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select = select i1 %i.r, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select38 = select i1 %i.r, i64 9, i64 0
  store ptr %spec.select, ptr %i.j, align 8, !captures !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %spec.select38, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.t = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink33 = select i1 %i.t, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink32 = select i1 %i.t, i64 4, i64 0
  store ptr %.sink33, ptr %i.i, align 8, !captures !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sink32, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.42.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.m, ptr %i.v, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.k, ptr %i.w, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.i, ptr %i.x, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @38, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 2147483646, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = call noundef zeroext i1 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process8is_alive(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g) #10 ; 2 uses
  %i.z = zext i1 %i.y to i8
  store i8 %i.z, ptr %i.e, align 1
  store ptr %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @41, ptr %i.d, align 8, !captures !4
  br i1 %i.y, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select39 = select i1 %i.aa, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select40 = select i1 %i.aa, i64 9, i64 0
  store ptr %spec.select39, ptr %i.c, align 8, !captures !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select40, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink37 = select i1 %i.ac, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink36 = select i1 %i.ac, i64 4, i64 0
  store ptr %.sink37, ptr %i.b, align 8, !captures !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink36, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.418.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.ae, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.422.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.af, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.426.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.ag, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.430.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common13process_tests21can_acquire_from_self() unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = tail call noundef i32 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process9from_self() #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %i.g, ptr %i.e, align 4
  store ptr %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @44, ptr %i.d, align 8, !captures !4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select = select i1 %i.i, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select18 = select i1 %i.i, i64 9, i64 0
  store ptr %spec.select, ptr %i.c, align 8, !captures !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select18, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink17 = select i1 %i.k, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink16 = select i1 %i.k, i64 4, i64 0
  store ptr %.sink17, ptr %i.b, align 8, !captures !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink16, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.42.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.m, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRlNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.n, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRlNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common13process_tests21executable_path_works() unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [272 x i8], align 8               ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call noundef i32 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process9from_self() #10
  store i32 %i.f, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process10executable(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e) #10
  %i.g = load i8, ptr %i.d, align 8, !range !14, !noundef !5
  %0 = trunc nuw i8 %i.g to i1
  br i1 %0, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select = select i1 %i.h, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select10 = select i1 %i.h, i64 9, i64 0
  store ptr %spec.select, ptr %i.c, align 8, !captures !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select10, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink9 = select i1 %i.j, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink8 = select i1 %i.j, i64 4, i64 0
  store ptr %.sink9, ptr %i.b, align 8, !captures !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink8, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.42.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.l, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @47, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common13process_tests26___iox2_test_is_alive_works() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common13process_tests14is_alive_works() #10
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common13process_tests33___iox2_test_can_acquire_from_self() unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = tail call noundef i32 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process9from_self() #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %i.g, ptr %i.e, align 4
  store ptr %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @44, ptr %i.d, align 8, !captures !4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common13process_tests21can_acquire_from_self.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select.i = select i1 %i.i, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select18.i = select i1 %i.i, i64 9, i64 0
  store ptr %spec.select.i, ptr %i.c, align 8, !captures !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select18.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink17.i = select i1 %i.k, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink16.i = select i1 %i.k, i64 4, i64 0
  store ptr %.sink17.i, ptr %i.b, align 8, !captures !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink16.i, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.m, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRlNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.46.0..sroa_idx.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.n, align 8
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRlNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.410.0..sroa_idx.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.414.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #11
  unreachable

_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common13process_tests21can_acquire_from_self.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common13process_tests33___iox2_test_executable_path_works() unnamed_addr #0 {
  %1 = alloca [32 x i8], align 8                  ; 6 uses
  %2 = alloca [16 x i8], align 8                  ; 4 uses
  %3 = alloca [16 x i8], align 8                  ; 4 uses
  %4 = alloca [272 x i8], align 8                 ; 4 uses
  %5 = alloca [4 x i8], align 4                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %6 = tail call noundef i32 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process9from_self() #10
  store i32 %6, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process10executable(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %5) #10
  %7 = load i8, ptr %4, align 8, !range !14, !noundef !5
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %9, label %bb.a, !prof !7

9:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %10 = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select.i = select i1 %10, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select10.i = select i1 %10, i64 9, i64 0
  store ptr %spec.select.i, ptr %3, align 8, !captures !4
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %spec.select10.i, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %12 = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink9.i = select i1 %12, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink8.i = select i1 %12, i64 4, i64 0
  store ptr %.sink9.i, ptr %2, align 8, !captures !4
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink8.i, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %3, ptr %1, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.42.0..sroa_idx.i, align 8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %14, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @47, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #11
  unreachable

bb.a:                                             ; preds = %0
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common13process_tests33can_acquire_scheduler_information() unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [4 x i8], align 4                 ; 5 uses
  %i.v = alloca [4 x i8], align 4                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.w = tail call noundef i32 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process9from_self() #10 ; 2 uses
  store i32 %i.w, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i32 %i.w, ptr %i.u, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.x = call i64 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process12get_priority(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v) #10
  store i64 %i.x, ptr %i.s, align 8
  store ptr %i.s, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.y = call i64 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process12get_priority(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.u) #10 ; 3 uses
  store i64 %i.y, ptr %i.q, align 8
  store ptr %i.q, ptr %i.r, align 8
  %i.z = load i32, ptr %i.s, align 8, !range !42, !alias.scope !43, !noalias !44, !noundef !5 ; 3 uses
  %i.aa = icmp ne i32 %i.z, -1                    ; 2 uses
  %i.ab = trunc i64 %i.y to i32                   ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -1                   ; 3 uses
  %not..i = xor i1 %i.ac, true
  %i.ad = xor i1 %i.aa, %i.ac
  %i.ae = lshr i64 %i.y, 32                       ; 2 uses
  %i.af = trunc i64 %i.ae to i8
  %i.ag = trunc nuw i64 %i.ae to i32
  br i1 %i.ad, label %bb.b, label %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResulthNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread, !prof !45

bb.b:                                             ; preds = %bb.a
  br i1 %i.aa, label %bb.c, label %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResulthNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 %not..i)
  %i.ah = icmp eq i32 %i.z, %i.ab
  br i1 %i.ah, label %.split, label %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResulthNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread, !prof !45

.split:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.val2.i = load i32, ptr %i.ai, align 4, !alias.scope !43, !noalias !44
  %i.aj = icmp ne i32 %i.z, 2
  %i.ak = icmp eq i32 %.val2.i, %i.ag
  %spec.select.i.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %spec.select.i.i, label %bb.d, label %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResulthNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread, !prof !46

_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResulthNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %bb.b
  call void @llvm.assume(i1 %i.ac)
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.val5.i = load i8, ptr %i.al, align 4, !alias.scope !43, !noalias !44, !noundef !5
  %i.am = icmp eq i8 %.val5.i, %i.af
  br i1 %i.am, label %bb.d, label %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResulthNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread, !prof !46

_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResulthNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread: ; preds = %bb.c, %bb.a, %.split, %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResulthNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.an = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select = select i1 %i.an, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select83 = select i1 %i.an, i64 9, i64 0
  store ptr %spec.select, ptr %i.p, align 8, !captures !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %spec.select83, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ap = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink70 = select i1 %i.ap, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink69 = select i1 %i.ap, i64 4, i64 0
  store ptr %.sink70, ptr %i.o, align 8, !captures !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sink69, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.t, ptr %i.ar, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6result6ResulthNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7process24ProcessGetSchedulerErrorENtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.r, ptr %i.as, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6result6ResulthNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7process24ProcessGetSchedulerErrorENtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.414.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.o, ptr %i.at, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @49, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #11
  unreachable

bb.d:                                             ; preds = %.split, %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResulthNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.au = call i64 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process13get_scheduler(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v) #10
  store i64 %i.au, ptr %i.l, align 8
  store ptr %i.l, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.av = call i64 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process13get_scheduler(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.u) #10 ; 3 uses
  store i64 %i.av, ptr %i.j, align 8
  store ptr %i.j, ptr %i.k, align 8
  %.val = load i32, ptr %i.l, align 8, !range !42, !noundef !5 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.val59 = load i32, ptr %i.aw, align 4          ; 2 uses
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  %i.ay = lshr i64 %i.av, 32
  %i.az = trunc nuw i64 %i.ay to i32              ; 2 uses
  %i.ba = icmp ne i32 %.val, -1                   ; 2 uses
  %i.bb = icmp eq i32 %i.ax, -1                   ; 3 uses
  %not..i62 = xor i1 %i.bb, true
  %i.bc = xor i1 %i.ba, %i.bb
  br i1 %i.bc, label %bb.e, label %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9scheduler9SchedulerNtNtBO_7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread, !prof !45

bb.e:                                             ; preds = %bb.d
  br i1 %i.ba, label %bb.f, label %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9scheduler9SchedulerNtNtBO_7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 %not..i62)
  %i.bd = icmp eq i32 %.val, %i.ax
  br i1 %i.bd, label %.split67, label %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9scheduler9SchedulerNtNtBO_7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread, !prof !45

.split67:                                         ; preds = %bb.f
  %i.be = icmp ne i32 %.val, 2
  %i.bf = icmp eq i32 %.val59, %i.az
  %spec.select.i.i64 = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %spec.select.i.i64, label %bb.g, label %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9scheduler9SchedulerNtNtBO_7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread, !prof !46

_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9scheduler9SchedulerNtNtBO_7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %bb.e
  call void @llvm.assume(i1 %i.bb)
  %i.bg = icmp eq i32 %.val59, %i.az
  br i1 %i.bg, label %bb.g, label %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9scheduler9SchedulerNtNtBO_7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread, !prof !46

_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9scheduler9SchedulerNtNtBO_7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread: ; preds = %bb.f, %bb.d, %.split67, %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9scheduler9SchedulerNtNtBO_7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bh = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select84 = select i1 %i.bh, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select85 = select i1 %i.bh, i64 9, i64 0
  store ptr %spec.select84, ptr %i.i, align 8, !captures !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %spec.select85, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bj = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink74 = select i1 %i.bj, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink73 = select i1 %i.bj, i64 4, i64 0
  store ptr %.sink74, ptr %i.h, align 8, !captures !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sink73, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.422.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.m, ptr %i.bl, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9scheduler9SchedulerNtNtBW_7process24ProcessGetSchedulerErrorENtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.426.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.k, ptr %i.bm, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9scheduler9SchedulerNtNtBW_7process24ProcessGetSchedulerErrorENtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.430.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.h, ptr %i.bn, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.434.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @51, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #11
  unreachable

bb.g:                                             ; preds = %.split67, %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9scheduler9SchedulerNtNtBO_7process24ProcessGetSchedulerErrorENtNtB7_3cmp9PartialEq2eqCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bo = call i64 @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7processNtB5_7Process12get_priority(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v) #10
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = icmp eq i64 %i.bp, 4294967295
  br i1 %i.bq, label %bb.i, label %bb.h, !prof !10
end_hunk_0
begin_hunk_1_@_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests36server_timed_receive_from_does_block:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !420
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !range !16, !alias.scope !418, !noalias !419, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !418, !noalias !419
  store i32 %i.ai, ptr %i.d, align 4, !noalias !420
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !noalias !420
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #11, !noalias !421
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpClientNtBJ_20UdpClientCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.q, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.p, i64 28, i1 false), !alias.scope !421, !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 33
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrierNtB2_14BarrierBuilder6create(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 8 %i.o) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.am = load i32, ptr %i.m, align 8, !range !11, !alias.scope !423, !noalias !424, !noundef !5
  %i.an = trunc nuw i32 %i.am to i1
  br i1 %i.an, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpClientNtBJ_20UdpClientCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !425
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !range !12, !alias.scope !423, !noalias !424, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !alias.scope !423, !noalias !424
  store i32 %i.ap, ptr %i.b, align 4, !noalias !425
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ar, ptr %i.as, align 4, !noalias !425
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #11, !noalias !423
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpClientNtBJ_20UdpClientCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !423, !noalias !424, !nonnull !5, !align !13, !noundef !5
  store ptr %i.au, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.s, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.q, ptr %i.ax, align 8
  %i.ay = call { i32, i32 } @_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests36server_timed_receive_from_does_block0EB12_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k) #10 ; 2 uses
  %i.az = extractvalue { i32, i32 } %i.ay, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not.i = icmp eq i32 %i.az, -1
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, label %bb.e, !prof !10

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  %i.ba = extractvalue { i32, i32 } %i.ay, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !426
  store i32 %i.az, ptr %i.a, align 4, !noalias !426
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !noalias !426
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #11
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bc = load atomic i64, ptr %i.l monotonic, align 8 ; 2 uses
  store i64 %i.bc, ptr %i.i, align 8
  store ptr %i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @128, ptr %i.h, align 8, !captures !4
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrierNtB5_13BarrierHandleNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o) #10
  call void @_RNvXs1_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB5_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux17pthread_barrier_tENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_9UdpClientNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.q) #10
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.q) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @_RNvXs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_9UdpServerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.s) #10
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.s) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.g:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.be = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select = select i1 %i.be, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select38 = select i1 %i.be, i64 9, i64 0
  store ptr %spec.select, ptr %i.g, align 8, !captures !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select38, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bg = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink37 = select i1 %i.bg, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink36 = select i1 %i.bg, i64 4, i64 0
  store ptr %.sink37, ptr %i.f, align 8, !captures !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink36, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.419.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.j, ptr %i.bi, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRyNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.423.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.bj, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRyNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.427.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.bk, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.431.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @129, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #11
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests38___iox2_test_server_has_correct_address() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests26server_has_correct_address() #10
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests38server_try_receive_from_does_not_block() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [28 x i8], align 4                ; 7 uses
  %i.i = alloca [28 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_16UdpServerBuilder6listen(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.h, i64 2130706433) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i8, ptr %i.j, align 4, !range !9, !alias.scope !436, !noalias !437, !noundef !5
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !438
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i32, ptr %i.m, align 4, !range !15, !alias.scope !436, !noalias !437, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !436, !noalias !437
  store i32 %i.n, ptr %i.a, align 4, !noalias !438
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.p, ptr %i.q, align 4, !noalias !438
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #11, !noalias !439
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.i, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.h, i64 28, i1 false), !alias.scope !439, !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_9UdpServer16try_receive_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 4 %i.i, ptr noalias nofree noundef nonnull %i.g, i64 noundef 8) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.r = load i64, ptr %i.f, align 8, !range !17, !alias.scope !441, !noalias !442, !noundef !5 ; 2 uses
  %i.s = icmp eq i64 %i.r, 2
  br i1 %i.s, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket14ReceiveDetailsENtB15_15UdpReceiveErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !443
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !18, !alias.scope !441, !noalias !442, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !441, !noalias !442
  store i32 %i.u, ptr %i.b, align 4, !noalias !443
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.w, ptr %i.x, align 4, !noalias !443
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #11, !noalias !444
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket14ReceiveDetailsENtB15_15UdpReceiveErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %0 = trunc nuw i64 %i.r to i1
  br i1 %0, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket14ReceiveDetailsENtB15_15UdpReceiveErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select = select i1 %i.y, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select18 = select i1 %i.y, i64 9, i64 0
  store ptr %spec.select, ptr %i.e, align 8, !captures !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %spec.select18, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aa = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink17 = select i1 %i.aa, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink16 = select i1 %i.aa, i64 4, i64 0
  store ptr %.sink17, ptr %i.d, align 8, !captures !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sink16, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.ac, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.413.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @154, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #11
  unreachable

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket14ReceiveDetailsENtB15_15UdpReceiveErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvXs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_9UdpServerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.i) #10
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests39server_blocking_receive_from_does_block() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [8 x i8], align 4                 ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [28 x i8], align 4                ; 7 uses
  %i.q = alloca [28 x i8], align 4                ; 6 uses
  %i.r = alloca [28 x i8], align 4                ; 7 uses
  %i.s = alloca [28 x i8], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_16UdpServerBuilder6listen(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.r, i64 2130706433) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load i8, ptr %i.t, align 4, !range !9, !alias.scope !460, !noalias !461, !noundef !5
  %i.v = icmp eq i8 %i.u, 2
  br i1 %i.v, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !462
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i32, ptr %i.w, align 4, !range !15, !alias.scope !460, !noalias !461, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !460, !noalias !461
  store i32 %i.x, ptr %i.c, align 4, !noalias !462
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !noalias !462
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #11, !noalias !463
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.s, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.r, i64 28, i1 false), !alias.scope !463, !noalias !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %i.ac = load i16, ptr %i.ab, align 2, !noundef !5
  %i.ad = tail call i16 @llvm.bswap.i16(i16 %i.ac)
  call void @_RNvMs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB4_16UdpClientBuilder10connect_to(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.p, i32 noundef 2130706433, i16 noundef %i.ad) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.af = load i8, ptr %i.ae, align 4, !range !9, !alias.scope !466, !noalias !467, !noundef !5
  %i.ag = icmp eq i8 %i.af, 2
  br i1 %i.ag, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpClientNtBJ_20UdpClientCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !468
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !range !16, !alias.scope !466, !noalias !467, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !466, !noalias !467
  store i32 %i.ai, ptr %i.d, align 4, !noalias !468
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !noalias !468
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #11, !noalias !469
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpClientNtBJ_20UdpClientCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.q, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.p, i64 28, i1 false), !alias.scope !469, !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 33
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrierNtB2_14BarrierBuilder6create(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 8 %i.o) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.am = load i32, ptr %i.m, align 8, !range !11, !alias.scope !471, !noalias !472, !noundef !5
  %i.an = trunc nuw i32 %i.am to i1
  br i1 %i.an, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpClientNtBJ_20UdpClientCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !473
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !range !12, !alias.scope !471, !noalias !472, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !alias.scope !471, !noalias !472
  store i32 %i.ap, ptr %i.b, align 4, !noalias !473
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ar, ptr %i.as, align 4, !noalias !473
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #11, !noalias !471
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpClientNtBJ_20UdpClientCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !471, !noalias !472, !nonnull !5, !align !13, !noundef !5
  store ptr %i.au, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.s, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.q, ptr %i.ax, align 8
  %i.ay = call { i32, i32 } @_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests39server_blocking_receive_from_does_block0EB12_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k) #10 ; 2 uses
  %i.az = extractvalue { i32, i32 } %i.ay, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not.i = icmp eq i32 %i.az, -1
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, label %bb.e, !prof !10

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  %i.ba = extractvalue { i32, i32 } %i.ay, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !474
  store i32 %i.az, ptr %i.a, align 4, !noalias !474
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !noalias !474
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #11
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bc = load atomic i64, ptr %i.l monotonic, align 8 ; 2 uses
  store i64 %i.bc, ptr %i.i, align 8
  store ptr %i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @128, ptr %i.h, align 8, !captures !4
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrierNtB5_13BarrierHandleNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o) #10
  call void @_RNvXs1_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB5_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux17pthread_barrier_tENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_9UdpClientNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.q) #10
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.q) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @_RNvXs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_9UdpServerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.s) #10
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.s) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.g:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.be = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select = select i1 %i.be, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select38 = select i1 %i.be, i64 9, i64 0
  store ptr %spec.select, ptr %i.g, align 8, !captures !4
end_hunk_1
begin_hunk_2_@_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests52client_timed_receive_does_block_for_at_least_timeout:bb.a
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #11, !noalias !534
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9TimeErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %bb.f
  %i.br = load i64, ptr %i.k, align 8, !alias.scope !534, !noalias !535, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bs = uitofp i64 %i.br to float
  %i.bt = uitofp nneg i32 %i.bl to float
  %i.bu = fdiv float %i.bt, 1.000000e+09
  %i.bv = fadd float %i.bu, %i.bs                 ; 2 uses
  store float %i.bv, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store float 2.500000e-02, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store float 1.875000e-02, ptr %i.i, align 4
  %i.bw = fcmp ult float %i.bv, 1.875000e-02
  br i1 %i.bw, label %bb.i, label %bb.j, !prof !7

bb.h:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket15UdpReceiveErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bx = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select = select i1 %i.bx, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select55 = select i1 %i.bx, i64 9, i64 0
  store ptr %spec.select, ptr %i.o, align 8, !captures !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %spec.select55, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bz = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink54 = select i1 %i.bz, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink53 = select i1 %i.bz, i64 4, i64 0
  store ptr %.sink54, ptr %i.n, align 8, !captures !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sink53, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.s, ptr %i.cb, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.p, ptr %i.cc, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.cd, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @178, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #11
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9TimeErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ce = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select56 = select i1 %i.ce, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select57 = select i1 %i.ce, i64 9, i64 0
  store ptr %spec.select56, ptr %i.h, align 8, !captures !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %spec.select57, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cg = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink52 = select i1 %i.cg, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink51 = select i1 %i.cg, i64 4, i64 0
  store ptr %.sink52, ptr %i.g, align 8, !captures !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sink51, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.l, ptr %i.ci, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs2_NtNtCs8Chj7Szqq0n_4core3fmt5floatfNtB7_5Debug3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.j, ptr %i.cj, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @_RNvXs2_NtNtCs8Chj7Szqq0n_4core3fmt5floatfNtB7_5Debug3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.i, ptr %i.ck, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @_RNvXs2_NtNtCs8Chj7Szqq0n_4core3fmt5floatfNtB7_5Debug3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.g, ptr %i.cl, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.444.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @176, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #11
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9TimeErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_9UdpClientNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.x) #10
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.x) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvXs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_9UdpServerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.z) #10
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.z) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests57server_timed_receive_from_does_block_for_at_least_timeout() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [8 x i8], align 4                 ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 12 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [28 x i8], align 4                ; 7 uses
  %i.t = alloca [28 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_16UdpServerBuilder6listen(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.s, i64 2130706433) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load i8, ptr %i.u, align 4, !range !9, !alias.scope !553, !noalias !554, !noundef !5
  %i.w = icmp eq i8 %i.v, 2
  br i1 %i.w, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !555
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i32, ptr %i.x, align 4, !range !15, !alias.scope !553, !noalias !554, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !553, !noalias !554
  store i32 %i.y, ptr %i.c, align 4, !noalias !555
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !noalias !555
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #11, !noalias !556
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.t, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.s, i64 28, i1 false), !alias.scope !556, !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB5_4Time3now(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.ac = load i32, ptr %i.p, align 8, !range !12, !alias.scope !559, !noalias !560, !noundef !5
  %i.ad = icmp eq i32 %i.ac, 2
  br i1 %i.ad, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock4TimeNtBJ_9TimeErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !561
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !range !11, !alias.scope !559, !noalias !560, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !alias.scope !559, !noalias !560
  store i32 %i.af, ptr %i.b, align 4, !noalias !561
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !noalias !561
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 26, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #11, !noalias !562
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock4TimeNtBJ_9TimeErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket9UdpServerNtBJ_20UdpServerCreateErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.p, i64 24, i1 false), !alias.scope !562, !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs5_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_9UdpServer18timed_receive_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.t, ptr noalias nofree noundef nonnull %i.r, i64 noundef 8, i64 noundef 0, i32 noundef 25000000) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.aj = load i64, ptr %i.o, align 8, !range !17, !alias.scope !564, !noalias !565, !noundef !5 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 2
  br i1 %i.ak, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket14ReceiveDetailsENtB15_15UdpReceiveErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock4TimeNtBJ_9TimeErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !566
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.am = load i32, ptr %i.al, align 8, !range !18, !alias.scope !564, !noalias !565, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !564, !noalias !565
  store i32 %i.am, ptr %i.d, align 4, !noalias !566
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !noalias !566
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #11, !noalias !567
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket14ReceiveDetailsENtB15_15UdpReceiveErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock4TimeNtBJ_9TimeErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %0 = trunc nuw i64 %i.aj to i1
  br i1 %0, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket14ReceiveDetailsENtB15_15UdpReceiveErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select = select i1 %i.aq, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select43 = select i1 %i.aq, i64 9, i64 0
  store ptr %spec.select, ptr %i.n, align 8, !captures !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select43, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.as = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink37 = select i1 %i.as, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink36 = select i1 %i.as, i64 4, i64 0
  store ptr %.sink37, ptr %i.m, align 8, !captures !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sink36, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.49.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.au, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.413.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @183, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #11
  unreachable

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socket14ReceiveDetailsENtB15_15UdpReceiveErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB5_4Time7elapsed(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !range !20, !alias.scope !568, !noalias !569, !noundef !5 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.g, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9TimeErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !570
  %i.ay = load i32, ptr %i.j, align 8, !range !11, !alias.scope !568, !noalias !569, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !568, !noalias !569
  store i32 %i.ay, ptr %i.a, align 4, !noalias !570
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !noalias !570
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #11, !noalias !568
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9TimeErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %bb.f
  %i.bc = load i64, ptr %i.j, align 8, !alias.scope !568, !noalias !569, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bd = uitofp i64 %i.bc to float
  %i.be = uitofp nneg i32 %i.aw to float
  %i.bf = fdiv float %i.be, 1.000000e+09
  %i.bg = fadd float %i.bf, %i.bd                 ; 2 uses
  store float %i.bg, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store float 2.500000e-02, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store float 1.875000e-02, ptr %i.h, align 4
  %i.bh = fcmp ult float %i.bg, 1.875000e-02
  br i1 %i.bh, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9TimeErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bi = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select44 = select i1 %i.bi, ptr @29, ptr inttoptr (i64 1 to ptr)
  %spec.select45 = select i1 %i.bi, i64 9, i64 0
  store ptr %spec.select44, ptr %i.g, align 8, !captures !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select45, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bk = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink41 = select i1 %i.bk, ptr @30, ptr inttoptr (i64 1 to ptr)
  %.sink40 = select i1 %i.bk, i64 4, i64 0
  store ptr %.sink41, ptr %i.f, align 8, !captures !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink40, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.417.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.bm, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs2_NtNtCs8Chj7Szqq0n_4core3fmt5floatfNtB7_5Debug3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.bn, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs2_NtNtCs8Chj7Szqq0n_4core3fmt5floatfNtB7_5Debug3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.h, ptr %i.bo, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs2_NtNtCs8Chj7Szqq0n_4core3fmt5floatfNtB7_5Debug3fmt, ptr %.sroa.429.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.f, ptr %i.bp, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @176, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #11
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9TimeErrorE6expectCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix10udp_socketNtB5_9UdpServerNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.t) #10
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.t) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests63___iox2_test_when_socket_goes_out_of_scope_address_is_free_again() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests51when_socket_goes_out_of_scope_address_is_free_again() #10
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests64___iox2_test_client_timed_receive_does_block_for_at_least_timeout() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests52client_timed_receive_does_block_for_at_least_timeout() #10
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests69___iox2_test_server_timed_receive_from_does_block_for_at_least_timeout() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16udp_socket_tests57server_timed_receive_from_does_block_for_at_least_timeout() #10
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common22read_write_mutex_tests10lock_works() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, i8 0, i64 56, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 57
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i32 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvMs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix16read_write_mutexNtB5_21ReadWriteMutexBuilder6createlECsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.r, i1 noundef zeroext true, i32 noundef 456, ptr noundef nonnull align 8 %i.t) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.v = load i32, ptr %i.r, align 8, !range !11, !alias.scope !580, !noalias !581, !noundef !5
  %i.w = trunc nuw i32 %i.v to i1
  br i1 %i.w, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16read_write_mutex14ReadWriteMutexlENtBK_27ReadWriteMutexCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !582
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.y = load i32, ptr %i.x, align 4, !range !21, !alias.scope !580, !noalias !581, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !alias.scope !580, !noalias !581
  store i32 %i.y, ptr %i.b, align 4, !noalias !582
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !noalias !582
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #11, !noalias !580
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16read_write_mutex14ReadWriteMutexlENtBK_27ReadWriteMutexCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !580, !noalias !581, !nonnull !5, !align !13, !noundef !5
  store ptr %i.ad, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMsh_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix16read_write_mutexINtB5_14ReadWriteMutexlE19write_blocking_lockCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.ae = load i32, ptr %i.p, align 8, !range !11, !alias.scope !583, !noalias !584, !noundef !5
  %i.af = trunc nuw i32 %i.ae to i1
  br i1 %i.af, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16read_write_mutex15MutexWriteGuardlENtBK_28ReadWriteMutexWriteLockErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !7

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16read_write_mutex14ReadWriteMutexlENtBK_27ReadWriteMutexCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !585
end_hunk_2
