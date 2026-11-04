Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.11?download=true
inline.NumInlined: 8904
inline.NumDeleted: 4915
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceTNtB1w_20BoundTypeVarIdentityB1u_EuNCINvMs_NtB1y_8genericsNtB3o_14GenericContext33from_typevar_instances_in_programINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtBb_6option4IterB3D_EINtNtBW_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB2I_B1u_EENCINvNtNtB1y_5class11named_tuple34synthesize_namedtuple_class_memberINtNtBW_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB70_15NamedTupleFieldEEE0EINtNtNtBY_7sources4once4OnceB1u_EEE0NCINvNvNtNtNtBY_6traits8iterator8Iterator8for_each4callB2H_NCINvXsb_B66_INtB66_8IndexMapB2I_B1u_INtNtBb_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtBa0_7collect6ExtendB2H_E6extendINtBU_3MapB4y_B3g_EE0E0E0INtB7_5FnMutTuB1u_EE8call_mutB1A_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.b, ptr noundef nonnull align 4 dereferenceable(28) %i.c, i64 28, i1 false), !noalias !17516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17517
  call void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBP_20BoundTypeVarInstanceINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBT_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %.val3.i.i, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(28) %i.b, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !noalias !17517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix14IsolationLevelNtB6_5Debug3fmtCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17521)
  %i.c = load i32, ptr %i.b, align 4, !range !15, !alias.scope !17521, !noundef !3
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1117, i64 noundef 14), !noalias !17521
  br label %_RNvXsf_NtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB5_14IsolationLevelNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17522
  store ptr %i.f, ptr %i.a, align 8, !noalias !17522
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1116, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17522
  br label %_RNvXsf_NtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB5_14IsolationLevelNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

_RNvXsf_NtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB5_14IsolationLevelNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixNtB6_5Debug3fmtCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !22, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17526
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.a, align 8, !noalias !17526
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1121, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1122, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1118, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1123, i64 noundef 13, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1119, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1124, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1120)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17526
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance20synthesized_protocol23SynthesizedProtocolTypeNtB6_5Debug3fmtBE_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !13, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17530
  store ptr %i.b, ptr %i.a, align 8, !noalias !17530
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1101, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1100)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17530
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1h_NtCs4NRVxsYgnAr_4core3fmtQDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_NtB6_5Debug3fmtCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !22, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !3, !nonnull !3
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #19 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !29, !noundef !3 ; 3 uses
  %i.b = icmp ne i32 %i.a, 17
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -4
  %i.d = icmp samesign ugt i32 %i.a, 3
  %narrow = select i1 %i.d, i32 %i.c, i32 13      ; 2 uses
  %i.e = load i32, ptr %1, align 4, !range !29, !noundef !3 ; 3 uses
  %i.f = icmp ne i32 %i.e, 17
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.e, -4
  %i.h = icmp samesign ugt i32 %i.e, 3
  %narrow1 = select i1 %i.h, i32 %i.g, i32 13
  %i.i = icmp eq i32 %narrow, %narrow1
  br i1 %i.i, label %bb.b, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.av, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.e ], [ %.sroa.0.0.i76, %bb.l ], [ %.sroa.0.0.i77, %bb.m ], [ %i.ba, %bb.n ], [ %i.bd, %bb.o ], [ %.sroa.0.0.i78, %bb.p ], [ %.sroa.0.0.i79, %bb.q ], [ %.sroa.0.0.i80, %bb.r ], [ %.sroa.0.0.i81, %bb.s ], [ %i.ca, %bb.t ], [ %.sroa.0.0.i82, %bb.u ], [ %i.cg, %bb.v ], [ %i.cj, %bb.w ], [ %i.cm, %bb.x ], [ false, %bb.g ], [ %i.cx, %bb.ad ], [ %.sroa.0.0.i83, %bb.ae ], [ %.sroa.0.0.i84, %bb.af ], [ %.sroa.0.0.i85, %bb.ag ], [ %.sroa.0.0.i86, %bb.ah ], [ %i.du, %bb.ai ], [ %.sroa.0.0.i87, %bb.aj ], [ %.sroa.0.0.i88, %bb.ak ], [ %.sroa.0.0.i89, %bb.al ], [ %.sroa.0.0.i90, %bb.am ], [ %.sroa.0.0.i91, %bb.an ], [ %i.ew, %bb.ao ], [ true, %bb.z ], [ %.sroa.0.0.i93, %bb.av ], [ false, %bb.c ], [ %i.y, %bb.f ], [ true, %bb.d ], [ %.not2.i, %bb.j ], [ false, %bb.h ], [ %i.an, %bb.k ], [ false, %bb.y ], [ %i.cs, %bb.aa ], [ %i.ct, %bb.ab ], [ %i.cu, %bb.ac ], [ %i.fr, %bb.au ], [ false, %bb.as ], [ %i.fm, %bb.at ], [ false, %bb.ap ], [ false, %bb.ar ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %bb.a
  switch i32 %narrow, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit [
    i32 0, label %bb.c
    i32 1, label %bb.g
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.n
    i32 6, label %bb.o
    i32 7, label %bb.p
    i32 8, label %bb.q
    i32 9, label %bb.r
    i32 10, label %bb.s
    i32 11, label %bb.t
    i32 12, label %bb.u
    i32 13, label %bb.v
    i32 14, label %bb.w
    i32 15, label %bb.x
    i32 16, label %bb.y
    i32 17, label %bb.ad
    i32 18, label %bb.ae
    i32 19, label %bb.af
    i32 20, label %bb.ag
    i32 21, label %bb.ah
    i32 24, label %bb.ai
    i32 25, label %bb.aj
    i32 26, label %bb.ak
    i32 27, label %bb.al
    i32 28, label %bb.am
    i32 29, label %bb.an
    i32 30, label %bb.ao
    i32 31, label %bb.ap
    i32 32, label %bb.av
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17541)
  %i.l = load i32, ptr %i.j, align 4, !range !57, !alias.scope !17540, !noundef !3 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !range !57, !alias.scope !17541, !noundef !3
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.l, 2
  br i1 %i.o, label %bb.e, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !17540, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !17541, !noundef !3
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4, !range !26, !alias.scope !17540, !noundef !3
  %i.x = load i32, ptr %i.u, align 4, !range !26, !alias.scope !17541, !noundef !3
  %i.y = icmp eq i32 %i.w, %i.x
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17543)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !17542, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !17543, !noundef !3
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !range !26, !alias.scope !17542, !noundef !3
  %i.ah = load i32, ptr %i.ae, align 4, !range !26, !alias.scope !17543, !noundef !3
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !range !20, !alias.scope !17542, !noundef !3 ; 2 uses
  %.not.i = icmp eq i8 %i.ak, 2
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = load i8, ptr %i.al, align 4, !range !20, !alias.scope !17543, !noundef !3 ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not2.i = icmp eq i8 %i.ak, %i.am
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.i
  %i.an = icmp eq i8 %i.am, 2
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = load <2 x i32>, ptr %i.ao, align 4
  %i.ar = load <2 x i32>, ptr %i.ap, align 4
  %i.as = icmp eq <2 x i32> %i.aq, %i.ar          ; 2 uses
  %2 = extractelement <2 x i1> %i.as, i64 0
  %3 = extractelement <2 x i1> %i.as, i64 1
  %.sroa.0.0.i76 = select i1 %3, i1 %2, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load <2 x i32>, ptr %i.at, align 4
  %i.aw = load <2 x i32>, ptr %i.au, align 4
  %i.ax = icmp eq <2 x i32> %i.av, %i.aw          ; 2 uses
  %4 = extractelement <2 x i1> %i.ax, i64 0
  %5 = extractelement <2 x i1> %i.ax, i64 1
  %.sroa.0.0.i77 = select i1 %5, i1 %4, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = tail call fastcc noundef zeroext i1 @_RNvXsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6methodNtB5_20KnownBoundMethodTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ay, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.az)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val9 = load i8, ptr %i.bb, align 4, !range !41, !noundef !3
  %.val10 = load i8, ptr %i.bc, align 4, !range !41, !noundef !3
  %i.bd = icmp eq i8 %.val9, %.val10
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load <2 x i32>, ptr %i.be, align 4
  %i.bh = load <2 x i32>, ptr %i.bf, align 4
  %i.bi = icmp eq <2 x i32> %i.bg, %i.bh          ; 2 uses
  %6 = extractelement <2 x i1> %i.bi, i64 0
  %7 = extractelement <2 x i1> %i.bi, i64 1
  %.sroa.0.0.i78 = select i1 %7, i1 %6, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bl = load <2 x i32>, ptr %i.bj, align 4
  %i.bm = load <2 x i32>, ptr %i.bk, align 4
  %i.bn = icmp eq <2 x i32> %i.bl, %i.bm          ; 2 uses
  %8 = extractelement <2 x i1> %i.bn, i64 0
  %9 = extractelement <2 x i1> %i.bn, i64 1
  %.sroa.0.0.i79 = select i1 %9, i1 %8, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = load <2 x i32>, ptr %i.bo, align 4
  %i.br = load <2 x i32>, ptr %i.bp, align 4
  %i.bs = icmp eq <2 x i32> %i.bq, %i.br          ; 2 uses
  %10 = extractelement <2 x i1> %i.bs, i64 0
  %11 = extractelement <2 x i1> %i.bs, i64 1
  %.sroa.0.0.i80 = select i1 %11, i1 %10, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = load <2 x i32>, ptr %i.bt, align 4
  %i.bw = load <2 x i32>, ptr %i.bu, align 4
  %i.bx = icmp eq <2 x i32> %i.bv, %i.bw          ; 2 uses
  %12 = extractelement <2 x i1> %i.bx, i64 0
  %13 = extractelement <2 x i1> %i.bx, i64 1
  %.sroa.0.0.i81 = select i1 %13, i1 %12, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ca = tail call fastcc noundef zeroext i1 @_RNvXs12_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.by, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.bz)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cd = load <2 x i32>, ptr %i.cb, align 4
  %i.ce = load <2 x i32>, ptr %i.cc, align 4
  %i.cf = icmp eq <2 x i32> %i.cd, %i.ce          ; 2 uses
  %14 = extractelement <2 x i1> %i.cf, i64 0
  %15 = extractelement <2 x i1> %i.cf, i64 1
  %.sroa.0.0.i82 = select i1 %15, i1 %14, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.b
  %i.cg = tail call fastcc noundef zeroext i1 @_RNvXsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB5_14SubclassOfTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cj = tail call fastcc noundef zeroext i1 @_RNvXsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_19NominalInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ch, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ci)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cm = tail call fastcc noundef zeroext i1 @_RNvXsS_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20ProtocolInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ck, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cl)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.b
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val31 = load i8, ptr %i.cn, align 4, !range !53, !noundef !3 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.val32 = load i8, ptr %i.cp, align 1           ; 3 uses
  %.val33 = load i8, ptr %i.co, align 4, !range !53, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.val34 = load i8, ptr %i.cq, align 1           ; 3 uses
  %i.cr = icmp eq i8 %.val31, %.val33
  br i1 %i.cr, label %bb.z, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.y
  switch i8 %.val31, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit [
    i8 0, label %bb.aa
    i8 1, label %bb.ab
    i8 32, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cs = icmp eq i8 %.val32, %.val34
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.z
  %i.ct = icmp eq i8 %.val32, %.val34
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.z
  %i.cu = icmp eq i8 %.val32, %.val34
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.b
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cx = tail call fastcc noundef zeroext i1 @_RNvXsF_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instanceNtB5_17KnownInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cv, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cw)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.da = load <2 x i32>, ptr %i.cy, align 4
  %i.db = load <2 x i32>, ptr %i.cz, align 4
  %i.dc = icmp eq <2 x i32> %i.da, %i.db          ; 2 uses
  %16 = extractelement <2 x i1> %i.dc, i64 0
  %17 = extractelement <2 x i1> %i.dc, i64 1
  %.sroa.0.0.i83 = select i1 %17, i1 %16, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.b
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.df = load <2 x i32>, ptr %i.dd, align 4
  %i.dg = load <2 x i32>, ptr %i.de, align 4
  %i.dh = icmp eq <2 x i32> %i.df, %i.dg          ; 2 uses
  %18 = extractelement <2 x i1> %i.dh, i64 0
  %19 = extractelement <2 x i1> %i.dh, i64 1
  %.sroa.0.0.i84 = select i1 %19, i1 %18, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.b
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dk = load <2 x i32>, ptr %i.di, align 4
  %i.dl = load <2 x i32>, ptr %i.dj, align 4
  %i.dm = icmp eq <2 x i32> %i.dk, %i.dl          ; 2 uses
  %20 = extractelement <2 x i1> %i.dm, i64 0
  %21 = extractelement <2 x i1> %i.dm, i64 1
  %.sroa.0.0.i85 = select i1 %21, i1 %20, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.b
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dp = load <2 x i32>, ptr %i.dn, align 4
  %i.dq = load <2 x i32>, ptr %i.do, align 4
  %i.dr = icmp eq <2 x i32> %i.dp, %i.dq          ; 2 uses
  %22 = extractelement <2 x i1> %i.dr, i64 0
  %23 = extractelement <2 x i1> %i.dr, i64 1
  %.sroa.0.0.i86 = select i1 %23, i1 %22, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.b
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.du = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB5_16LiteralValueTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ds, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.dt)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dx = load <2 x i32>, ptr %i.dv, align 4
  %i.dy = load <2 x i32>, ptr %i.dw, align 4
  %i.dz = icmp eq <2 x i32> %i.dx, %i.dy          ; 2 uses
  %24 = extractelement <2 x i1> %i.dz, i64 0
  %25 = extractelement <2 x i1> %i.dz, i64 1
  %.sroa.0.0.i87 = select i1 %25, i1 %24, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ec = load <2 x i32>, ptr %i.ea, align 4
  %i.ed = load <2 x i32>, ptr %i.eb, align 4
  %i.ee = icmp eq <2 x i32> %i.ec, %i.ed          ; 2 uses
  %26 = extractelement <2 x i1> %i.ee, i64 0
  %27 = extractelement <2 x i1> %i.ee, i64 1
  %.sroa.0.0.i88 = select i1 %27, i1 %26, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.b
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.eh = load <2 x i32>, ptr %i.ef, align 4
  %i.ei = load <2 x i32>, ptr %i.eg, align 4
  %i.ej = icmp eq <2 x i32> %i.eh, %i.ei          ; 2 uses
  %28 = extractelement <2 x i1> %i.ej, i64 0
  %29 = extractelement <2 x i1> %i.ej, i64 1
  %.sroa.0.0.i89 = select i1 %29, i1 %28, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.b
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.em = load <2 x i32>, ptr %i.ek, align 4
  %i.en = load <2 x i32>, ptr %i.el, align 4
  %i.eo = icmp eq <2 x i32> %i.em, %i.en          ; 2 uses
  %30 = extractelement <2 x i1> %i.eo, i64 0
  %31 = extractelement <2 x i1> %i.eo, i64 1
  %.sroa.0.0.i90 = select i1 %31, i1 %30, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.b
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.er = load <2 x i32>, ptr %i.ep, align 4
  %i.es = load <2 x i32>, ptr %i.eq, align 4
  %i.et = icmp eq <2 x i32> %i.er, %i.es          ; 2 uses
  %32 = extractelement <2 x i1> %i.et, i64 0
  %33 = extractelement <2 x i1> %i.et, i64 1
  %.sroa.0.0.i91 = select i1 %33, i1 %32, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %bb.b
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ew = tail call fastcc noundef zeroext i1 @_RNvXsP_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.eu, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ev)
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %bb.b
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17545)
  %i.ez = load i32, ptr %i.ex, align 4, !range !15, !alias.scope !17544, !noundef !3 ; 2 uses
  %i.fa = load i32, ptr %i.ey, align 4, !range !15, !alias.scope !17545, !noundef !3
  %i.fb = icmp eq i32 %i.ez, %i.fa
  br i1 %i.fb, label %bb.aq, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %bb.ap
  %i.fc = trunc nuw i32 %i.ez to i1
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !alias.scope !17544, !noundef !3
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !alias.scope !17545, !noundef !3
  %i.fh = icmp eq i32 %i.fe, %i.fg                ; 2 uses
  br i1 %i.fc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.fh, label %bb.au, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.aq
  br i1 %i.fh, label %bb.at, label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.as
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !range !26, !alias.scope !17544, !noundef !3
  %i.fl = load i32, ptr %i.fi, align 4, !range !26, !alias.scope !17545, !noundef !3
  %i.fm = icmp eq i32 %i.fk, %i.fl
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.au:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !range !26, !alias.scope !17544, !noundef !3
  %i.fq = load i32, ptr %i.fn, align 4, !range !26, !alias.scope !17545, !noundef !3
  %i.fr = icmp eq i32 %i.fp, %i.fq
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.av:                                            ; preds = %bb.b
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fu = load <2 x i32>, ptr %i.fs, align 4
  %i.fv = load <2 x i32>, ptr %i.ft, align 4
  %i.fw = icmp eq <2 x i32> %i.fu, %i.fv          ; 2 uses
  %34 = extractelement <2 x i1> %i.fw, i64 0
  %35 = extractelement <2 x i1> %i.fw, i64 1
  %.sroa.0.0.i93 = select i1 %35, i1 %34, i1 false
  br label %_RNvXs3S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_11DynamicTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB5_13ApplicabilityNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #13 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !20, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB5_13ApplicabilityNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB5_13ApplicabilityNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.1786, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB2k_20BoundTypeVarInstanceEEIB1d_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtB2m_4TypeEEEENCINvMs7_NtB2m_8genericsNtB5e_16TypeVarInference19specialization_withNCNvMs4_NtB2m_10signaturesNtB6k_9Signature34partial_application_specializations1_0E0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB2o_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17554
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0), !noalias !17555
  %i.e = load i64, ptr %i.b, align 8, !noalias !17554, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !18, !noalias !17554, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !17554 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17554
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !noalias !17555
  %i.k = load i64, ptr %i.a, align 8, !noalias !17554, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !18, !noalias !17554, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !17554 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17554
  %i.p = trunc nuw i64 %i.g to i1
  %i.q = trunc nuw i64 %i.m to i1                 ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.d, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i

bb.c:                                             ; preds = %bb.a
  %..i.i.i = select i1 %i.q, i64 %i.o, i64 undef
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.i14.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.i)
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.0.0.i14.i.i.i, %bb.d ], [ %..i.i.i, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %.sroa.05.0.i.i.i = phi i64 [ 1, %bb.d ], [ %i.m, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.e) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17556
  store i64 %.sroa.05.0.i.i.i, ptr %i.d, align 8, !noalias !17556
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.7.0.i.i.i, ptr %i.r, align 8, !noalias !17556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17556
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.s, align 8, !noalias !17556
  store i64 1, ptr %i.c, align 8, !noalias !17556
  %i.t = trunc nuw i64 %.sroa.05.0.i.i.i to i1
  %i.u = icmp eq i64 %.sroa.7.0.i.i.i, %.sroa.0.0.i.i.i.i
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false, !prof !58
  br i1 %or.cond.i, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1Y_20BoundTypeVarInstanceEEIBR_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtB20_4TypeEEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB22_.exit, label %bb.e, !prof !58

bb.e:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1103) #40
  unreachable

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1Y_20BoundTypeVarInstanceEEIBR_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtB20_4TypeEEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB22_.exit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17556
  ret i64 %.sroa.7.0.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB2k_20BoundTypeVarInstanceEEIB1d_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtB2m_4TypeEEEENCINvMs7_NtB2m_8genericsNtB5e_16TypeVarInference19specialization_withNCNvNvXs0_NvNvMs7_B5e_B5t_14specialization1__NtB6m_35specialization_inner_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0E0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB2o_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17565
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0), !noalias !17566
  %i.e = load i64, ptr %i.b, align 8, !noalias !17565, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !18, !noalias !17565, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !17565 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17565
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !noalias !17566
  %i.k = load i64, ptr %i.a, align 8, !noalias !17565, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !18, !noalias !17565, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !17565 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17565
  %i.p = trunc nuw i64 %i.g to i1
  %i.q = trunc nuw i64 %i.m to i1                 ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.d, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i

bb.c:                                             ; preds = %bb.a
  %..i.i.i = select i1 %i.q, i64 %i.o, i64 undef
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.i14.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.i)
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.0.0.i14.i.i.i, %bb.d ], [ %..i.i.i, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %.sroa.05.0.i.i.i = phi i64 [ 1, %bb.d ], [ %i.m, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.e) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17567
  store i64 %.sroa.05.0.i.i.i, ptr %i.d, align 8, !noalias !17567
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.7.0.i.i.i, ptr %i.r, align 8, !noalias !17567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17567
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.s, align 8, !noalias !17567
  store i64 1, ptr %i.c, align 8, !noalias !17567
  %i.t = trunc nuw i64 %.sroa.05.0.i.i.i to i1
  %i.u = icmp eq i64 %.sroa.7.0.i.i.i, %.sroa.0.0.i.i.i.i
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false, !prof !58
  br i1 %or.cond.i, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1Y_20BoundTypeVarInstanceEEIBR_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtB20_4TypeEEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB22_.exit, label %bb.e, !prof !58

bb.e:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1103) #40
  unreachable

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1Y_20BoundTypeVarInstanceEEIBR_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtB20_4TypeEEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB22_.exit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB23_20BoundTypeVarInstanceEEIBW_INtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtB25_4TypeEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB27_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17567
  ret i64 %.sroa.7.0.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNCNvMs_NtNtB26_5infer7builderNtB3S_20TypeInferenceBuilder37specialize_generic_class_from_contexts5_00ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB28_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1O_20BoundTypeVarInstanceEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1S_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMse_NtNtB26_4call4bindNtB3R_7Binding36argument_type_context_specializations_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB28_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1O_20BoundTypeVarInstanceEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1S_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 384307168202282326) i64 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow31necessary_sequence_pattern_type0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB2z_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !17570, !nonnull !3, !noundef !3
  %i.c = load ptr, ptr %0, align 8, !alias.scope !17570, !nonnull !3, !noundef !3
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 384307168202282326) i64 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow31necessary_sequence_pattern_types0_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB2z_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !17573, !nonnull !3, !noundef !3
  %i.c = load ptr, ptr %0, align 8, !alias.scope !17573, !nonnull !3, !noundef !3
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 384307168202282326) i64 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow31necessary_sequence_pattern_types_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB2z_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !17576, !nonnull !3, !noundef !3
  %i.c = load ptr, ptr %0, align 8, !alias.scope !17576, !nonnull !3, !noundef !3
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48
end_hunk_0
begin_hunk_1_@_RNvXs7v_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10ParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.k, ptr noundef nonnull align 4 %i.l)
  br i1 %i.m, label %bb.d, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19429)
  %i.n = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0), !noalias !19429
  %i.o = load ptr, ptr %0, align 8, !alias.scope !19428, !nonnull !3, !noundef !3
  %i.p = load i64, ptr %i.o, align 8, !noalias !19429, !noundef !3 ; 2 uses
  %i.q = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !19429, !nonnull !3, !noundef !3
  %i.s = load i64, ptr %i.r, align 8, !noundef !3
  %i.t = icmp eq i64 %i.p, %i.s
  br i1 %i.t, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic(ptr noundef %i.n, ptr noundef %i.q, i64 noundef %i.p)
  br i1 %i.u, label %bb.e, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.e:                                             ; preds = %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19431)
  %i.x = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v), !noalias !19431
  %i.y = load ptr, ptr %i.v, align 8, !alias.scope !19430, !nonnull !3, !noundef !3
  %i.z = load i64, ptr %i.y, align 8, !noalias !19431, !noundef !3 ; 2 uses
  %i.aa = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
  %i.ab = load ptr, ptr %i.w, align 8, !alias.scope !19431, !nonnull !3, !noundef !3
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !3
  %i.ad = icmp eq i64 %i.z, %i.ac
  br i1 %i.ad, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit6, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit6: ; preds = %bb.e
  %i.ae = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCsoTR8nlGN3X_18ty_python_semantic(ptr noundef %i.x, ptr noundef %i.aa, i64 noundef %i.z)
  br i1 %i.ae, label %bb.f, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.f:                                             ; preds = %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !align !22, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !align !22, !noundef !3 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.aj, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %.split

bb.h:                                             ; preds = %bb.f
  br i1 %i.aj, label %bb.i, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

.split:                                           ; preds = %bb.g
  %i.ak = tail call fastcc noundef zeroext i1 @_RNvXs6x_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9ParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ag, ptr noundef nonnull align 8 %i.ai)
  br i1 %i.ak, label %bb.i, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.i:                                             ; preds = %.split, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = tail call fastcc noundef zeroext i1 @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am)
  br i1 %i.an, label %bb.j, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !align !22, !noundef !3 ; 2 uses
  %.not3 = icmp eq ptr %i.ap, null                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !align !22, !noundef !3 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null                 ; 2 uses
  %brmerge = or i1 %.not3, %i.as
  %.mux = and i1 %.not3, %i.as
  br i1 %brmerge, label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread, label %bb.k

_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread: ; preds = %bb.j, %bb.e, %bb.d, %.split, %bb.b, %bb.h, %bb.a, %bb.c, %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit6, %bb.g, %bb.i, %bb.k
  %.sroa.0.0.shrunk = phi i1 [ %i.at, %bb.k ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.i ], [ false, %bb.g ], [ false, %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit6 ], [ false, %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.h ], [ %.mux, %bb.j ], [ false, %.split ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.k:                                             ; preds = %bb.j
  %i.at = tail call fastcc noundef zeroext i1 @_RNvXs6x_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9ParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.ap, ptr noundef nonnull align 8 %i.ar)
  br label %_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit.thread
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs8_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance20synthesized_protocolNtB5_23SynthesizedProtocolTypeNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @1062) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @155, i64 32, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.c, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx, align 8
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs9_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnosticNtB5_20TypeCheckDiagnosticsNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @1062) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @155, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.f, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.g, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d), !noalias !19436
  %i.j = load i64, ptr %i.b, align 8, !noalias !19437, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RINvXs0_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression17FileSuppressionIdNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1Q_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.i), !noalias !19438
  %i.l = load i64, ptr %i.a, align 8, !noalias !19437, !noundef !3
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  store i64 %i.m, ptr %i.c, align 8, !alias.scope !19436
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !19439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.m
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsF_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instanceNtB5_17KnownInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #19 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !25, !noundef !3 ; 5 uses
  %i.b = icmp ne i32 %i.a, 5
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -2
  %i.d = icmp samesign ugt i32 %i.a, 1
  %narrow = select i1 %i.d, i32 %i.c, i32 3       ; 2 uses
  %i.e = load i32, ptr %1, align 4, !range !25, !noundef !3 ; 4 uses
  %i.f = icmp ne i32 %i.e, 5
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.e, -2
  %i.h = icmp samesign ugt i32 %i.e, 1
  %narrow2 = select i1 %i.h, i32 %i.g, i32 3
  %i.i = icmp eq i32 %narrow, %narrow2
  br i1 %i.i, label %bb.b, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %narrow, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.m
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.q
    i32 8, label %bb.r
    i32 9, label %bb.s
    i32 10, label %bb.t
    i32 11, label %bb.u
    i32 12, label %bb.v
    i32 13, label %bb.w
    i32 14, label %bb.x
    i32 15, label %bb.y
    i32 16, label %bb.z
    i32 17, label %bb.aa
    i32 18, label %bb.ab
    i32 19, label %bb.ac
    i32 20, label %bb.ad
    i32 21, label %bb.ae
  ]

_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.a, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.f, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0.i82, %bb.e ], [ %.sroa.0.0.i83, %bb.f ], [ false, %bb.a ], [ false, %bb.i ], [ %.sroa.0.0.i84, %bb.o ], [ %.sroa.0.0.i85, %bb.p ], [ %.sroa.0.0.i86, %bb.q ], [ %.sroa.0.0.i87, %bb.r ], [ %.sroa.0.0.i88, %bb.s ], [ %.sroa.0.0.i89, %bb.t ], [ %.sroa.0.0.i90, %bb.u ], [ %.sroa.0.0.i91, %bb.v ], [ %.sroa.0.0.i92, %bb.w ], [ %.sroa.0.0.i93, %bb.x ], [ %.sroa.0.0.i94, %bb.y ], [ %.sroa.0.0.i95, %bb.z ], [ %.sroa.0.0.i96, %bb.aa ], [ %.sroa.0.0.i97, %bb.ab ], [ %.sroa.0.0.i98, %bb.ac ], [ %i.dx, %bb.ad ], [ %.sroa.0.0.i99, %bb.ae ], [ %i.ao, %bb.l ], [ false, %bb.j ], [ %i.aj, %bb.k ], [ false, %bb.g ], [ %.sroa.0.0.i.i.i, %bb.n ], [ %.mux.i.i, %bb.m ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load <2 x i32>, ptr %i.j, align 4
  %i.m = load <2 x i32>, ptr %i.k, align 4
  %i.n = icmp eq <2 x i32> %i.l, %i.m             ; 2 uses
  %2 = extractelement <2 x i1> %i.n, i64 0
  %3 = extractelement <2 x i1> %i.n, i64 1
  %.sroa.0.0.i = select i1 %3, i1 %2, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load <2 x i32>, ptr %i.o, align 4
  %i.r = load <2 x i32>, ptr %i.p, align 4
  %i.s = icmp eq <2 x i32> %i.q, %i.r             ; 2 uses
  %4 = extractelement <2 x i1> %i.s, i64 0
  %5 = extractelement <2 x i1> %i.s, i64 1
  %.sroa.0.0.i82 = select i1 %5, i1 %4, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load <2 x i32>, ptr %i.t, align 4
  %i.w = load <2 x i32>, ptr %i.u, align 4
  %i.x = icmp eq <2 x i32> %i.v, %i.w             ; 2 uses
  %6 = extractelement <2 x i1> %i.x, i64 0
  %7 = extractelement <2 x i1> %i.x, i64 1
  %.sroa.0.0.i83 = select i1 %7, i1 %6, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19444)
  %i.y = icmp eq i32 %i.a, %i.e
  br i1 %i.y, label %bb.h, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.z = trunc nuw i32 %i.a to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !19443, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !19444, !noundef !3
  %i.ae = icmp eq i32 %i.ab, %i.ad                ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.ae, label %bb.l, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.h
  br i1 %i.ae, label %bb.k, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !range !26, !alias.scope !19443, !noundef !3
  %i.ai = load i32, ptr %i.af, align 4, !range !26, !alias.scope !19444, !noundef !3
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = load i32, ptr %i.al, align 4, !range !26, !alias.scope !19443, !noundef !3
  %i.an = load i32, ptr %i.ak, align 4, !range !26, !alias.scope !19444, !noundef !3
  %i.ao = icmp eq i32 %i.am, %i.an
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val22 = load i32, ptr %i.ap, align 4, !noundef !3 ; 2 uses
  %.val24 = load i32, ptr %i.aq, align 4          ; 2 uses
  %.not.i.i = icmp eq i32 %.val22, 0              ; 2 uses
  %i.ar = icmp eq i32 %.val24, 0                  ; 2 uses
  %brmerge.i.i = select i1 %.not.i.i, i1 true, i1 %i.ar
  %.mux.i.i = select i1 %.not.i.i, i1 %i.ar, i1 false
  br i1 %brmerge.i.i, label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val25 = load i32, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val23 = load i32, ptr %i.at, align 4
  %i.au = icmp eq i32 %.val23, %.val25
  %i.av = icmp eq i32 %.val22, %.val24
  %.sroa.0.0.i.i.i = select i1 %i.au, i1 %i.av, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = load <2 x i32>, ptr %i.aw, align 4
  %i.az = load <2 x i32>, ptr %i.ax, align 4
  %i.ba = icmp eq <2 x i32> %i.ay, %i.az          ; 2 uses
  %8 = extractelement <2 x i1> %i.ba, i64 0
  %9 = extractelement <2 x i1> %i.ba, i64 1
  %.sroa.0.0.i84 = select i1 %9, i1 %8, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bd = load <2 x i32>, ptr %i.bb, align 4
  %i.be = load <2 x i32>, ptr %i.bc, align 4
  %i.bf = icmp eq <2 x i32> %i.bd, %i.be          ; 2 uses
  %10 = extractelement <2 x i1> %i.bf, i64 0
  %11 = extractelement <2 x i1> %i.bf, i64 1
  %.sroa.0.0.i85 = select i1 %11, i1 %10, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bi = load <2 x i32>, ptr %i.bg, align 4
  %i.bj = load <2 x i32>, ptr %i.bh, align 4
  %i.bk = icmp eq <2 x i32> %i.bi, %i.bj          ; 2 uses
  %12 = extractelement <2 x i1> %i.bk, i64 0
  %13 = extractelement <2 x i1> %i.bk, i64 1
  %.sroa.0.0.i86 = select i1 %13, i1 %12, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = load <2 x i32>, ptr %i.bl, align 4
  %i.bo = load <2 x i32>, ptr %i.bm, align 4
  %i.bp = icmp eq <2 x i32> %i.bn, %i.bo          ; 2 uses
  %14 = extractelement <2 x i1> %i.bp, i64 0
  %15 = extractelement <2 x i1> %i.bp, i64 1
  %.sroa.0.0.i87 = select i1 %15, i1 %14, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bs = load <2 x i32>, ptr %i.bq, align 4
  %i.bt = load <2 x i32>, ptr %i.br, align 4
  %i.bu = icmp eq <2 x i32> %i.bs, %i.bt          ; 2 uses
  %16 = extractelement <2 x i1> %i.bu, i64 0
  %17 = extractelement <2 x i1> %i.bu, i64 1
  %.sroa.0.0.i88 = select i1 %17, i1 %16, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bx = load <2 x i32>, ptr %i.bv, align 4
  %i.by = load <2 x i32>, ptr %i.bw, align 4
  %i.bz = icmp eq <2 x i32> %i.bx, %i.by          ; 2 uses
  %18 = extractelement <2 x i1> %i.bz, i64 0
  %19 = extractelement <2 x i1> %i.bz, i64 1
  %.sroa.0.0.i89 = select i1 %19, i1 %18, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cc = load <2 x i32>, ptr %i.ca, align 4
  %i.cd = load <2 x i32>, ptr %i.cb, align 4
  %i.ce = icmp eq <2 x i32> %i.cc, %i.cd          ; 2 uses
  %20 = extractelement <2 x i1> %i.ce, i64 0
  %21 = extractelement <2 x i1> %i.ce, i64 1
  %.sroa.0.0.i90 = select i1 %21, i1 %20, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ch = load <2 x i32>, ptr %i.cf, align 4
  %i.ci = load <2 x i32>, ptr %i.cg, align 4
  %i.cj = icmp eq <2 x i32> %i.ch, %i.ci          ; 2 uses
  %22 = extractelement <2 x i1> %i.cj, i64 0
  %23 = extractelement <2 x i1> %i.cj, i64 1
  %.sroa.0.0.i91 = select i1 %23, i1 %22, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cm = load <2 x i32>, ptr %i.ck, align 4
  %i.cn = load <2 x i32>, ptr %i.cl, align 4
  %i.co = icmp eq <2 x i32> %i.cm, %i.cn          ; 2 uses
  %24 = extractelement <2 x i1> %i.co, i64 0
  %25 = extractelement <2 x i1> %i.co, i64 1
  %.sroa.0.0.i92 = select i1 %25, i1 %24, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.b
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cr = load <2 x i32>, ptr %i.cp, align 4
  %i.cs = load <2 x i32>, ptr %i.cq, align 4
  %i.ct = icmp eq <2 x i32> %i.cr, %i.cs          ; 2 uses
  %26 = extractelement <2 x i1> %i.ct, i64 0
  %27 = extractelement <2 x i1> %i.ct, i64 1
  %.sroa.0.0.i93 = select i1 %27, i1 %26, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cw = load <2 x i32>, ptr %i.cu, align 4
  %i.cx = load <2 x i32>, ptr %i.cv, align 4
  %i.cy = icmp eq <2 x i32> %i.cw, %i.cx          ; 2 uses
  %28 = extractelement <2 x i1> %i.cy, i64 0
  %29 = extractelement <2 x i1> %i.cy, i64 1
  %.sroa.0.0.i94 = select i1 %29, i1 %28, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.b
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.db = load <2 x i32>, ptr %i.cz, align 4
  %i.dc = load <2 x i32>, ptr %i.da, align 4
  %i.dd = icmp eq <2 x i32> %i.db, %i.dc          ; 2 uses
  %30 = extractelement <2 x i1> %i.dd, i64 0
  %31 = extractelement <2 x i1> %i.dd, i64 1
  %.sroa.0.0.i95 = select i1 %31, i1 %30, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.b
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dg = load <2 x i32>, ptr %i.de, align 4
  %i.dh = load <2 x i32>, ptr %i.df, align 4
  %i.di = icmp eq <2 x i32> %i.dg, %i.dh          ; 2 uses
  %32 = extractelement <2 x i1> %i.di, i64 0
  %33 = extractelement <2 x i1> %i.di, i64 1
  %.sroa.0.0.i96 = select i1 %33, i1 %32, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.b
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dl = load <2 x i32>, ptr %i.dj, align 4
  %i.dm = load <2 x i32>, ptr %i.dk, align 4
  %i.dn = icmp eq <2 x i32> %i.dl, %i.dm          ; 2 uses
  %34 = extractelement <2 x i1> %i.dn, i64 0
  %35 = extractelement <2 x i1> %i.dn, i64 1
  %.sroa.0.0.i97 = select i1 %35, i1 %34, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.b
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dq = load <2 x i32>, ptr %i.do, align 4
  %i.dr = load <2 x i32>, ptr %i.dp, align 4
  %i.ds = icmp eq <2 x i32> %i.dq, %i.dr          ; 2 uses
  %36 = extractelement <2 x i1> %i.ds, i64 0
  %37 = extractelement <2 x i1> %i.ds, i64 1
  %.sroa.0.0.i98 = select i1 %37, i1 %36, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.b
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.du = load i8, ptr %i.dt, align 4, !range !19, !noundef !3
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dw = load i8, ptr %i.dv, align 4, !range !19, !noundef !3
  %i.dx = icmp eq i8 %i.du, %i.dw
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.b
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ea = load <2 x i32>, ptr %i.dy, align 4
  %i.eb = load <2 x i32>, ptr %i.dz, align 4
  %i.ec = icmp eq <2 x i32> %i.ea, %i.eb          ; 2 uses
  %38 = extractelement <2 x i1> %i.ec, i64 0
  %39 = extractelement <2 x i1> %i.ec, i64 1
  %.sroa.0.0.i99 = select i1 %39, i1 %38, i1 false
  br label %_RNvXso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1108, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsP_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #19 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !23, !noundef !3 ; 4 uses
  %i.b = icmp eq i32 %i.a, -2                     ; 2 uses
  %i.c = load i32, ptr %1, align 4, !range !23, !noundef !3 ; 3 uses
  %i.d = icmp eq i32 %i.c, -2                     ; 3 uses
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.t
  %.sroa.0.0.shrunk = phi i1 [ %i.bi, %bb.t ], [ false, %bb.a ], [ false, %bb.c ], [ %i.bd, %bb.s ], [ false, %bb.d ], [ false, %bb.f ], [ %i.ae, %bb.n ], [ false, %bb.g ], [ %i.aj, %bb.o ], [ false, %bb.i ], [ %i.ao, %bb.p ], [ false, %bb.j ], [ %i.at, %bb.q ], [ false, %bb.k ], [ %i.ay, %bb.r ], [ false, %bb.l ], [ false, %bb.m ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !noundef !3
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.t, label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  %i.k = xor i1 %i.d, true
  tail call void @llvm.assume(i1 %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19452)
  %i.l = icmp eq i32 %i.a, -1                     ; 2 uses
  %i.m = icmp eq i32 %i.c, -1                     ; 3 uses
  %i.n = xor i1 %i.l, %i.m
  br i1 %i.n, label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !19451, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !19452, !noundef !3
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.s, label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  %i.t = xor i1 %i.m, true
  tail call void @llvm.assume(i1 %i.t)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19454)
  %i.u = icmp eq i32 %i.a, %i.c
  br i1 %i.u, label %bb.h, label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !19455, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !19456, !noundef !3
  %i.z = icmp eq i32 %i.w, %i.y                   ; 5 uses
  switch i32 %i.a, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 4, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.n, label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.o, label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.p, label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.q, label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.r, label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !range !26, !alias.scope !19455, !noundef !3
  %i.ad = load i32, ptr %i.aa, align 4, !range !26, !alias.scope !19456, !noundef !3
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !range !26, !alias.scope !19455, !noundef !3
  %i.ai = load i32, ptr %i.af, align 4, !range !26, !alias.scope !19456, !noundef !3
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = load i32, ptr %i.al, align 4, !range !26, !alias.scope !19455, !noundef !3
  %i.an = load i32, ptr %i.ak, align 4, !range !26, !alias.scope !19456, !noundef !3
  %i.ao = icmp eq i32 %i.am, %i.an
  br label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !range !26, !alias.scope !19455, !noundef !3
  %i.as = load i32, ptr %i.ap, align 4, !range !26, !alias.scope !19456, !noundef !3
  %i.at = icmp eq i32 %i.ar, %i.as
  br label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !range !26, !alias.scope !19455, !noundef !3
  %i.ax = load i32, ptr %i.au, align 4, !range !26, !alias.scope !19456, !noundef !3
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !range !26, !alias.scope !19451, !noundef !3
  %i.bc = load i32, ptr %i.az, align 4, !range !26, !alias.scope !19452, !noundef !3
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !range !26, !noundef !3
  %i.bh = load i32, ptr %i.be, align 4, !range !26, !noundef !3
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsS_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20ProtocolInstanceTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #19 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19467)
  %i.a = load i32, ptr %0, align 4, !range !59, !alias.scope !19466, !noundef !3 ; 4 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %i.a, i32 4) ; 2 uses
  %i.c = load i32, ptr %1, align 4, !range !59, !alias.scope !19467, !noundef !3 ; 4 uses
  %i.d = icmp slt i32 %i.c, 5
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.c, i32 4)
  %i.f = icmp eq i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %default.unreachable [
    i32 4, label %bb.c
    i32 5, label %bb.s
    i32 6, label %bb.t
  ]

default.unreachable:                              ; preds = %bb.g, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19469)
  %i.g = icmp eq i32 %i.a, -1                     ; 2 uses
  %i.h = icmp eq i32 %i.c, -1                     ; 3 uses
  %i.i = xor i1 %i.g, %i.h
  br i1 %i.i, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !19470, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !19471, !noundef !3
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.r, label %_RNvXs19_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_8ProtocolNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.d
end_hunk_1
