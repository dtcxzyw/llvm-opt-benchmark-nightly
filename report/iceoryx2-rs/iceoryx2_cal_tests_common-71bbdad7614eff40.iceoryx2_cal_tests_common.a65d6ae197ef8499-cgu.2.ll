Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal_tests_common-71bbdad7614eff40.iceoryx2_cal_tests_common.a65d6ae197ef8499-cgu.2?download=true
inline.NumInlined: 144
inline.NumDeleted: 93
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests49no_new_resize_hint_when_there_is_memory_available:.split
  store i64 %i.k, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  store i64 %i.m, ptr %i.d, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.a, !prof !11

bb.a:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #18 ; 2 uses
  %spec.select = select i1 %i.o, ptr @30, ptr inttoptr (i64 1 to ptr)
  %spec.select22 = select i1 %i.o, i64 9, i64 0
  store ptr %spec.select, ptr %i.c, align 8, !captures !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select22, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #18 ; 2 uses
  %.sink21 = select i1 %i.q, ptr @31, ptr inttoptr (i64 1 to ptr)
  %.sink20 = select i1 %i.q, i64 4, i64 0
  store ptr %.sink21, ptr %i.b, align 8, !captures !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink20, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.43.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.s, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.47.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.t, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.411.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.u, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.415.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #17
  unreachable

bb.b:                                             ; preds = %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 163840, i64 noundef 1) #18
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 40, i64 noundef 8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests63___iox2_test_initial_setup_hint_is_layout_times_number_of_chunks() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests75___iox2_test_no_new_resize_hint_with_best_fit_when_there_is_memory_available() unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests49no_new_resize_hint_when_there_is_memory_available(i8 noundef 0) #18
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests79___iox2_test_no_new_resize_hint_with_power_of_two_when_there_is_memory_available() unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests49no_new_resize_hint_when_there_is_memory_available(i8 noundef 1) #18
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests83___iox2_test_new_resize_hint_with_best_fit_when_there_is_not_enough_memory_available() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_RNvMNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testsNtB2_11TestContext3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.i) #18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  br i1 %i.o, label %.split.i, label %.split17.i

.split17.i:                                       ; preds = %bb.a
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #17
  unreachable

.split.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.p = tail call noundef i64 @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14bump_allocatorNtB5_13BumpAllocatorNtB7_12ShmAllocator11resize_hint(ptr noundef nonnull align 8 %i.k, i64 noundef 1, i64 noundef %i.n, i8 noundef 0) #18 ; 2 uses
  store i64 %i.p, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = load i64, ptr %i.l, align 8, !noundef !4
  %i.r = add i64 %i.q, %i.n                       ; 2 uses
  store i64 %i.r, ptr %i.e, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests71new_resize_hint_with_best_fit_when_there_is_not_enough_memory_available.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #18 ; 2 uses
  %spec.select.i = select i1 %i.t, ptr @30, ptr inttoptr (i64 1 to ptr)
  %spec.select22.i = select i1 %i.t, i64 9, i64 0
  store ptr %spec.select.i, ptr %i.d, align 8, !captures !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %spec.select22.i, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #18 ; 2 uses
  %.sink21.i = select i1 %i.v, ptr @31, ptr inttoptr (i64 1 to ptr)
  %.sink20.i = select i1 %i.v, i64 4, i64 0
  store ptr %.sink21.i, ptr %i.c, align 8, !captures !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink20.i, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.x, align 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.47.0..sroa_idx.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.y, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.411.0..sroa_idx.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.z, align 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.415.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @35, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #17
  unreachable

_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests71new_resize_hint_with_best_fit_when_there_is_not_enough_memory_available.exit: ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val.i = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 163840, i64 noundef 1) #18
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 40, i64 noundef 8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests87___iox2_test_new_resize_hint_with_power_of_two_when_there_is_not_enough_memory_available() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_RNvMNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testsNtB2_11TestContext3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.i) #18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  br i1 %i.o, label %.split.i, label %.split17.i

.split17.i:                                       ; preds = %bb.a
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #17
  unreachable

.split.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.p = tail call noundef i64 @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14bump_allocatorNtB5_13BumpAllocatorNtB7_12ShmAllocator11resize_hint(ptr noundef nonnull align 8 %i.k, i64 noundef 1, i64 noundef %i.n, i8 noundef 1) #18 ; 2 uses
  store i64 %i.p, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = load i64, ptr %i.l, align 8, !noundef !4
  %i.r = add i64 %i.q, %i.n                       ; 2 uses
  %0 = icmp ult i64 %i.r, -9223372036854775807
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split.i
  %1 = call i64 @llvm.usub.sat.i64(i64 %i.r, i64 1)
  %i.s = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false)
  %i.t = sub nuw nsw i64 64, %i.s
  %i.u = shl nuw i64 1, %i.t
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.i
  %storemerge.i = phi i64 [ %i.u, %bb.b ], [ 0, %.split.i ] ; 2 uses
  store i64 %storemerge.i, ptr %i.e, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.v = icmp eq i64 %i.p, %storemerge.i
  br i1 %i.v, label %_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests75new_resize_hint_with_power_of_two_when_there_is_not_enough_memory_available.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #18 ; 2 uses
  %spec.select.i = select i1 %i.w, ptr @30, ptr inttoptr (i64 1 to ptr)
  %spec.select24.i = select i1 %i.w, i64 9, i64 0
  store ptr %spec.select.i, ptr %i.d, align 8, !captures !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %spec.select24.i, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.y = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #18 ; 2 uses
  %.sink22.i = select i1 %i.y, ptr @31, ptr inttoptr (i64 1 to ptr)
  %.sink21.i = select i1 %i.y, i64 4, i64 0
  store ptr %.sink22.i, ptr %i.c, align 8, !captures !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink21.i, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.aa, align 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.47.0..sroa_idx.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.ab, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.411.0..sroa_idx.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.ac, align 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.415.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @38, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #17
  unreachable

_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests75new_resize_hint_with_power_of_two_when_there_is_not_enough_memory_available.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val.i = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 163840, i64 noundef 1) #18
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 40, i64 noundef 8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common39shared_memory_posix_shared_memory_tests44___iox2_test_waiting_for_initialization_works() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [1144 x i8], align 8              ; 7 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [1120 x i8], align 8              ; 9 uses
  %i.v = alloca [1144 x i8], align 8              ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [264 x i8], align 8               ; 4 uses
  %i.z = alloca [312 x i8], align 8               ; 10 uses
  %i.aa = alloca [608 x i8], align 8              ; 6 uses
  %i.ab = alloca [608 x i8], align 8              ; 9 uses
  %i.ac = alloca [824 x i8], align 8              ; 5 uses
  %i.ad = alloca [264 x i8], align 8              ; 4 uses
  %i.ae = alloca [264 x i8], align 8              ; 4 uses
  %i.af = alloca [264 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.ae) #18
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ae) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvXNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB2_13ConfigurationNtNtNtB8_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB8_15dynamic_storage19posix_shared_memory7StorageINtB2_16AllocatorDetailsB1p_EEENtNtCs8Chj7Szqq0n_4core7default7Default7defaultCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(none) dereferenceable(824) %i.ac) #18
  call void @_RNvYINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memory13ConfigurationINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEENtNtB7_29dynamic_storage_configuration27DynamicStorageConfiguration18path_for_with_typeCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.af) #18
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ad) #18
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.ac) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 0, ptr %i.z, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(264) %i.y, i64 264, i1 false)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 280
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 296
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 288
  store i64 0, ptr %i.ag, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 300
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 304
  store i8 3, ptr %.sroa.14.0..sroa_idx.i, align 8
  store i64 1234, ptr %.sroa.6.0..sroa_idx.i, align 8
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %.sroa.9.0..sroa_idx.i, align 4
  store i32 128, ptr %.sroa.8.0..sroa_idx.i, align 8
  call void @_RNvMs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB4_27SharedMemoryCreationBuilder6create(ptr noalias nofree noundef nonnull sret([608 x i8]) align 8 captures(none) dereferenceable(608) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(312) %i.z) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.ah = load i64, ptr %i.aa, align 8, !range !9, !alias.scope !83, !noundef !4
  %i.ai = icmp eq i64 %i.ah, 2
  br i1 %i.ai, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memory12SharedMemoryNtBJ_25SharedMemoryCreationErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.aj, i64 12, i1 false), !noalias !85
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #17, !noalias !86
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memory12SharedMemoryNtBJ_25SharedMemoryCreationErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(608) %i.aa, i64 608, i1 false), !alias.scope !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB5_4Time3now(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.ak = load i32, ptr %i.w, align 8, !range !15, !alias.scope !88, !noundef !4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock4TimeNtBJ_9TimeErrorE6expectCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i, !prof !14

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memory12SharedMemoryNtBJ_25SharedMemoryCreationErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !89
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.an = load i32, ptr %i.am, align 4, !range !16, !alias.scope !88, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !alias.scope !88
  store i32 %i.an, ptr %i.b, align 4, !noalias !89
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !noalias !89
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 26, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #17, !noalias !90
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock4TimeNtBJ_9TimeErrorE6expectCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memory12SharedMemoryNtBJ_25SharedMemoryCreationErrorE6unwrapCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.w, i64 24, i1 false), !alias.scope !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvXNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB2_13ConfigurationNtNtNtB8_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB8_15dynamic_storage19posix_shared_memory7StorageINtB2_16AllocatorDetailsB1p_EEENtNtCs8Chj7Szqq0n_4core7default7Default7defaultCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(none) dereferenceable(824) %i.u) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ar, ptr noundef nonnull align 8 dereferenceable(264) %i.af, i64 264, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 1104
  store i64 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 824
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 832
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 1112
  store i8 1, ptr %i.av, align 8
  store i64 0, ptr %i.at, align 8
  store i32 100000000, ptr %i.au, align 8
  call void @_RNvXs3_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB5_7BuilderNtNtNtBb_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageINtB5_16AllocatorDetailsB1l_EEEINtB9_19SharedMemoryBuilderB1l_INtB5_6MemoryB1l_B2e_EE4openCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef nonnull sret([1144 x i8]) align 8 captures(none) dereferenceable(1144) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1120) %i.u, i8 noundef 3) #18
  %i.aw = load i64, ptr %i.v, align 8, !range !9, !noundef !4
  %.not.i = icmp eq i64 %i.aw, 2
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !11

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock4TimeNtBJ_9TimeErrorE6expectCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ax = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #18 ; 2 uses
  %spec.select.i = select i1 %i.ax, ptr @30, ptr inttoptr (i64 1 to ptr)
  %spec.select58.i = select i1 %i.ax, i64 9, i64 0
  store ptr %spec.select.i, ptr %i.t, align 8, !captures !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %spec.select58.i, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #18 ; 2 uses
  %.sink49.i = select i1 %i.az, ptr @31, ptr inttoptr (i64 1 to ptr)
  %.sink48.i = select i1 %i.az, i64 4, i64 0
  store ptr %.sink49.i, ptr %i.s, align 8, !captures !5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sink48.i, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.45.0..sroa_idx.i, align 8
end_hunk_0
