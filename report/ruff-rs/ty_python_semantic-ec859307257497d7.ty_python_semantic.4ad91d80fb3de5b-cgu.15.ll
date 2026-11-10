Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.15?download=true
inline.NumInlined: 7229
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral10own_fields:bb.a
  store i32 %0, ptr %i.c, align 4, !noalias !8206
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %1, ptr %i.d, align 4, !noalias !8206
  store i32 %4, ptr %i.b, align 4, !noalias !8206
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %5, ptr %i.e, align 4, !noalias !8206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8206
  store ptr %2, ptr %i.a, align 8, !noalias !8206
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.f, align 8, !noalias !8206
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.g, align 8, !noalias !8206
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !8206
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !8206
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !8206
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %6, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !8206
  %i.h = call noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal14OwnClassFieldsDNtNtB22_2db2DbEL_NCNvNvMsp_B1W_NtB1W_18StaticClassLiteral16own_fields_inner17own_fields_inner_0E0B1T_EB22_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8205
  ret ptr %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral11focus_range(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8230 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8231)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !111, !alias.scope !8231, !nonnull !111 ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr %i.c(ptr noundef nonnull %2), !noalias !8231, !inline_history !179 ; 2 uses
  %i.e = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.d), !noalias !8231
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull align 8 %i.d, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !8231 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !range !114, !noalias !8231, !noundef !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noalias !8231, !noundef !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId11python_file(i32 noundef %i.h, i32 noundef %i.j, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %3) ; 2 uses
  %i.l = extractvalue { i32, i32 } %i.k, 0
  %i.m = extractvalue { i32, i32 } %i.k, 1
  %i.n = tail call noundef nonnull align 8 ptr @_RNvNtCs56aZGHL6Dc6_7ruff_db6parsed13parsed_module(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %3, i32 noundef %i.l, i32 noundef %i.m)
  call void @_RNvMNtCs56aZGHL6Dc6_7ruff_db6parsedNtB2_12ParsedModule4load(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %3)
  %i.o = invoke noundef nonnull align 8 ptr %i.c(ptr noundef nonnull %2)
          to label %.noexc unwind label %bb.b, !inline_history !0 ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.p = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.o)
          to label %.noexc1 unwind label %bb.b

.noexc1:                                          ; preds = %.noexc
  %i.q = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull align 8 %i.o, i32 noundef range(i32 1, 0) %0, i32 noundef %1)
          to label %.noexc2 unwind label %bb.b    ; 2 uses

.noexc2:                                          ; preds = %.noexc1
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !range !114, !noalias !8232, !noundef !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i32, ptr %i.t, align 4, !noalias !8232, !noundef !111
  %i.v = invoke noundef nonnull align 4 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId4node(i32 noundef %i.s, i32 noundef %i.u, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
          to label %.noexc3 unwind label %bb.b

.noexc3:                                          ; preds = %.noexc2
  %i.w = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB5_17NodeWithScopeKind12expect_class(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.v)
          to label %.noexc4 unwind label %bb.b

.noexc4:                                          ; preds = %.noexc3
  %i.x = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12ast_node_refINtB4_10AstNodeRefNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtClassDefE4nodeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565)
          to label %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral4node.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %.noexc4, %.noexc3, %.noexc2, %.noexc1, %.noexc, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(32) %i.a) #50
          to label %common.resume unwind label %bb.h

_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral4node.exit: ; preds = %.noexc4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !noundef !111
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !111
  call void @llvm.experimental.noalias.scope.decl(metadata !8233)
  call void @llvm.experimental.noalias.scope.decl(metadata !8234)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8235)
  call void @llvm.experimental.noalias.scope.decl(metadata !8236)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !8237, !nonnull !111, !noundef !111
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !noalias !8237
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.c:                                             ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral4node.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8238)
  call void @llvm.experimental.noalias.scope.decl(metadata !8239)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !8240, !nonnull !111, !noundef !111
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !8241
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %common.resume unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.c, %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral4node.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8242)
  call void @llvm.experimental.noalias.scope.decl(metadata !8243)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !8244, !nonnull !111, !noundef !111
  %i.ao = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !8245
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.d ], [ %i.ah, %bb.e ], [ %i.y, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = insertvalue { i32, i32 } poison, i32 %i.aa, 0
  %i.as = insertvalue { i32, i32 } %i.ar, i32 %i.ac, 1
  ret { i32, i32 } %i.as

bb.h:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral11header_span(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 28)) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8250 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8252)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !111, !alias.scope !8253, !nonnull !111
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %3), !noalias !8253, !inline_history !8254 ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.c), !noalias !8253
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.c, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !noalias !8253 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !range !114, !noalias !8253, !noundef !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.i = load i32, ptr %i.h, align 4, !noalias !8253, !noundef !111
  %i.j = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId4file(i32 noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4) ; 2 uses
  %i.k = extractvalue { i32, i32 } %i.j, 0
  %i.l = extractvalue { i32, i32 } %i.j, 1
  %i.m = tail call { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral12header_range(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4) ; 2 uses
  %i.n = extractvalue { i32, i32 } %i.m, 0
  %i.o = extractvalue { i32, i32 } %i.m, 1
  store i32 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %.sroa.4.0..sroa_idx10, align 4
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.l, ptr %.sroa.5.0..sroa_idx11, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.p, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.n, ptr %.sroa.44.0..sroa_idx, align 4
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.o, ptr %.sroa.55.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral11is_protocol(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8266 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8267)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !111, !alias.scope !8267, !nonnull !111 ; 2 uses
  %i.f = tail call noundef nonnull align 8 ptr %i.e(ptr noundef nonnull %2), !noalias !8267, !inline_history !171 ; 2 uses
  %i.g = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.f), !noalias !8267
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull align 8 %i.f, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !8267
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 57
  %i.j = load i8, ptr %i.i, align 1, !range !123, !noalias !8267, !noundef !111 ; 2 uses
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %4

4:                                                ; preds = %bb.a
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 1, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 2, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 3, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 4, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 5, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 6, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 7, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 8, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 9, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 10, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 11, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 12, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 13, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 14, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 15, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 16, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 17, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 18, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 19, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 20, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 21, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 22, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 23, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 24, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 25, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 26, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 27, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 28, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 29, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 30, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 31, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 32, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 33, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 34, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 35, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 36, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 37, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 38, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 39, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 40, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 41, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 42, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 43, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 44, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 45, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 46, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 47, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 48, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 49, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 50, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 51, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 52, label %bb.b
    i8 53, label %bb.b
    i8 54, label %bb.b
    i8 55, label %bb.b
    i8 56, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 57, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 58, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 59, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 60, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 61, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 62, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 63, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 64, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 65, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 66, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 67, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 68, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 69, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 70, label %bb.b
    i8 71, label %bb.b
    i8 72, label %bb.b
    i8 73, label %bb.b
    i8 74, label %bb.b
    i8 75, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 76, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 77, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 78, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 79, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 80, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 81, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 82, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 83, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 84, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 85, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 86, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 87, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 88, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 89, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 90, label %bb.b
    i8 91, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 92, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 93, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 94, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 95, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 96, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 97, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 98, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 99, label %bb.b
    i8 100, label %bb.b
    i8 101, label %bb.b
    i8 102, label %bb.b
    i8 103, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 104, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 105, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 106, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
    i8 107, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit
  ]

default.unreachable:                              ; preds = %4
  unreachable

bb.b:                                             ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8268
  %i.k = tail call noundef nonnull align 8 ptr %i.e(ptr noundef nonnull %2), !noalias !8269, !inline_history !8263 ; 2 uses
  %i.l = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.k), !noalias !8269
  %i.m = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.l, ptr noundef nonnull align 8 %i.k, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !8269
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !range !115, !noalias !8269, !noundef !111
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_RNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB7_18StaticClassLiteral11is_protocol0Bd_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8270
  store i32 %0, ptr %i.b, align 4, !noalias !8271
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %1, ptr %i.q, align 4, !noalias !8271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8271
  store ptr %2, ptr %i.a, align 8, !noalias !8271
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.r, align 8, !noalias !8271
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.s, align 8, !noalias !8271
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !8271
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !8271
  %i.t = call { ptr, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeDNtNtB1Z_2db2DbEL_NCNvNvMsp_NtNtB1X_5class14static_literalNtB39_18StaticClassLiteral14explicit_bases20explicit_bases_inner0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !8268 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8270
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  br label %_RNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB7_18StaticClassLiteral11is_protocol0Bd_.exit

_RNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB7_18StaticClassLiteral11is_protocol0Bd_.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i.i = phi i64 [ %i.v, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.0.i.i = phi ptr [ %i.u, %bb.d ], [ inttoptr (i64 4 to ptr), %bb.c ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.3.0.i.i
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !8268
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.w, ptr %i.x, align 8, !noalias !8268
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 3, ptr %i.y, align 8, !noalias !8268
  %i.z = call noundef i8 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB32_4TakepEB2a_8try_fold5checkRB1m_uINtNtNtBb_3ops12control_flow11ControlFlowuENCINvNvB2a_3any5checkB3J_NCNCNvMsp_NtNtB1o_5class14static_literalNtB55_18StaticClassLiteral11is_protocol00E0E0IB3Q_B3P_EEB1q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y), !noalias !8268
  %spec.select.i.i = trunc i8 %i.z to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8268
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11is_protocol.exit: ; preds = %bb.b, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %_RNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB7_18StaticClassLiteral11is_protocol0Bd_.exit
  %.sroa.0.0.in = phi i1 [ %spec.select.i.i, %_RNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB7_18StaticClassLiteral11is_protocol0Bd_.exit ], [ true, %bb.b ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral11python_file(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) unnamed_addr #0 !guid !8274 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8275)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !111, !alias.scope !8275, !nonnull !111
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %2), !noalias !8275, !inline_history !179 ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.c), !noalias !8275
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.c, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !8275 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !range !114, !noalias !8275, !noundef !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.i = load i32, ptr %i.h, align 4, !noalias !8275, !noundef !111
  %i.j = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId11python_file(i32 noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %3)
  ret { i32, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral12class_member(ptr dead_on_unwind noalias noundef writable sret([36 x i8]) align 4 captures(address) dereferenceable(36) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %5, ptr noalias noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7, i8 noundef %8) unnamed_addr #0 !guid !8276 {
bb.a:
  tail call void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral18class_member_inner(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %5, i32 noundef 0, i32 undef, ptr noalias noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7, i8 noundef %8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral12header_range(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8300 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8301)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !111, !alias.scope !8301, !nonnull !111 ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr %i.c(ptr noundef nonnull %2), !noalias !8301, !inline_history !179 ; 2 uses
  %i.e = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.d), !noalias !8301
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull align 8 %i.d, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !8301 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !range !114, !noalias !8301, !noundef !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noalias !8301, !noundef !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId11python_file(i32 noundef %i.h, i32 noundef %i.j, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %3) ; 2 uses
  %i.l = extractvalue { i32, i32 } %i.k, 0
  %i.m = extractvalue { i32, i32 } %i.k, 1
  %i.n = tail call noundef nonnull align 8 ptr @_RNvNtCs56aZGHL6Dc6_7ruff_db6parsed13parsed_module(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %3, i32 noundef %i.l, i32 noundef %i.m)
  call void @_RNvMNtCs56aZGHL6Dc6_7ruff_db6parsedNtB2_12ParsedModule4load(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %3)
  %i.o = invoke noundef nonnull align 8 ptr %i.c(ptr noundef nonnull %2)
          to label %.noexc unwind label %bb.b, !inline_history !0 ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.p = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.o)
          to label %.noexc6 unwind label %bb.b

.noexc6:                                          ; preds = %.noexc
  %i.q = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull align 8 %i.o, i32 noundef range(i32 1, 0) %0, i32 noundef %1)
          to label %.noexc7 unwind label %bb.b    ; 2 uses

.noexc7:                                          ; preds = %.noexc6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !range !114, !noalias !8302, !noundef !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i32, ptr %i.t, align 4, !noalias !8302, !noundef !111
  %i.v = invoke noundef nonnull align 4 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId4node(i32 noundef %i.s, i32 noundef %i.u, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
          to label %.noexc8 unwind label %bb.b

.noexc8:                                          ; preds = %.noexc7
  %i.w = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB5_17NodeWithScopeKind12expect_class(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.v)
          to label %.noexc9 unwind label %bb.b

.noexc9:                                          ; preds = %.noexc8
  %i.x = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12ast_node_refINtB4_10AstNodeRefNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtClassDefE4nodeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565)
          to label %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral4node.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %.noexc9, %.noexc8, %.noexc7, %.noexc6, %.noexc, %bb.a, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(32) %i.a) #50
          to label %common.resume unwind label %bb.k

_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral4node.exit: ; preds = %.noexc9
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !noundef !111 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !align !113, !noundef !111 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %.sroa.0.0.in = select i1 %.not, ptr %i.ae, ptr %i.ad
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 4, !noundef !111 ; 2 uses
  %.not5 = icmp ugt i32 %i.aa, %.sroa.0.0
  br i1 %.not5, label %bb.c, label %bb.d, !prof !118

bb.c:                                             ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral4node.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @537, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @538) #52
          to label %bb.j unwind label %bb.b

bb.d:                                             ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral4node.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !8303)
  call void @llvm.experimental.noalias.scope.decl(metadata !8304)
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8305)
  call void @llvm.experimental.noalias.scope.decl(metadata !8306)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !8307, !nonnull !111, !noundef !111
  %i.ah = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !8307
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8308)
  call void @llvm.experimental.noalias.scope.decl(metadata !8309)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !8310, !nonnull !111, !noundef !111
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !8311
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %common.resume unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8312)
  call void @llvm.experimental.noalias.scope.decl(metadata !8313)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !8314, !nonnull !111, !noundef !111
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !noalias !8315
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit

bb.i:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %i.aj, %bb.g ], [ %i.y, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = insertvalue { i32, i32 } poison, i32 %i.aa, 0
  %i.au = insertvalue { i32, i32 } %i.at, i32 %.sroa.0.0, 1
  ret { i32, i32 } %i.au

bb.j:                                             ; preds = %bb.c
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral12program_file(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) unnamed_addr #0 !guid !8318 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8319)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !111, !alias.scope !8319, !nonnull !111
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %2), !noalias !8319, !inline_history !179 ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.c), !noalias !8319
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.c, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !8319 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !range !114, !noalias !8319, !noundef !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.i = load i32, ptr %i.h, align 4, !noalias !8319, !noundef !111
  %i.j = tail call { i32, i32 } @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core5scope1__NtB8_7ScopeId12program_fileDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1j_(i32 noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  ret { i32, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral13is_typed_dict(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) unnamed_addr #0 !guid !8320 {
bb.a:
  %i.a = tail call noundef i8 @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral14instance_flags(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  %i.b = trunc i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral13try_metaclass(ptr dead_on_unwind noalias noundef writable sret([44 x i8]) align 4 captures(none) dereferenceable(44) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %4) unnamed_addr #0 !guid !8332 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 5 uses
end_hunk_0
