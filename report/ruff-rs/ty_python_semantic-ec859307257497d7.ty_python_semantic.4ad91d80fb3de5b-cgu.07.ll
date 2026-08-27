Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.07?download=true
inline.NumInlined: 8805
inline.NumDeleted: 4120
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMs_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantics1_1__NtB4_50has_before_or_plain_field_validator_Configuration_17fn_ingredient_mut:bb.a
  br i1 %i.al, label %bb.e, label %select.unfold.i, !prof !16

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.am = add i16 %.sroa.05.0.i33.i.i.i, -1
  %i.an = and i16 %i.am, %.sroa.05.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.ap = add i64 %.sroa.01.0.i.i.i.i, %i.ao
  br label %bb.c

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @16, ptr %i.b, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 83, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.44.0..sroa_idx.i, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #40
  unreachable

_RINvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic35has_before_or_plain_field_validatorEB1b_.exit: ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.as = load i32, ptr %i.ar, align 4, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa21lookup_ingredient_mut(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(1368) %i.k, i32 noundef %i.as)
  %i.at = load ptr, ptr %i.d, align 8, !nonnull !15, !noundef !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !15, !align !18, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aw = call noundef nonnull align 8 ptr @_RINvMNtCs45bxiIjzMqg_5salsa10ingredientDNtB3_10IngredientEL_15assert_type_mutINtNtB5_8function14IngredientImplNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantics1_1__50has_before_or_plain_field_validator_Configuration_EEB1U_(ptr noundef nonnull %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 520
  %i.ay = load atomic i32, ptr %i.ax acquire, align 8, !noalias !18208
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtNtB1N_5types9dedicated8pydantics1_1__NtB3e_50has_before_or_plain_field_validator_Configuration_17fn_ingredient_mut0E0zEB1N_.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %_RINvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic35has_before_or_plain_field_validatorEB1b_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 480
  call void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNtNtNtB1N_5types9dedicated8pydantics1_1__NtB39_50has_before_or_plain_field_validator_Configuration_17fn_ingredient_mut0E0zEB1N_(ptr noundef nonnull align 8 %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
  br label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtNtB1N_5types9dedicated8pydantics1_1__NtB3e_50has_before_or_plain_field_validator_Configuration_17fn_ingredient_mut0E0zEB1N_.exit

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNtNtNtB1N_5types9dedicated8pydantics1_1__NtB3e_50has_before_or_plain_field_validator_Configuration_17fn_ingredient_mut0E0zEB1N_.exit: ; preds = %_RINvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic35has_before_or_plain_field_validatorEB1b_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.aw
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsb_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__NtB7_23DynamicTypedDictLiteral17default_debug_fmt(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %1, ptr %i.d, align 4
  %i.e = call noundef i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_22with_attached_databaseINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB2f_3fmt5ErrorENCNvMsb_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dicts_1__NtB3g_23DynamicTypedDictLiteral17default_debug_fmt0E0INtNtB2f_6option6OptionB2a_EEB3m_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @168, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.e to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18211
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18211
  store i32 %0, ptr %i.a, align 4, !noalias !18211
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.g, align 4, !noalias !18211
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71)
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18211
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsb_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic1__NtB7_13ModelMetadata17default_debug_fmt(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %1, ptr %i.d, align 4
  %i.e = call noundef i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_22with_attached_databaseINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB2f_3fmt5ErrorENCNvMsb_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic1__NtB3g_13ModelMetadata17default_debug_fmt0E0INtNtB2f_6option6OptionB2a_EEB3m_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @168, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.e to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18214
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18214
  store i32 %0, ptr %i.a, align 4, !noalias !18214
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.g, align 4, !noalias !18214
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71)
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18214
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAIBt_Ajj1_EBO_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !18217, !noalias !18220, !noundef !15 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !18217, !noalias !18220, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18217, !noalias !18220
  %.sink9.i = select i1 %i.c, i64 %i.g, i64 %i.b  ; 3 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0                 ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18222)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink8.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink8.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink8.i.i, align 8, !alias.scope !18222, !noundef !15 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18222
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul i64 %i.m, 24                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 384307168202282324
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit45.i, !prof !18225

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18222
  %i.q = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #43, !noalias !18222 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 24
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #43, !noalias !18222 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !18222
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !18222
  store i64 %i.m, ptr %0, align 8, !alias.scope !18222
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !18222
  %i.x = mul i64 %.sink.i.i, 24                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !18225

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18226
  store i64 0, ptr %i.a, align 8, !noalias !18226
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !18226
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18226
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #43, !noalias !18222
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtB2_8SmallVecAjj1_EECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEj1_E21reserve_one_uncheckedB1s_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18229, !noalias !18232, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18229, !noalias !18232
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEj1_E8try_growB1s_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEj1_E8try_growB1s_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 6 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18234, !noalias !18237, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 6 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = icmp sgt i64 %1, -1
  br i1 %i.j, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1n_.exit, label %bb.m

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1n_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1n_.exit
  %i.k = icmp sgt i64 %.sink.i, -1
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1n_.exit51, label %bb.m

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1n_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef 1) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1n_.exit51: ; preds = %bb.g
  %i.n = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %.sink.i, i64 noundef 1, i64 noundef %1) #43 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1n_.exit51, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1n_.exit51 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 8 %0, i64 %i.c, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 1 %i.f, i64 %.val, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.p = icmp sgt i64 %.sink.i, -1
  br i1 %i.p, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1l_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18239
  store i64 0, ptr %i.a, align 8, !noalias !18239
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i, ptr %i.q, align 8, !noalias !18239
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18239
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1l_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.sink.i, i64 noundef 1) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1n_.exit51, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1l_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1l_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %1, %bb.h ], [ undef, %bb.e ], [ %1, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1n_.exit51 ], [ %1, %bb.f ], [ %.sink.i, %bb.g ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1l_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 1, %bb.h ], [ -1, %bb.e ], [ 1, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEEB1n_.exit51 ], [ 0, %bb.f ], [ 0, %bb.g ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_E21reserve_one_uncheckedBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !18242, !noundef !15 ; 9 uses
  %i.d = icmp ugt i64 %i.c, 3                     ; 2 uses
  br i1 %i.d, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_E6tripleBP_.exit, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_E6tripleBP_.exit.thread

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_E6tripleBP_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !18242, !noundef !15 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.p, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_E6tripleBP_.exit.thread, !prof !18245

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_E6tripleBP_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_E6tripleBP_.exit
  %.sink9.i8 = phi i64 [ %i.f, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_E6tripleBP_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink9.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.p, label %bb.b, !prof !16

bb.b:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_E6tripleBP_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18246)
  %i.m = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !alias.scope !18249, !noalias !18252, !nonnull !15 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val.i = load i64, ptr %i.o, align 8, !alias.scope !18246 ; 3 uses
  %i.p = select i1 %i.d, i64 %.val.i, i64 %i.c    ; 2 uses
  %.not.i = icmp ult i64 %i.l, %i.p
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18246
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not43.i = icmp eq i64 %i.c, %i.l
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.m, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %i.l, 5                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 288230376151711743
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBI_4TypeEEBK_.exit.i, label %bb.o, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBI_4TypeEEBK_.exit.i: ; preds = %bb.g
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBI_4TypeEEBK_.exit.i
  %i.s = icmp ult i64 %i.c, 288230376151711744
  br i1 %i.s, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBI_4TypeEEBK_.exit45.i, label %bb.o, !prof !18254

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBI_4TypeEEBK_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18246
  %i.t = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef 4) #43, !noalias !18246 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.n, label %bb.k

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBI_4TypeEEBK_.exit45.i: ; preds = %bb.h
  %i.v = shl nuw nsw i64 %.sink.i.i, 5
  %i.w = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.n, i64 noundef %i.v, i64 noundef 4, i64 noundef %i.r) #43, !noalias !18246 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBI_4TypeEEBK_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.t, %bb.k ], [ %i.w, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBI_4TypeEEBK_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18246
  store i64 %i.p, ptr %i.o, align 8, !alias.scope !18246
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !18246
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.k:                                             ; preds = %bb.i
  %i.y = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull align 8 dereferenceable(104) %0, i64 %i.y, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.f
  %i.z = shl i64 %.val.i, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %0, ptr nonnull align 4 %i.n, i64 %i.z, i1 false)
  store i64 %.val.i, ptr %i.b, align 8, !alias.scope !18246
  %or.cond.i.i = icmp ult i64 %i.c, 288230376151711744
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBG_4TypeEEBI_.exit.i, label %bb.m, !prof !18254

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18255
  store i64 0, ptr %i.a, align 8, !noalias !18255
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18255
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBG_4TypeEEBI_.exit.i: ; preds = %bb.l
  %i.aa = shl nuw nsw i64 %.sink.i.i, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.aa, i64 noundef 4) #43, !noalias !18246
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.n:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBI_4TypeEEBK_.exit45.i, %bb.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.r) #40
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBG_4TypeEEBI_.exit.i, %bb.e, %bb.j, %bb.f
  ret void

bb.p:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_E6tripleBP_.exit.thread, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtBN_4TypeEj3_E6tripleBP_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_E21reserve_one_uncheckedBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !18258, !noundef !15 ; 9 uses
  %i.d = icmp ugt i64 %i.c, 6                     ; 2 uses
  br i1 %i.d, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_E6tripleBP_.exit, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_E6tripleBP_.exit.thread

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_E6tripleBP_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !18258, !noundef !15 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.p, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_E6tripleBP_.exit.thread, !prof !18245

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_E6tripleBP_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_E6tripleBP_.exit
  %.sink9.i8 = phi i64 [ %i.f, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_E6tripleBP_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink9.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.p, label %bb.b, !prof !16

bb.b:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_E6tripleBP_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18261)
  %i.m = icmp ult i64 %i.c, 7                     ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !alias.scope !18264, !noalias !18267, !nonnull !15 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 6) ; 2 uses
  %.val.i = load i64, ptr %i.o, align 8, !alias.scope !18261 ; 3 uses
  %i.p = select i1 %i.d, i64 %.val.i, i64 %i.c    ; 2 uses
  %.not.i = icmp ult i64 %i.l, %i.p
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18261
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %.sroa.02.0, 6
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not43.i = icmp eq i64 %i.c, %i.l
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.m, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %i.l, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBI_7typevar15TypeVarInstanceEEBK_.exit.i, label %bb.o, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBI_7typevar15TypeVarInstanceEEBK_.exit.i: ; preds = %bb.g
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBI_7typevar15TypeVarInstanceEEBK_.exit.i
  %i.s = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.s, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBI_7typevar15TypeVarInstanceEEBK_.exit45.i, label %bb.o, !prof !18254

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBI_7typevar15TypeVarInstanceEEBK_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18261
  %i.t = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef 4) #43, !noalias !18261 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.n, label %bb.k

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBI_7typevar15TypeVarInstanceEEBK_.exit45.i: ; preds = %bb.h
  %i.v = shl nuw nsw i64 %.sink.i.i, 4
  %i.w = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.n, i64 noundef %i.v, i64 noundef 4, i64 noundef %i.r) #43, !noalias !18261 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBI_7typevar15TypeVarInstanceEEBK_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.t, %bb.k ], [ %i.w, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBI_7typevar15TypeVarInstanceEEBK_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18261
  store i64 %i.p, ptr %i.o, align 8, !alias.scope !18261
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !18261
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.k:                                             ; preds = %bb.i
  %i.y = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull align 8 dereferenceable(104) %0, i64 %i.y, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.f
  %i.z = shl i64 %.val.i, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %0, ptr nonnull align 4 %i.n, i64 %i.z, i1 false)
  store i64 %.val.i, ptr %i.b, align 8, !alias.scope !18261
  %or.cond.i.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBG_7typevar15TypeVarInstanceEEBI_.exit.i, label %bb.m, !prof !18254

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18269
  store i64 0, ptr %i.a, align 8, !noalias !18269
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18269
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBG_7typevar15TypeVarInstanceEEBI_.exit.i: ; preds = %bb.l
  %i.aa = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.aa, i64 noundef 4) #43, !noalias !18261
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.n:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBI_7typevar15TypeVarInstanceEEBK_.exit45.i, %bb.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.r) #40
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBG_7typevar15TypeVarInstanceEEBI_.exit.i, %bb.e, %bb.j, %bb.f
  ret void

bb.p:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_E6tripleBP_.exit.thread, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitNtNtBN_7typevar15TypeVarInstanceEj6_E6tripleBP_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_E21reserve_one_uncheckedBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !18272, !noundef !15 ; 9 uses
  %i.d = icmp ugt i64 %i.c, 1                     ; 2 uses
  br i1 %i.d, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_E6tripleBP_.exit, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_E6tripleBP_.exit.thread

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_E6tripleBP_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !18272, !noundef !15 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.p, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_E6tripleBP_.exit.thread, !prof !18245

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_E6tripleBP_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_E6tripleBP_.exit
  %.sink9.i8 = phi i64 [ %i.f, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_E6tripleBP_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink9.i8, 0                ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i8, i1 true)
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 2 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.p, label %bb.b, !prof !16

bb.b:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_E6tripleBP_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18275)
  %i.m = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !alias.scope !18278, !noalias !18281, !nonnull !15 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val.i = load i64, ptr %i.o, align 8, !alias.scope !18275 ; 3 uses
  %i.p = select i1 %i.d, i64 %.val.i, i64 %i.c    ; 2 uses
  %.not.i = icmp ult i64 %i.l, %i.p
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18275
  unreachable

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not43.i = icmp eq i64 %i.c, %i.l
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.m, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %i.l, 6                  ; 3 uses
  %or.cond.i = icmp ult i64 %i.j, 144115188075855871
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_EEEBK_.exit.i, label %bb.o, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_EEEBK_.exit.i: ; preds = %bb.g
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_EEEBK_.exit.i
  %i.r = icmp ult i64 %i.c, 144115188075855872
  br i1 %i.r, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_EEEBK_.exit45.i, label %bb.o, !prof !18254

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_EEEBK_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18275
  %i.s = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef 4) #43, !noalias !18275 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %bb.k

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_EEEBK_.exit45.i: ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.sink.i.i, 6
  %i.v = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.n, i64 noundef %i.u, i64 noundef 4, i64 noundef %i.q) #43, !noalias !18275 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_EEEBK_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.k ], [ %i.v, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_EEEBK_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18275
  store i64 %i.p, ptr %i.o, align 8, !alias.scope !18275
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !18275
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.k:                                             ; preds = %bb.i
  %i.x = shl nuw nsw i64 %i.c, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 8 dereferenceable(72) %0, i64 %i.x, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.f
  %i.y = shl i64 %.val.i, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 4 %i.n, i64 %i.y, i1 false)
  store i64 %.val.i, ptr %i.b, align 8, !alias.scope !18275
  %or.cond.i.i = icmp ult i64 %i.c, 144115188075855872
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeB1T_EEEBI_.exit.i, label %bb.m, !prof !18254

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18283
  store i64 0, ptr %i.a, align 8, !noalias !18283
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18283
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeB1T_EEEBI_.exit.i: ; preds = %bb.l
  %i.z = shl nuw nsw i64 %.sink.i.i, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.z, i64 noundef 4) #43, !noalias !18275
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.n:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_EEEBK_.exit45.i, %bb.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.q) #40
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeB1T_EEEBI_.exit.i, %bb.e, %bb.j, %bb.f
  ret void

bb.p:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_E6tripleBP_.exit.thread, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_EEj1_E6tripleBP_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E21reserve_one_uncheckedBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noalias !18286, !noundef !15 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.c, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit.thread

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noalias !18286, !noundef !15 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.p, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit.thread, !prof !18245

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit
  %.sink9.i8 = phi i64 [ %i.f, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink9.i8, 0                ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i8, i1 true)
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 2 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.p, label %bb.b, !prof !16

bb.b:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18289)
  %i.m = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !18292, !noalias !18295, !nonnull !15 ; 3 uses
  %.sink8.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink8.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink8.i.i, align 8, !alias.scope !18289, !noundef !15 ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.o
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18289
  unreachable

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not43.i = icmp eq i64 %i.b, %i.l
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.m, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.p = mul i64 %i.l, 72                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.j, 128102389400760774
  br i1 %or.cond.not.i, label %bb.o, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_NtNtBI_8relation12TypeRelationNtB2b_17TypeVarEvaluationEEEBK_.exit.i, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_NtNtBI_8relation12TypeRelationNtB2b_17TypeVarEvaluationEEEBK_.exit.i: ; preds = %bb.g
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_NtNtBI_8relation12TypeRelationNtB2b_17TypeVarEvaluationEEEBK_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond62.not.i, label %bb.o, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_NtNtBI_8relation12TypeRelationNtB2b_17TypeVarEvaluationEEEBK_.exit45.i, !prof !18225

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_NtNtBI_8relation12TypeRelationNtB2b_17TypeVarEvaluationEEEBK_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18289
  %i.q = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #43, !noalias !18289 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.n, label %bb.k

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_NtNtBI_8relation12TypeRelationNtB2b_17TypeVarEvaluationEEEBK_.exit45.i: ; preds = %bb.h
  %i.s = mul nuw i64 %.sink.i.i, 72
  %i.t = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.n, i64 noundef %i.s, i64 noundef 4, i64 noundef %i.p) #43, !noalias !18289 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_NtNtBI_8relation12TypeRelationNtB2b_17TypeVarEvaluationEEEBK_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.k ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_NtNtBI_8relation12TypeRelationNtB2b_17TypeVarEvaluationEEEBK_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !18289
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !18289
  store i64 %i.l, ptr %0, align 8, !alias.scope !18289
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.k:                                             ; preds = %bb.i
  %i.v = mul i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.f
  %i.w = mul i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 4 %i.n, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !18289
  %i.x = mul i64 %.sink.i.i, 72                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond.not.i.i, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeB1T_NtNtBG_8relation12TypeRelationNtB29_17TypeVarEvaluationEEEBI_.exit.i, !prof !18225

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18297
  store i64 0, ptr %i.a, align 8, !noalias !18297
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !18297
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18297
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeB1T_NtNtBG_8relation12TypeRelationNtB29_17TypeVarEvaluationEEEBI_.exit.i: ; preds = %bb.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.x, i64 noundef 4) #43, !noalias !18289
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.n:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeB1V_NtNtBI_8relation12TypeRelationNtB2b_17TypeVarEvaluationEEEBK_.exit45.i, %bb.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #40
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeB1T_NtNtBG_8relation12TypeRelationNtB29_17TypeVarEvaluationEEEBI_.exit.i, %bb.e, %bb.j, %bb.f
  ret void

bb.p:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit.thread, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeB20_NtNtBN_8relation12TypeRelationNtB2g_17TypeVarEvaluationEEj1_E6tripleBP_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB20_EEj1_E21reserve_one_uncheckedBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noalias !18300, !noundef !15 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.c, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB20_EEj1_E6tripleBP_.exit, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB20_EEj1_E6tripleBP_.exit.thread

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB20_EEj1_E6tripleBP_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noalias !18300, !noundef !15 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.p, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB20_EEj1_E6tripleBP_.exit.thread, !prof !18245

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB20_EEj1_E6tripleBP_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB20_EEj1_E6tripleBP_.exit
  %.sink9.i8 = phi i64 [ %i.f, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB20_EEj1_E6tripleBP_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink9.i8, 0                ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i8, i1 true)
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 2 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.p, label %bb.b, !prof !16

bb.b:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB20_EEj1_E6tripleBP_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18303)
  %i.m = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !18306, !noalias !18309, !nonnull !15 ; 3 uses
  %.sink8.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink8.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink8.i.i, align 8, !alias.scope !18303, !noundef !15 ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.o
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18303
  unreachable

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not43.i = icmp eq i64 %i.b, %i.l
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.m, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.p = mul i64 %i.l, 72                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.j, 128102389400760774
  br i1 %or.cond.not.i, label %bb.o, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1V_EEEBK_.exit.i, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1V_EEEBK_.exit.i: ; preds = %bb.g
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1V_EEEBK_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond62.not.i, label %bb.o, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1V_EEEBK_.exit45.i, !prof !18225

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1V_EEEBK_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18303
  %i.q = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #43, !noalias !18303 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.n, label %bb.k

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1V_EEEBK_.exit45.i: ; preds = %bb.h
  %i.s = mul nuw i64 %.sink.i.i, 72
  %i.t = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.n, i64 noundef %i.s, i64 noundef 4, i64 noundef %i.p) #43, !noalias !18303 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1V_EEEBK_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.k ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1V_EEEBK_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !18303
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !18303
  store i64 %i.l, ptr %0, align 8, !alias.scope !18303
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.k:                                             ; preds = %bb.i
  %i.v = mul i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.f
  %i.w = mul i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 4 %i.n, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !18303
  %i.x = mul i64 %.sink.i.i, 72                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond.not.i.i, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1T_EEEBI_.exit.i, !prof !18225

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18311
  store i64 0, ptr %i.a, align 8, !noalias !18311
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !18311
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18311
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1T_EEEBI_.exit.i: ; preds = %bb.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.x, i64 noundef 4) #43, !noalias !18303
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.n:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1V_EEEBK_.exit45.i, %bb.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #40
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB1T_EEEBI_.exit.i, %bb.e, %bb.j, %bb.f
  ret void

bb.p:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB20_EEj1_E6tripleBP_.exit.thread, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorB20_EEj1_E6tripleBP_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtNtBN_5infer11comparisons19NonIdentityOperatorB20_EEj1_E21reserve_one_uncheckedBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noalias !18314, !noundef !15 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.c, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtNtBN_5infer11comparisons19NonIdentityOperatorB20_EEj1_E6tripleBP_.exit, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtNtBN_5infer11comparisons19NonIdentityOperatorB20_EEj1_E6tripleBP_.exit.thread

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtNtBN_5infer11comparisons19NonIdentityOperatorB20_EEj1_E6tripleBP_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noalias !18314, !noundef !15 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.p, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtNtBN_5infer11comparisons19NonIdentityOperatorB20_EEj1_E6tripleBP_.exit.thread, !prof !18245

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtNtBN_5infer11comparisons19NonIdentityOperatorB20_EEj1_E6tripleBP_.exit.thread: ; preds = %bb.a, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtNtBN_5infer11comparisons19NonIdentityOperatorB20_EEj1_E6tripleBP_.exit
  %.sink9.i8 = phi i64 [ %i.f, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtNtBN_5infer11comparisons19NonIdentityOperatorB20_EEj1_E6tripleBP_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink9.i8, 0                ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i8, i1 true)
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 2 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.p, label %bb.b, !prof !16

bb.b:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtNtBN_5infer11comparisons19NonIdentityOperatorB20_EEj1_E6tripleBP_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18317)
  %i.m = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !18320, !noalias !18323, !nonnull !15 ; 3 uses
  %.sink8.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink8.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink8.i.i, align 8, !alias.scope !18317, !noundef !15 ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.o
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18317
  unreachable

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not43.i = icmp eq i64 %i.b, %i.l
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.m, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.p = mul i64 %i.l, 72                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.j, 128102389400760774
  br i1 %or.cond.not.i, label %bb.o, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtNtBI_5infer11comparisons19NonIdentityOperatorB1V_EEEBK_.exit.i, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtNtBI_5infer11comparisons19NonIdentityOperatorB1V_EEEBK_.exit.i: ; preds = %bb.g
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtNtBI_5infer11comparisons19NonIdentityOperatorB1V_EEEBK_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond62.not.i, label %bb.o, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtNtBI_5infer11comparisons19NonIdentityOperatorB1V_EEEBK_.exit45.i, !prof !18225

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtNtBI_5infer11comparisons19NonIdentityOperatorB1V_EEEBK_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18317
  %i.q = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #43, !noalias !18317 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.n, label %bb.k

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtNtBI_5infer11comparisons19NonIdentityOperatorB1V_EEEBK_.exit45.i: ; preds = %bb.h
  %i.s = mul nuw i64 %.sink.i.i, 72
  %i.t = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.n, i64 noundef %i.s, i64 noundef 4, i64 noundef %i.p) #43, !noalias !18317 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtNtBI_5infer11comparisons19NonIdentityOperatorB1V_EEEBK_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.k ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtNtBI_5infer11comparisons19NonIdentityOperatorB1V_EEEBK_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !18317
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !18317
  store i64 %i.l, ptr %0, align 8, !alias.scope !18317
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.k:                                             ; preds = %bb.i
  %i.v = mul i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.f
  %i.w = mul i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 4 %i.n, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !18317
  %i.x = mul i64 %.sink.i.i, 72                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond.not.i.i, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeNtNtNtBG_5infer11comparisons19NonIdentityOperatorB1T_EEEBI_.exit.i, !prof !18225

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18325
  store i64 0, ptr %i.a, align 8, !noalias !18325
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !18325
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18325
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeNtNtNtBG_5infer11comparisons19NonIdentityOperatorB1T_EEEBI_.exit.i: ; preds = %bb.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.x, i64 noundef 4) #43, !noalias !18317
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.n:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBI_4TypeNtNtNtBI_5infer11comparisons19NonIdentityOperatorB1V_EEEBK_.exit45.i, %bb.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #40
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBG_4TypeNtNtNtBG_5infer11comparisons19NonIdentityOperatorB1T_EEEBI_.exit.i, %bb.e, %bb.j, %bb.f
  ret void

bb.p:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtNtBN_5infer11comparisons19NonIdentityOperatorB20_EEj1_E6tripleBP_.exit.thread, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveCycleDetectorVisitTNtBN_4TypeNtNtNtBN_5infer11comparisons19NonIdentityOperatorB20_EEj1_E6tripleBP_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18328, !noalias !18331, !noundef !15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 2
  %i.e = load ptr, ptr %0, align 8, !alias.scope !18328, !noalias !18331, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18328, !noalias !18331 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18333)
  %i.n = icmp ult i64 %i.c, 3                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18333
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 2
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 1152921504606846975
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.p, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.q = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit44.i, label %bb.p, !prof !18254

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18333
  %i.r = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #43, !noalias !18333 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit44.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 3
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 4, i64 noundef %i.p) #43, !noalias !18333 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18333
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !18333
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !18333
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !18333
  %or.cond.i.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.n, !prof !18254

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18336
  store i64 0, ptr %i.a, align 8, !noalias !18336
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18336
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 4) #43, !noalias !18333
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit44.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core10definition10Definitionj1_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18339, !noalias !18342, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18339, !noalias !18342
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core10definition10Definitionj1_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core10definition10Definitionj1_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18344, !noalias !18347, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit49, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit49: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 4, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit49, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit49 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18349
  store i64 0, ptr %i.a, align 8, !noalias !18349
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18349
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 4) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit49, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit49 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic.exit49 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNamej2_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18352, !noalias !18355, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18352, !noalias !18355
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNamej2_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(40) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNamej2_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18357, !noalias !18360, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 4                    ; 4 uses
  %or.cond = icmp ult i64 %1, 576460752303423488
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.k = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit45, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit45: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 4
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18362
  store i64 0, ptr %i.a, align 8, !noalias !18362
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18362
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit45 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameECsoTR8nlGN3X_18ty_python_semantic.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCskLngH8kgpZI_15ruff_python_ast4name4Namej8_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18365, !noalias !18368, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18365, !noalias !18368
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCskLngH8kgpZI_15ruff_python_ast4name4Namej8_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(136) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCskLngH8kgpZI_15ruff_python_ast4name4Namej8_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18370, !noalias !18373, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 4                    ; 4 uses
  %or.cond = icmp ult i64 %1, 576460752303423488
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.k = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit45, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit45: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 4
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18375
  store i64 0, ptr %i.a, align 8, !noalias !18375
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18375
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit45 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_E13shrink_to_fitBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !18378, !noalias !18381, !nonnull !15 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18378, !noalias !18381 ; 5 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.g, label %bb.c

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.d, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBF_.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, %i.g
  br i1 %i.i, label %bb.d, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.g) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.f
  ], !prof !3

bb.e:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.k, i64 noundef %i.l) #40
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.m = mul nuw nsw i64 %i.g, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.e, i64 %i.m, i1 false)
  %i.n = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.o = mul i64 %i.n, 48                         ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.n, 192153584101141162
  br i1 %or.cond.not.i, label %bb.h, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBF_.exit, !prof !18225

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18383
  store i64 0, ptr %i.a, align 8, !noalias !18383
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !18383
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18383
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBF_.exit: ; preds = %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.o, i64 noundef 8) #43
  store i64 %i.g, ptr %i.b, align 8
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18386, !noalias !18389, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18386, !noalias !18389
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11Suppressionj1_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18391, !noalias !18394, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 48                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 192153584101141162
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBH_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBH_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBH_.exit
  %i.k = mul i64 %.sink.i, 48                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 192153584101141162
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBH_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBH_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBH_.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBH_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBH_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul i64 %.val, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 48                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 192153584101141162
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBF_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18396
  store i64 0, ptr %i.a, align 8, !noalias !18396
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !18396
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18396
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBF_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBH_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBH_.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression11SuppressionEBH_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !18399, !noalias !18402, !noundef !15 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18399, !noalias !18402
  %.sink9.i = select i1 %i.b, i64 %i.d, i64 %i.a  ; 3 uses
  %i.e = icmp eq i64 %.sink9.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink9.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionj1_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionj1_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !15  ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !18404, !noalias !18407, !nonnull !15 ; 3 uses
  %.sink8.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink8.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink8.i, align 8, !noundef !15 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 24                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBH_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBH_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBH_.exit
  %i.j = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBH_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBH_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.k = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 4) #43 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBH_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 4, i64 noundef %i.i) #43 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBH_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBH_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 4 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBF_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18409
  store i64 0, ptr %i.a, align 8, !noalias !18409
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !18409
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18409
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBF_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 4) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBH_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBH_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types21InvalidTypeExpressionEBH_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E13shrink_to_fitBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 4 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !alias.scope !18412, !noalias !18415, !nonnull !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !18412, !noalias !18415 ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.c, %i.f
  br i1 %i.h, label %bb.f, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %bb.b
  %or.cond.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit, label %bb.e, !prof !18254

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18417
  store i64 0, ptr %i.a, align 8, !noalias !18417
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18417
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit: ; preds = %bb.d
  %i.i = shl nuw nsw i64 %i.c, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.i, i64 noundef 4) #43
  store i64 0, ptr %i.b, align 8
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.f:                                             ; preds = %bb.c
  %i.j = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.f) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  switch i64 %i.k, label %bb.g [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.h
  ], !prof !3

bb.g:                                             ; preds = %bb.f
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.k, i64 noundef %i.l) #40
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E17try_reserve_exactBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18420, !noalias !18423, !noundef !15 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load i64, ptr %i.c, align 8
  %i.d = select i1 %.not.i, i64 0, i64 %.val9     ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %.not = icmp ult i64 %i.e, %1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, %1                         ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.f) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi i64 [ %i.j, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.i, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18425, !noalias !18428, !noundef !15
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18425, !noalias !18428
  %.sink9.i = select i1 %.not.i, i64 0, i64 %i.d  ; 3 uses
  %i.e = icmp eq i64 %.sink9.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink9.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 6 uses
  %.not = icmp eq i64 %i.c, 0                     ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !18430, !noalias !18433, !nonnull !15 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val64 = load i64, ptr %i.e, align 8           ; 3 uses
  %i.f = select i1 %.not, i64 0, i64 %.val64      ; 2 uses
  %.not41 = icmp ult i64 %1, %i.f
  br i1 %.not41, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %1, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %1, %i.c
  br i1 %.not42, label %bb.l, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %bb.l, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.h = shl nuw nsw i64 %1, 4                    ; 4 uses
  %or.cond = icmp ult i64 %1, 576460752303423488
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit, label %bb.l, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit: ; preds = %bb.f
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit
  %or.cond63 = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond63, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44, label %bb.l, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.i = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef 4) #43 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.l, label %bb.i

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44: ; preds = %bb.g
  %i.k = shl nuw nsw i64 %i.c, 4
  %i.l = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.k, i64 noundef 4, i64 noundef %i.h) #43 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44
  %.sroa.030.0 = phi ptr [ %i.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44 ], [ %i.i, %bb.h ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.f, ptr %i.e, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.n = shl i64 %.val64, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.d, i64 %i.n, i1 false)
  store i64 %.val64, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit, label %bb.k, !prof !18254

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18435
  store i64 0, ptr %i.a, align 8, !noalias !18435
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18435
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit: ; preds = %bb.j
  %i.o = shl nuw nsw i64 %i.c, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.o, i64 noundef 4) #43
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.h, %bb.h ], [ undef, %bb.e ], [ %i.h, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.q
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18438, !noalias !18441, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18438, !noalias !18441
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_E8try_growBM_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_E8truncateBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18443, !noalias !18446, !noundef !15
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink8.i = select i1 %i.c, ptr %i.d, ptr %i.a  ; 2 uses
  %.sink8.i.promoted = load i64, ptr %.sink8.i, align 8
  %i.e = icmp ult i64 %1, %.sink8.i.promoted
  br i1 %i.e, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  store i64 %1, ptr %.sink8.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18448, !noalias !18451, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 4                    ; 4 uses
  %or.cond = icmp ult i64 %1, 576460752303423488
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit
  %i.k = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 4
  %i.o = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 4, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18453
  store i64 0, ptr %i.a, align 8, !noalias !18453
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18453
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 4) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18456, !noalias !18459, !noundef !15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !18456, !noalias !18459, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18456, !noalias !18459 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18461)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18461
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit.i, label %bb.p, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit.i
  %i.q = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit45.i, label %bb.p, !prof !18254

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18461
  %i.r = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #43, !noalias !18461 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit45.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 4
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 4, i64 noundef %i.p) #43, !noalias !18461 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18461
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !18461
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !18461
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 8 dereferenceable(136) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(136) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !18461
  %or.cond.i.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit.i, label %bb.n, !prof !18254

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18464
  store i64 0, ptr %i.a, align 8, !noalias !18464
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18464
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 4) #43, !noalias !18461
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationj1_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18467, !noalias !18470, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18467, !noalias !18470
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationj1_E8try_growBO_(ptr noalias noundef align 8 dereferenceable(152) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationj1_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18472, !noalias !18475, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 144                          ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 64051194700380387
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBJ_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBJ_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBJ_.exit
  %i.k = mul i64 %.sink.i, 144                    ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 64051194700380387
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBJ_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBJ_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBJ_.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBJ_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBJ_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul i64 %.val, 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 144                    ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 64051194700380387
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBH_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18477
  store i64 0, ptr %i.a, align 8, !noalias !18477
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !18477
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18477
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBH_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBJ_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBH_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBH_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBJ_.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBH_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures27PartialSignatureApplicationEBJ_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9Signaturej1_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !18480, !noalias !18483, !noundef !15 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18480, !noalias !18483
  %.sink9.i = select i1 %i.b, i64 %i.d, i64 %i.a  ; 3 uses
  %i.e = icmp eq i64 %.sink9.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink9.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9Signaturej1_E8try_growBO_(ptr noalias noundef align 8 dereferenceable(80) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9Signaturej1_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !15  ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !18485, !noalias !18488, !nonnull !15 ; 3 uses
  %.sink8.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink8.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink8.i, align 8, !noundef !15 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 72                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 128102389400760775
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit
  %i.j = mul i64 %.sink.i, 72                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.k = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #43 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #43 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul i64 %i.g, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul i64 %i.g, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 72                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18490
  store i64 0, ptr %i.a, align 8, !noalias !18490
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !18490
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18490
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9Signaturej3_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !18493, !noalias !18496, !noundef !15 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 3                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !18493, !noalias !18496, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18493, !noalias !18496
  %.sink9.i = select i1 %i.c, i64 %i.g, i64 %i.b  ; 3 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18498)
  %i.n = icmp ult i64 %i.b, 4                     ; 2 uses
  %.sink8.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink8.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.o = load i64, ptr %.sink8.i.i, align 8, !alias.scope !18498, !noundef !15 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18498
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.q = mul nuw nsw i64 %i.m, 72                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 128102389400760774
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit.i, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45.i, !prof !18225

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18498
  %i.r = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef 8) #43, !noalias !18498 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45.i: ; preds = %bb.i
  %i.t = mul nuw i64 %.sink.i.i, 72
  %i.u = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 8, i64 noundef %i.q) #43, !noalias !18498 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !18498
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !18498
  store i64 %i.m, ptr %0, align 8, !alias.scope !18498
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.w = mul i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.d, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = mul i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !18498
  %i.y = mul i64 %.sink.i.i, 72                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit.i, !prof !18225

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18501
  store i64 0, ptr %i.a, align 8, !noalias !18501
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.z, align 8, !noalias !18501
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18501
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 8) #43, !noalias !18498
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBJ_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.q) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdj3_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18504, !noalias !18507, !noundef !15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 3
  %i.e = load ptr, ptr %0, align 8, !alias.scope !18504, !noalias !18507, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18504, !noalias !18507 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18509)
  %i.n = icmp ult i64 %i.c, 4                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18509
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 2                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 2305843009213693951
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit.i, label %bb.p, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit.i
  %i.q = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit44.i, label %bb.p, !prof !18254

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18509
  %i.r = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #43, !noalias !18509 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit44.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 2
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 4, i64 noundef %i.p) #43, !noalias !18509 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18509
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !18509
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !18509
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !18509
  %or.cond.i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBH_.exit.i, label %bb.n, !prof !18254

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18512
  store i64 0, ptr %i.a, align 8, !noalias !18512
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18512
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBH_.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 4) #43, !noalias !18509
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit44.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBH_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdj8_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18515, !noalias !18518, !noundef !15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !18515, !noalias !18518, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18515, !noalias !18518 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18520)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18520
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 2                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 2305843009213693951
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit.i, label %bb.p, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit.i
  %i.q = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit45.i, label %bb.p, !prof !18254

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18520
  %i.r = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #43, !noalias !18520 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit45.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 2
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 4, i64 noundef %i.p) #43, !noalias !18520 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18520
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !18520
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !18520
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 8 dereferenceable(40) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(40) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !18520
  %or.cond.i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBH_.exit.i, label %bb.n, !prof !18254

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18523
  store i64 0, ptr %i.a, align 8, !noalias !18523
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18523
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBH_.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 4) #43, !noalias !18520
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBJ_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEBH_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationj3_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18526, !noalias !18529, !noundef !15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 3
  %i.e = load ptr, ptr %0, align 8, !alias.scope !18526, !noalias !18529, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18526, !noalias !18529 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18531)
  %i.n = icmp ult i64 %i.c, 4                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18531
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 288230376151711743
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBJ_.exit.i, label %bb.p, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBJ_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBJ_.exit.i
  %i.q = icmp ult i64 %i.c, 288230376151711744
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBJ_.exit45.i, label %bb.p, !prof !18254

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBJ_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18531
  %i.r = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #43, !noalias !18531 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBJ_.exit45.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 5
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 4, i64 noundef %i.p) #43, !noalias !18531 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBJ_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBJ_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18531
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !18531
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !18531
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 8 dereferenceable(104) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !18531
  %or.cond.i.i = icmp ult i64 %i.c, 288230376151711744
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBH_.exit.i, label %bb.n, !prof !18254

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18534
  store i64 0, ptr %i.a, align 8, !noalias !18534
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18534
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBH_.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 4) #43, !noalias !18531
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBJ_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic24ActiveTypeTransformationEBH_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18537, !noalias !18540, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18537, !noalias !18540
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_E8try_growBO_(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12Conjunctionsj1_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18542, !noalias !18545, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 48                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 192153584101141162
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBJ_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBJ_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBJ_.exit
  %i.k = mul i64 %.sink.i, 48                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 192153584101141162
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBJ_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBJ_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBJ_.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBJ_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBJ_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul i64 %.val, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 48                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 192153584101141162
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBH_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18547
  store i64 0, ptr %i.a, align 8, !noalias !18547
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !18547
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18547
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBH_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBJ_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBH_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBH_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBJ_.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBH_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow12ConjunctionsEBJ_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationj2_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !18550, !noalias !18553, !noundef !15 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18550, !noalias !18553
  %.sink9.i = select i1 %i.b, i64 %i.d, i64 %i.a  ; 3 uses
  %i.e = icmp eq i64 %.sink9.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink9.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationj2_E8try_growBO_(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationj2_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !15  ; 6 uses
  %i.c = icmp ult i64 %i.b, 3                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !18555, !noalias !18558, !nonnull !15 ; 3 uses
  %.sink8.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink8.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2) ; 2 uses
  %i.g = load i64, ptr %.sink8.i, align 8, !noundef !15 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 3
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 20                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 461168601842738790
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBJ_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBJ_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBJ_.exit
  %i.j = mul i64 %.sink.i, 20                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 461168601842738790
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBJ_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBJ_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.k = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 4) #43 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBJ_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 4, i64 noundef %i.i) #43 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBJ_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBJ_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul i64 %i.g, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul i64 %i.g, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 4 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 20                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 461168601842738790
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBH_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18560
  store i64 0, ptr %i.a, align 8, !noalias !18560
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !18560
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18560
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBH_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 4) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBJ_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBH_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBH_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBJ_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBH_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18NarrowingOperationEBJ_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypej2_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !18563, !noalias !18566, !noundef !15 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18563, !noalias !18566
  %.sink9.i = select i1 %i.b, i64 %i.d, i64 %i.a  ; 3 uses
  %i.e = icmp eq i64 %.sink9.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink9.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypej2_E8try_growBO_(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypej2_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !15  ; 6 uses
  %i.c = icmp ult i64 %i.b, 3                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !18568, !noalias !18571, !nonnull !15 ; 3 uses
  %.sink8.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink8.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2) ; 2 uses
  %i.g = load i64, ptr %.sink8.i, align 8, !noundef !15 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 3
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 20                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 461168601842738790
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBJ_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBJ_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBJ_.exit
  %i.j = mul i64 %.sink.i, 20                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 461168601842738790
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBJ_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBJ_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.k = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 4) #43 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBJ_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 4, i64 noundef %i.i) #43 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBJ_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBJ_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul i64 %i.g, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul i64 %i.g, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 4 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 20                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 461168601842738790
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBH_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18573
  store i64 0, ptr %i.a, align 8, !noalias !18573
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !18573
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18573
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBH_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 4) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBJ_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBH_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBH_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBJ_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBH_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow18PatternBindingTypeEBJ_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextj2_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18576, !noalias !18579, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18576, !noalias !18579
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextj2_E8try_growBO_(ptr noalias noundef align 8 dereferenceable(120) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextj2_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18581, !noalias !18584, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 56                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 164703072086692425
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBJ_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBJ_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBJ_.exit
  %i.k = mul i64 %.sink.i, 56                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 164703072086692425
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBJ_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBJ_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBJ_.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBJ_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBJ_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul i64 %.val, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 56                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 164703072086692425
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBH_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18586
  store i64 0, ptr %i.a, align 8, !noalias !18586
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !18586
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18586
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBH_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBJ_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBH_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBH_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBJ_.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBH_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextEBJ_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18589, !noalias !18592, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18589, !noalias !18592
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E8try_growBO_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypej1_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18594, !noalias !18597, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBJ_.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBJ_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBJ_.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBJ_.exit49, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBJ_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBJ_.exit49: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 4, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBJ_.exit49, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBJ_.exit49 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBH_.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18599
  store i64 0, ptr %i.a, align 8, !noalias !18599
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18599
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBH_.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 4) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBJ_.exit49, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBH_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBH_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBJ_.exit49 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBH_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEBJ_.exit49 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypej1_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18602, !noalias !18605, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18602, !noalias !18605
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypej1_E8try_growBO_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypej1_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18607, !noalias !18610, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBJ_.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBJ_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBJ_.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBJ_.exit49, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBJ_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBJ_.exit49: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 4, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBJ_.exit49, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBJ_.exit49 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBH_.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18612
  store i64 0, ptr %i.a, align 8, !noalias !18612
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18612
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBH_.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 4) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBJ_.exit49, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBH_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBH_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBJ_.exit49 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBH_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEBJ_.exit49 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionj1_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !18615, !noalias !18618, !noundef !15 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !18615, !noalias !18618, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18615, !noalias !18618
  %.sink9.i = select i1 %i.c, i64 %i.g, i64 %i.b  ; 3 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0                 ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18620)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink8.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink8.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink8.i.i, align 8, !alias.scope !18620, !noundef !15 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18620
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul i64 %i.m, 56                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 164703072086692424
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBJ_.exit.i, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBJ_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBJ_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 164703072086692425
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBJ_.exit45.i, !prof !18225

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBJ_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18620
  %i.q = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #43, !noalias !18620 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBJ_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 56
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #43, !noalias !18620 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBJ_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBJ_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !18620
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !18620
  store i64 %i.m, ptr %0, align 8, !alias.scope !18620
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul i64 %i.o, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul i64 %i.o, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !18620
  %i.x = mul i64 %.sink.i.i, 56                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 164703072086692425
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBH_.exit.i, !prof !18225

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18623
  store i64 0, ptr %i.a, align 8, !noalias !18623
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !18623
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18623
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBH_.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #43, !noalias !18620
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBJ_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides23LocalOverrideDefinitionEBH_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E13shrink_to_fitBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !18626, !noundef !15 ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit10

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.d, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit10, %bb.a
  ret void

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit10: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit
  %i.g = icmp ugt i64 %i.c, %i.e
  br i1 %i.g, label %bb.d, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.b:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit
  %i.h = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.i = mul i64 %i.h, 56                         ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.h, 164703072086692425
  br i1 %or.cond.not.i, label %bb.c, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit, !prof !18225

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18629
  store i64 0, ptr %i.a, align 8, !noalias !18629
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !18629
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18629
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.i, i64 noundef 8) #43
  store i64 0, ptr %i.b, align 8
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit10
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E8try_growBQ_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.e) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.f
  ], !prof !3

bb.e:                                             ; preds = %bb.d
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E21reserve_one_uncheckedBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noalias !18632, !noundef !15
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.thread, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !18632, !noundef !15 ; 3 uses
  switch i64 %i.d, label %bb.b [
    i64 -1, label %bb.e
    i64 0, label %.thread
  ], !prof !18635

bb.b:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true) ; 2 uses
  %i.f = lshr i64 -1, %i.e
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.e, label %.thread, !prof !18636

.thread:                                          ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit, %bb.a, %bb.b
  %i.h = phi i64 [ %i.f, %bb.b ], [ %i.d, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit ], [ 0, %bb.a ]
  %i.i = add nuw i64 %i.h, 1
  %i.j = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E8try_growBQ_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.i) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.d
  ], !prof !3

bb.c:                                             ; preds = %.thread
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.k, i64 noundef %i.l) #40
  unreachable

bb.d:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.thread
  ret void

bb.e:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E6tripleBQ_.exit, %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderj0_E8try_growBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 6 uses
  %.not = icmp eq i64 %i.c, 0                     ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !18637, !noalias !18640, !nonnull !15 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val62 = load i64, ptr %i.e, align 8           ; 3 uses
  %i.f = select i1 %.not, i64 0, i64 %.val62      ; 2 uses
  %.not41 = icmp ult i64 %1, %i.f
  br i1 %.not41, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %1, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %1, %i.c
  br i1 %.not42, label %bb.l, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %bb.l, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.h = mul i64 %1, 56                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 164703072086692425
  br i1 %or.cond.not, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBL_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBL_.exit: ; preds = %bb.f
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBL_.exit
  %i.i = mul i64 %i.c, 56                         ; 2 uses
  %or.cond61.not = icmp ugt i64 %i.c, 164703072086692425
  br i1 %or.cond61.not, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBL_.exit44, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBL_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.j = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef 8) #43 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.l, label %bb.i

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBL_.exit44: ; preds = %bb.g
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.i, i64 noundef 8, i64 noundef %i.h) #43 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBL_.exit44
  %.sroa.030.0 = phi ptr [ %i.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBL_.exit44 ], [ %i.j, %bb.h ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.f, ptr %i.e, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.n = mul i64 %.val62, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.d, i64 %i.n, i1 false)
  store i64 %.val62, ptr %i.b, align 8
  %i.o = mul i64 %i.c, 56                         ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 164703072086692425
  br i1 %or.cond.not.i, label %bb.k, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit, !prof !18225

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18642
  store i64 0, ptr %i.a, align 8, !noalias !18642
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !18642
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18642
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit: ; preds = %bb.j
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.o, i64 noundef 8) #43
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBL_.exit44, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.h, %bb.h ], [ undef, %bb.e ], [ %i.h, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBL_.exit44 ], [ %i.i, %bb.g ], [ %i.h, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBL_.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.r
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E21reserve_one_uncheckedBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !18645, !noalias !18648, !noundef !15 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18645, !noalias !18648
  %.sink9.i = select i1 %i.b, i64 %i.d, i64 %i.a  ; 3 uses
  %i.e = icmp eq i64 %.sink9.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink9.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E8try_growBQ_(ptr noalias noundef align 8 dereferenceable(368) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E8try_growBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !15  ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !18650, !noalias !18653, !nonnull !15 ; 3 uses
  %.sink8.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink8.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink8.i, align 8, !noundef !15 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 360                          ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 25620477880152155
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBL_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBL_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBL_.exit
  %i.j = mul i64 %.sink.i, 360                    ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 25620477880152155
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBL_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBL_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.k = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #43 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBL_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #43 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBL_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBL_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul i64 %i.g, 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul i64 %i.g, 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 360                    ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 25620477880152155
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBJ_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18655
  store i64 0, ptr %i.a, align 8, !noalias !18655
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !18655
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18655
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBJ_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBL_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBJ_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBJ_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBL_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBJ_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEBL_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E21reserve_one_uncheckedBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(392) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18658, !noalias !18661, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18658, !noalias !18661
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E8try_growBQ_(ptr noalias noundef align 8 dereferenceable(392) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E8try_growBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(392) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18663, !noalias !18666, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 384                          ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 24019198012642645
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBL_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBL_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBL_.exit
  %i.k = mul i64 %.sink.i, 384                    ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 24019198012642645
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBL_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBL_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBL_.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBL_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBL_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul i64 %.val, 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 384                    ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 24019198012642645
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBJ_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18668
  store i64 0, ptr %i.a, align 8, !noalias !18668
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !18668
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18668
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBJ_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBL_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBJ_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBJ_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBL_.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBJ_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEBL_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterj1_E21reserve_one_uncheckedBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18671, !noalias !18674, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18671, !noalias !18674
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterj1_E8try_growBQ_(ptr noalias noundef align 8 dereferenceable(40) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterj1_E8try_growBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18676, !noalias !18679, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 5                    ; 4 uses
  %or.cond = icmp ult i64 %1, 288230376151711744
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBL_.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBL_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBL_.exit
  %i.k = icmp ult i64 %i.c, 288230376151711744
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBL_.exit45, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBL_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBL_.exit45: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 5
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBL_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBL_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 288230376151711744
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBJ_.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18681
  store i64 0, ptr %i.a, align 8, !noalias !18681
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18681
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBJ_.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBL_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBJ_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBJ_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBL_.exit45 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBJ_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEBL_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_E21reserve_one_uncheckedBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !18684, !noalias !18687, !noundef !15 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18684, !noalias !18687
  %.sink9.i = select i1 %i.b, i64 %i.d, i64 %i.a  ; 3 uses
  %i.e = icmp eq i64 %.sink9.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink9.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_E8try_growBQ_(ptr noalias noundef align 8 dereferenceable(240) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_E8try_growBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !15  ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !18689, !noalias !18692, !nonnull !15 ; 3 uses
  %.sink8.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink8.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink8.i, align 8, !noundef !15 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 232                          ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 39755913951960240
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBL_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBL_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBL_.exit
  %i.j = mul i64 %.sink.i, 232                    ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 39755913951960240
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBL_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBL_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.k = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #43 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBL_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #43 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBL_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBL_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul i64 %i.g, 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul i64 %i.g, 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 232                    ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 39755913951960240
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBJ_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18694
  store i64 0, ptr %i.a, align 8, !noalias !18694
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !18694
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18694
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBJ_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBL_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBJ_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBJ_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBL_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBJ_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEBL_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBQ_18NarrowingProjector7project6Actionj8_E21reserve_one_uncheckedBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18697, !noalias !18700, !noundef !15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !18697, !noalias !18700, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18697, !noalias !18700 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18702)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18702
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 12                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 768614336404564649
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBL_18NarrowingProjector7project6ActionEBN_.exit.i, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBL_18NarrowingProjector7project6ActionEBN_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBL_18NarrowingProjector7project6ActionEBN_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBL_18NarrowingProjector7project6ActionEBN_.exit45.i, !prof !18225

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBL_18NarrowingProjector7project6ActionEBN_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18702
  %i.q = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #43, !noalias !18702 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBL_18NarrowingProjector7project6ActionEBN_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 12
  %i.t = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 4, i64 noundef %i.p) #43, !noalias !18702 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBL_18NarrowingProjector7project6ActionEBN_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBL_18NarrowingProjector7project6ActionEBN_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18702
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !18702
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !18702
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.c, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 8 dereferenceable(104) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul i64 %i.g, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %0, ptr nonnull align 4 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !18702
  %i.x = mul i64 %.sink.i.i, 12                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBJ_18NarrowingProjector7project6ActionEBL_.exit.i, !prof !18225

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18705
  store i64 0, ptr %i.a, align 8, !noalias !18705
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !18705
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18705
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBJ_18NarrowingProjector7project6ActionEBL_.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 4) #43, !noalias !18702
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBL_18NarrowingProjector7project6ActionEBN_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtBJ_18NarrowingProjector7project6ActionEBL_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7Keywordj1_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18708, !noalias !18711, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18708, !noalias !18711
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7Keywordj1_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7Keywordj1_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18713, !noalias !18716, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit49, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit49: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit49, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit49 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18718
  store i64 0, ptr %i.a, align 8, !noalias !18718
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18718
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit49, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit49 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsoTR8nlGN3X_18ty_python_semantic.exit49 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated4Exprj1_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18721, !noalias !18724, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18721, !noalias !18724
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated4Exprj1_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated4Exprj1_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18726, !noalias !18729, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit49, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit49: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit49, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit49 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18731
  store i64 0, ptr %i.a, align 8, !noalias !18731
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18731
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit49, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit49 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic.exit49 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryj10_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(264) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18734, !noalias !18737, !noundef !15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 16
  %i.e = load ptr, ptr %0, align 8, !alias.scope !18734, !noalias !18737, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18734, !noalias !18737 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18739)
  %i.n = icmp ult i64 %i.c, 17                    ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18739
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 16
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBJ_.exit.i, label %bb.p, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBJ_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBJ_.exit.i
  %i.q = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBJ_.exit45.i, label %bb.p, !prof !18254

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBJ_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18739
  %i.r = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #43, !noalias !18739 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBJ_.exit45.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 4
  %i.u = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 8, i64 noundef %i.p) #43, !noalias !18739 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBJ_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBJ_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18739
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !18739
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !18739
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(264) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(264) %0, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !18739
  %or.cond.i.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBH_.exit.i, label %bb.n, !prof !18254

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18742
  store i64 0, ptr %i.a, align 8, !noalias !18742
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18742
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBH_.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 8) #43, !noalias !18739
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBJ_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateRSNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression13IntervalEntryEBH_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_E21reserve_one_uncheckedBN_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18745, !noalias !18748, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18745, !noalias !18748
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_E8try_growBN_(ptr noalias noundef align 8 dereferenceable(72) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_E8try_growBN_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18750, !noalias !18753, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 5                    ; 4 uses
  %or.cond = icmp ult i64 %1, 288230376151711744
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBE_EEBI_.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBE_EEBI_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBE_EEBI_.exit
  %i.k = icmp ult i64 %i.c, 288230376151711744
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBE_EEBI_.exit45, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBE_EEBI_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBE_EEBI_.exit45: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 5
  %i.o = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 4, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBE_EEBI_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBE_EEBI_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 288230376151711744
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBC_EEBG_.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18755
  store i64 0, ptr %i.a, align 8, !noalias !18755
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18755
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBC_EEBG_.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 4) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBE_EEBI_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBC_EEBG_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBC_EEBG_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBE_EEBI_.exit45 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBC_EEBG_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBE_EEBI_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBL_10ConstraintEj8_E21reserve_one_uncheckedBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(360) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18758, !noalias !18761, !noundef !15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !18758, !noalias !18761, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18758, !noalias !18761 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18763)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18763
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 44                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 209622091746699449
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBG_10ConstraintEEBK_.exit.i, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBG_10ConstraintEEBK_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBG_10ConstraintEEBK_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.c, 209622091746699450
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBG_10ConstraintEEBK_.exit45.i, !prof !18225

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBG_10ConstraintEEBK_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18763
  %i.q = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #43, !noalias !18763 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBG_10ConstraintEEBK_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 44
  %i.t = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 4, i64 noundef %i.p) #43, !noalias !18763 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBG_10ConstraintEEBK_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBG_10ConstraintEEBK_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18763
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !18763
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !18763
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.c, 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 8 dereferenceable(360) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul i64 %i.g, 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(360) %0, ptr nonnull align 4 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !18763
  %i.x = mul i64 %.sink.i.i, 44                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.c, 209622091746699450
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBE_10ConstraintEEBI_.exit.i, !prof !18225

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18766
  store i64 0, ptr %i.a, align 8, !noalias !18766
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !18766
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18766
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBE_10ConstraintEEBI_.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 4) #43, !noalias !18763
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBG_10ConstraintEEBK_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtBE_10ConstraintEEBI_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_E21reserve_one_uncheckedBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18769, !noalias !18772, !noundef !15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !18769, !noalias !18772, !nonnull !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18769, !noalias !18772 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18774)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40, !noalias !18774
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 12                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 768614336404564649
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBG_13SourceOrderIdEhEEBK_.exit.i, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBG_13SourceOrderIdEhEEBK_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBG_13SourceOrderIdEhEEBK_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBG_13SourceOrderIdEhEEBK_.exit45.i, !prof !18225

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBG_13SourceOrderIdEhEEBK_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !18774
  %i.q = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #43, !noalias !18774 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBG_13SourceOrderIdEhEEBK_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 12
  %i.t = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 4, i64 noundef %i.p) #43, !noalias !18774 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBG_13SourceOrderIdEhEEBK_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBG_13SourceOrderIdEhEEBK_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !18774
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !18774
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !18774
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.c, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 8 dereferenceable(104) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul i64 %i.g, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %0, ptr nonnull align 4 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !18774
  %i.x = mul i64 %.sink.i.i, 12                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBE_13SourceOrderIdEhEEBI_.exit.i, !prof !18225

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18777
  store i64 0, ptr %i.a, align 8, !noalias !18777
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !18777
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18777
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBE_13SourceOrderIdEhEEBI_.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 4) #43, !noalias !18774
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBG_13SourceOrderIdEhEEBK_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #40
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBE_13SourceOrderIdEhEEBI_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBJ_Ej2_E21reserve_one_uncheckedBP_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18780, !noalias !18783, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18780, !noalias !18783
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBJ_Ej2_E8try_growBP_(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBJ_Ej2_E8try_growBP_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18785, !noalias !18788, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 24                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBE_EEBK_.exit, !prof !18225

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBE_EEBK_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBE_EEBK_.exit
  %i.k = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 384307168202282325
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBE_EEBK_.exit45, !prof !18225

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBE_EEBK_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBE_EEBK_.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 4, i64 noundef %i.j) #43 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBE_EEBK_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBE_EEBK_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul i64 %.val, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 384307168202282325
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBC_EEBI_.exit, !prof !18225

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18790
  store i64 0, ptr %i.a, align 8, !noalias !18790
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !18790
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18790
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBC_EEBI_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 4) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBE_EEBK_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBC_EEBI_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBC_EEBI_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBE_EEBK_.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBC_EEBI_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeBE_EEBK_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E17try_reserve_exactCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18793, !noalias !18796, !noundef !15 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8)
  %.val = load i64, ptr %i.d, align 8
  %i.e = select i1 %i.c, i64 %.val, i64 %i.b      ; 3 uses
  %i.f = sub i64 %.sink.i, %i.e
  %.not = icmp ult i64 %i.f, %1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, %1                         ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.g) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi i64 [ %i.k, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.j, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18798, !noalias !18801, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18798, !noalias !18801
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 6 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18803, !noalias !18806, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 6 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = icmp sgt i64 %1, -1
  br i1 %i.j, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arraybECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m

_RINvCsheqz6YZvxwl_8smallvec12layout_arraybECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arraybECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.k = icmp sgt i64 %.sink.i, -1
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arraybECsoTR8nlGN3X_18ty_python_semantic.exit51, label %bb.m

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arraybECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef 1) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arraybECsoTR8nlGN3X_18ty_python_semantic.exit51: ; preds = %bb.g
  %i.n = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %.sink.i, i64 noundef 1, i64 noundef %1) #43 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arraybECsoTR8nlGN3X_18ty_python_semantic.exit51, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arraybECsoTR8nlGN3X_18ty_python_semantic.exit51 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 8 %0, i64 %i.c, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 1 %i.f, i64 %.val, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.p = icmp sgt i64 %.sink.i, -1
  br i1 %i.p, label %_RINvCsheqz6YZvxwl_8smallvec10deallocatebECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18808
  store i64 0, ptr %i.a, align 8, !noalias !18808
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i, ptr %i.q, align 8, !noalias !18808
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18808
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocatebECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.sink.i, i64 noundef 1) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arraybECsoTR8nlGN3X_18ty_python_semantic.exit51, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocatebECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocatebECsoTR8nlGN3X_18ty_python_semantic.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %1, %bb.h ], [ undef, %bb.e ], [ %1, %_RINvCsheqz6YZvxwl_8smallvec12layout_arraybECsoTR8nlGN3X_18ty_python_semantic.exit51 ], [ %1, %bb.f ], [ %.sink.i, %bb.g ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocatebECsoTR8nlGN3X_18ty_python_semantic.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 1, %bb.h ], [ -1, %bb.e ], [ 1, %_RINvCsheqz6YZvxwl_8smallvec12layout_arraybECsoTR8nlGN3X_18ty_python_semantic.exit51 ], [ 0, %bb.f ], [ 0, %bb.g ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj1_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18811, !noalias !18814, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18811, !noalias !18814
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj1_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj1_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18816, !noalias !18819, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit49, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit49: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit49, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit49 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18821
  store i64 0, ptr %i.a, align 8, !noalias !18821
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18821
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit49, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit49 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit49 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18824, !noalias !18827, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18824, !noalias !18827
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18829, !noalias !18832, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit44, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit44: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18834
  store i64 0, ptr %i.a, align 8, !noalias !18834
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18834
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit44, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit44 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj4_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18837, !noalias !18840, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18837, !noalias !18840
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj4_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(40) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit
    i64 0, label %bb.e
  ], !prof !3

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj4_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 8 uses
  %i.d = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 4
  %i.f = load ptr, ptr %0, align 8, !alias.scope !18842, !noalias !18845, !nonnull !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 5
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.m, !prof !18254

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit45, label %bb.m, !prof !18254

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit45: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #43 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.l, !prof !18254

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18847
  store i64 0, ptr %i.a, align 8, !noalias !18847
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #40, !noalias !18847
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #43
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit45 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocatejECsoTR8nlGN3X_18ty_python_semantic.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayjECsoTR8nlGN3X_18ty_python_semantic.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsf_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E6resizeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18850, !noalias !18853, !noundef !15 ; 4 uses
  %i.c = icmp ugt i64 %i.b, 8                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18850, !noalias !18853
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 4 uses
  %i.f = icmp ugt i64 %1, %.sink9.i
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %1, %.sink9.i
  br i1 %i.g, label %.lr.ph.preheader.i, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E8truncateCsoTR8nlGN3X_18ty_python_semantic.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.sink8.i.i = select i1 %i.c, ptr %i.d, ptr %i.a
  store i64 %1, ptr %.sink8.i.i, align 8, !alias.scope !18855
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E8truncateCsoTR8nlGN3X_18ty_python_semantic.exit

bb.c:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %.sink9.i                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18858)
  %i.i = zext i1 %2 to i8                         ; 3 uses
  %.sink.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8) ; 2 uses
  %i.j = sub i64 %.sink.i.i.i, %.sink9.i
  %.not.i.i = icmp ult i64 %i.j, %i.h
  br i1 %.not.i.i, label %bb.d, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %1, 2
  %i.l = add i64 %1, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = lshr i64 -1, %i.m
  %.sroa.010.0.i.i = select i1 %i.k, i64 0, i64 %i.n ; 2 uses
  %i.o = icmp eq i64 %.sroa.010.0.i.i, -1
  br i1 %i.o, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.d
  %i.p = add nuw i64 %.sroa.010.0.i.i, 1
  %i.q = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E8try_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p) ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0        ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 -1, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge.i
    i64 0, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i
  ], !prof !7191

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge.i: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !18861, !noalias !18864 ; 2 uses
  %.pre56.i = tail call i64 @llvm.umax.i64(i64 %.pre.i, i64 8)
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.e:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.s = extractvalue { i64, i64 } %i.q, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.r, i64 noundef %i.s) #40, !noalias !18858
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #40, !noalias !18858
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge.i, %bb.c
  %.sink.i.pre-phi.i = phi i64 [ %.pre56.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge.i ], [ %.sink.i.i.i, %bb.c ] ; 4 uses
  %i.t = phi i64 [ %.pre.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E11try_reserveCsoTR8nlGN3X_18ty_python_semantic.exit._RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit_crit_edge.i ], [ %i.b, %bb.c ]
  %i.u = icmp ugt i64 %i.t, 8                     ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !alias.scope !18861, !noalias !18864, !nonnull !15
  %.sink9.i.i = select i1 %i.u, ptr %i.v, ptr %0  ; 2 uses
  %.sink8.i.i3 = select i1 %i.u, ptr %i.d, ptr %i.a ; 3 uses
  %i.w = load i64, ptr %.sink8.i.i3, align 8, !alias.scope !18858, !noundef !15 ; 6 uses
  %i.x = icmp ult i64 %i.w, %.sink.i.pre-phi.i
  br i1 %i.x, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.y = xor i64 %i.w, -1
  %i.z = add i64 %.sink.i.pre-phi.i, %i.y
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.h)
  %i.ab = add i64 %i.aa, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 33
  br i1 %min.iters.check, label %.lr.ph.i.preheader14, label %vector.ph

.lr.ph.i.preheader14:                             ; preds = %vector.body, %.lr.ph.i.preheader
  %storemerge49.i.ph = phi i64 [ %i.w, %.lr.ph.i.preheader ], [ %i.af, %vector.body ]
  %.sroa.0.048.i.ph = phi i64 [ %i.h, %.lr.ph.i.preheader ], [ %i.ag, %vector.body ]
  br label %.lr.ph.i

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.ac = and i64 %i.ab, 31                       ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = select i1 %i.ad, i64 32, i64 %i.ac
  %n.vec = sub i64 %i.ab, %i.ae                   ; 3 uses
  %i.af = add i64 %i.w, %n.vec
  %i.ag = sub i64 %i.h, %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ah = getelementptr i8, ptr %.sink9.i.i, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.ai, align 1
  store <16 x i8> %broadcast.splat, ptr %i.aj, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %.lr.ph.i.preheader14, label %vector.body, !llvm.loop !18866

._crit_edge.i:                                    ; preds = %bb.g, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.sroa.0.0.lcssa.i = phi i64 [ %i.h, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ %i.az, %bb.g ] ; 2 uses
  %storemerge.lcssa.i = phi i64 [ %i.w, %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ %.sink.i.pre-phi.i, %bb.g ]
  store i64 %storemerge.lcssa.i, ptr %.sink8.i.i3, align 8, !alias.scope !18858
  %i.al = icmp eq i64 %.sroa.0.0.lcssa.i, 0
  br i1 %i.al, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E8truncateCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph53.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader14, %bb.g
  %storemerge49.i = phi i64 [ %i.bb, %bb.g ], [ %storemerge49.i.ph, %.lr.ph.i.preheader14 ] ; 3 uses
  %.sroa.0.048.i = phi i64 [ %i.az, %bb.g ], [ %.sroa.0.048.i.ph, %.lr.ph.i.preheader14 ] ; 2 uses
  %i.am = icmp eq i64 %.sroa.0.048.i, 0
  br i1 %i.am, label %bb.h, label %bb.g

.lr.ph53.i:                                       ; preds = %._crit_edge.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E4pushCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.sroa.032.051.i = phi i64 [ %i.an, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E4pushCsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ]
  %i.an = add i64 %.sroa.032.051.i, -1            ; 2 uses
  %i.ao = load i64, ptr %i.a, align 8, !alias.scope !18867, !noalias !18872, !noundef !15 ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 8                   ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !18867, !noalias !18872, !nonnull !15
  %.sink9.i.i.i = select i1 %i.ap, ptr %i.aq, ptr %0
  %.sink8.i.i.i = select i1 %i.ap, ptr %i.d, ptr %i.a ; 2 uses
  %.sink.i.i19.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 8)
  %i.ar = load i64, ptr %.sink8.i.i.i, align 8, !alias.scope !18874, !noundef !15 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %.sink.i.i19.i
  br i1 %i.as, label %bb.f, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E4pushCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.f:                                             ; preds = %.lr.ph53.i
  tail call fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E21reserve_one_uncheckedCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.at = load ptr, ptr %0, align 8, !alias.scope !18874, !nonnull !15, !noundef !15
  %.pre.i.i = load i64, ptr %i.d, align 8, !alias.scope !18874
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E4pushCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E4pushCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.f, %.lr.ph53.i
  %i.au = phi i64 [ %.pre.i.i, %bb.f ], [ %i.ar, %.lr.ph53.i ]
  %.sroa.01.0.i.i = phi ptr [ %i.d, %bb.f ], [ %.sink8.i.i.i, %.lr.ph53.i ] ; 2 uses
  %.sroa.0.0.i20.i = phi ptr [ %i.at, %bb.f ], [ %.sink9.i.i.i, %.lr.ph53.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i20.i, i64 %i.au
  store i8 %i.i, ptr %i.av, align 1
  %i.aw = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !18874, !noundef !15
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %.sroa.01.0.i.i, align 8, !alias.scope !18874
  %i.ay = icmp eq i64 %i.an, 0
  br i1 %i.ay, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E8truncateCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph53.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.az = add i64 %.sroa.0.048.i, -1              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink9.i.i, i64 %storemerge49.i
  store i8 %i.i, ptr %i.ba, align 1
  %i.bb = add i64 %storemerge49.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %.sink.i.pre-phi.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18875

bb.h:                                             ; preds = %.lr.ph.i
  store i64 %storemerge49.i, ptr %.sink8.i.i3, align 8, !alias.scope !18858
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E8truncateCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E8truncateCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_E4pushCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.h, %._crit_edge.i, %.lr.ph.preheader.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsf_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_E6resizeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18876, !noalias !18879, !noundef !15 ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18876, !noalias !18879
end_hunk_0
