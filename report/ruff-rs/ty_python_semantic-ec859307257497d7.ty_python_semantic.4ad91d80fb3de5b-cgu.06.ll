Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.06?download=true
inline.NumInlined: 11176
inline.NumDeleted: 4455
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB3k_5class10typed_dictNtB4x_15TypedDictFields4iter0EIBQ_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB2x_NtB4z_5FieldENCB4u_s_0EENtNtNtBW_6traits8iterator8Iterator4findQNCNvB4x_26synthesize_typed_dict_inits_0EB3m_:bb.a
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_26synthesize_typed_dict_inits_0EB2A_.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.k, align 8, !alias.scope !16658
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_26synthesize_typed_dict_inits_0EB2A_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_26synthesize_typed_dict_inits_0EB2A_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16659
  br label %bb.h

bb.h:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_26synthesize_typed_dict_inits_0EB2A_.exit, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_26synthesize_typed_dict_inits_0EB2o_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB3k_5class10typed_dictNtB4x_15TypedDictFields4iter0EIBQ_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB2x_NtB4z_5FieldENCB4u_s_0EENtNtNtBW_6traits8iterator8Iterator4findQNCNvB4x_29synthesize_typed_dict_delitem0EB3m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((8, 12)) %0, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 !guid !16669 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !103, !noundef !73
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16671
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2q_10typed_dictNtB3p_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4d_4find5checkTRB1F_INtNtCscdodAO9FK5_5alloc6borrow3CowNtNtB2s_10typed_dict14TypedDictFieldEEQNCNvB3p_29synthesize_typed_dict_delitem0E0INtNtNtBc_3ops12control_flow11ControlFlowB5h_EEB2u_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull %2), !noalias !16670
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !range !113, !noalias !16671, !noundef !73
  %.not.i = icmp eq i32 %i.g, 2
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !16672
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_29synthesize_typed_dict_delitem0EB2o_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.h, align 8, !alias.scope !16670
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_29synthesize_typed_dict_delitem0EB2o_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_29synthesize_typed_dict_delitem0EB2o_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16671
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16673)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16674
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2E_5class10typed_dictNtB3R_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4L_4find5checkTRB1R_INtNtB16_6borrow3CowB2A_EEQNCNvB3R_29synthesize_typed_dict_delitem0E0INtNtNtBc_3ops12control_flow11ControlFlowB5P_EEB2G_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull %2), !noalias !16673
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %i.i, align 8, !range !113, !noalias !16674, !noundef !73
  %.not.i1 = icmp eq i32 %i.j, 2
  br i1 %.not.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !16675
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_29synthesize_typed_dict_delitem0EB2A_.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.k, align 8, !alias.scope !16673
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_29synthesize_typed_dict_delitem0EB2A_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_29synthesize_typed_dict_delitem0EB2A_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16674
  br label %bb.h

bb.h:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_29synthesize_typed_dict_delitem0EB2A_.exit, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_29synthesize_typed_dict_delitem0EB2o_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB3k_5class10typed_dictNtB4x_15TypedDictFields4iter0EIBQ_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB2x_NtB4z_5FieldENCB4u_s_0EENtNtNtBW_6traits8iterator8Iterator4findQNCNvB4x_29synthesize_typed_dict_setitem0EB3m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((8, 12)) %0, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 !guid !16684 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !103, !noundef !73
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16685)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16686
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2q_10typed_dictNtB3p_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4d_4find5checkTRB1F_INtNtCscdodAO9FK5_5alloc6borrow3CowNtNtB2s_10typed_dict14TypedDictFieldEEQNCNvB3p_29synthesize_typed_dict_setitem0E0INtNtNtBc_3ops12control_flow11ControlFlowB5h_EEB2u_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull %2), !noalias !16685
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !range !113, !noalias !16686, !noundef !73
  %.not.i = icmp eq i32 %i.g, 2
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !16687
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_29synthesize_typed_dict_setitem0EB2o_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.h, align 8, !alias.scope !16685
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_29synthesize_typed_dict_setitem0EB2o_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_29synthesize_typed_dict_setitem0EB2o_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16686
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16688)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16689
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2E_5class10typed_dictNtB3R_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4L_4find5checkTRB1R_INtNtB16_6borrow3CowB2A_EEQNCNvB3R_29synthesize_typed_dict_setitem0E0INtNtNtBc_3ops12control_flow11ControlFlowB5P_EEB2G_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull %2), !noalias !16688
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %i.i, align 8, !range !113, !noalias !16689, !noundef !73
  %.not.i1 = icmp eq i32 %i.j, 2
  br i1 %.not.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !16690
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_29synthesize_typed_dict_setitem0EB2A_.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.k, align 8, !alias.scope !16688
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_29synthesize_typed_dict_setitem0EB2A_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_29synthesize_typed_dict_setitem0EB2A_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16689
  br label %bb.h

bb.h:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_29synthesize_typed_dict_setitem0EB2A_.exit, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_29synthesize_typed_dict_setitem0EB2o_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB3k_5class10typed_dictNtB4x_15TypedDictFields4iter0EIBQ_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB2x_NtB4z_5FieldENCB4u_s_0EENtNtNtBW_6traits8iterator8Iterator4findQNCNvB4x_32synthesize_typed_dict_setdefault0EB3m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((8, 12)) %0, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 !guid !16699 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !103, !noundef !73
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16701
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2q_10typed_dictNtB3p_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4d_4find5checkTRB1F_INtNtCscdodAO9FK5_5alloc6borrow3CowNtNtB2s_10typed_dict14TypedDictFieldEEQNCNvB3p_32synthesize_typed_dict_setdefault0E0INtNtNtBc_3ops12control_flow11ControlFlowB5h_EEB2u_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull %2), !noalias !16700
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !range !113, !noalias !16701, !noundef !73
  %.not.i = icmp eq i32 %i.g, 2
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !16702
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_32synthesize_typed_dict_setdefault0EB2o_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.h, align 8, !alias.scope !16700
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_32synthesize_typed_dict_setdefault0EB2o_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_32synthesize_typed_dict_setdefault0EB2o_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16701
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16703)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16704
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2E_5class10typed_dictNtB3R_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4L_4find5checkTRB1R_INtNtB16_6borrow3CowB2A_EEQNCNvB3R_32synthesize_typed_dict_setdefault0E0INtNtNtBc_3ops12control_flow11ControlFlowB5P_EEB2G_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull %2), !noalias !16703
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %i.i, align 8, !range !113, !noalias !16704, !noundef !73
  %.not.i1 = icmp eq i32 %i.j, 2
  br i1 %.not.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !16705
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_32synthesize_typed_dict_setdefault0EB2A_.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.k, align 8, !alias.scope !16703
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_32synthesize_typed_dict_setdefault0EB2A_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_32synthesize_typed_dict_setdefault0EB2A_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16704
  br label %bb.h

bb.h:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB2y_5class10typed_dictNtB3L_15TypedDictFields4iter0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3L_32synthesize_typed_dict_setdefault0EB2A_.exit, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMNtB2k_10typed_dictNtB3j_15TypedDictFields4iters_0ENtNtNtBa_6traits8iterator8Iterator4findQNCNvB3j_32synthesize_typed_dict_setdefault0EB2o_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEIBD_INtNtBU_3map3MapBP_NCNvMs9_NtB2b_14known_instanceNtB3s_17UnionTypeInstance22value_expression_types0EINtNtNtBW_7sources4once4OnceB29_EEENtNtNtBW_6traits8iterator8Iterator3anyNCNCNvMNtNtNtB2b_5infer7builder9subscriptNtB5X_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00EB2d_(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !16715 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !76, !noundef !73
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !16716, !noundef !73
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %1, label %bb.d

1:                                                ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted.i.i.i = load i32, ptr %2, align 8, !alias.scope !16717 ; 2 uses
  switch i32 %.promoted.i.i.i, label %bb.c [
    i32 -1, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtBa_6traits8iterator8Iterator3anyNCNCNvMNtNtNtBU_5infer7builder9subscriptNtB2q_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00EBW_.exit.i
    i32 16, label %.fold.split.i.i.i
  ]

.fold.split.i.i.i:                                ; preds = %1
  br label %bb.c

bb.c:                                             ; preds = %.fold.split.i.i.i, %1
  %.not.not.lcssa.ph.i.i.i = phi i1 [ true, %.fold.split.i.i.i ], [ false, %1 ]
  %3 = icmp ne i32 %.promoted.i.i.i, 17
  tail call void @llvm.assume(i1 %3)
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtBa_6traits8iterator8Iterator3anyNCNCNvMNtNtNtBU_5infer7builder9subscriptNtB2q_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00EBW_.exit.i

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtBa_6traits8iterator8Iterator3anyNCNCNvMNtNtNtBU_5infer7builder9subscriptNtB2q_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00EBW_.exit.i: ; preds = %bb.c, %1
  %.not.not.lcssa.i.i.i = phi i1 [ false, %1 ], [ %.not.not.lcssa.ph.i.i.i, %bb.c ]
  store i32 -1, ptr %2, align 8, !alias.scope !16717
  br label %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvMs9_NtB2r_14known_instanceNtB3l_17UnionTypeInstance22value_expression_types0EINtNtNtBW_7sources4once4OnceB2p_EENtNtNtBW_6traits8iterator8Iterator3anyNCNCNvMNtNtNtB2r_5infer7builder9subscriptNtB5P_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00EB2t_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvMs9_NtB1L_14known_instanceNtB2F_17UnionTypeInstance22value_expression_types0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Q_3any5checkB1J_NCNCNvMNtNtNtB1L_5infer7builder9subscriptNtB56_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1N_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
  br label %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvMs9_NtB2r_14known_instanceNtB3l_17UnionTypeInstance22value_expression_types0EINtNtNtBW_7sources4once4OnceB2p_EENtNtNtBW_6traits8iterator8Iterator3anyNCNCNvMNtNtNtB2r_5infer7builder9subscriptNtB5P_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00EB2t_.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2g_3any5checkB1s_NCNCNvMNtNtNtB1u_5infer7builder9subscriptNtB3w_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB1w_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  br label %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvMs9_NtB2r_14known_instanceNtB3l_17UnionTypeInstance22value_expression_types0EINtNtNtBW_7sources4once4OnceB2p_EENtNtNtBW_6traits8iterator8Iterator3anyNCNCNvMNtNtNtB2r_5infer7builder9subscriptNtB5P_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00EB2t_.exit

_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBU_6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvMs9_NtB2r_14known_instanceNtB3l_17UnionTypeInstance22value_expression_types0EINtNtNtBW_7sources4once4OnceB2p_EENtNtNtBW_6traits8iterator8Iterator3anyNCNCNvMNtNtNtB2r_5infer7builder9subscriptNtB5P_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00EB2t_.exit: ; preds = %bb.d, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtBa_6traits8iterator8Iterator3anyNCNCNvMNtNtNtBU_5infer7builder9subscriptNtB2q_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00EBW_.exit.i, %bb.e
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.e ], [ %.not.not.lcssa.i.i.i, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtBa_6traits8iterator8Iterator3anyNCNCNvMNtNtNtBU_5infer7builder9subscriptNtB2q_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls7_00EBW_.exit.i ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBY_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtNtBU_5chain5ChainIB2Y_BP_INtNtNtBW_7sources4once4OnceB29_EEBP_EENtNtNtBW_6traits8iterator8Iterator7collectINtNtCscdodAO9FK5_5alloc3vec3VecB29_EEB2d_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 !guid !16727 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load i32, ptr %1, align 8, !range !117, !noundef !73
  %.not = icmp eq i32 %i.b, -4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !16729, !noalias !16730
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB24_INtNtB28_6copied6CopiedINtNtNtB2c_5slice4iter4IterBT_EEINtNtNtB2a_7sources4once4OnceBT_EEB30_EE9from_iterBX_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !16731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16728
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !73, !noundef !73
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noundef !73
  tail call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB2c_5slice4iter4IterBT_EEE9from_iterBX_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.d, ptr noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableBP_EENtNtNtB1Y_6traits8iterator8Iterator8find_mapTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtBT_10TruthinessEQNCNvNtB3H_5place28place_from_declarations_impl0EB3H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([36 x i8]) align 4 captures(none) dereferenceable(36) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !16764 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = alloca [36 x i8], align 4                ; 6 uses
  %i.c = alloca [20 x i8], align 4                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [20 x i8], align 4                ; 5 uses
  %i.f = alloca [36 x i8], align 4                ; 6 uses
  %i.g = alloca [20 x i8], align 4                ; 4 uses
  %i.h = alloca [36 x i8], align 4                ; 6 uses
  %i.i = alloca [20 x i8], align 4                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.7.i = alloca [32 x i8], align 4          ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !range !120, !noundef !73 ; 3 uses
  %.not = icmp eq i32 %i.m, -3
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16766)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16767)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16768
  store ptr %2, ptr %i.k, align 8, !noalias !16769
  store i32 -2, ptr %i.l, align 8, !alias.scope !16770
  switch i32 %i.m, label %bb.e [
    i32 -2, label %bb.c
    i32 -1, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread.i
  ]

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.n = phi ptr [ %2, %bb.b ], [ %.pre.i.i, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16769
  store ptr %i.n, ptr %i.j, align 8, !noalias !16771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16771
  call void @_RNvXse_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_20DeclarationsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !16772
  %i.o = load i32, ptr %i.i, align 4, !range !119, !noalias !16771, !noundef !73
  %.not12.i.i.i = icmp eq i32 %i.o, -1
  br i1 %.not12.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread8.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.g, ptr noundef nonnull align 4 dereferenceable(20) %i.i, i64 20, i1 false), !noalias !16771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16773
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5place28place_from_declarations_impl0INtB7_5FnMutTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def25DeclarationWithConstraintEE8call_mutBU_(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(20) %i.g), !noalias !16774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16773
  %i.p = load i32, ptr %i.h, align 4, !range !119, !noalias !16773, !noundef !73 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.p, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.i

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread8.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16769
  br label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16771
  call void @_RNvXse_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_20DeclarationsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !16772
  %i.q = load i32, ptr %i.i, align 4, !range !119, !noalias !16771, !noundef !73
  %.not.i.i.i = icmp eq i32 %i.q, -1
  br i1 %.not.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread8.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !16776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16775
  store i32 %i.m, ptr %i.e, align 4, !noalias !16777
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5place28place_from_declarations_impl0INtB7_5FnMutTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def25DeclarationWithConstraintEE8call_mutBU_(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(20) %i.e), !noalias !16778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16775
  %i.r = load i32, ptr %i.f, align 4, !range !119, !noalias !16775, !noundef !73 ; 2 uses
  %.not.i12.i.i = icmp eq i32 %i.r, -1
  br i1 %.not.i12.i.i, label %bb.f, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread4.i

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread4.i: ; preds = %bb.e
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, i64 32, i1 false), !noalias !16768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16775
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16775
  %.pre.i.i = load ptr, ptr %i.k, align 8, !noalias !16769
  br label %bb.c

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.i: ; preds = %.lr.ph.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !16768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16769
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.i, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread4.i
  %.sroa.0.17.i = phi i32 [ %i.r, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread4.i ], [ %i.p, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16768
  store i32 %.sroa.0.17.i, ptr %0, align 4, !alias.scope !16765
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !16779
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtBa_6traits8iterator8Iterator8find_mapTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB15_10TruthinessEQNCNvNtB2Q_5place28place_from_declarations_impl0EB2Q_.exit

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread.i: ; preds = %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread8.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16768
  store i32 -1, ptr %0, align 4, !alias.scope !16765
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtBa_6traits8iterator8Iterator8find_mapTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB15_10TruthinessEQNCNvNtB2Q_5place28place_from_declarations_impl0EB2Q_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtBa_6traits8iterator8Iterator8find_mapTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB15_10TruthinessEQNCNvNtB2Q_5place28place_from_declarations_impl0EB2Q_.exit: ; preds = %bb.g, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB5_8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkNtB18_25DeclarationWithConstraintTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB1a_10TruthinessEQNCNvNtB3T_5place28place_from_declarations_impl0E0INtNtNtBb_3ops12control_flow11ControlFlowB3O_EEB3T_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16780)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16781
  store ptr %2, ptr %i.d, align 8, !noalias !16782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16782
  call void @_RNvXse_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_20DeclarationsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(40) %1), !noalias !16783
  %i.s = load i32, ptr %i.c, align 4, !range !119, !noalias !16782, !noundef !73
  %.not12.i.i = icmp eq i32 %i.s, -1
  br i1 %.not12.i.i, label %_RINvYNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_mapTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB7_10TruthinessEQNCNvNtB2e_5place28place_from_declarations_impl0EB2e_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %i.c, i64 20, i1 false), !noalias !16782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16784
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5place28place_from_declarations_impl0INtB7_5FnMutTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def25DeclarationWithConstraintEE8call_mutBU_(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(20) %i.a), !noalias !16785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16784
  %i.t = load i32, ptr %i.b, align 4, !range !119, !noalias !16784, !noundef !73 ; 2 uses
  %.not.i.i.i1 = icmp eq i32 %i.t, -1
  br i1 %.not.i.i.i1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16782
  call void @_RNvXse_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_20DeclarationsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(40) %1), !noalias !16783
  %i.u = load i32, ptr %i.c, align 4, !range !119, !noalias !16782, !noundef !73
  %.not.i.i = icmp eq i32 %i.u, -1
  br i1 %.not.i.i, label %_RINvYNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_mapTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB7_10TruthinessEQNCNvNtB2e_5place28place_from_declarations_impl0EB2e_.exit, label %.lr.ph.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %.sroa.6.0..sroa_idx.i.i2 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx.i3, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i2, i64 32, i1 false), !noalias !16786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16784
  br label %_RINvYNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_mapTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB7_10TruthinessEQNCNvNtB2e_5place28place_from_declarations_impl0EB2e_.exit

_RINvYNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_mapTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB7_10TruthinessEQNCNvNtB2e_5place28place_from_declarations_impl0EB2e_.exit: ; preds = %bb.i, %bb.h, %bb.j
  %storemerge.i = phi i32 [ %i.t, %bb.j ], [ -1, %bb.h ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16781
  store i32 %storemerge.i, ptr %0, align 4, !alias.scope !16780
  br label %bb.k

bb.k:                                             ; preds = %_RINvYNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_mapTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB7_10TruthinessEQNCNvNtB2e_5place28place_from_declarations_impl0EB2e_.exit, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20DeclarationsIteratorENtNtNtBa_6traits8iterator8Iterator8find_mapTNtNtCsoTR8nlGN3X_18ty_python_semantic5types17TypeAndQualifiersNtB15_10TruthinessEQNCNvNtB2Q_5place28place_from_declarations_impl0EB2Q_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base20ClassBaseMroIteratorINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10skip_while9SkipWhileIBD_BP_NtNtBT_3mro11MroIteratorENCINvMs3_NtBT_11bound_superNtB3N_14BoundSuperType22skip_until_after_pivotB38_E0EENtNtNtB2d_6traits8iterator8Iterator3anyNCNvB3J_28find_name_in_mro_after_pivot0EBV_(ptr noalias noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !16799 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 8 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !121, !noundef !73
end_hunk_0
begin_hunk_1_@_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType30recursive_type_normalized_impl:bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc34.i.i.i, %bb.ac
  %i.cz = phi i64 [ %.pre.i33.i.i.i, %.noexc34.i.i.i ], [ %i.cw, %bb.ac ]
  %.sroa.01.0.i31.i.i.i = phi ptr [ %i.cc, %.noexc34.i.i.i ], [ %.sink8.i.i30.i.i.i, %bb.ac ] ; 2 uses
  %.sroa.0.0.i32.i.i.i = phi ptr [ %i.cy, %.noexc34.i.i.i ], [ %.sink9.i.i29.i.i.i, %bb.ac ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i32.i.i.i, i64 %i.cz ; 2 uses
  store i32 %.pr.i.i.i, ptr %i.da, align 4, !noalias !25309
  %.sroa.243.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.243.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i.i.i, i64 12, i1 false), !noalias !25309
  %i.db = load i64, ptr %.sroa.01.0.i31.i.i.i, align 8, !alias.scope !25322, !noalias !25304, !noundef !73
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %.sroa.01.0.i31.i.i.i, align 8, !alias.scope !25322, !noalias !25304
  %i.dd = icmp eq ptr %i.cd, %i.az
  br i1 %i.dd, label %.loopexit70.i.i.i, label %bb.w

bb.af:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !25309
  unreachable

_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE7try_newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB28_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impl0EIB20_B2N_NCB3l_s_0EEBa_.exit.i.i: ; preds = %.loopexit.i.i, %bb.y
  %.sroa.9.i.sroa.0.1 = phi i32 [ %.sroa.522.i.i.sroa.0.0, %bb.y ], [ undef, %.loopexit.i.i ]
  %.sroa.11.i.sroa.0.1 = phi i64 [ %.sroa.11.i.sroa.0.0.copyload11, %bb.y ], [ undef, %.loopexit.i.i ]
  %.sroa.9.i.sroa.6.1 = phi ptr [ %.sroa.522.i.i.sroa.6.0, %bb.y ], [ undef, %.loopexit.i.i ]
  %.sroa.13.0.i = phi i64 [ %.sink9.i.i15.i.i, %bb.y ], [ undef, %.loopexit.i.i ]
  %.sroa.0.0.i = phi i32 [ %.sroa.018.0.i.i, %bb.y ], [ -2, %.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !25304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !25304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !25304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !25287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25287
  br label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.i: ; preds = %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE7try_newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB28_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impl0EIB20_B2N_NCB3l_s_0EEBa_.exit.i.i, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB24_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impls0_0EIB1W_B2J_NCB3h_s1_0EEBa_.exit.i.i
  %.sroa.9.i.sroa.0.0 = phi i32 [ %.sroa.9.i.sroa.0.1, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE7try_newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB28_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impl0EIB20_B2N_NCB3l_s_0EEBa_.exit.i.i ], [ %.sroa.537.i.i.sroa.0.0, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB24_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impls0_0EIB1W_B2J_NCB3h_s1_0EEBa_.exit.i.i ]
  %.sroa.11.i.sroa.0.0 = phi i64 [ %.sroa.11.i.sroa.0.1, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE7try_newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB28_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impl0EIB20_B2N_NCB3l_s_0EEBa_.exit.i.i ], [ %.sroa.11.i.sroa.0.0.copyload, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB24_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impls0_0EIB1W_B2J_NCB3h_s1_0EEBa_.exit.i.i ]
  %.sroa.9.i.sroa.6.0 = phi ptr [ %.sroa.9.i.sroa.6.1, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE7try_newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB28_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impl0EIB20_B2N_NCB3l_s_0EEBa_.exit.i.i ], [ %.sroa.537.i.i.sroa.6.0, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB24_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impls0_0EIB1W_B2J_NCB3h_s1_0EEBa_.exit.i.i ]
  %.sroa.13.1.i = phi i64 [ %.sroa.13.0.i, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE7try_newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB28_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impl0EIB20_B2N_NCB3l_s_0EEBa_.exit.i.i ], [ %.sink9.i.i.i.i, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB24_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impls0_0EIB1W_B2J_NCB3h_s1_0EEBa_.exit.i.i ]
  %.sroa.0.1.i1 = phi i32 [ %.sroa.0.0.i, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE7try_newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB28_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impl0EIB20_B2N_NCB3l_s_0EEBa_.exit.i.i ], [ %.sroa.033.0.i.i, %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB24_5slice4iter4IterB1k_ENCNvMse_B6_BT_30recursive_type_normalized_impls0_0EIB1W_B2J_NCB3h_s1_0EEBa_.exit.i.i ] ; 3 uses
  %.not9.i = icmp eq i32 %.sroa.0.1.i1, -2
  br i1 %.not9.i, label %bb.ak, label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit

bb.ag:                                            ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val.i = load ptr, ptr %i.df, align 8, !alias.scope !25283 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.val10.i = load i64, ptr %i.dg, align 8, !alias.scope !25283
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.val10.i ; 2 uses
  br i1 %6, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25323
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  store ptr %.val.i, ptr %i.d, align 8, !noalias !25323
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !noalias !25323
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %2, ptr %i.dj, align 8, !noalias !25323
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %3, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !25323
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %4, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !25323
  %.sroa.612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %5, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !noalias !25323
  %i.dk = call { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB1J_8adapters3map3MapINtNtNtB1L_5slice4iter4IterBP_ENCNvMs4_NtBR_5tupleINtB3V_16FixedLengthTupleBP_E30recursive_type_normalized_impls_0EEBT_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d), !noalias !25324 ; 2 uses
  %i.dl = extractvalue { ptr, i64 } %i.dk, 0
  %i.dm = extractvalue { ptr, i64 } %i.dk, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25325
  call void @_RNvXs8_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB7_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBS_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 4 %i.dl, i64 noundef %i.dm), !noalias !25324
  %i.dn = call { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtBa_3vec9into_iter8IntoIterBP_EEBT_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c), !noalias !25324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25325
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeE30recursive_type_normalized_impl.exit.i

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !25323
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  store ptr %.val.i, ptr %i.e, align 8, !noalias !25323
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.dh, ptr %i.do, align 8, !noalias !25323
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %2, ptr %i.dp, align 8, !noalias !25323
  %.sroa.46.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %3, ptr %.sroa.46.0..sroa_idx.i11.i, align 8, !noalias !25323
  %.sroa.57.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %4, ptr %.sroa.57.0..sroa_idx.i12.i, align 8, !noalias !25323
  %.sroa.68.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %5, ptr %.sroa.68.0..sroa_idx.i13.i, align 8, !noalias !25323
  %i.dq = call { ptr, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvMs4_NtB1y_5tupleINtB2r_16FixedLengthTupleB1w_E30recursive_type_normalized_impl0EB1w_INtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B3M_IB3K_INtNtCscdodAO9FK5_5alloc5boxed3BoxSB1w_EEINtNtNtB4_6traits7collect12FromIteratorIB3K_B1w_EE9from_iterBQ_E0B4P_EB1A_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e), !noalias !25324 ; 2 uses
  %i.dr = extractvalue { ptr, i64 } %i.dq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !25323
  %.not.i14.i = icmp eq ptr %i.dr, null
  br i1 %.not.i14.i, label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = extractvalue { ptr, i64 } %i.dq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25326
  call void @_RNvXs8_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB7_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBS_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 4 %i.dr, i64 noundef %i.ds), !noalias !25324
  %i.dt = call { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtBa_3vec9into_iter8IntoIterBP_EEBT_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !25324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25326
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeE30recursive_type_normalized_impl.exit.i

_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeE30recursive_type_normalized_impl.exit.i: ; preds = %bb.aj, %bb.ah
  %.pn.i2 = phi { ptr, i64 } [ %i.dt, %bb.aj ], [ %i.dn, %bb.ah ] ; 2 uses
  %.sroa.0.0.i.i = extractvalue { ptr, i64 } %.pn.i2, 0 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not8.i, label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread, label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread27

_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread27: ; preds = %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeE30recursive_type_normalized_impl.exit.i
  %.sroa.4.0.i.i = extractvalue { ptr, i64 } %.pn.i2, 1
  br label %bb.al

bb.ak:                                            ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.sroa.6)
  br label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread

_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i.sroa.6, i64 16, i1 false), !noalias !25327
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.sroa.6)
  %.not = icmp eq i32 %.sroa.0.1.i1, -3
  br i1 %.not, label %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread, label %bb.al

bb.al:                                            ; preds = %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread27, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit
  %.sroa.0.02038 = phi i32 [ -2, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread27 ], [ %.sroa.0.1.i1, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit ]
  %.sroa.9.037 = phi i32 [ undef, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread27 ], [ %.sroa.9.i.sroa.0.0, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit ]
  %.sroa.10.036 = phi ptr [ %.sroa.0.0.i.i, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread27 ], [ %.sroa.9.i.sroa.6.0, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit ]
  %.sroa.11.035 = phi i64 [ %.sroa.4.0.i.i, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread27 ], [ %.sroa.11.i.sroa.0.0, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit ]
  %.sroa.133.034 = phi i64 [ undef, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread27 ], [ %.sroa.13.1.i, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit ]
  %i.du = extractvalue { i32, i32 } %.merged.i, 1
  %i.dv = extractvalue { i32, i32 } %.merged.i, 0
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.89.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store i32 %.sroa.0.02038, ptr %i.w, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %.sroa.9.037, ptr %.sroa.56.0..sroa_idx, align 4
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.10.036, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.11.035, ptr %.sroa.78.0..sroa_idx, align 8
  %.sroa.910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 %.sroa.133.034, ptr %.sroa.910.0..sroa_idx, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val = load ptr, ptr %i.dw, align 8
  %i.dx = invoke { ptr, ptr } %.val(ptr noundef nonnull %2)
          to label %bb.am unwind label %bb.an, !noalias !25328 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.dy = extractvalue { ptr, ptr } %i.dx, 0      ; 2 uses
  %i.dz = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB9_9TupleType10ingredient5CACHE, ptr noundef nonnull align 8 %i.dy)
          to label %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB8_9TupleType12new_internalDNtNtBc_2db2DbEL_NtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramINtB8_5TupleNtBa_4TypeNtB8_15VariableSegmentEEBc_.exit unwind label %bb.an, !noalias !25328

bb.an:                                            ; preds = %bb.am, %bb.al
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w) #50
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB8_9TupleType12new_internalDNtNtBc_2db2DbEL_NtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramINtB8_5TupleNtBa_4TypeNtB8_15VariableSegmentEEBc_.exit: ; preds = %bb.am
  %i.eb = extractvalue { ptr, ptr } %i.dx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %i.dv, ptr %i.ec, align 8, !noalias !25328
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.du, ptr %i.ed, align 4, !noalias !25328
  %i.ee = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeE9intern_idINtNvBZ_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramINtBZ_5TupleNtB11_4TypeNtBZ_15VariableSegmentEENCINvMs9_B2a_BX_12new_internalDNtNtB13_2db2DbEL_B2s_B3g_E0EB13_(ptr noundef nonnull align 8 %i.dz, ptr noundef nonnull align 8 %i.dy, ptr noundef nonnull align 8 %i.eb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !noalias !25328 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25328
  %i.ef = extractvalue { i32, i32 } %i.ee, 0
  %i.eg = extractvalue { i32, i32 } %i.ee, 1
  br label %bb.ap

_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread: ; preds = %bb.ai, %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_16FixedLengthTupleNtB7_4TypeE30recursive_type_normalized_impl.exit.i, %bb.ak, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread, %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB8_9TupleType12new_internalDNtNtBc_2db2DbEL_NtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramINtB8_5TupleNtBa_4TypeNtB8_15VariableSegmentEEBc_.exit
  %.sroa.3.0 = phi i32 [ %i.eg, %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB8_9TupleType12new_internalDNtNtBc_2db2DbEL_NtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramINtB8_5TupleNtBa_4TypeNtB8_15VariableSegmentEEBc_.exit ], [ undef, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread ]
  %.sroa.0.0 = phi i32 [ %i.ef, %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB8_9TupleType12new_internalDNtNtBc_2db2DbEL_NtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramINtB8_5TupleNtBa_4TypeNtB8_15VariableSegmentEEBc_.exit ], [ 0, %_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE30recursive_type_normalized_impl.exit.thread ]
  %i.eh = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ei = insertvalue { i32, i32 } %i.eh, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.ei
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType3new(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr nofree noundef nonnull align 4 captures(none) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !25354 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = load i32, ptr %3, align 8, !range !93, !alias.scope !25355, !noundef !73 ; 3 uses
  %.not.i = icmp eq i32 %i.f, -2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !25356, !noundef !73
  %.not.i.i.i = icmp eq i64 %i.i, 0               ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !25356, !nonnull !73
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !25356
  %.sink10.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 4
  %.idx = select i1 %.not.i.i.i, i64 0, i64 %i.m  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sink10.i.i.i, i64 %.idx
  %.not.i.i = icmp samesign eq i64 %.idx, 0
  br i1 %.not.i.i, label %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread29, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i.i
  %i.o = phi ptr [ %i.p, %_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i.i ], [ %.sink10.i.i.i, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.val.i.i = load i32, ptr %i.o, align 4, !range !116, !noalias !25357, !noundef !73 ; 3 uses
  %i.q = icmp ne i32 %.val.i.i, 17
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nsw i32 %.val.i.i, -4
  %i.s = icmp samesign ugt i32 %.val.i.i, 3
  %narrow.i.i.i.i = select i1 %i.s, i32 %i.r, i32 13
  switch i32 %narrow.i.i.i.i, label %_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i.i [
    i32 1, label %.split.i.i
    i32 2, label %.loopexit
  ]

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.t = getelementptr i8, ptr %i.o, i64 12
  %.val3.i.i = load i8, ptr %i.t, align 4, !noalias !25357
  %spec.select.i.i.i.i = trunc i8 %.val3.i.i to i1
  br i1 %spec.select.i.i.i.i, label %.loopexit, label %_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i.i

_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %.not10.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not10.i.i, label %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !25355, !nonnull !73, !noundef !73 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !25355, !noundef !73 ; 2 uses
  %.idx37 = shl nuw nsw i64 %i.x, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx37
  %.not.i2.i = icmp eq i64 %i.x, 0
  br i1 %.not.i2.i, label %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread28, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %bb.c, %_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i12.i
  %i.z = phi ptr [ %i.aa, %_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i12.i ], [ %i.v, %bb.c ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.val.i4.i = load i32, ptr %i.z, align 4, !range !116, !noalias !25358, !noundef !73 ; 3 uses
  %i.ab = icmp ne i32 %.val.i4.i, 17
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nsw i32 %.val.i4.i, -4
  %i.ad = icmp samesign ugt i32 %.val.i4.i, 3
  %narrow.i.i.i5.i = select i1 %i.ad, i32 %i.ac, i32 13
  switch i32 %narrow.i.i.i5.i, label %_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i12.i [
    i32 1, label %.split.i9.i
    i32 2, label %.loopexit
  ]

.split.i9.i:                                      ; preds = %.lr.ph.i3.i
  %i.ae = getelementptr i8, ptr %i.z, i64 12
  %.val3.i10.i = load i8, ptr %i.ae, align 4, !noalias !25358
  %spec.select.i.i.i11.i = trunc i8 %.val3.i10.i to i1
  br i1 %spec.select.i.i.i11.i, label %.loopexit, label %_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i12.i

_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i12.i: ; preds = %.split.i9.i, %.lr.ph.i3.i
  %.not10.i13.i = icmp eq ptr %i.aa, %i.y
  br i1 %.not10.i13.i, label %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit, label %.lr.ph.i3.i

_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit: ; preds = %_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i.i, %_RNvYNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB9_4Type8is_neverINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRBO_EE8call_mutBb_.exit.backedge.i12.i
  %cond = icmp eq i32 %i.f, 6
  br i1 %cond, label %bb.i, label %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread28

_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread29: ; preds = %bb.b
  %.old = icmp eq i32 %i.f, 6
  br i1 %.old, label %bb.i, label %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread28

_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread28: ; preds = %bb.c, %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread29, %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit
  %.sroa.03.0.copyload.i = load i32, ptr %2, align 4, !noalias !25359
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !25359 ; 4 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !25359 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i, label %bb.d [
    i32 0, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ], !prof !132

bb.d:                                             ; preds = %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread28
  unreachable

bb.e:                                             ; preds = %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread28
  %i.af = tail call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  br label %bb.h

bb.f:                                             ; preds = %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread28
  %i.ag = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  br label %bb.h

bb.g:                                             ; preds = %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread28
  %i.ah = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.pn.i = phi { i32, i32 } [ %i.af, %bb.e ], [ %i.ag, %bb.f ], [ %i.ah, %bb.g ] ; 2 uses
  %.sroa.0.1.i = extractvalue { i32, i32 } %.pn.i, 0 ; 2 uses
  %.sroa.6.1.i = extractvalue { i32, i32 } %.pn.i, 1 ; 2 uses
  store i32 0, ptr %2, align 4, !noalias !25359
  store i32 %.sroa.0.1.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !25359
  store i32 %.sroa.6.1.i, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !25359
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit: ; preds = %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread28, %bb.h
  %.pre-phi43 = phi i32 [ %.sroa.6.1.i, %bb.h ], [ %.sroa.9.0.copyload.i, %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread28 ]
  %.pre-phi = phi i32 [ %.sroa.0.1.i, %bb.h ], [ %.sroa.5.0.copyload.i, %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread28 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.ai, align 8
  %i.aj = tail call { ptr, ptr } %.val(ptr noundef nonnull %0), !noalias !25360, !inline_history !25345 ; 2 uses
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.al = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB9_9TupleType10ingredient5CACHE, ptr noundef nonnull align 8 %i.ak), !noalias !25360
  %i.am = extractvalue { ptr, ptr } %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25360
  store i32 %.pre-phi, ptr %i.b, align 8, !noalias !25360
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.pre-phi43, ptr %i.an, align 4, !noalias !25360
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.ao, align 8, !noalias !25360
  %i.ap = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeE9intern_idINtNvBZ_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtBZ_5TupleNtB11_4TypeNtBZ_15VariableSegmentEENCINvMs9_B2a_BX_12new_internalDNtNtB13_2db2DbEL_B2s_B3g_E0EB13_(ptr noundef nonnull align 8 %i.al, ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull align 8 %i.am, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25360
  %i.aq = extractvalue { i32, i32 } %i.ap, 0
  %i.ar = extractvalue { i32, i32 } %i.ap, 1
  br label %.loopexit

bb.i:                                             ; preds = %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit, %_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBP_ENtNtNtNtBW_4iter6traits8iterator8Iterator3anyNvMs39_B1x_B1v_8is_neverEB1z_.exit.thread29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !25361, !noundef !73 ; 2 uses
  %i.av = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0      ; 3 uses
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ax
  %i.az = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range9RangeFromjEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0      ; 3 uses
  %i.bb = extractvalue { ptr, i64 } %i.az, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bb
  store ptr %i.aw, ptr %i.d, align 8, !alias.scope !25362
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ay, ptr %i.bd, align 8, !alias.scope !25362
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ba, ptr %i.be, align 8, !alias.scope !25362
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.bc, ptr %i.bf, align 8, !alias.scope !25362
  %i.bg = call { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB1J_8adapters5chain5ChainINtNtB2V_6copied6CopiedINtNtNtB1L_5slice4iter4IterBP_EEB3m_EEBT_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d) ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bh, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bi, ptr %i.bk, align 8
  store i32 -2, ptr %i.e, align 8
  %.sroa.03.0.copyload.i8 = load i32, ptr %2, align 4, !noalias !25363
  %.sroa.5.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.5.0.copyload.i10 = load i32, ptr %.sroa.5.0..sroa_idx.i9, align 4, !noalias !25363 ; 4 uses
  %.sroa.9.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.9.0.copyload.i12 = load i32, ptr %.sroa.9.0..sroa_idx.i11, align 4, !noalias !25363 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i8, label %bb.j [
    i32 0, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit19
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ], !prof !132

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bl = invoke { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i10, i32 noundef %.sroa.9.0.copyload.i12, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
          to label %.noexc unwind label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.bm = invoke { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i10, i32 noundef %.sroa.9.0.copyload.i12, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
          to label %.noexc unwind label %bb.q

bb.m:                                             ; preds = %bb.i
  %i.bn = invoke { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %.sroa.5.0.copyload.i10, i32 noundef %.sroa.9.0.copyload.i12, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i13 = phi { i32, i32 } [ %i.bm, %bb.l ], [ %i.bl, %bb.k ], [ %i.bn, %bb.m ] ; 2 uses
  %.sroa.0.1.i14 = extractvalue { i32, i32 } %.pn.i13, 0 ; 2 uses
  %.sroa.6.1.i15 = extractvalue { i32, i32 } %.pn.i13, 1 ; 2 uses
  store i32 0, ptr %2, align 4, !noalias !25363
  store i32 %.sroa.0.1.i14, ptr %.sroa.5.0..sroa_idx.i9, align 4, !noalias !25363
  store i32 %.sroa.6.1.i15, ptr %.sroa.9.0..sroa_idx.i11, align 4, !noalias !25363
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit19

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit19: ; preds = %bb.i, %.noexc
  %.pre-phi47 = phi i32 [ %.sroa.6.1.i15, %.noexc ], [ %.sroa.9.0.copyload.i12, %bb.i ]
  %.pre-phi45 = phi i32 [ %.sroa.0.1.i14, %.noexc ], [ %.sroa.5.0.copyload.i10, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val7 = load ptr, ptr %i.bo, align 8
  %i.bp = invoke { ptr, ptr } %.val7(ptr noundef nonnull %0)
          to label %bb.n unwind label %bb.o, !noalias !25364 ; 2 uses

bb.n:                                             ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit19
  %i.bq = extractvalue { ptr, ptr } %i.bp, 0      ; 2 uses
  %i.br = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB9_9TupleType10ingredient5CACHE, ptr noundef nonnull align 8 %i.bq)
          to label %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB7_9TupleType10ingredient.exit.i unwind label %bb.o, !noalias !25364

_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB7_9TupleType10ingredient.exit.i: ; preds = %bb.n
  %i.bs = extractvalue { ptr, ptr } %i.bp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.pre-phi45, ptr %i.bt, align 8, !noalias !25364
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %.pre-phi47, ptr %i.bu, align 4, !noalias !25364
  %i.bv = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeE9intern_idINtNvBZ_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramINtBZ_5TupleNtB11_4TypeNtBZ_15VariableSegmentEENCINvMs9_B2a_BX_12new_internalDNtNtB13_2db2DbEL_B2s_B3g_E0EB13_(ptr noundef nonnull align 8 %i.br, ptr noundef nonnull align 8 %i.bq, ptr noundef nonnull align 8 %i.bs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25364
  %i.bw = extractvalue { i32, i32 } %i.bv, 0
  %i.bx = extractvalue { i32, i32 } %i.bv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

bb.o:                                             ; preds = %bb.n, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit19
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #50
          to label %.body.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

.loopexit:                                        ; preds = %.split.i.i, %.lr.ph.i.i, %.lr.ph.i3.i, %.split.i9.i, %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB7_9TupleType10ingredient.exit.i, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit
  %.sroa.4.0 = phi i32 [ %i.bx, %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB7_9TupleType10ingredient.exit.i ], [ %i.ar, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit ], [ undef, %.lr.ph.i3.i ], [ undef, %.split.i9.i ], [ undef, %.lr.ph.i.i ], [ undef, %.split.i.i ]
  %.sroa.0.0 = phi i32 [ %i.bw, %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB7_9TupleType10ingredient.exit.i ], [ %i.aq, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit ], [ 0, %.lr.ph.i3.i ], [ 0, %.split.i9.i ], [ 0, %.lr.ph.i.i ], [ 0, %.split.i.i ]
  %i.bz = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ca = insertvalue { i32, i32 } %i.bz, i32 %.sroa.4.0, 1
  ret { i32, i32 } %i.ca

.body.thread:                                     ; preds = %bb.o, %bb.q
  %eh.lpad-body32 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.o ], [ %lpad.thr_comm, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body32

bb.q:                                             ; preds = %bb.m, %bb.k, %bb.l
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_(ptr noalias noundef align 8 dereferenceable(48) %i.e) #50
          to label %.body.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType5empty(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr nofree noundef nonnull align 4 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !25369 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.03.0.copyload.i = load i32, ptr %2, align 4, !noalias !25370
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !25370 ; 4 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !25370 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ], !prof !132

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = insertvalue { i32, i32 } poison, i32 %.sroa.5.0.copyload.i, 0
  %i.d = insertvalue { i32, i32 } %i.c, i32 %.sroa.9.0.copyload.i, 1
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.f = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.g = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn.i = phi { i32, i32 } [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ] ; 3 uses
  %.sroa.0.1.i = extractvalue { i32, i32 } %.pn.i, 0
  %.sroa.6.1.i = extractvalue { i32, i32 } %.pn.i, 1
  store i32 0, ptr %2, align 4, !noalias !25370
  store i32 %.sroa.0.1.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !25370
  store i32 %.sroa.6.1.i, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !25370
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit: ; preds = %bb.c, %bb.g
  %.merged.i = phi { i32, i32 } [ %i.d, %bb.c ], [ %.pn.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.i, align 8
  store i32 -2, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.j, align 8
  %i.k = invoke { ptr, ptr } %.val(ptr noundef nonnull %0)
          to label %bb.h unwind label %bb.i, !noalias !25371 ; 2 uses

bb.h:                                             ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.m = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB9_9TupleType10ingredient5CACHE, ptr noundef nonnull align 8 %i.l)
          to label %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB8_9TupleType12new_internalDNtNtBc_2db2DbEL_NtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramINtB8_5TupleNtBa_4TypeNtB8_15VariableSegmentEEBc_.exit unwind label %bb.i, !noalias !25371

bb.i:                                             ; preds = %bb.h, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit
  %lpad.thr_comm.i = landingpad { ptr, i32 }
end_hunk_1
