Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.13?download=true
inline.NumInlined: 7526
inline.NumDeleted: 3512
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs_NvNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtBd_12FunctionType11variance_of1__NtB4_27variance_of__Configuration_17fn_ingredient_mut:bb.a
  %i.ay = load atomic i32, ptr %i.ax acquire, align 8, !noalias !15489
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMs1m_NtNtB1N_5types8functionNtB3n_12FunctionType11variance_of1__NtB3e_27variance_of__Configuration_17fn_ingredient_mut0E0zEB1N_.exit, label %bb.f, !prof !108

bb.f:                                             ; preds = %_RINvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB1c_12FunctionType11variance_of12variance_of_EB1g_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 480
  call void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMs1m_NtNtB1N_5types8functionNtB3i_12FunctionType11variance_of1__NtB39_27variance_of__Configuration_17fn_ingredient_mut0E0zEB1N_(ptr noundef nonnull align 8 %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
  br label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMs1m_NtNtB1N_5types8functionNtB3n_12FunctionType11variance_of1__NtB3e_27variance_of__Configuration_17fn_ingredient_mut0E0zEB1N_.exit

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMs1m_NtNtB1N_5types8functionNtB3n_12FunctionType11variance_of1__NtB3e_27variance_of__Configuration_17fn_ingredient_mut0E0zEB1N_.exit: ; preds = %_RINvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB1c_12FunctionType11variance_of12variance_of_EB1g_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.aw
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NvNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtBd_12FunctionType29last_definition_raw_signature1__NtB4_45last_definition_raw_signature__Configuration_17fn_ingredient_mut(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15503 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !109, !nonnull !109
  %i.h = tail call noundef nonnull align 8 ptr %i.g(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !109, !nonnull !109
  %i.k = tail call noundef nonnull align 8 ptr %i.j(ptr noundef nonnull %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) @28, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !15504, !noundef !109
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %select.unfold.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.q = call noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs45bxiIjzMqg_5salsa4hash12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15505)
  call void @llvm.experimental.noalias.scope.decl(metadata !15506)
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !15507, !noundef !109 ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !alias.scope !15507, !nonnull !109, !noundef !109 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ao, %bb.e ]
  %.pn.i.i.i.i = phi i64 [ %i.q, %bb.b ], [ %i.ap, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.u ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.y, align 1, !noalias !15508 ; 2 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.x
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.05.0.i33.i.i.i = phi i16 [ %i.an, %bb.d ], [ %i.aa, %bb.c ] ; 3 uses
  %i.ab = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.01.0.i.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %i.u
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [24 x i8], ptr %i.v, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -24
  %.val2.i.i.i.i = load i128, ptr %i.ah, align 8, !noalias !15509
  %i.ai = icmp eq i128 %.val2.i.i.i.i, -54977322762858885267863123008702047517
  br i1 %i.ai, label %_RINvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB1c_12FunctionType29last_definition_raw_signature30last_definition_raw_signature_EB1g_.exit, label %bb.d, !prof !108

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.e, label %select.unfold.i, !prof !107

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
  store ptr @29, ptr %i.b, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 116, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.44.0..sroa_idx.i, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #56
  unreachable

_RINvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB1c_12FunctionType29last_definition_raw_signature30last_definition_raw_signature_EB1g_.exit: ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.as = load i32, ptr %i.ar, align 4, !noundef !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa21lookup_ingredient_mut(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(1368) %i.k, i32 noundef %i.as)
  %i.at = load ptr, ptr %i.d, align 8, !nonnull !109, !noundef !109
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !109, !align !112, !noundef !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aw = call noundef nonnull align 8 ptr @_RINvMNtCs45bxiIjzMqg_5salsa10ingredientDNtB3_10IngredientEL_15assert_type_mutINtNtB5_8function14IngredientImplNtNvNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB1V_12FunctionType29last_definition_raw_signature1__45last_definition_raw_signature__Configuration_EEB1Z_(ptr noundef nonnull %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 520
  %i.ay = load atomic i32, ptr %i.ax acquire, align 8, !noalias !15510
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMs1m_NtNtB1N_5types8functionNtB3n_12FunctionType29last_definition_raw_signature1__NtB3e_45last_definition_raw_signature__Configuration_17fn_ingredient_mut0E0zEB1N_.exit, label %bb.f, !prof !108

bb.f:                                             ; preds = %_RINvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB1c_12FunctionType29last_definition_raw_signature30last_definition_raw_signature_EB1g_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 480
  call void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE10initializeNCINvB2_11get_or_initNCNvMs_NvNvMs1m_NtNtB1N_5types8functionNtB3i_12FunctionType29last_definition_raw_signature1__NtB39_45last_definition_raw_signature__Configuration_17fn_ingredient_mut0E0zEB1N_(ptr noundef nonnull align 8 %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
  br label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMs1m_NtNtB1N_5types8functionNtB3n_12FunctionType29last_definition_raw_signature1__NtB3e_45last_definition_raw_signature__Configuration_17fn_ingredient_mut0E0zEB1N_.exit

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs45bxiIjzMqg_5salsa5views18DatabaseDownCasterDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NvNvMs1m_NtNtB1N_5types8functionNtB3n_12FunctionType29last_definition_raw_signature1__NtB3e_45last_definition_raw_signature__Configuration_17fn_ingredient_mut0E0zEB1N_.exit: ; preds = %_RINvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB1c_12FunctionType29last_definition_raw_signature30last_definition_raw_signature_EB1g_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.aw
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder3add(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 4 captures(address) dead_on_return dereferenceable(16) %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #0 !guid !15536 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !109, !noundef !109 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !109, !align !112, !noundef !109 ; 7 uses
  %i.h = load i32, ptr %1, align 4, !range !133, !noundef !109 ; 2 uses
  %i.i = icmp ne i32 %i.h, 17
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i32 %i.h, 7
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !range !115, !noundef !109 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !noundef !109 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15537)
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !109, !alias.scope !15537, !nonnull !109 ; 2 uses
  %i.q = tail call noundef nonnull align 8 ptr %i.p(ptr noundef nonnull %i.e), !noalias !15538, !inline_history !159 ; 2 uses
  %i.r = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8functions4_1__NtB9_12FunctionType10ingredient5CACHE, ptr noundef nonnull align 8 %i.q), !noalias !15538
  %i.s = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeE6fieldsB12_(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull align 8 %i.q, i32 noundef range(i32 1, 0) %i.l, i32 noundef %i.n), !noalias !15538 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.s, align 8, !noalias !15537
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !15537
  %i.t = tail call noundef nonnull align 8 ptr %i.p(ptr noundef nonnull %i.e), !noalias !15539, !inline_history !181 ; 2 uses
  %i.u = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8functions1_1__NtB9_15OverloadLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.t), !noalias !15539
  %i.v = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralE6fieldsB12_(ptr noundef nonnull align 8 %i.u, ptr noundef nonnull align 8 %i.t, i32 noundef range(i32 1, 0) %.sroa.0.0.copyload, i32 noundef %.sroa.4.0.copyload), !noalias !15539
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 45
  %i.x = load i8, ptr %i.w, align 1, !noalias !15539, !noundef !109
  %i.y = and i8 %i.x, 4
  %.not41 = icmp eq i8 %i.y, 0
  br i1 %.not41, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15540)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.z, align 8, !alias.scope !15540 ; 2 uses
  store i32 -1, ptr %i.z, align 8, !alias.scope !15540
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i, label %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15540
  store i32 %.sroa.0.0.copyload.i, ptr %i.c, align 4, !noalias !15540
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i, i64 12, i1 false)
  call void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15540
  br label %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit

_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit: ; preds = %bb.c, %bb.d
  call void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %1)
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.aa = icmp eq i8 %2, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.sroa.01.0.copyload = load i32, ptr %i.ab, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.sroa.6.sroa.0.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.sroa.5.0.copyload = load i32, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.not13 = icmp eq i32 %.sroa.01.0.copyload, -1
  br i1 %.not13, label %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit24, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %.sroa.04.0.copyload = load i32, ptr %i.ac, align 8 ; 4 uses
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.sroa.66.sroa.0.0.copyload = load i32, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.66.sroa.5.0..sroa.66.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.66.sroa.5.0.copyload = load i32, ptr %.sroa.66.sroa.5.0..sroa.66.0..sroa_idx.sroa_idx, align 8
  %.not = icmp eq i32 %.sroa.04.0.copyload, -1
  br i1 %.not, label %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit18, label %bb.i

bb.h:                                             ; preds = %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 -1, ptr %i.ad, align 8
  br label %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit18

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp ne i32 %.sroa.04.0.copyload, 17
  tail call void @llvm.assume(i1 %i.ae)
  %3 = icmp eq i32 %.sroa.04.0.copyload, 7
  br i1 %3, label %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit, label %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit.thread.thread47

_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit.thread.thread47: ; preds = %bb.i
  store i32 -1, ptr %i.ac, align 8, !alias.scope !15541
  br label %bb.j

_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit: ; preds = %bb.i
  %i.af = tail call { i32, i32 } @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType15last_definition(i32 noundef %.sroa.66.sroa.0.0.copyload, i32 noundef %.sroa.66.sroa.5.0.copyload, ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.g), !noalias !15542 ; 2 uses
  %i.ag = extractvalue { i32, i32 } %i.af, 0
  %i.ah = extractvalue { i32, i32 } %i.af, 1
  %i.ai = tail call noundef zeroext i1 @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType19contains_definition(i32 noundef %i.l, i32 noundef %i.n, ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.g, i32 noundef %i.ag, i32 noundef %i.ah), !noalias !15542
  br i1 %i.ai, label %bb.h, label %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit.thread

_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit.thread: ; preds = %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit
  %.sroa.0.0.copyload.i14.pre = load i32, ptr %i.ac, align 8, !alias.scope !15543 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15543)
  store i32 -1, ptr %i.ac, align 8, !alias.scope !15543
  %.not.i15 = icmp eq i32 %.sroa.0.0.copyload.i14.pre, -1
  br i1 %.not.i15, label %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit18, label %bb.j

bb.j:                                             ; preds = %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit.thread.thread47, %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit.thread
  %.sroa.0.0.copyload.i1450 = phi i32 [ %.sroa.04.0.copyload, %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit.thread.thread47 ], [ %.sroa.0.0.copyload.i14.pre, %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15543
  store i32 %.sroa.0.0.copyload.i1450, ptr %i.b, align 4, !noalias !15543
  %.sroa.6.0..sroa_idx2.i17 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx2.i17, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.66.0..sroa_idx, i64 12, i1 false)
  call void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15543
  br label %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit18

_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit18: ; preds = %bb.g, %bb.j, %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3adds_0B9_.exit.thread, %bb.h
  call void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %1)
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.aj = icmp ne i32 %.sroa.01.0.copyload, 17
  tail call void @llvm.assume(i1 %i.aj)
  %4 = icmp eq i32 %.sroa.01.0.copyload, 7
  br i1 %4, label %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit, label %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit.thread.thread53

_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit.thread.thread53: ; preds = %bb.k
  store i32 -1, ptr %i.ab, align 8, !alias.scope !15544
  br label %bb.l

_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit: ; preds = %bb.k
  %i.ak = tail call { i32, i32 } @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType15last_definition(i32 noundef range(i32 1, 0) %i.l, i32 noundef %i.n, ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.g), !noalias !15545 ; 2 uses
  %i.al = extractvalue { i32, i32 } %i.ak, 0
  %i.am = extractvalue { i32, i32 } %i.ak, 1
  %i.an = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition5place(i32 noundef %i.al, i32 noundef %i.am, ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.g), !noalias !15545 ; 2 uses
  %i.ao = extractvalue { i32, i32 } %i.an, 0
  %i.ap = extractvalue { i32, i32 } %i.an, 1
  %i.aq = tail call { i32, i32 } @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType15last_definition(i32 noundef range(i32 1, 0) %.sroa.6.sroa.0.0.copyload, i32 noundef %.sroa.6.sroa.5.0.copyload, ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.g), !noalias !15545 ; 2 uses
  %i.ar = extractvalue { i32, i32 } %i.aq, 0
  %i.as = extractvalue { i32, i32 } %i.aq, 1
  %i.at = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition5place(i32 noundef %i.ar, i32 noundef %i.as, ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.g), !noalias !15545 ; 2 uses
  %i.au = extractvalue { i32, i32 } %i.at, 0
  %i.av = extractvalue { i32, i32 } %i.at, 1
  %i.aw = icmp eq i32 %i.ao, %i.au
  %i.ax = icmp eq i32 %i.ap, %i.av
  %spec.select.i.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %spec.select.i.i, label %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit24, label %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit.thread

_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit.thread: ; preds = %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit
  %.sroa.0.0.copyload.i20.pre = load i32, ptr %i.ab, align 8, !alias.scope !15546 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15546)
  store i32 -1, ptr %i.ab, align 8, !alias.scope !15546
  %.not.i21 = icmp eq i32 %.sroa.0.0.copyload.i20.pre, -1
  br i1 %.not.i21, label %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit24, label %bb.l

bb.l:                                             ; preds = %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit.thread.thread53, %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit.thread
  %.sroa.0.0.copyload.i2056 = phi i32 [ %.sroa.01.0.copyload, %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit.thread.thread53 ], [ %.sroa.0.0.copyload.i20.pre, %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15546
  store i32 %.sroa.0.0.copyload.i2056, ptr %i.a, align 4, !noalias !15546
  %.sroa.6.0..sroa_idx2.i23 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx2.i23, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, i64 12, i1 false)
  call void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15546
  br label %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit24

_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit24: ; preds = %bb.f, %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit, %bb.l, %_RNCNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB7_17PublicTypeBuilder3add0B9_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit18, %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit24, %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit
  %.sroa.0.1 = phi i1 [ true, %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit ], [ false, %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit24 ], [ true, %_RNvMsb_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_17PublicTypeBuilder11drain_queue.exit18 ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8functions0_1__NtB7_26DataclassTransformerParams17default_debug_fmt(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15549 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %1, ptr %i.d, align 4
  %i.e = call noundef i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_22with_attached_databaseINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB2f_3fmt5ErrorENCNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8functions0_1__NtB3g_26DataclassTransformerParams17default_debug_fmt0E0INtNtB2f_6option6OptionB2a_EEB3k_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @631, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.e to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15550
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @455, i64 noundef 26)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15550
  store i32 %0, ptr %i.a, align 4, !noalias !15550
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.g, align 4, !noalias !15550
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @456)
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15550
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8functions1_1__NtB7_15OverloadLiteral17default_debug_fmt(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15553 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %1, ptr %i.d, align 4
  %i.e = call noundef i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_22with_attached_databaseINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB2f_3fmt5ErrorENCNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8functions1_1__NtB3g_15OverloadLiteral17default_debug_fmt0E0INtNtB2f_6option6OptionB2a_EEB3k_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @631, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.e to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15554
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @457, i64 noundef 15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15554
  store i32 %0, ptr %i.a, align 4, !noalias !15554
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.g, align 4, !noalias !15554
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @456)
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15554
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8functions4_1__NtB7_12FunctionType17default_debug_fmt(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15557 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %1, ptr %i.d, align 4
  %i.e = call noundef i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_22with_attached_databaseINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB2f_3fmt5ErrorENCNvMsb_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8functions4_1__NtB3g_12FunctionType17default_debug_fmt0E0INtNtB2f_6option6OptionB2a_EEB3k_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @631, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.e to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15558
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @458, i64 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15558
  store i32 %0, ptr %i.a, align 4, !noalias !15558
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.g, align 4, !noalias !15558
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @456)
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15558
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef range(i64 4, 9) %0, i64 noundef range(i64 4, 22529) %1) unnamed_addr #1 !guid !15559 {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.a = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) %1, i64 noundef range(i64 4, 9) %0) #59 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !107

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #56
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic10diagnostic41inferred_python_version_source_annotation(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3) unnamed_addr #0 !guid !15560 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i32, ptr %i.d, align 8, !range !189, !noundef !109 ; 4 uses
  %i.f = icmp ne i32 %i.e, 5
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.e, -3
  %i.h = icmp samesign ugt i32 %i.e, 2
  %narrow = select i1 %i.h, i32 %i.g, i32 2
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 6, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCs7HL9jt3VRMY_16ty_site_packages7versionNtB2_23PythonVersionFileSource4span(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %2)
  %i.j = load i32, ptr %i.c, align 8, !range !130, !noundef !109
  %.not24 = icmp eq i32 %i.j, 2
  br i1 %.not24, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCs7HL9jt3VRMY_16ty_site_packages7versionNtB2_23PythonVersionFileSource4span(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %2)
  %i.l = load i32, ptr %i.b, align 8, !range !130, !noundef !109
  %.not23 = icmp eq i32 %i.l, 2
  br i1 %.not23, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.m, label %bb.l

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 8
end_hunk_0
