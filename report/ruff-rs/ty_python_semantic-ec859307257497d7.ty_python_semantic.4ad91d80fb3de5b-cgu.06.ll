Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.06?download=true
inline.NumInlined: 11176
inline.NumDeleted: 4455
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RINvXs9_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTBO_uEE9from_iterINtNtNtB1G_8adapters3map3MapINtNtB2V_10filter_map9FilterMapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterBO_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCINvB4M_31validate_typed_dict_constructorNCNvMs_NtNtNtB4O_5infer7builder10typed_dictNtB6L_20TypeInferenceBuilder28infer_typed_dict_constructors1_0E0ENCINvXs6_NtB8_3setINtB8v_8IndexSetBO_EIB1A_BO_E9from_iterB3i_E0EEB4Q_:bb.a
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !16103
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !16103
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @194, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.d, ptr %i.f, align 8, !alias.scope !16103
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !16103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !noalias !16105
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.4.0.copyload4, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16104
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCINvB36_31validate_typed_dict_constructorNCNvMs_NtNtNtB38_5infer7builder10typed_dictNtB55_20TypeInferenceBuilder28infer_typed_dict_constructors1_0E0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6P_8IndexSetB2l_EINtNtNtBa_6traits7collect12FromIteratorB2l_E9from_iterBX_E0ENtNtB7I_8iterator8Iterator4folduNCINvNvB8B_8for_each4callTB2l_uENCINvXsb_NtB6R_3mapINtB9M_8IndexMapB2l_uEINtB7G_6ExtendB9w_E6extendBN_E0E0EB3a_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(72) %i.b) #50
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTBO_uEE9from_iterINtNtNtB1G_8adapters3map3MapINtNtB2V_10filter_map9FilterMapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterBO_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCINvB4M_31validate_typed_dict_constructorNCNvMs_NtNtNtB4O_5infer7builder10typed_dictNtB6L_20TypeInferenceBuilder30prepare_typed_dict_constructors0_0E0ENCINvXs6_NtB8_3setINtB8x_8IndexSetBO_EIB1A_BO_E9from_iterB3i_E0EEB4Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.4.0.copyload4 = load i64, ptr %.sroa.4.0..sroa_idx3, align 8, !alias.scope !16114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @486) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  store i64 0, ptr %i.b, align 8, !alias.scope !16115
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !16115
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !16115
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @194, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.d, ptr %i.f, align 8, !alias.scope !16115
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !16115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !noalias !16117
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.4.0.copyload4, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16116
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCINvB36_31validate_typed_dict_constructorNCNvMs_NtNtNtB38_5infer7builder10typed_dictNtB55_20TypeInferenceBuilder30prepare_typed_dict_constructors0_0E0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6R_8IndexSetB2l_EINtNtNtBa_6traits7collect12FromIteratorB2l_E9from_iterBX_E0ENtNtB7K_8iterator8Iterator4folduNCINvNvB8D_8for_each4callTB2l_uENCINvXsb_NtB6T_3mapINtB9O_8IndexMapB2l_uEINtB7I_6ExtendB9y_E6extendBN_E0E0EB3a_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(72) %i.b) #50
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTBO_uEE9from_iterINtNtNtB1G_8adapters3map3MapINtNtB2V_10filter_map9FilterMapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterBO_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvB4M_33validate_typed_dict_required_keys0ENCINvXs6_NtB8_3setINtB6O_8IndexSetBO_EIB1A_BO_E9from_iterB3i_E0EEB4Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.4.0.copyload4 = load i64, ptr %.sroa.4.0..sroa_idx3, align 8, !alias.scope !16126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @486) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  store i64 0, ptr %i.b, align 8, !alias.scope !16127
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !16127
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !16127
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @194, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.d, ptr %i.f, align 8, !alias.scope !16127
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !16127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !noalias !16129
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.4.0.copyload4, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16128
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvB36_33validate_typed_dict_required_keys0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB58_8IndexSetB2l_EINtNtNtBa_6traits7collect12FromIteratorB2l_E9from_iterBX_E0ENtNtB61_8iterator8Iterator4folduNCINvNvB6U_8for_each4callTB2l_uENCINvXsb_NtB5a_3mapINtB85_8IndexMapB2l_uEINtB5Z_6ExtendB7P_E6extendBN_E0E0EB3a_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(72) %i.b) #50
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTBO_uEE9from_iterINtNtNtB1G_8adapters3map3MapINtNtB2V_7flatten7FlatMapINtNtNtB1I_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB2V_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysBO_NtB4a_20UnpackedTypedDictKeyEENCNvB4a_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtB8_3setINtB8g_8IndexSetBO_EIB1A_BO_E9from_iterB3i_E0EEB4e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca i64, align 8                ; 4 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.c = alloca [160 x i8], align 8               ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 25 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.i = alloca [160 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(160) %1, i64 160, i1 false), !alias.scope !16168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16174)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16175
  %i.j = load i64, ptr %i.i, align 8, !range !53, !alias.scope !16176, !noundef !23
  %.not.i.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEENtNtNtB8_6traits8iterator8Iterator9size_hintB2K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) dereferenceable_or_null(72) %i.i), !noalias !16177
  %.pre.i.i.i = load i64, ptr %i.g, align 8, !noalias !16175
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre74.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !26, !noalias !16175
  %.phi.trans.insert75.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre76.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i, align 8, !noalias !16175
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.k = phi i64 [ %.pre76.i.i.i, %bb.b ], [ 0, %bb.a ]
  %i.l = phi i64 [ %.pre74.i.i.i, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %i.m = phi i64 [ %.pre.i.i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16175
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !53, !alias.scope !16176, !noundef !23
  %.not55.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not55.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit64.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEENtNtNtB8_6traits8iterator8Iterator9size_hintB2K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.n), !noalias !16178
  %.pre77.i.i.i = load i64, ptr %i.f, align 8, !noalias !16175
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre79.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i, align 8, !range !26, !noalias !16175
  %.phi.trans.insert80.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre81.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i, align 8, !noalias !16175
  %i.p = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %.pre77.i.i.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit64.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit64.i.i.i: ; preds = %bb.c, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i
  %i.q = phi i64 [ %.pre81.i.i.i, %bb.c ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i ]
  %.fr17 = phi i64 [ %.pre79.i.i.i, %bb.c ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i ] ; 2 uses
  %i.r = phi i64 [ %i.p, %bb.c ], [ %i.m, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16175
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !16176, !noundef !23 ; 2 uses
  %.not56.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not56.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit64.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %.val63.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !16176, !nonnull !23, !noundef !23
  %i.v = icmp eq ptr %.val63.i.i.i, %i.t
  %i.w = trunc nuw i64 %i.l to i1
  %i.x = trunc nuw i64 %.fr17 to i1
  %op.rdx15 = select i1 %i.v, i1 %i.w, i1 false
  %op.rdx16 = select i1 %op.rdx15, i1 %i.x, i1 false
  br i1 %op.rdx16, label %bb.f, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit

bb.e:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit64.i.i.i
  %i.y = and i64 %.fr17, %i.l
  %or.cond57.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %or.cond57.not.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = add i64 %i.q, %i.k
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sink83.i.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.f ], [ %.sroa.5, %bb.e ], [ %.sroa.5, %bb.d ]
  %.sink.i.i.i = phi i64 [ %i.z, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  store i64 %.sink.i.i.i, ptr %.sink83.i.i.i.sroa.phi, align 8, !alias.scope !16179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aa = call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @486) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !16180)
  %i.ad = icmp eq i64 %i.r, 0
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit
  store i64 0, ptr %i.h, align 8, !alias.scope !16180
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !16180
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !16180
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @194, i64 32, i1 false)
  br label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16180
  call fastcc void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.e, i64 noundef range(i64 1, 0) %i.r, i1 noundef zeroext true)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !noalias !16181 ; 2 uses
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i, align 8, !noalias !16181 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16181
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 1, 0) %i.r, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.j unwind label %bb.i, !noalias !16181

common.resume:                                    ; preds = %bb.v, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.ci, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic(ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i) #50, !noalias !16181
  br label %common.resume

bb.j:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.d, align 8, !range !26, !noalias !16181, !noundef !23
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !27, !noalias !16181, !noundef !23 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.k, label %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE13with_capacityCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !22

bb.k:                                             ; preds = %bb.j
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !16181
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #49
          to label %bb.l unwind label %bb.i, !noalias !16181

bb.l:                                             ; preds = %bb.k
  unreachable

_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE13with_capacityCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.am = load ptr, ptr %i.aj, align 8, !noalias !16181, !nonnull !23, !noundef !23
  %i.an = icmp ule i64 %i.r, %i.ai
  call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16181
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16180
  store i64 %i.ai, ptr %i.h, align 8, !alias.scope !16180
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !16180
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !16180
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx7.i, align 8, !alias.scope !16180
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !16180
  br label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.g, %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE13with_capacityCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %i.ab, ptr %i.ao, align 8, !alias.scope !16180
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %i.ac, ptr %i.ap, align 8, !alias.scope !16180
  call void @llvm.experimental.noalias.scope.decl(metadata !16182)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !16184)
  call void @llvm.experimental.noalias.scope.decl(metadata !16185)
  call void @llvm.experimental.noalias.scope.decl(metadata !16186)
  call void @llvm.experimental.noalias.scope.decl(metadata !16187)
  call void @llvm.experimental.noalias.scope.decl(metadata !16188)
  call void @llvm.experimental.noalias.scope.decl(metadata !16189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16190
  %i.aq = load i64, ptr %i.c, align 8, !range !53, !alias.scope !16191, !noalias !16183, !noundef !23
  %.not.i.i.i.i = icmp eq i64 %i.aq, 2
  br i1 %.not.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEENtNtNtB8_6traits8iterator8Iterator9size_hintB2K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) dereferenceable_or_null(72) %i.c)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.m
  %.pre.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !16190
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre74.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !26, !noalias !16190
  %.phi.trans.insert75.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre76.i.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i.i, align 8, !noalias !16190
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i.i: ; preds = %.noexc, %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ar = phi i64 [ %.pre76.i.i.i.i, %.noexc ], [ 0, %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit ]
  %i.as = phi i64 [ %.pre74.i.i.i.i, %.noexc ], [ 1, %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 2 uses
  %i.at = phi i64 [ %.pre.i.i.i.i, %.noexc ], [ 0, %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16190
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !53, !alias.scope !16191, !noalias !16183, !noundef !23
  %.not55.i.i.i.i = icmp eq i64 %i.av, 2
  br i1 %.not55.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit64.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i.i
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEENtNtNtB8_6traits8iterator8Iterator9size_hintB2K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.au)
          to label %.noexc4 unwind label %bb.v

.noexc4:                                          ; preds = %bb.n
  %.pre77.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !16190
  %.phi.trans.insert78.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre79.i.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i.i, align 8, !range !26, !noalias !16190
  %.phi.trans.insert80.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre81.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i, align 8, !noalias !16190
  %i.aw = call i64 @llvm.uadd.sat.i64(i64 %i.at, i64 %.pre77.i.i.i.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit64.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit64.i.i.i.i: ; preds = %.noexc4, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i.i
  %i.ax = phi i64 [ %.pre81.i.i.i.i, %.noexc4 ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i.i ]
  %.fr18 = phi i64 [ %.pre79.i.i.i.i, %.noexc4 ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i.i ] ; 2 uses
  %i.ay = phi i64 [ %i.aw, %.noexc4 ], [ %i.at, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16190
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !16191, !noalias !16183, !noundef !23 ; 2 uses
  %.not56.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not56.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit64.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %.val63.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !16191, !noalias !16183, !nonnull !23, !noundef !23
  %i.bc = icmp eq ptr %.val63.i.i.i.i, %i.ba
  %i.bd = trunc nuw i64 %i.as to i1
  %i.be = trunc nuw i64 %.fr18 to i1
  %op.rdx = select i1 %i.bc, i1 %i.bd, i1 false
  %op.rdx14 = select i1 %op.rdx, i1 %i.be, i1 false
  br i1 %op.rdx14, label %bb.q, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit.i

bb.p:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB36_.exit64.i.i.i.i
  %i.bf = and i64 %.fr18, %i.as
  %or.cond57.not.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %or.cond57.not.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bg = add i64 %i.ax, %i.ar
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %.sink83.i.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.q ], [ %.sroa.5.i, %bb.p ], [ %.sroa.5.i, %bb.o ]
  %.sink.i.i.i.i = phi i64 [ %i.bg, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  store i64 %.sink.i.i.i.i, ptr %.sink83.i.i.i.sroa.phi.i, align 8, !alias.scope !16192, !noalias !16183
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !16182, !noundef !23
  %i.bj = icmp eq i64 %i.bi, 0
  %i.bk = lshr i64 %i.ay, 1
  %i.bl = and i64 %i.ay, 1
  %spec.select.i = add nuw i64 %i.bk, %i.bl
  %.sroa.0.0.i = select i1 %i.bj, i64 %i.ay, i64 %spec.select.i ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !16193, !noundef !23
  %i.bp = icmp ugt i64 %.sroa.0.0.i, %i.bo
  %.pre10 = load i64, ptr %i.bm, align 8, !alias.scope !16194 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs5e9M2GLoJMY_8indexmap5inner8get_hashNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, !prof !22

bb.r:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !16194, !nonnull !23, !noundef !23
  %i.bt = invoke { i64, i64 } @_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCs5e9M2GLoJMY_8indexmap5inner8get_hashNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE0ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bq, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bs, i64 noundef %.pre10, i1 noundef zeroext true)
          to label %.noexc5 unwind label %bb.v    ; 0 uses

.noexc5:                                          ; preds = %bb.r
  %.pre = load i64, ptr %i.bm, align 8, !alias.scope !16194
  br label %_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs5e9M2GLoJMY_8indexmap5inner8get_hashNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs5e9M2GLoJMY_8indexmap5inner8get_hashNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %.noexc5, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit.i
  %i.bu = phi i64 [ %.pre, %.noexc5 ], [ %.pre10, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB7_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1M_20UnpackedTypedDictKeyEENCNvB1M_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6x_8IndexSetB4f_EINtNtNtB9_6traits7collect12FromIteratorB4f_E9from_iterBW_E0ENtNtB7q_8iterator8Iterator9size_hintB1Q_.exit.i ] ; 5 uses
  %i.bv = load i64, ptr %i.h, align 8, !range !24, !alias.scope !16194, !noundef !23
  %i.bw = icmp ult i64 %i.bu, 384307168202282326
  call void @llvm.assume(i1 %i.bw)
  %i.bx = sub nsw i64 %i.bv, %i.bu
  %i.by = icmp ugt i64 %.sroa.0.0.i, %i.bx
  br i1 %i.by, label %bb.s, label %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.s:                                             ; preds = %_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs5e9M2GLoJMY_8indexmap5inner8get_hashNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.bz = load i64, ptr %i.bh, align 8, !alias.scope !16195, !noundef !23
  %i.ca = load i64, ptr %i.bn, align 8, !alias.scope !16195, !noundef !23
  %i.cb = add i64 %i.ca, %i.bz
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 384307168202282325)
  %i.cc = sub nsw i64 %.sroa.0.0.i.i.i.i, %i.bu   ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, %.sroa.0.0.i
  br i1 %i.cd, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i.i, %bb.s
  %i.ce = phi i64 [ %.pre.i.i.i3, %._crit_edge.i.i.i ], [ %i.bu, %bb.s ]
  invoke void @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h, i64 noundef %i.ce, i64 noundef %.sroa.0.0.i, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cf = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h, i64 noundef %i.bu, i64 noundef %i.cc, i64 noundef 8, i64 noundef 24)
          to label %.noexc7 unwind label %bb.v

.noexc7:                                          ; preds = %bb.u
  %i.cg = extractvalue { i64, i64 } %i.cf, 0
  %i.ch = icmp eq i64 %i.cg, -1
  br i1 %i.ch, label %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc7
  %.pre.i.i.i3 = load i64, ptr %i.bm, align 8, !alias.scope !16195
  br label %bb.t

_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.t, %.noexc7, %_RINvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs5e9M2GLoJMY_8indexmap5inner8get_hashNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE0ECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict17UnpackedTypedDictEINtNtB8_6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1N_20UnpackedTypedDictKeyEENCNvB1N_43extract_unpacked_typed_dict_from_value_types3_0ENCINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6y_8IndexSetB4g_EINtNtNtBa_6traits7collect12FromIteratorB4g_E9from_iterBX_E0ENtNtB7r_8iterator8Iterator4folduNCINvNvB8k_8for_each4callTB4g_uENCINvXsb_NtB6A_3mapINtB9v_8IndexMapB4g_uEINtB7p_6ExtendB9f_E6extendBN_E0E0EB1R_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.u, %bb.t, %bb.r, %bb.n, %bb.m
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(72) %i.h) #50
          to label %common.resume unwind label %bb.x

bb.w:                                             ; preds = %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.x:                                             ; preds = %bb.v
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTBO_uEE9from_iterINtNtNtB1G_8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoKeysBO_INtNtB1I_6option6OptionNtNtBS_9generated10AnyNodeRefEENCINvXs6_NtB8_3setINtB5k_8IndexSetBO_EIB1A_BO_E9from_iterB3i_E0EECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 28 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !16214
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.val = load i64, ptr %i.g, align 8, !noundef !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = invoke { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @486)
          to label %_RNvXs3_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_11RandomStateNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNvXs3_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_11RandomStateNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit: ; preds = %bb.a
  %i.j = extractvalue { i64, i64 } %i.h, 0        ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16215)
  %i.l = icmp eq i64 %.val, 0
  br i1 %i.l, label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %bb.c

_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit.thread: ; preds = %_RNvXs3_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_11RandomStateNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit
  store i64 0, ptr %i.e, align 8, !alias.scope !16215
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !16215
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !16215
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @194, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.j, ptr %i.m, align 8, !alias.scope !16215
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %i.k, ptr %i.n, align 8, !alias.scope !16215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.val.i15 = load i64, ptr %i.o, align 8, !noalias !16216, !noundef !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  br label %bb.h

bb.c:                                             ; preds = %_RNvXs3_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_11RandomStateNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16215
  invoke fastcc void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.c, i64 noundef range(i64 1, 0) %.val, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !noalias !16217 ; 2 uses
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i, align 8, !noalias !16217 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16217
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %.val, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.e unwind label %bb.d, !noalias !16217

bb.d:                                             ; preds = %bb.f, %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic(ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i) #50, !noalias !16217
  br label %.thread

bb.e:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.b, align 8, !range !26, !noalias !16217, !noundef !23
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !27, !noalias !16217, !noundef !23 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.s, label %bb.f, label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.v, align 8, !noalias !16217
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #49
          to label %bb.g unwind label %bb.d, !noalias !16217

bb.g:                                             ; preds = %bb.f
  unreachable

_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE24with_capacity_and_hasherCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load ptr, ptr %i.v, align 8, !noalias !16217, !nonnull !23, !noundef !23 ; 2 uses
  %i.z = icmp ule i64 %.val, %i.u
  tail call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16217
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16215
  store i64 %i.u, ptr %i.e, align 8, !alias.scope !16215
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !16215
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtNtNtB2a_4iter6traits7collect12IntoIterator9into_iterB10_:bb.a
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx4, align 8, !alias.scope !27461 ; 2 uses
  %i.a = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.a, label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12into_entriesBT_.exit, label %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  %i.b = shl i64 %.sroa.5.0.copyload.i, 3         ; 2 uses
  %i.c = add i64 %i.b, 8
  %i.d = add i64 %i.b, 23                         ; 2 uses
  %i.e = icmp uge i64 %i.d, %i.c
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 3 uses
  %i.g = add i64 %.sroa.5.0.copyload.i, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12into_entriesBT_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.l = sub nsw i64 0, %i.f
  %i.m = getelementptr inbounds i8, ptr %.sroa.4.0.copyload.i, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !27462
  br label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12into_entriesBT_.exit

_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12into_entriesBT_.exit: ; preds = %bb.a, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.n = icmp ult i64 %.sroa.5.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload
  store ptr %.sroa.4.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapxbINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtNtNtB11_4iter6traits7collect12IntoIterator9into_iterCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27469)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !27469 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !27469 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !alias.scope !27470
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx3, align 8, !alias.scope !27470 ; 4 uses
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx4, align 8, !alias.scope !27470 ; 2 uses
  %i.a = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.a, label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapxbINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12into_entriesCsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  %i.b = shl i64 %.sroa.5.0.copyload.i, 3         ; 2 uses
  %i.c = add i64 %i.b, 8
  %i.d = add i64 %i.b, 23                         ; 2 uses
  %i.e = icmp uge i64 %i.d, %i.c
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 3 uses
  %i.g = add i64 %.sroa.5.0.copyload.i, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapxbINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12into_entriesCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.l = sub nsw i64 0, %i.f
  %i.m = getelementptr inbounds i8, ptr %.sroa.4.0.copyload.i, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !27471
  br label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapxbINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12into_entriesCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapxbINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12into_entriesCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.n = icmp ult i64 %.sroa.5.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload
  store ptr %.sroa.4.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 4) i8 @_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtB7_8variance17VarianceInferable11variance_of(ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr nofree noundef nonnull readnone align 4 captures(none) %3, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(28) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27480
  store ptr %1, ptr %i.a, align 8, !noalias !27480
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !noalias !27480
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8, !noalias !27480
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !27480
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !27480
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %4, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !27480
  %i.d = call noundef range(i8 0, 4) i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8variance15TypeVarVarianceDNtNtB1Z_2db2DbEL_NCNvNvMsu_NtB1X_10type_aliasNtB3u_13TypeAliasType17variance_of_owner18variance_of_owner_0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @299, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27480
  ret i8 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_7flatten7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB22_7typevar20BoundTypeVarIdentityNtB4f_20BoundTypeVarInstanceEENCINvNtNtB22_5class11named_tuple34synthesize_namedtuple_class_memberIBN_INtB3w_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB5q_5FieldENCNvMsp_NtB5q_14static_literalNtB7J_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB9_7sources4once4OnceB4P_EENCINvMs_B20_B1Y_33from_typevar_instances_in_programBW_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca i64, align 8                ; 6 uses
  %.sroa.8.i = alloca i64, align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27507)
  %i.e = load i64, ptr %1, align 8, !range !26, !alias.scope !27507, !noundef !23
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load i32, ptr %i.g, align 8, !range !25, !alias.scope !27507, !noundef !23
  %i.i = trunc nuw i32 %i.h to i1                 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.i, label %bb.f, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.val9.i = load i32, ptr %i.k, align 4, !alias.scope !27507, !noundef !23
  %i.l = icmp ne i32 %.val9.i, 0
  %i.m = zext i1 %i.l to i64                      ; 2 uses
  store i64 %i.m, ptr %0, align 8, !alias.scope !27508
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.n, align 8, !alias.scope !27508
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_3map3MapINtB3f_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB59_5FieldENCNvMsp_NtB59_14static_literalNtB7E_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !27506
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.o, align 8, !alias.scope !27506
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_3map3MapINtB3f_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB59_5FieldENCNvMsp_NtB59_14static_literalNtB7E_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27513
  %i.q = load ptr, ptr %i.j, align 8, !alias.scope !27514, !noundef !23
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(16) %i.j), !noalias !27515
  %.pre.i.i.i = load i64, ptr %i.d, align 8, !noalias !27513
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre74.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !26, !noalias !27513
  %.phi.trans.insert75.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre76.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i, align 8, !noalias !27513
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.r = phi i64 [ %.pre76.i.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.s = phi i64 [ %.pre74.i.i.i, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %i.t = phi i64 [ %.pre.i.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27513
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !27514, !noundef !23
  %.not55.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not55.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.u), !noalias !27516
  %.pre77.i.i.i = load i64, ptr %i.c, align 8, !noalias !27513
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre79.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i, align 8, !range !26, !noalias !27513
  %.phi.trans.insert80.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre81.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i, align 8, !noalias !27513
  %i.w = call i64 @llvm.uadd.sat.i64(i64 %i.t, i64 %.pre77.i.i.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i.i: ; preds = %bb.h, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i
  %i.x = phi i64 [ %.pre81.i.i.i, %bb.h ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i ]
  %.fr5 = phi i64 [ %.pre79.i.i.i, %bb.h ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i ] ; 2 uses
  %i.y = phi i64 [ %i.w, %bb.h ], [ %i.t, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27513
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !27514, !noundef !23
  %.not56.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not56.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !27514, !align !41, !noundef !23
  %.not73.i.i.i = icmp eq ptr %.val.i.i.i, null
  %i.ac = trunc nuw i64 %i.s to i1
  %i.ad = trunc nuw i64 %.fr5 to i1
  %op.rdx = select i1 %.not73.i.i.i, i1 %i.ac, i1 false
  %op.rdx1 = select i1 %op.rdx, i1 %i.ad, i1 false
  br i1 %op.rdx1, label %bb.k, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_3map3MapINtB2W_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB4Q_5FieldENCNvMsp_NtB4Q_14static_literalNtB7l_18StaticClassLiteral22own_synthesized_members4_0EE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i

bb.j:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i.i
  %i.ae = and i64 %.fr5, %i.s
  %or.cond57.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %or.cond57.not.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_3map3MapINtB2W_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB4Q_5FieldENCNvMsp_NtB4Q_14static_literalNtB7l_18StaticClassLiteral22own_synthesized_members4_0EE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = add i64 %i.x, %i.r                      ; 2 uses
  %i.ag = icmp uge i64 %i.af, %i.r
  %.58.i.i.i = zext i1 %i.ag to i64
  store i64 %.58.i.i.i, ptr %.sroa.5.i, align 8, !alias.scope !27517, !noalias !27518
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_3map3MapINtB2W_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB4Q_5FieldENCNvMsp_NtB4Q_14static_literalNtB7l_18StaticClassLiteral22own_synthesized_members4_0EE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_3map3MapINtB2W_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB4Q_5FieldENCNvMsp_NtB4Q_14static_literalNtB7l_18StaticClassLiteral22own_synthesized_members4_0EE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sink83.i.i.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.k ], [ %.sroa.5.i, %bb.j ], [ %.sroa.5.i, %bb.i ]
  %.sink.i.i.i = phi i64 [ %i.af, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  store i64 %.sink.i.i.i, ptr %.sink83.i.i.sroa.phi.i, align 8, !alias.scope !27517, !noalias !27518
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i = load i64, ptr %.sroa.5.i, align 8, !range !26, !noalias !27518, !noundef !23
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i = load i64, ptr %.sroa.8.i, align 8, !noalias !27518 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.val.i = load i32, ptr %i.p, align 4, !alias.scope !27507, !noundef !23
  %i.ah = icmp ne i32 %.val.i, 0
  %i.ai = zext i1 %i.ah to i64                    ; 2 uses
  %i.aj = call i64 @llvm.uadd.sat.i64(i64 %i.y, i64 %i.ai)
  %i.ak = trunc nuw i64 %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i to i1 ; 2 uses
  %i.al = add i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i, %i.ai ; 2 uses
  %i.am = icmp uge i64 %i.al, %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i
  %.sroa.46.0.i = select i1 %i.ak, i64 %i.al, i64 undef
  %narrow.i = select i1 %i.ak, i1 %i.am, i1 false
  %.sroa.05.0.i = zext i1 %narrow.i to i64
  store i64 %i.aj, ptr %0, align 8, !alias.scope !27506
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i, ptr %i.an, align 8, !alias.scope !27506
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_3map3MapINtB3f_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB59_5FieldENCNvMsp_NtB59_14static_literalNtB7E_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27523
  %i.ao = load ptr, ptr %i.j, align 8, !alias.scope !27524, !noundef !23
  %.not.i.i10.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i10.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(16) %i.j), !noalias !27525
  %.pre.i.i11.i = load i64, ptr %i.b, align 8, !noalias !27523
  %.phi.trans.insert.i.i12.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre74.i.i13.i = load i64, ptr %.phi.trans.insert.i.i12.i, align 8, !range !26, !noalias !27523
  %.phi.trans.insert75.i.i14.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre76.i.i15.i = load i64, ptr %.phi.trans.insert75.i.i14.i, align 8, !noalias !27523
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i: ; preds = %bb.m, %bb.l
  %i.ap = phi i64 [ %.pre76.i.i15.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.aq = phi i64 [ %.pre74.i.i13.i, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %i.ar = phi i64 [ %.pre.i.i11.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27523
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !27524, !noundef !23
  %.not55.i.i17.i = icmp eq ptr %i.at, null
  br i1 %.not55.i.i17.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i23.i, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.as), !noalias !27526
  %.pre77.i.i18.i = load i64, ptr %i.a, align 8, !noalias !27523
  %.phi.trans.insert78.i.i19.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre79.i.i20.i = load i64, ptr %.phi.trans.insert78.i.i19.i, align 8, !range !26, !noalias !27523
  %.phi.trans.insert80.i.i21.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre81.i.i22.i = load i64, ptr %.phi.trans.insert80.i.i21.i, align 8, !noalias !27523
  %i.au = call i64 @llvm.uadd.sat.i64(i64 %i.ar, i64 %.pre77.i.i18.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i23.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i23.i: ; preds = %bb.n, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i
  %i.av = phi i64 [ %.pre81.i.i22.i, %bb.n ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i ]
  %.fr4 = phi i64 [ %.pre79.i.i20.i, %bb.n ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i ] ; 2 uses
  %i.aw = phi i64 [ %i.au, %bb.n ], [ %i.ar, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27523
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !27524, !noundef !23
  %.not56.i.i24.i = icmp eq ptr %i.ay, null
  br i1 %.not56.i.i24.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i23.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i25.i = load ptr, ptr %i.az, align 8, !alias.scope !27524, !align !41, !noundef !23
  %.not73.i.i26.i = icmp eq ptr %.val.i.i25.i, null
  %i.ba = trunc nuw i64 %i.aq to i1
  %i.bb = trunc nuw i64 %.fr4 to i1
  %op.rdx2 = select i1 %.not73.i.i26.i, i1 %i.ba, i1 false
  %op.rdx3 = select i1 %op.rdx2, i1 %i.bb, i1 false
  br i1 %op.rdx3, label %bb.r, label %bb.q

bb.p:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i23.i
  %i.bc = and i64 %.fr4, %i.aq
  %or.cond57.not.i.i33.i = icmp eq i64 %i.bc, 0
  br i1 %or.cond57.not.i.i33.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.aw, ptr %0, align 8, !alias.scope !27527
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_3map3MapINtB3f_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB59_5FieldENCNvMsp_NtB59_14static_literalNtB7E_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bd = add i64 %i.av, %i.ap                    ; 2 uses
  %i.be = icmp uge i64 %i.bd, %i.ap
  %.58.i.i32.i = zext i1 %i.be to i64
  store i64 %i.aw, ptr %0, align 8, !alias.scope !27527
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.58.i.i32.i, ptr %i.bf, align 8, !alias.scope !27527
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_3map3MapINtB3f_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB59_5FieldENCNvMsp_NtB59_14static_literalNtB7E_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_3map3MapINtB3f_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB59_5FieldENCNvMsp_NtB59_14static_literalNtB7E_18StaticClassLiteral22own_synthesized_members4_0EE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit: ; preds = %bb.d, %bb.e, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_3map3MapINtB2W_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB4Q_5FieldENCNvMsp_NtB4Q_14static_literalNtB7l_18StaticClassLiteral22own_synthesized_members4_0EE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i, %bb.q, %bb.r
  %.sink37.i = phi i64 [ 16, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_3map3MapINtB2W_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB4Q_5FieldENCNvMsp_NtB4Q_14static_literalNtB7l_18StaticClassLiteral22own_synthesized_members4_0EE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i ], [ 16, %bb.d ], [ 16, %bb.e ], [ 16, %bb.r ], [ 8, %bb.q ]
  %.sroa.46.0.sink.i = phi i64 [ %.sroa.46.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_3map3MapINtB2W_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB4Q_5FieldENCNvMsp_NtB4Q_14static_literalNtB7l_18StaticClassLiteral22own_synthesized_members4_0EE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i ], [ %i.m, %bb.d ], [ 0, %bb.e ], [ %i.bd, %bb.r ], [ 0, %bb.q ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink37.i
  store i64 %.sroa.46.0.sink.i, ptr %i.bg, align 8, !alias.scope !27506
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_7flatten7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB22_7typevar20BoundTypeVarIdentityNtB4f_20BoundTypeVarInstanceEENCINvNtNtB22_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB5o_15NamedTupleFieldEEE0EINtNtNtB9_7sources4once4OnceB4P_EENCINvMs_B20_B1Y_33from_typevar_instances_in_programBW_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca i64, align 8                ; 6 uses
  %.sroa.8.i = alloca i64, align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27554)
  %i.e = load i64, ptr %1, align 8, !range !26, !alias.scope !27554, !noundef !23
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load i32, ptr %i.g, align 8, !range !25, !alias.scope !27554, !noundef !23
  %i.i = trunc nuw i32 %i.h to i1                 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.i, label %bb.f, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.val9.i = load i32, ptr %i.k, align 4, !alias.scope !27554, !noundef !23
  %i.l = icmp ne i32 %.val9.i, 0
  %i.m = zext i1 %i.l to i64                      ; 2 uses
  store i64 %i.m, ptr %0, align 8, !alias.scope !27555
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.n, align 8, !alias.scope !27555
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtB57_15NamedTupleFieldEEE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !27553
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.o, align 8, !alias.scope !27553
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtB57_15NamedTupleFieldEEE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27560
  %i.q = load ptr, ptr %i.j, align 8, !alias.scope !27561, !noundef !23
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(16) %i.j), !noalias !27562
  %.pre.i.i.i = load i64, ptr %i.d, align 8, !noalias !27560
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre74.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !26, !noalias !27560
  %.phi.trans.insert75.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre76.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i, align 8, !noalias !27560
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.r = phi i64 [ %.pre76.i.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.s = phi i64 [ %.pre74.i.i.i, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %i.t = phi i64 [ %.pre.i.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27560
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !27561, !noundef !23
  %.not55.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not55.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.u), !noalias !27563
  %.pre77.i.i.i = load i64, ptr %i.c, align 8, !noalias !27560
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre79.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i, align 8, !range !26, !noalias !27560
  %.phi.trans.insert80.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre81.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i, align 8, !noalias !27560
  %i.w = call i64 @llvm.uadd.sat.i64(i64 %i.t, i64 %.pre77.i.i.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i.i: ; preds = %bb.h, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i
  %i.x = phi i64 [ %.pre81.i.i.i, %bb.h ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i ]
  %.fr5 = phi i64 [ %.pre79.i.i.i, %bb.h ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i ] ; 2 uses
  %i.y = phi i64 [ %i.w, %bb.h ], [ %i.t, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27560
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !27561, !noundef !23
  %.not56.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not56.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !27561, !align !41, !noundef !23
  %.not73.i.i.i = icmp eq ptr %.val.i.i.i, null
  %i.ac = trunc nuw i64 %i.s to i1
  %i.ad = trunc nuw i64 %.fr5 to i1
  %op.rdx = select i1 %.not73.i.i.i, i1 %i.ac, i1 false
  %op.rdx1 = select i1 %op.rdx, i1 %i.ad, i1 false
  br i1 %op.rdx1, label %bb.k, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB4O_15NamedTupleFieldEEE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i

bb.j:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i.i
  %i.ae = and i64 %.fr5, %i.s
  %or.cond57.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %or.cond57.not.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB4O_15NamedTupleFieldEEE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = add i64 %i.x, %i.r                      ; 2 uses
  %i.ag = icmp uge i64 %i.af, %i.r
  %.58.i.i.i = zext i1 %i.ag to i64
  store i64 %.58.i.i.i, ptr %.sroa.5.i, align 8, !alias.scope !27564, !noalias !27565
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB4O_15NamedTupleFieldEEE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB4O_15NamedTupleFieldEEE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sink83.i.i.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.k ], [ %.sroa.5.i, %bb.j ], [ %.sroa.5.i, %bb.i ]
  %.sink.i.i.i = phi i64 [ %i.af, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  store i64 %.sink.i.i.i, ptr %.sink83.i.i.sroa.phi.i, align 8, !alias.scope !27564, !noalias !27565
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i = load i64, ptr %.sroa.5.i, align 8, !range !26, !noalias !27565, !noundef !23
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i = load i64, ptr %.sroa.8.i, align 8, !noalias !27565 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.val.i = load i32, ptr %i.p, align 4, !alias.scope !27554, !noundef !23
  %i.ah = icmp ne i32 %.val.i, 0
  %i.ai = zext i1 %i.ah to i64                    ; 2 uses
  %i.aj = call i64 @llvm.uadd.sat.i64(i64 %i.y, i64 %i.ai)
  %i.ak = trunc nuw i64 %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i to i1 ; 2 uses
  %i.al = add i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i, %i.ai ; 2 uses
  %i.am = icmp uge i64 %i.al, %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i
  %.sroa.46.0.i = select i1 %i.ak, i64 %i.al, i64 undef
  %narrow.i = select i1 %i.ak, i1 %i.am, i1 false
  %.sroa.05.0.i = zext i1 %narrow.i to i64
  store i64 %i.aj, ptr %0, align 8, !alias.scope !27553
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i, ptr %i.an, align 8, !alias.scope !27553
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtB57_15NamedTupleFieldEEE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27570
  %i.ao = load ptr, ptr %i.j, align 8, !alias.scope !27571, !noundef !23
  %.not.i.i10.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i10.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(16) %i.j), !noalias !27572
  %.pre.i.i11.i = load i64, ptr %i.b, align 8, !noalias !27570
  %.phi.trans.insert.i.i12.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre74.i.i13.i = load i64, ptr %.phi.trans.insert.i.i12.i, align 8, !range !26, !noalias !27570
  %.phi.trans.insert75.i.i14.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre76.i.i15.i = load i64, ptr %.phi.trans.insert75.i.i14.i, align 8, !noalias !27570
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i: ; preds = %bb.m, %bb.l
  %i.ap = phi i64 [ %.pre76.i.i15.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.aq = phi i64 [ %.pre74.i.i13.i, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %i.ar = phi i64 [ %.pre.i.i11.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27570
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !27571, !noundef !23
  %.not55.i.i17.i = icmp eq ptr %i.at, null
  br i1 %.not55.i.i17.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i23.i, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.as), !noalias !27573
  %.pre77.i.i18.i = load i64, ptr %i.a, align 8, !noalias !27570
  %.phi.trans.insert78.i.i19.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre79.i.i20.i = load i64, ptr %.phi.trans.insert78.i.i19.i, align 8, !range !26, !noalias !27570
  %.phi.trans.insert80.i.i21.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre81.i.i22.i = load i64, ptr %.phi.trans.insert80.i.i21.i, align 8, !noalias !27570
  %i.au = call i64 @llvm.uadd.sat.i64(i64 %i.ar, i64 %.pre77.i.i18.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i23.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i23.i: ; preds = %bb.n, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i
  %i.av = phi i64 [ %.pre81.i.i22.i, %bb.n ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i ]
  %.fr4 = phi i64 [ %.pre79.i.i20.i, %bb.n ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i ] ; 2 uses
  %i.aw = phi i64 [ %i.au, %bb.n ], [ %i.ar, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit.i.i16.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27570
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !27571, !noundef !23
  %.not56.i.i24.i = icmp eq ptr %i.ay, null
  br i1 %.not56.i.i24.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i23.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i25.i = load ptr, ptr %i.az, align 8, !alias.scope !27571, !align !41, !noundef !23
  %.not73.i.i26.i = icmp eq ptr %.val.i.i25.i, null
  %i.ba = trunc nuw i64 %i.aq to i1
  %i.bb = trunc nuw i64 %.fr4 to i1
  %op.rdx2 = select i1 %.not73.i.i26.i, i1 %i.ba, i1 false
  %op.rdx3 = select i1 %op.rdx2, i1 %i.bb, i1 false
  br i1 %op.rdx3, label %bb.r, label %bb.q

bb.p:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB29_20BoundTypeVarInstanceEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2d_.exit63.i.i23.i
  %i.bc = and i64 %.fr4, %i.aq
  %or.cond57.not.i.i33.i = icmp eq i64 %i.bc, 0
  br i1 %or.cond57.not.i.i33.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.aw, ptr %0, align 8, !alias.scope !27574
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtB57_15NamedTupleFieldEEE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bd = add i64 %i.av, %i.ap                    ; 2 uses
  %i.be = icmp uge i64 %i.bd, %i.ap
  %.58.i.i32.i = zext i1 %i.be to i64
  store i64 %i.aw, ptr %0, align 8, !alias.scope !27574
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.58.i.i32.i, ptr %i.bf, align 8, !alias.scope !27574
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtB57_15NamedTupleFieldEEE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1L_7typevar20BoundTypeVarIdentityNtB3Y_20BoundTypeVarInstanceEENCINvNtNtB1L_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtB57_15NamedTupleFieldEEE0EINtNtNtB8_7sources4once4OnceB4y_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit: ; preds = %bb.d, %bb.e, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB4O_15NamedTupleFieldEEE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i, %bb.q, %bb.r
  %.sink37.i = phi i64 [ 16, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB4O_15NamedTupleFieldEEE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i ], [ 16, %bb.d ], [ 16, %bb.e ], [ 16, %bb.r ], [ 8, %bb.q ]
  %.sroa.46.0.sink.i = phi i64 [ %.sroa.46.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtB1s_7typevar20BoundTypeVarIdentityNtB3F_20BoundTypeVarInstanceEENCINvNtNtB1s_5class11named_tuple34synthesize_namedtuple_class_memberINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB4O_15NamedTupleFieldEEE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1u_.exit.i ], [ %i.m, %bb.d ], [ 0, %bb.e ], [ %i.bd, %bb.r ], [ 0, %bb.q ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink37.i
  store i64 %.sroa.46.0.sink.i, ptr %i.bg, align 8, !alias.scope !27553
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_alias1__INtB5_9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB9_8generics14SpecializationEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1k_B23_B2P_EE10into_ownedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !23, !align !29, !noundef !23
  tail call void @_RNvXsj_NtCs45bxiIjzMqg_5salsa8internedRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB5_6LookupBB_E10into_ownedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <4 x i32>, ptr %i.b, align 8
  store <4 x i32> %i.d, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliass_1__INtB5_9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB9_8generics14SpecializationEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1m_B25_B31_EE10into_ownedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !23, !align !29, !noundef !23
  tail call void @_RNvXsj_NtCs45bxiIjzMqg_5salsa8internedRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtB5_6LookupBB_E10into_ownedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <4 x i32>, ptr %i.b, align 8
  store <4 x i32> %i.d, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliass_1__INtB5_9StructKeyReNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB9_8generics14SpecializationEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1n_B2j_EE10into_ownedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer9new_exact(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d), !noalias !27584 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i, label %bb.d

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !27585
  %i.i = trunc nuw nsw i64 %i.d to i8
  %i.j = or disjoint i8 %i.i, -64
  %.15..15..15..15..15..15..15..15..15..15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.j, ptr %.15..15..15..15..15..15..15..15..15..15..sroa_idx, align 1, !noalias !27585
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.b, i64 %i.d, i1 false), !noalias !27584
  %.0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i = load ptr, ptr %i.a, align 8, !noalias !27586
  %.8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..8..8..8..8..8..8..sroa.6.0.copyload5.i.i = load i64, ptr %.8..8..8..8..8..8..8..sroa_idx, align 8, !noalias !27586
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, i64 } %i.f, 1
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.02.0.i.i = phi ptr [ %.0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i, %bb.c ], [ %i.g, %bb.d ]
  %.sroa.6.0.i.i = phi i64 [ %.8..8..8..8..8..8..8..sroa.6.0.copyload5.i.i, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = icmp ugt i64 %.sroa.6.0.i.i, -72057594037927937
  br i1 %i.l, label %bb.e, label %bb.f, !prof !40

bb.e:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i
  tail call void @_RINvNvXsQ_Csj8vhLppEnlJ_8char_strINtNtCs4NRVxsYgnAr_4core6result6ResultppENtB8_13UnwrapWithMsg15unwrap_with_msg17do_panic_with_msgNtNtNtB8_6errors13reserve_error12ReserveErrorEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #49, !noalias !27587
  unreachable

bb.f:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.02.0.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load <4 x i32>, ptr %i.m, align 8
  store <4 x i32> %i.o, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__INtB5_9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramINtB7_5TupleNtB9_4TypeNtB7_15VariableSegmentEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1d_B21_EE10into_ownedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = load <2 x i32>, ptr %i.a, align 8
  store <2 x i32> %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__INtB5_9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB7_5TupleNtB9_4TypeNtB7_15VariableSegmentEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1d_B22_EE10into_ownedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = load <2 x i32>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !23, !align !29, !noundef !23 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27607)
  %i.e = load i32, ptr %i.d, align 8, !range !43, !alias.scope !27608, !noundef !23
  %.not.i.i = icmp eq i32 %i.e, -2
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27610)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27611)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !27612, !noundef !23
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0           ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !27612, !nonnull !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !27612
  %.sink10.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink9.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.k
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i.i.i.i, i64 %.sink9.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27613
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.m, align 8, !alias.scope !27614, !noalias !27613
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters6cloned6ClonedINtNtNtB1I_5slice4iter4IterBJ_EEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %.sink10.i.i.i.i.i, ptr noundef nonnull %i.l)
          to label %_RNvXsX_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit.i.i unwind label %bb.c, !noalias !27615

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EEB1f_.exit.i.i.i.i.i unwind label %bb.d, !noalias !27615

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !27615
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EEB1f_.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.n

_RNvXsX_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit.i.i: ; preds = %bb.b
  %.sroa.0.i.i.sroa.6.16.copyload = load i64, ptr %i.a, align 8, !noalias !27616
  %.sroa.0.i.i.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.8.16..sroa_idx, i64 16, i1 false), !noalias !27608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27613
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !27617, !noundef !23
  %i.r = load <2 x i32>, ptr %i.d, align 8, !alias.scope !27618, !noalias !27619
  %.sroa.0.i.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.i.i.sroa.5.0.copyload = load ptr, ptr %.sroa.0.i.i.sroa.5.0..sroa_idx, align 8, !alias.scope !27618, !noalias !27619
  br label %_RNvXsj_NtCs45bxiIjzMqg_5salsa8internedRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEINtB5_6LookupBB_E10into_ownedBI_.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = tail call { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBL_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s), !noalias !27619 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  br label %_RNvXsj_NtCs45bxiIjzMqg_5salsa8internedRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEINtB5_6LookupBB_E10into_ownedBI_.exit

_RNvXsj_NtCs45bxiIjzMqg_5salsa8internedRINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEINtB5_6LookupBB_E10into_ownedBI_.exit: ; preds = %_RNvXsX_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit.i.i, %bb.e
  %.sroa.77.0 = phi i64 [ undef, %bb.e ], [ %i.q, %_RNvXsX_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit.i.i ]
  %.sroa.6.0 = phi i64 [ %i.v, %bb.e ], [ %.sroa.0.i.i.sroa.6.16.copyload, %_RNvXsX_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit.i.i ]
  %.sroa.54.0 = phi ptr [ %i.u, %bb.e ], [ %.sroa.0.i.i.sroa.5.0.copyload, %_RNvXsX_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit.i.i ]
  %i.w = phi <2 x i32> [ <i32 -2, i32 undef>, %bb.e ], [ %i.r, %_RNvXsX_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit.i.i ]
  store <2 x i32> %i.b, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %i.w, ptr %i.x, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
