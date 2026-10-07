Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.15?download=true
inline.NumInlined: 1271
inline.NumDeleted: 426
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaces_1__NtBb_13PrependSchemeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1w_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_:bb.a
  %.not9 = icmp eq ptr %i.g, null
  br i1 %.not9, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.sink13 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.f, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink13, ptr %i.j, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.k, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.l, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.f, %bb.h, %bb.i, %bb.g
  %.sink15 = phi i8 [ 1, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 1, %bb.b ]
  store i8 %.sink15, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaces_1__NtBb_13PrependSchemeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1w_7Visitor10visit_enumNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerEBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  call void @_RINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaces_1__NtB2S_13PrependSchemeNtB18_11Deserialize11deserialize7___FieldEEB2W_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !21, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  switch i8 %i.b, label %default.unreachable [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !6, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.j

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = call noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not9 = icmp eq ptr %i.g, null
  br i1 %.not9, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.h = call noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.sink13 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.f, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink13, ptr %i.j, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.k, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.l, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.f, %bb.h, %bb.i, %bb.g
  %.sink15 = phi i8 [ 1, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 1, %bb.b ]
  store i8 %.sink15, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBb_4TypeB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBk_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB3O_9MetaspaceNtB1Z_11Deserialize11deserialize1__NtB3J_4TypeB4Y_11deserialize7___FieldEEB3S_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) ; 2 uses
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
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBb_4TypeB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor10visit_enumNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerEBk_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB2X_9MetaspaceNtB18_11Deserialize11deserialize1__NtB2S_4TypeB47_11deserialize7___FieldEEB31_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0)
  %i.b = load i8, ptr %i.a, align 8, !range !18, !noundef !4
  %i.c = icmp eq i8 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !6, !noundef !4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtNtCsgbNVBrIJ05E_5rayon11collections8hash_setINtB6_4IterjENtNtBa_4iter16ParallelIterator15drive_unindexedINtNtB15_8flat_map15FlatMapConsumerINtNtNtB15_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3p_10BpeTrainer8do_trains_0EEB3v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_3vec8IntoIterRjEINtNtB4_8flat_map15FlatMapConsumerINtNtNtB4_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer8do_trains_0EEB2O_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtNtCsgbNVBrIJ05E_5rayon11collections8hash_setINtB6_4IterjENtNtBa_4iter16ParallelIterator15drive_unindexedINtNtB15_8flat_map15FlatMapConsumerNtNtB15_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB31_10BpeTrainer8do_trains_0EEB37_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_3vec8IntoIterRjEINtNtB4_8flat_map15FlatMapConsumerNtNtB4_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2k_10BpeTrainer8do_trains_0EEB2q_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca i32, align 4                ; 14 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB3h_9MetaspaceNtB22_11Deserialize11deserializes_1__NtB3c_15MetaspaceHelperB4r_11deserialize9___VisitorEB3l_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @44, i64 noundef 6)
  %i.c = load i64, ptr %i.a, align 8, !range !25, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, -2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.i = load i8, ptr %i.h, align 4, !range !22, !noundef !4
  %or.cond.not = icmp eq i8 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.k = load i8, ptr %i.j, align 1, !range !22   ; 2 uses
  br i1 %or.cond.not, label %3, label %._crit_edge

._crit_edge:                                      ; preds = %3, %bb.c
  %2 = phi i8 [ %i.k, %bb.c ], [ 1, %3 ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load i32, ptr %i.l, align 8, !range !12, !noundef !4 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.o = load i8, ptr %i.n, align 2, !range !22, !noundef !4
  %.sroa.08.0 = icmp ne i8 %i.o, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i32 0, ptr %.sroa.0.i, align 4, !noalias !1674
  %i.p = icmp samesign ult i32 %i.m, 128
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.q = icmp samesign ult i32 %i.m, 2048
  %i.r = trunc i32 %i.m to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 3 uses
  %i.u = lshr i32 %i.m, 6
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128                ; 2 uses
  %i.y = lshr i32 %i.m, 12
  %i.z = trunc i32 %i.y to i8                     ; 2 uses
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %i.ac = lshr i32 %i.m, 18
  %i.ad = trunc nuw nsw i32 %i.ac to i8
  %i.ae = or disjoint i8 %i.ad, -16
  br i1 %i.q, label %bb.f, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.af = trunc nuw nsw i32 %i.m to i8
  store i8 %i.af, ptr %.sroa.0.i, align 4, !alias.scope !1675, !noalias !1674
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ag = or disjoint i8 %i.v, -64
  store i8 %i.ag, ptr %.sroa.0.i, align 4, !alias.scope !1675, !noalias !1674
  %.sroa.0.i.1.i.1.i.1..sroa_idx37 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.t, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx37, align 1, !alias.scope !1675, !noalias !1674
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.ah = icmp samesign ult i32 %i.m, 65536
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = or disjoint i8 %i.z, -32
  store i8 %i.ai, ptr %.sroa.0.i, align 4, !alias.scope !1675, !noalias !1674
  %.sroa.0.i.1.i.1.i.1..sroa_idx36 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.x, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx36, align 1, !alias.scope !1675, !noalias !1674
  %.sroa.0.i.2.i.2.i.2..sroa_idx38 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  store i8 %i.t, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx38, align 2, !alias.scope !1675, !noalias !1674
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i8 %i.ae, ptr %.sroa.0.i, align 4, !alias.scope !1675, !noalias !1674
  %.sroa.0.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.ab, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !1675, !noalias !1674
  %.sroa.0.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  store i8 %i.x, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !1675, !noalias !1674
  %.sroa.0.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 3
  store i8 %i.t, ptr %.sroa.0.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !1675, !noalias !1674
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.05.i.i = phi i64 [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.h ], [ 4, %bb.i ] ; 5 uses
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !1676
  %i.aj = call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %.sroa.0.05.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1676 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.0.05.i.i) #36
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

3:                                                ; preds = %bb.c
  %.not = icmp eq i8 %i.k, 1
  br i1 %.not, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %3
  %i.al = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 55)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.b) #33
          to label %common.resume unwind label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.an, align 8
  store i64 -1, ptr %0, align 8
  %i.ao = load i64, ptr %i.b, align 8, !range !11, !alias.scope !1677, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !1678 ; 2 uses
  %i.ar = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.ar, label %common.resume, label %common.resume.sink.split

bb.q:                                             ; preds = %bb.o
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !1678 ; 2 uses
  %i.as = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1679, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1680
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit

common.resume.sink.split:                         ; preds = %bb.p, %bb.u
  %.val2.i.i.i.i19.sink = phi i64 [ %.val2.i.i.i.i19, %bb.u ], [ %.val2.i.i.i.i, %bb.p ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.aw, %bb.u ], [ %i.aq, %bb.p ]
  %.val3.i.i.i.i20 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i20, i64 noundef %.val2.i.i.i.i19.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !4
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.m, %bb.u, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.u ], [ %i.aq, %bb.p ], [ %i.am, %bb.m ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.i, i64 %.sroa.0.05.i.i, i1 false), !noalias !1674
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.at = zext i1 %.sroa.08.0 to i8
  store i64 %.sroa.0.05.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx25, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.05.i.i, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.at, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %2, ptr %.sroa.827.0..sroa_idx, align 1
  %i.au = load i64, ptr %i.b, align 8, !range !11, !alias.scope !1681, !noundef !4
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i19 = load i64, ptr %i.b, align 8, !alias.scope !1682 ; 2 uses
  %i.ax = icmp eq i64 %.val2.i.i.i.i19, 0
  br i1 %i.ax, label %common.resume, label %common.resume.sink.split

bb.v:                                             ; preds = %bb.t
  %.val.i.i.i.i22 = load i64, ptr %i.b, align 8, !alias.scope !1682 ; 2 uses
  %i.ay = icmp eq i64 %.val.i.i.i.i22, 0
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i.i.i.i23 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1683, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i23, i64 noundef %.val.i.i.i.i22, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1684
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit: ; preds = %bb.w, %bb.v, %bb.s, %bb.b, %bb.n, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.x:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca i32, align 4                ; 14 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB2b_9MetaspaceNtBW_11Deserialize11deserializes_1__NtB26_15MetaspaceHelperB3l_11deserialize9___VisitorEB2f_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @44, i64 noundef 6)
  %i.c = load i64, ptr %i.a, align 8, !range !25, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, -2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.i = load i8, ptr %i.h, align 4, !range !22, !noundef !4
  %or.cond.not = icmp eq i8 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.k = load i8, ptr %i.j, align 1, !range !22   ; 2 uses
  br i1 %or.cond.not, label %3, label %._crit_edge

._crit_edge:                                      ; preds = %3, %bb.c
  %2 = phi i8 [ %i.k, %bb.c ], [ 1, %3 ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load i32, ptr %i.l, align 8, !range !12, !noundef !4 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.o = load i8, ptr %i.n, align 2, !range !22, !noundef !4
  %.sroa.08.0 = icmp ne i8 %i.o, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i32 0, ptr %.sroa.0.i, align 4, !noalias !1715
  %i.p = icmp samesign ult i32 %i.m, 128
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.q = icmp samesign ult i32 %i.m, 2048
  %i.r = trunc i32 %i.m to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 3 uses
  %i.u = lshr i32 %i.m, 6
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128                ; 2 uses
  %i.y = lshr i32 %i.m, 12
  %i.z = trunc i32 %i.y to i8                     ; 2 uses
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %i.ac = lshr i32 %i.m, 18
  %i.ad = trunc nuw nsw i32 %i.ac to i8
  %i.ae = or disjoint i8 %i.ad, -16
  br i1 %i.q, label %bb.f, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.af = trunc nuw nsw i32 %i.m to i8
  store i8 %i.af, ptr %.sroa.0.i, align 4, !alias.scope !1716, !noalias !1715
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ag = or disjoint i8 %i.v, -64
  store i8 %i.ag, ptr %.sroa.0.i, align 4, !alias.scope !1716, !noalias !1715
  %.sroa.0.i.1.i.1.i.1..sroa_idx37 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.t, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx37, align 1, !alias.scope !1716, !noalias !1715
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.ah = icmp samesign ult i32 %i.m, 65536
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = or disjoint i8 %i.z, -32
  store i8 %i.ai, ptr %.sroa.0.i, align 4, !alias.scope !1716, !noalias !1715
  %.sroa.0.i.1.i.1.i.1..sroa_idx36 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.x, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx36, align 1, !alias.scope !1716, !noalias !1715
  %.sroa.0.i.2.i.2.i.2..sroa_idx38 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  store i8 %i.t, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx38, align 2, !alias.scope !1716, !noalias !1715
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i8 %i.ae, ptr %.sroa.0.i, align 4, !alias.scope !1716, !noalias !1715
  %.sroa.0.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.ab, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !1716, !noalias !1715
  %.sroa.0.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  store i8 %i.x, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !1716, !noalias !1715
  %.sroa.0.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 3
  store i8 %i.t, ptr %.sroa.0.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !1716, !noalias !1715
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.05.i.i = phi i64 [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.h ], [ 4, %bb.i ] ; 5 uses
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !1717
  %i.aj = call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %.sroa.0.05.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1717 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.0.05.i.i) #36
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

3:                                                ; preds = %bb.c
  %.not = icmp eq i8 %i.k, 1
  br i1 %.not, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %3
  %i.al = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 55)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.b) #33
          to label %common.resume unwind label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.an, align 8
  store i64 -1, ptr %0, align 8
  %i.ao = load i64, ptr %i.b, align 8, !range !11, !alias.scope !1718, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !1719 ; 2 uses
  %i.ar = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.ar, label %common.resume, label %common.resume.sink.split

bb.q:                                             ; preds = %bb.o
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !1719 ; 2 uses
  %i.as = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1720, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1721
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit

common.resume.sink.split:                         ; preds = %bb.p, %bb.u
  %.val2.i.i.i.i19.sink = phi i64 [ %.val2.i.i.i.i19, %bb.u ], [ %.val2.i.i.i.i, %bb.p ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.aw, %bb.u ], [ %i.aq, %bb.p ]
  %.val3.i.i.i.i20 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i20, i64 noundef %.val2.i.i.i.i19.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !4
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.m, %bb.u, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.u ], [ %i.aq, %bb.p ], [ %i.am, %bb.m ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.i, i64 %.sroa.0.05.i.i, i1 false), !noalias !1715
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.at = zext i1 %.sroa.08.0 to i8
  store i64 %.sroa.0.05.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx25, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.05.i.i, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.at, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %2, ptr %.sroa.827.0..sroa_idx, align 1
  %i.au = load i64, ptr %i.b, align 8, !range !11, !alias.scope !1722, !noundef !4
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i19 = load i64, ptr %i.b, align 8, !alias.scope !1723 ; 2 uses
  %i.ax = icmp eq i64 %.val2.i.i.i.i19, 0
  br i1 %i.ax, label %common.resume, label %common.resume.sink.split

bb.v:                                             ; preds = %bb.t
  %.val.i.i.i.i22 = load i64, ptr %i.b, align 8, !alias.scope !1723 ; 2 uses
  %i.ay = icmp eq i64 %.val.i.i.i.i22, 0
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i.i.i.i23 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1724, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i23, i64 noundef %.val.i.i.i.i22, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1725
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_.exit: ; preds = %bb.w, %bb.v, %bb.s, %bb.b, %bb.n, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.x:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldcTcuEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3g_7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB24_7collect6ExtendcE6extendBP_E0NCINvNvB20_8for_each4callB32_NCINvXs1i_NtB3i_3mapINtB65_7HashMapcuB40_EIB4R_B32_E6extendINtB2J_3MapBP_B37_EE0E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !1729
  call void @_RINvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB6_4IterhcENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvXsM_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB1Y_6ValueshcEBO_4folduNCINvNtNtBU_8adapters6copied9copy_foldcuNCINvNtB3f_3map8map_foldcTcuEuNCINvXs8_NtB8_3setINtB4p_7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtBS_7collect6ExtendcE6extendINtB3d_6CopiedB2I_EE0NCINvNvBO_8for_each4callB4b_NCINvXs1i_B6_INtB6_7HashMapcuB4O_EIB5F_B4b_E6extendINtB3R_3MapB6a_B4g_EE0E0E0E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3I_14UnigramTrainer14required_charss_0NCIB2E_B2Z_TB2Z_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB5I_7HashSetB2Z_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB21_7collect6ExtendB2Z_E6extendINtB2G_3MapINtNtB7_5chain5ChainINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB2Z_mEENtNtNtBb_3str4iter5CharsNCB3D_0EBP_EB3B_EE0NCINvNvB1X_8for_each4callB5r_NCINvXs1i_NtB5K_3mapINtBaG_7HashMapB2Z_uB6v_EIB7m_B5r_E6extendIB7W_B7V_B5z_EE0E0E0E0EB3O_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXsU_NtCsgQfI1edjipl_9hashbrown3mapINtB6_4KeyscuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters6copied9copy_foldcuNCINvNtB1W_3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3B_14UnigramTrainer14required_charss_0NCIB2w_B2S_TB2S_uEuNCINvXs8_NtB8_3setINtB5B_7HashSetB2S_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtBS_7collect6ExtendB2S_E6extendINtB2y_3MapINtNtB1W_5chain5ChainINtNtB1W_7flatten7FlatMapINtNtNtBW_5slice4iter4IterTB2S_mEENtNtNtBW_3str4iter5CharsNCB3w_0EINtB1U_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB3u_EE0NCINvNvBO_8for_each4callB5k_NCINvXs1i_B6_INtB6_7HashMapB2S_uB63_EIB6U_B5k_E6extendIB7t_B7s_B5s_EE0E0E0E0E0EB3H_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtBa_14PunctuationDef11deserialize14___FieldVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor14visit_byte_bufNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  %i.e = icmp eq i64 %i.d, 8
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !alias.scope !1742, !noalias !1741, !noundef !4
  %i.g = icmp eq i8 %i.f, 98
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !1742, !noalias !1741, !noundef !4
  %i.j = icmp eq i8 %i.i, 101
  br i1 %i.j, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !1742, !noalias !1741, !noundef !4
  %i.m = icmp eq i8 %i.l, 104
  br i1 %i.m, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !1742, !noalias !1741, !noundef !4
  %i.p = icmp eq i8 %i.o, 97
  br i1 %i.p, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !1742, !noalias !1741, !noundef !4
  %i.s = icmp eq i8 %i.r, 118
  br i1 %i.s, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1742, !noalias !1741, !noundef !4
  %i.v = icmp eq i8 %i.u, 105
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !1742, !noalias !1741, !noundef !4
  %i.y = icmp eq i8 %i.x, 111
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !1742, !noalias !1741, !noundef !4
  %i.ab = icmp ne i8 %i.aa, 114
  %spec.select.i = zext i1 %i.ab to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink.i = phi i8 [ 1, %bb.a ], [ %spec.select.i, %bb.i ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink.i, ptr %i.ac, align 1, !alias.scope !1741, !noalias !1742
  store i8 0, ptr %0, align 8, !alias.scope !1741, !noalias !1742
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %1, align 8, !alias.scope !1743 ; 2 uses
  %i.ae = icmp eq i64 %.val2.i, 0
  br i1 %i.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val3.i = load ptr, ptr %i.a, align 8, !alias.scope !1744, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1745
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i

bb.m:                                             ; preds = %bb.j
  %.val.i = load i64, ptr %1, align 8, !alias.scope !1743 ; 2 uses
  %i.af = icmp eq i64 %.val.i, 0
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1.i = load ptr, ptr %i.a, align 8, !alias.scope !1744, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1746
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.ad

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.m, %bb.n
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtBa_14PunctuationDef11deserialize14___FieldVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i8 %1, 0
  %spec.select.i = zext i1 %i.a to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select.i, ptr %i.b, align 1, !alias.scope !1749
  store i8 0, ptr %0, align 8, !alias.scope !1749
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations1_1__NtBa_15PunctuationTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1B_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(i8 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i8 %0, 0
  br i1 %i.b, label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations1_1__NtB8_15PunctuationTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1z_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i8 1, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations1_1__NtB8_15PunctuationTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1z_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit

_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations1_1__NtB8_15PunctuationTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1z_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaces_1__NtBa_13PrependSchemeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1v_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i8 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ], !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1752
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !noalias !1752
end_hunk_0
