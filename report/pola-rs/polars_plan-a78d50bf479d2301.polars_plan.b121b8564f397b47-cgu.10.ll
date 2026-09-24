Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.10?download=true
inline.NumInlined: 10822
inline.NumDeleted: 3869
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvXs6_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionIterNtNtB7_5arena4NodeQDINtB5_10CollectionB17_EEL_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 40, !dbg !129711
  %i.f = load ptr, ptr %i.e, align 8, !dbg !129711, !invariant.load !3672, !nonnull !3672
  %i.g = tail call noundef align 8 ptr %i.f(ptr noundef nonnull %.val, i64 noundef %i.c) #32, !dbg !129712, !inline_history !3589 ; 2 uses
  %.not = icmp eq ptr %i.g, null, !dbg !129713
  br i1 %.not, label %bb.c, label %bb.b, !dbg !129714

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.c, 1, !dbg !129715
  store i64 %i.h, ptr %i.b, align 8, !dbg !129715
  br label %bb.c, !dbg !129716

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.g, !dbg !129717
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs6_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionIterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightQDINtB5_10CollectionB17_EEL_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB1f_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !dbg !129718 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !129728, !nonnull !3672, !align !3707, !noundef !3672 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !129729 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !129729, !noundef !3672 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129725), !dbg !129730
  %i.d = load ptr, ptr %i.a, align 8, !dbg !129731, !alias.scope !129725, !nonnull !3672, !noundef !3672
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !129731
  %i.f = load ptr, ptr %i.e, align 8, !dbg !129731, !alias.scope !129725, !nonnull !3672, !align !3707, !noundef !3672
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !129731
  %i.h = load ptr, ptr %i.g, align 8, !dbg !129731, !invariant.load !3672, !noalias !129725, !nonnull !3672
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull %i.d, i64 noundef %i.c) #32, !dbg !129732, !noalias !129725, !inline_history !4568 ; 2 uses
  %.not = icmp eq ptr %i.i, null, !dbg !129733
  br i1 %.not, label %bb.c, label %bb.b, !dbg !129734

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.c, 1, !dbg !129735
  store i64 %i.j, ptr %i.b, align 8, !dbg !129735
  br label %bb.c, !dbg !129736

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.i, !dbg !129737
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs6_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionIterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateQDINtB5_10CollectionB17_EEL_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB1f_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !dbg !129738 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !129748, !nonnull !3672, !align !3707, !noundef !3672 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !129749 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !129749, !noundef !3672 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129745), !dbg !129750
  %i.d = load ptr, ptr %i.a, align 8, !dbg !129751, !alias.scope !129745, !nonnull !3672, !noundef !3672
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !129751
  %i.f = load ptr, ptr %i.e, align 8, !dbg !129751, !alias.scope !129745, !nonnull !3672, !align !3707, !noundef !3672
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !129751
  %i.h = load ptr, ptr %i.g, align 8, !dbg !129751, !invariant.load !3672, !noalias !129745, !nonnull !3672
  %i.i = tail call noundef align 8 ptr %i.h(ptr noundef nonnull %i.d, i64 noundef %i.c) #32, !dbg !129752, !noalias !129745, !inline_history !4569 ; 2 uses
  %.not = icmp eq ptr %i.i, null, !dbg !129753
  br i1 %.not, label %bb.c, label %bb.b, !dbg !129754

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.c, 1, !dbg !129755
  store i64 %i.j, ptr %i.b, align 8, !dbg !129755
  br label %bb.c, !dbg !129756

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.i, !dbg !129757
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs6_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionIterbQDINtB5_10CollectionbEEL_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !dbg !129758 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !129767, !nonnull !3672, !align !3707, !noundef !3672 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !129768 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !129768, !noundef !3672 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !dbg !129769, !nonnull !3672, !noundef !3672
  %i.d = getelementptr i8, ptr %i.a, i64 8, !dbg !129769
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !129769, !nonnull !3672, !align !3707, !noundef !3672
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 40, !dbg !129770
  %i.f = load ptr, ptr %i.e, align 8, !dbg !129770, !invariant.load !3672, !nonnull !3672
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull %.val, i64 noundef %i.c) #32, !dbg !129771, !inline_history !129761 ; 2 uses
  %.not = icmp eq ptr %i.g, null, !dbg !129772
  br i1 %.not, label %bb.c, label %bb.b, !dbg !129773

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.c, 1, !dbg !129774
  store i64 %i.h, ptr %i.b, align 8, !dbg !129774
  br label %bb.c, !dbg !129775

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.g, !dbg !129776
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsfcROwRM8ZtH_11polars_plan8callback7__pythonbNtB7_15PlanCallbackOut10from_pyany(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !129777 {
bb.a:
  invoke void @_RNvXsc_NtNtCsbm5zPlkZccl_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.b, !dbg !129791

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %1) #33
          to label %bb.g unwind label %bb.f, !dbg !129792

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !129793
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !dbg !129794, !noundef !3672
  %i.c = icmp sgt i64 %.val.i.i.i.i, 0, !dbg !129795
  br i1 %i.c, label %bb.e, label %bb.d, !dbg !129796, !prof !3862

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %1), !dbg !129797
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !129797

bb.e:                                             ; preds = %bb.c
  tail call void @_Py_DecRef(ptr noundef nonnull %1) #36, !dbg !129798
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !129799

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.d, %bb.e
  ret void, !dbg !129800

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !129801
  unreachable, !dbg !129801

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !129801
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE6reduceCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !129802 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !129815, !noundef !3672
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !129816 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !129816, !noundef !3672 ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.c, !dbg !129817
  %i.e = load ptr, ptr %2, align 8, !dbg !129818, !noundef !3672 ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e, !dbg !129819
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEECsfcROwRM8ZtH_11polars_plan.exit15, label %bb.b, !dbg !129819

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !129820
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !129821
  %.val7 = load i64, ptr %i.g, align 8, !dbg !129821, !alias.scope !4081, !noundef !3672 ; 4 uses
  %i.h = icmp eq i64 %.val7, 0, !dbg !129822
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph, !dbg !129822

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.d
  %i.i = icmp eq i64 %i.k, %.val7, !dbg !129822
  br i1 %i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph, !dbg !129822

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  %.sroa.0.0.i.i.i38 = phi i64 [ %i.k, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i38, !dbg !129822 ; 3 uses
  %i.k = add i64 %.sroa.0.0.i.i.i38, 1, !dbg !129822 ; 4 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.d unwind label %bb.c, !dbg !129823, !noalias !129814

bb.c:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i.i.i unwind label %bb.e, !dbg !129824, !noalias !129814

bb.d:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.g, !dbg !129825, !noalias !129814

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !129823, !noalias !129814
  unreachable, !dbg !129823

bb.f:                                             ; preds = %.lr.ph40
  %i.n = add i64 %.sroa.0.1.i.i.i39, 1, !dbg !129822 ; 2 uses
  %i.o = icmp eq i64 %i.n, %.val7, !dbg !129822
  br i1 %i.o, label %.body, label %.lr.ph40, !dbg !129822

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.l, %bb.c ]
  %i.q = icmp eq i64 %i.k, %.val7, !dbg !129822
  br i1 %i.q, label %.body, label %.lr.ph40, !dbg !129822

.lr.ph40:                                         ; preds = %.body.i.i.i, %bb.f
  %.sroa.0.1.i.i.i39 = phi i64 [ %i.n, %bb.f ], [ %i.k, %.body.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i39, !dbg !129822
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.r) #33
          to label %bb.f unwind label %bb.h, !dbg !129822, !noalias !129814

bb.h:                                             ; preds = %.lr.ph40
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !129822, !noalias !129814
  unreachable, !dbg !129822

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEECsfcROwRM8ZtH_11polars_plan.exit15
  ret void, !dbg !129826

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEECsfcROwRM8ZtH_11polars_plan.exit15: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !129827
  %i.u = load i64, ptr %i.t, align 8, !dbg !129827, !noundef !3672
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !129828 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !129828, !noundef !3672
  %i.x = add i64 %i.w, %i.u, !dbg !129828
  store i64 %i.x, ptr %i.v, align 8, !dbg !129828
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !129829
  %.sroa.416.0.copyload = load i64, ptr %.sroa.416.0..sroa_idx, align 8, !dbg !129829
  %i.y = add i64 %.sroa.416.0.copyload, %i.c, !dbg !129830
  store i64 %i.y, ptr %i.b, align 8, !dbg !129830
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !129820
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !129821

.body:                                            ; preds = %bb.f, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i, !dbg !129831
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultmEE6reduceCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !2040 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !129833, !noundef !3672
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !129834 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !129834, !noundef !3672 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c, !dbg !129835
  %i.e = load ptr, ptr %2, align 8, !dbg !129836, !noundef !3672
  %i.f = icmp eq ptr %i.d, %i.e, !dbg !129837
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !129837

bb.b:                                             ; preds = %bb.a, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !129838
  ret void, !dbg !129839

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !129840
  %i.h = load i64, ptr %i.g, align 8, !dbg !129840, !noundef !3672
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !129841 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !129841, !noundef !3672
  %i.k = add i64 %i.j, %i.h, !dbg !129841
  store i64 %i.k, ptr %i.i, align 8, !dbg !129841
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !129842
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !129842
  %i.l = add i64 %.sroa.3.0.copyload, %i.c, !dbg !129843
  store i64 %i.l, ptr %i.b, align 8, !dbg !129843
  br label %bb.b, !dbg !129844
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NvXs0_NvXNvNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr8businesss_1__NtBg_16BusinessFunctionNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1J_7Visitor10visit_enumNtB5_s0_9___VisitorB2U_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !3638 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 46), !dbg !129845
  ret i1 %i.a, !dbg !129846
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsfcROwRM8ZtH_11polars_plan8callback7__pythonjNtB7_16PlanCallbackArgs10into_pyany(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #1 !dbg !129847 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXso_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3numjNtNtBb_10conversion12IntoPyObject13into_pyobject(i64 noundef %1), !dbg !129849
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !129850
  store ptr %i.a, ptr %i.b, align 8, !dbg !129850
  store i64 0, ptr %0, align 8, !dbg !129850
  ret void, !dbg !129851
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !129852 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %.not20 = icmp eq ptr %.promoted, null, !dbg !129881
  br i1 %.not20, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtB17_11collections11linked_list4NodeINtNtB17_3vec3VecIB2i_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB17_5alloc6GlobalEEECsfcROwRM8ZtH_11polars_plan.exit12, label %.lr.ph.preheader, !dbg !129882

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted19 = load i64, ptr %i.b, align 8
  br label %.lr.ph, !dbg !129883

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.c = phi ptr [ %i.f, %bb.h ], [ %.promoted, %.lr.ph.preheader ] ; 6 uses
  %i.d = phi i64 [ %i.h, %bb.h ], [ %.promoted19, %.lr.ph.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !129884
  %i.f = load ptr, ptr %i.e, align 8, !dbg !129884, !noundef !3672 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !dbg !129885
  %.not3 = icmp eq ptr %i.f, null, !dbg !129886   ; 2 uses
  br i1 %.not3, label %bb.c, label %bb.b, !dbg !129883

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !129887
  store ptr null, ptr %i.g, align 8, !dbg !129887
  br label %bb.d, !dbg !129888

bb.c:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.a, align 8, !dbg !129889
  br label %bb.d, !dbg !129890

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = add i64 %i.d, -1, !dbg !129891           ; 2 uses
  store i64 %i.h, ptr %i.b, align 8, !dbg !129891
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBH_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.e, !dbg !129892

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.f, !dbg !129893

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !129892
  unreachable, !dbg !129892

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBH_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.h unwind label %bb.g, !dbg !129894

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBH_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !129895

.body:                                            ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.i, %bb.e ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #36, !dbg !129896
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtBP_10LinkedListppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBT_3vec3VecIB2B_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEENtNtBT_5alloc6GlobalEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %0) #33
          to label %bb.j unwind label %bb.i, !dbg !129897

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBH_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #36, !dbg !129898
  br i1 %.not3, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtB17_11collections11linked_list4NodeINtNtB17_3vec3VecIB2i_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB17_5alloc6GlobalEEECsfcROwRM8ZtH_11polars_plan.exit12, label %.lr.ph, !dbg !129882

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtB17_11collections11linked_list4NodeINtNtB17_3vec3VecIB2i_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB17_5alloc6GlobalEEECsfcROwRM8ZtH_11polars_plan.exit12: ; preds = %bb.h, %bb.a
  ret void, !dbg !129899

bb.i:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !129900
  unreachable, !dbg !129900

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i, !dbg !129900
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_TyINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEENtNtNtB1D_3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !129901 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %.not20 = icmp eq ptr %.promoted, null, !dbg !129930
  br i1 %.not20, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtB17_11collections11linked_list4NodeINtNtB17_3vec3VecIB2i_TyIBH_RNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEERNtNtB17_5alloc6GlobalEEECsfcROwRM8ZtH_11polars_plan.exit12, label %.lr.ph.preheader, !dbg !129931

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted19 = load i64, ptr %i.b, align 8
  br label %.lr.ph, !dbg !129932

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.c = phi ptr [ %i.f, %bb.h ], [ %.promoted, %.lr.ph.preheader ] ; 6 uses
  %i.d = phi i64 [ %i.h, %bb.h ], [ %.promoted19, %.lr.ph.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !129933
  %i.f = load ptr, ptr %i.e, align 8, !dbg !129933, !noundef !3672 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !dbg !129934
  %.not3 = icmp eq ptr %i.f, null, !dbg !129935   ; 2 uses
  br i1 %.not3, label %bb.c, label %bb.b, !dbg !129932

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !129936
  store ptr null, ptr %i.g, align 8, !dbg !129936
  br label %bb.d, !dbg !129937

bb.c:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.a, align 8, !dbg !129938
  br label %bb.d, !dbg !129939

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = add i64 %i.d, -1, !dbg !129940           ; 2 uses
  store i64 %i.h, ptr %i.b, align 8, !dbg !129940
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_TyINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEENtNtNtBQ_3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBH_TyINtNtB4_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.e, !dbg !129941

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTyINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEENtNtNtB19_3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.f, !dbg !129942

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !129941
  unreachable, !dbg !129941

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBH_TyINtNtB4_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTyINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEENtNtNtB19_3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.h unwind label %bb.g, !dbg !129943

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBH_TyINtNtB4_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !129944

.body:                                            ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.i, %bb.e ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #36, !dbg !129945
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtBP_10LinkedListppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBT_3vec3VecIB2B_TyINtNtB4_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEENtNtBT_5alloc6GlobalEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %0) #33
          to label %bb.j unwind label %bb.i, !dbg !129946

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBH_TyINtNtB4_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #36, !dbg !129947
  br i1 %.not3, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtB17_11collections11linked_list4NodeINtNtB17_3vec3VecIB2i_TyIBH_RNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEERNtNtB17_5alloc6GlobalEEECsfcROwRM8ZtH_11polars_plan.exit12, label %.lr.ph, !dbg !129931

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtB17_11collections11linked_list4NodeINtNtB17_3vec3VecIB2i_TyIBH_RNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEERNtNtB17_5alloc6GlobalEEECsfcROwRM8ZtH_11polars_plan.exit12: ; preds = %bb.h, %bb.a
end_hunk_0
begin_hunk_1_@llvm.abs.i32
!129626 = !DILocation(line: 134, column: 52, scope: !129621)
!129627 = !DILocation(line: 1418, column: 18, scope: !129624, inlinedAt: !129626)
!129628 = !DILocation(line: 126, column: 13, scope: !129621)
!129629 = !DILocation(line: 126, column: 36, scope: !129621)
!129630 = !DILocation(line: 125, column: 9, scope: !129621)
!129631 = !DILocation(line: 134, column: 13, scope: !129621)
!129632 = !DILocation(line: 961, column: 18, scope: !129622, inlinedAt: !129625)
!129633 = !DILocation(line: 1921, column: 41, scope: !129623, inlinedAt: !129627)
!129634 = !DILocation(line: 135, column: 13, scope: !129621)
!129635 = !DILocation(line: 138, column: 9, scope: !129621)
!129636 = !DILocation(line: 139, column: 6, scope: !129621)
!129637 = !DILocation(line: 7, column: 49, scope: !3635)
!129638 = !DILocation(line: 7, column: 60, scope: !3635)
!129639 = !DILocation(line: 110, column: 9, scope: !3590)
!129640 = !DILocation(line: 110, column: 18, scope: !3590)
!129641 = !DILocation(line: 111, column: 6, scope: !3590)
!129642 = !DILocation(line: 106, column: 9, scope: !3636)
!129643 = !DILocation(line: 106, column: 18, scope: !3636)
!129644 = !DILocation(line: 107, column: 6, scope: !3636)
!129645 = !DILocation(line: 114, column: 9, scope: !3620)
!129646 = !DILocation(line: 114, column: 18, scope: !3620)
!129647 = !DILocation(line: 115, column: 6, scope: !3620)
!129648 = !DILocation(line: 110, column: 9, scope: !3591)
!129649 = !DILocation(line: 110, column: 18, scope: !3591)
!129650 = !DILocation(line: 111, column: 6, scope: !3591)
!129651 = !DILocation(line: 106, column: 9, scope: !3637)
!129652 = !DILocation(line: 106, column: 18, scope: !3637)
!129653 = !DILocation(line: 107, column: 6, scope: !3637)
!129654 = !DILocation(line: 114, column: 9, scope: !3621)
!129655 = !DILocation(line: 114, column: 18, scope: !3621)
!129656 = !DILocation(line: 115, column: 6, scope: !3621)
!129657 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs5_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt", scope: !129661, file: !4618, line: 100, type: !3673, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129658 = distinct !DISubprogram(name: "as_ref<str>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNulleE6as_refCsfcROwRM8ZtH_11polars_plan", scope: !3774, file: !3772, line: 440, type: !3673, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129659 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs_NtCsbm5zPlkZccl_4pyo38pybackedNtB4_11PyBackedStrNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !129665, file: !4618, line: 67, type: !3673, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129660 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCsbm5zPlkZccl_4pyo38pybackedNtB2_11PyBackedStr6as_str", scope: !129666, file: !4618, line: 49, type: !3673, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129661 = !DINamespace(name: "{impl#7}", scope: !4619)
!129662 = !DILocation(line: 101, column: 14, scope: !129657)
!129663 = !DILocation(line: 68, column: 14, scope: !129659, inlinedAt: !129662)
!129664 = !DILocation(line: 51, column: 28, scope: !129660, inlinedAt: !129663)
!129665 = !DINamespace(name: "{impl#1}", scope: !4619)
!129666 = !DINamespace(name: "PyBackedStr", scope: !4619)
!129667 = !DILocation(line: 444, column: 20, scope: !129658, inlinedAt: !129664)
!129668 = !DILocation(line: 101, column: 22, scope: !129657)
!129669 = !DILocation(line: 102, column: 6, scope: !129657)
!129670 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt", scope: !129673, file: !129671, line: 9, type: !3673, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129671 = !DIFile(filename: "library/core/src/num/error.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c1c00b456b2b3426c92f6a02de4c0d43")
!129672 = !DINamespace(name: "error", scope: !3730)
!129673 = !DINamespace(name: "{impl#7}", scope: !129672)
!129674 = !DILocation(line: 10, column: 28, scope: !129670)
!129675 = !DILocation(line: 9, column: 10, scope: !129670)
!129676 = !DILocation(line: 9, column: 14, scope: !129670)
!129677 = !DILocation(line: 9, column: 15, scope: !129670)
!129678 = distinct !DISubprogram(name: "into_pyany", linkageName: "_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan8callback7__pythonbNtB7_16PlanCallbackArgs10into_pyany", scope: !129686, file: !4620, line: 131, type: !3673, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129679 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCsbm5zPlkZccl_4pyo35types10boolobjectNtB2_6PyBool3new", scope: !4438, file: !4436, line: 50, type: !3673, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129680 = distinct !DISubprogram(name: "into_pyobject", linkageName: "_RNvXsa_NtNtCsbm5zPlkZccl_4pyo35types10boolobjectbNtNtB9_10conversion12IntoPyObject13into_pyobject", scope: !4439, file: !4436, line: 167, type: !3673, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129681 = distinct !DISubprogram(name: "Py_INCREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_INCREF", scope: !3865, file: !3863, line: 179, type: !3673, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129682 = distinct !DISubprogram(name: "unbind<pyo3::types::any::PyAny>", linkageName: "_RNvXsk_NtCsbm5zPlkZccl_4pyo38instanceINtB5_8BorrowedNtNtNtB7_5types3any5PyAnyEINtB5_11BoundObjectBO_E6unbindCsfcROwRM8ZtH_11polars_plan", scope: !3905, file: !3857, line: 1278, type: !3673, scopeLine: 1278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129683 = distinct !DISubprogram(name: "to_owned<pyo3::instance::Bound<pyo3::types::any::PyAny>>", linkageName: "_RNvXNtCsgZ49sUHp3tW_5alloc6borrowINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBA_5types3any5PyAnyENtB2_7ToOwned8to_ownedCsfcROwRM8ZtH_11polars_plan", scope: !3904, file: !3902, line: 77, type: !3673, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129684 = distinct !DISubprogram(name: "clone<pyo3::types::any::PyAny>", linkageName: "_RNvXs7_NtCsbm5zPlkZccl_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan", scope: !3901, file: !3857, line: 822, type: !3673, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129685 = distinct !DISubprogram(name: "clone_ref<pyo3::types::any::PyAny>", linkageName: "_RNvMsq_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyE9clone_refCsfcROwRM8ZtH_11polars_plan", scope: !3900, file: !3857, line: 1811, type: !3673, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129686 = !DINamespace(name: "{impl#7}", scope: !4622)
!129687 = !DILocation(line: 132, column: 29, scope: !129678)
!129688 = !DILocation(line: 168, column: 12, scope: !129680, inlinedAt: !129687)
!129689 = !DILocation(line: 132, column: 59, scope: !129678)
!129690 = !DILocation(line: 1279, column: 17, scope: !129682, inlinedAt: !129689)
!129691 = !DILocation(line: 78, column: 14, scope: !129683, inlinedAt: !129690)
!129692 = !DILocation(line: 823, column: 47, scope: !129684, inlinedAt: !129691)
!129693 = !DILocation(line: 1816, column: 18, scope: !129685, inlinedAt: !129692)
!129694 = !DILocation(line: 53, scope: !129679, inlinedAt: !129688)
!129695 = !DILocation(line: 192, column: 13, scope: !129681, inlinedAt: !129693)
!129696 = !DILocation(line: 132, column: 21, scope: !129678)
!129697 = !DILocation(line: 133, column: 18, scope: !129678)
!129698 = distinct !DISubprogram(name: "split_off_left<u32>", linkageName: "_RNvXs5_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_15CollectConsumermEINtNtB9_8plumbing17UnindexedConsumermE14split_off_leftCsfcROwRM8ZtH_11polars_plan", scope: !129699, file: !4076, line: 155, type: !3673, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129699 = !DINamespace(name: "{impl#7}", scope: !4079)
!129700 = !DILocation(line: 156, column: 9, scope: !129698)
!129701 = distinct !DISubprogram(name: "next<polars_utils::arena::Node, &mut dyn polars_utils::collection::Collection<polars_utils::arena::Node>>", linkageName: "_RNvXs6_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionIterNtNtB7_5arena4NodeQDINtB5_10CollectionB17_EEL_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan", scope: !4623, file: !3703, line: 127, type: !3673, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129702 = distinct !DILocation(line: 128, column: 36, scope: !129701)
!129703 = distinct !DISubprogram(name: "is_some<&polars_utils::arena::Node>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRNtNtCs2mZqlW55729_12polars_utils5arena4NodeE7is_someCsfcROwRM8ZtH_11polars_plan", scope: !3728, file: !3726, line: 635, type: !3673, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129704 = distinct !DILexicalBlock(scope: !129703, file: !3888, line: 429, column: 9)
!129705 = distinct !DILexicalBlock(scope: !129701, file: !3703, line: 128, column: 9)
!129706 = !DILexicalBlockFile(scope: !129704, file: !3726, discriminator: 0)
!129707 = !DILocation(line: 130, column: 17, scope: !129705)
!129708 = !DILocation(line: 128, column: 20, scope: !129701)
!129709 = !DILocation(line: 128, column: 40, scope: !129701)
!129710 = !DILocation(line: 128, column: 36, scope: !129701)
!129711 = !DILocation(line: 110, column: 9, scope: !3588, inlinedAt: !129702)
!129712 = !DILocation(line: 110, column: 18, scope: !3588, inlinedAt: !129702)
!129713 = !DILocation(line: 636, column: 18, scope: !129706, inlinedAt: !129707)
!129714 = !DILocation(line: 130, column: 12, scope: !129705)
!129715 = !DILocation(line: 131, column: 13, scope: !129705)
!129716 = !DILocation(line: 130, column: 9, scope: !129705)
!129717 = !DILocation(line: 135, column: 6, scope: !129701)
!129718 = distinct !DISubprogram(name: "next<polars_plan::plans::aexpr::projection_height::ExprProjectionHeight, &mut dyn polars_utils::collection::Collection<polars_plan::plans::aexpr::projection_height::ExprProjectionHeight>>", linkageName: "_RNvXs6_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionIterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightQDINtB5_10CollectionB17_EEL_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB1f_", scope: !4623, file: !3703, line: 127, type: !3673, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129719 = distinct !{!129719, !"_RNvXs5_NtCs2mZqlW55729_12polars_utils10collectionQDINtB5_10CollectionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEL_IBO_B15_E3getB1d_"}
!129720 = distinct !{!129720, !129719, !"_RNvXs5_NtCs2mZqlW55729_12polars_utils10collectionQDINtB5_10CollectionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEL_IBO_B15_E3getB1d_: argument 0"}
!129721 = distinct !DILocation(line: 128, column: 36, scope: !129718)
!129722 = distinct !DISubprogram(name: "is_some<&polars_plan::plans::aexpr::projection_height::ExprProjectionHeight>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightE7is_someBQ_", scope: !3728, file: !3726, line: 635, type: !3673, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129723 = distinct !DILexicalBlock(scope: !129722, file: !3888, line: 429, column: 9)
!129724 = distinct !DILexicalBlock(scope: !129718, file: !3703, line: 128, column: 9)
!129725 = !{!129720}
!129726 = !DILexicalBlockFile(scope: !129723, file: !3726, discriminator: 0)
!129727 = !DILocation(line: 130, column: 17, scope: !129724)
!129728 = !DILocation(line: 128, column: 20, scope: !129718)
!129729 = !DILocation(line: 128, column: 40, scope: !129718)
!129730 = !DILocation(line: 128, column: 36, scope: !129718)
!129731 = !DILocation(line: 110, column: 9, scope: !3590, inlinedAt: !129721)
!129732 = !DILocation(line: 110, column: 18, scope: !3590, inlinedAt: !129721)
!129733 = !DILocation(line: 636, column: 18, scope: !129726, inlinedAt: !129727)
!129734 = !DILocation(line: 130, column: 12, scope: !129724)
!129735 = !DILocation(line: 131, column: 13, scope: !129724)
!129736 = !DILocation(line: 130, column: 9, scope: !129724)
!129737 = !DILocation(line: 135, column: 6, scope: !129718)
!129738 = distinct !DISubprogram(name: "next<polars_plan::plans::optimizer::slice_pushdown_expr::State, &mut dyn polars_utils::collection::Collection<polars_plan::plans::optimizer::slice_pushdown_expr::State>>", linkageName: "_RNvXs6_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionIterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateQDINtB5_10CollectionB17_EEL_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB1f_", scope: !4623, file: !3703, line: 127, type: !3673, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129739 = distinct !{!129739, !"_RNvXs5_NtCs2mZqlW55729_12polars_utils10collectionQDINtB5_10CollectionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEEL_IBO_B15_E3getB1d_"}
!129740 = distinct !{!129740, !129739, !"_RNvXs5_NtCs2mZqlW55729_12polars_utils10collectionQDINtB5_10CollectionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEEL_IBO_B15_E3getB1d_: argument 0"}
!129741 = distinct !DILocation(line: 128, column: 36, scope: !129738)
!129742 = distinct !DISubprogram(name: "is_some<&polars_plan::plans::optimizer::slice_pushdown_expr::State>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateE7is_someBQ_", scope: !3728, file: !3726, line: 635, type: !3673, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129743 = distinct !DILexicalBlock(scope: !129742, file: !3888, line: 429, column: 9)
!129744 = distinct !DILexicalBlock(scope: !129738, file: !3703, line: 128, column: 9)
!129745 = !{!129740}
!129746 = !DILexicalBlockFile(scope: !129743, file: !3726, discriminator: 0)
!129747 = !DILocation(line: 130, column: 17, scope: !129744)
!129748 = !DILocation(line: 128, column: 20, scope: !129738)
!129749 = !DILocation(line: 128, column: 40, scope: !129738)
!129750 = !DILocation(line: 128, column: 36, scope: !129738)
!129751 = !DILocation(line: 110, column: 9, scope: !3591, inlinedAt: !129741)
!129752 = !DILocation(line: 110, column: 18, scope: !3591, inlinedAt: !129741)
!129753 = !DILocation(line: 636, column: 18, scope: !129746, inlinedAt: !129747)
!129754 = !DILocation(line: 130, column: 12, scope: !129744)
!129755 = !DILocation(line: 131, column: 13, scope: !129744)
!129756 = !DILocation(line: 130, column: 9, scope: !129744)
!129757 = !DILocation(line: 135, column: 6, scope: !129738)
!129758 = distinct !DISubprogram(name: "next<bool, &mut dyn polars_utils::collection::Collection<bool>>", linkageName: "_RNvXs6_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionIterbQDINtB5_10CollectionbEEL_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan", scope: !4623, file: !3703, line: 127, type: !3673, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129759 = distinct !DISubprogram(name: "get<bool>", linkageName: "_RNvXs5_NtCs2mZqlW55729_12polars_utils10collectionQDINtB5_10CollectionbEEL_IBO_bE3getCsfcROwRM8ZtH_11polars_plan", scope: !3708, file: !3703, line: 109, type: !3685, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129760 = distinct !DILocation(line: 128, column: 36, scope: !129758)
!129761 = distinct !{null}
!129762 = distinct !DISubprogram(name: "is_some<&bool>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRbE7is_someCsfcROwRM8ZtH_11polars_plan", scope: !3728, file: !3726, line: 635, type: !3673, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129763 = distinct !DILexicalBlock(scope: !129762, file: !3888, line: 429, column: 9)
!129764 = distinct !DILexicalBlock(scope: !129758, file: !3703, line: 128, column: 9)
!129765 = !DILexicalBlockFile(scope: !129763, file: !3726, discriminator: 0)
!129766 = !DILocation(line: 130, column: 17, scope: !129764)
!129767 = !DILocation(line: 128, column: 20, scope: !129758)
!129768 = !DILocation(line: 128, column: 40, scope: !129758)
!129769 = !DILocation(line: 128, column: 36, scope: !129758)
!129770 = !DILocation(line: 110, column: 9, scope: !129759, inlinedAt: !129760)
!129771 = !DILocation(line: 110, column: 18, scope: !129759, inlinedAt: !129760)
!129772 = !DILocation(line: 636, column: 18, scope: !129765, inlinedAt: !129766)
!129773 = !DILocation(line: 130, column: 12, scope: !129764)
!129774 = !DILocation(line: 131, column: 13, scope: !129764)
!129775 = !DILocation(line: 130, column: 9, scope: !129764)
!129776 = !DILocation(line: 135, column: 6, scope: !129758)
!129777 = distinct !DISubprogram(name: "from_pyany", linkageName: "_RNvXs6_NtNtCsfcROwRM8ZtH_11polars_plan8callback7__pythonbNtB7_15PlanCallbackOut10from_pyany", scope: !129789, file: !4620, line: 137, type: !3673, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129778 = distinct !DISubprogram(name: "extract<bool>", linkageName: "_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7extractbECsfcROwRM8ZtH_11polars_plan", scope: !4007, file: !4005, line: 1322, type: !3673, scopeLine: 1322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129779 = distinct !DILocation(line: 139, column: 17, scope: !129777)
!129780 = distinct !DILocation(line: 810, column: 1, scope: !68, inlinedAt: !129779)
!129781 = distinct !DILocation(line: 2306, column: 9, scope: !67, inlinedAt: !129780)
!129782 = distinct !DILocation(line: 2290, column: 16, scope: !66, inlinedAt: !129781)
!129783 = distinct !DILocation(line: 39, column: 18, scope: !65, inlinedAt: !129782)
!129784 = distinct !DILocation(line: 461, column: 37, scope: !64, inlinedAt: !129783)
!129785 = distinct !DILocation(line: 250, column: 5, scope: !63, inlinedAt: !129784)
!129786 = distinct !DILocation(line: 462, column: 12, scope: !71, inlinedAt: !129783)
!129787 = distinct !DILocation(line: 39, column: 44, scope: !65, inlinedAt: !129782)
!129788 = distinct !DILocation(line: 2292, column: 26, scope: !66, inlinedAt: !129781)
!129789 = !DINamespace(name: "{impl#8}", scope: !4622)
!129790 = !DILocation(line: 138, column: 36, scope: !129777)
!129791 = !DILocation(line: 1326, column: 9, scope: !129778, inlinedAt: !129790)
!129792 = !DILocation(line: 139, column: 17, scope: !129777)
!129793 = !DILocation(line: 75, column: 26, scope: !62, inlinedAt: !129785)
!129794 = !DILocation(line: 462, column: 12, scope: !71, inlinedAt: !129783)
!129795 = !DILocation(line: 39, column: 31, scope: !72, inlinedAt: !129786)
!129796 = !DILocation(line: 1595, column: 9, scope: !73, inlinedAt: !129787)
!129797 = !DILocation(line: 2294, column: 17, scope: !66, inlinedAt: !129781)
!129798 = !DILocation(line: 269, column: 13, scope: !74, inlinedAt: !129788)
!129799 = !DILocation(line: 2290, column: 13, scope: !66, inlinedAt: !129781)
!129800 = !DILocation(line: 139, column: 18, scope: !129777)
!129801 = !DILocation(line: 137, column: 17, scope: !129777)
!129802 = distinct !DISubprogram(name: "reduce<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE6reduceCsfcROwRM8ZtH_11polars_plan", scope: !4278, file: !4076, line: 168, type: !3673, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129803 = distinct !DISubprogram(name: "add<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashE3addCsfcROwRM8ZtH_11polars_plan", scope: !3789, file: !3787, line: 927, type: !3673, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129804 = distinct !DILexicalBlock(scope: !129802, file: !4076, line: 177, column: 13)
!129805 = distinct !DILocation(line: 184, column: 5, scope: !129802)
!129806 = distinct !DILocation(line: 810, column: 1, scope: !1454, inlinedAt: !129805)
!129807 = distinct !DILocation(line: 77, column: 13, scope: !1456, inlinedAt: !129806)
!129808 = distinct !{!129808, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan"}
!129809 = distinct !{!129809, !129808, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan: argument 0"}
!129810 = distinct !DILocation(line: 810, column: 1, scope: !1455, inlinedAt: !129807)
!129811 = distinct !DILocation(line: 810, column: 1, scope: !1017, inlinedAt: !129810)
!129812 = distinct !DILocation(line: 810, column: 1, scope: !1017, inlinedAt: !129810)
!129813 = !DILocation(line: 177, column: 41, scope: !129802)
!129814 = !{!129809}
!129815 = !DILocation(line: 177, column: 28, scope: !129802)
!129816 = !DILocation(line: 177, column: 45, scope: !129802)
!129817 = !DILocation(line: 961, column: 18, scope: !129803, inlinedAt: !129813)
!129818 = !DILocation(line: 178, column: 28, scope: !129804)
!129819 = !DILocation(line: 178, column: 16, scope: !129804)
!129820 = !DILocation(line: 182, column: 13, scope: !129804)
!129821 = !DILocation(line: 184, column: 5, scope: !129802)
!129822 = !DILocation(line: 810, column: 1, scope: !1455, inlinedAt: !129807)
!129823 = !DILocation(line: 810, column: 1, scope: !1017, inlinedAt: !129810)
!129824 = !DILocation(line: 810, column: 1, scope: !1018, inlinedAt: !129811)
!129825 = !DILocation(line: 810, column: 1, scope: !1018, inlinedAt: !129812)
!129826 = !DILocation(line: 184, column: 6, scope: !129802)
!129827 = !DILocation(line: 179, column: 35, scope: !129804)
!129828 = !DILocation(line: 179, column: 17, scope: !129804)
!129829 = !DILocation(line: 180, column: 41, scope: !129804)
!129830 = !DILocation(line: 180, column: 17, scope: !129804)
!129831 = !DILocation(line: 168, column: 5, scope: !129802)
!129832 = !DILocation(line: 177, column: 41, scope: !2040)
!129833 = !DILocation(line: 177, column: 28, scope: !2040)
!129834 = !DILocation(line: 177, column: 45, scope: !2040)
!129835 = !DILocation(line: 961, column: 18, scope: !2042, inlinedAt: !129832)
!129836 = !DILocation(line: 178, column: 28, scope: !2041)
!129837 = !DILocation(line: 178, column: 16, scope: !2041)
!129838 = !DILocation(line: 182, column: 13, scope: !2041)
!129839 = !DILocation(line: 184, column: 6, scope: !2040)
!129840 = !DILocation(line: 179, column: 35, scope: !2041)
!129841 = !DILocation(line: 179, column: 17, scope: !2041)
!129842 = !DILocation(line: 180, column: 41, scope: !2041)
!129843 = !DILocation(line: 180, column: 17, scope: !2041)
!129844 = !DILocation(line: 184, column: 5, scope: !2040)
!129845 = !DILocation(line: 7, column: 49, scope: !3638)
!129846 = !DILocation(line: 7, column: 60, scope: !3638)
!129847 = distinct !DISubprogram(name: "into_pyany", linkageName: "_RNvXs7_NtNtCsfcROwRM8ZtH_11polars_plan8callback7__pythonjNtB7_16PlanCallbackArgs10into_pyany", scope: !129848, file: !4620, line: 131, type: !3673, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129848 = !DINamespace(name: "{impl#9}", scope: !4622)
!129849 = !DILocation(line: 132, column: 29, scope: !129847)
!129850 = !DILocation(line: 132, column: 21, scope: !129847)
!129851 = !DILocation(line: 133, column: 18, scope: !129847)
!129852 = distinct !DISubprogram(name: "drop<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan", scope: !4103, file: !4099, line: 1178, type: !3673, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129853 = distinct !DISubprogram(name: "map<core::ptr::non_null::NonNull<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::boxed::Box<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>, alloc::collections::linked_list::{impl#5}::pop_front_node::{closure_env#0}<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list4NodeINtNtB1k_3vec3VecIB2a_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEEEE3mapINtNtB1k_5boxed3BoxB1d_RNtNtB1k_5alloc6GlobalENCNvMs3_B1g_INtB1g_10LinkedListB29_E14pop_front_node0ECsfcROwRM8ZtH_11polars_plan", scope: !3728, file: !3726, line: 1160, type: !3673, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129854 = distinct !DILexicalBlock(scope: !129852, file: !4099, line: 1190, column: 9)
!129855 = distinct !DISubprogram(name: "pop_front_node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE14pop_front_nodeCsfcROwRM8ZtH_11polars_plan", scope: !4102, file: !4099, line: 194, type: !3673, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129856 = distinct !DISubprogram(name: "{closure#0}<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNCNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB7_10LinkedListINtNtBb_3vec3VecIB1e_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE14pop_front_node0CsfcROwRM8ZtH_11polars_plan", scope: !4107, file: !4099, line: 197, type: !3673, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129857 = distinct !DILexicalBlock(scope: !129856, file: !4099, line: 198, column: 13)
!129858 = distinct !DILexicalBlock(scope: !129853, file: !3726, line: 1165, column: 13)
!129859 = distinct !DILexicalBlock(scope: !129857, file: !4099, line: 204, column: 17)
!129860 = distinct !DILocation(line: 1191, column: 48, scope: !129854)
!129861 = distinct !DILocation(line: 810, column: 1, scope: !1553, inlinedAt: !129860)
!129862 = distinct !DILocation(line: 810, column: 1, scope: !1552, inlinedAt: !129861)
!129863 = distinct !DILocation(line: 810, column: 1, scope: !1180, inlinedAt: !129862)
!129864 = distinct !DILocation(line: 810, column: 1, scope: !997, inlinedAt: !129863)
!129865 = distinct !DILocation(line: 810, column: 1, scope: !997, inlinedAt: !129863)
!129866 = distinct !DILocation(line: 810, column: 1, scope: !1552, inlinedAt: !129861)
!129867 = distinct !DILocation(line: 1921, column: 24, scope: !1557, inlinedAt: !129866)
!129868 = distinct !DILocation(line: 397, column: 27, scope: !1554, inlinedAt: !129867)
!129869 = distinct !DILocation(line: 462, column: 23, scope: !19, inlinedAt: !129868)
!129870 = distinct !DILocation(line: 344, column: 9, scope: !18, inlinedAt: !129869)
!129871 = distinct !DILocation(line: 229, column: 22, scope: !17, inlinedAt: !129870)
!129872 = distinct !DILocation(line: 810, column: 1, scope: !1552, inlinedAt: !129861)
!129873 = distinct !DILocation(line: 1921, column: 24, scope: !1557, inlinedAt: !129872)
!129874 = distinct !DILocation(line: 397, column: 27, scope: !1554, inlinedAt: !129873)
!129875 = distinct !DILocation(line: 462, column: 23, scope: !19, inlinedAt: !129874)
!129876 = distinct !DILocation(line: 344, column: 9, scope: !18, inlinedAt: !129875)
!129877 = distinct !DILocation(line: 229, column: 22, scope: !17, inlinedAt: !129876)
!129878 = !DILocation(line: 1191, column: 23, scope: !129854)
!129879 = !DILocation(line: 197, column: 19, scope: !129855, inlinedAt: !129878)
!129880 = !DILocation(line: 1165, column: 29, scope: !129858, inlinedAt: !129879)
!129881 = !DILocation(line: 1164, column: 15, scope: !129853, inlinedAt: !129879)
!129882 = !DILocation(line: 1164, column: 9, scope: !129853, inlinedAt: !129879)
!129883 = !DILocation(line: 201, column: 13, scope: !129857, inlinedAt: !129880)
!129884 = !DILocation(line: 199, column: 25, scope: !129857, inlinedAt: !129880)
!129885 = !DILocation(line: 199, column: 13, scope: !129857, inlinedAt: !129880)
!129886 = !DILocation(line: 201, column: 19, scope: !129857, inlinedAt: !129880)
!129887 = !DILocation(line: 204, column: 31, scope: !129859, inlinedAt: !129880)
!129888 = !DILocation(line: 204, column: 58, scope: !129857, inlinedAt: !129880)
!129889 = !DILocation(line: 202, column: 25, scope: !129857, inlinedAt: !129880)
!129890 = !DILocation(line: 202, column: 40, scope: !129857, inlinedAt: !129880)
!129891 = !DILocation(line: 207, column: 13, scope: !129857, inlinedAt: !129880)
!129892 = !DILocation(line: 810, column: 1, scope: !997, inlinedAt: !129863)
!129893 = !DILocation(line: 810, column: 1, scope: !998, inlinedAt: !129864)
!129894 = !DILocation(line: 810, column: 1, scope: !998, inlinedAt: !129865)
!129895 = !DILocation(line: 810, column: 1, scope: !1552, inlinedAt: !129861)
!129896 = !DILocation(line: 128, column: 14, scope: !16, inlinedAt: !129871)
!129897 = !DILocation(line: 1193, column: 5, scope: !129852)
!129898 = !DILocation(line: 128, column: 14, scope: !16, inlinedAt: !129877)
!129899 = !DILocation(line: 1193, column: 6, scope: !129852)
!129900 = !DILocation(line: 1178, column: 5, scope: !129852)
!129901 = distinct !DISubprogram(name: "drop<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&polars_utils::float16::pf16>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_TyINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEENtNtNtB1D_3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan", scope: !4103, file: !4099, line: 1178, type: !3673, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129902 = distinct !DISubprogram(name: "map<core::ptr::non_null::NonNull<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&polars_utils::float16::pf16>), alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::boxed::Box<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&polars_utils::float16::pf16>), alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>, alloc::collections::linked_list::{impl#5}::pop_front_node::{closure_env#0}<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&polars_utils::float16::pf16>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list4NodeINtNtB1k_3vec3VecIB2a_TyIBw_RNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEEEE3mapINtNtB1k_5boxed3BoxB1d_RNtNtB1k_5alloc6GlobalENCNvMs3_B1g_INtB1g_10LinkedListB29_E14pop_front_node0ECsfcROwRM8ZtH_11polars_plan", scope: !3728, file: !3726, line: 1160, type: !3673, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129903 = distinct !DILexicalBlock(scope: !129901, file: !4099, line: 1190, column: 9)
!129904 = distinct !DISubprogram(name: "pop_front_node<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&polars_utils::float16::pf16>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_TyINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEE14pop_front_nodeCsfcROwRM8ZtH_11polars_plan", scope: !4102, file: !4099, line: 194, type: !3673, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129905 = distinct !DISubprogram(name: "{closure#0}<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&polars_utils::float16::pf16>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNCNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB7_10LinkedListINtNtBb_3vec3VecIB1e_TyINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEEE14pop_front_node0CsfcROwRM8ZtH_11polars_plan", scope: !4107, file: !4099, line: 197, type: !3673, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129906 = distinct !DILexicalBlock(scope: !129905, file: !4099, line: 198, column: 13)
!129907 = distinct !DILexicalBlock(scope: !129902, file: !3726, line: 1165, column: 13)
!129908 = distinct !DILexicalBlock(scope: !129906, file: !4099, line: 204, column: 17)
!129909 = distinct !DILocation(line: 1191, column: 48, scope: !129903)
!129910 = distinct !DILocation(line: 810, column: 1, scope: !1559, inlinedAt: !129909)
!129911 = distinct !DILocation(line: 810, column: 1, scope: !1558, inlinedAt: !129910)
!129912 = distinct !DILocation(line: 810, column: 1, scope: !1181, inlinedAt: !129911)
!129913 = distinct !DILocation(line: 810, column: 1, scope: !1145, inlinedAt: !129912)
!129914 = distinct !DILocation(line: 810, column: 1, scope: !1145, inlinedAt: !129912)
!129915 = distinct !DILocation(line: 810, column: 1, scope: !1558, inlinedAt: !129910)
!129916 = distinct !DILocation(line: 1921, column: 24, scope: !1562, inlinedAt: !129915)
!129917 = distinct !DILocation(line: 397, column: 27, scope: !1554, inlinedAt: !129916)
!129918 = distinct !DILocation(line: 462, column: 23, scope: !19, inlinedAt: !129917)
!129919 = distinct !DILocation(line: 344, column: 9, scope: !18, inlinedAt: !129918)
!129920 = distinct !DILocation(line: 229, column: 22, scope: !17, inlinedAt: !129919)
!129921 = distinct !DILocation(line: 810, column: 1, scope: !1558, inlinedAt: !129910)
!129922 = distinct !DILocation(line: 1921, column: 24, scope: !1562, inlinedAt: !129921)
!129923 = distinct !DILocation(line: 397, column: 27, scope: !1554, inlinedAt: !129922)
!129924 = distinct !DILocation(line: 462, column: 23, scope: !19, inlinedAt: !129923)
!129925 = distinct !DILocation(line: 344, column: 9, scope: !18, inlinedAt: !129924)
!129926 = distinct !DILocation(line: 229, column: 22, scope: !17, inlinedAt: !129925)
!129927 = !DILocation(line: 1191, column: 23, scope: !129903)
!129928 = !DILocation(line: 197, column: 19, scope: !129904, inlinedAt: !129927)
!129929 = !DILocation(line: 1165, column: 29, scope: !129907, inlinedAt: !129928)
!129930 = !DILocation(line: 1164, column: 15, scope: !129902, inlinedAt: !129928)
!129931 = !DILocation(line: 1164, column: 9, scope: !129902, inlinedAt: !129928)
!129932 = !DILocation(line: 201, column: 13, scope: !129906, inlinedAt: !129929)
!129933 = !DILocation(line: 199, column: 25, scope: !129906, inlinedAt: !129929)
!129934 = !DILocation(line: 199, column: 13, scope: !129906, inlinedAt: !129929)
!129935 = !DILocation(line: 201, column: 19, scope: !129906, inlinedAt: !129929)
!129936 = !DILocation(line: 204, column: 31, scope: !129908, inlinedAt: !129929)
!129937 = !DILocation(line: 204, column: 58, scope: !129906, inlinedAt: !129929)
!129938 = !DILocation(line: 202, column: 25, scope: !129906, inlinedAt: !129929)
!129939 = !DILocation(line: 202, column: 40, scope: !129906, inlinedAt: !129929)
!129940 = !DILocation(line: 207, column: 13, scope: !129906, inlinedAt: !129929)
!129941 = !DILocation(line: 810, column: 1, scope: !1145, inlinedAt: !129912)
!129942 = !DILocation(line: 810, column: 1, scope: !1146, inlinedAt: !129913)
!129943 = !DILocation(line: 810, column: 1, scope: !1146, inlinedAt: !129914)
!129944 = !DILocation(line: 810, column: 1, scope: !1558, inlinedAt: !129910)
!129945 = !DILocation(line: 128, column: 14, scope: !16, inlinedAt: !129920)
!129946 = !DILocation(line: 1193, column: 5, scope: !129901)
!129947 = !DILocation(line: 128, column: 14, scope: !16, inlinedAt: !129926)
!129948 = !DILocation(line: 1193, column: 6, scope: !129901)
!129949 = !DILocation(line: 1178, column: 5, scope: !129901)
!129950 = distinct !DISubprogram(name: "drop<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f64>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_TyINtNtCscgRAwXFJnXP_4core6option6OptionRdEEEEENtNtNtB1D_3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan", scope: !4103, file: !4099, line: 1178, type: !3673, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129951 = distinct !DISubprogram(name: "map<core::ptr::non_null::NonNull<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f64>), alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::boxed::Box<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f64>), alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>, alloc::collections::linked_list::{impl#5}::pop_front_node::{closure_env#0}<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f64>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list4NodeINtNtB1k_3vec3VecIB2a_TyIBw_RdEEEEEEE3mapINtNtB1k_5boxed3BoxB1d_RNtNtB1k_5alloc6GlobalENCNvMs3_B1g_INtB1g_10LinkedListB29_E14pop_front_node0ECsfcROwRM8ZtH_11polars_plan", scope: !3728, file: !3726, line: 1160, type: !3673, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129952 = distinct !DILexicalBlock(scope: !129950, file: !4099, line: 1190, column: 9)
!129953 = distinct !DISubprogram(name: "pop_front_node<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f64>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_TyINtNtCscgRAwXFJnXP_4core6option6OptionRdEEEEE14pop_front_nodeCsfcROwRM8ZtH_11polars_plan", scope: !4102, file: !4099, line: 194, type: !3673, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129954 = distinct !DISubprogram(name: "{closure#0}<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f64>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNCNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB7_10LinkedListINtNtBb_3vec3VecIB1e_TyINtNtCscgRAwXFJnXP_4core6option6OptionRdEEEEE14pop_front_node0CsfcROwRM8ZtH_11polars_plan", scope: !4107, file: !4099, line: 197, type: !3673, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!129955 = distinct !DILexicalBlock(scope: !129954, file: !4099, line: 198, column: 13)
!129956 = distinct !DILexicalBlock(scope: !129951, file: !3726, line: 1165, column: 13)
!129957 = distinct !DILexicalBlock(scope: !129955, file: !4099, line: 204, column: 17)
!129958 = distinct !DILocation(line: 1191, column: 48, scope: !129952)
!129959 = distinct !DILocation(line: 810, column: 1, scope: !1564, inlinedAt: !129958)
!129960 = distinct !DILocation(line: 810, column: 1, scope: !1563, inlinedAt: !129959)
!129961 = distinct !DILocation(line: 810, column: 1, scope: !1182, inlinedAt: !129960)
!129962 = distinct !DILocation(line: 810, column: 1, scope: !1147, inlinedAt: !129961)
!129963 = distinct !DILocation(line: 810, column: 1, scope: !1147, inlinedAt: !129961)
!129964 = distinct !DILocation(line: 810, column: 1, scope: !1563, inlinedAt: !129959)
!129965 = distinct !DILocation(line: 1921, column: 24, scope: !1567, inlinedAt: !129964)
!129966 = distinct !DILocation(line: 397, column: 27, scope: !1554, inlinedAt: !129965)
!129967 = distinct !DILocation(line: 462, column: 23, scope: !19, inlinedAt: !129966)
!129968 = distinct !DILocation(line: 344, column: 9, scope: !18, inlinedAt: !129967)
!129969 = distinct !DILocation(line: 229, column: 22, scope: !17, inlinedAt: !129968)
!129970 = distinct !DILocation(line: 810, column: 1, scope: !1563, inlinedAt: !129959)
!129971 = distinct !DILocation(line: 1921, column: 24, scope: !1567, inlinedAt: !129970)
!129972 = distinct !DILocation(line: 397, column: 27, scope: !1554, inlinedAt: !129971)
!129973 = distinct !DILocation(line: 462, column: 23, scope: !19, inlinedAt: !129972)
!129974 = distinct !DILocation(line: 344, column: 9, scope: !18, inlinedAt: !129973)
!129975 = distinct !DILocation(line: 229, column: 22, scope: !17, inlinedAt: !129974)
!129976 = !DILocation(line: 1191, column: 23, scope: !129952)
!129977 = !DILocation(line: 197, column: 19, scope: !129953, inlinedAt: !129976)
!129978 = !DILocation(line: 1165, column: 29, scope: !129956, inlinedAt: !129977)
!129979 = !DILocation(line: 1164, column: 15, scope: !129951, inlinedAt: !129977)
!129980 = !DILocation(line: 1164, column: 9, scope: !129951, inlinedAt: !129977)
!129981 = !DILocation(line: 201, column: 13, scope: !129955, inlinedAt: !129978)
!129982 = !DILocation(line: 199, column: 25, scope: !129955, inlinedAt: !129978)
!129983 = !DILocation(line: 199, column: 13, scope: !129955, inlinedAt: !129978)
!129984 = !DILocation(line: 201, column: 19, scope: !129955, inlinedAt: !129978)
!129985 = !DILocation(line: 204, column: 31, scope: !129957, inlinedAt: !129978)
!129986 = !DILocation(line: 204, column: 58, scope: !129955, inlinedAt: !129978)
!129987 = !DILocation(line: 202, column: 25, scope: !129955, inlinedAt: !129978)
!129988 = !DILocation(line: 202, column: 40, scope: !129955, inlinedAt: !129978)
!129989 = !DILocation(line: 207, column: 13, scope: !129955, inlinedAt: !129978)
!129990 = !DILocation(line: 810, column: 1, scope: !1147, inlinedAt: !129961)
!129991 = !DILocation(line: 810, column: 1, scope: !1148, inlinedAt: !129962)
!129992 = !DILocation(line: 810, column: 1, scope: !1148, inlinedAt: !129963)
!129993 = !DILocation(line: 810, column: 1, scope: !1563, inlinedAt: !129959)
!129994 = !DILocation(line: 128, column: 14, scope: !16, inlinedAt: !129969)
!129995 = !DILocation(line: 1193, column: 5, scope: !129950)
!129996 = !DILocation(line: 128, column: 14, scope: !16, inlinedAt: !129975)
!129997 = !DILocation(line: 1193, column: 6, scope: !129950)
!129998 = !DILocation(line: 1178, column: 5, scope: !129950)
!129999 = distinct !DISubprogram(name: "drop<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f32>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_TyINtNtCscgRAwXFJnXP_4core6option6OptionRfEEEEENtNtNtB1D_3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan", scope: !4103, file: !4099, line: 1178, type: !3673, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!130000 = distinct !DISubprogram(name: "map<core::ptr::non_null::NonNull<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f32>), alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::boxed::Box<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f32>), alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>, alloc::collections::linked_list::{impl#5}::pop_front_node::{closure_env#0}<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f32>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list4NodeINtNtB1k_3vec3VecIB2a_TyIBw_RfEEEEEEE3mapINtNtB1k_5boxed3BoxB1d_RNtNtB1k_5alloc6GlobalENCNvMs3_B1g_INtB1g_10LinkedListB29_E14pop_front_node0ECsfcROwRM8ZtH_11polars_plan", scope: !3728, file: !3726, line: 1160, type: !3673, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!130001 = distinct !DILexicalBlock(scope: !129999, file: !4099, line: 1190, column: 9)
!130002 = distinct !DISubprogram(name: "pop_front_node<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f32>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_TyINtNtCscgRAwXFJnXP_4core6option6OptionRfEEEEE14pop_front_nodeCsfcROwRM8ZtH_11polars_plan", scope: !4102, file: !4099, line: 194, type: !3673, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!130003 = distinct !DISubprogram(name: "{closure#0}<alloc::vec::Vec<alloc::vec::Vec<(u64, core::option::Option<&f32>), alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNCNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB7_10LinkedListINtNtBb_3vec3VecIB1e_TyINtNtCscgRAwXFJnXP_4core6option6OptionRfEEEEE14pop_front_node0CsfcROwRM8ZtH_11polars_plan", scope: !4107, file: !4099, line: 197, type: !3673, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3672)
!130004 = distinct !DILexicalBlock(scope: !130003, file: !4099, line: 198, column: 13)
!130005 = distinct !DILexicalBlock(scope: !130000, file: !3726, line: 1165, column: 13)
!130006 = distinct !DILexicalBlock(scope: !130004, file: !4099, line: 204, column: 17)
!130007 = distinct !DILocation(line: 1191, column: 48, scope: !130001)
!130008 = distinct !DILocation(line: 810, column: 1, scope: !1569, inlinedAt: !130007)
!130009 = distinct !DILocation(line: 810, column: 1, scope: !1568, inlinedAt: !130008)
!130010 = distinct !DILocation(line: 810, column: 1, scope: !1183, inlinedAt: !130009)
!130011 = distinct !DILocation(line: 810, column: 1, scope: !1149, inlinedAt: !130010)
!130012 = distinct !DILocation(line: 810, column: 1, scope: !1149, inlinedAt: !130010)
!130013 = distinct !DILocation(line: 810, column: 1, scope: !1568, inlinedAt: !130008)
!130014 = distinct !DILocation(line: 1921, column: 24, scope: !1572, inlinedAt: !130013)
!130015 = distinct !DILocation(line: 397, column: 27, scope: !1554, inlinedAt: !130014)
!130016 = distinct !DILocation(line: 462, column: 23, scope: !19, inlinedAt: !130015)
!130017 = distinct !DILocation(line: 344, column: 9, scope: !18, inlinedAt: !130016)
!130018 = distinct !DILocation(line: 229, column: 22, scope: !17, inlinedAt: !130017)
!130019 = distinct !DILocation(line: 810, column: 1, scope: !1568, inlinedAt: !130008)
!130020 = distinct !DILocation(line: 1921, column: 24, scope: !1572, inlinedAt: !130019)
!130021 = distinct !DILocation(line: 397, column: 27, scope: !1554, inlinedAt: !130020)
!130022 = distinct !DILocation(line: 462, column: 23, scope: !19, inlinedAt: !130021)
!130023 = distinct !DILocation(line: 344, column: 9, scope: !18, inlinedAt: !130022)
!130024 = distinct !DILocation(line: 229, column: 22, scope: !17, inlinedAt: !130023)
!130025 = !DILocation(line: 1191, column: 23, scope: !130001)
!130026 = !DILocation(line: 197, column: 19, scope: !130002, inlinedAt: !130025)
!130027 = !DILocation(line: 1165, column: 29, scope: !130005, inlinedAt: !130026)
!130028 = !DILocation(line: 1164, column: 15, scope: !130000, inlinedAt: !130026)
!130029 = !DILocation(line: 1164, column: 9, scope: !130000, inlinedAt: !130026)
!130030 = !DILocation(line: 201, column: 13, scope: !130004, inlinedAt: !130027)
end_hunk_1
