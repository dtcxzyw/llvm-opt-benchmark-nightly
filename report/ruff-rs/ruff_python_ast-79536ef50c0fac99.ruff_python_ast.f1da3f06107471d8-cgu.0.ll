Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RNvXs3V_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_7FStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  br i1 %i.be, label %bb.h, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBT_.exit.thread

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit: ; preds = %bb.i
  %i.bf = xor i1 %i.ag, true
  tail call void @llvm.assume(i1 %i.bf), !noalias !12311
  %i.bg = tail call fastcc noundef zeroext i1 @_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_19InterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.aa), !noalias !12311, !inline_history !12308
  br i1 %i.bg, label %bb.h, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBT_.exit.thread

_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBT_.exit: ; preds = %bb.h, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val = load i8, ptr %i.bh, align 4, !noundef !46
  %.val1 = load i8, ptr %i.bi, align 4, !noundef !46
  %i.bj = icmp eq i8 %.val, %.val1
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBT_.exit.thread

_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBT_.exit.thread: ; preds = %bb.o, %bb.j, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %bb.k, %.lr.ph, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit, %.split, %bb.f, %bb.b, %bb.a, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBT_.exit
  %.sroa.0.0 = phi i1 [ %i.bj, %_RNvXNtNtCscdodAO9FK5_5alloc3vec10partial_eqINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBT_.exit ], [ false, %bb.b ], [ false, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.a ], [ false, %bb.f ], [ false, %.split ], [ false, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB6_.exit ], [ false, %.lr.ph ], [ false, %bb.k ], [ false, %_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.j ], [ false, %bb.o ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs3W_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_7FStringNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.10.i.sroa.0 = alloca [16 x i8], align 8  ; 6 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !51, !noalias !12340, !noundef !46
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i, !prof !53

._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.c, align 8, !noalias !12341 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !12341
  %i.g = insertvalue { i64, i64 } poison, i64 %.pre.i.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.pre1.i.i, 1
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %bb.a
  %i.i = tail call { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys(), !noalias !12342 ; 3 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.k, ptr %i.l, align 8, !noalias !12342
  store i8 1, ptr %i.d, align 8, !noalias !12342
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %i.m = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.j, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ]
  %.merged.i = phi { i64, i64 } [ %i.h, %._RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskLngH8kgpZI_15ruff_python_ast.exit_crit_edge.i.i ], [ %i.i, %_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskLngH8kgpZI_15ruff_python_ast.exit.i.i ] ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.c, align 8, !noalias !12341
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12344)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !12345, !noalias !12346, !nonnull !46, !noundef !46
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !12345, !noalias !12346, !noundef !46 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @46, i64 16), i64 16, i1 false), !noalias !12347
  br i1 %i.s, label %_RINvXs3W_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_7FStringNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBZ_7tracker15StandardTrackerEB9_.exit.thread, label %bb.b

_RINvXs3W_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_7FStringNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBZ_7tracker15StandardTrackerEB9_.exit.thread: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit
  %i.t = load i64, ptr %0, align 8, !range !52, !alias.scope !12345, !noalias !12346, !noundef !46
  %i.u = shl i64 %i.t, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

bb.b:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskLngH8kgpZI_15ruff_python_ast.exit
  %i.v = extractvalue { i64, i64 } %.merged.i, 1
  %i.w = extractvalue { i64, i64 } %.merged.i, 0
  %.sroa.457.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.457.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.i.sroa.6.0..sroa.457.sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.10.i.sroa.6.0..sroa.565.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.y = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %i.z = insertelement <2 x i64> %i.y, i64 %i.v, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.043.0.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.c ]
  %.sroa.645.0.i = phi ptr [ @45, %bb.b ], [ %.sroa.063.0.copyload.i, %bb.c ]
  %.sroa.848.0.i = phi i64 [ 0, %bb.b ], [ %.sroa.464.0.copyload.i, %bb.c ]
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.c ] ; 2 uses
  %i.aa = phi <2 x i64> [ %i.z, %bb.b ], [ %i.ad, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.457.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.sroa.0, i64 16, i1 false), !noalias !12349
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %.sroa.01.0.i.i
  store ptr %.sroa.645.0.i, ptr %i.b, align 8, !noalias !12350
  store i64 %.sroa.848.0.i, ptr %.sroa.457.sroa.4.0..sroa_idx.i, align 8, !noalias !12350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12348
  store <2 x i64> %i.aa, ptr %.sroa.10.i.sroa.6.0..sroa.457.sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !12349
  call fastcc void @_RINvXsbL_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_25InterpolatedStringElementNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1m_7tracker15StandardTrackerEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %i.ab, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b), !noalias !12348, !inline_history !12339
  %i.ac = load i64, ptr %i.a, align 8, !noalias !12348, !noundef !46
  %.sroa.063.0.copyload.i = load ptr, ptr %i.x, align 8, !noalias !12348 ; 3 uses
  %.sroa.464.0.copyload.i = load i64, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !12348 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.565.0..sroa_idx.i, i64 16, i1 false), !noalias !12349
  %i.ad = load <2 x i64>, ptr %.sroa.10.i.sroa.6.0..sroa.565.0..sroa_idx.i.sroa_idx, align 8, !noalias !12349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12348
  %i.ae = add i64 %i.ac, %.sroa.043.0.i           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12348
  %i.af = add nuw i64 %.sroa.01.0.i.i, 1          ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.r
  br i1 %i.ag, label %_RINvXs3W_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_7FStringNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBZ_7tracker15StandardTrackerEB9_.exit, label %bb.c

_RINvXs3W_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_7FStringNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBZ_7tracker15StandardTrackerEB9_.exit: ; preds = %bb.c
  %i.ah = load i64, ptr %0, align 8, !range !52, !alias.scope !12345, !noalias !12346, !noundef !46
  %i.ai = shl i64 %i.ah, 6
  %i.aj = add i64 %i.ai, %i.ae                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.0)
  %i.ak = icmp eq i64 %.sroa.464.0.copyload.i, 0
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvXs3W_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_7FStringNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBZ_7tracker15StandardTrackerEB9_.exit
  %i.al = shl i64 %.sroa.464.0.copyload.i, 3
  %i.am = icmp slt i64 %.sroa.464.0.copyload.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.am)
  %i.an = and i64 %i.al, -16                      ; 2 uses
  %i.ao = add i64 %i.an, 16                       ; 2 uses
  %i.ap = add nsw i64 %.sroa.464.0.copyload.i, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  tail call void @llvm.assume(i1 %i.as)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.063.0.copyload.i) ]
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %i.au = sub nuw nsw i64 -16, %i.an
  %i.av = getelementptr inbounds i8, ptr %.sroa.063.0.copyload.i, i64 %i.au
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RINvXs3W_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_7FStringNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBZ_7tracker15StandardTrackerEB9_.exit.thread, %_RINvXs3W_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_7FStringNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBZ_7tracker15StandardTrackerEB9_.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.aw = phi i64 [ %i.u, %_RINvXs3W_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_7FStringNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBZ_7tracker15StandardTrackerEB9_.exit.thread ], [ %i.aj, %_RINvXs3W_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_7FStringNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBZ_7tracker15StandardTrackerEB9_.exit ], [ %i.aj, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ], [ %i.aj, %bb.d ]
  ret i64 %i.aw
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_18ComparableWithItemINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_5nodes8WithItemE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 5 uses
  %.sroa.5 = alloca [120 x i8], align 8           ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_9generated4ExprE4from(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.b, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !align !54, !noundef !46 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_9generated4ExprE4from(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a, ptr noundef nonnull align 8 %i.d)
          to label %_RNvXsy_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtB7_9generated4ExprEE4from.exit unwind label %bb.d, !inline_history !112

bb.c:                                             ; preds = %bb.a, %_RNvXsy_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtB7_9generated4ExprEE4from.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %_RNvXsy_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtB7_9generated4ExprEE4from.exit ], [ -2, %bb.a ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.0.0, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.b) #59
          to label %bb.f unwind label %bb.e

_RNvXsy_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtB7_9generated4ExprEE4from.exit: ; preds = %bb.b
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx2, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i32, i32 } @_RNvXs3_NtCskLngH8kgpZI_15ruff_python_ast10identifierNtNtB7_5nodes5AliasNtB5_10Identifier10identifier(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !range !48, !noundef !46
  %.not = icmp eq i8 %i.b, -1                     ; 3 uses
  %. = select i1 %.not, ptr null, ptr %0
  %1 = getelementptr i8, ptr %., i64 4
  %i.c = getelementptr i8, ptr %0, i64 44
  %.val.pn.in.i.idx.a = select i1 %.not, i64 40, i64 0
  %.val.pn.in.i = getelementptr i8, ptr %0, i64 %.val.pn.in.i.idx.a
  %.val7.pn.in.i = select i1 %.not, ptr %i.c, ptr %1
  %.val7.pn.i = load i32, ptr %.val7.pn.in.i, align 4, !noundef !46
  %.val.pn.i = load i32, ptr %.val.pn.in.i, align 8, !noundef !46
  %.pn10.i = insertvalue { i32, i32 } poison, i32 %.val.pn.i, 0
  %.pn.i = insertvalue { i32, i32 } %.pn10.i, i32 %.val7.pn.i, 1
  ret { i32, i32 } %.pn.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCskLngH8kgpZI_15ruff_python_ast10str_prefixNtB5_13TStringPrefixNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !110, !noundef !46
  switch i8 %i.a, label %bb.d [
    i8 2, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.4.0 = phi i64 [ 2, %bb.d ], [ 2, %bb.c ], [ 1, %bb.a ]
  %.sroa.0.0 = phi ptr [ @322, %bb.d ], [ @321, %bb.c ], [ @320, %bb.a ]
  %i.b = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.4.0)
  ret i1 %i.b

bb.c:                                             ; preds = %bb.a
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCskLngH8kgpZI_15ruff_python_ast14python_versionNtB5_13PythonVersionINtNtCs4NRVxsYgnAr_4core7convert7TryFromTReB1R_EE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !46 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !46 ; 7 uses
  switch i64 %i.c, label %thread-pre-split.i [
    i64 0, label %_RNCNvXs3_NtCskLngH8kgpZI_15ruff_python_ast14python_versionNtB7_13PythonVersionINtNtCs4NRVxsYgnAr_4core7convert7TryFromTReB1T_EE8try_from0B9_.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.a, align 1, !alias.scope !12363, !noundef !46 ; 2 uses
  switch i8 %i.h, label %bb.c [
    i8 43, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
    i8 45, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %i.a, align 1, !alias.scope !12363
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.i = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.h, %bb.b ]
  %cond.i = icmp eq i8 %i.i, 43                   ; 2 uses
  %i.j = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.c, %i.j          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.idx.i ; 3 uses
  %i.k = icmp samesign ult i64 %.sroa.15.0.i, 3
  br i1 %i.k, label %.preheader.i, label %.preheader57.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5462.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5462.i, label %.loopexit113, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.l = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !12363, !noundef !46
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48                    ; 2 uses
  %i.o = icmp ugt i32 %i.n, 9
  br i1 %i.o, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.preheader.i
  %i.p = icmp eq i64 %.sroa.15.0.i, 1
  %i.q = trunc nuw nsw i32 %i.n to i8             ; 2 uses
  br i1 %i.p, label %.loopexit113, label %.lr.ph.i

.preheader57.i:                                   ; preds = %bb.g
  %.not53.not.i = icmp eq i64 %i.s, 0
  br i1 %.not53.not.i, label %.loopexit113, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %bb.c, %.preheader57.i
  %.sroa.0.1.i170 = phi ptr [ %i.r, %.preheader57.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i169 = phi i64 [ %i.s, %.preheader57.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.043.0.i168 = phi i8 [ %i.ad, %.preheader57.i ], [ 0, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i170, i64 1
  %i.s = add nsw i64 %.sroa.15.1.i169, -1         ; 2 uses
  %i.t = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.043.0.i168, i8 10) ; 2 uses
  %i.u = extractvalue { i8, i1 } %i.t, 0          ; 2 uses
  %i.v = extractvalue { i8, i1 } %i.t, 1
  %i.w = load i8, ptr %.sroa.0.1.i170, align 1, !alias.scope !12363, !noundef !46 ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.e, !prof !47

bb.e:                                             ; preds = %.preheader57.i.preheader
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.g, label %.loopexit112

bb.f:                                             ; preds = %.preheader57.i.preheader
  %i.aa = add i8 %i.w, -48
  %i.ab = icmp ult i8 %i.aa, 10
  %spec.select.i = select i1 %i.ab, i8 2, i8 1
  br label %.loopexit112

bb.g:                                             ; preds = %bb.e
  %i.ac = trunc nuw nsw i32 %i.y to i8
  %i.ad = add i8 %i.u, %i.ac                      ; 3 uses
  %i.ae = icmp ult i8 %i.ad, %i.u
  br i1 %i.ae, label %.loopexit112, label %.preheader57.i, !prof !47

.lr.ph.i:                                         ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %.pre = load i8, ptr %i.af, align 1, !alias.scope !12363
  %i.ag = zext i8 %.pre to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, 9
  br i1 %i.ai, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, label %.loopexit113.loopexit.loopexit

.loopexit112:                                     ; preds = %bb.e, %bb.g, %bb.f
  %.sroa.8.0.i.ph = phi i8 [ %spec.select.i, %bb.f ], [ 2, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %i.aj = icmp eq i64 %i.c, 0
  br i1 %i.aj, label %_RNCNvXs3_NtCskLngH8kgpZI_15ruff_python_ast14python_versionNtB7_13PythonVersionINtNtCs4NRVxsYgnAr_4core7convert7TryFromTReB1T_EE8try_from0B9_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %.lr.ph.i, %.lr.ph.preheader.i, %bb.b, %bb.b, %.loopexit112
  %.sroa.8.0.i.ph98 = phi i8 [ %.sroa.8.0.i.ph, %.loopexit112 ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %.lr.ph.preheader.i ], [ 1, %.lr.ph.i ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !12364
  %i.ak = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !12364 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.h, label %_RNCNvXs3_NtCskLngH8kgpZI_15ruff_python_ast14python_versionNtB7_13PythonVersionINtNtCs4NRVxsYgnAr_4core7convert7TryFromTReB1T_EE8try_from0B9_.exit

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.c) #61, !noalias !12365
  unreachable

_RNCNvXs3_NtCskLngH8kgpZI_15ruff_python_ast14python_versionNtB7_13PythonVersionINtNtCs4NRVxsYgnAr_4core7convert7TryFromTReB1T_EE8try_from0B9_.exit: ; preds = %bb.a, %.loopexit112, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %.sroa.8.0.i.ph95 = phi i8 [ %.sroa.8.0.i.ph, %.loopexit112 ], [ %.sroa.8.0.i.ph98, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.a ]
  %.sroa.01.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %.loopexit112 ], [ %i.ak, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i, ptr nonnull readonly align 1 %i.a, i64 %i.c, i1 false), !noalias !12365
  store i8 1, ptr %0, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.8.0.i.ph95, ptr %.sroa.445.0..sroa_idx, align 1
  %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i.i, ptr %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx, align 8
  %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx, align 8
  br label %bb.p

.loopexit113.loopexit.loopexit:                   ; preds = %.lr.ph.i
  %i.am = mul nuw nsw i8 %i.q, 10
  %i.an = trunc nuw nsw i32 %i.ah to i8
  %i.ao = add nuw nsw i8 %i.am, %i.an
  br label %.loopexit113

.loopexit113:                                     ; preds = %.preheader57.i, %bb.d, %.loopexit113.loopexit.loopexit, %.preheader.i
  %.sroa.8.0.i = phi i8 [ 0, %.preheader.i ], [ %i.ao, %.loopexit113.loopexit.loopexit ], [ %i.q, %bb.d ], [ %i.ad, %.preheader57.i ]
  switch i64 %i.g, label %thread-pre-split.i78 [
    i64 0, label %_RNCNvXs3_NtCskLngH8kgpZI_15ruff_python_ast14python_versionNtB7_13PythonVersionINtNtCs4NRVxsYgnAr_4core7convert7TryFromTReB1T_EE8try_froms_0B9_.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %.loopexit113
  %i.ap = load i8, ptr %i.e, align 1, !alias.scope !12366, !noundef !46 ; 2 uses
  switch i8 %i.ap, label %bb.j [
    i8 43, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i81
    i8 45, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i81
  ]

thread-pre-split.i78:                             ; preds = %.loopexit113
  %.pr.i79 = load i8, ptr %i.e, align 1, !alias.scope !12366
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split.i78, %bb.i
  %i.aq = phi i8 [ %.pr.i79, %thread-pre-split.i78 ], [ %i.ap, %bb.i ]
  %cond.i61 = icmp eq i8 %i.aq, 43                ; 2 uses
  %i.ar = sext i1 %cond.i61 to i64
  %.sroa.15.0.i62 = add nsw i64 %i.g, %i.ar       ; 4 uses
  %.sroa.0.0.idx.i63 = zext i1 %cond.i61 to i64
  %.sroa.0.0.i64 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.idx.i63 ; 3 uses
  %i.as = icmp samesign ult i64 %.sroa.15.0.i62, 3
  br i1 %i.as, label %.preheader.i71, label %.preheader57.i65.preheader

.preheader.i71:                                   ; preds = %bb.j
  %.not5462.i72 = icmp eq i64 %.sroa.15.0.i62, 0
  br i1 %.not5462.i72, label %.loopexit109, label %.lr.ph.preheader.i73

.lr.ph.preheader.i73:                             ; preds = %.preheader.i71
  %i.at = load i8, ptr %.sroa.0.0.i64, align 1, !alias.scope !12366, !noundef !46
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 9
  br i1 %i.aw, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i81, label %bb.k

bb.k:                                             ; preds = %.lr.ph.preheader.i73
  %i.ax = icmp eq i64 %.sroa.15.0.i62, 1
  %i.ay = trunc nuw nsw i32 %i.av to i8           ; 2 uses
  br i1 %i.ax, label %.loopexit109, label %.lr.ph.i74

end_hunk_0
