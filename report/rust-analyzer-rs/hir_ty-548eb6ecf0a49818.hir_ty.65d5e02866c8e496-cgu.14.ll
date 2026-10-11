Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.14?download=true
inline.NumInlined: 5511
inline.NumDeleted: 2265
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext23make_path_as_body_const:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1777
  %i.d = load i8, ptr %i.c, align 1, !range !15, !noundef !9
  %i.e = xor i8 %i.d, 1
  %not. = zext nneg i8 %i.e to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !9, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !9, !align !12, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  call void @_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval13path_to_const(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @448, i32 noundef %not., i32 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.k = load i64, ptr %i.b, align 8, !range !57, !noundef !9
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = call noundef nonnull ptr @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty5infer5unifyNtB4_14InferenceTable14next_const_var(ptr noundef nonnull align 8 %i.l, i32 noundef 4, i32 undef)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !9, !noundef !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.m, %bb.b ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext23write_method_resolution(ptr noalias nofree noundef align 8 dereferenceable(1784) %0, i32 noundef %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = atomicrmw add ptr %4, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg18GenericArgsStorageE8to_ownedB1a_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #40
  unreachable

_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg18GenericArgsStorageE8to_ownedB1a_.exit: ; preds = %bb.a
  store i32 %2, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %3, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 904
  call void @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprETNtB1l_10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertB2g_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load i32, ptr %i.c, align 8, !noundef !9
  %i.i = icmp eq i32 %.val, 0
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsileJQcQObtj_7hir_def10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEEEB1E_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg18GenericArgsStorageE8to_ownedB1a_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !9, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  store ptr %.val1, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %i.m, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsileJQcQObtj_7hir_def10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEEEB1E_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsileJQcQObtj_7hir_def10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEEEB1E_.exit: ; preds = %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg18GenericArgsStorageE8to_ownedB1a_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext24resolve_variant_on_alias(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1784) %1, i32 noundef %2, ptr noundef nonnull %3, i64 noundef range(i64 0, 2) %4, i64 %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc nuw i64 %4 to i1
  br i1 %i.a, label %.split22, label %.split

.split22:                                         ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8segments(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %6)
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.d = icmp ugt i64 %5, %i.c
  br i1 %i.d, label %bb.b, label %_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_alias0B9_.exit, !prof !10

bb.b:                                             ; preds = %.split22
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %5, i64 noundef %i.c, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #42
  unreachable

_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_alias0B9_.exit: ; preds = %.split22
  %i.e = sub nuw i64 %i.c, %5
  %.not.i = icmp ne i64 %i.c, %5
  %.sroa.02.0.i = zext i1 %.not.i to i64
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.02.0.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.e, 1
  br label %.split

.split:                                           ; preds = %bb.a, %_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_alias0B9_.exit
  %phi.call = phi { i64, i64 } [ %i.g, %_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_alias0B9_.exit ], [ { i64 0, i64 undef }, %bb.a ] ; 2 uses
  %i.h = extractvalue { i64, i64 } %phi.call, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = and i32 %2, 2147483647
  %.lobit.i = lshr i32 %2, 31
  %i.k = tail call noundef nonnull ptr @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty5infer5unifyNtB4_14InferenceTable29try_structurally_resolve_type(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %i.i, i32 noundef %.lobit.i, i32 %i.j, ptr noundef nonnull %3) ; 10 uses
  %i.l = trunc nuw i64 %i.h to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split
  %i.m = extractvalue { i64, i64 } %phi.call, 1
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %bb.i

bb.d:                                             ; preds = %.split
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 8, !noalias !7287 ; 2 uses
  %i.o = icmp ne i32 %.sroa.0.0.copyload.i, 27
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i32 %.sroa.0.0.copyload.i, 7
  br i1 %i.p, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit, label %_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_aliass0_0B9_.exit

_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit: ; preds = %bb.d
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.5.sroa.6.0.copyload.i = load i32, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !7287 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.5.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 4, !noalias !7287 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.sroa.0.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !7287
  switch i8 %.sroa.5.sroa.0.0.copyload.i, label %bb.e [
    i8 0, label %_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_aliass0_0B9_.exit
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.e:                                             ; preds = %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit
  br label %_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_aliass0_0B9_.exit

bb.g:                                             ; preds = %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit
  br label %_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_aliass0_0B9_.exit

_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_aliass0_0B9_.exit: ; preds = %bb.d, %bb.g, %bb.f, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit
  %.sroa.7.0 = phi i32 [ %.sroa.5.sroa.6.0.copyload.i, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit ], [ undef, %bb.g ], [ %.sroa.5.sroa.6.0.copyload.i, %bb.f ], [ undef, %bb.d ]
  %.sroa.5.0 = phi i32 [ %.sroa.5.sroa.5.0.copyload.i, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit ], [ undef, %bb.g ], [ %.sroa.5.sroa.5.0.copyload.i, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0 = phi i32 [ 1, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit ], [ -1, %bb.g ], [ 2, %bb.f ], [ -1, %bb.d ]
  store ptr %i.k, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0, ptr %i.q, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.r = tail call { ptr, i64 } @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8segments(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %6) ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  %.not23 = icmp eq i64 %i.s, 0
  br i1 %.not23, label %bb.j, label %bb.k, !prof !10

bb.i:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %.val25 = load ptr, ptr %i.t, align 8, !nonnull !9, !align !12, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %.val25, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  store ptr %i.v, ptr %0, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #42
  unreachable

bb.k:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.k, align 8, !noalias !7288 ; 2 uses
  %i.w = icmp ne i32 %.sroa.0.0.copyload.i28, 27
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i32 %.sroa.0.0.copyload.i28, 7
  br i1 %i.x, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit42, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit42.thread

_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit42: ; preds = %bb.k
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.sroa.0.0.copyload.i37 = load i8, ptr %.sroa.5.0..sroa_idx.i36, align 8, !noalias !7288
  %i.y = icmp eq i8 %.sroa.5.sroa.0.0.copyload.i37, 2
  br i1 %i.y, label %bb.l, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit42.thread

bb.l:                                             ; preds = %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit42
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.5.sroa.5.0.copyload.i33 = load i32, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i32, align 4, !noalias !7288
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.5.sroa.6.0.copyload.i31 = load i32, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i30, align 8, !noalias !7288
  %i.z = extractvalue { ptr, i64 } %i.r, 0
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.s
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1424
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !9, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !9, !align !12, !noundef !9
  %i.ag = tail call noundef nonnull align 8 ptr @_RNvMs2j_NtCsileJQcQObtj_7hir_def10signaturesNtB6_12EnumVariants2of(ptr noundef nonnull %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.af, i32 noundef %.sroa.5.sroa.5.0.copyload.i33, i32 noundef %.sroa.5.sroa.6.0.copyload.i31)
  %i.ah = tail call { i32, i32 } @_RNvMs3_NtCsileJQcQObtj_7hir_def10signaturesNtB5_12EnumVariants7variant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab) ; 2 uses
  %i.ai = extractvalue { i32, i32 } %i.ah, 0      ; 2 uses
  %.not24 = icmp eq i32 %i.ai, 0
  br i1 %.not24, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit42.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = extractvalue { i32, i32 } %i.ah, 1
  store ptr %i.k, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ak, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ai, ptr %.sroa.415.0..sroa_idx, align 4
  br label %bb.n

bb.n:                                             ; preds = %_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_aliass0_0B9_.exit, %bb.i, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit42.thread, %bb.m
  %.sink = phi i64 [ 16, %_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_aliass0_0B9_.exit ], [ 8, %bb.i ], [ 8, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit42.thread ], [ 16, %bb.m ]
  %.sroa.7.0.sink = phi i32 [ %.sroa.7.0, %_RNCNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB7_16InferenceContext24resolve_variant_on_aliass0_0B9_.exit ], [ -1, %bb.i ], [ -1, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit42.thread ], [ %i.aj, %bb.m ]
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i32 %.sroa.7.0.sink, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit42.thread: ; preds = %bb.k, %bb.l, %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty6as_adt.exit42
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %.val = load ptr, ptr %i.al, align 8, !nonnull !9, !align !12, !noundef !9
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !9, !noundef !9
  store ptr %i.an, ptr %0, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext25expr_ty_after_adjustments(ptr noundef nonnull align 8 captures(address, read_provenance) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !7304, !noalias !7305, !noundef !9
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.g = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7306)
  call void @llvm.experimental.noalias.scope.decl(metadata !7307)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7308, !noalias !7309, !noundef !9 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !7308, !noalias !7309, !nonnull !9, !noundef !9 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.k      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !7310 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -24
  %i.y = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtB2_10EquivalentBq_E10equivalentCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !7311
  br i1 %i.y, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit, label %bb.d, !prof !13

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit.thread, !prof !10

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  br label %bb.c

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit: ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !9 ; 2 uses
  %.not5 = icmp eq i64 %i.ah, 0
  br i1 %.not5, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit.thread, label %bb.g

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !7312)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !7312, !noundef !9
  %i.ak = zext i32 %1 to i64                      ; 2 uses
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !7312, !nonnull !9, !noundef !9
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ak
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !7312, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %.thread.i.i, label %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext7expr_ty.exit

.thread.i.i:                                      ; preds = %bb.f, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.val.i.pn.pre.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !7312
  br label %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext7expr_ty.exit

bb.g:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit
  %i.ar = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !9, !noundef !9
  %i.at = getelementptr [16 x i8], ptr %i.as, i64 %i.ah
  %i.au = getelementptr i8, ptr %i.at, i64 -16
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !9, !noundef !9
  br label %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext7expr_ty.exit

_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext7expr_ty.exit: ; preds = %.thread.i.i, %bb.f, %bb.g
  %.pn = phi ptr [ %i.av, %bb.g ], [ %.val.i.pn.pre.i.i, %.thread.i.i ], [ %i.ap, %bb.f ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext25structurally_resolve_type(ptr noalias nofree noundef nonnull align 8 dereferenceable(1784) %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = and i32 %1, 2147483647                   ; 2 uses
  %.lobit.i = lshr i32 %1, 31                     ; 2 uses
  %i.d = tail call noundef nonnull ptr @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty5infer5unifyNtB4_14InferenceTable29try_structurally_resolve_type(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %i.b, i32 noundef %.lobit.i, i32 %i.c, ptr noundef nonnull %2) ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 8 ; 2 uses
  %i.e = icmp ne i32 %.sroa.0.0.copyload, 27
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i32 %.sroa.0.0.copyload, 29
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %i.g = icmp eq i32 %.sroa.5.0.copyload, 0
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7315)
  %i.h = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %2), !noalias !7315
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.m = tail call noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg4TermuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull %i.k)
  br i1 %i.m, label %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext32type_must_be_known_at_this_point.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7315
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.lobit.i, ptr %i.n, align 8, !noalias !7315
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.c, ptr %i.o, align 4, !noalias !7315
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.p, align 16, !noalias !7315
  store i64 -9223372036854775774, ptr %i.a, align 16, !noalias !7315
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1720
  call void @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty5infer11diagnosticsNtB2_11Diagnostics4push(ptr noundef nonnull align 8 %i.q, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7315
  br label %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext32type_must_be_known_at_this_point.exit

_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext32type_must_be_known_at_this_point.exit: ; preds = %bb.c, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !7315, !nonnull !9, !align !12, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !9, !noundef !9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext32type_must_be_known_at_this_point.exit
  %.sroa.0.0 = phi ptr [ %i.u, %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext32type_must_be_known_at_this_point.exit ], [ %i.d, %bb.b ], [ %i.d, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext31record_deferred_call_resolution(ptr noalias nofree noundef nonnull align 8 dereferenceable(1784) %0, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1512
  invoke void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6callee22DeferredCallResolutionENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryB2G_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %1)
end_hunk_0
