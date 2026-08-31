Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.04?download=true
inline.NumInlined: 10536
inline.NumDeleted: 4602
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB8_19DisjointnessChecker15check_type_pair16nontrivial_checkNCNvMs4_B8_BY_15check_type_pairsj_0EBc_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false), !noalias !9964
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !9952, !noalias !9955, !nonnull !4, !align !32, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !noalias !9964
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !9952, !noalias !9955, !nonnull !4, !align !32, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !9952, !noalias !9955, !nonnull !4, !align !32, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !9952, !noalias !9955, !nonnull !4, !align !32, !noundef !4
  %i.aa = getelementptr i8, ptr %i.k, i64 32
  %.val.i = load ptr, ptr %i.aa, align 8, !noalias !9964, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9957
  call void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation10IsDisjointTNtB7_4TypeB1H_ENtNtB7_11constraints13ConstraintSetKj1_E11begin_visitB9_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noundef nonnull align 8 %.val.i, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.o, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(32) %i.g), !noalias !9965
  %i.ab = load i32, ptr %i.e, align 8, !range !54, !noalias !9969, !noundef !4
  switch i32 %i.ab, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !noalias !9972
  br label %_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19DisjointnessChecker15check_type_pairsj_0Bb_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %.val.i, i64 16, i1 false), !alias.scope !9973, !noalias !9972
  br label %_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19DisjointnessChecker15check_type_pairsj_0Bb_.exit

bb.f:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.v, i64 12, i1 false), !noalias !9981
  call void @_RNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20ProtocolInstanceType9interface(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.c, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.b, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.o), !noalias !9981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9977
  call void @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_classNtB5_21ProtocolInterfaceView7members(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.o), !noalias !9981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9977
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !9981, !nonnull !4, !align !10, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9977
  store ptr %i.x, ptr %i.a, align 8, !noalias !9977
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %i.ag, align 8, !noalias !9977
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.ah, align 8, !noalias !9977
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.z, ptr %i.ai, align 8, !noalias !9977
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.k, ptr %i.aj, align 8, !noalias !9977
  call void @_RINvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB7_14protocol_class18ProtocolMemberDataENCNvMs4_B3s_NtB3s_21ProtocolInterfaceView7members0EINtB5_28IteratorConstraintsExtensionNtB3s_14ProtocolMemberE8when_anyNCNCNCNvMs4_NtB7_8relationNtB6f_19DisjointnessChecker15check_type_pairsj_000EB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.d, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.o, ptr noundef nonnull align 8 %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !9982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9977
  call void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation10IsDisjointTNtB7_4TypeB1H_ENtNtB7_11constraints13ConstraintSetKj1_E12finish_visitB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %.val.i, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f), !noalias !9983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9969
  br label %_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19DisjointnessChecker15check_type_pairsj_0Bb_.exit

_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19DisjointnessChecker15check_type_pairsj_0Bb_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9957
  br label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19DisjointnessChecker15check_type_pairsj_0Bb_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB8_19DisjointnessChecker15check_type_pair16nontrivial_checkNCNvMs4_B8_BY_15check_type_pairsm_0EBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr %.8.val, i8 %.72.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = trunc nuw i8 %.72.val to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9984)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !9984, !noalias !9987, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !9989, !nonnull !4, !align !10, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9989
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !9984, !noalias !9987, !nonnull !4, !align !32, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !9989
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !9984, !noalias !9987, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !9984, !noalias !9987, !nonnull !4, !align !10, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !9984, !noalias !9987, !nonnull !4, !align !32, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9989
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !9984, !noalias !9987, !nonnull !4, !align !32, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false), !noalias !9989
  %i.q = call noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType47could_exist_in_mro_of_with_disjointness_checker(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, ptr noundef nonnull align 4 %i.n, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.d), !noalias !9989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9989
  %spec.select.i.i = select i1 %i.q, i32 -2, i32 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %spec.select.i.i, %bb.c ], [ -2, %bb.b ]
  %storemerge = phi ptr [ %i.f, %bb.c ], [ %.8.val, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.s, align 4
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB8_19DisjointnessChecker15check_type_pair16nontrivial_checkNCNvMs4_B8_BY_15check_type_pairsn_0EBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr %.8.val, i8 %.72.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = trunc nuw i8 %.72.val to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9990)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !9990, !noalias !9993, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !9995, !nonnull !4, !align !10, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9995
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !9990, !noalias !9993, !nonnull !4, !align !32, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !9995
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !9990, !noalias !9993, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !9990, !noalias !9993, !nonnull !4, !align !10, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !9990, !noalias !9993, !nonnull !4, !align !32, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9995
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !9990, !noalias !9993, !nonnull !4, !align !32, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = load <2 x i32>, ptr %i.p, align 4, !noalias !9995
  store <2 x i32> %i.r, ptr %i.q, align 4, !noalias !9995
  store i32 -1, ptr %i.a, align 4, !noalias !9995
  %i.s = call noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType47could_exist_in_mro_of_with_disjointness_checker(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, ptr noundef nonnull align 4 %i.n, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.d), !noalias !9995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9995
  %spec.select.i.i = select i1 %i.s, i32 -2, i32 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %spec.select.i.i, %bb.c ], [ -2, %bb.b ]
  %storemerge = phi ptr [ %i.f, %bb.c ], [ %.8.val, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.u, align 4
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB8_19DisjointnessChecker15check_type_pair16nontrivial_checkNCNvMs4_B8_BY_15check_type_pairso_0EBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr %.8.val, i8 %.72.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = trunc nuw i8 %.72.val to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.e, align 4
  store ptr %.8.val, ptr %0, align 8
  br label %_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19DisjointnessChecker15check_type_pairso_0Bb_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9999)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !9999, !noalias !9996, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !9999, !noalias !9996, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !9999, !noalias !9996, !nonnull !4, !align !10, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !9999, !noalias !9996, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.l, align 4, !noalias !10001 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !9999, !noalias !9996, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %i.n, align 4, !noalias !10001 ; 3 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10005)
  %i.o = icmp eq i32 %.sroa.0.0.copyload.i, 2
  %i.p = icmp eq i32 %.sroa.01.0.copyload.i, 2
  %or.cond.i = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !10005, !noalias !10007, !nonnull !4, !align !10, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.s, align 8, !alias.scope !10011, !noalias !10014
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.t, align 4, !alias.scope !10011, !noalias !10014
  store ptr %i.r, ptr %0, align 8, !alias.scope !10011, !noalias !10014
  br label %_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19DisjointnessChecker15check_type_pairso_0Bb_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i32 %.sroa.0.0.copyload.i, 1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !10005, !noalias !10007, !nonnull !4, !align !10, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.x, align 8, !alias.scope !10015, !noalias !10014
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.y, align 4, !alias.scope !10015, !noalias !10014
  store ptr %i.w, ptr %0, align 8, !alias.scope !10015, !noalias !10014
  br label %_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19DisjointnessChecker15check_type_pairso_0Bb_.exit

bb.g:                                             ; preds = %bb.e
  switch i32 %.sroa.01.0.copyload.i, label %2 [
    i32 0, label %bb.h
    i32 1, label %bb.f
  ], !prof !10018

2:                                                ; preds = %bb.g
  %3 = icmp eq i32 %.sroa.0.0.copyload.i, 3
  %4 = icmp eq i32 %.sroa.01.0.copyload.i, 3
  %or.cond.i.i = or i1 %3, %4
  tail call void @llvm.assume(i1 %or.cond.i.i)
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %i.z, label %bb.i, label %bb.j, !prof !10019

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx.i, i64 12, i1 false), !noalias !10001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.42.0..sroa_idx.i, i64 12, i1 false), !noalias !10001
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !10005, !noalias !10007, !nonnull !4, !align !10, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !10005, !noalias !10007, !nonnull !4, !align !32, !noundef !4
  %i.ad = call noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType46could_coexist_in_mro_with_disjointness_checker(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.j, ptr noundef nonnull align 4 %i.ac, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.f), !noalias !10021
  %spec.select.i.i.i = select i1 %i.ad, i32 -2, i32 -1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %spec.select.i.i.i, ptr %i.ae, align 8, !alias.scope !10022, !noalias !10014
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.af, align 4, !alias.scope !10022, !noalias !10014
  store ptr %i.ab, ptr %0, align 8, !alias.scope !10022, !noalias !10014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10020
  br label %_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19DisjointnessChecker15check_type_pairso_0Bb_.exit

bb.j:                                             ; preds = %bb.h, %2
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #64, !noalias !10020
  unreachable

_RNCNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_19DisjointnessChecker15check_type_pairso_0Bb_.exit: ; preds = %bb.i, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB8_19DisjointnessChecker15check_type_pair16nontrivial_checkNCNvMs4_B8_BY_15check_type_pairsq_0EBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr %.8.val, i8 %.72.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = trunc nuw i8 %.72.val to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10025)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !10025, !noalias !10028, !nonnull !4, !align !10, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !10025, !noalias !10028, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !9809, !noalias !10030, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1, !noalias !10030
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10025, !noalias !10028, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !10025, !noalias !10028, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !10025, !noalias !10028, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10030
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !10025, !noalias !10028, !nonnull !4, !align !32, !noundef !4
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType5class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.p, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, ptr noundef nonnull align 4 %i.n), !noalias !10030
  %i.q = call noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB4_15SpecialFormType14is_instance_of(i8 noundef %i.f, i8 %i.h, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, ptr noundef nonnull align 4 %i.n, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a), !noalias !10030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10030
  %spec.select.i.i = select i1 %i.q, i32 -2, i32 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %spec.select.i.i, %bb.c ], [ -2, %bb.b ]
  %storemerge = phi ptr [ %i.c, %bb.c ], [ %.8.val, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.s, align 4
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB8_19DisjointnessChecker15check_type_pair16nontrivial_checkNCNvMs4_B8_BY_15check_type_pairsr_0EBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr %.8.val, i8 %.72.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = trunc nuw i8 %.72.val to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10031)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !10031, !noalias !10034, !nonnull !4, !align !10, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10036
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !10031, !noalias !10034, !nonnull !4, !align !32, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !noalias !10036
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10031, !noalias !10034, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10031, !noalias !10034, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !10031, !noalias !10034, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10036
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !10031, !noalias !10034, !nonnull !4, !align !32, !noundef !4
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType5class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.n, ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.j, ptr noundef nonnull align 4 %i.l), !noalias !10036
  %i.o = call noundef zeroext i1 @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instanceNtB5_17KnownInstanceType14is_instance_of(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.j, ptr noundef nonnull align 4 %i.l, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a), !noalias !10036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10036
  %spec.select.i.i = select i1 %i.o, i32 -2, i32 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %spec.select.i.i, %bb.c ], [ -2, %bb.b ]
  %storemerge = phi ptr [ %i.d, %bb.c ], [ %.8.val, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.q, align 4
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB8_19DisjointnessChecker15check_type_pair16nontrivial_checkNCNvMs4_B8_BY_15check_type_pairst_0EBc_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr %.8.val, i8 %.72.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = trunc nuw i8 %.72.val to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.e, align 4
  store ptr %.8.val, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10040
  %i.f = load ptr, ptr %1, align 8, !alias.scope !10037, !noalias !10042, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10037, !noalias !10042, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10037, !noalias !10042, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10040
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !10037, !noalias !10042, !nonnull !4, !align !32, !noundef !4
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType5class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.l, ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.h, ptr noundef nonnull align 4 %i.j), !noalias !10040
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !10037, !noalias !10042, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass16when_subclass_of(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, i8 noundef 0, ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.h, ptr noundef nonnull align 4 %i.j, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, ptr noundef nonnull align 8 %i.n), !noalias !10040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10040
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet6negate(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.h, ptr noundef nonnull align 8 %i.n), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10040
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB8_19DisjointnessChecker15check_type_pair16nontrivial_checkNCNvMs4_B8_BY_15check_type_pairsu_0EBc_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr %.8.val, i8 %.72.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = trunc nuw i8 %.72.val to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.g, align 4
  store ptr %.8.val, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10043)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10046
  %i.h = load ptr, ptr %1, align 8, !alias.scope !10043, !noalias !10048, !nonnull !4, !align !32, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !10046
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10043, !noalias !10048, !nonnull !4, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !10043, !noalias !10048, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !10043, !noalias !10048, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  call void @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral23metaclass_instance_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, ptr noundef nonnull align 4 %i.n), !noalias !10046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10046
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !10043, !noalias !10048, !nonnull !4, !align !32, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false), !noalias !10046
  store i32 18, ptr %i.a, align 4, !noalias !10046
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !10043, !noalias !10048, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !10046, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.w = load i32, ptr %i.v, align 8, !noalias !10046, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  %i.y = load i32, ptr %i.x, align 4, !noalias !10046
  call void @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type15when_subtype_of(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, ptr noundef nonnull align 4 %i.n, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %i.u, i32 noundef %i.w, i32 %i.y), !noalias !10046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10046
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet6negate(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.d, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, ptr noundef nonnull align 8 %i.u), !noalias !10043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10046
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB8_19DisjointnessChecker15check_type_pair16nontrivial_checkNCNvMs4_B8_BY_15check_type_pairsw_0EBc_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr %.8.val, i8 %.72.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1_@_RNvXshb_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_16ExprBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !noundef !4
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !noundef !4
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !noundef !4
  %i.q = icmp eq ptr %i.p, null                   ; 3 uses
  %i.r = xor i1 %i.o, %i.q
  br i1 %i.r, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.m, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  %i.x = xor i1 %i.q, true
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !noundef !4
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !noundef !4
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.i, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.ai, ptr noundef nonnull align 4 %i.aj)
  br i1 %i.ak, label %bb.j, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ar = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ar, ptr nonnull %i.aq, i64 %i.am)
  %i.as = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.as, label %bb.l, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i8, ptr %i.at, align 4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aw = load i8, ptr %i.av, align 4, !noundef !4
  %i.ax = icmp eq i8 %i.au, %i.aw
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4
  %i.bc = icmp eq i64 %i.t, 0
  br i1 %i.bc, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

bb.n:                                             ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.bd = add nuw i64 %.sroa.01.06.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.t
  br i1 %exitcond.not.i.i, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.n
  %.sroa.01.06.i.i = phi i64 [ %i.bd, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.sroa.01.06.i.i ; 6 uses
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %.sroa.01.06.i.i ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !noundef !4
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.o, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !4
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.p, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bs = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.bq, ptr noundef nonnull align 4 %i.br)
  br i1 %i.bs, label %bb.q, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !4
  %i.bx = icmp eq i64 %i.bu, %i.bw
  br i1 %i.bx, label %bb.r, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.by = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4
  %i.bz = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bz, ptr nonnull %i.by, i64 %i.bu)
  %i.ca = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ca, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  %i.cc = load i8, ptr %i.cb, align 4, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.ce = load i8, ptr %i.cd, align 4, !noundef !4
  %.not.i.i = icmp eq i8 %i.cc, %i.ce
  br i1 %.not.i.i, label %bb.n, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.r, %bb.q, %bb.p, %bb.o, %.lr.ph.i.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.f ], [ %i.ax, %bb.l ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.k ], [ true, %bb.m ], [ false, %bb.o ], [ false, %bb.r ], [ false, %.lr.ph.i.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ true, %bb.n ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !4
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29515)
  %i.n = load i64, ptr %0, align 8, !range !17, !alias.scope !29512, !noalias !29515, !noundef !4 ; 2 uses
  %i.o = load i64, ptr %1, align 8, !range !17, !alias.scope !29515, !noalias !29512, !noundef !4
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !29512, !noalias !29515, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.s, align 8, !alias.scope !29512, !noalias !29515 ; 2 uses
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !29515, !noalias !29512, !noundef !4 ; 2 uses
  %i.t = icmp ne ptr %.val.i, null                ; 2 uses
  %i.u = icmp eq ptr %.val3.i, null               ; 3 uses
  %not..i.i = xor i1 %i.u, true
  %i.v = xor i1 %i.t, %i.u
  br i1 %i.v, label %bb.g, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %2, align 8, !alias.scope !29515, !noalias !29512
  %i.w = icmp eq i64 %.val2.i, %.val4.i           ; 2 uses
  br i1 %i.t, label %3, label %bb.h

3:                                                ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i)
  br i1 %i.w, label %bb.i, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.u)
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %3
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val3.i, i64 %.val2.i), !noalias !29517
  %i.x = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.e
  %i.y = load double, ptr %i.q, align 8, !alias.scope !29512, !noalias !29515, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8, !alias.scope !29515, !noalias !29512, !noundef !4
  %i.ab = fcmp oeq double %i.y, %i.aa
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.e
  %i.ac = load double, ptr %i.q, align 8, !alias.scope !29512, !noalias !29515, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !alias.scope !29515, !noalias !29512, !noundef !4
  %i.af = fcmp oeq double %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !alias.scope !29512, !noalias !29515, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !alias.scope !29515, !noalias !29512, !noundef !4
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %3, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.k ], [ %i.ab, %bb.j ], [ %i.ak, %bb.l ], [ false, %bb.d ], [ %i.x, %bb.i ], [ false, %bb.f ], [ %i.w, %bb.h ], [ false, %3 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !42, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !42, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !4
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.p, %bb.e ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noundef !4
  %i.p = icmp eq i32 %i.m, %i.o
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi2_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprTupleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !range !42, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i8, ptr %i.c, align 4, !range !42, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.f, ptr noundef nonnull align 4 %i.g)
  br i1 %i.h, label %bb.c, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !noundef !4
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i32, ptr %i.p, align 4, !noundef !4
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %.not2.not = icmp eq i64 %i.t, 0
  br i1 %.not2.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i3, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.01.0.i3 = phi i64 [ %i.ab, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.aa, i64 %.sroa.01.0.i3
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %.sroa.01.0.i3
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ac, ptr noundef nonnull align 8 %i.ad), !inline_history !29342
  br i1 %i.ae, label %bb.g, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 37
  %.val = load i8, ptr %i.af, align 1, !range !10154, !noundef !4
  %.val1 = load i8, ptr %i.ag, align 1, !range !10154, !noundef !4
  %i.ah = icmp eq i8 %.val, %.val1
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.lr.ph, %bb.d, %bb.a, %bb.b, %bb.c, %bb.e, %._crit_edge
  %.sroa.0.0 = phi i1 [ %i.ah, %._crit_edge ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi7_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !noundef !4
  %i.e = load i32, ptr %1, align 8, !noundef !4
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !4
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !align !10, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !align !10, !noundef !4 ; 2 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.k, label %.split

bb.f:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.g, label %bb.k

.split:                                           ; preds = %bb.e
  %i.q = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull align 8 %i.o)
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.split, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !align !10, !noundef !4 ; 2 uses
  %.not4 = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !align !10, !noundef !4 ; 2 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.k, label %.split8

bb.i:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %bb.k

.split8:                                          ; preds = %bb.h
  %i.w = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.s, ptr noundef nonnull align 8 %i.u)
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split8, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !align !10, !noundef !4 ; 2 uses
  %.not6 = icmp eq ptr %i.y, null                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !align !10, !noundef !4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  %brmerge = or i1 %.not6, %i.ab
  %.mux = and i1 %.not6, %i.ab
  br i1 %brmerge, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %.split8, %.split, %bb.c, %bb.f, %bb.i, %bb.a, %bb.b, %bb.e, %bb.h, %bb.l
  %.sroa.0.0.shrunk = phi i1 [ %i.ac, %bb.l ], [ false, %bb.c ], [ false, %.split8 ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.f ], [ %.mux, %bb.j ], [ false, %.split ]
  ret i1 %.sroa.0.0.shrunk

bb.l:                                             ; preds = %bb.j
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.aa)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsi_NtCs45bxiIjzMqg_5salsa8internedINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function25UpdatedFunctionSignaturesEEINtB5_10HashEqLikeRBA_E2eqB1Q_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4
  %.val = load ptr, ptr %0, align 8, !align !10, !noundef !4 ; 5 uses
  %.val1 = load ptr, ptr %i.a, align 8            ; 5 uses
  %.not.i = icmp eq ptr %.val, null               ; 2 uses
  %i.b = icmp eq ptr %.val1, null                 ; 2 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %i.b
end_hunk_1
