Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.02?download=true
inline.NumInlined: 7440
inline.NumDeleted: 2774
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 178
loop-unroll.NumUnrolled: 230
begin_hunk_0_@_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern29starred_sequence_pattern_typeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1C_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvNtB4_6narrow31necessary_sequence_pattern_type0EIB1u_B2h_NCB3P_s_0EEB6_:bb.a
  store i8 1, ptr %i.ac, align 4, !alias.scope !3993, !noalias !3994
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 69
  store i8 0, ptr %i.ad, align 1, !alias.scope !3993, !noalias !3994
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.ae, align 8, !alias.scope !3993, !noalias !3994
  store i64 0, ptr %i.c, align 8, !alias.scope !3993, !noalias !3994
  %.sroa.42.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.42.0..sroa_idx.i4.i.i, ptr noundef nonnull align 8 dereferenceable(15) %.sroa.010.i.i, i64 15, i1 false), !noalias !3990
  %.sroa.49.0..sroa.42.0..sroa_idx.i4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 -59, ptr %.sroa.49.0..sroa.42.0..sroa_idx.i4.sroa_idx.i.i, align 1, !alias.scope !3995, !noalias !3990
  %.sroa.5.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i5.i.i, align 8, !alias.scope !3993, !noalias !3994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3990
  invoke void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, i8 noundef 6, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern31sequence_pattern_getitem_methodINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1A_3zip3ZipINtNtNtB1E_3ops5range9RangeFromxEINtNtB1A_3map3MapINtNtNtB1E_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvNtB4_6narrow31necessary_sequence_pattern_type0EEIB2o_INtB2H_5RangexEIB3c_B3s_NCB50_s_0EEEEB6_.exit unwind label %bb.g, !noalias !3996

bb.f:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.d) #53
          to label %bb.i unwind label %bb.h, !noalias !3996

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.c) #53
          to label %bb.f unwind label %bb.h, !noalias !3996

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !3996
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.af

_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern31sequence_pattern_getitem_methodINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1A_3zip3ZipINtNtNtB1E_3ops5range9RangeFromxEINtNtB1A_3map3MapINtNtNtB1E_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvNtB4_6narrow31necessary_sequence_pattern_type0EEIB2o_INtB2H_5RangexEIB3c_B3s_NCB50_s_0EEEEB6_.exit: ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !3997)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !3998, !noalias !3999
  store i8 0, ptr %i.ac, align 4, !alias.scope !4000, !noalias !4001
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !3990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !3990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3990
  %i.ai = call noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters8standardANtB6_9Parameterj2_EBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.e), !noalias !3996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3990
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4002
  call void @llvm.experimental.noalias.scope.decl(metadata !4003)
  call void @llvm.experimental.noalias.scope.decl(metadata !4004)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr %i.a, ptr %i.aj, align 8, !alias.scope !4005, !noalias !4006
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !alias.scope !4005, !noalias !4007
  %.sroa.416.0..sroa.48.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.sroa.618.0..sroa.48.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa.48.0..sroa_idx.i.sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.618.0..sroa.48.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.618, i64 72, i1 false), !alias.scope !4005, !noalias !4007
  store i64 0, ptr %i.f, align 8, !alias.scope !4008, !noalias !4009
  %.sroa.410.i.sroa.3.0..sroa.3.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 18, ptr %.sroa.410.i.sroa.3.0..sroa.3.0..sroa_idx4.i.sroa_idx, align 8, !noalias !4002
  %.sroa.410.i.sroa.4.0..sroa.3.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 5, ptr %.sroa.410.i.sroa.4.0..sroa.3.0..sroa_idx4.i.sroa_idx, align 4, !noalias !4002
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.ai, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !4008, !noalias !4009
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !4008, !noalias !4009
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 0, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !4008, !noalias !4009
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 0, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !4008, !noalias !4009
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_17CallableSignature14from_overloadsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1H_3map3MapIB1D_INtNtB1H_3zip3ZipINtNtNtB1L_3ops5range9RangeFromxEIB2v_INtNtNtB1L_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvNtB7_6narrow31necessary_sequence_pattern_type0EEIB2R_INtB3a_5RangexEIB2v_B3J_NCB5h_s_0EEENCINvNtB7_13match_pattern31sequence_pattern_getitem_methodB2L_Es_0EINtNtB1L_6option8IntoIterNtB5_9SignatureEEEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(216) %i.f), !noalias !4010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4002
  %i.ak = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.g, i8 noundef 1, i8 noundef 0), !noalias !4010 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4002
  %i.al = extractvalue { i32, i32 } %i.ak, 0
  %i.am = extractvalue { i32, i32 } %i.ak, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @15, ptr %i.k, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 11, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 %i.al, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %i.am, ptr %.sroa.6.0..sroa_idx, align 4
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type21protocol_with_methodsATReNtNtB5_8callable12CallableTypeEj1_EB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern29sequence_pattern_type_builder(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  call void @_RNvMs2_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_19IntersectionBuilder12add_positive(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.i, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvMs2_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_19IntersectionBuilder5build(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern29sequence_pattern_type_builder(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  call void @_RNvMs2_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_19IntersectionBuilder5build(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c, %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern31sequence_pattern_getitem_methodINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1A_3zip3ZipINtNtNtB1E_3ops5range9RangeFromxEINtNtB1A_3map3MapINtNtNtB1E_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENCNvNtB4_6narrow31necessary_sequence_pattern_type0EEIB2o_INtB2H_5RangexEIB3c_B3s_NCB50_s_0EEEEB6_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern29starred_sequence_pattern_typeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB1y_6copied6CopiedINtNtNtB1C_5slice4iter4IterNtB4_4TypeEEEINtNtB1y_4skip4SkipB2j_EEB6_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %4, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.010.i.i = alloca [15 x i8], align 8      ; 5 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 14 uses
  %i.d = alloca [72 x i8], align 8                ; 15 uses
  %i.e = alloca [144 x i8], align 8               ; 5 uses
  %i.f = alloca [184 x i8], align 8               ; 14 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [56 x i8], align 8                ; 4 uses
  %i.s = alloca [56 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 4                ; 4 uses
  %.sroa.621 = alloca [56 x i8], align 8          ; 4 uses
  %i.v = alloca [56 x i8], align 8                ; 4 uses
  %i.w = alloca [56 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4054)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !4055, !noalias !4056, !noundef !6 ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit.thread, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4057
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4), !noalias !4056
  %i.aa = load i64, ptr %i.o, align 8, !noalias !4057, !noundef !6 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !27, !noalias !4057, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !4057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4057
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.y, i64 %i.aa) ; 2 uses
  %i.af = trunc nuw i64 %i.ac to i1
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.y)
  %.sroa.4.0.i.i = select i1 %i.af, i64 %i.ag, i64 %i.y ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4053
  store i64 1, ptr %i.q, align 8, !noalias !4053
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.4.0.i.i, ptr %i.ah, align 8, !noalias !4053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4053
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.0.0.i.i.i, ptr %i.ai, align 8, !noalias !4053
  store i64 1, ptr %i.p, align 8, !noalias !4053
  %i.aj = icmp eq i64 %.sroa.4.0.i.i, %.sroa.0.0.i.i.i
  br i1 %i.aj, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit, label %bb.b, !prof !4058

bb.b:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit.i
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #52
  unreachable

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1N_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4053
  %i.ak = icmp eq i64 %i.aa, 0
  br i1 %i.ak, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit.thread, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit._crit_edge

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit._crit_edge: ; preds = %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !4059, !noalias !4060
  br label %bb.e

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit.thread: ; preds = %bb.a, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4061)
  call void @llvm.experimental.noalias.scope.decl(metadata !4062)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4063
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5), !noalias !4064
  %i.al = load i64, ptr %i.l, align 8, !noalias !4063, !noundef !6
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !27, !noalias !4063, !noundef !6 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !4063 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4063
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !4065, !noalias !4064, !noundef !6 ; 4 uses
  %i.as = trunc nuw i64 %i.an to i1               ; 2 uses
  %i.at = call i64 @llvm.usub.sat.i64(i64 %i.ap, i64 %i.ar) ; 2 uses
  %.sroa.3.0.i.i = select i1 %i.as, i64 %i.at, i64 undef
  %i.au = call i64 @llvm.usub.sat.i64(i64 %i.al, i64 %i.ar) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4061
  store i64 %i.an, ptr %i.n, align 8, !noalias !4061
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.3.0.i.i, ptr %i.av, align 8, !noalias !4061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4061
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !noalias !4061
  store i64 1, ptr %i.m, align 8, !noalias !4061
  %i.ax = icmp eq i64 %i.at, %i.au
  %or.cond.i = select i1 %i.as, i1 %i.ax, i1 false, !prof !17
  br i1 %or.cond.i, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit.thread
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #52
  unreachable

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit: ; preds = %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4061
  %.not = icmp ugt i64 %i.ap, %i.ar
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern29sequence_pattern_type_builder(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.w, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  call void @_RNvMs2_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_19IntersectionBuilder5build(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.m

bb.e:                                             ; preds = %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit._crit_edge, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit
  %i.ay = phi i64 [ %.pre, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit._crit_edge ], [ %i.ar, %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4066)
  call void @llvm.experimental.noalias.scope.decl(metadata !4067)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4068
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5), !noalias !4060
  %i.az = load i64, ptr %i.i, align 8, !noalias !4068, !noundef !6
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !27, !noalias !4068, !noundef !6 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !4068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4068
  %i.be = trunc nuw i64 %i.bb to i1               ; 2 uses
  %i.bf = call i64 @llvm.usub.sat.i64(i64 %i.bd, i64 %i.ay) ; 4 uses
  %.sroa.3.0.i.i10 = select i1 %i.be, i64 %i.bf, i64 undef
  %i.bg = call i64 @llvm.usub.sat.i64(i64 %i.az, i64 %i.ay) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4066
  store i64 %i.bb, ptr %i.k, align 8, !noalias !4066
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.3.0.i.i10, ptr %i.bh, align 8, !noalias !4066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4066
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !noalias !4066
  store i64 1, ptr %i.j, align 8, !noalias !4066
  %i.bj = icmp eq i64 %i.bf, %i.bg
  %or.cond.i11 = select i1 %i.be, i1 %i.bj, i1 false, !prof !17
  br i1 %or.cond.i11, label %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit12, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #52
  unreachable

_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit12: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4066
  %i.bk = icmp slt i64 %i.bf, 0
  br i1 %i.bk, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit12
  %i.bl = sub nsw i64 0, %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false), !alias.scope !4070, !noalias !4071
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.621)
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangexEINtNtB7_4skip4SkipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEEINtB5_7ZipImplBW_B1o_E3newB2w_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %.sroa.621, i64 noundef range(i64 -9223372036854775807, 1) %i.bl, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4069
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4072
  %.sroa.42.sroa.0.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %.sroa.42.sroa.0.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i.i, i8 0, i64 11, i1 false), !alias.scope !4073, !noalias !4072
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 4, ptr %i.bm, align 8, !alias.scope !4073, !noalias !4072
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !alias.scope !4073, !noalias !4072
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 0, ptr %i.bn, align 8, !alias.scope !4073, !noalias !4072
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i8 1, ptr %i.bo, align 4, !alias.scope !4073, !noalias !4072
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 69
  store i8 0, ptr %i.bp, align 1, !alias.scope !4073, !noalias !4072
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 0, ptr %i.bq, align 8, !alias.scope !4073, !noalias !4072
  store i64 0, ptr %i.d, align 8, !alias.scope !4073, !noalias !4072
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1718379891, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !4073, !noalias !4072
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  store i8 -60, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !4073, !noalias !4072
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !4073, !noalias !4072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4072
  %.sroa.010.i.i.5.i.i.5.i.i.5.i.5.i.5..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.i.i, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.sroa.010.i.i.5.i.i.5.i.i.5.i.5.i.5..sroa_idx, i8 0, i64 10, i1 false), !noalias !4072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.sroa.010.i.i, ptr noundef nonnull align 1 dereferenceable(5) @24, i64 5, i1 false), !noalias !4072
  call void @llvm.experimental.noalias.scope.decl(metadata !4074)
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i32 4, ptr %i.br, align 8, !alias.scope !4075, !noalias !4076
  %.sroa.4.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 1, ptr %.sroa.4.0..sroa_idx.i3.i.i, align 4, !alias.scope !4075, !noalias !4076
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 0, ptr %i.bs, align 8, !alias.scope !4075, !noalias !4076
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  store i8 1, ptr %i.bt, align 4, !alias.scope !4075, !noalias !4076
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 69
  store i8 0, ptr %i.bu, align 1, !alias.scope !4075, !noalias !4076
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.bv, align 8, !alias.scope !4075, !noalias !4076
  store i64 0, ptr %i.c, align 8, !alias.scope !4075, !noalias !4076
  %.sroa.42.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.42.0..sroa_idx.i4.i.i, ptr noundef nonnull align 8 dereferenceable(15) %.sroa.010.i.i, i64 15, i1 false), !noalias !4072
  %.sroa.49.0..sroa.42.0..sroa_idx.i4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 -59, ptr %.sroa.49.0..sroa.42.0..sroa_idx.i4.sroa_idx.i.i, align 1, !alias.scope !4077, !noalias !4072
  %.sroa.5.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i5.i.i, align 8, !alias.scope !4075, !noalias !4076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4072
  invoke void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, i8 noundef 6, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern31sequence_pattern_getitem_methodINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1A_3zip3ZipINtNtNtB1E_3ops5range9RangeFromxEINtNtB1A_4take4TakeINtNtB1A_6copied6CopiedINtNtNtB1E_5slice4iter4IterNtB4_4TypeEEEEIB2o_INtB2H_5RangexEINtNtB1A_4skip4SkipB3u_EEEEB6_.exit unwind label %bb.i, !noalias !4078

bb.h:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.d) #53
          to label %bb.k unwind label %bb.j, !noalias !4078

bb.i:                                             ; preds = %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.c) #53
          to label %bb.h unwind label %bb.j, !noalias !4078

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !4078
  unreachable

bb.k:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bw

_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern31sequence_pattern_getitem_methodINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1A_3zip3ZipINtNtNtB1E_3ops5range9RangeFromxEINtNtB1A_4take4TakeINtNtB1A_6copied6CopiedINtNtNtB1E_5slice4iter4IterNtB4_4TypeEEEEIB2o_INtB2H_5RangexEINtNtB1A_4skip4SkipB3u_EEEEB6_.exit: ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !4079)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !4080, !noalias !4081
  store i8 0, ptr %i.bt, align 4, !alias.scope !4082, !noalias !4083
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.by, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !4072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !4072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4072
  %i.bz = call noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters8standardANtB6_9Parameterj2_EBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.e), !noalias !4078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4072
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4084
  call void @llvm.experimental.noalias.scope.decl(metadata !4085)
  call void @llvm.experimental.noalias.scope.decl(metadata !4086)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr %i.a, ptr %i.ca, align 8, !alias.scope !4087, !noalias !4088
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !alias.scope !4087, !noalias !4089
  %.sroa.419.0..sroa.48.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.621.0..sroa.48.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa.48.0..sroa_idx.i.sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.621.0..sroa.48.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.621, i64 56, i1 false), !alias.scope !4087, !noalias !4089
  store i64 0, ptr %i.f, align 8, !alias.scope !4090, !noalias !4091
  %.sroa.410.i.sroa.3.0..sroa.3.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 18, ptr %.sroa.410.i.sroa.3.0..sroa.3.0..sroa_idx4.i.sroa_idx, align 8, !noalias !4084
  %.sroa.410.i.sroa.4.0..sroa.3.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 5, ptr %.sroa.410.i.sroa.4.0..sroa.3.0..sroa_idx4.i.sroa_idx, align 4, !noalias !4084
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.bz, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !4090, !noalias !4091
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !4090, !noalias !4091
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 0, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !4090, !noalias !4091
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 0, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !4090, !noalias !4091
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_17CallableSignature14from_overloadsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1H_3map3MapIB1D_INtNtB1H_3zip3ZipINtNtNtB1L_3ops5range9RangeFromxEINtNtB1H_4take4TakeINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4IterNtB7_4TypeEEEEIB2R_INtB3a_5RangexEINtNtB1H_4skip4SkipB3X_EEENCINvNtB7_13match_pattern31sequence_pattern_getitem_methodB2L_Es_0EINtNtB1L_6option8IntoIterNtB5_9SignatureEEEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.f), !noalias !4092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4084
  %i.cb = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.g, i8 noundef 1, i8 noundef 0), !noalias !4092 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4084
  %i.cc = extractvalue { i32, i32 } %i.cb, 0
  %i.cd = extractvalue { i32, i32 } %i.cb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @15, ptr %i.t, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 11, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 %i.cc, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i32 %i.cd, ptr %.sroa.6.0..sroa_idx, align 4
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type21protocol_with_methodsATReNtNtB5_8callable12CallableTypeEj1_EB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.u, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern29sequence_pattern_type_builder(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.r, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  call void @_RNvMs2_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_19IntersectionBuilder12add_positive(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.r, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvMs2_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_19IntersectionBuilder5build(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.m

bb.l:                                             ; preds = %_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1I_.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern29sequence_pattern_type_builder(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.v, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  call void @_RNvMs2_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_19IntersectionBuilder5build(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d, %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern31sequence_pattern_getitem_methodINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1A_3zip3ZipINtNtNtB1E_3ops5range9RangeFromxEINtNtB1A_4take4TakeINtNtB1A_6copied6CopiedINtNtNtB1E_5slice4iter4IterNtB4_4TypeEEEEIB2o_INtB2H_5RangexEINtNtB1A_4skip4SkipB3u_EEEEB6_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern35typed_dict_pattern_domain_satisfiesNCNvB2_28is_typed_dict_runtime_domain0EB6_(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull align 4 captures(address) dead_on_return dereferenceable(16) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 7 uses
  %i.f = alloca [16 x i8], align 4                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %3, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  %i.g = load i32, ptr %i.f, align 4, !range !28, !noundef !6 ; 3 uses
  %i.h = icmp ne i32 %i.g, 17
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i32 %i.g, -4
  %i.j = icmp samesign ugt i32 %i.g, 3
  %narrow = select i1 %i.j, i32 %i.i, i32 13
  switch i32 %narrow, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNtBS_13match_pattern35typed_dict_pattern_domain_satisfiesNCNvB2r_28is_typed_dict_runtime_domain0Es_0EBU_.exit [
    i32 19, label %bb.b
    i32 20, label %bb.c
    i32 25, label %bb.d
    i32 30, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load i32, ptr %i.k, align 4, !range !19, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i32, ptr %i.m, align 4, !noundef !6
  %i.o = tail call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.l, i32 noundef %i.n, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 3 uses
  %i.q = extractvalue { ptr, i64 } %i.o, 1        ; 2 uses
end_hunk_0
