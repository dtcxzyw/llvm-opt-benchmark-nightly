inline.NumInlined: 7229
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8varianceNtB3_15TypeVarVariance13compose_thunkNCNCNvXNvMsu_NtB5_10type_aliasNtB1H_13TypeAliasType17variance_of_ownerB1Y_NtB1B_11InnerTrait_18variance_of_owner_s0_00EB7_
define hidden noundef range(i8 0, 4) i8 @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8varianceNtB3_15TypeVarVariance13compose_thunkNCNCNvXNvMsu_NtB5_10type_aliasNtB1H_13TypeAliasType17variance_of_ownerB1Y_NtB1B_11InnerTrait_18variance_of_owner_s0_00EB7_(i8 noundef range(i8 0, 4) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [28 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [28 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [28 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  switch i8 %0, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %switch.lookup
    i8 3, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4
  %i.g = load ptr, ptr %1, align 8, !alias.scope !4, !nonnull !3, !align !7, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !4, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !4, !nonnull !3, !align !8, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4, !nonnull !3, !align !7, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !4, !nonnull !3, !align !7, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, ptr noundef nonnull align 4 dereferenceable(28) %i.o, i64 28, i1 false), !noalias !4
  %i.p = call noundef range(i8 0, 4) i8 @_RNvXsp_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_4TypeNtNtB5_8variance17VarianceInferable11variance_of(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.k, ptr noundef nonnull align 4 %i.m, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.e), !noalias !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4
  %i.q = icmp eq i8 %i.p, 3
  %. = select i1 %i.q, i8 3, i8 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9
  %i.r = load ptr, ptr %1, align 8, !alias.scope !9, !nonnull !3, !align !7, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !9
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !9, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !9, !nonnull !3, !align !8, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !9, !nonnull !3, !align !7, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !9, !nonnull !3, !align !7, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.c, ptr noundef nonnull align 4 dereferenceable(28) %i.z, i64 28, i1 false), !noalias !9
  %i.aa = call noundef range(i8 0, 4) i8 @_RNvXsp_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_4TypeNtNtB5_8variance17VarianceInferable11variance_of(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.v, ptr noundef nonnull align 4 %i.x, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.c), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !12, !nonnull !3, !align !7, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i64 16, i1 false), !noalias !12
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !12, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !12, !nonnull !3, !align !8, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !12, !nonnull !3, !align !7, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !12, !nonnull !3, !align !7, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.a, ptr noundef nonnull align 4 dereferenceable(28) %i.aj, i64 28, i1 false), !noalias !12
  %i.ak = call noundef range(i8 0, 4) i8 @_RNvXsp_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_4TypeNtNtB5_8variance17VarianceInferable11variance_of(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noundef nonnull align 4 %i.ah, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.a), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12
  %i.al = shl nuw nsw i8 %i.ak, 3
  %switch.shiftamt = zext nneg i8 %i.al to i32
  %switch.downshift = lshr i32 50397696, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i8 [ %0, %bb.a ], [ %., %bb.b ], [ %i.aa, %bb.c ], [ %switch.masked, %switch.lookup ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 4) i8 @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8varianceNtB3_15TypeVarVariance13compose_thunkNCNvMs5_NtB5_7typevarNtB1C_20BoundTypeVarInstance22variance_with_polarity0EB7_(i8 noundef range(i8 0, 4) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [28 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [28 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 6 uses
  %i.g = alloca [28 x i8], align 4                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 6 uses
  switch i8 %0, label %default.unreachable7 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %switch.lookup
    i8 3, label %bb.d
  ]

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15
  %i.j = load ptr, ptr %1, align 8, !alias.scope !15, !nonnull !3, !align !7, !noundef !3 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !range !18, !noalias !15, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !15, !noundef !3 ; 2 uses
  store i32 2, ptr %i.i, align 4, !alias.scope !19, !noalias !15
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.k, ptr %.sroa.45.0..sroa_idx.i.i, align 4, !alias.scope !19, !noalias !15
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.m, ptr %.sroa.56.0..sroa_idx.i.i, align 4, !alias.scope !19, !noalias !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !15, !nonnull !3, !noundef !3 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !15, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  call void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types12binding_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.q, i32 noundef %i.k, i32 noundef %i.m), !noalias !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !15, !nonnull !3, !align !7, !noundef !3 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !range !18, !noalias !15, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load i32, ptr %i.u, align 4, !noalias !15, !noundef !3
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.g, i32 noundef %i.t, i32 noundef %i.v, ptr noundef nonnull %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.q), !noalias !15
  %i.w = call noundef i8 @_RNvXsp_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_4TypeNtNtB5_8variance17VarianceInferable11variance_of(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.q, ptr noundef nonnull align 4 %i.i, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.g), !noalias !15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22
  %i.x = load ptr, ptr %1, align 8, !alias.scope !22, !nonnull !3, !align !7, !noundef !3 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !range !18, !noalias !22, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !noalias !22, !noundef !3 ; 2 uses
  store i32 2, ptr %i.f, align 4, !alias.scope !25, !noalias !22
  %.sroa.45.0..sroa_idx.i.i1 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.y, ptr %.sroa.45.0..sroa_idx.i.i1, align 4, !alias.scope !25, !noalias !22
  %.sroa.56.0..sroa_idx.i.i2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.aa, ptr %.sroa.56.0..sroa_idx.i.i2, align 4, !alias.scope !25, !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !22, !nonnull !3, !noundef !3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !22, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  call void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types12binding_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ae, i32 noundef %i.y, i32 noundef %i.aa), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !22, !nonnull !3, !align !7, !noundef !3 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !range !18, !noalias !22, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !22, !noundef !3
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.d, i32 noundef %i.ah, i32 noundef %i.aj, ptr noundef nonnull %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ae), !noalias !22
  %i.ak = call noundef i8 @_RNvXsp_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_4TypeNtNtB5_8variance17VarianceInferable11variance_of(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ae, ptr noundef nonnull align 4 %i.f, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.d), !noalias !22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22
  %i.al = icmp eq i8 %i.ak, 3
  %spec.store.select.i3 = select i1 %i.al, i8 1, i8 %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28
  %i.am = load ptr, ptr %1, align 8, !alias.scope !28, !nonnull !3, !align !7, !noundef !3 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !range !18, !noalias !28, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !28, !noundef !3 ; 2 uses
  store i32 2, ptr %i.c, align 4, !alias.scope !31, !noalias !28
  %.sroa.45.0..sroa_idx.i.i4 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.an, ptr %.sroa.45.0..sroa_idx.i.i4, align 4, !alias.scope !31, !noalias !28
  %.sroa.56.0..sroa_idx.i.i5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ap, ptr %.sroa.56.0..sroa_idx.i.i5, align 4, !alias.scope !31, !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !28, !nonnull !3, !noundef !3 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !28, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  call void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types12binding_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.at, i32 noundef %i.an, i32 noundef %i.ap), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !28, !nonnull !3, !align !7, !noundef !3 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !range !18, !noalias !28, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !28, !noundef !3
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.a, i32 noundef %i.aw, i32 noundef %i.ay, ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.at), !noalias !28
  %i.az = call noundef i8 @_RNvXsp_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_4TypeNtNtB5_8variance17VarianceInferable11variance_of(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.at, ptr noundef nonnull align 4 %i.c, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.a), !noalias !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28
  %2 = icmp eq i8 %i.az, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28
  %i.ba = shl nuw nsw i8 %i.az, 3
  %3 = select i1 %2, i8 8, i8 %i.ba
  %switch.shiftamt = zext nneg i8 %3 to i24
  %switch.downshift = lshr i24 66048, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i8 [ %0, %bb.a ], [ 0, %bb.b ], [ %spec.store.select.i3, %bb.c ], [ %switch.masked, %switch.lookup ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types9iterationNtB8_14IterationError17report_diagnosticNtB3_8Reporter6is_notNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(128) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 4                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 4                ; 2 uses
  %i.f = alloca [80 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !align !7, !noundef !3 ; 4 uses
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, ptr noundef nonnull align 4 %i.o)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.g) #50
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit unwind label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load i8, ptr %i.q, align 8, !range !34, !noundef !3
  %i.s = trunc nuw i8 %i.r to i1                  ; 4 uses
  %spec.select = select i1 %i.s, ptr @2, ptr inttoptr (i64 1 to ptr)
  %spec.select15 = select i1 %i.s, i64 6, i64 0
  store ptr %spec.select, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %spec.select15, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.u, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.47.0..sroa_idx, align 8
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.g, ptr noundef nonnull @3, ptr noundef nonnull %i.c)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit unwind label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit11 unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeEBH_.exit: ; preds = %bb.m, %bb.n, %bb.f
  %.pn = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.af, %bb.n ], [ %i.af, %bb.m ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.h) #50
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit unwind label %bb.q

bb.f:                                             ; preds = %.invoke, %bb.p, %bb.e, %bb.k, %bb.h, %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit11
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeEBH_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit11: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.z = invoke noundef nonnull align 8 ptr @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_19LintDiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %bb.g unwind label %bb.f

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit11
  %i.aa = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsoTR8nlGN3X_18ty_python_semantic(i8 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z, ptr noalias noundef nonnull align 8 %i.aa)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  br i1 %4, label %bb.j, label %.invoke

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeEBH_.exit13, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.invoke:                                          ; preds = %bb.i
  %. = select i1 %i.s, i8 99, i8 101
  %.16 = select i1 %i.s, ptr @6, ptr @5
  invoke void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass19to_instance_unknown(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, i8 noundef %., ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, ptr noundef nonnull align 4 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.16)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %.invoke
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = invoke { ptr, i8 } @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type27assignability_error_context(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, ptr noundef nonnull align 4 %i.o, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.b)
          to label %bb.l unwind label %bb.f       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ac = extractvalue { ptr, i8 } %i.ab, 0
  %i.ad = extractvalue { ptr, i8 } %i.ab, 1
  store ptr %i.ac, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ad, ptr %i.ae, align 8
  invoke void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree9attach_to(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, ptr noundef nonnull align 4 %i.o, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.ag = load ptr, ptr %i.a, align 8, !alias.scope !44, !nonnull !3, !noundef !3 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !44, !noundef !3
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 8, !noalias !44
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeEBH_.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextNodeEE9drop_slowB1j_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeEBH_.exit unwind label %bb.q

bb.o:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.ak = load ptr, ptr %i.a, align 8, !alias.scope !54, !nonnull !3, !noundef !3 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noalias !54, !noundef !3
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ak, align 8, !noalias !54
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeEBH_.exit13

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextNodeEE9drop_slowB1j_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeEBH_.exit13 unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeEBH_.exit13: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.q:                                             ; preds = %bb.n, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeEBH_.exit, %bb.b
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit: ; preds = %bb.d, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeEBH_.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextTreeEBH_.exit ], [ %i.p, %bb.b ], [ %i.v, %bb.d ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types9iterationNtB8_14IterationError17report_diagnosticNtB3_8Reporter6is_notReEBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(128) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 28, 121) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !7, !noundef !3
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.j, ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.i, ptr noundef nonnull align 4 %i.l)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.d) #50
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit unwind label %bb.j
end_hunk_0
