Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_lock_free_tests_common-ae5541f89ce4c96e.iceoryx2_bb_lock_free_tests_common.1eb666c4024a11a4-cgu.00?download=true
inline.NumInlined: 345
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB8_13ThreadBuilder10spawn_impl13start_routineNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common22spsc_index_queue_tests27push_pop_works_concurrently0s_0uEB1H_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !646
  %i.ah = add i64 %i.x, 1
  store i64 %i.ah, ptr %i.g, align 8, !noalias !646
  %i.ai = icmp eq i64 %i.x, 1000000
  br i1 %i.ai, label %_RNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common22spsc_index_queue_tests27push_pop_works_concurrently0s_0B7_.exit, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.f, %.backedge.i
  br label %.backedge.i

_RNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common22spsc_index_queue_tests27push_pop_works_concurrently0s_0B7_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib4free(ptr noundef nonnull %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret ptr null

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @28, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.k, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsg_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKjf_ENtNtCs8Chj7Szqq0n_4core3fmt7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @9, ptr noundef nonnull %i.i, ptr noundef nonnull @29, ptr noundef nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noalias noundef ptr @_RINvNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB8_13ThreadBuilder10spawn_impl13start_routineNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests26concurrent_acquire_release00uEB1H_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef i64 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread12pthread_self() #9
  %i.p = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread18pthread_setname_np(i64 noundef %i.o, ptr noundef nonnull %i.k) #9
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.k, %bb.b, %bb.a
  %i.r = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !651
  store i64 0, ptr %i.g, align 8, !noalias !651
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8, !noalias !651
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store i64 0, ptr %i.v, align 8, !noalias !651
  call void @_RNvMs5_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrierNtB5_7Barrier4wait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r) #9
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ %.sroa.0.1.i, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !651
  call void @_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.t) #9
  %i.x = load ptr, ptr %i.f, align 8, !noalias !651, !noundef !5 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.w, align 8, !range !7, !noalias !651, !noundef !5
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.i, label %bb.j, !prof !9

bb.f:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.w, align 8, !noalias !651, !noundef !5
  %i.ac = load i64, ptr %i.v, align 8, !alias.scope !652, !noalias !651, !noundef !5 ; 3 uses
  %i.ad = load i64, ptr %i.g, align 8, !range !16, !alias.scope !652, !noalias !651, !noundef !5
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8push_mutCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8grow_oneCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #11
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8push_mutCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8push_mutCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i: ; preds = %bb.g, %bb.f
  %i.af = load ptr, ptr %i.u, align 8, !alias.scope !652, !noalias !651, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ac ; 2 uses
  store ptr %i.x, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.ab, ptr %i.ah, align 8
  %i.ai = add i64 %i.ac, 1
  store i64 %i.ai, ptr %i.v, align 8, !alias.scope !652, !noalias !651
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8push_mutCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i
  %.sroa.0.1.i = phi i64 [ %i.aq, %._crit_edge.i ], [ %.sroa.0.0.i, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexE8push_mutCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !651
  br label %bb.d

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !651
  store ptr @38, ptr %i.e, align 8, !noalias !651, !captures !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !651
  store ptr @30, ptr %i.d, align 8, !noalias !651, !captures !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !651
  %i.aj = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select.i = select i1 %i.aj, ptr @39, ptr inttoptr (i64 1 to ptr)
  %spec.select26.i = select i1 %i.aj, i64 9, i64 0
  store ptr %spec.select.i, ptr %i.c, align 8, !noalias !651, !captures !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select26.i, ptr %i.ak, align 8, !noalias !651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !651
  %i.al = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink23.i = select i1 %i.al, ptr @40, ptr inttoptr (i64 1 to ptr)
  %.sink22.i = select i1 %i.al, i64 4, i64 0
  store ptr %.sink23.i, ptr %i.b, align 8, !noalias !651, !captures !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink22.i, ptr %i.am, align 8, !noalias !651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !651
  store ptr %i.c, ptr %i.a, align 8, !noalias !651
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !651
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.an, align 8, !noalias !651
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !651
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.ao, align 8, !noalias !651
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !651
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.ap, align 8, !noalias !651
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !651
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @41, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #10
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.aq = add i64 %.sroa.0.0.i, 1                 ; 2 uses
  %i.ar = load ptr, ptr %i.u, align 8, !noalias !651, !nonnull !5, !noundef !5
  %i.as = load i64, ptr %i.v, align 8, !noalias !651, !noundef !5 ; 2 uses
  store i64 0, ptr %i.v, align 8, !noalias !651
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.02.020.i = phi i64 [ %i.av, %.lr.ph.i ], [ 0, %bb.j ] ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %.sroa.02.020.i
  %i.av = add nuw i64 %.sroa.02.020.i, 1          ; 2 uses
  call void @_RNvXs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_11UniqueIndexNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au) #9
  %i.aw = icmp eq i64 %i.av, %i.as
  br i1 %i.aw, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %i.ax = icmp eq i64 %i.aq, 10000
  br i1 %i.ax, label %_RNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests26concurrent_acquire_release00B7_.exit, label %bb.h

_RNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests26concurrent_acquire_release00B7_.exit: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !651
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set11UniqueIndexENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !651
  call void @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib4free(ptr noundef nonnull %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret ptr null

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @28, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.k, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsg_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKjf_ENtNtCs8Chj7Szqq0n_4core3fmt7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @9, ptr noundef nonnull %i.i, ptr noundef nonnull @29, ptr noundef nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noalias noundef ptr @_RINvNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB8_13ThreadBuilder10spawn_impl13start_routineNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_00uEB1H_(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [1024 x i8], align 16             ; 7 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef i64 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread12pthread_self() #9
  %i.p = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread18pthread_setname_np(i64 noundef %i.o, ptr noundef nonnull %i.k) #9
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.57.0.copyload = load ptr, ptr %.sroa.57.0..sroa_idx, align 8 ; 2 uses
  call void @_RNvMs5_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrierNtB5_7Barrier4wait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.copyload) #9, !noalias !658
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.r = load atomic i8, ptr %.sroa.4.0.copyload monotonic, align 1, !noalias !658
  %.not15.i = icmp eq i8 %i.r, 0
  br i1 %.not15.i, label %.lr.ph.i, label %_RNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_00B7_.exit

.lr.ph.i:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload) ]
  br label %vector.ph

vector.ph:                                        ; preds = %middle.block, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !658
  call void @_RNvMs7_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spmc19unrestricted_atomicINtB5_18UnrestrictedAtomicAhj400_E4loadCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull sret([1024 x i8]) align 1 captures(none) dereferenceable(1024) %i.e, ptr noundef nonnull align 8 %.sroa.57.0.copyload) #9, !noalias !658
  %1 = load <16 x i8>, ptr %i.e, align 16
  %broadcast.splat = shufflevector <16 x i8> %1, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim.1, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body.interim.1 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %index
  %wide.load = load <16 x i8>, ptr %i.s, align 16, !alias.scope !659, !noalias !658
  %wide.load.fr = freeze <16 x i8> %wide.load
  %i.t = icmp ne <16 x i8> %broadcast.splat, %wide.load.fr
  %i.u = bitcast <16 x i1> %i.t to i16
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.w, align 16, !alias.scope !659, !noalias !658
  %wide.load.fr.1 = freeze <16 x i8> %wide.load.1
  %i.x = icmp ne <16 x i8> %broadcast.splat, %wide.load.fr.1
  %i.y = bitcast <16 x i1> %i.x to i16
  %.not.1 = icmp eq i16 %i.y, 0
  br i1 %.not.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %index.next.1 = add nuw nsw i64 %index, 32      ; 2 uses
  %i.z = icmp eq i64 %index.next.1, 1024
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !657

vector.early.exit:                                ; preds = %vector.body.interim, %vector.body
  store i8 0, ptr %i.f, align 1, !noalias !658
  store ptr %i.f, ptr %i.g, align 8, !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !658
  store ptr @38, ptr %i.d, align 8, !noalias !658, !captures !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !658
  %i.aa = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9, !noalias !658 ; 2 uses
  %spec.select.i = select i1 %i.aa, ptr @39, ptr inttoptr (i64 1 to ptr)
  %spec.select19.i = select i1 %i.aa, i64 9, i64 0
  store ptr %spec.select.i, ptr %i.c, align 8, !noalias !658, !captures !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select19.i, ptr %i.ab, align 8, !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !658
  %i.ac = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9, !noalias !658 ; 2 uses
  %.sink18.i = select i1 %i.ac, ptr @40, ptr inttoptr (i64 1 to ptr)
  %.sink17.i = select i1 %i.ac, i64 4, i64 0
  store ptr %.sink18.i, ptr %i.b, align 8, !noalias !658, !captures !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink17.i, ptr %i.ad, align 8, !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !658
  store ptr %i.c, ptr %i.a, align 8, !noalias !658
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !658
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.ae, align 8, !noalias !658
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !658
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.af, align 8, !noalias !658
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !658
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.ag, align 8, !noalias !658
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !658
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @63, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #10, !noalias !658
  unreachable

middle.block:                                     ; preds = %vector.body.interim.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !658
  %i.ah = load atomic i8, ptr %.sroa.4.0.copyload monotonic, align 1, !noalias !658
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %vector.ph, label %_RNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_00B7_.exit

_RNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_00B7_.exit: ; preds = %middle.block, %bb.c
  call void @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib4free(ptr noundef nonnull %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret ptr null

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @28, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.k, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsg_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKjf_ENtNtCs8Chj7Szqq0n_4core3fmt7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @9, ptr noundef nonnull %i.i, ptr noundef nonnull @29, ptr noundef nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noalias noundef ptr @_RINvNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB8_13ThreadBuilder10spawn_impl13start_routineNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_0s_0uEB1H_(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 1              ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread12pthread_self() #9
  %i.k = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread18pthread_setname_np(i64 noundef %i.j, ptr noundef nonnull %i.f) #9
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.g, %bb.b, %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @_RNvMs5_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrierNtB5_7Barrier4wait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.copyload) #9, !noalias !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !664
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.m = call { i1, i8 } @_RNvMs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spmc19unrestricted_atomicNtB5_22UnrestrictedAtomicMgmt27___internal_acquire_producer(ptr noundef nonnull align 8 %.sroa.4.0.copyload) #9, !noalias !664
  %i.n = extractvalue { i1, i8 } %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #10, !noalias !664
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %.sroa.4.0.copyload, ptr %i.b, align 8, !noalias !664
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.02.04.i = phi i64 [ 0, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.02.04.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !664
  %.lhs.trunc.i = trunc nuw nsw i64 %.sroa.02.04.i to i32
  %i.p = urem i32 %.lhs.trunc.i, 255
  %i.q = trunc nuw i32 %i.p to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.a, i8 %i.q, i64 1024, i1 false), !noalias !664
  call void @_RNvMs7_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spmc19unrestricted_atomicINtB5_18UnrestrictedAtomicAhj400_E5storeCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noundef nonnull align 8 %.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1024) %i.a) #9, !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !664
  %exitcond.not.i = icmp eq i64 %i.o, 100000
  br i1 %exitcond.not.i, label %_RNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_0s_0B7_.exit, label %bb.f

_RNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_0s_0B7_.exit: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  store atomic i8 1, ptr %.sroa.5.0.copyload monotonic, align 1, !noalias !664
  call void @_RNvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spmc19unrestricted_atomicINtB4_8ProducerAhj400_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #9, !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !664
  call void @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib4free(ptr noundef nonnull %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr null

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @28, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsg_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKjf_ENtNtCs8Chj7Szqq0n_4core3fmt7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @9, ptr noundef nonnull %i.d, ptr noundef nonnull @29, ptr noundef nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noalias noundef ptr @_RINvNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB8_13ThreadBuilder10spawn_impl13start_routineNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests43get_ptr_write_and_update_works_concurrently00uEB1H_(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread12pthread_self() #9
  %i.i = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread18pthread_setname_np(i64 noundef %i.h, ptr noundef nonnull %i.d) #9
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.i, %bb.b, %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @_RNvMs5_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrierNtB5_7Barrier4wait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.copyload) #9, !noalias !667
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.k = load atomic i8, ptr %.sroa.4.0.copyload monotonic, align 1, !noalias !667
  %.not1.i = icmp eq i8 %i.k, 0
  br i1 %.not1.i, label %.lr.ph.i, label %_RNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests43get_ptr_write_and_update_works_concurrently00B7_.exit

.lr.ph.i:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.02.i = phi i128 [ 0, %.lr.ph.i ], [ %i.l, %bb.h ]
end_hunk_0
