Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_quant_qwen3.candle_wasm_example_quant_qwen3.5f44c3947a9f471e-cgu.04?download=true
inline.NumInlined: 364
inline.NumDeleted: 217
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvYNtNvXNvNvXNtCshBhMCGs0DAb_10tokenizers11normalizersNtBd_17NormalizerWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializes0_1__NtBa_8EnumTypeB1g_11deserialize14___FieldVisitorNtB1i_7Visitor8visit_u8NtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3:bb.a
  store i8 9, ptr %i.o, align 1, !alias.scope !426
  br label %_RINvXNvXNvNvXNtCshBhMCGs0DAb_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.m:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 10, ptr %i.p, align 1, !alias.scope !426
  br label %_RINvXNvXNvNvXNtCshBhMCGs0DAb_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.n:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 11, ptr %i.q, align 1, !alias.scope !426
  br label %_RINvXNvXNvNvXNtCshBhMCGs0DAb_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.o:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 12, ptr %i.r, align 1, !alias.scope !426
  br label %_RINvXNvXNvNvXNtCshBhMCGs0DAb_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.p:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 13, ptr %i.s, align 1, !alias.scope !426
  br label %_RINvXNvXNvNvXNtCshBhMCGs0DAb_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

_RINvXNvXNvNvXNtCshBhMCGs0DAb_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sink.i = phi i8 [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !426
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCsaPlfBUY5LAj_10serde_json3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIBR_NtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryEEB2v_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9 = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %.val9, 72
  %i.c = getelementptr inbounds nuw i8, ptr %.val8, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !441, !nonnull !5, !align !16, !noundef !5 ; 2 uses
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !442
  %.not = icmp eq i64 %.val9, 0
  br i1 %.not, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json3serINtB5_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeSeq3endCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.sink.split, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i.peel

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i.peel: ; preds = %bb.a
  %i.d = tail call noundef align 8 ptr @_RINvXNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler1__NtB5_12ProfileEntryNtNtCseZbltJ5Yqe_10serde_core3ser9Serialize9serializeQINtNtCsaPlfBUY5LAj_10serde_json3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val8, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !443 ; 2 uses
  %.not6.i.i.peel = icmp eq ptr %i.d, null
  br i1 %.not6.i.i.peel, label %.peel.next.preheader, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json3serINtB5_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeSeq3endCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

.peel.next.preheader:                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i.peel
  %i.e = icmp eq i64 %.val9, 1
  %.val33 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.e, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json3serINtB5_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeSeq3endCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.sink.split, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i.lr.ph

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i.lr.ph: ; preds = %.peel.next.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.val8, i64 72
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i

.peel.next:                                       ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.h, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json3serINtB5_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeSeq3endCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.sink.split, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i, !llvm.loop !436

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i.lr.ph, %.peel.next
  %.val34 = phi ptr [ %.val33, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i.lr.ph ], [ %.val, %.peel.next ]
  %i.i = phi ptr [ %i.f, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i.lr.ph ], [ %i.g, %.peel.next ] ; 2 uses
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val34, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !445
  %i.j = tail call noundef align 8 ptr @_RINvXNvNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler1__NtB5_12ProfileEntryNtNtCseZbltJ5Yqe_10serde_core3ser9Serialize9serializeQINtNtCsaPlfBUY5LAj_10serde_json3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !443 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.j, null
  br i1 %.not6.i.i, label %.peel.next, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json3serINtB5_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeSeq3endCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, !llvm.loop !436

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json3serINtB5_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeSeq3endCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.sink.split: ; preds = %.peel.next, %.peel.next.preheader, %bb.a
  %.val.i.sink = phi ptr [ %.val.i, %bb.a ], [ %.val33, %.peel.next.preheader ], [ %.val, %.peel.next ]
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.sink, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json3serINtB5_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeSeq3endCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json3serINtB5_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeSeq3endCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json3serINtB5_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeSeq3endCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.sink.split, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i.peel
  %.sroa.0.0 = phi ptr [ %i.d, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i.peel ], [ null, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json3serINtB5_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeSeq3endCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.sink.split ], [ %i.j, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen38profiler12ProfileEntryINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0B1p_.exit.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueE12insert_entryCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4.i = alloca [48 x i8], align 8 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.426.i = alloca [48 x i8], align 8        ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.718.i = alloca [48 x i8], align 8        ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7.i = alloca [48 x i8], align 8          ; 5 uses
  %.sroa.7244.i = alloca [48 x i8], align 8       ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noundef !5 ; 14 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3()
          to label %bb.c unwind label %bb.ci      ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 626 ; 3 uses
  store i16 0, ptr %i.w, align 2
  store ptr %i.u, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.y = load i16, ptr %i.w, align 2, !noalias !552, !noundef !5 ; 3 uses
  %i.z = icmp ult i16 %i.y, 11
  br i1 %i.z, label %bb.i, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #28
          to label %bb.f unwind label %bb.e, !noalias !552

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #26
          to label %bb.h unwind label %bb.g, !noalias !553

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !554
  unreachable

bb.h:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #26
          to label %.critedge9 unwind label %bb.g, !noalias !554

bb.i:                                             ; preds = %bb.c
  %i.ac = zext nneg i16 %i.y to i64               ; 3 uses
  %i.ad = add nuw nsw i16 %i.y, 1
  store i16 %i.ad, ptr %i.w, align 2, !noalias !552
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.j

bb.j:                                             ; preds = %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, %bb.i
  %i.ah = phi ptr [ %i.t, %bb.i ], [ %.pre, %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %i.ac, %bb.i ], [ %.sroa.12.1, %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit ]
  %.sroa.7.0 = phi i64 [ 0, %bb.i ], [ %.sroa.7.1, %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit ]
  %.sroa.0.0 = phi ptr [ %i.u, %bb.i ], [ %.sroa.0.1, %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.al, align 8
  ret void

bb.k:                                             ; preds = %bb.a
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.415.0.copyload = load i64, ptr %.sroa.415.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.426.i)
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 626 ; 4 uses
  %i.ao = load i16, ptr %i.an, align 2, !noalias !556, !noundef !5 ; 3 uses
  %i.ap = icmp ugt i16 %i.ao, 10
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp ult i64 %.sroa.6.0.copyload, 5
  br i1 %i.aq, label %bb.s, label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ar = zext nneg i16 %i.ao to i64              ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 360 ; 2 uses
  %i.at = add i64 %.sroa.6.0.copyload, 1          ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.at, %i.ar
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.6.0.copyload ; 3 uses
  br i1 %.not.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  br label %.thread.i

bb.o:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.at
  %i.aw = sub nsw i64 %i.ar, %.sroa.6.0.copyload  ; 2 uses
  %i.ax = mul nuw nsw i64 %i.aw, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.au, i64 %i.ax, i1 false), !alias.scope !558, !noalias !559
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.6.0.copyload
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.at
  %i.ba = shl nuw nsw i64 %i.aw, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.ay, i64 %i.ba, i1 false), !alias.scope !560, !noalias !559
  br label %.thread.i

bb.p:                                             ; preds = %bb.l
  switch i64 %.sroa.6.0.copyload, label %bb.q [
    i64 5, label %bb.s
    i64 6, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bb = add i64 %.sroa.6.0.copyload, -7
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.l
  %.sroa.09.0.i.i = phi i1 [ true, %bb.r ], [ true, %bb.q ], [ false, %bb.l ], [ false, %bb.p ] ; 2 uses
  %.sroa.510.0.i.i = phi i64 [ 0, %bb.r ], [ %i.bb, %bb.q ], [ %.sroa.6.0.copyload, %bb.l ], [ %.sroa.6.0.copyload, %bb.p ] ; 9 uses
  %.sroa.013.0.i.i = phi i64 [ 5, %bb.r ], [ 6, %bb.q ], [ 4, %bb.l ], [ %.sroa.6.0.copyload, %bb.p ] ; 5 uses
  %i.bc = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3()
          to label %.noexc.i.i unwind label %bb.y, !noalias !556 ; 8 uses

.noexc.i.i:                                       ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 352
  store ptr null, ptr %i.bd, align 8, !noalias !561
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 626 ; 2 uses
  store i16 0, ptr %i.be, align 2, !noalias !561
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.bf = load i16, ptr %i.an, align 2, !noalias !563, !noundef !5
  %i.bg = zext i16 %i.bf to i64
  %i.bh = xor i64 %.sroa.013.0.i.i, -1
  %i.bi = add nsw i64 %i.bg, %i.bh                ; 5 uses
  %i.bj = trunc i64 %i.bi to i16
  store i16 %i.bj, ptr %i.be, align 2, !alias.scope !562, !noalias !561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !563
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 360 ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.013.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !563
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.013.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !noalias !563
  %i.bn = icmp ult i64 %i.bi, 12
  br i1 %i.bn, label %bb.z, label %bb.t, !prof !564

bb.t:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bi, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #28
          to label %bb.v unwind label %bb.u, !noalias !563

bb.u:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #26
          to label %bb.x unwind label %bb.w, !noalias !563

bb.v:                                             ; preds = %bb.t
  unreachable

bb.w:                                             ; preds = %bb.x, %bb.u
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !563
  unreachable

bb.x:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #26
          to label %.thread.i.i.i unwind label %bb.w, !noalias !563

.thread.i.i.i:                                    ; preds = %bb.x
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef 632, i64 noundef 8) #29, !noalias !561
  br label %bb.ad

bb.y:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.z:                                             ; preds = %.noexc.i.i
  %i.br = add nuw nsw i64 %.sroa.013.0.i.i, 1     ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 360
  %i.bu = mul nuw nsw i64 %i.bi, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr nonnull readonly align 8 %i.bs, i64 %i.bu, i1 false), !alias.scope !565, !noalias !566
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.br
  %i.bw = shl nuw nsw i64 %i.bi, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.bc, ptr nonnull readonly align 8 %i.bv, i64 %i.bw, i1 false), !alias.scope !567, !noalias !566
  %i.bx = trunc nuw nsw i64 %.sroa.013.0.i.i to i16
  store i16 %i.bx, ptr %i.an, align 2, !noalias !563
  %.sroa.025.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !556 ; 3 uses
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.0..sroa_idx.i, i64 16, i1 false), !noalias !556
  %.sroa.426.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.426.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.426.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !563
  %spec.select.i.i = select i1 %.sroa.09.0.i.i, i64 0, i64 %.sroa.415.0.copyload ; 3 uses
  %spec.select31.i.i = select i1 %.sroa.09.0.i.i, ptr %i.bc, ptr %i.r ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %spec.select31.i.i, i64 626 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 2, !noalias !568, !noundef !5 ; 2 uses
  %i.ca = zext i16 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %spec.select31.i.i, i64 360 ; 2 uses
  %.not.i16.not.i.i = icmp ult i64 %.sroa.510.0.i.i, %i.ca
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.sroa.510.0.i.i ; 3 uses
  br i1 %.not.i16.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.cd = add nuw nsw i64 %.sroa.510.0.i.i, 1     ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.cd
  %i.cf = sub nuw nsw i64 %i.ca, %.sroa.510.0.i.i ; 2 uses
  %i.cg = mul nuw nsw i64 %i.cf, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr nonnull align 8 %i.cc, i64 %i.cg, i1 false), !alias.scope !570, !noalias !568
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i.i, i64 %.sroa.510.0.i.i
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i.i, i64 %i.cd
  %i.cj = shl nuw nsw i64 %i.cf, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr nonnull align 8 %i.ch, i64 %i.cj, i1 false), !alias.scope !571, !noalias !568
  br label %bb.af

bb.ac:                                            ; preds = %bb.ae, %bb.ad
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !572
  unreachable

.thread.i:                                        ; preds = %bb.o, %bb.n
  %3 = add nuw nsw i16 %i.ao, 1
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.6.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !573, !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %3, ptr %i.an, align 2, !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !555
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y, %.thread.i.i.i
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.bo, %.thread.i.i.i ], [ %i.bq, %bb.y ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #26
          to label %bb.ae unwind label %bb.ac, !noalias !574

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #26
          to label %.critedge9 unwind label %bb.ac, !noalias !572

bb.af:                                            ; preds = %bb.ab, %bb.aa
  %4 = add i16 %i.bz, 1
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i.i, i64 %.sroa.510.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !575, !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %4, ptr %i.by, align 2, !noalias !568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.426.i, i64 48, i1 false), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !555
  %.not.i = icmp eq i64 %.sroa.025.0.copyload.i, -1
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7244.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7244.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, i64 48, i1 false), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 352
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !577, !noundef !5 ; 2 uses
  %.not.i145.i = icmp eq ptr %i.co, null
  br i1 %.not.i145.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cq = icmp eq i64 %.sroa.415.0.copyload, 0
  %.sroa.7244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7244.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7244.i, i64 16 ; 5 uses
  br label %bb.ax

bb.ah:                                            ; preds = %bb.af, %.thread.i
  %.sink.i36.i = phi i64 [ %.sroa.6.0.copyload, %.thread.i ], [ %.sroa.510.0.i.i, %bb.af ]
  %.sink49.i35.i = phi i64 [ %.sroa.415.0.copyload, %.thread.i ], [ %spec.select.i.i, %bb.af ]
  %.sink50.i34.i = phi ptr [ %i.r, %.thread.i ], [ %spec.select31.i.i, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

._crit_edge.i:                                    ; preds = %bb.cf, %bb.ag
  %.sroa.0.0.i = phi i64 [ %.sroa.025.0.copyload.i, %bb.ag ], [ %.sroa.0.i.sroa.0.0.copyload.i, %bb.cf ]
  %.lcssa137.i = phi i64 [ 0, %bb.ag ], [ %i.du, %bb.cf ] ; 2 uses
  %.lcssa129.i = phi ptr [ %i.bc, %bb.ag ], [ %i.gi, %bb.cf ] ; 4 uses
  %.lcssa121.i = phi i64 [ %.sroa.415.0.copyload, %bb.ag ], [ %i.du, %bb.cf ]
  %.lcssa.i = phi ptr [ %i.r, %bb.ag ], [ %i.dp, %bb.cf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !555
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7244.i, i64 48, i1 false), !noalias !555
  store i64 %.sroa.0.0.i, ptr %i.j, align 8, !noalias !555
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %.lcssa.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !555
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 %.lcssa121.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !555
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %.lcssa129.i, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !555
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %.lcssa137.i, ptr %.sroa.76.0..sroa_idx.i, align 8, !noalias !555
  %.val.i = load ptr, ptr %i.am, align 8, !noalias !555, !nonnull !5, !noundef !5 ; 3 uses
  %i.cr = load ptr, ptr %.val.i, align 8, !noalias !578, !noundef !5 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.cr, null
  br i1 %.not.i23.i, label %bb.ai, label %bb.ak, !prof !10

bb.ai:                                            ; preds = %._crit_edge.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28
          to label %bb.aj unwind label %bb.au, !noalias !578

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !579, !noalias !578, !noundef !5 ; 2 uses
  %i.cu = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3()
          to label %.noexc.i.i.i unwind label %bb.ao, !noalias !580 ; 9 uses

.noexc.i.i.i:                                     ; preds = %bb.ak
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 352
  store ptr null, ptr %i.cv, align 8, !noalias !580
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 626 ; 3 uses
  store i16 0, ptr %i.cw, align 2, !noalias !580
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 632 ; 2 uses
  store ptr %i.cr, ptr %i.cx, align 8, !noalias !580
  %i.cy = add i64 %i.ct, 1                        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.al, label %bb.ap, !prof !10

bb.al:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28
          to label %bb.am unwind label %bb.an, !noalias !580

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cu, i64 noundef 728, i64 noundef 8) #29, !noalias !580
  br label %.body.i.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ao, %bb.an
  tail call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %.noexc.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 352
  store ptr %i.cu, ptr %i.db, align 8, !noalias !581
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 624
  store i16 0, ptr %i.dc, align 8, !noalias !582
  store ptr %i.cu, ptr %.val.i, align 8, !alias.scope !579, !noalias !578
  store i64 %i.cy, ptr %i.cs, align 8, !alias.scope !579, !noalias !578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false), !noalias !555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !578
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.7244.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i64 32, i1 false), !noalias !555
  %i.de = icmp eq i64 %.lcssa137.i, %i.ct
  br i1 %i.de, label %bb.aq, label %.invoke.i.i.i, !prof !20

.invoke.i.i.i:                                    ; preds = %bb.aq, %bb.ap
  %i.df = phi ptr [ @55, %bb.ap ], [ @53, %bb.aq ]
  %i.dg = phi i64 [ 48, %bb.ap ], [ 32, %bb.aq ]
  %i.dh = phi ptr [ @56, %bb.ap ], [ @57, %bb.aq ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh) #28
          to label %.cont.i.i.i unwind label %bb.ar, !noalias !583

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.di = load i16, ptr %i.cw, align 2, !noalias !583, !noundef !5 ; 3 uses
  %i.dj = icmp ult i16 %i.di, 11
  br i1 %i.dj, label %bb.cg, label %.invoke.i.i.i, !prof !20

bb.ar:                                            ; preds = %.invoke.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #26
          to label %bb.at unwind label %bb.as, !noalias !584

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !578
  unreachable

bb.at:                                            ; preds = %bb.ar
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #26
          to label %.critedge9 unwind label %bb.as, !noalias !578

bb.au:                                            ; preds = %bb.ai
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j) #26
          to label %bb.aw unwind label %bb.av, !noalias !555

bb.av:                                            ; preds = %bb.aw, %bb.au
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !555
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.do) #26
          to label %.critedge9 unwind label %bb.av, !noalias !555

bb.ax:                                            ; preds = %bb.cf, %.lr.ph.i
  %.sroa.0.1.i = phi i64 [ %.sroa.025.0.copyload.i, %.lr.ph.i ], [ %.sroa.0.i.sroa.0.0.copyload.i, %bb.cf ]
  %i.dp = phi ptr [ %i.co, %.lr.ph.i ], [ %i.lf, %bb.cf ] ; 20 uses
  %i.dq = phi ptr [ %i.r, %.lr.ph.i ], [ %i.dp, %bb.cf ]
  %i.dr = phi i64 [ %.sroa.415.0.copyload, %.lr.ph.i ], [ %i.du, %bb.cf ]
  %i.ds = phi ptr [ %i.bc, %.lr.ph.i ], [ %i.gi, %bb.cf ] ; 2 uses
  %i.dt = phi i1 [ %i.cq, %.lr.ph.i ], [ true, %bb.cf ]
  %i.du = add i64 %i.dr, 1                        ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 624
  %i.dw = load i16, ptr %i.dv, align 8, !noalias !577 ; 4 uses
  %i.dx = zext i16 %i.dw to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !555
  store i64 %.sroa.0.1.i, ptr %i.l, align 8, !noalias !555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.i, i64 16, i1 false), !noalias !555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i, i64 32, i1 false), !noalias !555
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  br i1 %i.dt, label %bb.az, label %bb.ay, !prof !20

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28
          to label %bb.ba unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !585

bb.az:                                            ; preds = %bb.ax
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 626 ; 4 uses
  %i.dz = load i16, ptr %i.dy, align 2, !noalias !585, !noundef !5 ; 5 uses
  %i.ea = icmp ult i16 %i.dz, 11
  br i1 %i.ea, label %bb.bc, label %bb.bb

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bj, %bb.ay
  %lpad.loopexit.split-lp323 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.loopexit.split-lp

bb.ba:                                            ; preds = %bb.ay
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.eb = icmp ult i16 %i.dw, 5
  br i1 %i.eb, label %bb.bj, label %bb.bg

bb.bc:                                            ; preds = %bb.az
  %i.ec = zext nneg i16 %i.dz to i64              ; 4 uses
  %i.ed = add nuw nsw i16 %i.dz, 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 360 ; 2 uses
  %i.ef = add nuw nsw i64 %i.dx, 1                ; 7 uses
  %.not.i.i32.not.i = icmp ult i16 %i.dw, %i.dz
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.dx ; 3 uses
  br i1 %.not.i.i32.not.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !586
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i, i64 32, i1 false), !noalias !555
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.ef
  %i.ej = sub nuw nsw i64 %i.ec, %i.dx            ; 3 uses
  %i.ek = mul nuw nsw i64 %i.ej, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.eg, i64 %i.ek, i1 false), !alias.scope !587, !noalias !588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !586
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %i.dx ; 2 uses
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %i.ef
  %i.en = shl nuw nsw i64 %i.ej, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.em, ptr nonnull align 8 %i.el, i64 %i.en, i1 false), !alias.scope !589, !noalias !588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i, i64 32, i1 false), !noalias !555
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dp, i64 632 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ef
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.dx
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = shl nuw nsw i64 %i.ej, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.er, ptr nonnull align 8 %i.ep, i64 %i.es, i1 false), !alias.scope !590, !noalias !588
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.et = getelementptr inbounds nuw i8, ptr %i.dp, i64 632 ; 6 uses
  %i.eu = add nuw nsw i64 %i.ec, 2                ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ef
  store ptr %i.ds, ptr %i.ev, align 8, !alias.scope !590, !noalias !588
  store i16 %i.ed, ptr %i.dy, align 2, !noalias !588
  %i.ew = icmp samesign ult i64 %i.ef, %i.eu
  br i1 %i.ew, label %.lr.ph.i.i.i.i.preheader, label %.thread41.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.bf
  %i.ex = add nuw nsw i64 %i.ec, 1
  %i.ey = sub nsw i64 %i.ex, %i.dx
  %i.ez = sub nsw i64 %i.ec, %i.dx
  %xtraiter395 = and i64 %i.ey, 3                 ; 2 uses
  %lcmp.mod396.not = icmp eq i64 %xtraiter395, 0
  br i1 %lcmp.mod396.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.fa, %.lr.ph.i.i.i.i.prol ], [ %i.ef, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %prol.iter397 = phi i64 [ %prol.iter397.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.fa = add nuw nsw i64 %.sroa.0.06.i.i.i.i.prol, 1 ; 2 uses
  %i.fb = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.sroa.0.06.i.i.i.i.prol
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !588, !nonnull !5, !noundef !5 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  store ptr %i.dp, ptr %i.fe, align 8, !noalias !588
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.prol to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 624
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !588
  %prol.iter397.next = add i64 %prol.iter397, 1   ; 2 uses
  %prol.iter397.cmp.not = icmp eq i64 %prol.iter397.next, %xtraiter395
  br i1 %prol.iter397.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !520

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.preheader ], [ %i.fa, %.lr.ph.i.i.i.i.prol ]
  %i.fh = icmp ult i64 %i.ez, 3
  br i1 %i.fh, label %.thread41.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ga, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.fi = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 1  ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.sroa.0.06.i.i.i.i
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !588, !nonnull !5, !noundef !5 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 352
  store ptr %i.dp, ptr %i.fl, align 8, !noalias !588
  %i.fm = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 624
  store i16 %i.fm, ptr %i.fn, align 8, !noalias !588
  %i.fo = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 2  ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.fi
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !588, !nonnull !5, !noundef !5 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 352
  store ptr %i.dp, ptr %i.fr, align 8, !noalias !588
  %i.fs = trunc nuw nsw i64 %i.fi to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 624
  store i16 %i.fs, ptr %i.ft, align 8, !noalias !588
  %i.fu = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 3  ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.fo
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !588, !nonnull !5, !noundef !5 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 352
  store ptr %i.dp, ptr %i.fx, align 8, !noalias !588
  %i.fy = trunc nuw nsw i64 %i.fo to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 624
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !588
  %i.ga = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 4  ; 2 uses
  %i.gb = icmp ult i64 %.sroa.0.06.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.fu
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !588, !nonnull !5, !noundef !5 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 352
  store ptr %i.dp, ptr %i.ge, align 8, !noalias !588
  %i.gf = trunc nuw nsw i64 %i.fu to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 624
  store i16 %i.gf, ptr %i.gg, align 8, !noalias !588
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ga, %i.eu
  br i1 %exitcond.not.i.i.i.i.3, label %.thread41.i, label %.lr.ph.i.i.i.i

bb.bg:                                            ; preds = %bb.bb
  switch i16 %i.dw, label %bb.bh [
    i16 5, label %bb.bj
    i16 6, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.gh = add nsw i64 %i.dx, -7
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bb
  %.sroa.06.0.i.i = phi i64 [ 5, %bb.bi ], [ 6, %bb.bh ], [ 4, %bb.bb ], [ 5, %bb.bg ] ; 7 uses
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.bi ], [ %i.gh, %bb.bh ], [ %i.dx, %bb.bb ], [ 5, %bb.bg ] ; 9 uses
  %.sroa.03.0.i.i = phi i1 [ true, %bb.bi ], [ true, %bb.bh ], [ false, %bb.bb ], [ false, %bb.bg ]
  %i.gi = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3()
          to label %.noexc.i29.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !585 ; 14 uses

.noexc.i29.i:                                     ; preds = %bb.bj
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 352
  store ptr null, ptr %i.gj, align 8, !noalias !591
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 626 ; 3 uses
  store i16 0, ptr %i.gk, align 2, !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.gl = load i16, ptr %i.dy, align 2, !noalias !593, !noundef !5
  %i.gm = zext i16 %i.gl to i64
  %i.gn = xor i64 %.sroa.06.0.i.i, -1
  %i.go = add nsw i64 %i.gm, %i.gn                ; 5 uses
  %i.gp = trunc i64 %i.go to i16
  store i16 %i.gp, ptr %i.gk, align 2, !alias.scope !592, !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !593
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dp, i64 360 ; 2 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %.sroa.06.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gr, i64 24, i1 false), !noalias !593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !593
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %.sroa.06.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gs, i64 32, i1 false), !noalias !593
  %i.gt = icmp ult i64 %i.go, 12
  br i1 %i.gt, label %bb.bp, label %bb.bk, !prof !564

bb.bk:                                            ; preds = %.noexc.i29.i
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.go, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #28
          to label %bb.bm unwind label %bb.bl, !noalias !593

bb.bl:                                            ; preds = %bb.bk
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #26
          to label %bb.bo unwind label %bb.bn, !noalias !593

bb.bm:                                            ; preds = %bb.bk
  unreachable

bb.bn:                                            ; preds = %bb.bo, %bb.bl
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !593
  unreachable

bb.bo:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #26
          to label %bb.by unwind label %bb.bn, !noalias !593

bb.bp:                                            ; preds = %.noexc.i29.i
  %i.gw = add nuw nsw i64 %.sroa.06.0.i.i, 1      ; 2 uses
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gi, i64 360
  %i.gz = mul nuw nsw i64 %i.go, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gy, ptr nonnull readonly align 8 %i.gx, i64 %i.gz, i1 false), !alias.scope !594, !noalias !595
  %i.ha = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %i.gw
  %i.hb = shl nuw nsw i64 %i.go, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gi, ptr nonnull readonly align 8 %i.ha, i64 %i.hb, i1 false), !alias.scope !596, !noalias !595
  %i.hc = trunc nuw nsw i64 %.sroa.06.0.i.i to i16
  store i16 %i.hc, ptr %i.dy, align 2, !noalias !593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !593
  %i.hd = load i16, ptr %i.gk, align 2, !noalias !591, !noundef !5 ; 3 uses
  %i.he = zext i16 %i.hd to i64
  %i.hf = add nuw nsw i64 %i.he, 1                ; 5 uses
  %i.hg = icmp ult i16 %i.hd, 12
  br i1 %i.hg, label %bb.bq, label %bb.bs, !prof !564

bb.bq:                                            ; preds = %bb.bp
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gi, i64 632 ; 6 uses
  %i.hi = zext i16 %i.dz to i64
  %i.hj = sub nuw nsw i64 %i.hi, %.sroa.06.0.i.i
  %i.hk = icmp eq i64 %i.hj, %i.hf
  br i1 %i.hk, label %bb.bu, label %bb.br, !prof !20

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #31
end_hunk_0
