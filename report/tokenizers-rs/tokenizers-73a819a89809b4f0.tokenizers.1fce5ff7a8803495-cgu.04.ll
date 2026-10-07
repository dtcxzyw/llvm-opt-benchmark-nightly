Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.04?download=true
inline.NumInlined: 1221
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers6digitss1_1__NtBb_10DigitsTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor10visit_enumNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerEBf_:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBe_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtBb_8EnumTypeB1h_11deserializeNtB6_9___VisitorNtB1j_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBg_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtB3M_17NormalizerWrapperNtB1Z_11Deserialize11deserializes0_1__NtB3J_8EnumTypeB4Q_11deserialize7___FieldEEB3O_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2)
  %i.b = load i8, ptr %i.a, align 8, !range !942, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !align !5, !noundef !3 ; 15 uses
  switch i8 %i.b, label %default.unreachable [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
    i8 12, label %bb.o
    i8 13, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.af

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not54 = icmp eq ptr %i.f, null
  br i1 %.not54, label %bb.q, label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not53 = icmp eq ptr %i.g, null
  br i1 %.not53, label %bb.s, label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not52 = icmp eq ptr %i.h, null
  br i1 %.not52, label %bb.t, label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not51 = icmp eq ptr %i.i, null
  br i1 %.not51, label %bb.u, label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not50 = icmp eq ptr %i.j, null
  br i1 %.not50, label %bb.v, label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.k = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not49 = icmp eq ptr %i.k, null
  br i1 %.not49, label %bb.w, label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.l = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not48 = icmp eq ptr %i.l, null
  br i1 %.not48, label %bb.x, label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.m = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not47 = icmp eq ptr %i.m, null
  br i1 %.not47, label %bb.y, label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.n = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not46 = icmp eq ptr %i.n, null
  br i1 %.not46, label %bb.z, label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.o = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not45 = icmp eq ptr %i.o, null
  br i1 %.not45, label %bb.aa, label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.p = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not44 = icmp eq ptr %i.p, null
  br i1 %.not44, label %bb.ab, label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.q = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not43 = icmp eq ptr %i.q, null
  br i1 %.not43, label %bb.ac, label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.r = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not42 = icmp eq ptr %i.r, null
  br i1 %.not42, label %bb.ad, label %bb.r

bb.p:                                             ; preds = %bb.a
  %i.s = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.ae, label %bb.r

bb.q:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1
  br label %bb.af

bb.r:                                             ; preds = %bb.c, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink68 = phi ptr [ %i.r, %bb.o ], [ %i.q, %bb.n ], [ %i.p, %bb.m ], [ %i.o, %bb.l ], [ %i.n, %bb.k ], [ %i.m, %bb.j ], [ %i.l, %bb.i ], [ %i.k, %bb.h ], [ %i.j, %bb.g ], [ %i.i, %bb.f ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.s, %bb.p ], [ %i.f, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink68, ptr %i.u, align 8
  br label %bb.af

bb.s:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.v, align 1
  br label %bb.af

bb.t:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.w, align 1
  br label %bb.af

bb.u:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.x, align 1
  br label %bb.af

bb.v:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.y, align 1
  br label %bb.af

bb.w:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.z, align 1
  br label %bb.af

bb.x:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 6, ptr %i.aa, align 1
  br label %bb.af

bb.y:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 7, ptr %i.ab, align 1
  br label %bb.af

bb.z:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 8, ptr %i.ac, align 1
  br label %bb.af

bb.aa:                                            ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 9, ptr %i.ad, align 1
  br label %bb.af

bb.ab:                                            ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 10, ptr %i.ae, align 1
  br label %bb.af

bb.ac:                                            ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 11, ptr %i.af, align 1
  br label %bb.af

bb.ad:                                            ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 12, ptr %i.ag, align 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 13, ptr %i.ah, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.b, %bb.q, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.r
  %.sink70 = phi i8 [ 1, %bb.r ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.q ], [ 1, %bb.b ]
  store i8 %.sink70, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Z_8adapters3map8map_foldRBQ_jjNCNvXs2_NtBS_8sequenceNtB3r_8SequenceNtNtBU_9tokenizer13PostProcessor12added_tokens0NCINvXsK_NtB1X_5accumjNtB4O_3Sum3sumINtB2J_3MapBF_B3j_EE0E0EBU_(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 7                   ; 2 uses
  %i.f = trunc nuw i8 %.0.val to i1               ; 3 uses
  %.1.i.i = select i1 %i.f, i64 3, i64 2          ; 2 uses
  %..i.i = select i1 %i.f, i64 4, i64 2           ; 2 uses
  br i1 %i.f, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit.us
  %.sroa.04.0.us = phi i64 [ %i.v, %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit.us ], [ 0, %bb.b ] ; 2 uses
  %.sroa.02.0.us = phi i64 [ %i.u, %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit.us ], [ 0, %bb.b ]
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.04.0.us ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !18, !alias.scope !950, !noalias !951, !noundef !3 ; 3 uses
  %i.i = icmp ne i64 %i.h, -9223372036854775805
  tail call void @llvm.assume(i1 %i.i)
  %i.j = xor i64 %i.h, -9223372036854775808
  %i.k = icmp slt i64 %i.h, 0
  %i.l = select i1 %i.k, i64 %i.j, i64 3
  switch i64 %i.l, label %.split14.us [
    i64 0, label %bb.f
    i64 1, label %bb.e
    i64 2, label %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit.us
    i64 3, label %bb.d
    i64 4, label %bb.c
  ]

bb.c:                                             ; preds = %.split.us
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !952, !noalias !951, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !952, !noalias !951, !noundef !3
  %i.q = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %i.p
  %i.r = tail call fastcc noundef i64 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Z_8adapters3map8map_foldRBQ_jjNCNvXs2_NtBS_8sequenceNtB3r_8SequenceNtNtBU_9tokenizer13PostProcessor12added_tokens0NCINvXsK_NtB1X_5accumjNtB4O_3Sum3sumINtB2J_3MapBF_B3j_EE0E0EBU_(ptr noundef nonnull %i.n, ptr noundef %i.q, i8 1)
  br label %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit.us

bb.d:                                             ; preds = %.split.us
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !950, !noalias !951, !noundef !3
  br label %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit.us

bb.e:                                             ; preds = %.split.us
  br label %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit.us

bb.f:                                             ; preds = %.split.us
  br label %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit.us

_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit.us: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %.split.us
  %.sroa.0.0.i.i.us = phi i64 [ %..i.i, %bb.f ], [ 0, %.split.us ], [ %i.t, %bb.d ], [ %i.r, %bb.c ], [ %.1.i.i, %bb.e ]
  %i.u = add i64 %.sroa.0.0.i.i.us, %.sroa.02.0.us ; 2 uses
  %i.v = add nuw i64 %.sroa.04.0.us, 1            ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.e
  br i1 %i.w, label %.loopexit, label %.split.us

.split:                                           ; preds = %bb.b, %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit
  %.sroa.04.0 = phi i64 [ %i.am, %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit ], [ 0, %bb.b ] ; 2 uses
  %.sroa.02.0 = phi i64 [ %i.al, %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit ], [ 0, %bb.b ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.04.0 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !range !18, !alias.scope !950, !noalias !951, !noundef !3 ; 3 uses
  %i.z = icmp ne i64 %i.y, -9223372036854775805
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = xor i64 %i.y, -9223372036854775808
  %i.ab = icmp slt i64 %i.y, 0
  %i.ac = select i1 %i.ab, i64 %i.aa, i64 3
  switch i64 %i.ac, label %.split14.us [
    i64 0, label %2
    i64 1, label %bb.g
    i64 2, label %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit
    i64 3, label %bb.h
    i64 4, label %bb.i
  ]

.split14.us:                                      ; preds = %.split, %.split.us
  unreachable

2:                                                ; preds = %.split
  br label %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit

bb.g:                                             ; preds = %.split
  br label %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit

bb.h:                                             ; preds = %.split
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !950, !noalias !951, !noundef !3
  br label %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit

bb.i:                                             ; preds = %.split
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !952, !noalias !951, !nonnull !3, !noundef !3 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !952, !noalias !951, !noundef !3
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = tail call fastcc noundef i64 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Z_8adapters3map8map_foldRBQ_jjNCNvXs2_NtBS_8sequenceNtB3r_8SequenceNtNtBU_9tokenizer13PostProcessor12added_tokens0NCINvXsK_NtB1X_5accumjNtB4O_3Sum3sumINtB2J_3MapBF_B3j_EE0E0EBU_(ptr noundef nonnull %i.ag, ptr noundef %i.aj, i8 0)
  br label %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit

_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit: ; preds = %.split, %2, %bb.g, %bb.i, %bb.h
  %.sroa.0.0.i.i = phi i64 [ %..i.i, %2 ], [ 0, %.split ], [ %i.ae, %bb.h ], [ %i.ak, %bb.i ], [ %.1.i.i, %bb.g ]
  %i.al = add i64 %.sroa.0.0.i.i, %.sroa.02.0     ; 2 uses
  %i.am = add nuw i64 %.sroa.04.0, 1              ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e
  br i1 %i.an, label %.loopexit, label %.split

.loopexit:                                        ; preds = %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit, %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit.us, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.u, %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit.us ], [ %i.al, %_RNCNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB7_8SequenceNtNtBb_9tokenizer13PostProcessor12added_tokens0Bb_.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtCsgbNVBrIJ05E_5rayon3vecINtB6_8IntoIterTTTmmElEjEENtNtB8_4iter16ParallelIterator15drive_unindexedINtNtNtBY_7collect8consumer15CollectConsumerBL_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_3vec8IntoIterTTTmmElEjEEINtNtNtB4_7collect8consumer15CollectConsumerB16_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtCsgbNVBrIJ05E_5rayon3vecINtB6_8IntoIterTTTmmElEjEENtNtB8_4iter16ParallelIterator15drive_unindexedNtNtBY_6extend15ListVecConsumerECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_3vec8IntoIterTTTmmElEjEENtNtB4_6extend15ListVecConsumerECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 20 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !996, !noalias !997, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !998, !noalias !999 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !996, !noalias !997, !nonnull !3, !noundef !3
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.p = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !1002, !noundef !3 ; 3 uses
  switch i8 %i.r, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.s = add i64 %i.p, 1                          ; 3 uses
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !1003, !noalias !999
  %exitcond.not.i.i.i.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1004
  %i.t = icmp eq i8 %i.r, 45
  br i1 %i.t, label %bb.d, label %bb.e

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1004
  store i64 5, ptr %i.i, align 8, !noalias !1004
  %i.u = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1004
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !1005, !noalias !1006
  store i32 1, ptr %0, align 8, !alias.scope !1005, !noalias !1006
  br label %_RINvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtB9_11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.w = add i64 %i.p, 1
  store i64 %i.w, ptr %i.j, align 8, !alias.scope !1007, !noalias !1005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1004
  call fastcc void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !1005
  %i.x = load i64, ptr %i.g, align 8, !range !13, !noalias !1004, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.aa = add i8 %i.r, -48
  %or.cond.i.i.i = icmp ult i8 %i.aa, 10
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.q, !prof !28

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !1004, !nonnull !3, !align !5, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !1005, !noalias !1006
  store i32 1, ptr %0, align 8, !alias.scope !1005, !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1004
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.z, align 8, !noalias !1004 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  switch i64 %i.x, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.u, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ad = bitcast i64 %.sroa.2.0.copyload.i.i.i to double
  call void @_RINvYNtNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, double noundef %i.ad), !noalias !1009
  br label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.ae = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, 4294967295
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.af = trunc nuw i64 %.sroa.2.0.copyload.i.i.i to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.af, ptr %i.ag, align 4, !alias.scope !1011, !noalias !1012
  br label %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1013
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.ah, align 8, !noalias !1013
  store i8 1, ptr %i.e, align 8, !noalias !1013
  %i.ai = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1013
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !1011, !noalias !1012
  br label %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %storemerge.i.i.i.i.i = phi i32 [ 0, %bb.j ], [ 1, %bb.k ]
  store i32 %storemerge.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !1011, !noalias !1012
  br label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.ak = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, 4294967295
  br i1 %i.ak, label %bb.m, label %bb.n, !prof !33

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1016
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.al, align 8, !noalias !1016
  store i8 2, ptr %i.d, align 8, !noalias !1016
  %i.am = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1016
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.am, ptr %i.an, align 8, !alias.scope !1018, !noalias !1012
  br label %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = trunc nuw i64 %.sroa.2.0.copyload.i.i.i to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !alias.scope !1018, !noalias !1012
  br label %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %storemerge.i1.i.i.i.i = phi i32 [ 0, %bb.n ], [ 1, %bb.m ]
  store i32 %storemerge.i1.i.i.i.i, ptr %i.h, align 8, !alias.scope !1018, !noalias !1012
  br label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1004
  br label %bb.o

bb.o:                                             ; preds = %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit9.i.i.i, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.aq = load i32, ptr %i.h, align 8, !range !34, !noalias !1004, !noundef !3
  %i.ar = trunc nuw i32 %i.aq to i1
  br i1 %i.ar, label %._crit_edge.i.i.i, label %bb.ac, !prof !23

._crit_edge.i.i.i:                                ; preds = %bb.o
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !1004
  br label %bb.s

bb.p:                                             ; preds = %bb.t, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1004
  br label %_RINvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtB9_11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECs2JiOgHzbbc7_10tokenizers.exit
end_hunk_0
