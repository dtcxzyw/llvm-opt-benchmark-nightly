Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.09?download=true
inline.NumInlined: 8525
inline.NumDeleted: 3292
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldBW_BW_uINtNtNtB1R_3ops12control_flow11ControlFlowBW_ENvYBW_INtNtB1R_7convert4FromBW_E4fromNCINvNvB1J_4find5checkBW_QNCINvMsB_NtBY_13set_theoreticNtB5t_16IntersectionType21bounded_from_elementsINtB8_3VecBW_EBW_Es_0E0E0B3z_EB10_:bb.a

bb.c:                                             ; preds = %.lr.ph
  %.sroa.510.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.510.0..sroa_idx.le, i64 12, i1 false)
  br label %bb.b

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENvYBZ_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkBZ_QNCINvMsB_NtB11_13set_theoreticNtB4b_16IntersectionType21bounded_from_elementsINtNtCscdodAO9FK5_5alloc3vec3VecBZ_EBZ_Es_0E0E0B13_.exit.thread: ; preds = %.lr.ph, %.lr.ph
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { i32, i32 } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldBW_BW_uINtNtNtB1R_3ops12control_flow11ControlFlowNtNtBY_13set_theoretic9UnionTypeENvYBW_INtNtB1R_7convert4FromBW_E4fromNCINvNvB1J_8find_map5checkBW_B4f_QNvMs39_BY_BW_8as_unionE0E0B3z_EB10_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !32, !noundef !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = phi ptr [ %i.e, %bb.c ], [ %.promoted, %bb.a ] ; 5 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %.split.loop.exit13, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.09.0.copyload = load i32, ptr %i.d, align 4 ; 2 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.510.0.copyload = load i32, ptr %.sroa.510.0..sroa_idx, align 4 ; 2 uses
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.611.0.copyload = load i32, ptr %.sroa.611.0..sroa_idx, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = icmp ne i32 %.sroa.09.0.copyload, 17
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ne i32 %.sroa.09.0.copyload, 23
  %.not.i.i12 = icmp eq i32 %.sroa.510.0.copyload, 0
  %.not.i.i = select i1 %i.g, i1 true, i1 %.not.i.i12
  br i1 %.not.i.i, label %bb.b, label %.split.loop.exit13

.split.loop.exit13:                               ; preds = %bb.b, %bb.c
  %.sroa.3.0 = phi i32 [ %.sroa.611.0.copyload, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i32 [ %.sroa.510.0.copyload, %bb.c ], [ 0, %bb.b ]
  %i.h = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.i = insertvalue { i32, i32 } %i.h, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1J_3all5checkBW_NCNvMNtNtNtBY_5infer7builder15type_expressionNtB3j_20TypeInferenceBuilder48infer_parameterized_special_form_type_expressions4_0E0INtNtNtB1R_3ops12control_flow11ControlFlowuEEB10_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not15.not = icmp eq ptr %.promoted, %i.c
  br i1 %.not15.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.e = phi ptr [ %.promoted, %.lr.ph ], [ %i.f, %bb.c ] ; 4 uses
  %.sroa.06.0.copyload = load i32, ptr %i.e, align 4 ; 3 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.57.0.copyload = load i8, ptr %.sroa.57.0..sroa_idx, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = icmp ne i32 %.sroa.06.0.copyload, 17
  call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i32 %.sroa.06.0.copyload, -4
  %i.i = icmp samesign ugt i32 %.sroa.06.0.copyload, 3
  %narrow.i.i = select i1 %i.i, i32 %i.h, i32 13
  switch i32 %narrow.i.i, label %.loopexit [
    i32 14, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNCNvMNtNtNtB1d_5infer7builder15type_expressionNtB24_20TypeInferenceBuilder48infer_parameterized_special_form_type_expressions4_0E0B1f_.exit
    i32 24, label %.split
  ]

.split:                                           ; preds = %bb.b
  %.sroa.03.0.copyload.off.i.i = add i8 %.sroa.57.0.copyload, -1
  %switch.i.i = icmp ult i8 %.sroa.03.0.copyload.off.i.i, 4
  br i1 %switch.i.i, label %bb.c, label %.loopexit

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNCNvMNtNtNtB1d_5infer7builder15type_expressionNtB24_20TypeInferenceBuilder48infer_parameterized_special_form_type_expressions4_0E0B1f_.exit: ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8770
  store i8 %.sroa.57.0.copyload, ptr %i.a, align 4, !noalias !8771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.4..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.0..sroa_idx, i64 11, i1 false)
  %i.j = call noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType15has_known_class(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i8 noundef 51), !noalias !8770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8770
  br i1 %i.j, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.split, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNCNvMNtNtNtB1d_5infer7builder15type_expressionNtB24_20TypeInferenceBuilder48infer_parameterized_special_form_type_expressions4_0E0B1f_.exit, %bb.c, %bb.a
  %.not13 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %.split ], [ true, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNCNvMNtNtNtB1d_5infer7builder15type_expressionNtB24_20TypeInferenceBuilder48infer_parameterized_special_form_type_expressions4_0E0B1f_.exit ], [ false, %bb.c ]
  ret i1 %.not13

bb.c:                                             ; preds = %.split, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNCNvMNtNtNtB1d_5infer7builder15type_expressionNtB24_20TypeInferenceBuilder48infer_parameterized_special_form_type_expressions4_0E0B1f_.exit
  %.not.not = icmp eq ptr %i.f, %i.c
  br i1 %.not.not, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1J_8find_map5checkBW_NtNtBY_5class12ClassLiteralQNCNvNtBY_11ide_support25type_hierarchy_supertypes0E0INtNtNtB1R_3ops12control_flow11ControlFlowB3h_EEB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not15 = icmp eq ptr %.promoted, %i.e
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.g = phi ptr [ %i.h, %bb.d ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8781
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support25type_hierarchy_supertypes0INtB7_5FnMutTNtBU_4TypeEE8call_mutBW_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a), !noalias !8782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8781
  %i.i = load i32, ptr %i.b, align 4, !range !99, !noalias !8781, !noundef !32 ; 2 uses
  %.not.i = icmp eq i32 %i.i, -1
  br i1 %.not.i, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.a
  store i32 -1, ptr %0, align 4, !alias.scope !8783
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.c
  ret void

bb.c:                                             ; preds = %.lr.ph
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 4, !noalias !8784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8781
  store i32 %i.i, ptr %0, align 4, !alias.scope !8785
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4, !alias.scope !8785
  br label %bb.b

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8781
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore11SuppressFixENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtB12_5fixes13ApplicableFixENCINvNtNtB2i_8adapters3map12map_try_foldBW_B3Q_B3g_INtNtB2k_6result6ResultB3g_zENCNvMB3S_NtB3S_7FixMode5fixess_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3Q_E0E0B59_EB12_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not13 = icmp eq ptr %.promoted, %i.b
  br i1 %.not13, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.4.014 = phi ptr [ %i.f, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 3 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.412.0.copyload = load i64, ptr %.sroa.412.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.014, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.014, i64 40
  store i64 %.sroa.412.0.copyload, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !8788
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.4.014, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.f, %._crit_edge ], [ %2, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB2g_8adapters6filter15filter_try_foldBW_B3e_INtNtB2i_6result6ResultB3e_zENCNCNvMs3_NtNtB10_4call4bindNtB5m_8Bindings20evaluate_known_casessP_00NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B4J_EB12_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.013 = alloca [16 x i8], align 8          ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %.not15 = icmp eq ptr %i.d, %i.c
  br i1 %.not15, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val.i.a = load ptr, ptr %3, align 8, !noalias !8791, !nonnull !32, !align !33, !noundef !32 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.val.i.a, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB2i_zENCNCNvMs3_NtNtB19_4call4bindNtB3V_8Bindings20evaluate_known_casessP_00NCINvNtB2n_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit
  %i.e = phi ptr [ %i.n, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB2i_zENCNCNvMs3_NtNtB19_4call4bindNtB3V_8Bindings20evaluate_known_casessP_00NCINvNtB2n_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.f = phi ptr [ %i.m, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB2i_zENCNCNvMs3_NtNtB19_4call4bindNtB3V_8Bindings20evaluate_known_casessP_00NCINvNtB2n_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %.sroa.4.016 = phi ptr [ %.pn3.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB2i_zENCNCNvMs3_NtNtB19_4call4bindNtB3V_8Bindings20evaluate_known_casessP_00NCINvNtB2n_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ], [ %2, %.lr.ph.preheader ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.414.0.copyload = load i32, ptr %.sroa.414.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8
  %i.h = load i32, ptr %5, align 4, !noalias !8791, !noundef !32
  %i.i = icmp eq i32 %.sroa.5.0.copyload, %i.h
  br i1 %i.i, label %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casessP_00Bf_.exit.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB2i_zENCNCNvMs3_NtNtB19_4call4bindNtB3V_8Bindings20evaluate_known_casessP_00NCINvNtB2n_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casessP_00Bf_.exit.i: ; preds = %.lr.ph
  %i.j = load i32, ptr %.val.i.a, align 4, !range !45, !noalias !8791, !noundef !32
  %i.k = icmp eq i32 %.sroa.414.0.copyload, %i.j
  br i1 %i.k, label %bb.b, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB2i_zENCNCNvMs3_NtNtB19_4call4bindNtB3V_8Bindings20evaluate_known_casessP_00NCINvNtB2n_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

bb.b:                                             ; preds = %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casessP_00Bf_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.016, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013, i64 16, i1 false)
  %.sroa.6.16..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.016, i64 16
  store i32 %.sroa.414.0.copyload, ptr %.sroa.6.16..sroa.4.8..sroa_idx, align 4
  %.sroa.7.16..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.016, i64 20
  store i32 %.sroa.5.0.copyload, ptr %.sroa.7.16..sroa.4.8..sroa_idx, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.016, i64 24
  %.pre = load ptr, ptr %i.a, align 8
  %.pre17 = load ptr, ptr %i.b, align 8
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB2i_zENCNCNvMs3_NtNtB19_4call4bindNtB3V_8Bindings20evaluate_known_casessP_00NCINvNtB2n_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB2i_zENCNCNvMs3_NtNtB19_4call4bindNtB3V_8Bindings20evaluate_known_casessP_00NCINvNtB2n_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit: ; preds = %.lr.ph, %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casessP_00Bf_.exit.i, %bb.b
  %i.m = phi ptr [ %.pre17, %bb.b ], [ %i.g, %.lr.ph ], [ %i.g, %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casessP_00Bf_.exit.i ] ; 2 uses
  %i.n = phi ptr [ %.pre, %bb.b ], [ %i.e, %.lr.ph ], [ %i.e, %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casessP_00Bf_.exit.i ] ; 2 uses
  %.pn3.i = phi ptr [ %i.l, %bb.b ], [ %.sroa.4.016, %.lr.ph ], [ %.sroa.4.016, %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casessP_00Bf_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB2i_zENCNCNvMs3_NtNtB19_4call4bindNtB3V_8Bindings20evaluate_known_casessP_00NCINvNtB2n_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn3.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15TypeVarSolutionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB2i_zENCNCNvMs3_NtNtB19_4call4bindNtB3V_8Bindings20evaluate_known_casessP_00NCINvNtB2n_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ]
  %i.o = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members6MemberENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldBW_NtB10_4TypeuNCNvMs3_NtNtB10_4call4bindNtB3Y_8Bindings20evaluate_known_casessq_0NCIB35_B3E_B3E_uNvYB3E_INtNtB29_7convert4IntoB3E_E4intoNCINvNvB21_8for_each4callB3E_NCINvMsj_B8_INtB8_3VecB3E_E14extend_trustedINtB37_3MapIB6Z_BH_B3Q_EB5b_EE0E0E0E0EB12_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.4.i = alloca [12 x i8], align 4          ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not.not22 = icmp eq ptr %.promoted, %i.e
  br i1 %.not.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !8831, !noalias !8832, !nonnull !32, !noundef !32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2.i = load ptr, ptr %i.h, align 8, !alias.scope !8831, !noalias !8832, !nonnull !32, !align !34, !noundef !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 31 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted23 = load i64, ptr %i.m, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.val720 = phi i64 [ %.promoted23, %.lr.ph ], [ %i.aj, %bb.l ] ; 3 uses
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  store ptr %i.o, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8831)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8834)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8835
  %i.p = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literals2_1__NtB8_17StringLiteralType3newDNtNtBc_2db2DbEL_RNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEBc_(ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val2.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.f unwind label %bb.c, !noalias !8836 ; 2 uses

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8837)
  call void @llvm.experimental.noalias.scope.decl(metadata !8838)
  call void @llvm.experimental.noalias.scope.decl(metadata !8839)
  call void @llvm.experimental.noalias.scope.decl(metadata !8840)
  call void @llvm.experimental.noalias.scope.decl(metadata !8841)
  %i.r = load i8, ptr %i.j, align 1, !range !53, !alias.scope !8842, !noalias !8836, !noundef !32
  %i.s = and i8 %i.r, -2
  %switch.i.i.i.i.i.i.i = icmp eq i8 %i.s, -48
  br i1 %switch.i.i.i.i.i.i.i, label %bb.d, label %.thread13

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !8843)
  %.pn.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !8844, !noalias !8836, !nonnull !32, !noundef !32
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i, i64 -8
  %i.t = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !8845
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %.thread13, !prof !41

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.thread13 unwind label %bb.j, !noalias !8836

bb.f:                                             ; preds = %bb.b
  %i.v = extractvalue { i32, i32 } %i.p, 0
  %i.w = extractvalue { i32, i32 } %i.p, 1
  invoke void @_RINvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB6_16LiteralValueType10promotableNtB6_17StringLiteralTypeEBa_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i32 noundef %i.v, i32 noundef %i.w)
          to label %bb.g unwind label %bb.c, !noalias !8836

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !8833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8835
  call void @llvm.experimental.noalias.scope.decl(metadata !8846)
  call void @llvm.experimental.noalias.scope.decl(metadata !8847)
  call void @llvm.experimental.noalias.scope.decl(metadata !8848)
  call void @llvm.experimental.noalias.scope.decl(metadata !8849)
  call void @llvm.experimental.noalias.scope.decl(metadata !8850)
  %i.x = load i8, ptr %i.j, align 1, !range !53, !alias.scope !8851, !noalias !8836, !noundef !32
  %i.y = and i8 %i.x, -2
  %switch.i.i.i.i.i1.i.i = icmp eq i8 %i.y, -48
  br i1 %switch.i.i.i.i.i1.i.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !8852)
  %.pn.i.i.i.i.i.i2.i.i = load ptr, ptr %i.i, align 8, !alias.scope !8853, !noalias !8836, !nonnull !32, !noundef !32
  %.sroa.0.0.i.i.i.i.i.i3.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i2.i.i, i64 -8
  %i.z = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i3.i.i, i64 1 release, align 8, !noalias !8854
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.i, label %bb.l, !prof !41

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.l unwind label %.thread18

.thread18:                                        ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.thread13

bb.j:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !8836
  unreachable

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %i.ad = load ptr, ptr %0, align 8, !nonnull !32, !noundef !32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.af, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ad, ptr %i.ag, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members6MemberENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !32, !align !34, !noundef !32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.ah, align 8, !noundef !32
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8833
  call void @llvm.experimental.noalias.scope.decl(metadata !8855)
  call void @llvm.experimental.noalias.scope.decl(metadata !8856)
  call void @llvm.experimental.noalias.scope.decl(metadata !8857)
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.val720 ; 2 uses
  store i32 28, ptr %i.ai, align 4, !noalias !8858
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.44.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i, i64 12, i1 false), !noalias !8833
  %i.aj = add i64 %.val720, 1                     ; 2 uses
  store i64 %i.aj, ptr %i.m, align 8, !alias.scope !8859, !noalias !8860
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %.not.not = icmp eq ptr %i.o, %i.e
  br i1 %.not.not, label %._crit_edge, label %bb.b

bb.m:                                             ; preds = %.thread13
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.n:                                             ; preds = %._crit_edge
  %i.al = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !32, !align !34, !noundef !32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.am, align 8, !noundef !32
  store i64 %.val7, ptr %.val6, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members6MemberEEB1u_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members6MemberEEB1u_.exit: ; preds = %.thread13, %bb.n
  %.pn12 = phi { ptr, i32 } [ %eh.lpad-body17, %.thread13 ], [ %i.al, %bb.n ]
  resume { ptr, i32 } %.pn12

.thread13:                                        ; preds = %bb.c, %bb.d, %bb.e, %.thread18
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.ab, %.thread18 ], [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  %.val619 = load ptr, ptr %1, align 8, !nonnull !32, !align !34, !noundef !32
  store i64 %.val720, ptr %.val619, align 8
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members6MemberENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members6MemberEEB1u_.exit unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2k_8adapters3map12map_try_foldBW_NtBY_16ErrorContextNodeuINtNtNtB2m_3ops12control_flow11ControlFlowB40_ENCINvMs7_BY_BW_3setINtB8_3VecBW_EE0NCINvNvB2e_4find5checkB40_QNCB5b_s_0E0E0B4o_EB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull %2, ptr noalias noundef nonnull %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.5 = alloca [88 x i8], align 8            ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 8 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.h, align 8        ; 2 uses
  %.not15 = icmp eq ptr %.promoted, %i.g
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 84
end_hunk_0
