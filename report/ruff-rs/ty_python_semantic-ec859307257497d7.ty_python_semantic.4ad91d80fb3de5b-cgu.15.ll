inline.NumInlined: 7229
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvXNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB8_18StaticClassLiteral28typevars_referenced_in_basesNtB2_15CollectTypeVarsNtNtBc_7visitor11TypeVisitor24visit_generic_alias_type:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.02, i64 16, i1 false)
  call void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor30walk_type_with_recursion_guardNtNvMsp_NtNtB4_5class14static_literalNtB1v_18StaticClassLiteral28typevars_referenced_in_bases15CollectTypeVarsEB6_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB8_18StaticClassLiteral28typevars_referenced_in_basesNtB2_15CollectTypeVarsNtNtBc_7visitor11TypeVisitor25visit_bound_type_var_type(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !75

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = invoke { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBT_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d, i32 noundef %3, i32 noundef %4)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @730) #52
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !noundef !3
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.a, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %i.a, align 8, !noundef !3
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.a, align 8
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB8_18StaticClassLiteral7try_mroB1d_NtB2_11InnerTrait_8try_mro_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %5, i32 %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %.sroa.4.i.i149.i = alloca [15 x i8], align 1   ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %.sroa.4.i.i.i = alloca [15 x i8], align 1      ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 4                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 4                 ; 5 uses
  %i.i = alloca [16 x i8], align 4                ; 7 uses
  %i.j = alloca [16 x i8], align 4                ; 5 uses
  %.sroa.4.i.i.i.i = alloca [15 x i8], align 1    ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 4                ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 4                 ; 5 uses
  %i.r = alloca [16 x i8], align 4                ; 7 uses
  %.sroa.42.i.i.i = alloca [15 x i8], align 1     ; 8 uses
  %i.s = alloca [72 x i8], align 8                ; 17 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [8 x i8], align 4                 ; 5 uses
  %i.v = alloca [16 x i8], align 4                ; 7 uses
  %i.w = alloca [12 x i8], align 4                ; 22 uses
  %i.x = alloca [12 x i8], align 4                ; 4 uses
  %i.y = alloca [16 x i8], align 4                ; 6 uses
  %i.z = alloca [12 x i8], align 4                ; 4 uses
  %i.aa = alloca [12 x i8], align 4               ; 4 uses
  %i.ab = alloca [12 x i8], align 4               ; 4 uses
  %i.ac = alloca [12 x i8], align 4               ; 4 uses
  %.sroa.7227.i = alloca [16 x i8], align 8       ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [48 x i8], align 8               ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [48 x i8], align 8               ; 4 uses
  %.sroa.640.i = alloca [15 x i8], align 1        ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 13 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [56 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 9 uses
  %i.ao = alloca [16 x i8], align 4               ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 5 uses
  %i.aq = alloca [12 x i8], align 4               ; 7 uses
  %i.ar = alloca [16 x i8], align 4               ; 7 uses
  %i.as = alloca [16 x i8], align 4               ; 7 uses
  %.sroa.5208.i = alloca [15 x i8], align 1       ; 5 uses
  %i.at = alloca [56 x i8], align 8               ; 9 uses
  %i.au = alloca [24 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 4 uses
  %i.aw = alloca [48 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [40 x i8], align 8               ; 8 uses
  %i.az = alloca [32 x i8], align 8               ; 5 uses
  %i.ba = alloca [72 x i8], align 8               ; 11 uses
  %i.bb = alloca [32 x i8], align 8               ; 5 uses
  %i.bc = alloca [32 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 4               ; 7 uses
  %.sroa.417.i = alloca [15 x i8], align 1        ; 4 uses
  %i.be = alloca [16 x i8], align 4               ; 5 uses
  %i.bf = alloca [32 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 15 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [32 x i8], align 8               ; 7 uses
  %i.bj = alloca [16 x i8], align 8               ; 4 uses
  %i.bk = alloca [16 x i8], align 4               ; 6 uses
  %i.bl = alloca [12 x i8], align 4               ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 16 uses
  %i.bn = alloca [24 x i8], align 8               ; 19 uses
  %i.bo = alloca [12 x i8], align 4               ; 7 uses
  %i.bp = alloca [16 x i8], align 4               ; 7 uses
  %i.bq = alloca [16 x i8], align 4               ; 9 uses
  %i.br = alloca [16 x i8], align 4               ; 5 uses
  %.sroa.46.i = alloca [15 x i8], align 1         ; 4 uses
  %i.bs = alloca [16 x i8], align 4               ; 5 uses
  %.sroa.42.i = alloca [15 x i8], align 1         ; 4 uses
  %.sroa.6.i = alloca [31 x i8], align 1          ; 4 uses
  %.sroa.4.i = alloca [15 x i8], align 1          ; 4 uses
  %i.bt = alloca [12 x i8], align 4               ; 21 uses
  %i.bu = alloca [8 x i8], align 4                ; 7 uses
  %i.bv = alloca [24 x i8], align 8               ; 4 uses
  %i.bw = alloca [16 x i8], align 8               ; 5 uses
  %i.bx = alloca [8 x i8], align 8                ; 4 uses
  %i.by = alloca [16 x i8], align 8               ; 5 uses
  %i.bz = alloca [16 x i8], align 8               ; 5 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  %i.cb = alloca [24 x i8], align 8               ; 7 uses
  %i.cc = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.en, label %bb.b

bb.b:                                             ; preds = %bb.eq, %bb.en, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !9786)
  call void @llvm.experimental.noalias.scope.decl(metadata !9789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.640.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store i32 %5, ptr %i.bu, align 4, !noalias !9791
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 3 uses
  store i32 %6, ptr %i.ce, align 4, !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !9791
  call void @llvm.experimental.noalias.scope.decl(metadata !9792)
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !invariant.load !3, !alias.scope !9795, !noalias !9786, !nonnull !3 ; 2 uses
  %i.ch = call noundef nonnull align 8 ptr %i.cg(ptr noundef nonnull %3), !noalias !9796, !inline_history !9797 ; 2 uses
  %i.ci = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.ch), !noalias !9796
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.ci, ptr noundef nonnull align 8 %i.ch, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !noalias !9796
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i32 3, ptr %i.bt, align 4, !alias.scope !9798, !noalias !9791
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.cl = load <2 x i32>, ptr %i.ck, align 8, !noalias !9796
  store <2 x i32> %i.cl, ptr %.sroa.45.0..sroa_idx.i.i, align 4, !alias.scope !9798, !noalias !9791
  call fastcc void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral29apply_optional_specialization(ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.w, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %5, i32 %6), !noalias !9786
  %i.cm = call noundef nonnull align 8 ptr %i.cg(ptr noundef nonnull %3), !noalias !9801, !inline_history !9806 ; 2 uses
  %i.cn = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.cm), !noalias !9801
  %i.co = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.cn, ptr noundef nonnull align 8 %i.cm, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !noalias !9801
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = load i8, ptr %i.cp, align 8, !range !34, !noalias !9801, !noundef !3
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14explicit_bases.exit.i, label %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14explicit_bases.exit.thread.i

_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14explicit_bases.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9807
  store i32 %1, ptr %i.u, align 4, !noalias !9808
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %2, ptr %i.cs, align 4, !noalias !9808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9808
  store ptr %3, ptr %i.t, align 8, !noalias !9808
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %4, ptr %i.ct, align 8, !noalias !9808
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %3, ptr %i.cu, align 8, !noalias !9808
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %4, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !9808
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.u, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !9808
  %i.cv = call { ptr, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeDNtNtB1Z_2db2DbEL_NCNvNvMsp_NtNtB1X_5class14static_literalNtB39_18StaticClassLiteral14explicit_bases20explicit_bases_inner0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.t), !noalias !9786 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9807
  %i.cw = extractvalue { ptr, i64 } %i.cv, 0      ; 15 uses
  %i.cx = extractvalue { ptr, i64 } %i.cv, 1      ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
  switch i64 %i.cx, label %.lr.ph.i [
    i64 0, label %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14explicit_bases.exit.thread.i
    i64 1, label %bb.j
  ]

_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14explicit_bases.exit.thread.i: ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14explicit_bases.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !9791
  %i.cy = call noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType9is_object(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.ac, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4), !noalias !9786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9791
  br i1 %i.cy, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14explicit_bases.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !9791
  %i.cz = call noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType23has_pep_695_type_params(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.ab, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4), !noalias !9786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9791
  br i1 %i.cz, label %bb.h, label %bb.f

bb.d:                                             ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14explicit_bases.exit.thread.i
  %.sroa.4.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.4.4..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !9791
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !9811
  %i.da = call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 4, 9) 4) #53, !noalias !9811 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.e, label %_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3MroINtNtCs4NRVxsYgnAr_4core7convert4FromANtNtB6_10class_base9ClassBasej1_E4fromB8_.exit.i, !prof !110

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 16) #52, !noalias !9811
  unreachable

_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3MroINtNtCs4NRVxsYgnAr_4core7convert4FromANtNtB6_10class_base9ClassBasej1_E4fromB8_.exit.i: ; preds = %bb.d
  store i8 3, ptr %i.da, align 4, !noalias !9786
  %.sroa.4173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4173.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4.i, i64 15, i1 false), !noalias !9786
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.da, ptr %i.dc, align 8, !alias.scope !9786, !noalias !9789
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.dd, align 8, !alias.scope !9786, !noalias !9789
  store i64 -1, ptr %0, align 8, !alias.scope !9786, !noalias !9789
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB2_3Mro15of_static_class.exit

bb.f:                                             ; preds = %bb.c
  %.sroa.46.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.46.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.46.4..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !9791
  %i.de = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType6object(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.de, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %i.bt), !noalias !9786
  store i8 3, ptr %i.br, align 4, !noalias !9791
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !9816
  %i.df = call noundef align 4 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 4, 9) 4) #53, !noalias !9816 ; 5 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.g, label %_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3MroINtNtCs4NRVxsYgnAr_4core7convert4FromANtNtB6_10class_base9ClassBasej2_E4fromB8_.exit.i, !prof !110

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 32) #52, !noalias !9816
  unreachable

_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3MroINtNtCs4NRVxsYgnAr_4core7convert4FromANtNtB6_10class_base9ClassBasej2_E4fromB8_.exit.i: ; preds = %bb.f
  store i8 3, ptr %i.df, align 4, !noalias !9786
  %.sroa.4178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4178.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.46.i, i64 15, i1 false), !noalias !9786
  %.sroa.5179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5179.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %i.br, i64 16, i1 false), !noalias !9786
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.df, ptr %i.dh, align 8, !alias.scope !9786, !noalias !9789
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.di, align 8, !alias.scope !9786, !noalias !9789
  store i64 -1, ptr %0, align 8, !alias.scope !9786, !noalias !9789
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB2_3Mro15of_static_class.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.42.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.42.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.42.4..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !9791
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType6object(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.dj, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %i.bt), !noalias !9786
  store i8 3, ptr %i.bs, align 4, !alias.scope !9821, !noalias !9824
  %.sroa.6.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.6.32..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %i.bs, i64 16, i1 false), !noalias !9791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !9791
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !9826
  %i.dk = call noundef align 4 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 4, 9) 4) #53, !noalias !9826 ; 6 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.i, label %_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3MroINtNtCs4NRVxsYgnAr_4core7convert4FromANtNtB6_10class_base9ClassBasej3_E4fromB8_.exit.i, !prof !110

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 48) #52, !noalias !9826
  unreachable

_RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3MroINtNtCs4NRVxsYgnAr_4core7convert4FromANtNtB6_10class_base9ClassBasej3_E4fromB8_.exit.i: ; preds = %bb.h
  store i8 3, ptr %i.dk, align 4, !noalias !9786
  %.sroa.4175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4175.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.42.i, i64 15, i1 false), !noalias !9786
  %.sroa.5.0..sroa_idx176.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i8 5, ptr %.sroa.5.0..sroa_idx176.i, align 4, !noalias !9786
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.i, i64 31, i1 false), !noalias !9786
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !alias.scope !9786, !noalias !9789
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.dn, align 8, !alias.scope !9786, !noalias !9789
  store i64 -1, ptr %0, align 8, !alias.scope !9786, !noalias !9789
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB2_3Mro15of_static_class.exit

bb.j:                                             ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14explicit_bases.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !9791
  %i.do = call noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType23has_pep_695_type_params(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.aa, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4), !noalias !9786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9791
  br i1 %i.do, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.u, %bb.k, %bb.j, %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14explicit_bases.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !9791
  store i64 0, ptr %i.bn, align 8, !noalias !9791
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 7 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.dp, align 8, !noalias !9791
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 10 uses
  store i64 0, ptr %i.dq, align 8, !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !9791
  store i64 0, ptr %i.bm, align 8, !noalias !9791
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dr, align 8, !noalias !9791
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 4 uses
  store i64 0, ptr %i.ds, align 8, !noalias !9791
  %.idx.i = shl nuw nsw i64 %i.cx, 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i ; 4 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cx
  br label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.dw = load i32, ptr %i.cw, align 4, !range !5593, !noalias !9786, !noundef !3 ; 3 uses
  %i.dx = icmp ne i32 %i.dw, 17
  call void @llvm.assume(i1 %i.dx)
  %i.dy = add nsw i32 %i.dw, -4
  %i.dz = icmp samesign ugt i32 %i.dw, 3
  %narrow.i = select i1 %i.dz, i32 %i.dy, i32 13
  switch i32 %narrow.i, label %bb.l [
    i32 12, label %.lr.ph.i
    i32 17, label %bb.u
  ]

bb.l:                                             ; preds = %bb.u, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !9791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bp, ptr noundef nonnull align 4 dereferenceable(16) %i.cw, i64 16, i1 false), !noalias !9786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !9791
  store i32 0, ptr %i.bo, align 4, !noalias !9791
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %1, ptr %.sroa.48.0..sroa_idx.i, align 4, !noalias !9791
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %2, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !9791
  call void @llvm.experimental.noalias.scope.decl(metadata !9831)
  call void @llvm.experimental.noalias.scope.decl(metadata !9834)
  %i.ea = load i32, ptr %i.bp, align 4, !range !5593, !alias.scope !9834, !noalias !9836, !noundef !3 ; 2 uses
  %i.eb = icmp ne i32 %i.ea, 17
  call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp eq i32 %i.ea, 20
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.ee = load i8, ptr %i.ed, align 4, !range !5606, !alias.scope !9834, !noalias !9836
  %i.ef = icmp eq i8 %i.ee, 7
  %or.cond.i.i = select i1 %i.ec, i1 %i.ef, i1 false
  br i1 %or.cond.i.i, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit.thread.i.i.thread.i, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase22try_from_explicit_base.exit.i

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit.thread.i.i.thread.i: ; preds = %bb.l
  store i8 0, ptr %i.bq, align 4, !alias.scope !9831, !noalias !9839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !9791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9840
  %.sroa.42.4..sroa_idx.i.i237.i = getelementptr inbounds nuw i8, ptr %.sroa.42.i.i.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.42.4..sroa_idx.i.i237.i, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9846
  br label %bb.q

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase22try_from_explicit_base.exit.i: ; preds = %bb.l
  call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase13try_from_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bq, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %i.bt, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.bp, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.bo), !noalias !9786
  %.pr.i = load i8, ptr %i.bq, align 4, !alias.scope !9851, !noalias !9852 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !9791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !9791
  call void @llvm.experimental.noalias.scope.decl(metadata !9851)
  %.not.i.i = icmp eq i8 %.pr.i, -1
  br i1 %.not.i.i, label %bb.s, label %bb.m

bb.m:                                             ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase22try_from_explicit_base.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9840
  %i.eg = icmp eq i8 %.pr.i, 3
  br i1 %i.eg, label %bb.n, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit.thread.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9853
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType20static_class_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.r, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.eh, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4), !noalias !9857
  %i.ei = load i32, ptr %i.r, align 4, !noalias !9853, !noundef !3 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB8_18StaticClassLiteral7try_mroB1d_NtB2_11InnerTrait_8try_mro_:bb.a

bb.ar:                                            ; preds = %bb.ao
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType6object(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.gy, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %i.bt)
          to label %.noexc105.i unwind label %.thread290.loopexit.i, !noalias !9786

.noexc105.i:                                      ; preds = %bb.ar
  store i8 3, ptr %i.c, align 8, !noalias !9972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i2.i.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.bd, i64 16, i1 false), !alias.scope !9973, !noalias !9974
  store i64 0, ptr %i.gz, align 8, !alias.scope !9978, !noalias !9980
  store i64 3, ptr %.sroa.48.0..sroa_idx.i1.i.i, align 8, !alias.scope !9978, !noalias !9980
  store i8 5, ptr %.sroa.44.0..sroa.59.0..sroa_idx.i2.sroa_idx.i.i, align 8, !alias.scope !9945, !noalias !9980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.59.0..sroa_idx.i2.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !9982
  store i64 1, ptr %i.ba, align 8, !alias.scope !9978, !noalias !9980
  br label %bb.au

bb.as:                                            ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !9791
  store i64 5, ptr %i.bc, align 8, !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9983
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %.sroa.4.4..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.4.4..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !9791
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType6object(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.hw, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %i.bt)
          to label %.noexc.i.i unwind label %.thread276.i, !noalias !9989

.noexc.i.i:                                       ; preds = %bb.as
  store i8 3, ptr %i.b, align 4, !noalias !9990
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !9994
  %i.hx = call noundef align 4 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 4, 9) 4) #53, !noalias !9994 ; 7 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.at, label %bb.ba, !prof !110

bb.at:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 48) #52
          to label %.noexc1.i.i unwind label %.thread276.i, !noalias !9989

.noexc1.i.i:                                      ; preds = %bb.at
  unreachable

.thread276.i:                                     ; preds = %bb.at, %bb.as
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18StaticMroErrorKindEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bc) #50, !noalias !9999
  br label %.thread280.i

bb.au:                                            ; preds = %.noexc105.i, %.noexc104.i, %.noexc103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9791
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEINtB2_12SpecFromIterB1j_NtB1l_20ClassBaseMroIteratorE14spec_from_iterB1p_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ba)
          to label %bb.av unwind label %.thread290.loopexit.i, !noalias !9786

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !9791
  %i.ia = load i64, ptr %i.gn, align 8, !alias.scope !10000, !noalias !10003, !noundef !3 ; 3 uses
  %i.ib = load i64, ptr %i.bg, align 8, !range !2962, !alias.scope !10000, !noalias !10003, !noundef !3
  %i.ic = icmp eq i64 %i.ia, %i.ib
  br i1 %i.ic, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtB7_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEE8grow_oneB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.az unwind label %bb.ax, !noalias !10005

bb.ax:                                            ; preds = %bb.aw
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEB1D_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb) #50
          to label %.thread280.i unwind label %bb.ay, !noalias !9786

bb.ay:                                            ; preds = %bb.ax
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !9786
  unreachable

bb.az:                                            ; preds = %bb.aw, %bb.av
  %i.if = load ptr, ptr %i.gm, align 8, !alias.scope !10000, !noalias !10003, !nonnull !3, !noundef !3
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.if, i64 %i.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ig, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !9786
  %i.ih = add i64 %i.ia, 1
  store i64 %i.ih, ptr %i.gn, align 8, !alias.scope !10000, !noalias !10003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !9791
  %i.ii = icmp eq ptr %i.hd, %i.gq
  br i1 %i.ii, label %._crit_edge.loopexit.i, label %bb.aj

bb.ba:                                            ; preds = %.noexc.i.i
  store i8 3, ptr %i.hx, align 4, !noalias !10006
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.41.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4.i.i.i, i64 15, i1 false), !noalias !10006
  %.sroa.5.0..sroa_idx.i.i106.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i106.i, align 4, !noalias !10006
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 20
  store i32 1, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 4, !noalias !10006
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !10006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9983
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false), !noalias !9789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !9791
  %.sroa.4199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.hx, ptr %.sroa.4199.0..sroa_idx.i, align 8, !alias.scope !9786, !noalias !9789
  %.sroa.5200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 3, ptr %.sroa.5200.0..sroa_idx.i, align 8, !alias.scope !9786, !noalias !9789
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.bc unwind label %bb.bb, !noalias !9786

bb.bb:                                            ; preds = %bb.ba
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtB7_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.thread256.i unwind label %bb.bd, !noalias !9786

bb.bc:                                            ; preds = %bb.ba
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtB7_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtBG_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEEB1T_.exit.i unwind label %.thread263.loopexit.split-lp.i, !noalias !9786

bb.bd:                                            ; preds = %bb.bb
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !9786
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtBG_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEEB1T_.exit.i: ; preds = %bb.dr, %bb.bn, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !9791
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.bf unwind label %bb.be, !noalias !9786

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtBG_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEEB1T_.exit.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.body114.i unwind label %bb.bg, !noalias !9786

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtBG_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEEB1T_.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1d_.exit.i unwind label %bb.cp, !noalias !9786

bb.bg:                                            ; preds = %bb.be
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !9786
  unreachable

bb.bh:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !9791
  %i.in = load i64, ptr %i.gn, align 8, !alias.scope !10007, !noalias !10010, !noundef !3 ; 3 uses
  %i.io = load i64, ptr %i.bg, align 8, !range !2962, !alias.scope !10007, !noalias !10010, !noundef !3
  %i.ip = icmp eq i64 %i.in, %i.io
  br i1 %i.ip, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtB7_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEE8grow_oneB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.bl unwind label %bb.bj, !noalias !10012

bb.bj:                                            ; preds = %bb.bi
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEB1D_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.az) #50
          to label %.thread280.i unwind label %bb.bk, !noalias !9786

bb.bk:                                            ; preds = %bb.bj
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !9786
  unreachable

bb.bl:                                            ; preds = %bb.bi, %bb.bh
  %i.is = load ptr, ptr %i.gm, align 8, !alias.scope !10007, !noalias !10010, !nonnull !3, !noundef !3
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %i.in
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false), !noalias !9786
  %i.iu = add i64 %i.in, 1
  store i64 %i.iu, ptr %i.gn, align 8, !alias.scope !10007, !noalias !10010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !9791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !9791
  %i.iv = invoke fastcc { ptr, i64 } @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro8c3_merge(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.bm unwind label %bb.an, !noalias !9786 ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.iw = extractvalue { ptr, i64 } %i.iv, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !9791
  %.not69.i = icmp eq ptr %i.iw, null
  br i1 %.not69.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ix = extractvalue { ptr, i64 } %i.iv, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.iw, ptr %i.iy, align 8, !alias.scope !9786, !noalias !9789
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ix, ptr %i.iz, align 8, !alias.scope !9786, !noalias !9789
  store i64 -1, ptr %0, align 8, !alias.scope !9786, !noalias !9789
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtBG_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEEB1T_.exit.i

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !9791
  %i.ja = invoke noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType23has_pep_695_type_params(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.x, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4)
          to label %bb.bp unwind label %bb.an, !noalias !9786

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9791
  br i1 %i.ja, label %.lr.ph.i.i, label %.lr.ph356.i

.lr.ph.i.i:                                       ; preds = %bb.bp, %_RNCNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3Mro15of_static_classs2_0B8_.exit.backedge.i.i
  %i.jb = phi ptr [ %i.jc, %_RNCNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3Mro15of_static_classs2_0B8_.exit.backedge.i.i ], [ %i.cw, %bb.bp ] ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 2 uses
  %i.jd = load i32, ptr %i.jb, align 4, !range !5593, !alias.scope !10013, !noalias !10016, !noundef !3 ; 3 uses
  %i.je = icmp ne i32 %i.jd, 17
  call void @llvm.assume(i1 %i.je)
  %i.jf = add nsw i32 %i.jd, -4
  %i.jg = icmp samesign ugt i32 %i.jd, 3
  %narrow.i.i.i = select i1 %i.jg, i32 %i.jf, i32 13
  switch i32 %narrow.i.i.i, label %_RNCNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3Mro15of_static_classs2_0B8_.exit.backedge.i.i [
    i32 16, label %.split3.i.i
    i32 17, label %.split.i.i
  ]

.split3.i.i:                                      ; preds = %.lr.ph.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.ji = load i8, ptr %i.jh, align 4, !range !5606, !alias.scope !10013, !noalias !10016, !noundef !3
  %i.jj = icmp eq i8 %i.ji, 35
  br i1 %i.jj, label %bb.bq, label %_RNCNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3Mro15of_static_classs2_0B8_.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !range !3925, !alias.scope !10013, !noalias !10016, !noundef !3 ; 2 uses
  %i.jm = icmp ne i32 %i.jl, 5
  call void @llvm.assume(i1 %i.jm)
  %i.jn = icmp eq i32 %i.jl, 3
  br i1 %i.jn, label %bb.bq, label %_RNCNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3Mro15of_static_classs2_0B8_.exit.backedge.i.i

_RNCNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3Mro15of_static_classs2_0B8_.exit.backedge.i.i: ; preds = %.split.i.i, %.split3.i.i, %.lr.ph.i.i
  %.not9.i.i = icmp eq ptr %i.jc, %i.dt
  br i1 %.not9.i.i, label %.lr.ph356.i, label %.lr.ph.i.i

bb.bq:                                            ; preds = %.split.i.i, %.split3.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !9791
  store i64 4, ptr %i.av, align 8, !noalias !9791
  invoke fastcc void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_18StaticMroErrorKind14into_mro_error(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.aw, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.av, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %i.bt, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.w)
          to label %bb.dr unwind label %bb.an, !noalias !9786

.lr.ph356.i:                                      ; preds = %_RNCNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3Mro15of_static_classs2_0B8_.exit.backedge.i.i, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !9791
  store i64 0, ptr %i.at, align 8, !alias.scope !10019, !noalias !9791
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !10019, !noalias !9791
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !10019, !noalias !9791
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @411, i64 32, i1 false), !noalias !9791
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.sroa.5208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %.backedge.i, %.lr.ph356.i
  %.sroa.0203.0354.i = phi ptr [ %i.cw, %.lr.ph356.i ], [ %i.jq, %.backedge.i ] ; 2 uses
  %.sroa.7205.0353.i = phi i64 [ 0, %.lr.ph356.i ], [ %i.jr, %.backedge.i ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0203.0354.i, i64 16 ; 2 uses
  %i.jr = add nuw nsw i64 %.sroa.7205.0353.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !9791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0203.0354.i, i64 16, i1 false), !noalias !9786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !9791
  store i32 0, ptr %i.aq, align 4, !noalias !9791
  store i32 %1, ptr %.sroa.436.0..sroa_idx.i, align 4, !noalias !9791
  store i32 %2, ptr %.sroa.537.0..sroa_idx.i, align 4, !noalias !9791
  %i.js = load i32, ptr %i.ar, align 4, !range !5593, !alias.scope !10022, !noalias !10025, !noundef !3 ; 2 uses
  %i.jt = icmp ne i32 %i.js, 17
  call void @llvm.assume(i1 %i.jt)
  %i.ju = icmp eq i32 %i.js, 20
  %i.jv = load i8, ptr %i.jo, align 4, !range !5606, !alias.scope !10022, !noalias !10025
  %i.jw = icmp eq i8 %i.jv, 7
  %or.cond.i125.i = select i1 %i.ju, i1 %i.jw, i1 false
  br i1 %or.cond.i125.i, label %.thread320.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase13try_from_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.as, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %i.bt, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ar, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.aq)
          to label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase22try_from_explicit_base.exit127.i unwind label %bb.dq, !noalias !9786

.thread320.i:                                     ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !9791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5208.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !9791
  br label %bb.dk

.thread299.i:                                     ; preds = %.backedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !9791
  store i64 0, ptr %i.an, align 8, !noalias !9791
  %i.jx = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.jx, align 8, !noalias !9791
  %i.jy = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  store i64 0, ptr %i.jy, align 8, !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !9791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.at, i64 56, i1 false), !noalias !9791
  invoke void @_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtNtCscdodAO9FK5_5alloc3vec3VecjENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterB10_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.al)
          to label %bb.bu unwind label %bb.bt, !noalias !9786

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1t_.exit.i: ; preds = %.body137.i, %bb.bt
  %.pn74.pn.i = phi { ptr, i32 } [ %i.jz, %bb.bt ], [ %.pn74.i, %.body137.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro18DuplicateBaseErrorEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.an) #50
          to label %.thread256.i unwind label %bb.ch, !noalias !9786

bb.bt:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.thread.i, %.thread299.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1t_.exit.i

bb.bu:                                            ; preds = %.thread299.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !9791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !9791
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7227.i)
  %i.kc = load ptr, ptr %i.ka, align 8, !alias.scope !10029, !noalias !10032, !nonnull !3, !noundef !3
  %i.kd = load ptr, ptr %i.kb, align 8, !alias.scope !10029, !noalias !10032, !nonnull !3, !noundef !3 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.kc
  br i1 %i.ke, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.lr.ph.lr.ph.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.lr.ph.lr.ph.i: ; preds = %bb.bu
  %.sroa.744.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.lr.ph.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.lr.ph.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit143.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.lr.ph.lr.ph.i
  %i.kg = phi ptr [ %i.kd, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.lr.ph.lr.ph.i ], [ %i.mq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit143.i ]
  %.sroa.028.0.ph360.i = phi i1 [ false, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.lr.ph.lr.ph.i ], [ %.sroa.028.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit143.i ] ; 3 uses
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.i

.body137.i:                                       ; preds = %.body144.i, %bb.cz, %bb.ct, %.loopexit.split-lp.i, %.loopexit.i
  %.pn74.i = phi { ptr, i32 } [ %eh.lpad-body145.i, %.body144.i ], [ %i.ls, %bb.ct ], [ %i.mb, %bb.cz ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1y_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1t_.exit.i unwind label %bb.ch, !noalias !9786

.loopexit.i:                                      ; preds = %bb.cu
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body137.i

.loopexit.split-lp.i:                             ; preds = %bb.da
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body137.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.lr.ph.i
  %i.kh = phi ptr [ %i.kg, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.lr.ph.i ], [ %i.lv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10034)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  store ptr %i.ki, ptr %i.kb, align 8, !alias.scope !10034, !noalias !10032
  %.sroa.0225.0.copyload.i = load i64, ptr %i.kh, align 8, !noalias !10036 ; 2 uses
  %.sroa.7227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7227.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7227.0..sroa_idx.i, i64 16, i1 false), !noalias !10036
  %.not71.i = icmp eq i64 %.sroa.0225.0.copyload.i, -1
  br i1 %.not71.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.thread.i, label %bb.bv

bb.bv:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.i
  %.sroa.8230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 25
  %.sroa.7229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %.sroa.7229.0.copyload.i = load i8, ptr %.sroa.7229.0..sroa_idx.i, align 8, !noalias !10036 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.640.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.8230.0..sroa_idx.i, i64 15, i1 false), !noalias !9786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.744.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7227.i, i64 16, i1 false), !noalias !9791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7227.i)
  store i64 %.sroa.0225.0.copyload.i, ptr %i.aj, align 8, !noalias !9791
  %i.kj = load ptr, ptr %.sroa.744.sroa.6.0..sroa_idx.i, align 8, !noalias !9791, !nonnull !3, !noundef !3 ; 3 uses
  %i.kk = load i64, ptr %i.kf, align 8, !noalias !9791, !noundef !3 ; 2 uses
  %switch.i = icmp ult i64 %i.kk, 2
  br i1 %switch.i, label %bb.cs, label %bb.cw

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.thread.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit143.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.i, %bb.bu
  %.sroa.028.0.ph.lcssa.i = phi i1 [ %.sroa.028.0.ph360.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ false, %bb.bu ], [ %.sroa.028.0.ph360.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.i ], [ %.sroa.028.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit143.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7227.i)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1y_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1t_.exit130.i unwind label %bb.bt, !noalias !9786

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1t_.exit130.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtB7_3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !9791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !9791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !9791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !9791
  %i.kl = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !noalias !9791, !noundef !3 ; 2 uses
  %i.kn = icmp ult i64 %i.km, 230584300921369396
  call void @llvm.assume(i1 %i.kn)
  %i.ko = icmp eq i64 %i.km, 0
  br i1 %i.ko, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1t_.exit130.i
  br i1 %.sroa.028.0.ph.lcssa.i, label %bb.bz, label %bb.by

bb.bx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1t_.exit130.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !9791
end_hunk_1
