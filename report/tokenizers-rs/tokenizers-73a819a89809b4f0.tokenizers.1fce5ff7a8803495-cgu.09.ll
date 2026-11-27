Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.09?download=true
inline.NumInlined: 1497
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths2_1__NtB8_23FixedLengthDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1I_7Visitor11visit_bytesNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_:bb.a
  ret void

bb.i:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.s) #32
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.u = icmp samesign ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  store i8 14, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.h

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths2_1__NtB8_23FixedLengthDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1I_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 !guid !1045 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  %i.d = icmp ne i32 %i.c, 1701869940
  %i.e = zext i1 %i.d to i32
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.g = load i64, ptr %i.a, align 8, !range !8, !noundef !7
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !12, !noundef !7 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f, !prof !13

bb.d:                                             ; preds = %bb.b
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #32
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.n = icmp ule i64 %2, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i8 12, ptr %0, align 8
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.g

bb.i:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtBb_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) unnamed_addr #2 !guid !1046 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtB3J_13ByteLevelTypeNtB1Z_11Deserialize11deserialize7___FieldEEB3N_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 3 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtBb_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1v_7Visitor10visit_enumNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerEBf_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #2 !guid !1047 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtB2S_13ByteLevelTypeNtB18_11Deserialize11deserialize7___FieldEEB2W_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0)
  %i.b = load i8, ptr %i.a, align 8, !range !25, !noundef !7
  %i.c = icmp eq i8 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !align !9, !noundef !7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtBb_15FixedLengthTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1D_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) unnamed_addr #2 !guid !1048 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3J_15FixedLengthTypeNtB1Z_11Deserialize11deserialize7___FieldEEB3N_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 3 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtBb_15FixedLengthTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1D_7Visitor10visit_enumNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerEBf_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #2 !guid !1049 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB2S_15FixedLengthTypeNtB18_11Deserialize11deserialize7___FieldEEB2W_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0)
  %i.b = load i8, ptr %i.a, align 8, !range !25, !noundef !7
  %i.c = icmp eq i8 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !align !9, !noundef !7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs4_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levelNtB6_9ByteLevelNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #2 !guid !1050 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels1_1__NtB3c_15ByteLevelHelperNtB22_11Deserialize11deserialize9___VisitorEB3g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @29, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs4_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levelNtB6_9ByteLevelNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #2 !guid !1051 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels1_1__NtB26_15ByteLevelHelperNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @29, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvXs8_NtNtNtCseKCDlm5CXZl_4rand5distr7uniform5floatINtB6_12UniformFloatdENtB8_14UniformSampler3newddECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %1, double noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality !guid !1052 {
bb.a:
  %i.a = fcmp olt double %1, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 1, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = fsub double %2, %1                       ; 2 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ueq double %i.c, +inf
  br i1 %i.d, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.e = bitcast double %i.b to i64
  br label %.preheader

bb.d:                                             ; preds = %bb.c
  store i16 257, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.f
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0 = phi i64 [ %i.j, %.preheader ], [ %i.e, %.preheader.preheader ] ; 3 uses
  %i.f = bitcast i64 %.sroa.0.0 to double
  %i.g = fmul double %i.f, f0x3FEFFFFFFFFFFFFE
  %i.h = fadd double %1, %i.g
  %i.i = fcmp ogt double %i.h, %2
  %i.j = add i64 %.sroa.0.0, -1
  br i1 %i.i, label %.preheader, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %i.l, align 8
  store i8 0, ptr %0, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RINvXs8_NtNtNtCseKCDlm5CXZl_4rand5distr7uniform5floatINtB6_12UniformFloatdENtB8_14UniformSampler6sampleNtNtNtBc_4rngs6thread9ThreadRngECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 !guid !1067 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !alias.scope !1068, !nonnull !7, !noundef !7 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 336 ; 4 uses
  %i.c = load i64, ptr %i.b, align 16, !alias.scope !1069, !noalias !1070, !noundef !7 ; 4 uses
  %i.d = icmp ult i64 %i.c, 63
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %i.c, 63
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.c, 2
  store i64 %i.e, ptr %i.b, align 16, !alias.scope !1069, !noalias !1070
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c
  %i.g = load i64, ptr %i.f, align 4, !alias.scope !1071, !noalias !1070
  br label %_RINvYNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 268
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !1069, !noalias !1070, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 272
  tail call void @_RNvXs2_NtNtCseKCDlm5CXZl_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngENtNtB1W_5block12BlockRngCore8generateCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.j, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.a), !noalias !1070
  store i64 1, ptr %i.b, align 16, !alias.scope !1072, !noalias !1070
  %i.k = zext i32 %i.i to i64
  %i.l = load i32, ptr %i.a, align 16, !alias.scope !1069, !noalias !1070, !noundef !7
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw i64 %i.m, 32
  %i.o = or disjoint i64 %i.n, %i.k
  br label %_RINvYNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 272
  tail call void @_RNvXs2_NtNtCseKCDlm5CXZl_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngENtNtB1W_5block12BlockRngCore8generateCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.p, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.a), !noalias !1070
  store i64 2, ptr %i.b, align 16, !alias.scope !1073, !noalias !1070
  %i.q = load i64, ptr %i.a, align 16, !alias.scope !1074, !noalias !1070
  br label %_RINvYNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs2JiOgHzbbc7_10tokenizers.exit

_RINvYNtNtNtCseKCDlm5CXZl_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i.i.i = phi i64 [ %i.g, %bb.c ], [ %i.q, %bb.e ], [ %i.o, %bb.d ]
  %i.r = lshr i64 %.sroa.0.0.i.i.i, 12
  %i.s = or disjoint i64 %i.r, 4607182418800017408
  %i.t = bitcast i64 %i.s to double
  %i.u = fadd nnan ninf double %i.t, -1.000000e+00
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load double, ptr %i.v, align 8, !noundef !7
  %i.x = fmul double %i.w, %i.u
  %i.y = load double, ptr %0, align 8, !noundef !7
  %i.z = fadd double %i.y, %i.x
  ret double %i.z
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i64, i64 } @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter7IterMutTciEEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtB7_4takeINtB2o_4TakepENtB2o_8SpecTake13spec_for_each5checkQB1p_NCNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiled7replaces_0E0INtNtBb_6option6OptionjEEB3z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality !guid !1085 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1087, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %i.a, align 8, !alias.scope !1087 ; 5 uses
  %.promoted.i1 = ptrtoaddr ptr %.promoted.i to i64 ; 2 uses
  %i.d = mul i64 %i.c, 1152921504606846975
  %.neg = mul i64 %.promoted.i1, -1152921504606846975
  %i.e = add i64 %.neg, %i.d
  %i.f = lshr i64 %i.e, 4
  %i.g = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.f) ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.g, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.a
  %i.i = sub i64 %i.c, %.promoted.i1
  %i.j = and i64 %i.i, 15
  %ident.check.not = icmp eq i64 %i.j, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.k = and i64 %i.h, 3                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 4, i64 %i.k
  %n.vec = sub nsw i64 %i.h, %i.m                 ; 3 uses
  %i.n = mul i64 %n.vec, -16
  %i.o = getelementptr i8, ptr %.promoted.i, i64 %i.n
  %i.p = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 -16> ; 4 uses
  %step.add3 = getelementptr i8, <2 x ptr> %vector.gep, i64 -32 ; 2 uses
  %i.q = extractelement <2 x ptr> %vector.gep, i64 0
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.s = extractelement <2 x ptr> %vector.gep, i64 1
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = extractelement <2 x ptr> %step.add3, i64 0
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = extractelement <2 x ptr> %step.add3, i64 1
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  store i64 1, ptr %i.r, align 8, !alias.scope !1088, !noalias !1086
  store i64 1, ptr %i.t, align 8, !alias.scope !1088, !noalias !1086
  store i64 1, ptr %i.v, align 8, !alias.scope !1088, !noalias !1086
  store i64 1, ptr %i.x, align 8, !alias.scope !1088, !noalias !1086
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -64
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1083

middle.block:                                     ; preds = %vector.body
  %i.z = extractelement <2 x ptr> %vector.gep, i64 1
  %i.aa = getelementptr i8, ptr %i.z, i64 -48
  store ptr %i.aa, ptr %i.a, align 8, !alias.scope !1087
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.a, %middle.block
  %.ph = phi ptr [ %.promoted.i, %vector.scevcheck ], [ %.promoted.i, %bb.a ], [ %i.o, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.ab = phi ptr [ %i.ad, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ag, %bb.b ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ac = icmp eq ptr %i.b, %i.ab
  br i1 %i.ac, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutTciEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvXs7_NtNtBX_8adapters4takeINtB29_4TakepENtB29_8SpecTake13spec_for_each5checkQBM_NCNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiled7replaces_0E0INtNtBa_6option6OptionjEEB3u_.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !alias.scope !1087
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 -8
  store i64 1, ptr %i.ae, align 8, !alias.scope !1088, !noalias !1086
  %i.af = icmp eq i64 %.sroa.01.0.i, 0
  %i.ag = add i64 %.sroa.01.0.i, -1
  br i1 %i.af, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutTciEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvXs7_NtNtBX_8adapters4takeINtB29_4TakepENtB29_8SpecTake13spec_for_each5checkQBM_NCNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiled7replaces_0E0INtNtBa_6option6OptionjEEB3u_.exit, label %scalar.ph, !llvm.loop !1084

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutTciEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvXs7_NtNtBX_8adapters4takeINtB29_4TakepENtB29_8SpecTake13spec_for_each5checkQBM_NCNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiled7replaces_0E0INtNtBa_6option6OptionjEEB3u_.exit: ; preds = %scalar.ph, %bb.b
  %.sroa.3.0.i = phi i64 [ undef, %bb.b ], [ %.sroa.01.0.i, %scalar.ph ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 1, %scalar.ph ]
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2e_9TakeWhileppEB1l_8try_fold5checkcjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0s_0NCINvMB3d_B3a_10wrap_mut_2jcNCNvYIB2w_BM_B3T_EB1l_5count0E0E0INtNtB3f_12control_flow11ControlFlowB3a_jEEB43_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1123 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.promoted.i = load ptr, ptr %i.c, align 8, !alias.scope !1126 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !1127, !nonnull !7, !noundef !7 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.d, %.promoted.i
  br i1 %.not.i23.i, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1Z_9TakeWhileppENtNtBL_8iterator8Iterator8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0s_0NCINvMB3u_B3r_10wrap_mut_2jcNCNvYIB2s_INtNtB21_3rev3RevB3_EB4a_EB2L_5count0E0E0INtNtB3w_12control_flow11ControlFlowB3r_jEEB4k_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0s_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i
  %i.e = phi ptr [ %i.cq, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0s_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.01.024.i = phi i64 [ %i.cp, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0s_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i ], [ %1, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.ap, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0s_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i ], [ %.promoted.i, %bb.a ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -1 ; 4 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !1130
  %i.h = load i8, ptr %i.g, align 1, !noalias !1131, !noundef !7 ; 3 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.b, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i: ; preds = %.lr.ph.i
  %i.j = icmp ne ptr %i.e, %i.g
  call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -2 ; 4 uses
  store ptr %i.k, ptr %i.c, align 8, !alias.scope !1132
  %i.l = load i8, ptr %i.k, align 1, !noalias !1131, !noundef !7 ; 3 uses
  %i.m = and i8 %i.l, 31
  %i.n = zext nneg i8 %i.m to i32
  %i.o = icmp slt i8 %i.l, -64
  br i1 %i.o, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = zext nneg i8 %i.h to i32
  br label %bb.e

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i
  %i.q = icmp ne ptr %i.e, %i.k
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds i8, ptr %i.f, i64 -3 ; 4 uses
  store ptr %i.r, ptr %i.c, align 8, !alias.scope !1133
  %i.s = load i8, ptr %i.r, align 1, !noalias !1131, !noundef !7 ; 3 uses
  %i.t = and i8 %i.s, 15
  %i.u = zext nneg i8 %i.t to i32
  %i.v = icmp slt i8 %i.s, -64
  br i1 %i.v, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i.i.i
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2e_9TakeWhileppEB1l_8try_fold5checkcjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB41_16NormalizedString7lrstrips_0NCINvMB3d_B3a_10wrap_mut_2jcNCNvYIB2w_BM_B3T_EB1l_5count0E0E0INtNtB3f_12control_flow11ControlFlowB3a_jEEB45_:bb.a
  %i.ae = and i8 %i.p, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i
  %i.ah = phi ptr [ %i.z, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i ], [ %i.o, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.ag, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i.i.i ]
  %i.ai = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.aj = and i8 %i.i, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  br label %bb.c

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.am = phi ptr [ %i.d, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %spec.select.i.ph.i = phi i32 [ %i.m, %bb.b ], [ %i.x, %bb.c ] ; 7 uses
  switch i32 %spec.select.i.ph.i, label %bb.f [
    i32 32, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString7lrstrips_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B32_.exit.i
    i32 13, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString7lrstrips_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B32_.exit.i
    i32 12, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString7lrstrips_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B32_.exit.i
    i32 11, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString7lrstrips_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B32_.exit.i
    i32 10, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString7lrstrips_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B32_.exit.i
    i32 9, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString7lrstrips_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B32_.exit.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.an = icmp samesign ult i32 %spec.select.i.ph.i, 133
  br i1 %i.an, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = lshr i32 %spec.select.i.ph.i, 8
  switch i32 %i.ao, label %bb.l [
    i32 0, label %bb.j
    i32 22, label %bb.h
    i32 32, label %bb.k
    i32 48, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp eq i32 %spec.select.i.ph.i, 5760
  %i.aq = zext i1 %i.ap to i8
  br label %_RNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB7_16NormalizedString7lrstrips_0Bb_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = icmp eq i32 %spec.select.i.ph.i, 12288
  %i.as = zext i1 %i.ar to i8
  br label %_RNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB7_16NormalizedString7lrstrips_0Bb_.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.at = and i32 %spec.select.i.ph.i, 255
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1168, !noundef !7
  br label %_RNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB7_16NormalizedString7lrstrips_0Bb_.exit.i.i

bb.k:                                             ; preds = %bb.g
  %i.ax = and i32 %spec.select.i.ph.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !1168, !noundef !7
  %i.bb = lshr i8 %i.ba, 1
  br label %_RNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB7_16NormalizedString7lrstrips_0Bb_.exit.i.i

_RNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB7_16NormalizedString7lrstrips_0Bb_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.as, %bb.i ], [ %i.aw, %bb.j ], [ %i.aq, %bb.h ], [ %i.bb, %bb.k ]
  %i.bc = trunc i8 %.sroa.0.0.i.i.i.i to i1
  br i1 %i.bc, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString7lrstrips_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B32_.exit.i, label %bb.l

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString7lrstrips_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B32_.exit.i: ; preds = %_RNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB7_16NormalizedString7lrstrips_0Bb_.exit.i.i, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.bd = add i64 %.sroa.01.020.i, 1              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.am
  br i1 %.not.i.i, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1Z_9TakeWhileppENtNtBL_8iterator8Iterator8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4i_16NormalizedString7lrstrips_0NCINvMB3u_B3r_10wrap_mut_2jcNCNvYIB2s_INtNtB21_3rev3RevB3_EB4a_EB2L_5count0E0E0INtNtB3w_12control_flow11ControlFlowB3r_jEEB4m_.exit, label %.lr.ph.i

bb.l:                                             ; preds = %_RNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB7_16NormalizedString7lrstrips_0Bb_.exit.i.i, %bb.g, %bb.f
  store i8 1, ptr %3, align 1, !alias.scope !1159
  br label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1Z_9TakeWhileppENtNtBL_8iterator8Iterator8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4i_16NormalizedString7lrstrips_0NCINvMB3u_B3r_10wrap_mut_2jcNCNvYIB2s_INtNtB21_3rev3RevB3_EB4a_EB2L_5count0E0E0INtNtB3w_12control_flow11ControlFlowB3r_jEEB4m_.exit

_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1Z_9TakeWhileppENtNtBL_8iterator8Iterator8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4i_16NormalizedString7lrstrips_0NCINvMB3u_B3r_10wrap_mut_2jcNCNvYIB2s_INtNtB21_3rev3RevB3_EB4a_EB2L_5count0E0E0INtNtB3w_12control_flow11ControlFlowB3r_jEEB4m_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString7lrstrips_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B32_.exit.i, %bb.a, %bb.l
  %.sroa.01.018.i = phi i64 [ %.sroa.01.020.i, %bb.l ], [ %1, %bb.a ], [ %i.bd, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString7lrstrips_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B32_.exit.i ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.l ], [ 0, %bb.a ], [ 0, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Y_16NormalizedString7lrstrips_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B32_.exit.i ]
  %i.be = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.bf = insertvalue { i64, i64 } %i.be, i64 %.sroa.01.018.i, 1
  ret { i64, i64 } %i.bf
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEINtNtBa_8plumbing6FolderB17_E12consume_iterINtNtBc_3vec10SliceDrainB17_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1173 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8
  %i.c = icmp eq ptr %2, %3
  br i1 %i.c, label %_RNvXsb_NtCsgbNVBrIJ05E_5rayon3vecINtB5_10SliceDrainTTTmmElEjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.57.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8
  %.sroa.6.0..sroa_idx.promoted = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.57.0.copyload, i64 %.sroa.6.0..sroa_idx.promoted)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %exitcond.not30.not = icmp ult i64 %.sroa.6.0..sroa_idx.promoted, %.sroa.57.0.copyload
  br i1 %exitcond.not30.not, label %.lr.ph31, label %._crit_edge, !prof !28

bb.b:                                             ; preds = %._crit_edge
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsf_NtCsgbNVBrIJ05E_5rayon3vecINtB5_10SliceDrainTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph31
  %i.f = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph31, !prof !1174

._crit_edge:                                      ; preds = %bb.c, %.lr.ph
  %.lcssa28 = phi ptr [ %i.d, %.lr.ph ], [ %i.f, %bb.c ]
  store ptr %.lcssa28, ptr %i.a, align 8
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @184, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #32
          to label %.noexc unwind label %bb.b, !noalias !1175

.noexc:                                           ; preds = %._crit_edge
  unreachable

_RNvXsb_NtCsgbNVBrIJ05E_5rayon3vecINtB5_10SliceDrainTTTmmElEjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph31, %bb.a
  %.lcssa = phi ptr [ %2, %bb.a ], [ %i.g, %.lr.ph31 ]
  store ptr %.lcssa, ptr %i.a, align 8
  call void @_RNvXsf_NtCsgbNVBrIJ05E_5rayon3vecINtB5_10SliceDrainTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

.lr.ph31:                                         ; preds = %.lr.ph, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ %i.d, %.lr.ph ] ; 4 uses
  %i.h = phi ptr [ %i.g, %bb.c ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.k, %bb.c ], [ %.sroa.6.0..sroa_idx.promoted, %.lr.ph ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.05.0.copyload, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.k = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.k, ptr %.sroa.6.0..sroa_idx, align 8
  %i.l = icmp eq ptr %i.g, %3
  br i1 %i.l, label %_RNvXsb_NtCsgbNVBrIJ05E_5rayon3vecINtB5_10SliceDrainTTTmmElEjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit, label %bb.c

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths0_1__NtBa_14FixedLengthDef11deserialize14___FieldVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor14visit_byte_bufNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1179 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !alias.scope !1181, !noundef !7
  %i.g = icmp eq i8 %i.f, 108
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !1181, !noundef !7
  %i.j = icmp eq i8 %i.i, 101
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !1181, !noundef !7
  %i.m = icmp eq i8 %i.l, 110
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !1181, !noundef !7
  %i.p = icmp eq i8 %i.o, 103
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !1181, !noundef !7
  %i.s = icmp eq i8 %i.r, 116
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1181, !noundef !7
  %.not = icmp eq i8 %i.u, 104
  %2 = select i1 %.not, i16 0, i16 256
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink.i = phi i16 [ 256, %bb.a ], [ %2, %bb.g ], [ 256, %bb.f ], [ 256, %bb.e ], [ 256, %bb.d ], [ 256, %bb.c ], [ 256, %bb.b ]
  store i16 %.sink.i, ptr %0, align 8, !alias.scope !1180
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.i
  resume { ptr, i32 } %i.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.h
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths0_1__NtBa_14FixedLengthDef11deserialize14___FieldVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #0 !guid !1184 {
bb.a:
  %.not = icmp eq i8 %1, 0
  %2 = select i1 %.not, i16 0, i16 256
  store i16 %2, ptr %0, align 8, !alias.scope !1185
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels1_1__NtBa_15ByteLevelHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1x_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #0 !guid !1188 {
bb.a:
  %.not = icmp eq i8 %1, 0
  %2 = select i1 %.not, i16 0, i16 256
  store i16 %2, ptr %0, align 8, !alias.scope !1189
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtBa_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1u_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(i8 noundef %0) unnamed_addr #2 !guid !1190 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i8 %0, 0
  br i1 %i.b, label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtB8_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1s_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i8 1, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtB8_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1s_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit

_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtB8_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1s_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers4bert1__NtBa_14BertNormalizerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #0 !guid !1193 {
bb.a:
  %trunc.i = zext nneg i8 %1 to i16
  %2 = icmp ult i8 %1, 4
  %switch.idx.mult.i = shl nuw nsw i16 %trunc.i, 8
  %.sink.i = select i1 %2, i16 %switch.idx.mult.i, i16 1024
  store i16 %.sink.i, ptr %0, align 8, !alias.scope !1194
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtBa_15FixedLengthTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1C_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(i8 noundef %0) unnamed_addr #2 !guid !1195 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i8 %0, 0
  br i1 %i.b, label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB8_15FixedLengthTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1A_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i8 1, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB8_15FixedLengthTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1A_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit

_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB8_15FixedLengthTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1A_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders5strip1__NtBa_5StripNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB19_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #0 !guid !1198 {
bb.a:
  %trunc.i = zext nneg i8 %1 to i16
  %2 = icmp ult i8 %1, 3
  %switch.idx.mult.i = shl nuw nsw i16 %trunc.i, 8
  %.sink.i = select i1 %2, i16 %switch.idx.mult.i, i16 768
  store i16 %.sink.i, ptr %0, align 8, !alias.scope !1199
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0E0Cs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #9 !guid !1201 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !9, !noundef !7 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !11, !noundef !7
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0Cs2JiOgHzbbc7_10tokenizers.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #32
  unreachable

_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !inline_history !1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #32
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerRjEINtNtBY_8flat_map15FlatMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB49_10BpeTrainer8do_trains_0EE0NCBR_s_0INtB3b_13CollectResultB3Q_EB5D_E0B4f_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #9 personality ptr @rust_eh_personality !guid !1238 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 11 uses
  %i.f = alloca [128 x i8], align 8               ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [128 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.k = load i64, ptr %i.j, align 128, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr %i.i, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.o = invoke noundef zeroext i1 @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE8is_emptyCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %.sroa.020.1 = phi i1 [ false, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ]
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE4pushCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_ENtB5_3Job7executeB5I_, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.i, align 16, !nonnull !7, !noundef !7 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 472
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  %i.t = invoke noundef i64 @_RINvMs_NtNtCs5NXVUOdy9du_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.s)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.u = and i64 %i.t, 65535                      ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.o, label %bb.e, label %.sink.split.i, !prof !14

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.r, i32 noundef 1)
          to label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.t, 16
  %i.x = and i64 %i.w, 65535
  %i.y = icmp eq i64 %i.x, %i.u
  br i1 %i.y, label %.sink.split.i, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !13

_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.081.0.copyload = load ptr, ptr %i.z, align 8, !nonnull !7, !noundef !7
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.482.0.copyload = load ptr, ptr %.sroa.482.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.583.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx84, align 8
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.785.0..sroa_idx, i64 24, i1 false)
  %i.aa = inttoptr i64 %.sroa.583.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = load i64, ptr %.sroa.081.0.copyload, align 8, !noalias !1239, !noundef !7
  %i.ac = load i64, ptr %.sroa.482.0.copyload, align 8, !noalias !1239, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.482.0.copyload, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !1239, !noundef !7
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerRjEINtNtB6_8flat_map15FlatMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3g_10BpeTrainer8do_trains_0EEB3m_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ab, i1 noundef zeroext %3, i64 noundef %i.ac, i64 noundef %i.ae, ptr noalias noundef nonnull align 8 %i.aa, i64 noundef %.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ag)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1239
  %.sroa.077.0.copyload78 = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload79 = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload80 = load i64, ptr %.sroa.13.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.am = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am), "nonnull"(ptr %i.an) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.l, ptr noundef nonnull %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an) #32
          to label %bb.an unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.v
  %i.ao = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ap = icmp eq i64 %i.ao, 3
  br i1 %i.ap, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = invoke { ptr, ptr } @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE3popCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n)
          to label %.noexc49 unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.k
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc49, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs8_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_7StealerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE5stealCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj)
          to label %.noexc50 unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.preheader.i
  %i.as = load i64, ptr %i.d, align 8, !range !18, !noundef !7
  switch i64 %i.as, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc50
  unreachable

bb.l:                                             ; preds = %.noexc50
  %i.at = load ptr, ptr %i.ak, align 8, !nonnull !7, !noundef !7
  %i.au = load ptr, ptr %i.al, align 8, !noundef !7
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc50, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.au, %bb.l ], [ undef, %.noexc50 ]
  %.sroa.0.1.i = phi ptr [ %i.at, %bb.l ], [ null, %.noexc50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.av = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.aw = insertvalue { ptr, ptr } %i.av, ptr %.sroa.5.1.i, 1
end_hunk_1
begin_hunk_2_@_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word9merge_all:bb.a
bb.af:                                            ; preds = %bb.ad
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !noundef !7 ; 7 uses
  %i.fs = icmp eq i64 %i.fr, -1
  br i1 %i.fs, label %.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ft = icmp ult i64 %i.fr, %i.at
  br i1 %i.ft, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.fr ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load i32, ptr %i.fv, align 8, !noundef !7
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !7 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fi, i64 24 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !noundef !7
  store i32 %i.gc, ptr %i.i, align 4
  store i32 %i.fw, ptr %i.aq, align 4
  %i.gd = load ptr, ptr %i.m, align 8, !nonnull !7, !align !9, !noundef !7 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !1790, !noundef !7
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gi = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTmmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gh, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc36:                                         ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  %i.gj = lshr i64 %i.gi, 57
  %i.gk = trunc nuw nsw i64 %i.gj to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !1793, !noundef !7 ; 2 uses
  %i.gn = load ptr, ptr %i.gd, align 8, !alias.scope !1793, !nonnull !7, !noundef !7 ; 2 uses
  %i.go = insertelement <16 x i8> poison, i8 %i.gk, i64 0
  %i.gp = shufflevector <16 x i8> %i.go, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.noexc36
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc36 ], [ %i.hg, %bb.al ]
  %.pn.i.i.i = phi i64 [ %i.gi, %.noexc36 ], [ %i.hh, %bb.al ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.gm   ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.gq, align 1, !noalias !1794 ; 2 uses
  %i.gr = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.gp
  %i.gs = bitcast <16 x i1> %i.gr to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.gs, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %bb.ak
  %.sroa.06.0.i33.i.i = phi i16 [ %i.hf, %bb.ak ], [ %i.gs, %bb.aj ] ; 3 uses
  %i.gt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.gu = zext nneg i16 %i.gt to i64
  %i.gv = add i64 %.sroa.01.0.i.i.i, %i.gu
  %i.gw = and i64 %i.gv, %i.gm
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = getelementptr inbounds [16 x i8], ptr %i.gn, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -16
  %i.ha = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTmmEINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.gz)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1795

.noexc37:                                         ; preds = %.lr.ph.i.i
  br i1 %i.ha, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ak, !prof !14

._crit_edge.i.i:                                  ; preds = %bb.ak, %bb.aj
  %i.hb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.hc = bitcast <16 x i1> %i.hb to i16
  %i.hd = icmp eq i16 %i.hc, 0
  br i1 %i.hd, label %bb.al, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.thread, !prof !13

bb.ak:                                            ; preds = %.noexc37
  %i.he = add i16 %.sroa.06.0.i33.i.i, -1
  %i.hf = and i16 %i.he, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.hf, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.hg = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.hh = add i64 %.sroa.01.0.i.i.i, %i.hg
  br label %bb.aj

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc37
  %i.hi = getelementptr inbounds i8, ptr %i.gy, i64 -4
  %i.hj = load i32, ptr %i.hi, align 4, !noundef !7
  %.not26 = icmp eq i32 %i.hj, %.sroa.698.sroa.7.0.copyload
  br i1 %.not26, label %bb.am, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.thread

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %._crit_edge.i.i, %bb.ah, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.backedge

bb.am:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  store i32 %.sroa.698.sroa.7.0.copyload, ptr %i.gb, align 8
  %i.hk = load i64, ptr %i.fj, align 8, !noundef !7
  %i.hl = add i64 %i.hk, %i.ga
  store i64 %i.hl, ptr %i.fj, align 8
  store i64 %i.fy, ptr %i.fq, align 8
  %i.hm = load i64, ptr %i.n, align 8, !noundef !7 ; 11 uses
  %i.hn = icmp ult i64 %i.fr, %i.hm
  br i1 %i.hn, label %bb.an, label %.invoke

bb.an:                                            ; preds = %bb.am
  %i.ho = load ptr, ptr %i.ai, align 8, !nonnull !7, !noundef !7 ; 6 uses
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.fr
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store i64 0, ptr %i.hq, align 8
  %i.hr = icmp sgt i64 %i.fy, -1
  br i1 %i.hr, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.aq, %bb.an
  %i.hs = icmp ult i64 %.sroa.698.sroa.0.0.copyload, %i.hm
  br i1 %i.hs, label %bb.ar, label %.invoke

bb.ap:                                            ; preds = %bb.an
  %i.ht = icmp ult i64 %i.hm, 288230376151711744
  call void @llvm.assume(i1 %i.ht)
  %i.hu = icmp samesign ult i64 %i.fy, %i.hm
  br i1 %i.hu, label %bb.aq, label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.fy
  store i64 %.sroa.698.sroa.0.0.copyload, ptr %i.hv, align 8
  br label %bb.ao

bb.ar:                                            ; preds = %bb.ao
  %i.hw = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %.sroa.698.sroa.0.0.copyload ; 4 uses
  %i.hx = load i64, ptr %i.hw, align 8, !noundef !7 ; 5 uses
  %i.hy = icmp sgt i64 %i.hx, -1
  br i1 %i.hy, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit53.thread, %bb.ar
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !noundef !7 ; 2 uses
  %i.ib = icmp ult i64 %i.hm, 288230376151711744
  call void @llvm.assume(i1 %i.ib)
  %i.ic = icmp ult i64 %i.ia, %i.hm
  br i1 %i.ic, label %bb.bc, label %bb.bb

bb.at:                                            ; preds = %bb.ar
  %i.id = icmp ult i64 %i.hx, %i.hm
  br i1 %i.id, label %bb.au, label %.invoke

bb.au:                                            ; preds = %bb.at
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.hx
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load i32, ptr %i.if, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.ii = load i32, ptr %i.ih, align 8, !noundef !7
  store i32 %i.ig, ptr %i.h, align 4
  store i32 %i.ii, ptr %i.ar, align 4
  %i.ij = load ptr, ptr %i.m, align 8, !nonnull !7, !align !9, !noundef !7 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load i64, ptr %i.ik, align 8, !alias.scope !1796, !noundef !7
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit53.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.io = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTmmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.in, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc51:                                         ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  %i.ip = lshr i64 %i.io, 57
  %i.iq = trunc nuw nsw i64 %i.ip to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !1799, !noundef !7 ; 2 uses
  %i.it = load ptr, ptr %i.ij, align 8, !alias.scope !1799, !nonnull !7, !noundef !7 ; 2 uses
  %i.iu = insertelement <16 x i8> poison, i8 %i.iq, i64 0
  %i.iv = shufflevector <16 x i8> %i.iu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.noexc51
  %.sroa.9.0.i.i.i38 = phi i64 [ 0, %.noexc51 ], [ %i.jm, %bb.ay ]
  %.pn.i.i.i39 = phi i64 [ %i.io, %.noexc51 ], [ %i.jn, %bb.ay ]
  %.sroa.01.0.i.i.i40 = and i64 %.pn.i.i.i39, %i.is ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 %.sroa.01.0.i.i.i40
  %.sroa.0.0.copyload.i26.i.i41 = load <16 x i8>, ptr %i.iw, align 1, !noalias !1800 ; 2 uses
  %i.ix = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i41, %i.iv
  %i.iy = bitcast <16 x i1> %i.ix to i16          ; 2 uses
  %.not.i.not32.i.i42 = icmp eq i16 %i.iy, 0
  br i1 %.not.i.not32.i.i42, label %._crit_edge.i.i46, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %bb.aw, %bb.ax
  %.sroa.06.0.i33.i.i44 = phi i16 [ %i.jl, %bb.ax ], [ %i.iy, %bb.aw ] ; 3 uses
  %i.iz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i44, i1 true)
  %i.ja = zext nneg i16 %i.iz to i64
  %i.jb = add i64 %.sroa.01.0.i.i.i40, %i.ja
  %i.jc = and i64 %i.jb, %i.is
  %i.jd = sub nsw i64 0, %i.jc
  %i.je = getelementptr inbounds [16 x i8], ptr %i.it, i64 %i.jd ; 3 uses
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -16
  %i.jg = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTmmEINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.jf)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1801

.noexc52:                                         ; preds = %.lr.ph.i.i43
  br i1 %i.jg, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit53, label %bb.ax, !prof !14

._crit_edge.i.i46:                                ; preds = %bb.ax, %bb.aw
  %i.jh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i41, splat (i8 -1)
  %i.ji = bitcast <16 x i1> %i.jh to i16
  %i.jj = icmp eq i16 %i.ji, 0
  br i1 %i.jj, label %bb.ay, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit53.thread, !prof !13

bb.ax:                                            ; preds = %.noexc52
  %i.jk = add i16 %.sroa.06.0.i33.i.i44, -1
  %i.jl = and i16 %i.jk, %.sroa.06.0.i33.i.i44    ; 2 uses
  %.not.i.not.i.i45 = icmp eq i16 %i.jl, 0
  br i1 %.not.i.not.i.i45, label %._crit_edge.i.i46, label %.lr.ph.i.i43

bb.ay:                                            ; preds = %._crit_edge.i.i46
  %i.jm = add i64 %.sroa.9.0.i.i.i38, 16          ; 2 uses
  %i.jn = add i64 %.sroa.01.0.i.i.i40, %i.jm
  br label %bb.aw

.invoke:                                          ; preds = %bb.at, %bb.ao, %bb.am, %bb.ag, %bb.ac
  %i.jo = phi i64 [ %.sroa.698.sroa.0.0.copyload, %bb.ao ], [ %i.fr, %bb.am ], [ %i.fr, %bb.ag ], [ %.sroa.698.sroa.0.0.copyload, %bb.ac ], [ %i.hx, %bb.at ]
  %i.jp = phi i64 [ %i.hm, %bb.ao ], [ %i.hm, %bb.am ], [ %i.at, %bb.ag ], [ %i.at, %bb.ac ], [ %i.hm, %bb.at ]
  %i.jq = phi ptr [ @68, %bb.ao ], [ @67, %bb.am ], [ @66, %bb.ag ], [ @65, %bb.ac ], [ @69, %bb.at ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jo, i64 noundef %i.jp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jq) #32
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit53: ; preds = %.noexc52
  %i.jr = getelementptr inbounds i8, ptr %i.je, i64 -8
  %4 = load i32, ptr %i.jr, align 4, !noundef !7
  %5 = getelementptr inbounds i8, ptr %i.je, i64 -4
  %6 = load i32, ptr %5, align 4, !noundef !7
  %i.js = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1802, !noundef !7 ; 8 uses
  %i.jt = icmp ult i64 %i.js, 576460752303423488
  call void @llvm.assume(i1 %i.jt)
  %i.ju = load i64, ptr %i.l, align 8, !range !19, !alias.scope !1803, !noundef !7
  %i.jv = icmp eq i64 %i.js, %i.ju
  br i1 %i.jv, label %bb.az, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i

bb.az:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit53
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1804

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i: ; preds = %bb.az, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit53
  %i.jw = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1803, !nonnull !7, !noundef !7
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %i.jw, i64 %i.js ; 2 uses
  store i64 %i.hx, ptr %i.jx, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %7 = zext i32 %4 to i64
  %8 = zext i32 %6 to i64
  %9 = shl nuw i64 %8, 32
  %10 = or disjoint i64 %9, %7
  store i64 %10, ptr %.sroa.4106.0..sroa_idx, align 8
  %i.jy = add nuw nsw i64 %i.js, 1
  store i64 %i.jy, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1803
  %.val.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1802, !nonnull !7, !noundef !7 ; 4 uses
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.js ; 2 uses
  %.sroa.023.0.copyload.i.i = load i64, ptr %i.jz, align 8, !noalias !1805 ; 2 uses
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 2 uses
  %i.ka = load <2 x i32>, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !1805
  %.sroa.424.0.copyload.i.i = load i32, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !1805 ; 2 uses
  %.not26.i.i = icmp eq i64 %i.js, 0
  br i1 %.not26.i.i, label %.loopexit135, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i, %bb.ba
  %.sroa.1414.027.i.i = phi i64 [ %i.kc, %bb.ba ], [ %i.js, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i ] ; 3 uses
  %i.kb = add nsw i64 %.sroa.1414.027.i.i, -1
  %i.kc = lshr i64 %i.kb, 2                       ; 4 uses
  %i.kd = icmp samesign ule i64 %i.kc, %i.js
  call void @llvm.assume(i1 %i.kd)
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.kc ; 3 uses
  %.val2.i.i = load i64, ptr %i.ke, align 8, !noalias !1805
  %i.kf = getelementptr i8, ptr %i.ke, i64 8
  %.val3.i.i = load i32, ptr %i.kf, align 8, !noalias !1805, !noundef !7 ; 2 uses
  %.not.i.i.i.i55 = icmp eq i32 %.sroa.424.0.copyload.i.i, %.val3.i.i
  %i.kg = icmp ule i32 %.val3.i.i, %.sroa.424.0.copyload.i.i
  %i.kh = icmp ule i64 %.val2.i.i, %.sroa.023.0.copyload.i.i
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i55, i1 %i.kh, i1 %i.kg
  br i1 %.sroa.0.0.i.i.i.i, label %.loopexit135, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i54
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.1414.027.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ki, ptr noundef nonnull align 8 dereferenceable(16) %i.ke, i64 16, i1 false), !noalias !1805
  %.not.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not.i.i, label %.loopexit135, label %.lr.ph.i.i54

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit53.thread: ; preds = %._crit_edge.i.i46, %bb.au, %.loopexit135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.as

.loopexit135:                                     ; preds = %bb.ba, %.lr.ph.i.i54, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i
  %.sroa.1414.0.lcssa.i.i = phi i64 [ 0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i ], [ %.sroa.1414.027.i.i, %.lr.ph.i.i54 ], [ 0, %bb.ba ]
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.1414.0.lcssa.i.i ; 2 uses
  store i64 %.sroa.023.0.copyload.i.i, ptr %i.kj, align 8, !noalias !1805
  %.sroa.13.16..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store <2 x i32> %i.ka, ptr %.sroa.13.16..sroa_idx6.i.i, align 8, !noalias !1805
  br label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit53.thread

bb.bb:                                            ; preds = %bb.as, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit72.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.backedge

bb.bc:                                            ; preds = %bb.as
  %i.kk = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.ia
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load i32, ptr %i.kl, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.ko = load i32, ptr %i.kn, align 8, !noundef !7
  store i32 %i.ko, ptr %i.g, align 4
  store i32 %i.km, ptr %i.as, align 4
  %i.kp = load ptr, ptr %i.m, align 8, !nonnull !7, !align !9, !noundef !7 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load i64, ptr %i.kq, align 8, !alias.scope !1806, !noundef !7
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit72.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.ku = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTmmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kt, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc70:                                         ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  %i.kv = lshr i64 %i.ku, 57
  %i.kw = trunc nuw nsw i64 %i.kv to i8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.ky = load i64, ptr %i.kx, align 8, !alias.scope !1809, !noundef !7 ; 2 uses
  %i.kz = load ptr, ptr %i.kp, align 8, !alias.scope !1809, !nonnull !7, !noundef !7 ; 2 uses
  %i.la = insertelement <16 x i8> poison, i8 %i.kw, i64 0
  %i.lb = shufflevector <16 x i8> %i.la, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.be

bb.be:                                            ; preds = %bb.bg, %.noexc70
  %.sroa.9.0.i.i.i57 = phi i64 [ 0, %.noexc70 ], [ %i.ls, %bb.bg ]
  %.pn.i.i.i58 = phi i64 [ %i.ku, %.noexc70 ], [ %i.lt, %bb.bg ]
  %.sroa.01.0.i.i.i59 = and i64 %.pn.i.i.i58, %i.ky ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.sroa.01.0.i.i.i59
  %.sroa.0.0.copyload.i26.i.i60 = load <16 x i8>, ptr %i.lc, align 1, !noalias !1810 ; 2 uses
  %i.ld = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i60, %i.lb
  %i.le = bitcast <16 x i1> %i.ld to i16          ; 2 uses
  %.not.i.not32.i.i61 = icmp eq i16 %i.le, 0
  br i1 %.not.i.not32.i.i61, label %._crit_edge.i.i65, label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %bb.be, %bb.bf
  %.sroa.06.0.i33.i.i63 = phi i16 [ %i.lr, %bb.bf ], [ %i.le, %bb.be ] ; 3 uses
  %i.lf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i63, i1 true)
  %i.lg = zext nneg i16 %i.lf to i64
  %i.lh = add i64 %.sroa.01.0.i.i.i59, %i.lg
  %i.li = and i64 %i.lh, %i.ky
  %i.lj = sub nsw i64 0, %i.li
  %i.lk = getelementptr inbounds [16 x i8], ptr %i.kz, i64 %i.lj ; 3 uses
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 -16
  %i.lm = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTmmEINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ll)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1811

.noexc71:                                         ; preds = %.lr.ph.i.i62
  br i1 %i.lm, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit72, label %bb.bf, !prof !14

._crit_edge.i.i65:                                ; preds = %bb.bf, %bb.be
  %i.ln = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i60, splat (i8 -1)
  %i.lo = bitcast <16 x i1> %i.ln to i16
  %i.lp = icmp eq i16 %i.lo, 0
  br i1 %i.lp, label %bb.bg, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit72.thread, !prof !13

bb.bf:                                            ; preds = %.noexc71
  %i.lq = add i16 %.sroa.06.0.i33.i.i63, -1
  %i.lr = and i16 %i.lq, %.sroa.06.0.i33.i.i63    ; 2 uses
  %.not.i.not.i.i64 = icmp eq i16 %i.lr, 0
  br i1 %.not.i.not.i.i64, label %._crit_edge.i.i65, label %.lr.ph.i.i62

bb.bg:                                            ; preds = %._crit_edge.i.i65
  %i.ls = add i64 %.sroa.9.0.i.i.i57, 16          ; 2 uses
  %i.lt = add i64 %.sroa.01.0.i.i.i59, %i.ls
  br label %bb.be

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit72: ; preds = %.noexc71
  %i.lu = getelementptr inbounds i8, ptr %i.lk, i64 -8
  %11 = load i32, ptr %i.lu, align 4, !noundef !7
  %12 = getelementptr inbounds i8, ptr %i.lk, i64 -4
  %13 = load i32, ptr %12, align 4, !noundef !7
  %i.lv = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1812, !noundef !7 ; 8 uses
  %i.lw = icmp ult i64 %i.lv, 576460752303423488
  call void @llvm.assume(i1 %i.lw)
  %i.lx = load i64, ptr %i.l, align 8, !range !19, !alias.scope !1813, !noundef !7
  %i.ly = icmp eq i64 %i.lv, %i.lx
  br i1 %i.ly, label %bb.bh, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i73

bb.bh:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit72
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1814

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i73: ; preds = %bb.bh, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit72
  %i.lz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1813, !nonnull !7, !noundef !7
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %i.lz, i64 %i.lv ; 2 uses
  store i64 %.sroa.698.sroa.0.0.copyload, ptr %i.ma, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %14 = zext i32 %11 to i64
  %15 = zext i32 %13 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or disjoint i64 %16, %14
  store i64 %17, ptr %.sroa.4109.0..sroa_idx, align 8
  %i.mb = add nuw nsw i64 %i.lv, 1
  store i64 %i.mb, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1813
  %.val.i74 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1812, !nonnull !7, !noundef !7 ; 4 uses
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %.val.i74, i64 %i.lv ; 2 uses
  %.sroa.023.0.copyload.i.i75 = load i64, ptr %i.mc, align 8, !noalias !1815 ; 2 uses
  %.sroa.424.0..sroa_idx.i.i76 = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.md = load <2 x i32>, ptr %.sroa.424.0..sroa_idx.i.i76, align 8, !noalias !1815
  %.sroa.424.0.copyload.i.i77 = load i32, ptr %.sroa.424.0..sroa_idx.i.i76, align 8, !noalias !1815 ; 2 uses
  %.not26.i.i80 = icmp eq i64 %i.lv, 0
  br i1 %.not26.i.i80, label %.loopexit134, label %.lr.ph.i.i81

.lr.ph.i.i81:                                     ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i73, %bb.bi
  %.sroa.1414.027.i.i82 = phi i64 [ %i.mf, %bb.bi ], [ %i.lv, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i73 ] ; 3 uses
  %i.me = add nsw i64 %.sroa.1414.027.i.i82, -1
  %i.mf = lshr i64 %i.me, 2                       ; 4 uses
  %i.mg = icmp samesign ule i64 %i.mf, %i.lv
  call void @llvm.assume(i1 %i.mg)
  %i.mh = getelementptr inbounds nuw [16 x i8], ptr %.val.i74, i64 %i.mf ; 3 uses
  %.val2.i.i83 = load i64, ptr %i.mh, align 8, !noalias !1815
  %i.mi = getelementptr i8, ptr %i.mh, i64 8
  %.val3.i.i84 = load i32, ptr %i.mi, align 8, !noalias !1815, !noundef !7 ; 2 uses
  %.not.i.i.i.i85 = icmp eq i32 %.sroa.424.0.copyload.i.i77, %.val3.i.i84
  %i.mj = icmp ule i32 %.val3.i.i84, %.sroa.424.0.copyload.i.i77
  %i.mk = icmp ule i64 %.val2.i.i83, %.sroa.023.0.copyload.i.i75
  %.sroa.0.0.i.i.i.i86 = select i1 %.not.i.i.i.i85, i1 %i.mk, i1 %i.mj
  br i1 %.sroa.0.0.i.i.i.i86, label %.loopexit134, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i81
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %.val.i74, i64 %.sroa.1414.027.i.i82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ml, ptr noundef nonnull align 8 dereferenceable(16) %i.mh, i64 16, i1 false), !noalias !1815
  %.not.i.i87 = icmp eq i64 %i.mf, 0
  br i1 %.not.i.i87, label %.loopexit134, label %.lr.ph.i.i81

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit72.thread: ; preds = %._crit_edge.i.i65, %bb.bc, %.loopexit134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bb

.loopexit134:                                     ; preds = %bb.bi, %.lr.ph.i.i81, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i73
  %.sroa.1414.0.lcssa.i.i88 = phi i64 [ 0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8push_mutBM_.exit.i73 ], [ %.sroa.1414.027.i.i82, %.lr.ph.i.i81 ], [ 0, %bb.bi ]
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %.val.i74, i64 %.sroa.1414.0.lcssa.i.i88 ; 2 uses
  store i64 %.sroa.023.0.copyload.i.i75, ptr %i.mm, align 8, !noalias !1815
  %.sroa.13.16..sroa_idx6.i.i89 = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store <2 x i32> %i.md, ptr %.sroa.13.16..sroa_idx6.i.i89, align 8, !noalias !1815
  br label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit72.thread

bb.bj:                                            ; preds = %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E3popBQ_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body94 unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEEB1f_.exit unwind label %bb.c

bb.bm:                                            ; preds = %bb.bk
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEEB1f_.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_EEB1j_.exit unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEEB1f_.exit
  %i.mp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body94, %bb.bn
  %common.resume.op = phi { ptr, i32 } [ %i.mp, %bb.bn ], [ %.pn, %.body94 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_EEB1j_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeEEB1f_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.bp:                                            ; preds = %.body, %.body94
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice12nbest_tokens(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(112) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1816 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice5nbest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !7
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.j, align 8
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBT_NtNtB8_6string6StringEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterIBT_INtNtB8_2rc2RcINtNtB26_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENCNvMs6_B3S_NtB3S_7Lattice12nbest_tokens0EE9from_iterB3Y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB1k_3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB1k_3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice12sample_nbest(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %1, i64 noundef %2, double noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1833 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice5nbest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %2)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !7 ; 4 uses
  %i.i = icmp ult i64 %i.h, 384307168202282326
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice7viterbi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.j unwind label %bb.e

bb.d:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %.pn11 = phi { ptr, i32 } [ %i.k, %bb.e ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #33
          to label %common.resume unwind label %bb.ah

bb.e:                                             ; preds = %bb.k, %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
end_hunk_2
begin_hunk_3_@_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers4bertNtB5_14BertNormalizerNtNtB9_9tokenizer10Normalizer9normalize:bb.a
  %.not = icmp eq i8 %i.k, 2
  %. = select i1 %.not, i8 %i.m, i8 %i.k
  %i.o = trunc nuw i8 %. to i1
  br i1 %i.o, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2591
  store i64 0, ptr %i.b, align 8, !noalias !2591
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !noalias !2591
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.q, align 8, !noalias !2591
  %i.r = invoke noundef nonnull align 8 ptr @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString8for_eachNCNvMs_NtNtBa_11normalizers4bertNtB1z_14BertNormalizer23do_handle_chinese_chars0EBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMs_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers4bertNtB4_14BertNormalizer23do_handle_chinese_chars.exit unwind label %bb.g ; 0 uses

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTciEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #33
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvMs_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers4bertNtB4_14BertNormalizer23do_handle_chinese_chars.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2591
  call void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15transform_rangeNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEBa_(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2591
  br label %bb.d

bb.i:                                             ; preds = %bb.j, %bb.d
  br i1 %i.n, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.u = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString3nfd(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  %i.v = call noundef nonnull align 8 ptr @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString6filterNCNvMs_NtNtBa_11normalizers4bertNtB1x_14BertNormalizer16do_strip_accents0EBa_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.u) ; 0 uses
  br label %bb.i

bb.k:                                             ; preds = %bb.l, %bb.i
  ret { ptr, ptr } { ptr null, ptr undef }

bb.l:                                             ; preds = %bb.i
  %i.w = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString9lowercase(ptr noalias noundef nonnull align 8 dereferenceable(80) %1) ; 0 uses
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths0_1__NtBa_14FixedLengthDef11deserializeNtB5_9___VisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !2592 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels1_1__NtBa_15ByteLevelHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1x_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !2593 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 22)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtBa_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1u_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !2594 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers4bert1__NtBa_14BertNormalizerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1m_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !2595 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 21)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtBa_15FixedLengthTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1C_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !2596 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 20)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths2_1__NtBa_23FixedLengthDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1K_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !2597 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 30)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders5strip1__NtBa_5StripNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB19_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !2598 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 12)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtBW_4Word9merge_all0INtB7_5FnMutTTjRSNtBW_6SymbolEEE8call_mutB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !2613 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !7, !align !9, !noundef !7
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2615
  switch i64 %.sroa.3.0.copyload, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32, !noalias !2615
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 24
  %i.d = load i32, ptr %i.c, align 8, !noalias !2615, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 56
  %i.f = load i32, ptr %i.e, align 8, !noalias !2615, !noundef !7
  store i32 %i.d, ptr %i.a, align 4, !noalias !2615
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %i.g, align 4, !noalias !2615
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = load ptr, ptr %.val, align 8, !noalias !2615, !nonnull !7, !align !9, !noundef !7 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2616, !noalias !2615, !noundef !7
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNCNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB7_4Word9merge_all0Bd_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTmmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !2615 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  %i.n = lshr i64 %i.m, 57
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !2619, !noalias !2615, !noundef !7 ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !alias.scope !2619, !noalias !2615, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ak, %bb.g ]
  %.pn.i.i.i.i = phi i64 [ %i.m, %bb.d ], [ %i.al, %bb.g ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.q ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !2620 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.aj, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.q
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ae = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTmmEINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ad), !noalias !2621
  br i1 %i.ae, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.f, !prof !14

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_RNCNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB7_4Word9merge_all0Bd_.exit, !prof !13

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i, %i.ak
  br label %bb.e

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #32, !noalias !2615
  unreachable

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %3 = load i64, ptr %i.am, align 4, !noalias !2615
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.an, align 8, !alias.scope !2614
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2614
  br label %_RNCNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB7_4Word9merge_all0Bd_.exit

_RNCNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB7_4Word9merge_all0Bd_.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i
  %storemerge.i = phi i64 [ 1, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i ], [ 0, %bb.c ], [ 0, %._crit_edge.i.i.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2615
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolNtB6_5Debug3fmtBE_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !2625 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !9, !noundef !7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2626
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.a, align 8, !noalias !2626
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 1, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @188, ptr noalias noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189, ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 4, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189, ptr noalias noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2626
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2Z_9enumerate17EnumerateProducerINtNtB31_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB2Z_3map11MapConsumerINtNtB2Z_6reduce14ReduceConsumerNCNvMs4_NtB5f_7trainerNtB7a_10BpeTrainer11count_pairss0_0NCB74_s_0ENCB74_0EE0NCB2S_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8s_B98_INtNtB8w_8hash_set8AHashSetjEEEB8q_E0TB8q_B8q_EE00B9Y_ENtB5_3Job7executeB5j_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !2636 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [256 x i8], align 8               ; 6 uses
  %i.c = alloca [136 x i8], align 16              ; 6 uses
  %.sroa.14 = alloca [232 x i8], align 8          ; 4 uses
  %.sroa.9.sroa.5 = alloca [232 x i8], align 8    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x ptr> %i.e, ptr %i.c, align 16
  %.sroa.13.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx55, align 16
  %.sroa.14.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.14.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2637, !noundef !7 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3U_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_9enumerate17EnumerateProducerINtNtB5j_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5h_3map11MapConsumerINtNtB5h_6reduce14ReduceConsumerNCNvMs4_NtB7x_7trainerNtB9s_10BpeTrainer11count_pairss0_0NCB9m_s_0ENCB9m_0EE0NCB5a_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7B_.exit.i, !prof !32

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %.noexc unwind label %bb.d, !noalias !2637

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3U_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_9enumerate17EnumerateProducerINtNtB5j_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5h_3map11MapConsumerINtNtB5h_6reduce14ReduceConsumerNCNvMs4_NtB7x_7trainerNtB9s_10BpeTrainer11count_pairss0_0NCB9m_s_0ENCB9m_0EE0NCB5a_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7B_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtB10_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs4_NtB3d_7trainerNtB56_10BpeTrainer11count_pairss0_0NCB50_s_0ENCB50_0EE0NCBR_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB6n_B73_INtNtB6r_8hash_set8AHashSetjEEEB6l_E0B3h_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3U_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_9enumerate17EnumerateProducerINtNtB5j_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5h_3map11MapConsumerINtNtB5h_6reduce14ReduceConsumerNCNvMs4_NtB7x_7trainerNtB9s_10BpeTrainer11count_pairss0_0NCB9m_s_0ENCB9m_0EE0NCB5a_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7B_.exit.i, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.k unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.s, %bb.m ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.p

bb.h:                                             ; preds = %bb.n, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3U_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_9enumerate17EnumerateProducerINtNtB5j_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5h_3map11MapConsumerINtNtB5h_6reduce14ReduceConsumerNCNvMs4_NtB7x_7trainerNtB9s_10BpeTrainer11count_pairss0_0NCB9m_s_0ENCB9m_0EE0NCB5a_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7B_.exit.i
  %.sroa.0.0.copyload50 = load ptr, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx52, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14.0..sroa_idx, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14, i64 232, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.n = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  %i.p = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.o, i64 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.065 = phi ptr [ %.sroa.0.0.copyload50, %bb.j ], [ %i.n, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.j ], [ 2, %bb.k ] ; 2 uses
  %i.q = phi <2 x ptr> [ %i.m, %bb.j ], [ %i.p, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1n_B23_INtNtB1r_8hash_set8AHashSetjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(264) %i.r)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.0.065, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = extractelement <2 x ptr> %i.q, i64 0
  store ptr %i.t, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = extractelement <2 x ptr> %i.q, i64 1
  store ptr %i.u, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, i64 232, i1 false)
  br label %bb.g

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.0.065, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x ptr> %i.q, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5)
  %.val = load ptr, ptr %0, align 8, !noundef !7
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  ret void

bb.p:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerRjEINtNtB2Z_8flat_map15FlatMapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6c_10BpeTrainer8do_trains_0EE0NCB2S_s_0INtB5d_13CollectResultB5T_EB7H_E0TB7H_B7H_EE00B8e_ENtB5_3Job7executeB6i_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !2649 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [120 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2650
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1049.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
end_hunk_3
begin_hunk_4_@_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2f_3vec3VecB2b_EEENCNvMse_B10_BX_3new0ECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1U_3vec3VecB1Q_EEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEE8grow_oneB1Y_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEE8grow_oneB1I_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmElEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #14

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCseKCDlm5CXZl_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngENtNtB1W_5block12BlockRngCore8generateCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 16 dereferenceable(64), ptr noalias noundef align 4 dereferenceable(256)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString9lowercase(ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString6filterNCNvMs_NtNtBa_11normalizers4bertNtB1x_14BertNormalizer13do_clean_text0EBa_(ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString3mapNCNvMs_NtNtBa_11normalizers4bertNtB1u_14BertNormalizer13do_clean_texts_0EBa_(ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString3nfd(ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString6filterNCNvMs_NtNtBa_11normalizers4bertNtB1x_14BertNormalizer16do_strip_accents0EBa_(ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString8for_eachNCNvMs_NtNtBa_11normalizers4bertNtB1z_14BertNormalizer23do_handle_chinese_chars0EBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15transform_rangeNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEBa_(ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #22

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2JiOgHzbbc7_10tokenizers(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvCsab9OZFjq7dt_18unicode_categories19table_binary_search(i32 noundef range(i32 0, 1114112), ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism15get_parallelism() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTciEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB15_9enumerate9EnumerateINtNtNtB19_5slice4iter4IterhEENCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levelNtB2T_9ByteLevelNtNtB2X_9tokenizer10Normalizer9normalize0EEB2X_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENCNvXs2_B39_NtB39_4WordNtNtB21_3fmt5Debug3fmt0EE9from_iterB3f_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBM_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBT_NtNtB8_6string6StringEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterIBT_INtNtB8_2rc2RcINtNtB26_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENCNCNvXs3_B3S_NtB3S_7LatticeNtNtB26_3fmt7Display3fmt00EE9from_iterB3Y_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtB7_6string6StringEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexbE4lockCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impiNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3fmt3numiNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3fmt3numiNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6_18PreTokenizedString5splitNCNvXs_NtNtBa_14pre_tokenizers12fixed_lengthNtB1B_11FixedLengthNtB8_12PreTokenizer12pre_tokenize0INtNtCscdodAO9FK5_5alloc3vec3VecNtNtB8_10normalizer16NormalizedStringEB3z_EBa_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders5stripNtB2N_5StripNtNtB2R_9tokenizer7Decoder12decode_chain0EB2k_EB2R_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4keysCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolINtNtNtBa_5slice4iter4IterB14_EEB1c_(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell10UnsafeCellINtNtNtCseKCDlm5CXZl_4rand4rngs9reseeding12ReseedingRngNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngEEE9drop_slowB1o_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEE9drop_slowB1l_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #30

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { cold }
attributes #34 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!4 = !{i64 3943847287328805796}
!5 = !{i64 -29831075943202910}
!6 = !{i64 1736972350988744783}
!7 = !{}
!8 = !{i64 0, i64 2}
!9 = !{i64 8}
!10 = !{i64 4}
!11 = !{i8 0, i8 2}
!12 = !{i64 0, i64 -9223372036854775807}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i8 0, i8 3}
!16 = !{i64 -1, i64 -9223372036854775808}
!17 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!18 = !{i64 0, i64 3}
!19 = !{i64 0, i64 -9223372036854775808}
!20 = !{i64 1, i64 536870913}
!21 = !{i64 0, i64 -9223372036854775805}
!22 = !{i64 0, i64 5}
!23 = !{i8 0, i8 6}
!24 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!25 = !{i8 -2, i8 6}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 127, i32 1}
!29 = !{!"llvm.loop.unswitch.partial.disable"}
!30 = !{!"branch_weights", i32 255873, i32 127}
!31 = !{i8 0, i8 4}
!32 = !{!"branch_weights", i32 4001, i32 4000000}
!33 = !{i64 -6112563891571062269}
!34 = !{i64 -8802010479691463818}
!35 = !{i64 -9098390034940112950}
!36 = !{i64 -7476026433430682830}
!37 = distinct !{!37, i1 true, !"_RNvXsp_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers"}
!38 = distinct !{!38, !37, !"_RNvXsp_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers: argument 1"}
!39 = distinct !{!39, !37, !"_RNvXsp_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers: argument 0"}
!40 = distinct !{!40, i1 true, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers"}
!41 = distinct !{!41, !40, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers: argument 1"}
!42 = distinct !{!42, !40, !"_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2JiOgHzbbc7_10tokenizers: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2JiOgHzbbc7_10tokenizers"}
!44 = distinct !{!44, !43, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2JiOgHzbbc7_10tokenizers: argument 1"}
!45 = distinct !{!45, !43, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2JiOgHzbbc7_10tokenizers: argument 0"}
!46 = distinct !{!46, i1 true, !"_RNvXs4_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!47 = distinct !{!47, !46, !"_RNvXs4_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!48 = distinct !{!48, i1 true, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers"}
!49 = distinct !{!49, !48, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!50 = !{i64 -2368909516275508013}
!51 = !{!49, !47, !45, !44, !42, !41, !39, !38}
!52 = !{!45, !44, !42, !41, !39, !38}
!53 = !{i64 1829524871816831506}
!54 = distinct !{!54, i1 true, !"_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMBV_BT_3pad0EBZ_"}
!55 = distinct !{!55, !54, !"_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMBV_BT_3pad0EBZ_: argument 0"}
!56 = distinct !{!56, i1 true, !"_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding3pad0B8_"}
!57 = distinct !{!57, !56, !"_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding3pad0B8_: argument 0"}
!58 = distinct !{!58, !56, !"_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding3pad0B8_: argument 1"}
!59 = !{i64 -1144632702442914163}
!60 = !{!55}
!61 = !{!57, !55}
!62 = !{!57}
!63 = !{!57, !58, !55}
!64 = distinct !{!64, i1 true, !"_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtBZ_5utils7padding13pad_encodingss_0EBZ_"}
!65 = distinct !{!65, !64, !"_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtBZ_5utils7padding13pad_encodingss_0EBZ_: argument 0"}
!66 = distinct !{!66, !64, !"_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtBZ_5utils7padding13pad_encodingss_0EBZ_: argument 1"}
!67 = distinct !{!67, i1 true, !"_RNCNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodingss_0B7_"}
!68 = distinct !{!68, !67, !"_RNCNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodingss_0B7_: argument 0"}
!69 = !{i64 7028633474975879688}
!70 = !{!65}
!71 = !{!66}
!72 = !{!68}
!73 = !{!68, !65, !66}
!74 = !{!65, !66}
!75 = distinct !{!75, i1 true, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8flat_mapINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2Q_10BpeTrainer8do_trains_0EB2W_"}
!76 = distinct !{!76, !75, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8flat_mapINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2Q_10BpeTrainer8do_trains_0EB2W_: argument 2"}
!77 = distinct !{!77, !75, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8flat_mapINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2Q_10BpeTrainer8do_trains_0EB2W_: argument 0"}
!78 = distinct !{!78, !75, !"_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8flat_mapINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2Q_10BpeTrainer8do_trains_0EB2W_: argument 1"}
!79 = distinct !{!79, i1 true, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon11collections8hash_set4IterjENtNtBa_4iter16ParallelIterator8flat_mapNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1I_10BpeTrainer8do_trains_0INtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEEB1O_"}
!80 = distinct !{!80, !79, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon11collections8hash_set4IterjENtNtBa_4iter16ParallelIterator8flat_mapNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1I_10BpeTrainer8do_trains_0INtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEEB1O_: argument 2"}
!81 = distinct !{!81, !79, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon11collections8hash_set4IterjENtNtBa_4iter16ParallelIterator8flat_mapNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1I_10BpeTrainer8do_trains_0INtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEEB1O_: argument 0"}
!82 = !{i64 -8683795869380215209}
!83 = !{!77, !76}
!84 = !{!77, !78}
!85 = !{!78, !76}
!86 = !{!81, !80}
!87 = distinct !{!87, i1 true, !"_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer11count_pairss_0Bd_"}
!88 = distinct !{!88, !87, !"_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer11count_pairss_0Bd_: argument 0"}
!89 = distinct !{!89, i1 true, !"_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new"}
!90 = distinct !{!90, !89, !"_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new: argument 0"}
!91 = distinct !{null, null}
!92 = distinct !{!92, i1 true, !"_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new"}
!93 = distinct !{!93, !92, !"_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new: argument 0"}
!94 = !{i64 1819729135279634661}
!95 = !{!88}
!96 = !{!90, !88}
!97 = !{!93, !88}
!98 = distinct !{!98, i1 true, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer10run_e_steps0_0Bc_"}
!99 = distinct !{!99, !98, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer10run_e_steps0_0Bc_: argument 0"}
!100 = distinct !{!100, i1 true, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers"}
!101 = distinct !{!101, !100, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers: argument 0"}
!102 = !{i64 5588825353376867530}
!103 = !{!99}
!104 = !{!101, !99}
!105 = distinct !{!105, i1 true, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer21prune_sentence_piecess_0Bc_"}
!106 = distinct !{!106, !105, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer21prune_sentence_piecess_0Bc_: argument 0"}
!107 = distinct !{!107, i1 true, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers"}
!108 = distinct !{!108, !107, !"_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers: argument 0"}
!109 = !{i64 8514631443126122328}
!110 = !{!106}
!111 = !{!108}
!112 = !{!108, !106}
!113 = distinct !{!113, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer8do_trains_0ENtNtNtBa_6traits8iterator8Iterator7collectB1T_EB2O_"}
!114 = distinct !{!114, !113, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer8do_trains_0ENtNtNtBa_6traits8iterator8Iterator7collectB1T_EB2O_: argument 1"}
!115 = distinct !{!115, !113, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer8do_trains_0ENtNtNtBa_6traits8iterator8Iterator7collectB1T_EB2O_: argument 0"}
!116 = distinct !{!116, i1 true, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTTTmmElEjEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtBX_8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEBv_NCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3I_10BpeTrainer8do_trains_0EEB3O_"}
!117 = distinct !{!117, !116, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTTTmmElEjEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtBX_8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEBv_NCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3I_10BpeTrainer8do_trains_0EEB3O_: argument 1"}
!118 = distinct !{!118, !116, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTTTmmElEjEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtNtBX_8adapters7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterjEBv_NCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3I_10BpeTrainer8do_trains_0EEB3O_: argument 0"}
!119 = !{i64 4100455856087535986}
!120 = !{!118, !117, !115, !114}
!121 = !{!117, !114}
!122 = !{i64 5449659181252164488}
!123 = !{i64 -6686605071041033648}
!124 = distinct !{!124, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapTdINtNtBT_3vec3VecdEIB2g_IB2g_jEEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2S_14UnigramTrainer21prune_sentence_pieces0EB2Y_"}
!125 = distinct !{!125, !124, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapTdINtNtBT_3vec3VecdEIB2g_IB2g_jEEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2S_14UnigramTrainer21prune_sentence_pieces0EB2Y_: argument 2"}
!126 = distinct !{!126, !124, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapTdINtNtBT_3vec3VecdEIB2g_IB2g_jEEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2S_14UnigramTrainer21prune_sentence_pieces0EB2Y_: argument 0"}
!127 = distinct !{!127, i1 true, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtBa_4iter16ParallelIterator3mapNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2c_14UnigramTrainer21prune_sentence_pieces0TdINtNtBW_3vec3VecdEIB3S_IB3S_jEEEEB2i_"}
!128 = distinct !{!128, !127, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtBa_4iter16ParallelIterator3mapNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2c_14UnigramTrainer21prune_sentence_pieces0TdINtNtBW_3vec3VecdEIB3S_IB3S_jEEEEB2i_: argument 2"}
!129 = distinct !{!129, !127, !"_RINvYINtNtNtCsgbNVBrIJ05E_5rayon5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtBa_4iter16ParallelIterator3mapNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2c_14UnigramTrainer21prune_sentence_pieces0TdINtNtBW_3vec3VecdEIB3S_IB3S_jEEEEB2i_: argument 0"}
!130 = !{i64 -8040469124676786915}
!131 = !{!126, !125}
!132 = !{!129, !128}
!133 = distinct !{!133, i1 true, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers"}
!134 = distinct !{!134, !133, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers: argument 0"}
!135 = distinct !{!135, i1 true, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE9try_writeCs2JiOgHzbbc7_10tokenizers"}
!136 = distinct !{!136, !135, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE9try_writeCs2JiOgHzbbc7_10tokenizers: argument 0"}
!137 = distinct !{!137, i1 true, !"_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBW_3vec3VecBS_EEENtNtNtB9_6traits8iterator8Iterator4takeCs2JiOgHzbbc7_10tokenizers"}
!138 = distinct !{!138, !137, !"_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBW_3vec3VecBS_EEENtNtNtB9_6traits8iterator8Iterator4takeCs2JiOgHzbbc7_10tokenizers: argument 0"}
!139 = distinct !{!139, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers"}
!140 = distinct !{!140, !139, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2J_3vec3VecB2F_EEEINtB12_12TryLockErrorBX_EEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!141 = !{i64 5950829618358808825}
!142 = !{!134}
!143 = !{!136}
!144 = !{!138}
!145 = !{!140}
!146 = distinct !{!146, i1 true, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers"}
!147 = distinct !{!147, !146, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1K_3vec3VecB1G_EEE8try_readCs2JiOgHzbbc7_10tokenizers: argument 0"}
!148 = distinct !{!148, i1 true, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBS_3vec3VecBO_ENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers"}
!149 = distinct !{!149, !148, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBS_3vec3VecBO_ENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers: argument 0"}
!150 = distinct !{!150, i1 true, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBU_3vec3VecBQ_EEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1r_E0ECs2JiOgHzbbc7_10tokenizers"}
!151 = distinct !{!151, !150, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBU_3vec3VecBQ_EEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1r_E0ECs2JiOgHzbbc7_10tokenizers: argument 0"}
!152 = distinct !{!152, i1 true, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!153 = distinct !{!153, !152, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!154 = distinct !{!154, !152, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!155 = distinct !{!155, i1 true, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
end_hunk_4
