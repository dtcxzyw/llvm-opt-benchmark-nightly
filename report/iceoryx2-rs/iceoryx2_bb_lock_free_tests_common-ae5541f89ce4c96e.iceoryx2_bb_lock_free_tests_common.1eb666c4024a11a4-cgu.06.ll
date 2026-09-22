Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_lock_free_tests_common-ae5541f89ce4c96e.iceoryx2_bb_lock_free_tests_common.1eb666c4024a11a4-cgu.06?download=true
inline.NumInlined: 52
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests35zero_borrowed_indices_in_locked_set:bb.a
  br i1 %i.al, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.am = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select37 = select i1 %i.am, ptr @12, ptr inttoptr (i64 1 to ptr)
  %spec.select38 = select i1 %i.am, i64 9, i64 0
  store ptr %spec.select37, ptr %i.g, align 8, !captures !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select38, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ao = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink35 = select i1 %i.ao, ptr @13, ptr inttoptr (i64 1 to ptr)
  %.sink34 = select i1 %i.ao, i64 4, i64 0
  store ptr %.sink35, ptr %i.f, align 8, !captures !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink34, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.413.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.j, ptr %i.aq, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.417.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.ar, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.as, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @63, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #10
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests36release_makes_space_for_more_indices() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1064 x i8], align 8              ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [1056 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs6_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setINtB5_26StaticRobustUniqueIndexSetKj80_E25new_with_reduced_capacityCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull sret([1064 x i8]) align 8 captures(none) dereferenceable(1064) %i.d, i64 noundef 128) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.v = load i8, ptr %i.d, align 8, !range !4, !alias.scope !192, !noalias !191, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !193
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.y = load i8, ptr %i.x, align 1, !range !4, !alias.scope !192, !noalias !191, !noundef !5
  store i8 %i.y, ptr %i.b, align 1, !noalias !193
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 35, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #10, !noalias !193
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(1056) %i.z, i64 1056, i1 false), !alias.scope !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB2_7OwnerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.t, i64 noundef 123) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.aa = load i64, ptr %i.t, align 8, !range !7, !alias.scope !194, !noalias !195, !noundef !5
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #10, !noalias !194
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ac, align 8, !alias.scope !194, !noalias !195 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.e

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %i.ad = call noundef i8 @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7release(ptr noundef nonnull align 8 %i.u, i64 noundef 64, i64 noundef %.sroa.0.0.copyload.i, i1 noundef zeroext true) #9
  %.not = icmp eq i8 %i.ad, 2
  br i1 %.not, label %bb.g, label %bb.h, !prof !6

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %.sroa.036.045 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit ], [ %i.ai, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.s, ptr noundef nonnull align 8 %i.u, i64 noundef %.sroa.0.0.copyload.i) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.ae = load i8, ptr %i.s, align 8, !range !4, !alias.scope !196, !noalias !197, !noundef !5
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !198
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !4, !alias.scope !196, !noalias !197, !noundef !5
  store i8 %i.ah, ptr %i.c, align 1, !noalias !198
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #10, !noalias !196
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.e
  %i.ai = add nuw nsw i64 %.sroa.036.045, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %exitcond.not = icmp eq i64 %i.ai, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.aj = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.aj, ptr @12, ptr inttoptr (i64 1 to ptr)
  %spec.select57.a = select i1 %i.aj, i64 9, i64 0
  store ptr %spec.select, ptr %i.r, align 8, !captures !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select57.a, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.al = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink48 = select i1 %i.al, ptr @13, ptr inttoptr (i64 1 to ptr)
  %.sink47 = select i1 %i.al, i64 4, i64 0
  store ptr %.sink48, ptr %i.q, align 8, !captures !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink47, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.47.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.an, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @83, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #10
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.o, ptr noundef nonnull align 8 %i.u, i64 noundef %.sroa.0.0.copyload.i) #9
  %i.ao = load i8, ptr %i.o, align 8, !range !4, !noundef !5
  %i.ap = icmp eq i8 %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.ap, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select58.a = select i1 %i.aq, ptr @12, ptr inttoptr (i64 1 to ptr)
  %spec.select59.a = select i1 %i.aq, i64 9, i64 0
  store ptr %spec.select58.a, ptr %i.n, align 8, !captures !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select59.a, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.as = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink52 = select i1 %i.as, ptr @13, ptr inttoptr (i64 1 to ptr)
  %.sink51 = select i1 %i.as, i64 4, i64 0
  store ptr %.sink52, ptr %i.m, align 8, !captures !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sink51, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.415.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.au, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.419.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @85, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #10
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noundef nonnull align 8 %i.u, i64 noundef %.sroa.0.0.copyload.i) #9
  %i.av = load i8, ptr %i.i, align 8, !range !4, !noundef !5
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !range !4
  %storemerge = select i1 %i.aw, i8 %i.ay, i8 2   ; 2 uses
  store i8 %storemerge, ptr %i.j, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @57, ptr %i.h, align 8, !captures !9
  %i.az = icmp eq i8 %storemerge, 0
  br i1 %i.az, label %bb.l, label %bb.k, !prof !14

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ba = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select60.a = select i1 %i.ba, ptr @12, ptr inttoptr (i64 1 to ptr)
  %spec.select61 = select i1 %i.ba, i64 9, i64 0
  store ptr %spec.select60.a, ptr %i.g, align 8, !captures !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select61, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bc = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink56 = select i1 %i.bc, ptr @13, ptr inttoptr (i64 1 to ptr)
  %.sink55 = select i1 %i.bc, i64 4, i64 0
  store ptr %.sink56, ptr %i.f, align 8, !captures !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink55, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.423.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.be, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureENtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.427.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.bf, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureENtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.431.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.bg, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.435.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #10
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests37___iox2_test_acquire_and_release_works() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests25acquire_and_release_works() #9
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests37___iox2_test_capacity_is_set_correctly() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests25capacity_is_set_correctly() #9
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests37indices_are_between_zero_and_capacity() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1064 x i8], align 8              ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [1056 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs6_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setINtB5_26StaticRobustUniqueIndexSetKj80_E25new_with_reduced_capacityCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull sret([1064 x i8]) align 8 captures(none) dereferenceable(1064) %i.d, i64 noundef 128) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.n = load i8, ptr %i.d, align 8, !range !4, !alias.scope !209, !noalias !208, !noundef !5
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !210
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !4, !alias.scope !209, !noalias !208, !noundef !5
  store i8 %i.q, ptr %i.b, align 1, !noalias !210
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 35, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #10, !noalias !210
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(1056) %i.r, i64 1056, i1 false), !alias.scope !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB2_7OwnerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, i64 noundef 123) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.s = load i64, ptr %i.l, align 8, !range !7, !alias.scope !211, !noalias !212, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #10, !noalias !211
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !alias.scope !211, !noalias !212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, %bb.h
  %.sroa.017.021 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit ], [ %i.aj, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.copyload.i) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.w = load i8, ptr %i.j, align 8, !range !4, !alias.scope !213, !noalias !214, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !215
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !4, !alias.scope !213, !noalias !214, !noundef !5
  store i8 %i.z, ptr %i.c, align 1, !noalias !215
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #10, !noalias !213
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.e
  %i.aa = load i64, ptr %i.v, align 8, !alias.scope !213, !noalias !214, !noundef !5 ; 2 uses
  store i64 %i.aa, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @30, ptr %i.h, align 8, !captures !9
  %i.ab = icmp ult i64 %i.aa, 128
  br i1 %i.ab, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ac = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.ac, ptr @12, ptr inttoptr (i64 1 to ptr)
  %spec.select25 = select i1 %i.ac, i64 9, i64 0
  store ptr %spec.select, ptr %i.g, align 8, !captures !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select25, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ae = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink24 = select i1 %i.ae, ptr @13, ptr inttoptr (i64 1 to ptr)
  %.sink23 = select i1 %i.ae, i64 4, i64 0
  store ptr %.sink24, ptr %i.f, align 8, !captures !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink23, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.44.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.i, ptr %i.ag, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.48.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.ah, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.ai, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @92, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #10
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %i.aj = add nuw nsw i64 %.sroa.017.021, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %exitcond.not = icmp eq i64 %i.aj, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests38___iox2_test_concurrent_acquire_release() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests26concurrent_acquire_release() #9
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests38cannot_acquire_indices_from_locked_set() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests38cannot_acquire_indices_from_locked_set:bb.a
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !227
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !4, !alias.scope !226, !noalias !225, !noundef !5
  store i8 %i.u, ptr %i.b, align 1, !noalias !227
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 35, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #10, !noalias !227
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(1056) %i.v, i64 1056, i1 false), !alias.scope !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB2_7OwnerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, i64 noundef 123) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.w = load i64, ptr %i.p, align 8, !range !7, !alias.scope !228, !noalias !229, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #10, !noalias !228
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !alias.scope !228, !noalias !229 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.o, ptr noundef nonnull align 8 %i.q, i64 noundef %.sroa.0.0.copyload.i) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.z = load i8, ptr %i.o, align 8, !range !4, !alias.scope !230, !noalias !231, !noundef !5
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !232
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !range !4, !alias.scope !230, !noalias !231, !noundef !5
  store i8 %i.ac, ptr %i.c, align 1, !noalias !232
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #10, !noalias !230
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !230, !noalias !231, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.af = call noundef i8 @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7release(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ae, i64 noundef %.sroa.0.0.copyload.i, i1 noundef zeroext false) #9
  %.not = icmp eq i8 %i.af, 2
  br i1 %.not, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ag = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.ag, ptr @12, ptr inttoptr (i64 1 to ptr)
  %spec.select39 = select i1 %i.ag, i64 9, i64 0
  store ptr %spec.select, ptr %i.n, align 8, !captures !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select39, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ai = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink34 = select i1 %i.ai, ptr @13, ptr inttoptr (i64 1 to ptr)
  %.sink33 = select i1 %i.ai, i64 4, i64 0
  store ptr %.sink34, ptr %i.m, align 8, !captures !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sink33, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.ak, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @79, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #10
  unreachable

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noundef nonnull align 8 %i.q, i64 noundef %.sroa.0.0.copyload.i) #9
  %i.al = load i8, ptr %i.i, align 8, !range !4, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !range !4
  %storemerge = select i1 %i.am, i8 %i.ao, i8 2   ; 2 uses
  store i8 %storemerge, ptr %i.j, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @97, ptr %i.h, align 8, !captures !9
  %i.ap = icmp eq i8 %storemerge, 1
  br i1 %i.ap, label %bb.h, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select40 = select i1 %i.aq, ptr @12, ptr inttoptr (i64 1 to ptr)
  %spec.select41 = select i1 %i.aq, i64 9, i64 0
  store ptr %spec.select40, ptr %i.g, align 8, !captures !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select41, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.as = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink38 = select i1 %i.as, ptr @13, ptr inttoptr (i64 1 to ptr)
  %.sink37 = select i1 %i.as, i64 4, i64 0
  store ptr %.sink38, ptr %i.f, align 8, !captures !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink37, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.414.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.au, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureENtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.418.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.av, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureENtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.422.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.aw, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @98, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests40when_full_acquire_returns_out_of_indices() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1064 x i8], align 8              ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [1056 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs6_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setINtB5_26StaticRobustUniqueIndexSetKj80_E25new_with_reduced_capacityCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull sret([1064 x i8]) align 8 captures(none) dereferenceable(1064) %i.d, i64 noundef 128) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.o = load i8, ptr %i.d, align 8, !range !4, !alias.scope !243, !noalias !242, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !4, !alias.scope !243, !noalias !242, !noundef !5
  store i8 %i.r, ptr %i.b, align 1, !noalias !244
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 35, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #10, !noalias !244
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(1056) %i.s, i64 1056, i1 false), !alias.scope !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB2_7OwnerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, i64 noundef 123) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.t = load i64, ptr %i.m, align 8, !range !7, !alias.scope !245, !noalias !246, !noundef !5
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #10, !noalias !245
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !alias.scope !245, !noalias !246 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.e

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.copyload.i) #9
  %i.w = load i8, ptr %i.i, align 8, !range !4, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !4
  %storemerge = select i1 %i.x, i8 %i.z, i8 2     ; 2 uses
  store i8 %storemerge, ptr %i.j, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @57, ptr %i.h, align 8, !captures !9
  %i.aa = icmp eq i8 %storemerge, 0
  br i1 %i.aa, label %bb.h, label %bb.g, !prof !14

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %.sroa.018.024 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit ], [ %i.af, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.copyload.i) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.ab = load i8, ptr %i.l, align 8, !range !4, !alias.scope !247, !noalias !248, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !249
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !range !4, !alias.scope !247, !noalias !248, !noundef !5
  store i8 %i.ae, ptr %i.c, align 1, !noalias !249
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #10, !noalias !247
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.e
  %i.af = add nuw nsw i64 %.sroa.018.024, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %exitcond.not = icmp eq i64 %i.af, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ag = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.ag, ptr @12, ptr inttoptr (i64 1 to ptr)
  %spec.select28 = select i1 %i.ag, i64 9, i64 0
  store ptr %spec.select, ptr %i.g, align 8, !captures !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select28, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ai = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink27 = select i1 %i.ai, ptr @13, ptr inttoptr (i64 1 to ptr)
  %.sink26 = select i1 %i.ai, i64 4, i64 0
  store ptr %.sink27, ptr %i.f, align 8, !captures !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink26, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.45.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.ak, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureENtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.49.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.al, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureENtB6_5Debug3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.413.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.am, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #10
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests43___iox2_test_new_set_is_not_locked_and_empty() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests31new_set_is_not_locked_and_empty() #9
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests43___iox2_test_releasing_non_owned_index_fails() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests31releasing_non_owned_index_fails() #9
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests43recover_of_locked_set_always_returns_locked() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1064 x i8], align 8              ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [1056 x i8], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs6_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setINtB5_26StaticRobustUniqueIndexSetKj80_E25new_with_reduced_capacityCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull sret([1064 x i8]) align 8 captures(none) dereferenceable(1064) %i.d, i64 noundef 128) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.r = load i8, ptr %i.d, align 8, !range !4, !alias.scope !260, !noalias !259, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !261
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !4, !alias.scope !260, !noalias !259, !noundef !5
  store i8 %i.u, ptr %i.b, align 1, !noalias !261
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 35, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #10, !noalias !261
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(1056) %i.v, i64 1056, i1 false), !alias.scope !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB2_7OwnerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.o, i64 noundef 123) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.w = load i64, ptr %i.o, align 8, !range !7, !alias.scope !262, !noalias !263, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #10, !noalias !262
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set26StaticRobustUniqueIndexSetKj80_ENtNtBM_22unique_index_set_enums24UniqueIndexCreationErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !alias.scope !262, !noalias !263 ; 3 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7acquire(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.n, ptr noundef nonnull align 8 %i.q, i64 noundef %.sroa.0.0.copyload.i) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.z = load i8, ptr %i.n, align 8, !range !4, !alias.scope !264, !noalias !265, !noundef !5
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !6

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !266
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !range !4, !alias.scope !264, !noalias !265, !noundef !5
  store i8 %i.ac, ptr %i.c, align 1, !noalias !266
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #10, !noalias !264
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set7OwnerIdNtBJ_15OwnerIdNewErrorE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !264, !noalias !265, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.af = call noundef i8 @_RNvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSet7release(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ae, i64 noundef %.sroa.0.0.copyload.i, i1 noundef zeroext false) #9
  %.not = icmp eq i8 %i.af, 2
  br i1 %.not, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ag = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.ag, ptr @12, ptr inttoptr (i64 1 to ptr)
  %spec.select33 = select i1 %i.ag, i64 9, i64 0
  store ptr %spec.select, ptr %i.m, align 8, !captures !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %spec.select33, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ai = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink28 = select i1 %i.ai, ptr @13, ptr inttoptr (i64 1 to ptr)
  %.sink27 = select i1 %i.ai, i64 4, i64 0
  store ptr %.sink28, ptr %i.l, align 8, !captures !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sink27, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.42.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.ak, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @79, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #10
  unreachable

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums28UniqueIndexSetAcquireFailureE6unwrapCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.al = call noundef zeroext i1 @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB6_20RobustUniqueIndexSet7recoverNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common34mpmc_robust_unique_index_set_tests43recover_of_locked_set_always_returns_locked0NCB1Q_s_0EB1U_(ptr noundef nonnull align 8 %i.q, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #9 ; 2 uses
  %i.am = zext i1 %i.al to i8
  store i8 %i.am, ptr %i.i, align 1
  store ptr %i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @57, ptr %i.h, align 8, !captures !9
  br i1 %i.al, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
end_hunk_1
