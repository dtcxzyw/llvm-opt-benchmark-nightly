Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.14?download=true
inline.NumInlined: 8764
inline.NumDeleted: 4182
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind45synthesizes_constructor_signature_from_fields:bb.a

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ %i.b, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind7matches(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14170)
  %i.d = load i32, ptr %3, align 4, !range !36, !alias.scope !14170, !noalias !14171, !noundef !22 ; 3 uses
  switch i32 %i.d, label %default.unreachable4 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread
    i32 3, label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread
    i32 4, label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread2
  ]

default.unreachable4:                             ; preds = %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load i32, ptr %i.e, align 4, !range !24, !alias.scope !14170, !noalias !14171, !noundef !22
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !14170, !noalias !14171, !noundef !22
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind17from_static_class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.c, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %i.f, i32 noundef %i.h), !noalias !14170
  br label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14172
  %i.j = load <2 x i32>, ptr %i.i, align 4, !alias.scope !14170, !noalias !14171
  store <2 x i32> %i.j, ptr %i.b, align 8, !noalias !14173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14173
  store ptr %1, ptr %i.a, align 8, !noalias !14173
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.k, align 8, !noalias !14173
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.l, align 8, !noalias !14173
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !14173
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !14173
  call void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class17CodeGeneratorKindEDNtNtB2B_2db2DbEL_NCNvNvMs_B2x_B2v_18from_dynamic_class31code_generator_of_dynamic_class0E0B1T_EB2B_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @235, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !14170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14172
  br label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit

_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit: ; preds = %bb.b, %bb.c
  %.pr = load i32, ptr %i.c, align 4              ; 2 uses
  %.not = icmp eq i32 %.pr, -1
  br i1 %.not, label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread2, label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread

_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread: ; preds = %bb.a, %bb.a, %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit
  %i.m = phi i32 [ %.pr, %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit ], [ %i.d, %bb.a ], [ %i.d, %bb.a ] ; 4 uses
  %i.n = load i32, ptr %0, align 4, !range !84, !noundef !22
  switch i32 %i.n, label %default.unreachable4 [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread
  %i.o = icmp eq i32 %i.m, 0
  br label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread2

bb.e:                                             ; preds = %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread
  %i.p = icmp eq i32 %i.m, 1
  br label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread2

bb.f:                                             ; preds = %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread
  %i.q = icmp eq i32 %i.m, 2
  br label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread2

bb.g:                                             ; preds = %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread
  %i.r = icmp eq i32 %i.m, 3
  br label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread2

_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit.thread2: ; preds = %bb.a, %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.d ], [ %i.p, %bb.e ], [ %i.q, %bb.f ], [ %i.r, %bb.g ], [ false, %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext11remove_self(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %0, ptr %i.b, align 4, !noalias !14177
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %1, ptr %i.c, align 4, !noalias !14177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14177
  store ptr %2, ptr %i.a, align 8, !noalias !14177
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.d, align 8, !noalias !14177
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.e, align 8, !noalias !14177
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !14177
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !14177
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %4, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !14177
  %i.f = call { i32, i32 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextDNtNtB1Z_2db2DbEL_NCNvNvMs_B1V_B1T_11remove_self17remove_self_inner0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @235, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i32, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext12is_subset_of(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %3, i32 noundef range(i32 1, 0) %4, i32 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [28 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val5 = load ptr, ptr %i.b, align 8            ; 3 uses
  %i.c = tail call noundef nonnull align 8 ptr %.val5(ptr noundef nonnull %2), !inline_history !1 ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics1__NtB9_14GenericContext10ingredient5CACHE, ptr noundef nonnull align 8 %i.c)
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextE6fieldsB12_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.c, i32 noundef range(i32 1, 0) %4, i32 noundef %5)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = tail call noundef nonnull align 8 ptr %.val5(ptr noundef nonnull %2), !noalias !14195, !inline_history !0 ; 2 uses
  %i.h = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics1__NtB9_14GenericContext10ingredient5CACHE, ptr noundef nonnull align 8 %i.g), !noalias !14195
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextE6fieldsB12_(ptr noundef nonnull align 8 %i.h, ptr noundef nonnull align 8 %i.g, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !14195 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !14195, !nonnull !22, !noundef !22 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noalias !14195, !noundef !22 ; 2 uses
  %.idx = mul nuw nsw i64 %i.m, 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not12.not.not.i.not9 = icmp eq i64 %i.m, 0
  br i1 %.not12.not.not.i.not9, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2y_8adapters6copied13copy_try_foldB20_uINtNtNtB2A_3ops12control_flow11ControlFlowuENCINvNvB2s_3all5checkB20_NCNvMs_NtBR_8genericsNtB5y_14GenericContext12is_subset_of0E0E0B4k_EBT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.o = phi ptr [ %i.w, %.lr.ph ], [ %i.k, %bb.a ] ; 3 uses
  %.val.i6 = load i32, ptr %i.o, align 4, !range !24, !noalias !14196, !noundef !22
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val6.i = load i32, ptr %i.p, align 4, !noalias !14196, !noundef !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14197
  %i.q = call noundef nonnull align 8 ptr %.val5(ptr noundef nonnull %2), !noalias !14198, !inline_history !14194 ; 2 uses
  %i.r = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB9_20BoundTypeVarInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.q), !noalias !14198
  %i.s = call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull align 8 %i.q, i32 noundef range(i32 1, 0) %.val.i6, i32 noundef %.val6.i), !noalias !14198
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.a, ptr noundef nonnull align 4 dereferenceable(28) %i.t, i64 28, i1 false), !noalias !14199
  %i.u = call { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBQ_20BoundTypeVarInstanceINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_EBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.a), !noalias !14197
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %.not.i = icmp eq i64 %i.v, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14197
  %.not.i.not = xor i1 %.not.i, true
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %.not12.not.not.i.not = icmp eq ptr %i.w, %i.n
  %or.cond = select i1 %.not.i.not, i1 true, i1 %.not12.not.not.i.not
  br i1 %or.cond, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2y_8adapters6copied13copy_try_foldB20_uINtNtNtB2A_3ops12control_flow11ControlFlowuENCINvNvB2s_3all5checkB20_NCNvMs_NtBR_8genericsNtB5y_14GenericContext12is_subset_of0E0E0B4k_EBT_.exit, label %.lr.ph

_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2y_8adapters6copied13copy_try_foldB20_uINtNtNtB2A_3ops12control_flow11ControlFlowuENCINvNvB2s_3all5checkB20_NCNvMs_NtBR_8genericsNtB5y_14GenericContext12is_subset_of0E0E0B4k_EBT_.exit: ; preds = %.lr.ph, %bb.a
  %.not12.not.not.i.not.lcssa = phi i1 [ true, %bb.a ], [ %.not.i, %.lr.ph ]
  ret i1 %.not12.not.not.i.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext13binds_typevar(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %3, i32 noundef range(i32 1, 0) %4, i32 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14219)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !14219 ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %2), !noalias !14219, !inline_history !0 ; 2 uses
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics1__NtB9_14GenericContext10ingredient5CACHE, ptr noundef nonnull align 8 %i.b), !noalias !14219
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextE6fieldsB12_(ptr noundef nonnull align 8 %i.c, ptr noundef nonnull align 8 %i.b, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !14219 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !14219, !nonnull !22, !noundef !22 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noalias !14219, !noundef !22 ; 2 uses
  %.idx = mul nuw nsw i64 %i.h, 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2y_8adapters6copied13copy_try_foldB20_uINtNtNtB2A_3ops12control_flow11ControlFlowB20_ENCINvNvB2s_4find5checkB20_NCNvMs_NtBR_8genericsNtB5C_14GenericContext13binds_typevar0E0E0B4k_EBT_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.i
  br i1 %i.l, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2y_8adapters6copied13copy_try_foldB20_uINtNtNtB2A_3ops12control_flow11ControlFlowB20_ENCINvNvB2s_4find5checkB20_NCNvMs_NtBR_8genericsNtB5C_14GenericContext13binds_typevar0E0E0B4k_EBT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %.val.i9 = load i32, ptr %i.m, align 4, !range !24, !noalias !14220, !noundef !22 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val10.i = load i32, ptr %i.n, align 4, !noalias !14220, !noundef !22 ; 3 uses
  %i.o = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %2), !noalias !14221, !inline_history !14213 ; 2 uses
  %i.p = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB9_20BoundTypeVarInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.o), !noalias !14221
  %i.q = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull align 8 %i.o, i32 noundef range(i32 1, 0) %.val.i9, i32 noundef %.val10.i), !noalias !14221 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !range !24, !noalias !14221, !noundef !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !noalias !14221, !noundef !22
  %i.u = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %2), !noalias !14222, !inline_history !14216 ; 2 uses
  %i.v = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__NtB9_15TypeVarInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.u), !noalias !14222
  %i.w = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.v, ptr noundef nonnull align 8 %i.u, i32 noundef range(i32 1, 0) %i.r, i32 noundef %i.t), !noalias !14222 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %7 = load i32, ptr %6, align 4, !range !24, !noalias !14222, !noundef !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %8 = load i32, ptr %i.x, align 4, !noalias !14222, !noundef !22
  %i.y = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %2), !noalias !14223, !inline_history !14216 ; 2 uses
  %i.z = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__NtB9_15TypeVarInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.y), !noalias !14223
  %i.aa = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.y, i32 noundef range(i32 1, 0) %4, i32 noundef %5), !noalias !14223 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %10 = load i32, ptr %9, align 4, !range !24, !noalias !14223, !noundef !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %11 = load i32, ptr %i.ab, align 4, !noalias !14223, !noundef !22
  %12 = icmp ne i32 %8, %11
  %13 = icmp ne i32 %7, %10
  %.sroa.0.0.i.i.i.not.i = or i1 %13, %12
  br i1 %.sroa.0.0.i.i.i.not.i, label %bb.b, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2y_8adapters6copied13copy_try_foldB20_uINtNtNtB2A_3ops12control_flow11ControlFlowB20_ENCINvNvB2s_4find5checkB20_NCNvMs_NtBR_8genericsNtB5C_14GenericContext13binds_typevar0E0E0B4k_EBT_.exit

_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2y_8adapters6copied13copy_try_foldB20_uINtNtNtB2A_3ops12control_flow11ControlFlowB20_ENCINvNvB2s_4find5checkB20_NCNvMs_NtBR_8genericsNtB5C_14GenericContext13binds_typevar0E0E0B4k_EBT_.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.3.0.i = phi i32 [ undef, %bb.a ], [ %.val10.i, %bb.b ], [ %.val10.i, %.lr.ph ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.a ], [ %.val.i9, %.lr.ph ], [ 0, %bb.b ]
  %i.ac = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.ad = insertvalue { i32, i32 } %i.ac, i32 %.sroa.3.0.i, 1
  ret { i32, i32 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext14merge_optional(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef %2, i32 %3, i32 noundef %4, i32 %5) unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %.not15 = icmp eq i32 %4, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not15, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %spec.select17 = select i1 %.not15, i32 undef, i32 %5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.e
  %.sroa.012.0 = phi i32 [ %i.d, %bb.e ], [ %4, %bb.c ], [ %2, %bb.b ]
  %.sroa.413.0 = phi i32 [ %i.e, %bb.e ], [ %spec.select17, %bb.c ], [ %3, %bb.b ]
  %i.a = insertvalue { i32, i32 } poison, i32 %.sroa.012.0, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %.sroa.413.0, 1
  ret { i32, i32 } %i.b

bb.e:                                             ; preds = %bb.b
  %i.c = tail call { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext5merge(i32 noundef %2, i32 noundef %3, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef %4, i32 noundef %5) ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.c, 0
  %i.e = extractvalue { i32, i32 } %i.c, 1
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext16from_type_params(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(400) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %3, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !22
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %i.i
  %i.k = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14235)
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !14236, !noalias !14237
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx1, align 8, !alias.scope !14236, !noalias !14237
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %.sroa.5.0..sroa_idx2, align 8, !alias.scope !14236, !noalias !14237
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx3, align 8, !alias.scope !14236, !noalias !14237
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !14236, !noalias !14237
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !14236, !noalias !14237
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %0, ptr %i.l, align 8, !alias.scope !14238, !noalias !14239
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %1, ptr %i.m, align 8, !alias.scope !14238, !noalias !14239
  call void @_RINvXs9_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBQ_20BoundTypeVarInstanceINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtB2x_4iter6traits7collect12FromIteratorTBO_B21_EE9from_iterINtNtNtB3Z_8adapters3map3MapINtNtB52_10filter_map9FilterMapINtNtNtB2x_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENCNvMs_NtBS_8genericsNtB7m_14GenericContext16from_type_params0ENCINvB7j_33from_typevar_instances_in_programB5p_E0EEBU_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b), !noalias !14240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14234
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !14233, !noalias !14240
  %i.o = invoke { ptr, ptr } %.val.i(ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.c, !noalias !14241 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.q = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics1__NtB9_14GenericContext10ingredient5CACHE, ptr noundef nonnull align 8 %i.p)
          to label %_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_14GenericContext33from_typevar_instances_in_programINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB1Y_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENCNvB2_16from_type_params0EEB9_.exit unwind label %bb.c, !noalias !14241

bb.c:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1i_20BoundTypeVarInstanceINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.e unwind label %bb.d, !noalias !14240

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53, !noalias !14240
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.thr_comm.i.i

_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_14GenericContext33from_typevar_instances_in_programINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB1Y_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENCNvB2_16from_type_params0EEB9_.exit: ; preds = %bb.b
  %i.s = extractvalue { i32, i32 } %i.k, 1
  %i.t = extractvalue { i32, i32 } %i.k, 0
  %i.u = extractvalue { ptr, ptr } %i.o, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !14234
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %i.t, ptr %i.v, align 8, !noalias !14242
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %i.s, ptr %i.w, align 4, !noalias !14242
  %i.x = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextE9intern_idINtNvBZ_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapNtNtB11_7typevar20BoundTypeVarIdentityNtB46_20BoundTypeVarInstanceINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEENCINvMs9_B2j_BX_12new_internalDNtNtB13_2db2DbEL_B2B_B3p_E0EB13_(ptr noundef nonnull align 8 %i.q, ptr noundef nonnull align 8 %i.p, ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !14241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14234
  ret { i32, i32 } %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext16specialize_tuple(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %3, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %4, i32 noundef range(i32 1, 0) %5, i32 noundef %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val = load ptr, ptr %i.c, align 8
  %i.d = tail call { ptr, ptr } %.val(ptr noundef nonnull %2), !noalias !14245, !inline_history !8 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14SpecializationEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericss_1__NtB9_14Specialization10ingredient5CACHE, ptr noundef nonnull align 8 %i.e), !noalias !14245
  %i.g = extractvalue { ptr, ptr } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14245
  store i32 %0, ptr %i.a, align 8, !noalias !14245
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.h, align 4, !noalias !14245
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.i, align 8, !noalias !14245
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.j, align 8, !noalias !14245
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 2, ptr %i.k, align 8, !noalias !14245
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %5, ptr %i.l, align 8, !noalias !14245
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %6, ptr %i.m, align 4, !noalias !14245
  %i.n = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14SpecializationE9intern_idINtNvBZ_s_1__9StructKeyNtBZ_14GenericContextRSNtB11_4TypeINtNtCs4NRVxsYgnAr_4core6option6OptionNtB11_19MaterializationKindEIB3c_NtNtB11_5tuple9TupleTypeEENCINvMs9_B2j_BX_3newDNtNtB13_2db2DbEL_B2D_B2Y_B3b_B4f_E0EB13_(ptr noundef nonnull align 8 %i.f, ptr noundef nonnull align 8 %i.e, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i32, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext18inferable_typevars(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %0, ptr %i.b, align 4, !noalias !14248
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %1, ptr %i.c, align 4, !noalias !14248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14248
  store ptr %2, ptr %i.a, align 8, !noalias !14248
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.d, align 8, !noalias !14248
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.e, align 8, !noalias !14248
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !14248
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !14248
  %i.f = call { i32, i32 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar10TypeVarSetDNtNtB1Z_2db2DbEL_NCNvNvMs_NtB1X_8genericsNtB3n_14GenericContext18inferable_typevars24inferable_typevars_inner0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @235, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i32, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext19binds_named_typevar(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %3, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14276)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !14276 ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %2), !noalias !14276, !inline_history !0 ; 2 uses
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics1__NtB9_14GenericContext10ingredient5CACHE, ptr noundef nonnull align 8 %i.b), !noalias !14276
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextE6fieldsB12_(ptr noundef nonnull align 8 %i.c, ptr noundef nonnull align 8 %i.b, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !14276 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !14276, !nonnull !22, !noundef !22 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noalias !14276, !noundef !22 ; 2 uses
  %.idx = mul nuw nsw i64 %i.h, 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2y_8adapters6copied13copy_try_foldB20_uINtNtNtB2A_3ops12control_flow11ControlFlowB20_ENCINvNvB2s_4find5checkB20_NCNvMs_NtBR_8genericsNtB5C_14GenericContext19binds_named_typevar0E0E0B4k_EBT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.l = load i8, ptr %i.k, align 1, !range !29   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 72057594037927935
  %i.p = icmp ult i8 %i.l, -48
  %i.q = zext i8 %i.l to i64
  %i.r = add nsw i64 %i.q, -192
end_hunk_0
