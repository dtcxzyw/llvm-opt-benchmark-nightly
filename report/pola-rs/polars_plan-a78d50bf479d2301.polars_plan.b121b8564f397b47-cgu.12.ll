Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.12?download=true
inline.NumInlined: 7821
inline.NumDeleted: 2854
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecNtNtB8_5arena4NodeEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBW_E9from_iterINtNtB1m_8adapters12GenericShuntINtNtB2w_3map3MapINtB6_8IntoIterBW_ENCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdownNtB3G_17PredicatePushDown21pushdown_and_continue0EINtNtB1o_6result6ResultNtNtB1o_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB3M_:bb.a
bb.s:                                             ; preds = %bb.q, %bb.r
  %i.am = load ptr, ptr %i.aj, align 8, !dbg !63807, !alias.scope !63765, !nonnull !2568, !noundef !2568
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !63808
  store i64 %i.p, ptr %i.an, align 8, !dbg !63809, !noalias !63765
  store i64 2, ptr %i.ai, align 8, !dbg !63810, !alias.scope !63765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !dbg !63811
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEINtB2_10SpecExtendBR_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB1X_3map3MapINtNtBV_7idx_vec8IntoIterBR_ENCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdownNtB3D_17PredicatePushDown21pushdown_and_continue0EINtNtB21_6result6ResultNtNtB21_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE11spec_extendB3J_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b)
          to label %bb.t unwind label %bb.u, !dbg !63812

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !63813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !63813
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !dbg !63814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !63815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !63816
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtCs2mZqlW55729_12polars_utils7idx_vec8IntoIterNtNtB1D_5arena4NodeENCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdownNtB2N_17PredicatePushDown21pushdown_and_continue0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB2T_.exit, !dbg !63773

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtCs2mZqlW55729_12polars_utils7idx_vec8IntoIterNtNtB1D_5arena4NodeENCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdownNtB2N_17PredicatePushDown21pushdown_and_continue0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB2T_.exit: ; preds = %bb.y, %bb.x, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !63773
  ret void, !dbg !63817

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.p
  %.sroa.08.1.ph = phi i1 [ true, %bb.p ], [ true, %bb.r ], [ false, %bb.s ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.d) #49
          to label %bb.b unwind label %bb.v, !dbg !63816

bb.v:                                             ; preds = %bb.z, %bb.u
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !63818
  unreachable, !dbg !63818

bb.w:                                             ; preds = %bb.o
  unreachable

bb.x:                                             ; preds = %bb.j, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !63819 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !63820, !alias.scope !63768, !noundef !2568
  %i.ar = icmp eq ptr %i.aq, null, !dbg !63820
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtCs2mZqlW55729_12polars_utils7idx_vec8IntoIterNtNtB1D_5arena4NodeENCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdownNtB2N_17PredicatePushDown21pushdown_and_continue0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB2T_.exit, label %bb.y, !dbg !63820

bb.y:                                             ; preds = %bb.x
  call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap), !dbg !63821
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtCs2mZqlW55729_12polars_utils7idx_vec8IntoIterNtNtB1D_5arena4NodeENCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdownNtB2N_17PredicatePushDown21pushdown_and_continue0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB2T_.exit, !dbg !63820

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtCs2mZqlW55729_12polars_utils7idx_vec8IntoIterNtNtB1D_5arena4NodeENCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdownNtB2N_17PredicatePushDown21pushdown_and_continue0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB2T_.exit18: ; preds = %.thread, %bb.z, %bb.b
  %.pn22 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.b ], [ %.pn23, %bb.z ], [ %.pn23, %.thread ]
  resume { ptr, i32 } %.pn22, !dbg !63818

.thread:                                          ; preds = %bb.c, %bb.g, %bb.k, %bb.b
  %.pn23 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.b ], [ %i.g, %bb.c ], [ %i.n, %bb.g ], [ %i.r, %bb.k ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !63822 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !dbg !63823, !alias.scope !63769, !noundef !2568
  %i.au = icmp eq ptr %i.at, null, !dbg !63823
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtCs2mZqlW55729_12polars_utils7idx_vec8IntoIterNtNtB1D_5arena4NodeENCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdownNtB2N_17PredicatePushDown21pushdown_and_continue0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB2T_.exit18, label %bb.z, !dbg !63823

bb.z:                                             ; preds = %.thread
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtCs2mZqlW55729_12polars_utils7idx_vec8IntoIterNtNtB1D_5arena4NodeENCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdownNtB2N_17PredicatePushDown21pushdown_and_continue0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB2T_.exit18 unwind label %bb.v, !dbg !63824
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecNtNtB8_5arena4NodeEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBW_E9from_iterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6inputs6InputsEB2B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !63825 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !63872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !63873, !alias.scope !63859
  %i.e = call { i64, i64 } @_RNvXs0_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6inputsNtB5_6InputsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d), !dbg !63874 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0, !dbg !63875
  %i.g = extractvalue { i64, i64 } %i.e, 1, !dbg !63875 ; 2 uses
  %i.h = trunc nuw i64 %i.f to i1, !dbg !63876
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !63876

bb.b:                                             ; preds = %bb.a
  %i.i = call { i64, i64 } @_RNvXs0_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6inputsNtB5_6InputsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d), !dbg !63877 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0, !dbg !63878
  %i.k = extractvalue { i64, i64 } %i.i, 1, !dbg !63878
  %i.l = trunc nuw i64 %i.j to i1, !dbg !63879
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !63879

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !63880
  store i32 0, ptr %i.m, align 8, !dbg !63880
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !63880
  store i32 1, ptr %i.n, align 4, !dbg !63880
  store ptr null, ptr %0, align 8, !dbg !63880
  br label %bb.i, !dbg !63860

bb.d:                                             ; preds = %bb.b
  store i64 %i.g, ptr %0, align 8, !dbg !63881
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !63881
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !63881
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !63881
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !63881
  br label %bb.i, !dbg !63882

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !63883
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !dbg !63884, !noalias !63862
  %i.o = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !dbg !63885, !noalias !63862 ; 4 uses
  %i.p = icmp eq ptr %i.o, null, !dbg !63886
  br i1 %i.p, label %bb.f, label %bb.g, !dbg !63887

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #51, !dbg !63888
  unreachable

bb.g:                                             ; preds = %bb.e
  store i64 2, ptr %i.c, align 8, !dbg !63889
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !63889
  store ptr %i.o, ptr %i.q, align 8, !dbg !63889
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !63889
  store i64 %i.g, ptr %i.o, align 8, !dbg !63890, !noalias !63867
  call void @llvm.experimental.noalias.scope.decl(metadata !63869), !dbg !63891
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !63892
  store i64 %i.k, ptr %i.s, align 8, !dbg !63893, !noalias !63869
  store i64 2, ptr %i.r, align 8, !dbg !63894, !alias.scope !63869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !dbg !63895
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEINtB2_10SpecExtendBR_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6inputs6InputsE11spec_extendB22_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.h unwind label %bb.j, !dbg !63896

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !63897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !63897
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !dbg !63898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !63899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !63900
  br label %bb.i, !dbg !63901

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !63901
  ret void, !dbg !63902

bb.j:                                             ; preds = %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.c) #49
          to label %.thread unwind label %bb.k, !dbg !63900

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !63903
  unreachable, !dbg !63903

.thread:                                          ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm, !dbg !63903
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2k_8adapters3map3MapINtNtNtB2m_3ops5range5RangejENCINvNtBY_8ir_graph24build_ir_traversal_graphBW_NtBY_4EdgeEs_0EEB14_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !63904 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload28 = load ptr, ptr %1, align 8, !dbg !64080, !alias.scope !64057 ; 4 uses
  %.sroa.7.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !64080
  %.sroa.7.0.copyload30 = load i64, ptr %.sroa.7.0..sroa_idx29, align 8, !dbg !64080, !alias.scope !64057 ; 3 uses
  %.sroa.12.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !64080
  %.sroa.12.0.copyload33 = load i64, ptr %.sroa.12.0..sroa_idx32, align 8, !dbg !64080, !alias.scope !64057 ; 4 uses
  %i.e = icmp ult i64 %.sroa.7.0.copyload30, %.sroa.12.0.copyload33, !dbg !64081
  br i1 %i.e, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread, !dbg !64082

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload28) ]
  %i.f = tail call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverEBW_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload28, i1 noundef zeroext false), !dbg !64083, !noalias !64058 ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0, !dbg !64084 ; 3 uses
  %i.h = extractvalue { i32, i32 } %i.f, 1, !dbg !64084 ; 2 uses
  %.not = icmp eq i32 %i.g, 0, !dbg !64085
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread, label %bb.b, !dbg !64086

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  %i.i = add nuw i64 %.sroa.7.0.copyload30, 1, !dbg !64087
  %i.j = icmp ult i64 %i.i, %.sroa.12.0.copyload33, !dbg !64088
  br i1 %i.j, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit22, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit22.thread, !dbg !64089

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit22: ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.7.0.copyload30, 2, !dbg !64090 ; 2 uses
  %i.l = tail call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverEBW_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload28, i1 noundef zeroext false), !dbg !64091, !noalias !64062 ; 2 uses
  %i.m = extractvalue { i32, i32 } %i.l, 0, !dbg !64092 ; 2 uses
  %i.n = extractvalue { i32, i32 } %i.l, 1, !dbg !64092
  %.not15 = icmp eq i32 %i.m, 0, !dbg !64093
  br i1 %.not15, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit22.thread, label %bb.c, !dbg !64094

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread: ; preds = %bb.a, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64095
  store i32 0, ptr %i.o, align 8, !dbg !64095
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !64095
  store i32 1, ptr %i.p, align 4, !dbg !64095
  store ptr null, ptr %0, align 8, !dbg !64095
  br label %bb.o, !dbg !64063

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !64096
  %spec.select.i.i64 = sub nuw i64 %.sroa.12.0.copyload33, %i.k, !dbg !64097 ; 2 uses
  %i.q = add nuw i64 %spec.select.i.i64, 2, !dbg !64098 ; 2 uses
  %i.r = shl i64 %i.q, 3, !dbg !64099             ; 4 uses
  %i.s = icmp ugt i64 %spec.select.i.i64, 2305843009213693949, !dbg !64099
  %.not.i = icmp ugt i64 %i.r, 9223372036854775804
  %or.cond.i = select i1 %i.s, i1 true, i1 %.not.i, !dbg !64100, !prof !3031
  br i1 %or.cond.i, label %bb.e, label %bb.d, !dbg !64100, !prof !3031

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ne i64 %i.r, 0, !dbg !64101
  tail call void @llvm.assume(i1 %i.t), !dbg !64101
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !dbg !64102, !noalias !64068
  %i.u = tail call noundef align 4 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.r, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !dbg !64103, !noalias !64068 ; 6 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !64104
  br i1 %i.v, label %bb.e, label %bb.f, !dbg !64105

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit22.thread: ; preds = %bb.b, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit22
  %.sroa.0.0.insert.ext = zext i32 %i.g to i64, !dbg !64106
  %.sroa.0.4.insert.ext = zext i32 %i.h to i64, !dbg !64106
  %.sroa.0.4.insert.shift = shl nuw i64 %.sroa.0.4.insert.ext, 32, !dbg !64106
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext, !dbg !64106
  %i.w = inttoptr i64 %.sroa.0.4.insert.insert to ptr, !dbg !64106
  store ptr %i.w, ptr %0, align 8, !dbg !64107
  %.sroa.6.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64107
  store i32 1, ptr %.sroa.6.0..sroa_idx64, align 8, !dbg !64107
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !64107
  store i32 1, ptr %.sroa.9.0..sroa_idx, align 4, !dbg !64107
  br label %bb.o, !dbg !64108

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.10.0.ph = phi i64 [ %i.r, %bb.d ], [ undef, %bb.c ]
  %.sroa.438.0.ph = phi i64 [ 4, %bb.d ], [ 0, %bb.c ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.438.0.ph, i64 %.sroa.10.0.ph) #51, !dbg !64109
  unreachable

bb.f:                                             ; preds = %bb.d
  store i64 %i.q, ptr %i.d, align 8, !dbg !64110
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !64110
  store ptr %i.u, ptr %i.x, align 8, !dbg !64110
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !64110
  store i32 %i.g, ptr %i.u, align 4, !dbg !64111, !noalias !64070
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4, !dbg !64111
  store i32 %i.h, ptr %i.z, align 4, !dbg !64111, !noalias !64070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64072), !dbg !64112
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !64113
  store i32 %i.m, ptr %i.aa, align 4, !dbg !64114, !noalias !64072
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12, !dbg !64114
  store i32 %i.n, ptr %i.ab, align 4, !dbg !64114, !noalias !64072
  store i64 2, ptr %i.y, align 8, !dbg !64115, !alias.scope !64072
  store ptr %.sroa.0.0.copyload28, ptr %i.c, align 8, !dbg !64116
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !64116
  store i64 %i.k, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !64116
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !64116
  store i64 %.sroa.12.0.copyload33, ptr %.sroa.12.0..sroa_idx, align 8, !dbg !64116
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2E_3ops5range5RangejENCINvNtBV_8ir_graph24build_ir_traversal_graphBT_NtBV_4EdgeEs_0EE11spec_extendB11_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.p, !dbg !64117

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !64118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !64118
  call void @llvm.experimental.noalias.scope.decl(metadata !64075), !dbg !64119
  call void @llvm.experimental.noalias.scope.decl(metadata !64076), !dbg !64119
  %i.ac = load i64, ptr %i.b, align 8, !dbg !64120, !range !2659, !alias.scope !64076, !noalias !64075, !noundef !2568 ; 4 uses
  %i.ad = icmp samesign ult i64 %i.ac, 2, !dbg !64121
  br i1 %i.ad, label %bb.i, label %bb.h, !dbg !64121

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !64122
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !64122, !alias.scope !64076, !noalias !64075, !nonnull !2568, !noundef !2568
  %i.ag = icmp samesign ugt i64 %i.ac, 4294967295, !dbg !64123
  %i.ah = trunc nuw i64 %i.ac to i32, !dbg !64123
  br i1 %i.ag, label %.noexc18.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit19.i, !dbg !64124, !prof !2604

.noexc18.i:                                       ; preds = %bb.h
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @508, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @517, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @855) #51, !dbg !64125
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !64126 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !64126, !alias.scope !64076, !noalias !64075, !noundef !2568 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !64126
  br i1 %i.ak, label %bb.j, label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyE4pushB13_.exit.i, !dbg !64126

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit19.i: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !64122
  %i.am = load i64, ptr %i.al, align 8, !dbg !64122, !alias.scope !64076, !noalias !64075, !noundef !2568 ; 3 uses
  %i.an = icmp ult i64 %i.am, 1152921504606846976, !dbg !64127
  call void @llvm.assume(i1 %i.an), !dbg !64128
  %i.ao = icmp samesign ugt i64 %i.am, 4294967295, !dbg !64129
  br i1 %i.ao, label %.noexc.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !64130, !prof !2604

.noexc.i:                                         ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit19.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @508, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @517, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @856) #51, !dbg !64131
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit19.i
  %i.ap = trunc nuw i64 %i.am to i32, !dbg !64129
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64132
  store i32 %i.ap, ptr %i.aq, align 8, !dbg !64132, !alias.scope !64075, !noalias !64076
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !64132
  store i32 %i.ah, ptr %i.ar, align 4, !dbg !64132, !alias.scope !64075, !noalias !64076
  store ptr %i.af, ptr %0, align 8, !dbg !64132, !alias.scope !64075, !noalias !64076
  br label %_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EE4fromB13_.exit, !dbg !64133

_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyE4pushB13_.exit.i: ; preds = %bb.i
  %i.as = add nsw i64 %i.aj, -1, !dbg !64134      ; 2 uses
  store i64 %i.as, ptr %i.ai, align 8, !dbg !64134, !alias.scope !64076, !noalias !64075
  %i.at = icmp samesign ult i64 %i.as, %i.ac, !dbg !64135
  call void @llvm.assume(i1 %i.at), !dbg !64136
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !64137
  %i.av = load ptr, ptr %i.au, align 8, !dbg !64137, !alias.scope !64076, !noalias !64075, !nonnull !2568, !noundef !2568
  %i.aw = icmp ult i64 %i.aj, 1152921504606846977, !dbg !64138
  call void @llvm.assume(i1 %i.aw), !dbg !64139
  %i.ax = load i64, ptr %i.av, align 4, !dbg !64140, !noalias !64078
  %i.ay = inttoptr i64 %i.ax to ptr, !dbg !64141
  br label %bb.j, !dbg !64142

bb.j:                                             ; preds = %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyE4pushB13_.exit.i, %bb.i
  %.sroa.040.0 = phi ptr [ null, %bb.i ], [ %i.ay, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyE4pushB13_.exit.i ], !dbg !64143
  %.sroa.6.0 = phi i32 [ 0, %bb.i ], [ 1, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyE4pushB13_.exit.i ], !dbg !64143
  store ptr %.sroa.040.0, ptr %0, align 8, !dbg !64144, !noalias !64076
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64144
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !64144, !noalias !64076
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !64144
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 4, !dbg !64144, !noalias !64076
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.m unwind label %bb.k, !dbg !64145, !noalias !64075

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.b, align 8, !dbg !64145, !alias.scope !64079, !noalias !64075 ; 2 uses
  %i.ba = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ba, label %.body.thread, label %bb.l, !dbg !64146

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !64145
  %.val3.i.i = load ptr, ptr %i.bb, align 8, !dbg !64145, !alias.scope !64079, !noalias !64075, !nonnull !2568, !noundef !2568
  %i.bc = shl nuw i64 %.val2.i.i, 3, !dbg !64147
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !dbg !64148, !noalias !64075
  br label %.body.thread, !dbg !64149

bb.m:                                             ; preds = %bb.j
  %.val.i.i = load i64, ptr %i.b, align 8, !dbg !64145, !alias.scope !64079, !noalias !64075 ; 2 uses
  %i.bd = icmp eq i64 %.val.i.i, 0
  br i1 %i.bd, label %_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EE4fromB13_.exit, label %bb.n, !dbg !64150

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !64145
  %.val1.i.i = load ptr, ptr %i.be, align 8, !dbg !64145, !alias.scope !64079, !noalias !64075, !nonnull !2568, !noundef !2568
  %i.bf = shl nuw i64 %.val.i.i, 3, !dbg !64151
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4) #46, !dbg !64152, !noalias !64075
  br label %_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EE4fromB13_.exit, !dbg !64153

_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EE4fromB13_.exit: ; preds = %bb.n, %bb.m, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !64154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !64155
  br label %bb.o, !dbg !64156

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit.thread, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1v_7EdgeKeyNtB1v_4EdgeEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit22.thread, %_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EE4fromB13_.exit
  ret void, !dbg !64157

bb.p:                                             ; preds = %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #49
          to label %.body.thread unwind label %bb.q, !dbg !64155

bb.q:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !64158
  unreachable, !dbg !64158

.body.thread:                                     ; preds = %bb.l, %bb.k, %bb.p
  %.pn = phi { ptr, i32 } [ %i.az, %bb.l ], [ %lpad.thr_comm, %bb.p ], [ %i.az, %bb.k ]
  resume { ptr, i32 } %.pn, !dbg !64158
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXse_NtCsc91YB1gQebm_8bitflags6traitstNtNtB8_6parser8WriteHex9write_hexQNtNtCscgRAwXFJnXP_4core3fmt9FormatterECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !64159 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !64163
  store ptr %i.c, ptr %i.a, align 8, !dbg !64163
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !64163
  store ptr @_RNvXs1o_NtCscgRAwXFJnXP_4core3fmtRtNtB6_8LowerHex3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !64163
  %i.d = call noundef zeroext i1 @_RNvXNtCscgRAwXFJnXP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_fmtCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @286, ptr noundef nonnull %i.a), !dbg !64164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !64165
  ret i1 %i.d, !dbg !64166
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXsg_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plans_1__NtBh_7DslPlanNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s4_14___FieldVisitorB2q_9visit_strNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEBl_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 2)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 !dbg !64167 {
bb.a:
  switch i64 %2, label %bb.i [
    i64 5, label %bb.b
    i64 4, label %bb.c
    i64 10, label %bb.d
    i64 14, label %bb.f
end_hunk_0
