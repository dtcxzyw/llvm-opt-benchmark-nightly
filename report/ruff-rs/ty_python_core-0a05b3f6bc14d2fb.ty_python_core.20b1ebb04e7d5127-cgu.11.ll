Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.11?download=true
inline.NumInlined: 1313
inline.NumDeleted: 728
begin_hunk_0_@_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCs2O29vuvTAEJ_14ty_python_core2db2DbEL_EE10initializeNCINvB1f_11get_or_initNCNvMs_NvNtB2F_10re_exports1__NtB3Z_29exported_names_Configuration_14fn_ingredient_0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2F_:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB1f_11get_or_initNCNvB1N_17empty_cycle_heads0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2O29vuvTAEJ_14ty_python_core(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !517, !noalias !518, !align !10, !noundef !5 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !517, !noalias !518
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB1d_11get_or_initNCNvB1L_17empty_cycle_heads0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #34, !noalias !519
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsE10initializeNCINvB1d_11get_or_initNCNvB1L_17empty_cycle_heads0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a
  %i.c = tail call noundef i64 @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadE13with_capacityCs2O29vuvTAEJ_14ty_python_core(i64 noundef 0), !noalias !519
  store i64 %i.c, ptr %i.b, align 8, !noalias !519
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtCs2O29vuvTAEJ_14ty_python_core7use_def16ConstraintTablesE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1O_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !525, !noalias !526, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !525, !noalias !526
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !9, !noalias !527, !noundef !5
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtCs2O29vuvTAEJ_14ty_python_core7use_def16ConstraintTablesE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1M_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #34, !noalias !527
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #34, !noalias !527
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtCs2O29vuvTAEJ_14ty_python_core7use_def16ConstraintTablesE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1M_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !527, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !527
  call void %i.f(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a), !noalias !527, !inline_history !524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !527
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1Q_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !533, !noalias !534, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !533, !noalias !534
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !9, !noalias !535, !noundef !5
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1O_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #34, !noalias !535
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #34, !noalias !535
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1O_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !535, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !535
  call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !noalias !535, !inline_history !532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !535
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state8BindingsE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1Q_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !541, !noalias !542, !align !10, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !541, !noalias !542
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !9, !noalias !543, !noundef !5
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state8BindingsE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1O_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #34, !noalias !543
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #34, !noalias !543
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state8BindingsE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1O_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !543, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !543
  call void %i.f(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a), !noalias !543, !inline_history !540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !543
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBx_25ScopedEnclosingSnapshotIdE14swap_uncheckedBz_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.c, ptr noundef nonnull align 4 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraintsNtB5_20NarrowingConstraints15from_test_nodes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints12InteriorNodeE16into_boxed_sliceBH_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  store ptr %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraintsNtB5_20NarrowingConstraints17get_interior_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.d = lshr i64 %i.a, 6                         ; 6 uses
  %i.e = and i64 %i.a, 63                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !546, !noundef !5 ; 2 uses
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !546, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.d
  %i.l = load i32, ptr %i.k, align 4, !noalias !546, !noundef !5 ; 2 uses
  %i.m = icmp eq i64 %i.e, 0
  br i1 %i.m, label %_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #34, !noalias !546
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5.i = load i64, ptr %i.n, align 8, !alias.scope !546, !noundef !5 ; 2 uses
  %i.o = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.p = lshr i64 %.val5.i, 3
  %i.q = shl i64 %i.o, 3
  %i.r = and i64 %i.q, 56
  %i.s = and i64 %.val5.i, 7
  %i.t = add nuw nsw i64 %i.r, 63
  %i.u = add nuw nsw i64 %i.t, %i.s
  %i.v = add nuw nsw i64 %i.u, %i.p
  %i.w = lshr i64 %i.v, 6                         ; 2 uses
  %i.x = icmp samesign ult i64 %i.d, %i.w
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = and i64 %i.o, -8
  %i.z = getelementptr i8, ptr %i.c, i64 %i.y
  %i.aa = sub i64 0, %i.o
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.d
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !546, !noundef !5
  %i.ae = sub nuw nsw i64 64, %i.e
  %i.af = shl nsw i64 -1, %i.ae
  %i.ag = and i64 %i.ad, %i.af
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ag)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = add i32 %i.l, %i.ai
  br label %_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #34, !noalias !546
  unreachable

_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit: ; preds = %bb.c, %bb.f
  %.sroa.0.0.i = phi i32 [ %i.aj, %bb.f ], [ %i.l, %bb.c ]
  %i.ak = zext i32 %.sroa.0.0.i to i64            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noundef !5 ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.ak
  br i1 %i.an, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !5 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, %i.a
  br i1 %i.aq, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #34
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit, %bb.h
  %.sink15 = phi i64 [ %i.a, %bb.h ], [ %i.ak, %_RNvMNtCs2O29vuvTAEJ_14ty_python_core4rankNtB2_10RankBitBox4rank.exit ]
  %i.ar = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %.sink15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.as, i64 16, i1 false)
  ret void

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs0_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_23RetainedBindingsBuilder3get(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = add i32 %1, -1                           ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !5
  %i.j = icmp eq i32 %i.c, 0
  br i1 %i.j, label %bb.d, label %_RNvMsK_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsId10from_usize.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #34
  unreachable

_RNvMsK_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsId10from_usize.exit: ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.h, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !noundef !5
  %i.m = zext i32 %i.l to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_RNvMsK_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsId10from_usize.exit
  %.sroa.0.0 = phi i64 [ %i.m, %_RNvMsK_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsId10from_usize.exit ], [ 0, %bb.b ] ; 4 uses
  %i.n = zext i32 %i.i to i64                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.q = icmp samesign ugt i64 %.sroa.0.0, %i.n
  %.not = icmp ult i64 %i.p, %i.n
  %or.cond = or i1 %i.q, %.not
  br i1 %or.cond, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0, i64 noundef %i.n, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.t = sub nuw nsw i64 %i.n, %.sroa.0.0
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %.sroa.0.0
  %i.v = insertvalue { ptr, i64 } poison, ptr %i.u, 0
  %i.w = insertvalue { ptr, i64 } %i.v, i64 %i.t, 1
  ret { ptr, i64 } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 1, 0) i32 @_RNvMs0_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_23RetainedBindingsBuilder4push(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call { ptr, i64 } @_RNvMs4_NtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_stateNtB5_8Bindings8as_slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 1        ; 4 uses
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingE7reserveBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef range(i64 0, 1537228672809129302) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !556, !noundef !5 ; 3 uses
  %i.g = icmp ult i64 %i.f, 768614336404564651
  tail call void @llvm.assume(i1 %i.g)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingE15append_elementsBJ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.c, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !556, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.f
  %i.l = mul nuw i64 %i.d, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull readonly align 4 %i.h, i64 %i.l, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !556
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingE15append_elementsBJ_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingE15append_elementsBJ_.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %.pre.i, %bb.b ], [ %i.f, %bb.a ]
  %i.n = add i64 %i.m, %i.d                       ; 4 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !556
  %i.o = icmp ult i64 %i.n, 768614336404564651
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ugt i64 %i.n, 4294967295
  %i.q = shl nuw i64 %i.n, 32
  %.sroa.03.0.insert.insert = select i1 %i.p, i64 513, i64 %i.q ; 2 uses
  %i.r = trunc i64 %.sroa.03.0.insert.insert to i1
  br i1 %i.r, label %bb.c, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit, !prof !11

bb.c:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingE15append_elementsBJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !557
  store i8 2, ptr %i.a, align 1, !noalias !557
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 47, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #34
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingE15append_elementsBJ_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !558, !noundef !5 ; 6 uses
  %i.u = icmp ult i64 %i.t, 2305843009213693952
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign ult i64 %i.t, 4294967295
  br i1 %i.v, label %_RNvXsO_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i, label %bb.d, !prof !3

bb.d:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #34, !noalias !558
  unreachable

_RNvXsO_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit
  %i.w = load i64, ptr %0, align 8, !range !7, !alias.scope !559, !noundef !5
  %i.x = icmp eq i64 %i.t, %i.w
  br i1 %i.x, label %bb.e, label %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtCs2O29vuvTAEJ_14ty_python_core7use_def18InternedBindingsIdmE4pushBR_.exit

bb.e:                                             ; preds = %_RNvXsO_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtCs2O29vuvTAEJ_14ty_python_core7use_def18InternedBindingsIdmE4pushBR_.exit

_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtCs2O29vuvTAEJ_14ty_python_core7use_def18InternedBindingsIdmE4pushBR_.exit: ; preds = %_RNvXsO_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i, %bb.e
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.03.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %i.y = trunc nuw i64 %i.t to i32
  %i.z = add nuw i32 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !559, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.t
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.ac, align 4
  %i.ad = add nuw nsw i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !559
  ret i32 %i.z
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvMs12_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsId10from_usize(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %0, 4294967295
  br i1 %i.a, label %bb.c, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = trunc nuw i64 %0 to i32
  %i.c = add nuw i32 %i.b, 1
  ret i32 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMs1_NtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraintsNtB5_27NarrowingConstraintsBuilder12add_interior(ptr noalias noundef nonnull align 8 dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [9 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [20 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 4                ; 7 uses
  %i.j = alloca [16 x i8], align 4                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !noundef !5 ; 5 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !noundef !5 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !noundef !5 ; 4 uses
  %i.r = icmp eq i32 %i.o, %i.q
  %i.s = icmp eq i32 %i.o, %i.l
  %or.cond = and i1 %i.s, %i.r
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.h, %bb.k, %bb.d, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints12InteriorNodeNtB15_25ScopedNarrowingConstraintE14or_insert_withNCNvMs1_B15_NtB15_27NarrowingConstraintsBuilder12add_interior0EB17_.exit
  %.sroa.0.0 = phi i32 [ %i.ae, %bb.h ], [ -1, %bb.a ], [ %i.t, %bb.d ], [ %i.db, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints12InteriorNodeNtB15_25ScopedNarrowingConstraintE14or_insert_withNCNvMs1_B15_NtB15_27NarrowingConstraintsBuilder12add_interior0EB17_.exit ], [ %i.ao, %bb.k ], [ %i.l, %bb.b ]
  ret i32 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.t = tail call noundef i32 @_RNvMs1_NtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraintsNtB5_27NarrowingConstraintsBuilder17add_or_constraint(ptr noalias noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.o, i32 noundef %i.l) ; 4 uses
  %i.u = tail call noundef i32 @_RNvMs1_NtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraintsNtB5_27NarrowingConstraintsBuilder17add_or_constraint(ptr noalias noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.q, i32 noundef %i.l) ; 3 uses
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i32 %i.t, -1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.o, -1
  %i.y = icmp eq i32 %i.q, -2
  %or.cond1 = and i1 %i.x, %i.y
  br i1 %or.cond1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = icmp eq i32 %i.u, -1
  br i1 %i.z, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aa = load i32, ptr %1, align 4, !noundef !5
  store i32 %i.aa, ptr %i.j, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 -1, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.u, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 -2, ptr %i.ad, align 4
  %i.ae = call fastcc noundef i32 @_RNvMs1_NtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraintsNtB5_27NarrowingConstraintsBuilder12add_interior(ptr noalias noundef align 8 dereferenceable(144) %0, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.af = icmp eq i32 %i.o, -2
  %i.ag = icmp eq i32 %i.q, -1
  %or.cond2 = and i1 %i.af, %i.ag
  br i1 %or.cond2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints12InteriorNodeNtB11_25ScopedNarrowingConstraintNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ai = load ptr, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %.not, label %bb.t, label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ak = load i32, ptr %1, align 4, !noundef !5
  store i32 %i.ak, ptr %i.i, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 -2, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.t, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 -1, ptr %i.an, align 4
  %i.ao = call fastcc noundef i32 @_RNvMs1_NtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraintsNtB5_27NarrowingConstraintsBuilder12add_interior(ptr noalias noundef align 8 dereferenceable(144) %0, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %.sroa.414.0.copyload = load i64, ptr %i.aj, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.515.0.copyload = load ptr, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.616.0.copyload = load i64, ptr %.sroa.616.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !581, !noalias !582, !noundef !5 ; 3 uses
  %i.as = lshr i64 %i.ar, 3                       ; 8 uses
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !583
  store i64 %i.at, ptr %i.e, align 8, !noalias !583
  %.not.i.i.i = icmp eq i64 %i.as, 2305843009213693951
  br i1 %.not.i.i.i, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !583
  store ptr %i.e, ptr %i.d, align 8, !noalias !583
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !583
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
end_hunk_0
begin_hunk_1_@_RNvMs2H_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_25ScopedEnclosingSnapshotId10from_usize:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 1, 0) i32 @_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_27RetainedDeclarationsBuilder4push(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call { ptr, ptr } @_RNvMs0_NtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_stateNtB5_12Declarations4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  tail call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB2h_5slice4iter4IterBF_EEEBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.d, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %i.h = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ugt i64 %i.g, 4294967295
  %i.j = shl nuw i64 %i.g, 32
  %.sroa.02.0.insert.insert = select i1 %i.i, i64 513, i64 %i.j ; 2 uses
  %i.k = trunc i64 %.sroa.02.0.insert.insert to i1
  br i1 %i.k, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !676
  store i8 2, ptr %i.a, align 1, !noalias !676
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 51, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #34
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !677, !noundef !5 ; 6 uses
  %i.n = icmp ult i64 %i.m, 2305843009213693952
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp samesign ult i64 %i.m, 4294967295
  br i1 %i.o, label %_RNvXs16_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i, label %bb.c, !prof !3

bb.c:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #34, !noalias !677
  unreachable

_RNvXs16_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit
  %i.p = load i64, ptr %0, align 8, !range !7, !alias.scope !678, !noundef !5
  %i.q = icmp eq i64 %i.m, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtCs2O29vuvTAEJ_14ty_python_core7use_def22InternedDeclarationsIdmE4pushBR_.exit

bb.d:                                             ; preds = %_RNvXs16_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtCs2O29vuvTAEJ_14ty_python_core7use_def22InternedDeclarationsIdmE4pushBR_.exit

_RNvMNtCsipcY9BhxV6q_10ruff_index3vecINtB2_8IndexVecNtNtCs2O29vuvTAEJ_14ty_python_core7use_def22InternedDeclarationsIdmE4pushBR_.exit: ; preds = %_RNvXs16_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsIdNtNtCsipcY9BhxV6q_10ruff_index3idx3Idx3new.exit.i, %bb.d
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.02.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %i.r = trunc nuw i64 %i.m to i32
  %i.s = add nuw i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !678, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.m
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.v, align 4
  %i.w = add nuw nsw i64 %i.m, 1
  store i64 %i.w, ptr %i.l, align 8, !alias.scope !678
  ret i32 %i.s
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvMs3n_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_21PendingReachabilityId10from_usize(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %0, 4294967295
  br i1 %i.a, label %bb.c, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = trunc nuw i64 %0 to i32
  %i.c = add nuw i32 %i.b, 1
  ret i32 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE12partial_headCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  %i.d = icmp eq i8 %3, 0
  br i1 %i.d, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i8 0, %3
  %i.f = and i8 %i.e, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = and i8 %3, 63
  %i.k = zext nneg i8 %i.j to i64
  %i.l = shl i64 %i.i, %i.k
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.l, %bb.b ], [ -1, %bb.a ]
  %i.m = add i64 %2, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.n, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.66.0..sroa_idx, align 1
  store ptr %i.c, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.p, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE12partial_tailCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = add i64 %2, -1                           ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  %i.e = icmp eq i8 %4, 64
  %i.f = and i8 %4, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %.sroa.0.0.i.i = select i1 %i.e, i64 -1, i64 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8
  store ptr %i.d, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.l, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.66.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE3newCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = shl i64 %i.a, 3
  %i.c = and i64 %i.b, 56
  %i.d = and i64 %2, 7
  %i.e = or disjoint i64 %i.c, %i.d               ; 4 uses
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = lshr i64 %2, 3                           ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = add nuw nsw i64 %i.h, %i.e
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 64, %i.e                 ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.g, %i.l
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.g, %i.l
  %i.n = trunc i64 %i.m to i8
  %i.o = and i8 %i.n, 63                          ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  %i.q = select i1 %i.p, i8 64, i8 %i.o
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit

bb.d:                                             ; preds = %bb.b
  %i.r = trunc nuw nsw i64 %i.g to i8
  %i.s = add nuw nsw i8 %i.f, %i.r
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.4.0.i = phi i8 [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %i.t = icmp eq i64 %i.j, 0
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit
  %i.u = icmp eq i64 %i.e, 0
  %i.v = icmp eq i8 %.sroa.4.0.i, 64              ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.i, %bb.h, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit
  %.sroa.0.0 = phi ptr [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE12partial_headCs2O29vuvTAEJ_14ty_python_core, %bb.h ], [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5emptyCs2O29vuvTAEJ_14ty_python_core, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit ], [ %spec.select, %bb.g ], [ %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5minorCs2O29vuvTAEJ_14ty_python_core._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5majorCs2O29vuvTAEJ_14ty_python_core, %bb.i ]
  %i.w = and i64 %i.a, -8
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  %i.y = sub i64 0, %i.a
  %i.z = getelementptr i8, ptr %i.x, i64 %i.y
  tail call void %.sroa.0.0(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull %i.z, i64 noundef %i.j, i8 noundef %i.f, i8 noundef %.sroa.4.0.i)
  ret void

bb.g:                                             ; preds = %bb.e
  %spec.select = select i1 %i.v, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE8spanningCs2O29vuvTAEJ_14ty_python_core, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE12partial_tailCs2O29vuvTAEJ_14ty_python_core
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  br i1 %i.v, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.j, 1
  %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5minorCs2O29vuvTAEJ_14ty_python_core._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5majorCs2O29vuvTAEJ_14ty_python_core = select i1 %i.aa, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5minorCs2O29vuvTAEJ_14ty_python_core, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5majorCs2O29vuvTAEJ_14ty_python_core
  br label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5emptyCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr nofree nonnull readnone captures(none) %1, i64 %2, i8 %3, i8 %4) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5majorCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add i64 %2, -1
  store i64 %i.c, ptr %i.b, align 8
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  %i.g = icmp eq i8 %3, 0
  br i1 %i.g, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub i8 0, %3
  %i.i = and i8 %i.h, 63
  %i.j = zext nneg i8 %i.i to i64
  %i.k = shl nsw i64 -1, %i.j
  %i.l = xor i64 %i.k, -1
  %i.m = and i8 %3, 63
  %i.n = zext nneg i8 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.p = add i64 %2, -2
  %i.q = icmp eq i8 %4, 64
  %i.r = and i8 %4, 63
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nsw i64 -1, %i.s
  %i.u = xor i64 %i.t, -1
  %.sroa.0.0.i.i3 = select i1 %i.q, i64 -1, i64 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.67.0..sroa_idx, align 1
  store ptr %i.f, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.x, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i3, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.617.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE5minorCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 26)) %0, ptr noundef nonnull %1, i64 %2, i8 noundef %3, i8 noundef %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sub i8 %4, %3                            ; 2 uses
  %i.b = icmp eq i8 %i.a, 64
  br i1 %i.b, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, 63
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i8 %3, 63
  %i.h = zext nneg i8 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECs2O29vuvTAEJ_14ty_python_core.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %4, ptr %.sroa.6.0..sroa_idx, align 1
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyE8spanningCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 %4) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_headCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  %i.d = icmp eq i8 %3, 0
  br i1 %i.d, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i8 0, %3
  %i.f = and i8 %i.e, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = lshr i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = and i8 %3, 63
  %i.k = zext nneg i8 %i.j to i64
  %i.l = lshr i64 %i.i, %i.k
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.l, %bb.b ], [ -1, %bb.a ]
  %i.m = add i64 %2, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.n, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.66.0..sroa_idx, align 1
  store ptr %i.c, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.p, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_tailCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = add i64 %2, -1                           ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  %i.e = icmp eq i8 %4, 64
  %i.f = and i8 %4, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = lshr i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %.sroa.0.0.i.i = select i1 %i.e, i64 -1, i64 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8
  store ptr %i.d, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.l, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.66.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E3newCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = shl i64 %i.a, 3
  %i.c = and i64 %i.b, 56
  %i.d = and i64 %2, 7
  %i.e = or disjoint i64 %i.c, %i.d               ; 4 uses
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = lshr i64 %2, 3                           ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = add nuw nsw i64 %i.h, %i.e
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 64, %i.e                 ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.g, %i.l
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.g, %i.l
  %i.n = trunc i64 %i.m to i8
  %i.o = and i8 %i.n, 63                          ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  %i.q = select i1 %i.p, i8 64, i8 %i.o
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit

bb.d:                                             ; preds = %bb.b
  %i.r = trunc nuw nsw i64 %i.g to i8
  %i.s = add nuw nsw i8 %i.f, %i.r
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.4.0.i = phi i8 [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %i.t = icmp eq i64 %i.j, 0
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit
  %i.u = icmp eq i64 %i.e, 0
  %i.v = icmp eq i8 %.sroa.4.0.i, 64              ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.i, %bb.h, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit
  %.sroa.0.0 = phi ptr [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_headCs2O29vuvTAEJ_14ty_python_core, %bb.h ], [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5emptyCs2O29vuvTAEJ_14ty_python_core, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexINtB5_6BitEndyE4spanCs2O29vuvTAEJ_14ty_python_core.exit ], [ %spec.select, %bb.g ], [ %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCs2O29vuvTAEJ_14ty_python_core._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCs2O29vuvTAEJ_14ty_python_core, %bb.i ]
  %i.w = and i64 %i.a, -8
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  %i.y = sub i64 0, %i.a
  %i.z = getelementptr i8, ptr %i.x, i64 %i.y
  tail call void %.sroa.0.0(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull %i.z, i64 noundef %i.j, i8 noundef %i.f, i8 noundef %.sroa.4.0.i)
  ret void

bb.g:                                             ; preds = %bb.e
  %spec.select = select i1 %i.v, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E8spanningCs2O29vuvTAEJ_14ty_python_core, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E12partial_tailCs2O29vuvTAEJ_14ty_python_core
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  br i1 %i.v, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.j, 1
  %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCs2O29vuvTAEJ_14ty_python_core._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCs2O29vuvTAEJ_14ty_python_core = select i1 %i.aa, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCs2O29vuvTAEJ_14ty_python_core, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCs2O29vuvTAEJ_14ty_python_core
  br label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5emptyCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr nofree nonnull readnone captures(none) %1, i64 %2, i8 %3, i8 %4) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5majorCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add i64 %2, -1
  store i64 %i.c, ptr %i.b, align 8
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCNvMs8_B6_Bv_3add0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  %i.g = icmp eq i8 %3, 0
  br i1 %i.g, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub i8 0, %3
  %i.i = and i8 %i.h, 63
  %i.j = zext nneg i8 %i.i to i64
  %i.k = lshr i64 -1, %i.j
  %i.l = xor i64 %i.k, -1
  %i.m = and i8 %3, 63
  %i.n = zext nneg i8 %i.m to i64
  %i.o = lshr i64 %i.l, %i.n
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtNtCs4NRVxsYgnAr_4core6option6OptionINtB1U_6BitEndyEEECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.p = add i64 %2, -2
  %i.q = icmp eq i8 %4, 64
  %i.r = and i8 %4, 63
  %i.s = zext nneg i8 %i.r to i64
  %i.t = lshr i64 -1, %i.s
  %i.u = xor i64 %i.t, -1
  %.sroa.0.0.i.i3 = select i1 %i.q, i64 -1, i64 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.67.0..sroa_idx, align 1
  store ptr %i.f, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.x, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i3, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.617.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E5minorCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 26)) %0, ptr noundef nonnull %1, i64 %2, i8 noundef %3, i8 noundef %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sub i8 %4, %3                            ; 2 uses
  %i.b = icmp eq i8 %i.a, 64
  br i1 %i.b, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECs2O29vuvTAEJ_14ty_python_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, 63
  %i.d = zext nneg i8 %i.c to i64
  %i.e = lshr i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i8 %3, 63
  %i.h = zext nneg i8 %i.g to i64
  %i.i = lshr i64 %i.f, %i.h
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECs2O29vuvTAEJ_14ty_python_core.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxyEINtB1U_6BitEndyEECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %4, ptr %.sroa.6.0..sroa_idx, align 1
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu5ConstyNtNtB7_5order4Msb0E8spanningCs2O29vuvTAEJ_14ty_python_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 %4) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstyE8with_ptryNCINvMs8_B6_Bv_4castyE0ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state10PlaceStateE9drop_slowBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsEBH_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsEBH_.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state10PlaceStateEBH_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsEBH_.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.c, %bb.b ]
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc4WeakNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state10PlaceStateRNtNtBG_5alloc6GlobalEEB1d_(ptr nonnull %i.a) #36
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state10PlaceStateEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsEBH_.exit.i
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc4WeakNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state10PlaceStateRNtNtBG_5alloc6GlobalEEB1d_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state10PlaceStateEBH_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = add i64 %i.j, -1                         ; 2 uses
  store i64 %i.k, ptr %i.i, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc4WeakNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state10PlaceStateRNtNtBG_5alloc6GlobalEEB1d_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 80, i64 noundef 8) #37
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc4WeakNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state10PlaceStateRNtNtBG_5alloc6GlobalEEB1d_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc4WeakNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state10PlaceStateRNtNtBG_5alloc6GlobalEEB1d_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state10PlaceStateEBH_.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap10predicates(ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !681, !align !10, !noundef !5 ; 2 uses
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, i64 112) acquire, align 8, !noalias !681
  %i.f = icmp eq i32 %i.e, 0
end_hunk_1
begin_hunk_2_@_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap21multi_bindings_at_use:bb.a
_RNvMs7_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18MultiBindingsByUse3get.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %bb.f
  %.sroa.5.sroa.0.0 = phi ptr [ %i.ac, %bb.f ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.c ]
  %.sroa.0.0 = phi ptr [ %i.z, %bb.f ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ]
  store i64 1, ptr %0, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.018.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.018.sroa.6.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %.sroa.621.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap22applicable_constraints(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, i32 noundef range(i32 0, 3) %2, i32 noundef %3, i32 noundef range(i32 1, 0) %4, i64 noundef range(i64 0, 2) %5, ptr noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(400) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  switch i32 %2, label %default.unreachable4 [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

default.unreachable4:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !767, !align !10, !noundef !5 ; 2 uses
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, i64 112) acquire, align 8, !noalias !767
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap17constraint_tables.exit, label %bb.c, !prof !3

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !767
  store ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, ptr %i.b, align 8, !noalias !767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !767
  store ptr %i.b, ptr %i.a, align 8, !noalias !767
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, i64 112), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !767
  br label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap17constraint_tables.exit

_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap17constraint_tables.exit: ; preds = %bb.b, %bb.c
  %.not.i = icmp eq ptr %i.e, null
  %spec.select.i.i = select i1 %.not.i, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, ptr %i.e
  store ptr %spec.select.i.i, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.i, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB5_13SemanticIndex18enclosing_snapshot(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %7, i32 noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef %3)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i8, ptr %i.j, align 8, !range !768, !noundef !5 ; 2 uses
  %i.l = icmp ne i8 %i.k, 3
  call void @llvm.assume(i1 %i.l)
  %i.m = icmp samesign ult i8 %i.k, 2
  br i1 %i.m, label %bb.g, label %bb.h, !prof !3

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap15bindings_at_use(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, i32 noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap17constraint_tables.exit
  ret void

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @77, ptr noundef nonnull inttoptr (i64 223 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap22bindings_at_definition(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %3, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = call noundef align 4 ptr @_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB5_9FrozenMapNtNtB7_10definition10DefinitionINtNtB7_7use_def23DefinitionsAtDefinitionNtB1w_18InternedBindingsIdNtB1w_22InternedDeclarationsIdEE3getB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.e) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %i.h, align 4, !range !4, !alias.scope !783, !noalias !784, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !787, !noalias !788, !noundef !5 ; 2 uses
  %i.k = add i32 %.val.i, -1                      ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !787, !noalias !788, !nonnull !5, !noundef !5
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noalias !789, !noundef !5
  %i.r = icmp eq i32 %i.k, 0
  br i1 %i.r, label %bb.e, label %_RNvMsK_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsId10from_usize.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #34, !noalias !790
  unreachable

_RNvMsK_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsId10from_usize.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.p, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !noalias !789, !noundef !5
  %i.u = zext i32 %i.t to i64
  br label %bb.e

bb.e:                                             ; preds = %_RNvMsK_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsId10from_usize.exit.i.i.i, %bb.c
  %.sroa.0.0.i.i.i = phi i64 [ %i.u, %_RNvMsK_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_18InternedBindingsId10from_usize.exit.i.i.i ], [ 0, %bb.c ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !787, !noalias !788, !noundef !5 ; 2 uses
  %i.x = zext i32 %i.q to i64                     ; 4 uses
  %i.y = icmp samesign ugt i64 %.sroa.0.0.i.i.i, %i.x
  %.not.i.i.i = icmp ult i64 %i.w, %i.x
  %or.cond.i.i.i = or i1 %i.y, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap22bindings_at_definitions_0B9_.exit.i, !prof !12

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.x, i64 noundef %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #34, !noalias !790
  unreachable

_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap22bindings_at_definitions_0B9_.exit.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !787, !noalias !788, !nonnull !5, !noundef !5
  %i.ab = sub nuw nsw i64 %i.x, %.sroa.0.0.i.i.i
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %.sroa.0.0.i.i.i
  %i.ad = insertvalue { ptr, i64 } poison, ptr %i.ac, 0
  %i.ae = insertvalue { ptr, i64 } %i.ad, i64 %i.ab, 1
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCs2O29vuvTAEJ_14ty_python_core7use_def23DefinitionsAtDefinitionNtBM_18InternedBindingsIdNtBM_22InternedDeclarationsIdEE11map_or_elseRSNtNtBM_11place_state11LiveBindingNCNvMs8_BM_NtBM_9UseDefMap22bindings_at_definition0NCB3x_s_0EBO_.exit

bb.g:                                             ; preds = %bb.a
  %i.af = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23ALWAYS_UNBOUND_BINDINGS, i64 40) acquire, align 8, !noalias !791
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap22bindings_at_definition0B9_.exit.i, label %bb.h, !prof !3

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !791
  store ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23ALWAYS_UNBOUND_BINDINGS, ptr %i.d, align 8, !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !791
  store ptr %i.d, ptr %i.c, align 8, !noalias !791
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23ALWAYS_UNBOUND_BINDINGS, i64 40), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !791
  br label %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap22bindings_at_definition0B9_.exit.i

_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap22bindings_at_definition0B9_.exit.i: ; preds = %bb.h, %bb.g
  %i.ah = call { ptr, i64 } @_RNvMs4_NtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_stateNtB5_8Bindings8as_slice(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23ALWAYS_UNBOUND_BINDINGS), !noalias !791
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCs2O29vuvTAEJ_14ty_python_core7use_def23DefinitionsAtDefinitionNtBM_18InternedBindingsIdNtBM_22InternedDeclarationsIdEE11map_or_elseRSNtNtBM_11place_state11LiveBindingNCNvMs8_BM_NtBM_9UseDefMap22bindings_at_definition0NCB3x_s_0EBO_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCs2O29vuvTAEJ_14ty_python_core7use_def23DefinitionsAtDefinitionNtBM_18InternedBindingsIdNtBM_22InternedDeclarationsIdEE11map_or_elseRSNtNtBM_11place_state11LiveBindingNCNvMs8_BM_NtBM_9UseDefMap22bindings_at_definition0NCB3x_s_0EBO_.exit: ; preds = %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap22bindings_at_definitions_0B9_.exit.i, %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap22bindings_at_definition0B9_.exit.i
  %.pn.i = phi { ptr, i64 } [ %i.ae, %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap22bindings_at_definitions_0B9_.exit.i ], [ %i.ah, %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap22bindings_at_definition0B9_.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !795, !noalias !796, !align !10, !noundef !5 ; 2 uses
  %i.ak = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, i64 112) acquire, align 8, !noalias !797
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap17bindings_iterator.exit, label %bb.i, !prof !3

bb.i:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCs2O29vuvTAEJ_14ty_python_core7use_def23DefinitionsAtDefinitionNtBM_18InternedBindingsIdNtBM_22InternedDeclarationsIdEE11map_or_elseRSNtNtBM_11place_state11LiveBindingNCNvMs8_BM_NtBM_9UseDefMap22bindings_at_definition0NCB3x_s_0EBO_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !797
  store ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, ptr %i.b, align 8, !noalias !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !797
  store ptr %i.b, ptr %i.a, align 8, !noalias !797
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, i64 112), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !797
  br label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap17bindings_iterator.exit

_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap17bindings_iterator.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCs2O29vuvTAEJ_14ty_python_core7use_def23DefinitionsAtDefinitionNtBM_18InternedBindingsIdNtBM_22InternedDeclarationsIdEE11map_or_elseRSNtNtBM_11place_state11LiveBindingNCNvMs8_BM_NtBM_9UseDefMap22bindings_at_definition0NCB3x_s_0EBO_.exit, %bb.i
  %i.am = extractvalue { ptr, i64 } %.pn.i, 1
  %.sroa.02.0.i = extractvalue { ptr, i64 } %.pn.i, 0 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  %spec.select.i.i.i = select i1 %.not.i.i, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, ptr %i.aj
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %.sroa.02.0.i, i64 %i.am
  store ptr %1, ptr %0, align 8, !alias.scope !792, !noalias !798
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i.i, ptr %i.ao, align 8, !alias.scope !792, !noalias !798
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ap, align 8, !alias.scope !792, !noalias !798
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.02.0.i, ptr %i.aq, align 8, !alias.scope !792, !noalias !798
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.an, ptr %i.ar, align 8, !alias.scope !792, !noalias !798
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap22reachable_declarations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = trunc nuw i32 %2 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap29reachable_member_declarations(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, i32 noundef %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap29reachable_symbol_declarations(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, i32 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap23declarations_at_binding(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %3, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = call noundef align 4 ptr @_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB5_9FrozenMapNtNtB7_10definition10DefinitionINtNtB7_7use_def23DefinitionsAtDefinitionNtB1w_18InternedBindingsIdNtB1w_22InternedDeclarationsIdEE3getB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.e) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val.i = load i32, ptr %i.i, align 4, !alias.scope !813, !noalias !814, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %.not.i.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i.i, label %bb.h, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !817, !noalias !818, !noundef !5 ; 2 uses
  %i.l = add i32 %.val.i, -1                      ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !817, !noalias !818, !nonnull !5, !noundef !5
  %i.q = getelementptr [4 x i8], ptr %i.p, i64 %i.m ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noalias !819, !noundef !5
  %i.s = icmp eq i32 %i.l, 0
  br i1 %i.s, label %bb.f, label %_RNvMs12_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsId10from_usize.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #34, !noalias !820
  unreachable

_RNvMs12_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsId10from_usize.exit.i.i.i: ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.q, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !noalias !819, !noundef !5
  %i.v = zext i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs12_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsId10from_usize.exit.i.i.i, %bb.d
  %.sroa.0.0.i.i.i = phi i64 [ %i.v, %_RNvMs12_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsId10from_usize.exit.i.i.i ], [ 0, %bb.d ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !817, !noalias !818, !noundef !5 ; 2 uses
  %i.y = zext i32 %i.r to i64                     ; 4 uses
  %i.z = icmp samesign ugt i64 %.sroa.0.0.i.i.i, %i.y
  %.not.i.i.i = icmp ult i64 %i.x, %i.y
  %or.cond.i.i.i = or i1 %i.z, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.g, label %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap23declarations_at_bindings_0B9_.exit.i, !prof !12

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.y, i64 noundef %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #34, !noalias !820
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #34, !noalias !821
  unreachable

_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap23declarations_at_bindings_0B9_.exit.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !817, !noalias !818, !nonnull !5, !noundef !5
  %i.ac = sub nuw nsw i64 %i.y, %.sroa.0.0.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.0.0.i.i.i
  %i.ae = insertvalue { ptr, i64 } poison, ptr %i.ad, 0
  %i.af = insertvalue { ptr, i64 } %i.ae, i64 %i.ac, 1
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCs2O29vuvTAEJ_14ty_python_core7use_def23DefinitionsAtDefinitionNtBM_18InternedBindingsIdNtBM_22InternedDeclarationsIdEE11map_or_elseRSNtNtBM_11place_state15LiveDeclarationNCNvMs8_BM_NtBM_9UseDefMap23declarations_at_binding0NCB3B_s_0EBO_.exit

bb.i:                                             ; preds = %bb.a
  %i.ag = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def30ALWAYS_UNDECLARED_DECLARATIONS, i64 24) acquire, align 8, !noalias !822
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap23declarations_at_binding0B9_.exit.i, label %bb.j, !prof !3

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !822
  store ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def30ALWAYS_UNDECLARED_DECLARATIONS, ptr %i.d, align 8, !noalias !822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !822
  store ptr %i.d, ptr %i.c, align 8, !noalias !822
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def30ALWAYS_UNDECLARED_DECLARATIONS, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !822
  br label %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap23declarations_at_binding0B9_.exit.i

_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap23declarations_at_binding0B9_.exit.i: ; preds = %bb.j, %bb.i
  %i.ai = call { ptr, i64 } @_RNvMs0_NtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_stateNtB5_12Declarations8as_slice(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def30ALWAYS_UNDECLARED_DECLARATIONS), !noalias !822
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCs2O29vuvTAEJ_14ty_python_core7use_def23DefinitionsAtDefinitionNtBM_18InternedBindingsIdNtBM_22InternedDeclarationsIdEE11map_or_elseRSNtNtBM_11place_state15LiveDeclarationNCNvMs8_BM_NtBM_9UseDefMap23declarations_at_binding0NCB3B_s_0EBO_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCs2O29vuvTAEJ_14ty_python_core7use_def23DefinitionsAtDefinitionNtBM_18InternedBindingsIdNtBM_22InternedDeclarationsIdEE11map_or_elseRSNtNtBM_11place_state15LiveDeclarationNCNvMs8_BM_NtBM_9UseDefMap23declarations_at_binding0NCB3B_s_0EBO_.exit: ; preds = %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap23declarations_at_bindings_0B9_.exit.i, %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap23declarations_at_binding0B9_.exit.i
  %.pn.i = phi { ptr, i64 } [ %i.af, %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap23declarations_at_bindings_0B9_.exit.i ], [ %i.ai, %_RNCNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB7_9UseDefMap23declarations_at_binding0B9_.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !826, !noalias !827, !align !10, !noundef !5 ; 2 uses
  %i.al = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, i64 112) acquire, align 8, !noalias !828
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap21declarations_iterator.exit, label %bb.k, !prof !3

bb.k:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCs2O29vuvTAEJ_14ty_python_core7use_def23DefinitionsAtDefinitionNtBM_18InternedBindingsIdNtBM_22InternedDeclarationsIdEE11map_or_elseRSNtNtBM_11place_state15LiveDeclarationNCNvMs8_BM_NtBM_9UseDefMap23declarations_at_binding0NCB3B_s_0EBO_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !828
  store ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, ptr %i.b, align 8, !noalias !828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !828
  store ptr %i.b, ptr %i.a, align 8, !noalias !828
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, i64 112), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !828
  br label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap21declarations_iterator.exit

_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap21declarations_iterator.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCs2O29vuvTAEJ_14ty_python_core7use_def23DefinitionsAtDefinitionNtBM_18InternedBindingsIdNtBM_22InternedDeclarationsIdEE11map_or_elseRSNtNtBM_11place_state15LiveDeclarationNCNvMs8_BM_NtBM_9UseDefMap23declarations_at_binding0NCB3B_s_0EBO_.exit, %bb.k
  %i.an = extractvalue { ptr, i64 } %.pn.i, 1
  %.sroa.02.0.i = extractvalue { ptr, i64 } %.pn.i, 0 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %spec.select.i.i.i = select i1 %.not.i.i1, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, ptr %i.ak
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0.i, i64 %i.an
  store ptr %1, ptr %0, align 8, !alias.scope !823, !noalias !829
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i.i, ptr %i.ap, align 8, !alias.scope !823, !noalias !829
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.aq, align 8, !alias.scope !823, !noalias !829
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.02.0.i, ptr %i.ar, align 8, !alias.scope !823, !noalias !829
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ao, ptr %i.as, align 8, !alias.scope !823, !noalias !829
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap24reachability_constraints(ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !832, !align !10, !noundef !5 ; 2 uses
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, i64 112) acquire, align 8, !noalias !832
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap17constraint_tables.exit, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !832
  store ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, ptr %i.b, align 8, !noalias !832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !832
  store ptr %i.b, ptr %i.a, align 8, !noalias !832
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, i64 112), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !832
  br label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap17constraint_tables.exit

_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap17constraint_tables.exit: ; preds = %bb.a, %bb.b
  %.not.i = icmp eq ptr %i.d, null
  %spec.select.i.i = select i1 %.not.i, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, ptr %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap25end_of_scope_declarations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = trunc nuw i32 %2 to i1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !846, !noalias !845, !align !10, !noundef !5 ; 3 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.c, label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap5extra.exit.i, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #34, !noalias !847
  unreachable

_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap5extra.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noalias !847, !noundef !5 ; 2 uses
  %i.g = add i32 %3, -1
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap5extra.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !847, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !range !4, !noalias !847, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !849, !noalias !850, !noundef !5 ; 2 uses
  %i.q = add i32 %i.n, -1                         ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !849, !noalias !850, !nonnull !5, !noundef !5
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !noalias !851, !noundef !5
  %i.x = icmp eq i32 %i.q, 0
  br i1 %i.x, label %bb.g, label %_RNvMs12_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsId10from_usize.exit.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #34, !noalias !852
  unreachable

_RNvMs12_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsId10from_usize.exit.i.i: ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.v, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !noalias !851, !noundef !5
  %i.aa = zext i32 %i.z to i64
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs12_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsId10from_usize.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.aa, %_RNvMs12_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_22InternedDeclarationsId10from_usize.exit.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !849, !noalias !850, !noundef !5 ; 2 uses
  %i.ad = zext i32 %i.w to i64                    ; 4 uses
  %i.ae = icmp samesign ugt i64 %.sroa.0.0.i.i, %i.ad
  %.not.i2.i = icmp ult i64 %i.ac, %i.ad
  %or.cond.i.i = or i1 %i.ae, %.not.i2.i
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs3_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_20RetainedDeclarationsINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexNtB5_22InternedDeclarationsIdE5index.exit.i, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i.i, i64 noundef %i.ad, i64 noundef %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #34, !noalias !852
  unreachable

_RNvXs3_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_20RetainedDeclarationsINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexNtB5_22InternedDeclarationsIdE5index.exit.i: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !849, !noalias !850, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !856, !noalias !857, !align !10, !noundef !5 ; 2 uses
  %i.aj = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, i64 112) acquire, align 8, !noalias !858
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap32end_of_scope_member_declarations.exit, label %bb.i, !prof !3

bb.i:                                             ; preds = %_RNvXs3_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_20RetainedDeclarationsINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexNtB5_22InternedDeclarationsIdE5index.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !858
  store ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, ptr %i.b, align 8, !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !858
  store ptr %i.b, ptr %i.a, align 8, !noalias !858
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, i64 112), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !858
  br label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap32end_of_scope_member_declarations.exit

bb.j:                                             ; preds = %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap5extra.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #34, !noalias !847
  unreachable

_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap32end_of_scope_member_declarations.exit: ; preds = %_RNvXs3_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_20RetainedDeclarationsINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexNtB5_22InternedDeclarationsIdE5index.exit.i, %bb.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.0.0.i.i
  %.not.i.i.i = icmp eq ptr %i.ai, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i, ptr @_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23EMPTY_CONSTRAINT_TABLES, ptr %i.ai
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ad
  store ptr %1, ptr %0, align 8, !alias.scope !859, !noalias !860
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i.i.i, ptr %i.an, align 8, !alias.scope !859, !noalias !860
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ao, align 8, !alias.scope !859, !noalias !860
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.ap, align 8, !alias.scope !859, !noalias !860
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.am, ptr %i.aq, align 8, !alias.scope !859, !noalias !860
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap32end_of_scope_symbol_declarations(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, i32 noundef %3)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap32end_of_scope_member_declarations.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap25reachable_member_bindings(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val = load ptr, ptr %i.c, align 8, !align !10, !noundef !5 ; 3 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.b, label %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap5extra.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #34
  unreachable

_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap5extra.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = add i32 %2, -1
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap5extra.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !range !4, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !870, !noalias !871, !noundef !5 ; 2 uses
  %i.p = add i32 %i.m, -1                         ; 2 uses
end_hunk_2
