Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.15?download=true
inline.NumInlined: 7229
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals34module_type_implicit_global_symbol:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.y
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.o, i8 noundef 9, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @581)
  call void @_RINvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB6_5Place5boundNtNtB8_5types4TypeEB8_(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.eb, align 4, !alias.scope !8151
  br label %bb.ab

.loopexit:                                        ; preds = %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals34module_type_implicit_global_symbol0B7_.exit.backedge.i, %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals19module_type_symbols.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !8152)
  store i32 -1, ptr %0, align 4, !alias.scope !8153
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ec, align 4, !alias.scope !8154
  br label %bb.ab

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals34module_type_implicit_global_symbol0EB2r_.exit: ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, i8 noundef 39, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @582)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25member_lookup_with_policy(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, i8 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.c, %bb.g, %bb.i, %bb.k, %bb.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsoTR8nlGN3X_18ty_python_semantic.exit, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals34module_type_implicit_global_symbol0EB2r_.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals39module_type_implicit_global_declaration(ptr dead_on_unwind noalias noundef writable sret([36 x i8]) align 4 captures(none) dereferenceable(36) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %3, align 4, !noalias !8177
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !8177 ; 4 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !8177 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i.i, label %bb.b [
    i32 0, label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals19module_type_symbols.exit
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ], !prof !67

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i.i, i32 noundef %.sroa.9.0.copyload.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i.i, i32 noundef %.sroa.9.0.copyload.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %.sroa.5.0.copyload.i.i, i32 noundef %.sroa.9.0.copyload.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.pn.i.i = phi { i32, i32 } [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ] ; 2 uses
  %.sroa.0.1.i.i = extractvalue { i32, i32 } %.pn.i.i, 0 ; 2 uses
  %.sroa.6.1.i.i = extractvalue { i32, i32 } %.pn.i.i, 1 ; 2 uses
  store i32 0, ptr %3, align 4, !noalias !8177
  store i32 %.sroa.0.1.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !8177
  store i32 %.sroa.6.1.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !8177
  br label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals19module_type_symbols.exit

_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals19module_type_symbols.exit: ; preds = %bb.a, %bb.f
  %.pre-phi3.i = phi i32 [ %.sroa.6.1.i.i, %bb.f ], [ %.sroa.9.0.copyload.i.i, %bb.a ]
  %.pre-phi.i = phi i32 [ %.sroa.0.1.i.i, %bb.f ], [ %.sroa.5.0.copyload.i.i, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8178
  store i32 %.pre-phi.i, ptr %i.b, align 4, !noalias !8179
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.pre-phi3.i, ptr %i.h, align 4, !noalias !8179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8179
  store ptr %1, ptr %i.a, align 8, !noalias !8179
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.i, align 8, !noalias !8179
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.j, align 8, !noalias !8179
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !8179
  %.sroa.5.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i1.i, align 8, !noalias !8179
  %i.k = call { ptr, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvNtNtB2J_5place16implicit_globals25module_type_symbols_inner0E0B1T_EB2J_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8178
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %.idx = shl nuw nsw i64 %i.m, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals19module_type_symbols.exit, %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals39module_type_implicit_global_declaration0B7_.exit.backedge.i
  %i.o = phi ptr [ %i.p, %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals39module_type_implicit_global_declaration0B7_.exit.backedge.i ], [ %i.l, %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals19module_type_symbols.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.r = load i8, ptr %i.q, align 1, !range !34, !alias.scope !8180, !noalias !8181, !noundef !8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !8180, !noalias !8181, !noundef !8
  %i.u = and i64 %i.t, 72057594037927935
  %i.v = icmp ult i8 %i.r, -48
  %i.w = zext i8 %i.r to i64
  %i.x = add nsw i64 %i.w, -192
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 16)
  %.sroa.0.0.i.i.i = select i1 %i.v, i64 %spec.store.select.i.i.i, i64 %i.u
  %i.y = icmp eq i64 %.sroa.0.0.i.i.i, %5
  br i1 %i.y, label %.split.i, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals39module_type_implicit_global_declaration0B7_.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.z = icmp ugt i8 %i.r, -49
  %i.aa = load ptr, ptr %i.o, align 8, !alias.scope !8180, !noalias !8181
  %.sroa.01.0.i.i.i = select i1 %i.z, ptr %i.aa, ptr %i.o
  %bcmp.i.i = call i32 @bcmp(ptr %.sroa.01.0.i.i.i, ptr nonnull %4, i64 %5), !noalias !8181
  %i.ab = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ab, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals39module_type_implicit_global_declaration0EB2r_.exit, label %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals39module_type_implicit_global_declaration0B7_.exit.backedge.i

_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals39module_type_implicit_global_declaration0B7_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
  %.not6.i = icmp eq ptr %i.p, %i.n
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %_RNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals39module_type_implicit_global_declaration0B7_.exit.backedge.i, %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals19module_type_symbols.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !8182)
  store i32 -1, ptr %0, align 4, !alias.scope !8183
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ac, align 4, !alias.scope !8184
  br label %bb.g

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals39module_type_implicit_global_declaration0EB2r_.exit: ; preds = %.split.i
  %i.ad = call fastcc { i32, i32 } @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals22module_type_body_scope(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3) ; 2 uses
  %i.ae = extractvalue { i32, i32 } %i.ad, 0      ; 3 uses
  %i.af = extractvalue { i32, i32 } %i.ad, 1      ; 2 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.k, %bb.j, %bb.i, %.loopexit
  ret void

bb.h:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals39module_type_implicit_global_declaration0EB2r_.exit
  %i.ag = call noundef nonnull align 8 ptr @_RNvCs2O29vuvTAEJ_14ty_python_core11place_table(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, i32 noundef %i.ae, i32 noundef %i.af)
  %i.ah = call noundef i32 @_RNvMs5_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_10PlaceTable9symbol_id(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) ; 2 uses
  %.not5 = icmp eq i32 %i.ah, 0
  br i1 %.not5, label %bb.k, label %bb.j

bb.i:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5place16implicit_globals39module_type_implicit_global_declaration0EB2r_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !8185)
  store i32 -1, ptr %0, align 4, !alias.scope !8186
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ai, align 4, !alias.scope !8187
  br label %bb.g

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = call noundef nonnull align 8 ptr @_RNvCs2O29vuvTAEJ_14ty_python_core11use_def_map(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, i32 noundef %i.ae, i32 noundef %i.af)
  call void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap32end_of_scope_symbol_declarations(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.aj, i32 noundef %i.ah)
  call void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5place23place_from_declarations(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvMs6_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_27PlaceFromDeclarationsResult31ignore_conflicting_declarations(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(none) dereferenceable(36) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.k:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !8188)
  store i32 -1, ptr %0, align 4, !alias.scope !8189
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ak, align 4, !alias.scope !8190
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro31check_generic_reorder_fixes_mro(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 576460752303423488) %4, ptr noalias noundef nonnull readonly align 4 captures(address) %5, i64 noundef range(i64 0, 576460752303423488) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 4                 ; 5 uses
  %i.g = alloca [16 x i8], align 4                ; 7 uses
  %i.h = alloca [16 x i8], align 4                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 11 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 4                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 16 uses
  %i.q = alloca [16 x i8], align 4                ; 2 uses
  %i.r = alloca [16 x i8], align 4                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 12 uses
  %.idx = shl nuw nsw i64 %6, 4
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 %.idx ; 3 uses
  %i.u = icmp eq i64 %6, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.backedge.i.i.i.i.i
  %i.v = phi ptr [ %i.x, %.backedge.i.i.i.i.i ], [ %5, %bb.a ] ; 3 uses
  %i.w = phi i64 [ %i.ad, %.backedge.i.i.i.i.i ], [ 0, %bb.a ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %.val7.i.i.i.i.i = load i32, ptr %i.v, align 4, !range !61, !noalias !8242, !noundef !8 ; 2 uses
  %i.y = icmp ne i32 %.val7.i.i.i.i.i, 17
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i32 %.val7.i.i.i.i.i, 21
  br i1 %i.z, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjQNCNvNtB28_3mro31check_generic_reorder_fixes_mro0E0E0B2a_.exit.i.i.i.i.i, label %.backedge.i.i.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjQNCNvNtB28_3mro31check_generic_reorder_fixes_mro0E0E0B2a_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr i8, ptr %i.v, i64 4
  %.val8.i.i.i.i.i = load i32, ptr %i.aa, align 4, !noalias !8242 ; 2 uses
  %i.ab = icmp ne i32 %.val8.i.i.i.i.i, 5
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i32 %.val8.i.i.i.i.i, 3
  br i1 %i.ac, label %bb.b, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjQNCNvNtB28_3mro31check_generic_reorder_fixes_mro0E0E0B2a_.exit.i.i.i.i.i
  %i.ad = add nuw nsw i64 %i.w, 1
  %i.ae = icmp eq ptr %i.x, %i.t
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjQNCNvNtB28_3mro31check_generic_reorder_fixes_mro0E0E0B2a_.exit.i.i.i.i.i
  %i.af = icmp eq ptr %i.x, %i.t
  br i1 %i.af, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtB1Y_3mro31check_generic_reorder_fixes_mro0ENtCs6Wt4yPw39th_9itertools9Itertools11exactly_oneB20_.exit, label %.lr.ph.i.i.i.i22.i

.lr.ph.i.i.i.i22.i:                               ; preds = %bb.b, %.backedge.i.i.i.i25.i
  %i.ag = phi ptr [ %i.ah, %.backedge.i.i.i.i25.i ], [ %i.x, %bb.b ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.val7.i.i.i.i23.i = load i32, ptr %i.ag, align 4, !range !61, !noalias !8243, !noundef !8 ; 2 uses
  %i.ai = icmp ne i32 %.val7.i.i.i.i23.i, 17
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i32 %.val7.i.i.i.i23.i, 21
  br i1 %i.aj, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjQNCNvNtB28_3mro31check_generic_reorder_fixes_mro0E0E0B2a_.exit.i.i.i.i30.i, label %.backedge.i.i.i.i25.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjQNCNvNtB28_3mro31check_generic_reorder_fixes_mro0E0E0B2a_.exit.i.i.i.i30.i: ; preds = %.lr.ph.i.i.i.i22.i
  %i.ak = getelementptr i8, ptr %i.ag, i64 4
  %.val8.i.i.i.i31.i = load i32, ptr %i.ak, align 4, !noalias !8243 ; 2 uses
  %i.al = icmp ne i32 %.val8.i.i.i.i31.i, 5
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i32 %.val8.i.i.i.i31.i, 3
  br i1 %i.am, label %.loopexit, label %.backedge.i.i.i.i25.i

.backedge.i.i.i.i25.i:                            ; preds = %.lr.ph.i.i.i.i22.i, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjQNCNvNtB28_3mro31check_generic_reorder_fixes_mro0E0E0B2a_.exit.i.i.i.i30.i
  %i.an = icmp eq ptr %i.ah, %i.t
  br i1 %i.an, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtB1Y_3mro31check_generic_reorder_fixes_mro0ENtCs6Wt4yPw39th_9itertools9Itertools11exactly_oneB20_.exit, label %.lr.ph.i.i.i.i22.i

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtB1Y_3mro31check_generic_reorder_fixes_mro0ENtCs6Wt4yPw39th_9itertools9Itertools11exactly_oneB20_.exit: ; preds = %.backedge.i.i.i.i25.i, %bb.b
  %i.ao = icmp samesign ult i64 %i.w, %4
  br i1 %i.ao, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtB1Y_3mro31check_generic_reorder_fixes_mro0ENtCs6Wt4yPw39th_9itertools9Itertools11exactly_oneB20_.exit
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.w
  %i.aq = tail call fastcc noundef zeroext i1 @_RNvXsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_9ClassBaseNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ap, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @584)
  br i1 %i.aq, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %4
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEINtB2_12SpecFromIterB1j_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB2W_5slice4iter4IterB1j_EEE14spec_from_iterB1p_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noundef nonnull %3, ptr noundef nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE6removeB1a_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.w)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %.body.thread
  br i1 %.sroa.016.1.lpad-body65, label %.thread, label %common.resume

bb.f:                                             ; preds = %bb.ak, %bb.o, %bb.m, %bb.h, %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.at = load i8, ptr %i.r, align 4, !range !52, !noundef !8
  %.not21 = icmp eq i8 %i.at, -1
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.au = invoke noundef nonnull align 4 ptr @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE13push_back_mutB1a_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.q)
          to label %bb.m unwind label %bb.f       ; 0 uses

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtBG_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEEB1T_.exit, %bb.i
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEB1D_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.e, %.thread, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.av, %bb.k ], [ %.pn61, %.thread ], [ %eh.lpad-body66, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEB1D_.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s)
  br label %.loopexit.sink.split

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !8
  %i.az = add i64 %i.ay, 1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.az, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %bb.n unwind label %bb.f

bb.n:                                             ; preds = %bb.m
  %i.ba = load i64, ptr %i.i, align 8, !range !35, !noundef !8
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !66, !noundef !8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.bb, label %bb.o, label %bb.p, !prof !15

bb.o:                                             ; preds = %bb.n
  %i.bf = load i64, ptr %i.be, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.bf) #52
          to label %bb.at unwind label %bb.f

bb.p:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.be, align 8, !nonnull !8, !noundef !8
  %i.bh = icmp ule i64 %i.az, %i.bd
  call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.bd, ptr %i.p, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  store i64 0, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE4iterB1a_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %bb.q unwind label %.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ag, %bb.am, %bb.ah, %bb.v, %bb.u, %bb.af, %bb.p
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.q:                                             ; preds = %bb.p
  %.sroa.048.0.copyload = load i64, ptr %i.o, align 8
  %.sroa.047.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.850.0.copyload = load i64, ptr %.sroa.047.sroa.8.0..sroa_idx, align 8
  %.sroa.1051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.1051.0..sroa_idx, align 8
  %.sroa.1051.sroa.6.0..sroa.1051.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.13.0.copyload = load i64, ptr %.sroa.1051.sroa.6.0..sroa.1051.0..sroa_idx.sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.59.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.sroa.48.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.44.0..sroa.59.0..sroa_idx.i2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.6.0..sroa.59.0..sroa_idx.i2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.r

bb.r:                                             ; preds = %bb.ar, %bb.q
  %.sroa.13.0 = phi i64 [ %.sroa.13.0.copyload, %bb.q ], [ %.sroa.13.1, %bb.ar ] ; 3 uses
  %.sroa.11.0 = phi i64 [ %.sroa.11.0.copyload, %bb.q ], [ %.sroa.11.1, %bb.ar ] ; 3 uses
  %.sroa.850.0 = phi i64 [ %.sroa.850.0.copyload, %bb.q ], [ %.sroa.850.1, %bb.ar ] ; 4 uses
  %.sroa.048.0 = phi i64 [ %.sroa.048.0.copyload, %bb.q ], [ %7, %bb.ar ] ; 2 uses
  %i.bv = icmp eq i64 %.sroa.048.0, %.sroa.850.0
  br i1 %i.bv, label %bb.s, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1d_.exit

bb.s:                                             ; preds = %bb.r
  %i.bw = icmp eq i64 %.sroa.11.0, %.sroa.13.0
  br i1 %i.bw, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1d_.exit.thread, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1d_.exit

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1d_.exit: ; preds = %bb.r, %bb.s
  %.sroa.13.1 = phi i64 [ %.sroa.850.0, %bb.s ], [ %.sroa.13.0, %bb.r ]
  %.sroa.11.1 = phi i64 [ %.sroa.850.0, %bb.s ], [ %.sroa.11.0, %bb.r ]
  %.sroa.850.1 = phi i64 [ %.sroa.13.0, %bb.s ], [ %.sroa.850.0, %bb.r ]
  %.sink6.i.in = phi i64 [ %.sroa.11.0, %bb.s ], [ %.sroa.048.0, %bb.r ] ; 2 uses
  %.sink6.i = inttoptr i64 %.sink6.i.in to ptr    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 16
  %7 = ptrtoint ptr %i.bx to i64
  %.not22 = icmp eq i64 %.sink6.i.in, 0
  br i1 %.not22, label %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1d_.exit.thread, label %bb.t

bb.t:                                             ; preds = %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1d_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %.sink6.i, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %.sink6.i, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !8244)
  %i.by = load i8, ptr %i.h, align 4, !range !53, !alias.scope !8244, !noundef !8
  %i.bz = icmp eq i8 %i.by, 3
  br i1 %i.bz, label %bb.u, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit.thread

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8245
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType20static_class_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bk, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
          to label %.noexc unwind label %.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.u
  %i.ca = load i32, ptr %i.g, align 4, !noalias !8245, !noundef !8 ; 2 uses
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc
  %i.cb = load i32, ptr %i.bl, align 4, !noalias !8245, !noundef !8
  %i.cc = load <2 x i32>, ptr %i.bm, align 4, !noalias !8245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8246
  store i32 %i.ca, ptr %i.f, align 4, !noalias !8247
  store i32 %i.cb, ptr %i.bn, align 4, !noalias !8247
  store <2 x i32> %i.cc, ptr %i.e, align 8, !noalias !8247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8247
  store ptr %0, ptr %i.d, align 8, !noalias !8247
  store ptr %1, ptr %i.bo, align 8, !noalias !8247
  store ptr %0, ptr %i.bp, align 8, !noalias !8247
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !8247
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !8247
  store ptr %i.e, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !8247
  %i.cd = invoke { i64, ptr } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtB2y_14StaticMroErrorEDNtNtB2C_2db2DbEL_NCNvNvMsp_NtNtB2A_5class14static_literalNtB4d_18StaticClassLiteral7try_mro8try_mro_0E0B1T_EB2C_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %.noexc28 unwind label %.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc28:                                         ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8246
  %i.ce = extractvalue { i64, ptr } %i.cd, 0
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit.thread

bb.w:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8245
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit.thread

_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1d_.exit.thread: ; preds = %bb.s, %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1d_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %i.cg = load i64, ptr %i.bj, align 8, !alias.scope !8248, !noundef !8 ; 3 uses
  %i.ch = load i64, ptr %i.p, align 8, !range !32, !alias.scope !8248, !noundef !8
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1d_.exit.thread
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtB7_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEE8grow_oneB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.aa unwind label %bb.y, !noalias !8249

bb.y:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEB1D_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k) #50
          to label %.body.thread unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.aa:                                            ; preds = %bb.x, %_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1d_.exit.thread
  %i.cl = load ptr, ptr %i.bi, align 8, !alias.scope !8248, !nonnull !8, !noundef !8
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.cn = add i64 %i.cg, 1
  store i64 %i.cn, ptr %i.bj, align 8, !alias.scope !8248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.co = call fastcc { ptr, i64 } @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro8c3_merge(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j) ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not23 = icmp eq ptr %i.cp, null
  br i1 %.not23, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = extractvalue { ptr, i64 } %i.co, 1      ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroEBH_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = shl nuw nsw i64 %i.cq, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef range(i64 1, 0) %i.cs, i64 noundef 4) #53
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroEBH_.exit

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.loopexit.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroEBH_.exit: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEB1D_.exit, %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroEBH_.exit
  %.sroa.0.2.ph = phi i64 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroEBH_.exit ], [ 0, %bb.ad ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEB1D_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i.i.i.i.i, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjQNCNvNtB28_3mro31check_generic_reorder_fixes_mro0E0E0B2a_.exit.i.i.i.i30.i, %.loopexit.sink.split, %bb.a, %bb.c, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtB1Y_3mro31check_generic_reorder_fixes_mro0ENtCs6Wt4yPw39th_9itertools9Itertools11exactly_oneB20_.exit
  %.sroa.7.2 = phi i64 [ undef, %bb.c ], [ %i.w, %.loopexit.sink.split ], [ undef, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjQNCNvNtB28_3mro31check_generic_reorder_fixes_mro0E0E0B2a_.exit.i.i.i.i30.i ], [ undef, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtB1Y_3mro31check_generic_reorder_fixes_mro0ENtCs6Wt4yPw39th_9itertools9Itertools11exactly_oneB20_.exit ], [ undef, %bb.a ], [ undef, %.backedge.i.i.i.i.i ]
  %.sroa.0.2 = phi i64 [ 0, %bb.c ], [ %.sroa.0.2.ph, %.loopexit.sink.split ], [ 0, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjQNCNvNtB28_3mro31check_generic_reorder_fixes_mro0E0E0B2a_.exit.i.i.i.i30.i ], [ 0, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtB1Y_3mro31check_generic_reorder_fixes_mro0ENtCs6Wt4yPw39th_9itertools9Itertools11exactly_oneB20_.exit ], [ 0, %bb.a ], [ 0, %.backedge.i.i.i.i.i ]
  %i.ct = insertvalue { i64, i64 } poison, i64 %.sroa.0.2, 0
  %i.cu = insertvalue { i64, i64 } %i.ct, i64 %.sroa.7.2, 1
  ret { i64, i64 } %i.cu

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit.thread: ; preds = %bb.t, %bb.w, %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit: ; preds = %.noexc28
  %i.cv = extractvalue { i64, ptr } %i.cd, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %.val.i.i = load i64, ptr %i.cv, align 8, !range !39, !noalias !8244, !noundef !8
  %i.cw = icmp eq i64 %.val.i.i, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.cw, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit.thread, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !8250)
  call void @llvm.experimental.noalias.scope.decl(metadata !8251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cx = load i8, ptr %i.n, align 4, !range !53, !alias.scope !8251, !noundef !8
  switch i8 %i.cx, label %default.unreachable [
    i8 0, label %bb.af
    i8 1, label %bb.af
    i8 2, label %bb.af
    i8 3, label %bb.ag
    i8 4, label %bb.ah
    i8 5, label %bb.af
    i8 6, label %bb.af
  ]

default.unreachable:                              ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !8252)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8253
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType6object(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.bt, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
          to label %.noexc29 unwind label %.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.af
  store i8 3, ptr %i.c, align 4, !alias.scope !8254, !noalias !8253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.n, i64 16, i1 false), !noalias !8255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !8253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8253
  store i64 0, ptr %i.br, align 8, !alias.scope !8256
  store i64 2, ptr %.sroa.48.0..sroa_idx.i1.i, align 8, !alias.scope !8256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx.i2.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !8257
  store i64 0, ptr %i.l, align 8, !alias.scope !8256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType20iter_mro_specialized(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.br, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bs, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef 0, i32 undef)
          to label %.noexc30 unwind label %.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %bb.ag
  store i64 2, ptr %i.l, align 8, !alias.scope !8258
  br label %bb.am

bb.ah:                                            ; preds = %bb.ae
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType6object(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.bq, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
          to label %.noexc31 unwind label %.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.ah
  store i8 3, ptr %i.a, align 8, !noalias !8259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i2.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.n, i64 16, i1 false), !alias.scope !8260, !noalias !8261
  store i64 0, ptr %i.br, align 8, !alias.scope !8262
  store i64 3, ptr %.sroa.48.0..sroa_idx.i1.i, align 8, !alias.scope !8262
  store i8 5, ptr %.sroa.44.0..sroa.59.0..sroa_idx.i2.sroa_idx.i, align 8, !alias.scope !8250, !noalias !8263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.59.0..sroa_idx.i2.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !8264
  store i64 1, ptr %i.l, align 8, !alias.scope !8262
  br label %bb.am

bb.ai:                                            ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase14has_cyclic_mro.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtB7_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.thread unwind label %bb.al

end_hunk_0
