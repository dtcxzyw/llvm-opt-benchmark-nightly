Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.15?download=true
inline.NumInlined: 7229
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral16own_class_member:bb.a
  %i.cx = call noundef zeroext i1 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type14is_instance_of(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.e, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i8 noundef 88)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.cx, label %bb.k, label %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place8raw_type.exit15

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind17from_static_class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.h, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %1, i32 noundef %2)
  %i.cy = load i32, ptr %i.h, align 4, !range !174, !noundef !111
  %i.cz = icmp eq i32 %i.cy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.cz, label %bb.l, label %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place8raw_type.exit15

bb.l:                                             ; preds = %bb.k
  store i32 -1, ptr %0, align 4, !alias.scope !8459
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i16, align 4, !alias.scope !8459
  br label %bb.h

_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place8raw_type.exit15: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.749)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.749, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.745.0..sroa_idx46, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.043.0.copyload44, ptr %i.g, align 4
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.749.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.749, i64 12, i1 false)
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums26try_unwrap_nonmember_value(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %5, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.g)
  %i.da = load i32, ptr %i.f, align 4, !range !122, !noundef !111
  %.not9 = icmp eq i32 %i.da, -1
  br i1 %.not9, label %bb.o, label %bb.n

bb.m:                                             ; preds = %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place8raw_type.exit15.thread66, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.749)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %i.i, i64 36, i1 false)
  br label %bb.h

bb.n:                                             ; preds = %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place8raw_type.exit15
  %i.db = call noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums28is_enum_class_by_inheritance(ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %5, i32 noundef %1, i32 noundef %2)
  br i1 %i.db, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place8raw_type.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %0, align 4, !alias.scope !8460
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i17, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false)
  %.sroa.0.sroa.4.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i18, align 4, !alias.scope !8460
  %.sroa.0.sroa.5.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %.sroa.0.sroa.5.0..sroa_idx.i19, align 1, !alias.scope !8460
  %.sroa.0.sroa.6.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 0, ptr %.sroa.0.sroa.6.0..sroa_idx.i20, align 2, !alias.scope !8460
  %.sroa.4.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i21, align 4, !alias.scope !8460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.749)
  br label %bb.h

bb.q:                                             ; preds = %bb.i
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i22, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false)
  store i32 0, ptr %0, align 4, !alias.scope !8461
  %.sroa.0.sroa.4.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i23, align 4, !alias.scope !8461
  %.sroa.0.sroa.5.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %.sroa.0.sroa.5.0..sroa_idx.i24, align 1, !alias.scope !8461
  %.sroa.0.sroa.6.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 0, ptr %.sroa.0.sroa.6.0..sroa_idx.i25, align 2, !alias.scope !8461
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i26, align 4, !alias.scope !8461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.h

bb.r:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dc = load ptr, ptr %i.z, align 8, !nonnull !111, !noundef !111
  %i.dd = load i64, ptr %i.ae, align 8, !noundef !111
  call fastcc void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral18implicit_attribute(ptr noalias noundef align 4 captures(address) dereferenceable(36) %0, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %i.bv, i32 noundef %i.bx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef %i.dd, i8 noundef 1)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral16validate_members(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8471 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [40 x i8], align 16               ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [80 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [36 x i8], align 4                ; 7 uses
  %i.o = alloca [40 x i8], align 16               ; 6 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [12 x i8], align 4                ; 6 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !111, !noundef !111 ; 11 uses
  %i.r = getelementptr i8, ptr %2, i64 8
  %.val55 = load ptr, ptr %i.r, align 8, !nonnull !111, !align !113, !noundef !111 ; 9 uses
  %i.s = getelementptr i8, ptr %2, i64 16
  %.val56 = load ptr, ptr %i.s, align 8, !nonnull !111, !align !112, !noundef !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind17from_static_class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.q, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, i32 noundef %0, i32 noundef %1)
  %i.t = load i32, ptr %i.q, align 4, !range !174, !noundef !111 ; 5 uses
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.679.0.copyload = load i64, ptr %.sroa.679.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !8472)
  %i.u = getelementptr inbounds nuw i8, ptr %.val55, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !111, !alias.scope !8472, !nonnull !111 ; 3 uses
  %i.w = call noundef nonnull align 8 ptr %i.v(ptr noundef nonnull %.val), !noalias !8472, !inline_history !179 ; 2 uses
  %i.x = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.w), !noalias !8472
  %i.y = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.w, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !8472 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !range !114, !noalias !8472, !noundef !111 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !8472, !noundef !111 ; 2 uses
  %i.ad = call noundef nonnull align 8 ptr @_RNvCs2O29vuvTAEJ_14ty_python_core11place_table(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val55, i32 noundef %i.aa, i32 noundef %i.ac) ; 2 uses
  %i.ae = call noundef nonnull align 8 ptr @_RNvCs2O29vuvTAEJ_14ty_python_core11use_def_map(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val55, i32 noundef %i.aa, i32 noundef %i.ac) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load i64, ptr %i.af, align 8, !noundef !111 ; 2 uses
  %.not116 = icmp eq i64 %i.ag, 0
  br i1 %.not116, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.815.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.1017.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.old104 = icmp eq i32 %i.t, 0                  ; 2 uses
  %.sroa.679.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.am = getelementptr i8, ptr %2, i64 32        ; 2 uses
  %i.an = getelementptr i8, ptr %2, i64 36        ; 2 uses
  %i.ao = getelementptr i8, ptr %2, i64 48        ; 2 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.4.0115 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %.backedge ] ; 2 uses
  %i.ar = add nuw i64 %.sroa.4.0115, 1            ; 2 uses
  %i.as = call noundef range(i32 1, 0) i32 @_RNvMs9_NtCs2O29vuvTAEJ_14ty_python_core6symbolNtB5_14ScopedSymbolId10from_usize(i64 noundef %.sroa.4.0115), !noalias !8473 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap32end_of_scope_symbol_declarations(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ae, i32 noundef %i.as)
  %.sroa.1017.8.copyload = load i8, ptr %.sroa.1017.8..sroa_idx, align 16
  %i.at = load <2 x ptr>, ptr %i.b, align 16
  %i.au = load <2 x ptr>, ptr %.sroa.815.8..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store <2 x ptr> %i.at, ptr %i.o, align 16
  store i8 %.sroa.1017.8.copyload, ptr %i.ah, align 16
  store <2 x ptr> %i.au, ptr %i.ai, align 16
  call void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5place23place_from_declarations(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.p, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs6_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_27PlaceFromDeclarationsResult31ignore_conflicting_declarations(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(none) dereferenceable(36) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.p)
  %i.av = load i64, ptr %i.aj, align 8, !noundef !111 ; 2 uses
  %i.aw = add i32 %i.as, -1
  %i.ax = zext i32 %i.aw to i64                   ; 3 uses
  %i.ay = icmp ugt i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.e, label %bb.f

.loopexit:                                        ; preds = %.backedge, %bb.b, %bb.c
  ret void

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.ak, align 8, !nonnull !111, !noundef !111
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ax ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.ba, ptr %i.m, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8474)
  %i.bb = load i32, ptr %i.n, align 4, !range !162, !alias.scope !8475, !noundef !111
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %.backedge, label %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit

_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit: ; preds = %bb.e
  %.sroa.072.0.copyload = load i32, ptr %i.al, align 4, !alias.scope !8476
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !alias.scope !8476 ; 2 uses
  %.sroa.773.0.copyload = load i32, ptr %.sroa.773.0..sroa_idx, align 4, !alias.scope !8476 ; 2 uses
  %.not46 = icmp eq i32 %.sroa.072.0.copyload, 7
  br i1 %.not46, label %bb.g, label %.backedge

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @543) #52
  unreachable

.backedge:                                        ; preds = %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit, %bb.e, %bb.o, %bb.g, %bb.w, %bb.s, %bb.p, %bb.l, %bb.ah, %bb.ad, %bb.i, %bb.j, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %exitcond.not = icmp eq i64 %i.ar, %i.ag
  br i1 %exitcond.not, label %.loopexit, label %bb.d

bb.g:                                             ; preds = %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 15
  %i.be = load i8, ptr %i.bd, align 1, !range !137, !alias.scope !8477, !noundef !111 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !8477, !noundef !111
  %i.bh = and i64 %i.bg, 72057594037927935
  %i.bi = icmp ult i8 %i.be, -48
  %i.bj = zext i8 %i.be to i64
  %i.bk = add nsw i64 %i.bj, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.bk, i64 16)
  %.sroa.0.0.i65 = select i1 %i.bi, i64 %spec.store.select.i, i64 %i.bh
  %i.bl = icmp ugt i8 %i.be, -49
  %i.bm = load ptr, ptr %i.ba, align 8, !alias.scope !8477
  %.sroa.01.0.i = select i1 %i.bl, ptr %i.bm, ptr %i.ba ; 12 uses
  switch i64 %.sroa.0.0.i65, label %.backedge [
    i64 11, label %bb.h
    i64 6, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.bn = load i64, ptr %.sroa.01.0.i, align 1
  %i.bo = xor i64 %i.bn, 8391439158244237151
  %i.bp = getelementptr i8, ptr %.sroa.01.0.i, i64 3
  %i.bq = load i64, ptr %i.bp, align 1
  %i.br = xor i64 %i.bq, 6872337400884982885
  %i.bs = or i64 %i.bo, %i.br
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.old104, label %bb.aa, label %.backedge

bb.j:                                             ; preds = %bb.h
  %i.bw = load i64, ptr %.sroa.01.0.i, align 1
  %i.bx = xor i64 %i.bw, 8391439123883515743
  %i.by = getelementptr i8, ptr %.sroa.01.0.i, i64 3
  %i.bz = load i64, ptr %i.by, align 1
  %i.ca = xor i64 %i.bz, 6872337400884980837
  %i.cb = or i64 %i.bx, %i.ca
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = or i32 %i.cd, %i.t
  %or.cond = icmp eq i32 %i.ce, 0
  br i1 %or.cond, label %bb.aa, label %.backedge

bb.k:                                             ; preds = %bb.g
  %i.cf = load i32, ptr %.sroa.01.0.i, align 1
  %i.cg = xor i32 %i.cf, 1953259359
  %i.ch = getelementptr i8, ptr %.sroa.01.0.i, i64 4
  %i.ci = load i16, ptr %i.ch, align 1
  %i.cj = zext i16 %i.ci to i32
  %i.ck = xor i32 %i.cj, 24415
  %i.cl = or i32 %i.cg, %i.ck
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.k
  br i1 %.old104, label %bb.p, label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.cp = load i32, ptr %.sroa.01.0.i, align 1
  %i.cq = xor i32 %i.cp, 1701601119
  %i.cr = getelementptr i8, ptr %.sroa.01.0.i, i64 4
  %i.cs = load i16, ptr %i.cr, align 1
  %i.ct = zext i16 %i.cs to i32
  %i.cu = xor i32 %i.ct, 24415
  %i.cv = or i32 %i.cq, %i.cu
  %i.cw = icmp ne i32 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = load i32, ptr %.sroa.01.0.i, align 1
  %i.da = xor i32 %i.cz, 1952931679
  %i.db = getelementptr i8, ptr %.sroa.01.0.i, i64 4
  %i.dc = load i16, ptr %i.db, align 1
  %i.dd = zext i16 %i.dc to i32
  %i.de = xor i32 %i.dd, 24415
  %i.df = or i32 %i.da, %i.de
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.l, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = load i32, ptr %.sroa.01.0.i, align 1
  %i.dk = xor i32 %i.dj, 1701273439
  %i.dl = getelementptr i8, ptr %.sroa.01.0.i, i64 4
  %i.dm = load i16, ptr %i.dl, align 1
  %i.dn = zext i16 %i.dm to i32
  %i.do = xor i32 %i.dn, 24415
  %i.dp = or i32 %i.dk, %i.do
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = or i32 %i.dr, %i.t
  %or.cond105 = icmp eq i32 %i.ds, 0
  br i1 %or.cond105, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.t, ptr %i.a, align 4
  store i64 %.sroa.679.0.copyload, ptr %.sroa.679.0..sroa_idx82, align 4
  %i.dt = call noundef zeroext i1 @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral19has_dataclass_param(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, i16 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.dt, label %bb.q, label %.backedge

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.val61 = load i32, ptr %i.am, align 8, !range !114, !noundef !111
  %.val62 = load i32, ptr %i.an, align 4, !noundef !111
  %.val64 = load ptr, ptr %i.ao, align 8, !nonnull !111, !align !113, !noundef !111
  %i.du = call noundef nonnull align 8 ptr @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType4node(i32 noundef %.sroa.6.0.copyload, i32 noundef %.sroa.773.0.copyload, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, i32 noundef %.val61, i32 noundef %.val62, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val64)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.g, ptr noundef nonnull align 8 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic26INVALID_DATACLASS_OVERRIDE, ptr noundef nonnull align 8 %i.du)
  %i.dv = load i64, ptr %i.g, align 8, !range !128, !noundef !111
  %.not50 = icmp eq i64 %i.dv, -2
  br i1 %.not50, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dw = invoke noundef nonnull align 8 ptr %i.v(ptr noundef nonnull %.val)
          to label %.noexc unwind label %bb.z, !inline_history !183 ; 2 uses

.noexc:                                           ; preds = %bb.r
  %i.dx = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.dw)
          to label %.noexc66 unwind label %bb.z

.noexc66:                                         ; preds = %.noexc
  %i.dy = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.dx, ptr noundef nonnull align 8 %i.dw, i32 noundef range(i32 1, 0) %0, i32 noundef %1)
          to label %_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB8_18StaticClassLiteral4nameDNtNtBe_2db2DbEL_EBe_.exit unwind label %bb.z

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.backedge

_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB8_18StaticClassLiteral4nameDNtNtBe_2db2DbEL_EBe_.exit: ; preds = %.noexc66
  store ptr %i.dy, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.430.0..sroa_idx, align 8
  store ptr %i.d, ptr %i.ap, align 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.434.0..sroa_idx, align 8
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.e, ptr noundef nonnull @548, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dz = invoke noundef nonnull align 8 ptr @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_19LintDiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.u, %_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB8_18StaticClassLiteral4nameDNtNtBe_2db2DbEL_EBe_.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f) #50
          to label %bb.y unwind label %bb.x

bb.u:                                             ; preds = %_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB8_18StaticClassLiteral4nameDNtNtBe_2db2DbEL_EBe_.exit
  %i.eb = load ptr, ptr %i.m, align 8, !nonnull !111, !align !113, !noundef !111
  %i.ec = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eb)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noalias noundef nonnull align 8 %i.ec)
          to label %bb.w unwind label %bb.t

bb.w:                                             ; preds = %bb.v
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.backedge

bb.x:                                             ; preds = %bb.ai, %bb.ae, %bb.z, %bb.t
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.y:                                             ; preds = %bb.ai, %bb.ae, %bb.z, %bb.t
  %.pn = phi { ptr, i32 } [ %i.em, %bb.ae ], [ %lpad.thr_comm98, %bb.ai ], [ %lpad.thr_comm, %bb.z ], [ %i.ea, %bb.t ]
  resume { ptr, i32 } %.pn

bb.z:                                             ; preds = %.noexc66, %bb.r, %.noexc
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.e) #50
          to label %bb.y unwind label %bb.x

bb.aa:                                            ; preds = %bb.j, %bb.i
  %i.ee = call noundef i8 @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral19is_frozen_dataclass(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55)
  %i.ef = and i8 %i.ee, 1
  %or.cond.not = icmp eq i8 %i.ef, 0
  br i1 %or.cond.not, label %.backedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
end_hunk_0
begin_hunk_1_@_RNvXNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB8_18StaticClassLiteral16own_fields_innerB1d_NtB2_11InnerTrait_17own_fields_inner_:bb.a

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit.lr.ph, %bb.ch
  %i.fp = phi ptr [ %i.jt, %bb.ch ], [ %i.eo, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit.lr.ph ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10691)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  store ptr %i.fq, ptr %.sroa.411.0..sroa_idx, align 8, !alias.scope !10691
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %.sroa.5130.0.copyload = load i32, ptr %.sroa.5130.0..sroa_idx, align 4, !noalias !10691 ; 2 uses
  %.sroa.6131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.sroa.6131.sroa.0.0.copyload = load ptr, ptr %.sroa.6131.0..sroa_idx, align 8, !noalias !10691 ; 2 uses
  %.sroa.6131.sroa.6.0..sroa.6131.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %.sroa.6131.sroa.6.0.copyload = load i64, ptr %.sroa.6131.sroa.6.0..sroa.6131.0..sroa_idx.sroa_idx, align 8, !noalias !10691 ; 2 uses
  %.sroa.6131.sroa.7.0..sroa.6131.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load <2 x i32>, ptr %.sroa.6131.sroa.7.0..sroa.6131.0..sroa_idx.sroa_idx, align 8, !noalias !10691 ; 3 uses
  %.sroa.7132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %.sroa.7132.0.copyload = load i32, ptr %.sroa.7132.0..sroa_idx, align 8, !noalias !10691 ; 2 uses
  %.not41 = icmp eq i32 %.sroa.7132.0.copyload, -2
  br i1 %.not41, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.9.0..sroa_idx, i64 36, i1 false)
  %i.fs = load i64, ptr %i.dj, align 8, !noundef !111 ; 2 uses
  %i.ft = add i32 %.sroa.5130.0.copyload, -1
  %i.fu = zext i32 %i.ft to i64                   ; 3 uses
  %.not = icmp ugt i64 %i.fs, %i.fu
  br i1 %.not, label %bb.ai, label %.split.us

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit.thread: ; preds = %.outer, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit, %bb.ch, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit.us, %bb.ab, %bb.t
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2K_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1v_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEEEB3d_.exit79 unwind label %bb.ad

bb.ad:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1v_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEEEB3d_.exit79
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1v_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEEEB3d_.exit79: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldE9shrink_toB1z_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac, i64 noundef 0)
          to label %bb.ae unwind label %bb.ad

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB1v_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEEEB3d_.exit79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.fw = invoke { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE16into_boxed_sliceCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB25_(ptr noalias noundef align 8 dereferenceable(56) %i.m) #50
          to label %common.resume unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fy = extractvalue { ptr, i64 } %i.fw, 0
  %i.fz = extractvalue { ptr, i64 } %i.fw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.fy, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.fz, ptr %i.gb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  ret void

bb.ah:                                            ; preds = %.thread222, %.critedge, %bb.co, %bb.cn, %bb.af
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.ai:                                            ; preds = %bb.ac
  %i.gd = load ptr, ptr %i.dk, align 8, !nonnull !111, !noundef !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.sroa.6131.sroa.0.0.copyload, ptr %i.z, align 8
  store i64 %.sroa.6131.sroa.6.0.copyload, ptr %.sroa.6135.0..sroa_idx, align 8
  store <2 x i32> %i.fr, ptr %.sroa.7137.0..sroa_idx, align 8
  store i32 %.sroa.7132.0.copyload, ptr %.sroa.9141.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.10, i64 36, i1 false)
  invoke void @_RNvMs6_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_27PlaceFromDeclarationsResult31ignore_conflicting_declarations(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(none) dereferenceable(36) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.z)
          to label %bb.ak unwind label %.thread225.loopexit.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.us:                                        ; preds = %bb.ac, %bb.u
  %.us-phi = phi i64 [ %i.er, %bb.u ], [ %i.fs, %bb.ac ]
  %.us-phi344 = phi i64 [ %i.et, %bb.u ], [ %i.fu, %bb.ac ]
  %.us-phi345 = phi ptr [ %.sroa.6131.sroa.0.0.copyload.us, %bb.u ], [ %.sroa.6131.sroa.0.0.copyload, %bb.ac ] ; 3 uses
  %.us-phi346 = phi i64 [ %.sroa.6131.sroa.6.0.copyload.us, %bb.u ], [ %.sroa.6131.sroa.6.0.copyload, %bb.ac ] ; 2 uses
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi344, i64 noundef %.us-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @713) #52
          to label %bb.aj unwind label %bb.cl

.thread225.loopexit.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ai, %bb.v, %bb.ao, %bb.am, %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_17CodeGeneratorKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit82, %.split355.us
  %lpad.loopexit.split-lp667 = landingpad { ptr, i32 }
          cleanup
  br label %.thread222

bb.aj:                                            ; preds = %.split.us
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.val68 = load i8, ptr %i.dl, align 4, !noundef !111 ; 2 uses
  %i.ge = trunc i8 %.val68 to i1
  br i1 %i.ge, label %bb.ch, label %.split349

.split349:                                        ; preds = %bb.ak
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %i.fu
  %i.gg = extractelement <2 x i32> %i.fr, i64 0
  %i.gh = extractelement <2 x i32> %i.fr, i64 1
  br label %.split349.us

.split349.us:                                     ; preds = %bb.w, %.split349
  %.val65 = phi i8 [ %.val68, %.split349 ], [ %.val68.us, %bb.w ] ; 4 uses
  %.us-phi350 = phi ptr [ %i.gf, %.split349 ], [ %i.ev, %bb.w ] ; 8 uses
  %.us-phi351 = phi i32 [ %.sroa.5130.0.copyload, %.split349 ], [ %.sroa.5130.0.copyload.us, %bb.w ]
  %.us-phi352 = phi i32 [ %i.gg, %.split349 ], [ %.sroa.6131.sroa.7.0.copyload.us, %bb.w ] ; 2 uses
  %.us-phi353 = phi i32 [ %i.gh, %.split349 ], [ %.sroa.6131.sroa.8.0.copyload.us, %bb.w ] ; 2 uses
  %i.gi = load i32, ptr %i.x, align 4, !range !162, !noundef !111
  %i.gj = icmp eq i32 %i.gi, -1
  br i1 %i.gj, label %.outer, label %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit

_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit: ; preds = %.split349.us
  %.sroa.0142.0.copyload143 = load i32, ptr %i.dm, align 4 ; 2 uses
  %.not42 = icmp eq i32 %.sroa.0142.0.copyload143, -1
  br i1 %.not42, label %.outer, label %bb.al

bb.al:                                            ; preds = %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i32 %.sroa.0142.0.copyload143, ptr %i.w, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7144.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7144.0..sroa_idx145, i64 12, i1 false)
  br i1 %i.au, label %bb.ap, label %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_17CodeGeneratorKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit82

_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_17CodeGeneratorKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit82: ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap28end_of_scope_symbol_bindings(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.as, i32 noundef %.us-phi351)
          to label %bb.am unwind label %.thread225.loopexit.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %_RNvXsI_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_17CodeGeneratorKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5place19place_from_bindings(ptr noalias noundef nonnull sret([40 x i8]) align 4 captures(address) dereferenceable(40) %i.u, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.v)
          to label %bb.an unwind label %.thread225.loopexit.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !10702)
  %i.gk = load i32, ptr %i.u, align 4, !range !162, !alias.scope !10703, !noundef !111
  %i.gl = icmp eq i32 %i.gk, -1
  br i1 %i.gl, label %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit83.thread, label %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit83

_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit83.thread: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ap

_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit83: ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.dn, i64 16, i1 false), !alias.scope !10704
  %.pr = load i32, ptr %i.t, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not43 = icmp eq i32 %.pr, -1
  br i1 %.not43, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type29apply_optional_specialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %5, i32 %6)
          to label %_RNCNvXNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBa_18StaticClassLiteral16own_fields_innerB1f_NtB4_11InnerTrait_17own_fields_inner_s2_0Bg_.exit unwind label %.thread225.loopexit.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.al, %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit83.thread, %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit83
  store i32 -1, ptr %i.t, align 4
  br label %bb.ar

_RNCNvXNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBa_18StaticClassLiteral16own_fields_innerB1f_NtB4_11InnerTrait_17own_fields_inner_s2_0Bg_.exit: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ar

.thread253:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.cf, %bb.bk
  %.pn.pn = phi { ptr, i32 } [ %i.jp, %bb.cf ], [ %lpad.thr_comm.split-lp259, %bb.bk ], [ %lpad.loopexit.split-lp670, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  br i1 %.sroa.021.7, label %.thread232, label %.thread222

bb.aq:                                            ; preds = %.noexc102, %.noexc101, %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtB7_5clone5Clone10clone_fromCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.bb, %.noexc95, %.noexc94, %bb.az, %.noexc92, %.noexc91, %bb.ay, %.noexc89, %.noexc88, %bb.ax, %.noexc86, %.noexc85, %bb.aw, %bb.bh, %bb.at
  %.sroa.12.1 = phi i64 [ %i.hu, %bb.bh ], [ undef, %bb.at ], [ %.sroa.6.0.i, %.noexc102 ], [ %.sroa.6.0.i, %.noexc101 ], [ %.sroa.6.0.i, %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtB7_5clone5Clone10clone_fromCsoTR8nlGN3X_18ty_python_semantic.exit ], [ undef, %bb.bb ], [ undef, %bb.aw ], [ undef, %.noexc95 ], [ undef, %.noexc94 ], [ undef, %bb.az ], [ undef, %.noexc92 ], [ undef, %.noexc91 ], [ undef, %bb.ay ], [ undef, %.noexc89 ], [ undef, %.noexc88 ], [ undef, %bb.ax ], [ undef, %.noexc86 ], [ undef, %.noexc85 ]
  %.sroa.0149.1 = phi ptr [ %i.ht, %bb.bh ], [ null, %bb.at ], [ %.sroa.0.0.i98, %.noexc102 ], [ %.sroa.0.0.i98, %.noexc101 ], [ %.sroa.0.0.i98, %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtB7_5clone5Clone10clone_fromCsoTR8nlGN3X_18ty_python_semantic.exit ], [ null, %bb.bb ], [ null, %bb.aw ], [ null, %.noexc95 ], [ null, %.noexc94 ], [ null, %bb.az ], [ null, %.noexc92 ], [ null, %.noexc91 ], [ null, %bb.ay ], [ null, %.noexc89 ], [ null, %.noexc88 ], [ null, %bb.ax ], [ null, %.noexc86 ], [ null, %.noexc85 ]
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.thread232

bb.ar:                                            ; preds = %bb.ap, %_RNCNvXNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBa_18StaticClassLiteral16own_fields_innerB1f_NtB4_11InnerTrait_17own_fields_inner_s2_0Bg_.exit
  br i1 %i.do, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gn = load i32, ptr %i.t, align 4, !range !122, !noundef !111
  %.not44 = icmp eq i32 %i.gn, 21
  br i1 %.not44, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic14field_metadata(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %.us-phi352, i32 %.us-phi353, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.t, i32 noundef %5, i32 %6)
          to label %.thread241 unwind label %bb.aq

bb.au:                                            ; preds = %bb.as, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  switch i32 %i.at, label %default.unreachable [
    i32 0, label %bb.be
    i32 3, label %bb.bj
    i32 2, label %bb.bd
  ]

bb.av:                                            ; preds = %bb.as
  %i.go = load i32, ptr %i.dp, align 4, !range !147, !noundef !111 ; 2 uses
  %i.gp = icmp ne i32 %i.go, 5
  call void @llvm.assume(i1 %i.gp)
  %i.gq = icmp eq i32 %i.go, 7
  br i1 %i.gq, label %bb.aw, label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.gr = load i32, ptr %i.dq, align 4, !range !114, !noundef !111 ; 5 uses
  %i.gs = load i32, ptr %i.dr, align 4, !noundef !111 ; 5 uses
  %i.gt = invoke noundef nonnull align 8 ptr %i.aj(ptr noundef nonnull %3)
          to label %.noexc85 unwind label %bb.aq, !inline_history !148 ; 2 uses

.noexc85:                                         ; preds = %bb.aw
  %i.gu = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instances4_1__NtB9_13FieldInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.gt)
          to label %.noexc86 unwind label %bb.aq

.noexc86:                                         ; preds = %.noexc85
  %i.gv = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.gu, ptr noundef nonnull align 8 %i.gt, i32 noundef range(i32 1, 0) %i.gr, i32 noundef %i.gs)
          to label %bb.ax unwind label %bb.aq

bb.ax:                                            ; preds = %.noexc86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i64 16, i1 false), !noalias !10705
  %i.gw = invoke noundef nonnull align 8 ptr %i.aj(ptr noundef nonnull %3)
          to label %.noexc88 unwind label %bb.aq, !inline_history !10706 ; 2 uses

.noexc88:                                         ; preds = %bb.ax
  %i.gx = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instances4_1__NtB9_13FieldInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.gw)
          to label %.noexc89 unwind label %bb.aq

.noexc89:                                         ; preds = %.noexc88
  %i.gy = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.gx, ptr noundef nonnull align 8 %i.gw, i32 noundef range(i32 1, 0) %i.gr, i32 noundef %i.gs)
          to label %bb.ay unwind label %bb.aq

bb.ay:                                            ; preds = %.noexc89
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.ha = load i8, ptr %i.gz, align 8, !range !115, !noalias !10707, !noundef !111
  %i.hb = invoke noundef nonnull align 8 ptr %i.aj(ptr noundef nonnull %3)
          to label %.noexc91 unwind label %bb.aq, !inline_history !10643 ; 2 uses

.noexc91:                                         ; preds = %bb.ay
  %i.hc = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instances4_1__NtB9_13FieldInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.hb)
          to label %.noexc92 unwind label %bb.aq

.noexc92:                                         ; preds = %.noexc91
  %i.hd = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.hc, ptr noundef nonnull align 8 %i.hb, i32 noundef range(i32 1, 0) %i.gr, i32 noundef %i.gs)
          to label %bb.az unwind label %bb.aq

bb.az:                                            ; preds = %.noexc92
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 65
  %i.hf = load i8, ptr %i.he, align 1, !range !130, !noundef !111
  %i.hg = invoke noundef nonnull align 8 ptr %i.aj(ptr noundef nonnull %3)
          to label %.noexc94 unwind label %bb.aq, !inline_history !10708 ; 2 uses

.noexc94:                                         ; preds = %bb.az
  %i.hh = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instances4_1__NtB9_13FieldInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.hg)
          to label %.noexc95 unwind label %bb.aq

.noexc95:                                         ; preds = %.noexc94
  %i.hi = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.hh, ptr noundef nonnull align 8 %i.hg, i32 noundef range(i32 1, 0) %i.gr, i32 noundef %i.gs)
          to label %bb.ba unwind label %bb.aq

bb.ba:                                            ; preds = %.noexc95
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !10709
  %.not5.i = icmp eq ptr %i.hk, null
  br i1 %.not5.i, label %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtB7_5clone5Clone10clone_fromCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hl = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hj)
          to label %.noexc100 unwind label %bb.aq ; 2 uses

.noexc100:                                        ; preds = %bb.bb
  %i.hm = extractvalue { ptr, i64 } %i.hl, 0
  %i.hn = extractvalue { ptr, i64 } %i.hl, 1
  br label %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtB7_5clone5Clone10clone_fromCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtB7_5clone5Clone10clone_fromCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.noexc100, %bb.ba
  %.sroa.6.0.i = phi i64 [ %i.hn, %.noexc100 ], [ undef, %bb.ba ] ; 6 uses
  %.sroa.0.0.i98 = phi ptr [ %i.hm, %.noexc100 ], [ null, %bb.ba ] ; 6 uses
  %i.ho = invoke noundef nonnull align 8 ptr %i.aj(ptr noundef nonnull %3)
          to label %.noexc101 unwind label %bb.aq, !inline_history !151 ; 2 uses

.noexc101:                                        ; preds = %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtB7_5clone5Clone10clone_fromCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.hp = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instances4_1__NtB9_13FieldInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.ho)
          to label %.noexc102 unwind label %bb.aq

.noexc102:                                        ; preds = %.noexc101
  %i.hq = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.hp, ptr noundef nonnull align 8 %i.ho, i32 noundef range(i32 1, 0) %i.gr, i32 noundef %i.gs)
          to label %bb.bc unwind label %bb.aq     ; 2 uses

bb.bc:                                            ; preds = %.noexc102
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %.sroa.0158.0.copyload159 = load i32, ptr %i.hr, align 8, !noalias !10710
  %.sroa.3.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3.0..sroa_idx160, i64 28, i1 false), !noalias !10710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  switch i32 %i.at, label %default.unreachable [
    i32 0, label %bb.be
    i32 3, label %bb.bj
    i32 2, label %bb.bd
  ]

default.unreachable:                              ; preds = %bb.bc, %bb.au
  unreachable

bb.bd:                                            ; preds = %bb.bc, %bb.au
  %.sroa.12.4 = phi i64 [ %.sroa.6.0.i, %bb.bc ], [ undef, %bb.au ]
  %.sroa.0149.4 = phi ptr [ %.sroa.0.0.i98, %bb.bc ], [ null, %bb.au ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ds, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  store i32 37, ptr %i.r, align 8
  br label %bb.bf

.thread241:                                       ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.hs = load i8, ptr %i.ea, align 8, !range !115, !noundef !111
  %i.ht = load ptr, ptr %i.eb, align 8, !noundef !111 ; 3 uses
  %i.hu = load i64, ptr %i.ec, align 8            ; 3 uses
  %i.hv = load i8, ptr %i.ed, align 1, !range !117, !noundef !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.hw = trunc nuw i8 %i.hs to i1
  br i1 %i.hw, label %bb.bh, label %bb.bg

bb.be:                                            ; preds = %bb.au, %bb.bc
  %.sroa.0158.1 = phi i32 [ %.sroa.0158.0.copyload159, %bb.bc ], [ -1, %bb.au ]
  %.sroa.12.3 = phi i64 [ %.sroa.6.0.i, %bb.bc ], [ undef, %bb.au ] ; 2 uses
  %.sroa.0149.3 = phi ptr [ %.sroa.0.0.i98, %bb.bc ], [ null, %bb.au ] ; 2 uses
  %.sroa.016.1 = phi i8 [ %i.hf, %bb.bc ], [ 2, %bb.au ]
  %.sroa.014.1 = phi i8 [ %i.ha, %bb.bc ], [ 1, %bb.au ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.hx = lshr i8 %.val65, 2
  %.lobit275 = and i8 %i.hx, 1
  store i8 %.lobit275, ptr %i.du, align 8
  store i8 %.sroa.014.1, ptr %i.dv, align 1
  store i8 %.sroa.016.1, ptr %i.dw, align 2
  store ptr %.sroa.0149.3, ptr %i.dx, align 8
  store i64 %.sroa.12.3, ptr %i.dy, align 8
  store i32 %.sroa.0158.1, ptr %i.dz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3, i64 28, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bj, %bb.bg, %bb.be, %bb.bd
  %.sroa.12.7 = phi i64 [ %.sroa.12.3, %bb.be ], [ %i.hu, %bb.bg ], [ %.sroa.12.4, %bb.bd ], [ %.sroa.12.5, %bb.bj ] ; 3 uses
  %.sroa.0149.7 = phi ptr [ %.sroa.0149.3, %bb.be ], [ %i.ht, %bb.bg ], [ %.sroa.0149.4, %bb.bd ], [ %.sroa.0149.5, %bb.bj ] ; 4 uses
  %.sroa.021.7 = phi i1 [ false, %bb.be ], [ false, %bb.bg ], [ true, %bb.bd ], [ true, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type29apply_optional_specialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.w, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %5, i32 %6)
          to label %bb.bl unwind label %bb.cf

bb.bg:                                            ; preds = %.thread241, %bb.bi
  %.sroa.019.0 = phi i8 [ %i.ik, %bb.bi ], [ 0, %.thread241 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  store i8 %.sroa.019.0, ptr %i.ef, align 8
  store ptr %i.ht, ptr %i.eg, align 8
  store i64 %i.hu, ptr %i.eh, align 8
  store i8 %i.hv, ptr %i.ei, align 1
  store i32 39, ptr %i.r, align 8
  br label %bb.bf

bb.bh:                                            ; preds = %.thread241
  %i.hy = getelementptr inbounds nuw i8, ptr %.us-phi350, i64 15
  %i.hz = load i8, ptr %i.hy, align 1, !range !137, !alias.scope !10711, !noundef !111 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.us-phi350, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !10711, !noundef !111
  %i.ic = and i64 %i.ib, 72057594037927935
  %i.id = icmp ult i8 %i.hz, -48
  %i.ie = zext i8 %i.hz to i64
  %i.if = add nsw i64 %i.ie, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.if, i64 16)
  %.sroa.0.0.i104 = select i1 %i.id, i64 %spec.store.select.i, i64 %i.ic
  %i.ig = icmp ugt i8 %i.hz, -49
  %i.ih = load ptr, ptr %.us-phi350, align 8, !alias.scope !10711
  %.sroa.01.0.i = select i1 %i.ig, ptr %i.ih, ptr %.us-phi350
  %i.ii = invoke noundef zeroext i1 @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic20is_private_attribute(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i104)
          to label %bb.bi unwind label %bb.aq

bb.bi:                                            ; preds = %bb.bh
  %i.ij = xor i1 %i.ii, true
  %i.ik = zext i1 %i.ij to i8
  br label %bb.bg

bb.bj:                                            ; preds = %bb.au, %bb.bc
  %.sroa.12.5 = phi i64 [ %.sroa.6.0.i, %bb.bc ], [ undef, %bb.au ]
  %.sroa.0149.5 = phi ptr [ %.sroa.0.0.i98, %bb.bc ], [ null, %bb.au ]
  %i.il = and i8 %.val65, 8
  %.not273 = icmp eq i8 %i.il, 0
  %i.im = and i8 %.val65, 16
  %.not274 = icmp eq i8 %i.im, 0
  %..sroa.0.0 = select i1 %.not274, i8 %.sroa.0.0183, i8 0
  %.sroa.020.0 = select i1 %.not273, i8 %..sroa.0.0, i8 1
  store i8 %.sroa.020.0, ptr %i.ds, align 4
  %i.in = lshr i8 %.val65, 5
  %.lobit = and i8 %i.in, 1
  store i8 %.lobit, ptr %i.dt, align 1
  store i32 40, ptr %i.r, align 8
  br label %bb.bf

bb.bk:                                            ; preds = %bb.bw
  %lpad.thr_comm.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %.thread253

bb.bl:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ej, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false)
  store i32 %.us-phi352, ptr %i.ek, align 8
  store i32 %.us-phi353, ptr %i.el, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.cq, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.old = trunc nuw i8 %.sroa.04.0.ph362 to i1
  br i1 %.old, label %bb.bq, label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  %i.io = invoke noundef zeroext i1 @_RNvMsi_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_5Field19is_kw_only_sentinel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.q, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  %i.ip = trunc nuw i8 %.sroa.04.0.ph362 to i1
  %or.cond = select i1 %i.io, i1 true, i1 %i.ip
  br i1 %or.cond, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bs, %bb.br, %bb.bm
  %.sroa.04.1.ph = phi i8 [ 0, %bb.bo ], [ 0, %bb.bm ], [ 1, %bb.bs ], [ 1, %bb.br ] ; 2 uses
  %.pr265 = load i32, ptr %i.ej, align 8          ; 2 uses
  %i.iq = icmp ne i32 %.pr265, 38
  call void @llvm.assume(i1 %i.iq)
  %i.ir = icmp slt i32 %.pr265, 37
  %i.is = load i8, ptr %i.em, align 2, !range !130
  %.not46 = icmp eq i8 %i.is, 2
  %or.cond364 = select i1 %i.ir, i1 %.not46, i1 false
  br i1 %or.cond364, label %bb.bv, label %.thread266

bb.bq:                                            ; preds = %bb.bo, %bb.bm
  %i.it = load i32, ptr %i.ej, align 8, !range !144, !noundef !111 ; 2 uses
  %i.iu = icmp ne i32 %i.it, 38
  call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp slt i32 %i.it, 37
  br i1 %i.iv, label %bb.br, label %.thread266

bb.br:                                            ; preds = %bb.bq
  %i.iw = load i8, ptr %i.em, align 2, !range !130, !noundef !111
  %.not45 = icmp eq i8 %i.iw, 2
  br i1 %.not45, label %bb.bs, label %bb.bp

bb.bs:                                            ; preds = %bb.br
  store i8 1, ptr %i.em, align 2
  br label %bb.bp

.thread266:                                       ; preds = %bb.bq, %bb.bv, %bb.bp
  %.sroa.04.1268 = phi i8 [ %.sroa.04.1.ph, %bb.bp ], [ %.sroa.04.1.ph, %bb.bv ], [ 1, %bb.bq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !10712)
  %i.ix = getelementptr inbounds nuw i8, ptr %.us-phi350, i64 15
  %i.iy = load i8, ptr %i.ix, align 1, !range !137, !alias.scope !10712, !noundef !111
  %i.iz = and i8 %i.iy, -2
  %switch.i = icmp eq i8 %i.iz, -48
  br i1 %switch.i, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %.thread266
  %.pn.i = load ptr, ptr %.us-phi350, align 8, !alias.scope !10712, !nonnull !111, !noundef !111
  %.sroa.0.0.i106 = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.ja = atomicrmw add ptr %.sroa.0.0.i106, i64 1 monotonic, align 8, !noalias !10713
  %i.jb = icmp slt i64 %i.ja, 0
  br i1 %i.jb, label %bb.bu, label %bb.bw, !prof !118

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.us-phi350) #52
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc107:                                        ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bp
  store i8 %.sroa.03.0, ptr %i.em, align 2
  br label %.thread266

bb.bw:                                            ; preds = %bb.bt, %.thread266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(16) %.us-phi350, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %i.q, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullB1C_(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.n)
          to label %bb.bx unwind label %bb.bk

bb.bx:                                            ; preds = %bb.bw
  %.sroa.0161.0.copyload = load i32, ptr %i.en, align 8
  %.sroa.4163.0.copyload = load i32, ptr %.sroa.4163.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5165.0.copyload = load ptr, ptr %.sroa.5165.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6166.0.copyload = load i64, ptr %.sroa.6166.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7168.0.copyload = load ptr, ptr %.sroa.7168.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8169.0.copyload = load i64, ptr %.sroa.8169.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.jc = icmp eq i32 %.sroa.0161.0.copyload, -1
  br i1 %i.jc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB13_.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jd = icmp ne i32 %.sroa.4163.0.copyload, 38
  call void @llvm.assume(i1 %i.jd)
  %i.je = add nsw i32 %.sroa.4163.0.copyload, -37
  %i.jf = icmp sgt i32 %.sroa.4163.0.copyload, 36
  %narrow.i.i.i = select i1 %i.jf, i32 %i.je, i32 1
  switch i32 %narrow.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB13_.exit [
    i32 1, label %bb.bz
    i32 2, label %bb.cb
  ]

bb.bz:                                            ; preds = %bb.by
  %i.jg = icmp eq ptr %.sroa.7168.0.copyload, null
  %i.jh = icmp eq i64 %.sroa.8169.0.copyload, 0
  %or.cond.i.i.i.i = select i1 %i.jg, i1 true, i1 %i.jh
  br i1 %or.cond.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB13_.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7168.0.copyload) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7168.0.copyload, i64 noundef range(i64 1, 0) %.sroa.8169.0.copyload, i64 noundef 1) #53, !noalias !10714
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB13_.exit

bb.cb:                                            ; preds = %bb.by
  %i.ji = icmp eq ptr %.sroa.5165.0.copyload, null
  %i.jj = icmp eq i64 %.sroa.6166.0.copyload, 0
  %or.cond.i4.i.i.i = select i1 %i.ji, i1 true, i1 %i.jj
  br i1 %or.cond.i4.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB13_.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5165.0.copyload) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5165.0.copyload, i64 noundef range(i64 1, 0) %.sroa.6166.0.copyload, i64 noundef 1) #53, !noalias !10714
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB13_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB13_.exit: ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %.sroa.021.7, label %bb.cd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECsoTR8nlGN3X_18ty_python_semantic.exit109

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECsoTR8nlGN3X_18ty_python_semantic.exit109: ; preds = %bb.ce, %bb.cd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB13_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.outer

bb.cd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB13_.exit
  %i.jk = icmp eq ptr %.sroa.0149.7, null
  %i.jl = icmp eq i64 %.sroa.12.7, 0
  %or.cond.i108 = select i1 %i.jk, i1 true, i1 %i.jl
  br i1 %or.cond.i108, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECsoTR8nlGN3X_18ty_python_semantic.exit109, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0149.7) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0149.7, i64 noundef range(i64 1, 0) %.sroa.12.7, i64 noundef 1) #53
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECsoTR8nlGN3X_18ty_python_semantic.exit109

.outer:                                           ; preds = %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit, %.split349.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECsoTR8nlGN3X_18ty_python_semantic.exit109
  %.sroa.04.3 = phi i8 [ %.sroa.04.1268, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECsoTR8nlGN3X_18ty_python_semantic.exit109 ], [ %.sroa.04.0.ph362, %.split349.us ], [ %.sroa.04.0.ph362, %_RNvMs3_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_5Place25ignore_possibly_undefined.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.jm = load ptr, ptr %.sroa.612.0..sroa_idx, align 8, !alias.scope !10715, !nonnull !111, !noundef !111
  %i.jn = load ptr, ptr %.sroa.411.0..sroa_idx, align 8, !alias.scope !10715, !nonnull !111, !noundef !111 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.jm
  br i1 %i.jo, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtB12_6symbol14ScopedSymbolIdNtNtCsoTR8nlGN3X_18ty_python_semantic5place27PlaceFromDeclarationsResultEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2K_.exit.lr.ph

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.bn, %bb.bu
  %lpad.loopexit.split-lp670 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEBH_(ptr noalias noundef align 8 dereferenceable(96) %i.q) #50
  br label %.thread253

bb.cf:                                            ; preds = %bb.bf
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9FieldKindEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.r) #50
  br label %.thread253

.thread232:                                       ; preds = %bb.aq, %.thread253
  %.pn.pn240 = phi { ptr, i32 } [ %.pn.pn, %.thread253 ], [ %i.gm, %bb.aq ] ; 2 uses
  %.sroa.0149.0238 = phi ptr [ %.sroa.0149.7, %.thread253 ], [ %.sroa.0149.1, %bb.aq ] ; 3 uses
  %.sroa.12.0237 = phi i64 [ %.sroa.12.7, %.thread253 ], [ %.sroa.12.1, %bb.aq ] ; 2 uses
  %i.jq = icmp eq ptr %.sroa.0149.0238, null
  %i.jr = icmp eq i64 %.sroa.12.0237, 0
  %or.cond.i110 = select i1 %i.jq, i1 true, i1 %i.jr
  br i1 %or.cond.i110, label %.thread222, label %bb.cg

bb.cg:                                            ; preds = %.thread232
end_hunk_1
begin_hunk_2_@_RNvXs0_NvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBd_18StaticClassLiteral13try_metaclass1__NtB5_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !12152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !12152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !12152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !12152
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !12152
  br label %bb.b

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2f_8PeekableINtNtB2h_10filter_map9FilterMapINtNtB2h_6copied6CopiedINtNtNtB5_5slice4iter4IterNtBQ_4TypeEENCNvMsp_NtBO_14static_literalNtB4D_18StaticClassLiteral27fully_static_explicit_bases0EE4peek0EBS_.exit.i
  %i.dq = call noundef nonnull align 8 ptr %i.bk(ptr noundef nonnull %1), !noalias !12164, !inline_history !12012 ; 2 uses
  %i.dr = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.dq), !noalias !12164
  %i.ds = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.dr, ptr noundef nonnull align 8 %i.dq, i32 noundef range(i32 1, 0) %3, i32 noundef %4), !noalias !12164
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load i8, ptr %i.dt, align 8, !range !115, !noalias !12164, !noundef !111
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral17inheritance_cycle.exit.i, label %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral17inheritance_cycle.exit.thread.i

_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral17inheritance_cycle.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !12165
  store i32 %3, ptr %i.s, align 4, !noalias !12166
  %i.dw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %4, ptr %i.dw, align 4, !noalias !12166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12166
  store ptr %1, ptr %i.r, align 8, !noalias !12166
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %2, ptr %i.dx, align 8, !noalias !12166
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %1, ptr %i.dy, align 8, !noalias !12166
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !12166
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !12166
  %i.dz = call noundef range(i8 0, 3) i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal16InheritanceCycleEDNtNtB2D_2db2DbEL_NCNvNvMsp_B2x_NtB2x_18StaticClassLiteral17inheritance_cycle23inheritance_cycle_inner0E0B1T_EB2D_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.r), !noalias !12146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12165
  %.not116.i = icmp eq i8 %i.dz, 2
  br i1 %.not116.i, label %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral17inheritance_cycle.exit.thread.i, label %bb.i

_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral17inheritance_cycle.exit.thread.i: ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral17inheritance_cycle.exit.i, %bb.h, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class9ClassTypeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2f_8PeekableINtNtB2h_10filter_map9FilterMapINtNtB2h_6copied6CopiedINtNtNtB5_5slice4iter4IterNtBQ_4TypeEENCNvMsp_NtBO_14static_literalNtB4D_18StaticClassLiteral27fully_static_explicit_bases0EE4peek0EBS_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12167
  store i32 %3, ptr %i.q, align 4, !noalias !12168
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %4, ptr %i.ea, align 4, !noalias !12168
  store i32 0, ptr %i.p, align 4, !noalias !12168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12168
  store ptr %1, ptr %i.o, align 8, !noalias !12168
  %i.eb = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %2, ptr %i.eb, align 8, !noalias !12168
  %i.ec = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %1, ptr %i.ec, align 8, !noalias !12168
  %.sroa.4.0..sroa_idx.i.i147.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i.i147.i, align 8, !noalias !12168
  %.sroa.5.0..sroa_idx.i.i148.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i.i148.i, align 8, !noalias !12168
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !12168
  %i.ed = call { i64, ptr } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtB2y_14StaticMroErrorEDNtNtB2C_2db2DbEL_NCNvNvMsp_NtNtB2A_5class14static_literalNtB4d_18StaticClassLiteral7try_mro8try_mro_0E0B1T_EB2C_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.o), !noalias !12146 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12167
  %i.ee = extractvalue { i64, ptr } %i.ed, 0
  %i.ef = trunc nuw i64 %i.ee to i1
  br i1 %i.ef, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtBL_14StaticMroErrorE10is_err_andNvMs7_BL_B1B_8is_cycleEBP_.exit.i, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtBL_14StaticMroErrorE10is_err_andNvMs7_BL_B1B_8is_cycleEBP_.exit.thread.i

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtBL_14StaticMroErrorE10is_err_andNvMs7_BL_B1B_8is_cycleEBP_.exit.i: ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral17inheritance_cycle.exit.thread.i
  %i.eg = extractvalue { i64, ptr } %i.ed, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eg) ]
  %.val.i.i = load i64, ptr %i.eg, align 8, !range !142, !noalias !12146, !noundef !111
  %i.eh = icmp eq i64 %.val.i.i, 5
  br i1 %i.eh, label %bb.l, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtBL_14StaticMroErrorE10is_err_andNvMs7_BL_B1B_8is_cycleEBP_.exit.thread.i

bb.i:                                             ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral17inheritance_cycle.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ei, align 4, !alias.scope !12146
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 4, !alias.scope !12146
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 2, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !12146
  store i32 -2, ptr %0, align 4, !alias.scope !12146
  br label %_RNvNvXs0_NvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBf_18StaticClassLiteral13try_metaclass1__NtB7_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtBL_14StaticMroErrorE10is_err_andNvMs7_BL_B1B_8is_cycleEBP_.exit.thread.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtBL_14StaticMroErrorE10is_err_andNvMs7_BL_B1B_8is_cycleEBP_.exit.i, %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral17inheritance_cycle.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !12152
  %i.ej = call noundef nonnull align 8 ptr @_RNvNtCs56aZGHL6Dc6_7ruff_db6parsed13parsed_module(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %i.bw, i32 noundef %i.bx), !noalias !12146
  call void @_RNvMNtCs56aZGHL6Dc6_7ruff_db6parsedNtB2_12ParsedModule4load(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ej, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !12146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !12152
  call void @llvm.experimental.noalias.scope.decl(metadata !12169)
  %i.ek = invoke noundef nonnull align 8 ptr %i.bk(ptr noundef nonnull %1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146, !inline_history !12021 ; 2 uses

.noexc.i:                                         ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtBL_14StaticMroErrorE10is_err_andNvMs7_BL_B1B_8is_cycleEBP_.exit.thread.i
  %i.el = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.ek)
          to label %.noexc150.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

.noexc150.i:                                      ; preds = %.noexc.i
  %i.em = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.el, ptr noundef nonnull align 8 %i.ek, i32 noundef range(i32 1, 0) %3, i32 noundef %4)
          to label %.noexc151.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146 ; 2 uses

.noexc151.i:                                      ; preds = %.noexc150.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i32, ptr %i.en, align 8, !range !114, !noalias !12170, !noundef !111
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.eq = load i32, ptr %i.ep, align 4, !noalias !12170, !noundef !111
  %i.er = invoke noundef nonnull align 4 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId4node(i32 noundef %i.eo, i32 noundef %i.eq, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %.noexc152.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

.noexc152.i:                                      ; preds = %.noexc151.i
  %i.es = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB5_17NodeWithScopeKind12expect_class(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.er)
          to label %.noexc153.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

.noexc153.i:                                      ; preds = %.noexc152.i
  %i.et = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12ast_node_refINtB4_10AstNodeRefNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtClassDefE4nodeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565)
          to label %.noexc154.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

.noexc154.i:                                      ; preds = %.noexc153.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !12171, !align !113, !noundef !111 ; 2 uses
  %.not.i149.i = icmp eq ptr %i.ev, null
  br i1 %.not.i149.i, label %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral18explicit_metaclass.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.noexc154.i
  %i.ew = invoke noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments12find_keyword(ptr noundef nonnull align 8 %i.ev, ptr noalias noundef nonnull readonly captures(address, read_provenance) @550, i64 noundef 9)
          to label %.noexc155.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146 ; 2 uses

.noexc155.i:                                      ; preds = %bb.j
  %.not5.i.i = icmp eq ptr %i.ew, null
  br i1 %.not5.i.i, label %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral18explicit_metaclass.exit.thread.i, label %bb.k

_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral18explicit_metaclass.exit.thread.i: ; preds = %.noexc155.i, %.noexc154.i
  store i32 -1, ptr %i.az, align 4, !alias.scope !12169, !noalias !12152
  br label %bb.m

bb.k:                                             ; preds = %.noexc155.i
  %i.ex = invoke noundef nonnull align 8 ptr %i.bk(ptr noundef nonnull %1)
          to label %.noexc156.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146, !inline_history !12021 ; 2 uses

.noexc156.i:                                      ; preds = %bb.k
  %i.ey = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.ex)
          to label %.noexc157.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

.noexc157.i:                                      ; preds = %.noexc156.i
  %i.ez = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.ey, ptr noundef nonnull align 8 %i.ex, i32 noundef range(i32 1, 0) %3, i32 noundef %4)
          to label %.noexc158.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146 ; 2 uses

.noexc158.i:                                      ; preds = %.noexc157.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load i32, ptr %i.fa, align 8, !range !114, !noalias !12172, !noundef !111 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %i.fd = load i32, ptr %i.fc, align 4, !noalias !12172, !noundef !111 ; 2 uses
  %i.fe = invoke { i32, i32 } @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core5scope1__NtB8_7ScopeId12program_fileDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1j_(i32 noundef %i.fb, i32 noundef %i.fd, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %.noexc159.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146 ; 2 uses

.noexc159.i:                                      ; preds = %.noexc158.i
  %i.ff = extractvalue { i32, i32 } %i.fe, 0
  %i.fg = extractvalue { i32, i32 } %i.fe, 1
  %i.fh = invoke noundef nonnull align 8 ptr @_RNvCs2O29vuvTAEJ_14ty_python_core14semantic_index(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %i.ff, i32 noundef %i.fg)
          to label %.noexc160.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

.noexc160.i:                                      ; preds = %.noexc159.i
  %i.fi = invoke noundef nonnull align 4 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId4node(i32 noundef %i.fb, i32 noundef %i.fd, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %.noexc161.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

.noexc161.i:                                      ; preds = %.noexc160.i
  %i.fj = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB5_17NodeWithScopeKind12expect_class(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.fi)
          to label %.noexc162.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

.noexc162.i:                                      ; preds = %.noexc161.i
  %i.fk = invoke { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex24expect_single_definitionRINtNtB6_12ast_node_ref10AstNodeRefNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtClassDefEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.fh, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.fj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536)
          to label %.noexc163.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146 ; 2 uses

.noexc163.i:                                      ; preds = %.noexc162.i
  %i.fl = extractvalue { i32, i32 } %i.fk, 0
  %i.fm = extractvalue { i32, i32 } %i.fk, 1
  invoke void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types26definition_expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.az, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %i.fl, i32 noundef %i.fm, ptr noundef nonnull align 8 %i.ew)
          to label %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral18explicit_metaclass.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

bb.l:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtBL_14StaticMroErrorE10is_err_andNvMs7_BL_B1B_8is_cycleEBP_.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.fn, align 4, !alias.scope !12146
  %.sroa.07.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %.sroa.07.sroa.4.0..sroa_idx.i, align 4, !alias.scope !12146
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 2, ptr %.sroa.59.0..sroa_idx.i, align 4, !alias.scope !12146
  store i32 -2, ptr %0, align 4, !alias.scope !12146
  br label %_RNvNvXs0_NvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBf_18StaticClassLiteral13try_metaclass1__NtB7_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

.body212.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ck, %.body.i
  %.pn131.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.ld, %bb.ck ], [ %lpad.loopexit.split-lp194, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(32) %i.ba) #50
          to label %common.resume.i unwind label %bb.ca, !noalias !12146

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtBL_5class9ClassTypeENCINvNvB1w_8find_map5checkBJ_B3M_QNCNvMsp_NtB3O_14static_literalNtB4Q_18StaticClassLiteral27fully_static_explicit_bases0E0E0B37_EBN_.exit187.i, %bb.az, %bb.bb, %bb.bd, %bb.bf, %bb.ao, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1k_8function26DataclassTransformerParamsNCNCNvMsp_NtNtB1k_5class14static_literalNtB3e_18StaticClassLiteral38inherited_dataclass_transformer_params00E0B1m_.exit.i.i.i.i.i.i.i, %.noexc195.i, %.noexc196.i, %bb.ap, %.lr.ph.i174.i, %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentEEB1f_.exit.i.i, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %.noexc207.i, %.noexc206.i, %bb.bj, %_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB8_18StaticClassLiteral4nameDNtNtBe_2db2DbEL_EBe_.exit.i, %bb.am, %bb.al, %.noexc190.i, %.noexc189.i, %bb.ak, %.loopexit336.i, %.noexc171.i, %.noexc170.i, %bb.af, %bb.ac, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtBL_5class9ClassTypeENCINvNvB1w_8find_map5checkBJ_B3M_QNCNvMsp_NtB3O_14static_literalNtB4Q_18StaticClassLiteral27fully_static_explicit_bases0E0E0B37_EBN_.exit.i, %.loopexit343.i, %bb.y, %bb.o, %bb.n, %.noexc163.i, %.noexc162.i, %.noexc161.i, %.noexc160.i, %.noexc159.i, %.noexc158.i, %.noexc157.i, %.noexc156.i, %bb.k, %bb.j, %.noexc153.i, %.noexc152.i, %.noexc151.i, %.noexc150.i, %.noexc.i, %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtBL_14StaticMroErrorE10is_err_andNvMs7_BL_B1B_8is_cycleEBP_.exit.thread.i
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %.body212.i

_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral18explicit_metaclass.exit.i: ; preds = %.noexc163.i
  %.pr.i = load i32, ptr %i.az, align 4, !noalias !12152
  switch i32 %.pr.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvXs0_NvNvMsp_NtNtBS_5class14static_literalNtB2E_18StaticClassLiteral13try_metaclass1__NtB2w_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EBU_.exit.i [
    i32 -1, label %bb.m
    i32 16, label %bb.n
  ]

bb.m:                                             ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral18explicit_metaclass.exit.i, %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral18explicit_metaclass.exit.thread.i
  %.sroa.0104.0.copyload.i = load i32, ptr %i.cs, align 8, !noalias !12152 ; 2 uses
  %.sroa.7105.0.copyload.i = load i64, ptr %.sroa.499.0..sroa_idx.i, align 4, !noalias !12152
  store i32 -3, ptr %i.cs, align 8, !noalias !12152
  switch i32 %.sroa.0104.0.copyload.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtBL_5class9ClassTypeENCINvNvB1w_8find_map5checkBJ_B3M_QNCNvMsp_NtB3O_14static_literalNtB4Q_18StaticClassLiteral27fully_static_explicit_bases0E0E0B37_EBN_.exit.i [
    i32 -3, label %bb.z
    i32 -2, label %.loopexit343.i
  ]

bb.n:                                             ; preds = %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral18explicit_metaclass.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !range !114, !noalias !12152, !noundef !111
  %i.fq = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.fr = load i32, ptr %i.fq, align 4, !noalias !12152, !noundef !111
  %i.fs = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB8_12GenericAlias14specializationDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.fp, i32 noundef %i.fr, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146 ; 2 uses

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvXs0_NvNvMsp_NtNtBS_5class14static_literalNtB2E_18StaticClassLiteral13try_metaclass1__NtB2w_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EBU_.exit.i: ; preds = %bb.q, %bb.p, %_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral18explicit_metaclass.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) %i.az, i64 16, i1 false), !noalias !12152
  br label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.ft = extractvalue { i32, i32 } %i.fs, 0
  %i.fu = extractvalue { i32, i32 } %i.fs, 1
  %i.fv = invoke { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericss_1__NtB8_14Specialization5typesDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.ft, i32 noundef %i.fu, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.fw = extractvalue { ptr, i64 } %i.fv, 0      ; 3 uses
  %i.fx = extractvalue { ptr, i64 } %i.fv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fw) ]
  %.idx = shl nuw nsw i64 %i.fx, 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx
  %.not.not.not.i.not.i156 = icmp eq i64 %i.fx, 0
  br i1 %.not.not.not.i.not.i156, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvXs0_NvNvMsp_NtNtBS_5class14static_literalNtB2E_18StaticClassLiteral13try_metaclass1__NtB2w_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EBU_.exit.i, label %.lr.ph

bb.q:                                             ; preds = %.noexc166.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.fz, %i.fy
  br i1 %.not.not.not.i.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvXs0_NvNvMsp_NtNtBS_5class14static_literalNtB2E_18StaticClassLiteral13try_metaclass1__NtB2w_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EBU_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %i.ga = phi ptr [ %i.fz, %bb.q ], [ %i.fw, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ga, i64 16, i1 false), !noalias !12174
  %i.gb = invoke noundef zeroext i1 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB4_4Type31has_typevar_or_typevar_instance(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %i.bi)
          to label %.noexc166.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

.noexc166.i:                                      ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12173
  br i1 %i.gb, label %bb.r, label %bb.q

bb.r:                                             ; preds = %.noexc166.i
  store i32 5, ptr %0, align 4, !alias.scope !12146
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_.exit.i, %bb.bh, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !12152
  call void @llvm.experimental.noalias.scope.decl(metadata !12175)
  call void @llvm.experimental.noalias.scope.decl(metadata !12176)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12177)
  call void @llvm.experimental.noalias.scope.decl(metadata !12178)
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !12179, !noalias !12152, !nonnull !111, !noundef !111
  %i.ge = atomicrmw add ptr %i.gd, i64 -1 release, align 8, !noalias !12180
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.u, !noalias !12146

bb.u:                                             ; preds = %bb.t
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12181)
  call void @llvm.experimental.noalias.scope.decl(metadata !12182)
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !12183, !noalias !12152, !nonnull !111, !noundef !111
  %i.gj = atomicrmw add ptr %i.gi, i64 -1 release, align 8, !noalias !12184
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.v, label %common.resume.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gh)
          to label %common.resume.i unwind label %bb.x, !noalias !12146

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.t, %bb.s
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12185)
  call void @llvm.experimental.noalias.scope.decl(metadata !12186)
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !12187, !noalias !12152, !nonnull !111, !noundef !111
  %i.gn = atomicrmw add ptr %i.gm, i64 -1 release, align 8, !noalias !12188
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gl), !noalias !12146
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.x:                                             ; preds = %bb.v
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !12146
  unreachable

common.resume.i:                                  ; preds = %bb.aw, %bb.av, %bb.v, %bb.u, %.body212.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.jc, %bb.av ], [ %i.gg, %bb.u ], [ %i.gg, %bb.v ], [ %i.jc, %bb.aw ], [ %.pn131.i, %.body212.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !12152
  br label %_RNvNvXs0_NvNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBf_18StaticClassLiteral13try_metaclass1__NtB7_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

bb.y:                                             ; preds = %bb.ac, %.loopexit343.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvXs0_NvNvMsp_NtNtBS_5class14static_literalNtB2E_18StaticClassLiteral13try_metaclass1__NtB2w_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EBU_.exit.i
  %.not133320.i = phi i8 [ 0, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvXs0_NvNvMsp_NtNtBS_5class14static_literalNtB2E_18StaticClassLiteral13try_metaclass1__NtB2w_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EBU_.exit.i ], [ 1, %.loopexit343.i ], [ 1, %bb.ac ]
  %.sroa.523.0.i = phi i32 [ %4, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvXs0_NvNvMsp_NtNtBS_5class14static_literalNtB2E_18StaticClassLiteral13try_metaclass1__NtB2w_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EBU_.exit.i ], [ %4, %.loopexit343.i ], [ %.sroa.523.1.i, %bb.ac ]
  %.sroa.022.0.i = phi i32 [ %3, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvXs0_NvNvMsp_NtNtBS_5class14static_literalNtB2E_18StaticClassLiteral13try_metaclass1__NtB2w_34try_metaclass_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EBU_.exit.i ], [ %3, %.loopexit343.i ], [ %.sroa.022.1.i, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !12152
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type13to_class_type(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ax, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.aa, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

bb.z:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !12189)
  call void @llvm.experimental.noalias.scope.decl(metadata !12190)
  %i.gq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !12191, !noalias !12152, !nonnull !111, !noundef !111 ; 2 uses
  %.promoted.i167.i = load ptr, ptr %i.bb, align 8, !alias.scope !12191, !noalias !12152 ; 2 uses
  %i.gr = icmp eq ptr %.promoted.i167.i, %i.gq
  br i1 %i.gr, label %.loopexit343.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.7.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i.i
  %i.gt = phi ptr [ %.promoted.i167.i, %.lr.ph.i.i ], [ %i.gu, %bb.ab ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 3 uses
  store ptr %i.gu, ptr %i.bb, align 8, !alias.scope !12191, !noalias !12152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.gt, i64 16, i1 false), !noalias !12193
  call void @llvm.experimental.noalias.scope.decl(metadata !12194)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12195
  %i.gv = load ptr, ptr %.sroa.5.0..sroa_idx216.i, align 8, !alias.scope !12196, !noalias !12197, !nonnull !111, !noundef !111
  %i.gw = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !12196, !noalias !12197, !nonnull !111, !align !113, !noundef !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12198
  store i32 0, ptr %i.l, align 4, !noalias !12198
  %i.gx = load <2 x i32>, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !12196, !noalias !12197
  store <2 x i32> %i.gx, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !12198
  invoke void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase13try_from_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.gw, ptr noundef nonnull align 4 %.sroa.9.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.l)
          to label %.noexc169.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

.noexc169.i:                                      ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12198
  %i.gy = load i8, ptr %i.k, align 4, !range !155, !noalias !12198, !noundef !111
  %cond.i.i.i.i = icmp eq i8 %i.gy, 3
  br i1 %cond.i.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBW_18StaticClassLiteral27fully_static_explicit_bases0INtB7_5FnMutTNtB10_4TypeEE8call_mutB12_.exit.i.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBW_18StaticClassLiteral27fully_static_explicit_bases0INtB7_5FnMutTNtB10_4TypeEE8call_mutB12_.exit.thread.i.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBW_18StaticClassLiteral27fully_static_explicit_bases0INtB7_5FnMutTNtB10_4TypeEE8call_mutB12_.exit.thread.i.i.i.i: ; preds = %.noexc169.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12192
  br label %bb.ab

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBW_18StaticClassLiteral27fully_static_explicit_bases0INtB7_5FnMutTNtB10_4TypeEE8call_mutB12_.exit.i.i.i.i: ; preds = %.noexc169.i
  %.sroa.0.0.copyload1.i.i.i.i = load i32, ptr %i.gs, align 4, !noalias !12199 ; 2 uses
  %.sroa.7.0.copyload3.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx2.i.i.i.i, align 4, !noalias !12199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12192
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload1.i.i.i.i, -2
  br i1 %.not.i.i.i.i, label %bb.ab, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtBL_5class9ClassTypeENCINvNvB1w_8find_map5checkBJ_B3M_QNCNvMsp_NtB3O_14static_literalNtB4Q_18StaticClassLiteral27fully_static_explicit_bases0E0E0B37_EBN_.exit.i

bb.ab:                                            ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBW_18StaticClassLiteral27fully_static_explicit_bases0INtB7_5FnMutTNtB10_4TypeEE8call_mutB12_.exit.i.i.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBW_18StaticClassLiteral27fully_static_explicit_bases0INtB7_5FnMutTNtB10_4TypeEE8call_mutB12_.exit.thread.i.i.i.i
  %i.gz = icmp eq ptr %i.gu, %i.gq
  br i1 %i.gz, label %.loopexit343.i, label %bb.aa

.loopexit343.i:                                   ; preds = %bb.ab, %bb.z, %bb.m
  invoke void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16to_class_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.aa, i8 noundef 5, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %i.bi)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtBL_5class9ClassTypeENCINvNvB1w_8find_map5checkBJ_B3M_QNCNvMsp_NtB3O_14static_literalNtB4Q_18StaticClassLiteral27fully_static_explicit_bases0E0E0B37_EBN_.exit.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBW_18StaticClassLiteral27fully_static_explicit_bases0INtB7_5FnMutTNtB10_4TypeEE8call_mutB12_.exit.i.i.i.i, %bb.m
  %.sroa.7.0.i = phi i64 [ %.sroa.7105.0.copyload.i, %bb.m ], [ %.sroa.7.0.copyload3.i.i.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBW_18StaticClassLiteral27fully_static_explicit_bases0INtB7_5FnMutTNtB10_4TypeEE8call_mutB12_.exit.i.i.i.i ]
  %.sroa.015.0.i = phi i32 [ %.sroa.0104.0.copyload.i, %bb.m ], [ %.sroa.0.0.copyload1.i.i.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtBW_18StaticClassLiteral27fully_static_explicit_bases0INtB7_5FnMutTNtB10_4TypeEE8call_mutB12_.exit.i.i.i.i ]
  store i32 %.sroa.015.0.i, ptr %i.ab, align 4, !noalias !12152
  %.sroa.7.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx20.i, align 4, !noalias !12152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !12152
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType20static_class_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ay, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ab, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

bb.ac:                                            ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1C_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtBL_5class9ClassTypeENCINvNvB1w_8find_map5checkBJ_B3M_QNCNvMsp_NtB3O_14static_literalNtB4Q_18StaticClassLiteral27fully_static_explicit_bases0E0E0B37_EBN_.exit.i
  %i.ha = load i32, ptr %i.ay, align 4, !noalias !12152, !noundef !111 ; 2 uses
  %.not120.i = icmp eq i32 %i.ha, 0               ; 2 uses
  %.sroa.4295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %.sroa.4295.0.copyload.i = load i32, ptr %.sroa.4295.0..sroa_idx.i, align 4, !noalias !12152
  %.sroa.523.1.i = select i1 %.not120.i, i32 %4, i32 %.sroa.4295.0.copyload.i
  %.sroa.022.1.i = select i1 %.not120.i, i32 %3, i32 %i.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !12152
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType9metaclass(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.aa, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ab, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12146

bb.ad:                                            ; preds = %bb.y
  %i.hb = load i32, ptr %i.ax, align 4, !range !167, !noalias !12152, !noundef !111 ; 2 uses
  %.not121.i = icmp eq i32 %i.hb, -2
  br i1 %.not121.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.4287.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.sroa.4287.0.copyload.i = load i32, ptr %.sroa.4287.0..sroa_idx.i, align 4, !noalias !12152
  %.sroa.5288.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.5288.0.copyload.i = load i32, ptr %.sroa.5288.0..sroa_idx.i, align 4, !noalias !12152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !12152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !12152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.bb, i64 72, i1 false), !noalias !12152
  %i.hc = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 2 uses
end_hunk_2
