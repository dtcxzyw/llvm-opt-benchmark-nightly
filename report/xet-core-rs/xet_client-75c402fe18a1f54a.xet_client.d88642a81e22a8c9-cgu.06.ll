Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.06?download=true
inline.NumInlined: 1225
inline.NumDeleted: 657
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtBc_3vec3VechENtB6_18BufferedWriterSpec9copy_fromINtNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB2J_6cursor6CursorRShEEEECsiAynQAjgDuT_10xet_client:_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCsiAynQAjgDuT_10xet_client.exit
; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtBc_3vec3VechENtB6_18BufferedWriterSpec9copy_fromINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1I_6cursor6CursorRBM_EEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCsiAynQAjgDuT_10xet_client.exit:
  %i.a = tail call { i64, ptr } @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtB18_2io4read4Read11read_to_endCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtBc_3vec3VechENtB6_18BufferedWriterSpec9copy_fromINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1I_6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCsiAynQAjgDuT_10xet_client.exit:
  %i.a = tail call { i64, ptr } @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRNtNtCslc8SwK8fohf_5bytes5bytes5BytesEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_endCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtBc_3vec3VechENtB6_18BufferedWriterSpec9copy_fromINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1I_6cursor6CursorRShEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCsiAynQAjgDuT_10xet_client.exit:
  %i.a = tail call { i64, ptr } @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_endCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB40_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2J_4read9SliceReadEEB1k_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB41_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbMultiRangeFetchENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2R_4read9SliceReadEEB1k_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbMultiRangeFetchEEB41_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbRangeDescriptorENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2R_4read9SliceReadEEB1k_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbRangeDescriptorEEB41_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2U_4read9SliceReadEEB1k_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermEEB41_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2Z_4read9SliceReadEEB1k_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEEB41_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB3c_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2R_4read9SliceReadEEB1m_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB43_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB35_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorTjjEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE20check_block_checksumCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i32 0, ptr %i.d, align 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store <4 x i32> <i32 606290984, i32 -2048144777, i32 0, i32 1640531535>, ptr %i.b, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  call fastcc void @_RNvXs5_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6HasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  %i.e = load i64, ptr %.sroa.4.0..sroa_idx, align 16, !alias.scope !1452, !noundef !16 ; 7 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.c, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #34, !noalias !1452
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1452, !noundef !16 ; 2 uses
  %i.i = load i32, ptr %i.d, align 16, !alias.scope !1452, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %i.j = icmp ult i64 %i.h, 16
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.b, align 16, !alias.scope !1455, !noundef !16 ; 2 uses
  %i.l = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !alias.scope !1455, !noundef !16 ; 2 uses
  %i.m = load i32, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !1455, !noundef !16 ; 2 uses
  %i.n = load i32, ptr %.sroa.67.0..sroa_idx, align 4, !alias.scope !1455, !noundef !16 ; 2 uses
  %i.o = tail call noundef i32 @llvm.fshl.i32(i32 %i.k, i32 %i.k, i32 1)
  %i.p = tail call noundef i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 7)
  %i.q = tail call noundef i32 @llvm.fshl.i32(i32 %i.m, i32 %i.m, i32 12)
  %i.r = tail call noundef i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 18)
  %i.s = add i32 %i.p, %i.o
  %i.t = add i32 %i.s, %i.q
  %i.u = add i32 %i.t, %i.r
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = add i32 %i.i, 374761393
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.05.0.i.i = phi i32 [ %i.v, %bb.e ], [ %i.u, %bb.d ]
  %i.w = trunc i64 %i.h to i32
  %i.x = add i32 %.sroa.05.0.i.i, %i.w            ; 3 uses
  %i.y = icmp samesign ugt i64 %i.e, 3
  br i1 %i.y, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.z = add nsw i64 %i.e, -4                     ; 2 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.030.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.prol ], [ %i.c, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.5.029.i.i.prol = phi i64 [ %i.ad, %.lr.ph.i.i.prol ], [ %i.e, %.lr.ph.i.i.preheader ]
  %.sroa.05.128.i.i.prol = phi i32 [ %i.ah, %.lr.ph.i.i.prol ], [ %i.x, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.prol, i64 4 ; 3 uses
  %i.ad = add nsw i64 %.sroa.5.029.i.i.prol, -4   ; 3 uses
  %.sroa.023.0.copyload.i.i.prol = load i32, ptr %.sroa.0.030.i.i.prol, align 4, !alias.scope !1456
  %i.ae = mul i32 %.sroa.023.0.copyload.i.i.prol, -1028477379
  %i.af = add i32 %i.ae, %.sroa.05.128.i.i.prol   ; 2 uses
  %i.ag = tail call noundef i32 @llvm.fshl.i32(i32 %i.af, i32 %i.af, i32 17)
  %i.ah = mul i32 %i.ag, 668265263                ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1450

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.030.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.prol ]
  %.sroa.5.029.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.prol ]
  %.sroa.05.128.i.i.unr = phi i32 [ %i.x, %.lr.ph.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.prol ]
  %.lcssa23.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.prol ]
  %.lcssa22.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.prol ]
  %.lcssa21.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.prol ]
  %i.ai = icmp ult i64 %i.z, 12
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.f
  %.sroa.05.1.lcssa.i.i = phi i32 [ %i.x, %bb.f ], [ %.lcssa21.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bn, %.lr.ph.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i = phi i64 [ %i.e, %bb.f ], [ %.lcssa22.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i ] ; 4 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.c, %bb.f ], [ %.lcssa23.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bi, %.lr.ph.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 %.sroa.5.0.lcssa.i.i
  %i.ak = icmp samesign eq i64 %.sroa.5.0.lcssa.i.i, 0
  br i1 %i.ak, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i.preheader

.lr.ph36.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %xtraiter24 = and i64 %.sroa.5.0.lcssa.i.i, 3   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph36.i.i.prol.loopexit, label %.lr.ph36.i.i.prol

.lr.ph36.i.i.prol:                                ; preds = %.lr.ph36.i.i.preheader, %.lr.ph36.i.i.prol
  %.sroa.05.234.i.i.prol = phi i32 [ %i.ar, %.lr.ph36.i.i.prol ], [ %.sroa.05.1.lcssa.i.i, %.lr.ph36.i.i.preheader ]
  %.sroa.024.033.i.i.prol = phi ptr [ %i.al, %.lr.ph36.i.i.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph36.i.i.preheader ] ; 2 uses
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph36.i.i.prol ], [ 0, %.lr.ph36.i.i.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.prol, i64 1 ; 2 uses
  %i.am = load i8, ptr %.sroa.024.033.i.i.prol, align 1, !alias.scope !1456, !noundef !16
  %i.an = zext i8 %i.am to i32
  %i.ao = mul i32 %i.an, 374761393
  %i.ap = add i32 %i.ao, %.sroa.05.234.i.i.prol   ; 2 uses
  %i.aq = tail call noundef i32 @llvm.fshl.i32(i32 %i.ap, i32 %i.ap, i32 11)
  %i.ar = mul i32 %i.aq, -1640531535              ; 3 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph36.i.i.prol.loopexit, label %.lr.ph36.i.i.prol, !llvm.loop !1451

.lr.ph36.i.i.prol.loopexit:                       ; preds = %.lr.ph36.i.i.prol, %.lr.ph36.i.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph36.i.i.preheader ], [ %i.ar, %.lr.ph36.i.i.prol ]
  %.sroa.05.234.i.i.unr = phi i32 [ %.sroa.05.1.lcssa.i.i, %.lr.ph36.i.i.preheader ], [ %i.ar, %.lr.ph36.i.i.prol ]
  %.sroa.024.033.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph36.i.i.preheader ], [ %i.al, %.lr.ph36.i.i.prol ]
  %i.as = icmp ult i64 %.sroa.5.0.lcssa.i.i, 4
  br i1 %i.as, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.030.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %.sroa.0.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.5.029.i.i = phi i64 [ %i.bj, %.lr.ph.i.i ], [ %.sroa.5.029.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.05.128.i.i = phi i32 [ %i.bn, %.lr.ph.i.i ], [ %.sroa.05.128.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 4
  %.sroa.023.0.copyload.i.i = load i32, ptr %.sroa.0.030.i.i, align 4, !alias.scope !1456
  %i.au = mul i32 %.sroa.023.0.copyload.i.i, -1028477379
  %i.av = add i32 %i.au, %.sroa.05.128.i.i        ; 2 uses
  %i.aw = tail call noundef i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 17)
  %i.ax = mul i32 %i.aw, 668265263
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 8
  %.sroa.023.0.copyload.i.i.1 = load i32, ptr %i.at, align 4, !alias.scope !1456
  %i.az = mul i32 %.sroa.023.0.copyload.i.i.1, -1028477379
  %i.ba = add i32 %i.az, %i.ax                    ; 2 uses
  %i.bb = tail call noundef i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 17)
  %i.bc = mul i32 %i.bb, 668265263
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 12
  %.sroa.023.0.copyload.i.i.2 = load i32, ptr %i.ay, align 4, !alias.scope !1456
  %i.be = mul i32 %.sroa.023.0.copyload.i.i.2, -1028477379
  %i.bf = add i32 %i.be, %i.bc                    ; 2 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 17)
  %i.bh = mul i32 %i.bg, 668265263
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 16 ; 2 uses
  %i.bj = add nsw i64 %.sroa.5.029.i.i, -16       ; 3 uses
  %.sroa.023.0.copyload.i.i.3 = load i32, ptr %i.bd, align 4, !alias.scope !1456
  %i.bk = mul i32 %.sroa.023.0.copyload.i.i.3, -1028477379
  %i.bl = add i32 %i.bk, %i.bh                    ; 2 uses
  %i.bm = tail call noundef i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 17)
  %i.bn = mul i32 %i.bm, 668265263                ; 2 uses
  %i.bo = icmp ugt i64 %i.bj, 3
  br i1 %i.bo, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.i.i.prol.loopexit, %.lr.ph36.i.i
  %.sroa.05.234.i.i = phi i32 [ %i.cq, %.lr.ph36.i.i ], [ %.sroa.05.234.i.i.unr, %.lr.ph36.i.i.prol.loopexit ]
  %.sroa.024.033.i.i = phi ptr [ %i.ck, %.lr.ph36.i.i ], [ %.sroa.024.033.i.i.unr, %.lr.ph36.i.i.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 1
  %i.bq = load i8, ptr %.sroa.024.033.i.i, align 1, !alias.scope !1456, !noundef !16
  %i.br = zext i8 %i.bq to i32
  %i.bs = mul i32 %i.br, 374761393
  %i.bt = add i32 %i.bs, %.sroa.05.234.i.i        ; 2 uses
  %i.bu = call noundef i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 11)
  %i.bv = mul i32 %i.bu, -1640531535
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 2
  %i.bx = load i8, ptr %i.bp, align 1, !alias.scope !1456, !noundef !16
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul i32 %i.by, 374761393
  %i.ca = add i32 %i.bz, %i.bv                    ; 2 uses
  %i.cb = call noundef i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 11)
  %i.cc = mul i32 %i.cb, -1640531535
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 3
  %i.ce = load i8, ptr %i.bw, align 1, !alias.scope !1456, !noundef !16
  %i.cf = zext i8 %i.ce to i32
  %i.cg = mul i32 %i.cf, 374761393
  %i.ch = add i32 %i.cg, %i.cc                    ; 2 uses
  %i.ci = call noundef i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 11)
  %i.cj = mul i32 %i.ci, -1640531535
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 4 ; 2 uses
  %i.cl = load i8, ptr %i.cd, align 1, !alias.scope !1456, !noundef !16
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul i32 %i.cm, 374761393
  %i.co = add i32 %i.cn, %i.cj                    ; 2 uses
  %i.cp = call noundef i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 11)
  %i.cq = mul i32 %i.cp, -1640531535              ; 2 uses
  %i.cr = icmp eq ptr %i.ck, %i.aj
  br i1 %i.cr, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i

_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit: ; preds = %.lr.ph36.i.i.prol.loopexit, %.lr.ph36.i.i, %._crit_edge.i.i
  %.sroa.05.2.lcssa.i.i = phi i32 [ %.sroa.05.1.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa.unr, %.lr.ph36.i.i.prol.loopexit ], [ %i.cq, %.lr.ph36.i.i ] ; 2 uses
  %i.cs = lshr i32 %.sroa.05.2.lcssa.i.i, 15
  %i.ct = xor i32 %i.cs, %.sroa.05.2.lcssa.i.i
  %i.cu = mul i32 %i.ct, -2048144777              ; 2 uses
  %i.cv = lshr i32 %i.cu, 13
  %i.cw = xor i32 %i.cv, %i.cu
  %i.cx = mul i32 %i.cw, -1028477379              ; 2 uses
  %i.cy = lshr i32 %i.cx, 16
  %i.cz = xor i32 %i.cy, %i.cx
  %.not = icmp eq i32 %i.cz, %2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 15, ptr %i.a, align 8
  %i.da = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, %bb.g
  %.sroa.0.0 = phi ptr [ %i.da, %bb.g ], [ null, %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE20check_block_checksumCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i32 0, ptr %i.d, align 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store <4 x i32> <i32 606290984, i32 -2048144777, i32 0, i32 1640531535>, ptr %i.b, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  call fastcc void @_RNvXs5_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6HasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %i.e = load i64, ptr %.sroa.4.0..sroa_idx, align 16, !alias.scope !1464, !noundef !16 ; 7 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.c, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #34, !noalias !1464
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1464, !noundef !16 ; 2 uses
  %i.i = load i32, ptr %i.d, align 16, !alias.scope !1464, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %i.j = icmp ult i64 %i.h, 16
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.b, align 16, !alias.scope !1467, !noundef !16 ; 2 uses
  %i.l = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !alias.scope !1467, !noundef !16 ; 2 uses
  %i.m = load i32, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !1467, !noundef !16 ; 2 uses
  %i.n = load i32, ptr %.sroa.67.0..sroa_idx, align 4, !alias.scope !1467, !noundef !16 ; 2 uses
  %i.o = tail call noundef i32 @llvm.fshl.i32(i32 %i.k, i32 %i.k, i32 1)
  %i.p = tail call noundef i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 7)
  %i.q = tail call noundef i32 @llvm.fshl.i32(i32 %i.m, i32 %i.m, i32 12)
  %i.r = tail call noundef i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 18)
  %i.s = add i32 %i.p, %i.o
  %i.t = add i32 %i.s, %i.q
  %i.u = add i32 %i.t, %i.r
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = add i32 %i.i, 374761393
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.05.0.i.i = phi i32 [ %i.v, %bb.e ], [ %i.u, %bb.d ]
  %i.w = trunc i64 %i.h to i32
  %i.x = add i32 %.sroa.05.0.i.i, %i.w            ; 3 uses
  %i.y = icmp samesign ugt i64 %i.e, 3
  br i1 %i.y, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.z = add nsw i64 %i.e, -4                     ; 2 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.030.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.prol ], [ %i.c, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.5.029.i.i.prol = phi i64 [ %i.ad, %.lr.ph.i.i.prol ], [ %i.e, %.lr.ph.i.i.preheader ]
  %.sroa.05.128.i.i.prol = phi i32 [ %i.ah, %.lr.ph.i.i.prol ], [ %i.x, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.prol, i64 4 ; 3 uses
  %i.ad = add nsw i64 %.sroa.5.029.i.i.prol, -4   ; 3 uses
  %.sroa.023.0.copyload.i.i.prol = load i32, ptr %.sroa.0.030.i.i.prol, align 4, !alias.scope !1468
  %i.ae = mul i32 %.sroa.023.0.copyload.i.i.prol, -1028477379
  %i.af = add i32 %i.ae, %.sroa.05.128.i.i.prol   ; 2 uses
  %i.ag = tail call noundef i32 @llvm.fshl.i32(i32 %i.af, i32 %i.af, i32 17)
  %i.ah = mul i32 %i.ag, 668265263                ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1462

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.030.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.prol ]
  %.sroa.5.029.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.prol ]
  %.sroa.05.128.i.i.unr = phi i32 [ %i.x, %.lr.ph.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.prol ]
  %.lcssa23.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.prol ]
  %.lcssa22.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.prol ]
  %.lcssa21.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.prol ]
  %i.ai = icmp ult i64 %i.z, 12
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.f
  %.sroa.05.1.lcssa.i.i = phi i32 [ %i.x, %bb.f ], [ %.lcssa21.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bn, %.lr.ph.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i = phi i64 [ %i.e, %bb.f ], [ %.lcssa22.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i ] ; 4 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.c, %bb.f ], [ %.lcssa23.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bi, %.lr.ph.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 %.sroa.5.0.lcssa.i.i
  %i.ak = icmp samesign eq i64 %.sroa.5.0.lcssa.i.i, 0
  br i1 %i.ak, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i.preheader

.lr.ph36.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %xtraiter24 = and i64 %.sroa.5.0.lcssa.i.i, 3   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph36.i.i.prol.loopexit, label %.lr.ph36.i.i.prol

.lr.ph36.i.i.prol:                                ; preds = %.lr.ph36.i.i.preheader, %.lr.ph36.i.i.prol
  %.sroa.05.234.i.i.prol = phi i32 [ %i.ar, %.lr.ph36.i.i.prol ], [ %.sroa.05.1.lcssa.i.i, %.lr.ph36.i.i.preheader ]
  %.sroa.024.033.i.i.prol = phi ptr [ %i.al, %.lr.ph36.i.i.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph36.i.i.preheader ] ; 2 uses
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph36.i.i.prol ], [ 0, %.lr.ph36.i.i.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.prol, i64 1 ; 2 uses
  %i.am = load i8, ptr %.sroa.024.033.i.i.prol, align 1, !alias.scope !1468, !noundef !16
  %i.an = zext i8 %i.am to i32
  %i.ao = mul i32 %i.an, 374761393
  %i.ap = add i32 %i.ao, %.sroa.05.234.i.i.prol   ; 2 uses
  %i.aq = tail call noundef i32 @llvm.fshl.i32(i32 %i.ap, i32 %i.ap, i32 11)
  %i.ar = mul i32 %i.aq, -1640531535              ; 3 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph36.i.i.prol.loopexit, label %.lr.ph36.i.i.prol, !llvm.loop !1463

.lr.ph36.i.i.prol.loopexit:                       ; preds = %.lr.ph36.i.i.prol, %.lr.ph36.i.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph36.i.i.preheader ], [ %i.ar, %.lr.ph36.i.i.prol ]
  %.sroa.05.234.i.i.unr = phi i32 [ %.sroa.05.1.lcssa.i.i, %.lr.ph36.i.i.preheader ], [ %i.ar, %.lr.ph36.i.i.prol ]
  %.sroa.024.033.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph36.i.i.preheader ], [ %i.al, %.lr.ph36.i.i.prol ]
  %i.as = icmp ult i64 %.sroa.5.0.lcssa.i.i, 4
  br i1 %i.as, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.030.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %.sroa.0.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.5.029.i.i = phi i64 [ %i.bj, %.lr.ph.i.i ], [ %.sroa.5.029.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.05.128.i.i = phi i32 [ %i.bn, %.lr.ph.i.i ], [ %.sroa.05.128.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 4
  %.sroa.023.0.copyload.i.i = load i32, ptr %.sroa.0.030.i.i, align 4, !alias.scope !1468
  %i.au = mul i32 %.sroa.023.0.copyload.i.i, -1028477379
  %i.av = add i32 %i.au, %.sroa.05.128.i.i        ; 2 uses
  %i.aw = tail call noundef i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 17)
  %i.ax = mul i32 %i.aw, 668265263
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 8
  %.sroa.023.0.copyload.i.i.1 = load i32, ptr %i.at, align 4, !alias.scope !1468
  %i.az = mul i32 %.sroa.023.0.copyload.i.i.1, -1028477379
  %i.ba = add i32 %i.az, %i.ax                    ; 2 uses
  %i.bb = tail call noundef i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 17)
  %i.bc = mul i32 %i.bb, 668265263
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 12
  %.sroa.023.0.copyload.i.i.2 = load i32, ptr %i.ay, align 4, !alias.scope !1468
  %i.be = mul i32 %.sroa.023.0.copyload.i.i.2, -1028477379
  %i.bf = add i32 %i.be, %i.bc                    ; 2 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 17)
  %i.bh = mul i32 %i.bg, 668265263
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 16 ; 2 uses
  %i.bj = add nsw i64 %.sroa.5.029.i.i, -16       ; 3 uses
  %.sroa.023.0.copyload.i.i.3 = load i32, ptr %i.bd, align 4, !alias.scope !1468
  %i.bk = mul i32 %.sroa.023.0.copyload.i.i.3, -1028477379
  %i.bl = add i32 %i.bk, %i.bh                    ; 2 uses
  %i.bm = tail call noundef i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 17)
  %i.bn = mul i32 %i.bm, 668265263                ; 2 uses
  %i.bo = icmp ugt i64 %i.bj, 3
  br i1 %i.bo, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.i.i.prol.loopexit, %.lr.ph36.i.i
  %.sroa.05.234.i.i = phi i32 [ %i.cq, %.lr.ph36.i.i ], [ %.sroa.05.234.i.i.unr, %.lr.ph36.i.i.prol.loopexit ]
  %.sroa.024.033.i.i = phi ptr [ %i.ck, %.lr.ph36.i.i ], [ %.sroa.024.033.i.i.unr, %.lr.ph36.i.i.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 1
  %i.bq = load i8, ptr %.sroa.024.033.i.i, align 1, !alias.scope !1468, !noundef !16
  %i.br = zext i8 %i.bq to i32
  %i.bs = mul i32 %i.br, 374761393
  %i.bt = add i32 %i.bs, %.sroa.05.234.i.i        ; 2 uses
  %i.bu = call noundef i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 11)
  %i.bv = mul i32 %i.bu, -1640531535
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 2
  %i.bx = load i8, ptr %i.bp, align 1, !alias.scope !1468, !noundef !16
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul i32 %i.by, 374761393
  %i.ca = add i32 %i.bz, %i.bv                    ; 2 uses
  %i.cb = call noundef i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 11)
  %i.cc = mul i32 %i.cb, -1640531535
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 3
  %i.ce = load i8, ptr %i.bw, align 1, !alias.scope !1468, !noundef !16
  %i.cf = zext i8 %i.ce to i32
  %i.cg = mul i32 %i.cf, 374761393
  %i.ch = add i32 %i.cg, %i.cc                    ; 2 uses
  %i.ci = call noundef i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 11)
  %i.cj = mul i32 %i.ci, -1640531535
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 4 ; 2 uses
  %i.cl = load i8, ptr %i.cd, align 1, !alias.scope !1468, !noundef !16
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul i32 %i.cm, 374761393
  %i.co = add i32 %i.cn, %i.cj                    ; 2 uses
  %i.cp = call noundef i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 11)
  %i.cq = mul i32 %i.cp, -1640531535              ; 2 uses
  %i.cr = icmp eq ptr %i.ck, %i.aj
  br i1 %i.cr, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i

_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit: ; preds = %.lr.ph36.i.i.prol.loopexit, %.lr.ph36.i.i, %._crit_edge.i.i
  %.sroa.05.2.lcssa.i.i = phi i32 [ %.sroa.05.1.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa.unr, %.lr.ph36.i.i.prol.loopexit ], [ %i.cq, %.lr.ph36.i.i ] ; 2 uses
  %i.cs = lshr i32 %.sroa.05.2.lcssa.i.i, 15
  %i.ct = xor i32 %i.cs, %.sroa.05.2.lcssa.i.i
  %i.cu = mul i32 %i.ct, -2048144777              ; 2 uses
  %i.cv = lshr i32 %i.cu, 13
  %i.cw = xor i32 %i.cv, %i.cu
  %i.cx = mul i32 %i.cw, -1028477379              ; 2 uses
  %i.cy = lshr i32 %i.cx, 16
  %i.cz = xor i32 %i.cy, %i.cx
  %.not = icmp eq i32 %i.cz, %2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 15, ptr %i.a, align 8
  %i.da = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, %bb.g
  %.sroa.0.0 = phi ptr [ %i.da, %bb.g ], [ null, %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBZ_2__FEE32forget_allocation_drop_remainingB11_(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBP_2__FEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermE32forget_allocation_drop_remainingB10_(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiAynQAjgDuT_10xet_client9cas_types22XorbReconstructionTermENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoE32forget_allocation_drop_remainingB10_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.j = icmp eq ptr %.val1, %.val
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBG_.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit.i: ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.m, %i.g
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit.i
  %.sroa.0.0.i2 = phi i64 [ %i.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.0.i2
  %i.m = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit7.i: ; preds = %.lr.ph4
  %i.n = add nuw nsw i64 %.sroa.0.1.i3, 1         ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit7.i._crit_edge, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.m, %i.g
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit7.i._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit7.i
  %.sroa.0.1.i3 = phi i64 [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit7.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.1.i3
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit7.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit7.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit7.i, %bb.b
  resume { ptr, i32 } %i.p

bb.c:                                             ; preds = %.lr.ph4
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBG_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types27XorbReconstructionFetchInfoEBF_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeE32forget_allocation_drop_remainingCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtCsG258MDvU3F_3std4path7PathBufEE32forget_allocation_drop_remainingCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB4_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1d_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEENtNtNtB2f_2io4read4Read11read_to_endCsiAynQAjgDuT_10xet_client:bb.a
  call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr i8, ptr %i.ge, i64 %i.gd  ; 2 uses
  %i.gh = icmp ugt i64 %i.fz, 1
  br i1 %i.gh, label %._crit_edge.thread.i.i.i157.i.i.i, label %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsiAynQAjgDuT_10xet_client.exit.i154.i.i.i

._crit_edge.thread.i.i.i157.i.i.i:                ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i153.i.i.i
  %i.gi = add i64 %i.fz, -1                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gg, i8 0, i64 %i.gi, i1 false), !noalias !2280
  %i.gj = add i64 %i.gd, %i.gi                    ; 2 uses
  %scevgep.i.i.i158.i.i.i = getelementptr i8, ptr %i.ge, i64 %i.gj
  br label %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsiAynQAjgDuT_10xet_client.exit.i154.i.i.i

_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsiAynQAjgDuT_10xet_client.exit.i154.i.i.i: ; preds = %._crit_edge.thread.i.i.i157.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i153.i.i.i
  %.sroa.0.0.lcssa28.i.i.i155.i.i.i = phi ptr [ %scevgep.i.i.i158.i.i.i, %._crit_edge.thread.i.i.i157.i.i.i ], [ %i.gg, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i153.i.i.i ]
  %storemerge.lcssa27.i.i.i156.i.i.i = phi i64 [ %i.gj, %._crit_edge.thread.i.i.i157.i.i.i ], [ %i.gd, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i153.i.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i.i155.i.i.i, align 1, !noalias !2280
  %i.gk = add i64 %storemerge.lcssa27.i.i.i156.i.i.i, 1 ; 2 uses
  store i64 %i.gk, ptr %i.ai, align 8, !alias.scope !2300
  br label %bb.bh

bb.bh:                                            ; preds = %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsiAynQAjgDuT_10xet_client.exit.i154.i.i.i, %bb.be
  %i.gl = phi i64 [ %i.fw, %bb.be ], [ %i.gk, %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsiAynQAjgDuT_10xet_client.exit.i154.i.i.i ] ; 2 uses
  %i.gm = icmp ult i64 %i.fv, %i.fu
  %.not.i152.i.i.i = icmp ugt i64 %i.fv, %i.gl
  %or.cond.i.i.i.i = or i1 %i.gm, %.not.i152.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.bi, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress22vec_resize_and_get_mut.exit160.i.i.i, !prof !28

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.fu, i64 noundef %i.fv, i64 noundef %i.gl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #34, !noalias !2280
  unreachable

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress22vec_resize_and_get_mut.exit160.i.i.i: ; preds = %bb.bh
  %i.gn = load ptr, ptr %i.av, align 8, !alias.scope !2297, !nonnull !16, !noundef !16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.fu
  %.val142.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2283, !nonnull !16, !align !23, !noundef !16
  %i.gp = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtB18_2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val142.i.i.i, ptr noalias nofree noundef nonnull %i.go, i64 noundef range(i64 0, -9223372036854775808) %i.df), !noalias !2280 ; 2 uses
  %.not125.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not125.i.i.i, label %bb.bk, label %bb.dc

bb.bj:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2284
  store i64 13, ptr %i.u, align 8, !noalias !2284
  %i.gq = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2284
  br label %bb.dc

bb.bk:                                            ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress22vec_resize_and_get_mut.exit160.i.i.i
  %i.gr = load i8, ptr %.sroa.871.0..sroa_idx.i.i.i, align 1, !range !36, !alias.scope !2283, !noundef !16
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.bl, label %.loopexit25

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2284
  store i32 0, ptr %i.m, align 4, !noalias !2284
  %.val141.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2283, !nonnull !16, !align !23, !noundef !16
  %i.gt = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtB18_2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val141.i.i.i, ptr noalias nofree noundef nonnull %i.m, i64 noundef 4), !noalias !2280 ; 2 uses
  %.not126.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not126.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2284
  br label %bb.dc

bb.bn:                                            ; preds = %bb.bl
  %.sroa.081.0.copyload.i.i.i = load i32, ptr %i.m, align 4, !noalias !2284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2284
  %i.gu = load i64, ptr %i.x, align 8, !alias.scope !2283, !noundef !16 ; 4 uses
  %i.gv = add i64 %i.gu, %i.df                    ; 3 uses
  %i.gw = load i64, ptr %i.ai, align 8, !alias.scope !2283, !noundef !16 ; 2 uses
  %i.gx = icmp ult i64 %i.gv, %i.gu
  %.not127.i.i.i = icmp ugt i64 %i.gv, %i.gw
  %or.cond.i.i.i = or i1 %i.gx, %.not127.i.i.i
  br i1 %or.cond.i.i.i, label %bb.bo, label %bb.bp, !prof !28

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.gu, i64 noundef %i.gv, i64 noundef %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #34, !noalias !2280
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.gy = load ptr, ptr %i.av, align 8, !alias.scope !2283, !nonnull !16, !noundef !16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gu
  %i.ha = call fastcc noundef ptr @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE20check_block_checksumCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gz, i64 noundef %i.df, i32 noundef %.sroa.081.0.copyload.i.i.i) #35, !noalias !2280 ; 2 uses
  %.not128.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not128.i.i.i, label %.loopexit25, label %bb.dc

bb.bq:                                            ; preds = %.loopexit25
  %i.hb = load i64, ptr %i.x, align 8, !alias.scope !2283, !noundef !16 ; 4 uses
  %i.hc = load i64, ptr %i.ai, align 8, !alias.scope !2283, !noundef !16 ; 2 uses
  %i.hd = icmp ult i64 %i.fp, %i.hb
  %.not139.i.i.i = icmp ugt i64 %i.fp, %i.hc
  %or.cond140.i.i.i = or i1 %i.hd, %.not139.i.i.i
  br i1 %or.cond140.i.i.i, label %bb.br, label %bb.bs, !prof !28

bb.br:                                            ; preds = %bb.bq
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.hb, i64 noundef %i.fp, i64 noundef %i.hc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #34, !noalias !2280
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.he = load ptr, ptr %i.av, align 8, !alias.scope !2283, !nonnull !16, !noundef !16
  %i.hf = sub nuw i64 %i.fp, %i.hb
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hb
  call fastcc void @_RNvXs5_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6HasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(56) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hg, i64 noundef %i.hf) #35, !noalias !2280
  br label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread16.i

bb.bt:                                            ; preds = %bb.x
  %i.hh = load i64, ptr %.sroa.467.0..sroa_idx.i.i.i, align 8, !alias.scope !2283, !noundef !16 ; 2 uses
  %i.hi = load i64, ptr %i.ak, align 8, !alias.scope !2283, !noundef !16 ; 2 uses
  %.not122.i.i.i = icmp eq i64 %i.hi, %i.hh
  br i1 %.not122.i.i.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.x
  %i.hj = load i8, ptr %i.as, align 2, !range !36, !alias.scope !2283, !noundef !16
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.bx, label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2284
  store i64 %i.hh, ptr %i.aq, align 8, !noalias !2284
  store i64 %i.hi, ptr %i.ar, align 8, !noalias !2284
  store i64 19, ptr %i.p, align 8, !noalias !2284
  %i.hl = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2284
  br label %bb.dc

bb.bw:                                            ; preds = %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, %bb.bu
  store i64 2, ptr %0, align 8, !alias.scope !2283
  br label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread16.i

bb.bx:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2284
  store i32 0, ptr %i.j, align 4, !noalias !2284
  %.val.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2283, !nonnull !16, !align !23, !noundef !16
  %i.hm = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtB18_2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, ptr noalias nofree noundef nonnull %i.j, i64 noundef 4), !noalias !2280 ; 2 uses
  %.not123.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not123.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2284
  br label %bb.dc

bb.bz:                                            ; preds = %bb.bx
  %.sroa.099.0.copyload.i.i.i = load i32, ptr %i.j, align 4, !noalias !2284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2284
  call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  %i.hn = load i64, ptr %.sroa.072.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2301, !noalias !2280, !noundef !16 ; 7 uses
  %i.ho = icmp ult i64 %i.hn, 17
  br i1 %i.ho, label %bb.cb, label %bb.ca, !prof !35

bb.ca:                                            ; preds = %bb.bz
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hn, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #34, !noalias !2302
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.hp = load i64, ptr %i.at, align 8, !alias.scope !2301, !noalias !2280, !noundef !16 ; 2 uses
  %i.hq = load i32, ptr %i.au, align 8, !alias.scope !2301, !noalias !2280, !noundef !16
  call void @llvm.experimental.noalias.scope.decl(metadata !2303), !noalias !2280
  call void @llvm.experimental.noalias.scope.decl(metadata !2304), !noalias !2280
  %i.hr = icmp ult i64 %i.hp, 16
  br i1 %i.hr, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hs = load i32, ptr %i.aj, align 8, !alias.scope !2305, !noalias !2280, !noundef !16 ; 2 uses
  %i.ht = load i32, ptr %.sroa.072.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 4, !alias.scope !2305, !noalias !2280, !noundef !16 ; 2 uses
  %i.hu = load i32, ptr %.sroa.072.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2305, !noalias !2280, !noundef !16 ; 2 uses
  %i.hv = load i32, ptr %.sroa.072.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 4, !alias.scope !2305, !noalias !2280, !noundef !16 ; 2 uses
  %i.hw = call noundef i32 @llvm.fshl.i32(i32 %i.hs, i32 %i.hs, i32 1)
  %i.hx = call noundef i32 @llvm.fshl.i32(i32 %i.ht, i32 %i.ht, i32 7)
  %i.hy = call noundef i32 @llvm.fshl.i32(i32 %i.hu, i32 %i.hu, i32 12)
  %i.hz = call noundef i32 @llvm.fshl.i32(i32 %i.hv, i32 %i.hv, i32 18)
  %i.ia = add i32 %i.hx, %i.hw
  %i.ib = add i32 %i.ia, %i.hy
  %i.ic = add i32 %i.ib, %i.hz
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.id = add i32 %i.hq, 374761393
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sroa.05.0.i.i = phi i32 [ %i.id, %bb.cd ], [ %i.ic, %bb.cc ]
  %i.ie = trunc i64 %i.hp to i32
  %i.if = add i32 %.sroa.05.0.i.i, %i.ie          ; 3 uses
  %i.ig = icmp samesign ugt i64 %i.hn, 3
  br i1 %i.ig, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.ce
  %i.ih = add nsw i64 %i.hn, -4                   ; 2 uses
  %i.ii = lshr i64 %i.ih, 2
  %i.ij = add nuw nsw i64 %i.ii, 1
  %xtraiter = and i64 %i.ij, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.030.i.i.prol = phi ptr [ %i.ik, %.lr.ph.i.i.prol ], [ %.sroa.072.sroa.0.sroa.7.0..sroa_idx.i.i.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.5.029.i.i.prol = phi i64 [ %i.il, %.lr.ph.i.i.prol ], [ %i.hn, %.lr.ph.i.i.preheader ]
  %.sroa.05.128.i.i.prol = phi i32 [ %i.ip, %.lr.ph.i.i.prol ], [ %i.if, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.prol, i64 4 ; 3 uses
  %i.il = add nsw i64 %.sroa.5.029.i.i.prol, -4   ; 3 uses
  %.sroa.023.0.copyload.i.i.prol = load i32, ptr %.sroa.0.030.i.i.prol, align 4, !alias.scope !2306, !noalias !2280
  %i.im = mul i32 %.sroa.023.0.copyload.i.i.prol, -1028477379
  %i.in = add i32 %i.im, %.sroa.05.128.i.i.prol   ; 2 uses
  %i.io = call noundef i32 @llvm.fshl.i32(i32 %i.in, i32 %i.in, i32 17)
  %i.ip = mul i32 %i.io, 668265263                ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2264

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.030.i.i.unr = phi ptr [ %.sroa.072.sroa.0.sroa.7.0..sroa_idx.i.i.i, %.lr.ph.i.i.preheader ], [ %i.ik, %.lr.ph.i.i.prol ]
  %.sroa.5.029.i.i.unr = phi i64 [ %i.hn, %.lr.ph.i.i.preheader ], [ %i.il, %.lr.ph.i.i.prol ]
  %.sroa.05.128.i.i.unr = phi i32 [ %i.if, %.lr.ph.i.i.preheader ], [ %i.ip, %.lr.ph.i.i.prol ]
  %.lcssa643.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.ik, %.lr.ph.i.i.prol ]
  %.lcssa642.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.il, %.lr.ph.i.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.ip, %.lr.ph.i.i.prol ]
  %i.iq = icmp ult i64 %i.ih, 12
  br i1 %i.iq, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.ce
  %.sroa.05.1.lcssa.i.i = phi i32 [ %i.if, %bb.ce ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.jv, %.lr.ph.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i = phi i64 [ %i.hn, %bb.ce ], [ %.lcssa642.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.jr, %.lr.ph.i.i ] ; 4 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.072.sroa.0.sroa.7.0..sroa_idx.i.i.i, %bb.ce ], [ %.lcssa643.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.jq, %.lr.ph.i.i ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 %.sroa.5.0.lcssa.i.i
  %i.is = icmp samesign eq i64 %.sroa.5.0.lcssa.i.i, 0
  br i1 %i.is, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i.preheader

.lr.ph36.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %xtraiter764 = and i64 %.sroa.5.0.lcssa.i.i, 3  ; 2 uses
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %.lr.ph36.i.i.prol.loopexit, label %.lr.ph36.i.i.prol

.lr.ph36.i.i.prol:                                ; preds = %.lr.ph36.i.i.preheader, %.lr.ph36.i.i.prol
  %.sroa.05.234.i.i.prol = phi i32 [ %i.iz, %.lr.ph36.i.i.prol ], [ %.sroa.05.1.lcssa.i.i, %.lr.ph36.i.i.preheader ]
  %.sroa.024.033.i.i.prol = phi ptr [ %i.it, %.lr.ph36.i.i.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph36.i.i.preheader ] ; 2 uses
  %prol.iter766 = phi i64 [ %prol.iter766.next, %.lr.ph36.i.i.prol ], [ 0, %.lr.ph36.i.i.preheader ]
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.prol, i64 1 ; 2 uses
  %i.iu = load i8, ptr %.sroa.024.033.i.i.prol, align 1, !alias.scope !2306, !noalias !2280, !noundef !16
  %i.iv = zext i8 %i.iu to i32
  %i.iw = mul i32 %i.iv, 374761393
  %i.ix = add i32 %i.iw, %.sroa.05.234.i.i.prol   ; 2 uses
  %i.iy = call noundef i32 @llvm.fshl.i32(i32 %i.ix, i32 %i.ix, i32 11)
  %i.iz = mul i32 %i.iy, -1640531535              ; 3 uses
  %prol.iter766.next = add i64 %prol.iter766, 1   ; 2 uses
  %prol.iter766.cmp.not = icmp eq i64 %prol.iter766.next, %xtraiter764
  br i1 %prol.iter766.cmp.not, label %.lr.ph36.i.i.prol.loopexit, label %.lr.ph36.i.i.prol, !llvm.loop !2265

.lr.ph36.i.i.prol.loopexit:                       ; preds = %.lr.ph36.i.i.prol, %.lr.ph36.i.i.preheader
  %.lcssa644.unr = phi i32 [ poison, %.lr.ph36.i.i.preheader ], [ %i.iz, %.lr.ph36.i.i.prol ]
  %.sroa.05.234.i.i.unr = phi i32 [ %.sroa.05.1.lcssa.i.i, %.lr.ph36.i.i.preheader ], [ %i.iz, %.lr.ph36.i.i.prol ]
  %.sroa.024.033.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph36.i.i.preheader ], [ %i.it, %.lr.ph36.i.i.prol ]
  %i.ja = icmp ult i64 %.sroa.5.0.lcssa.i.i, 4
  br i1 %i.ja, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.030.i.i = phi ptr [ %i.jq, %.lr.ph.i.i ], [ %.sroa.0.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.5.029.i.i = phi i64 [ %i.jr, %.lr.ph.i.i ], [ %.sroa.5.029.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.05.128.i.i = phi i32 [ %i.jv, %.lr.ph.i.i ], [ %.sroa.05.128.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 4
  %.sroa.023.0.copyload.i.i = load i32, ptr %.sroa.0.030.i.i, align 4, !alias.scope !2306, !noalias !2280
  %i.jc = mul i32 %.sroa.023.0.copyload.i.i, -1028477379
  %i.jd = add i32 %i.jc, %.sroa.05.128.i.i        ; 2 uses
  %i.je = call noundef i32 @llvm.fshl.i32(i32 %i.jd, i32 %i.jd, i32 17)
  %i.jf = mul i32 %i.je, 668265263
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 8
  %.sroa.023.0.copyload.i.i.1 = load i32, ptr %i.jb, align 4, !alias.scope !2306, !noalias !2280
  %i.jh = mul i32 %.sroa.023.0.copyload.i.i.1, -1028477379
  %i.ji = add i32 %i.jh, %i.jf                    ; 2 uses
  %i.jj = call noundef i32 @llvm.fshl.i32(i32 %i.ji, i32 %i.ji, i32 17)
  %i.jk = mul i32 %i.jj, 668265263
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 12
  %.sroa.023.0.copyload.i.i.2 = load i32, ptr %i.jg, align 4, !alias.scope !2306, !noalias !2280
  %i.jm = mul i32 %.sroa.023.0.copyload.i.i.2, -1028477379
  %i.jn = add i32 %i.jm, %i.jk                    ; 2 uses
  %i.jo = call noundef i32 @llvm.fshl.i32(i32 %i.jn, i32 %i.jn, i32 17)
  %i.jp = mul i32 %i.jo, 668265263
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 16 ; 2 uses
  %i.jr = add nsw i64 %.sroa.5.029.i.i, -16       ; 3 uses
  %.sroa.023.0.copyload.i.i.3 = load i32, ptr %i.jl, align 4, !alias.scope !2306, !noalias !2280
  %i.js = mul i32 %.sroa.023.0.copyload.i.i.3, -1028477379
  %i.jt = add i32 %i.js, %i.jp                    ; 2 uses
  %i.ju = call noundef i32 @llvm.fshl.i32(i32 %i.jt, i32 %i.jt, i32 17)
  %i.jv = mul i32 %i.ju, 668265263                ; 2 uses
  %i.jw = icmp ugt i64 %i.jr, 3
  br i1 %i.jw, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.i.i.prol.loopexit, %.lr.ph36.i.i
  %.sroa.05.234.i.i = phi i32 [ %i.ky, %.lr.ph36.i.i ], [ %.sroa.05.234.i.i.unr, %.lr.ph36.i.i.prol.loopexit ]
  %.sroa.024.033.i.i = phi ptr [ %i.ks, %.lr.ph36.i.i ], [ %.sroa.024.033.i.i.unr, %.lr.ph36.i.i.prol.loopexit ] ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 1
  %i.jy = load i8, ptr %.sroa.024.033.i.i, align 1, !alias.scope !2306, !noalias !2280, !noundef !16
  %i.jz = zext i8 %i.jy to i32
  %i.ka = mul i32 %i.jz, 374761393
  %i.kb = add i32 %i.ka, %.sroa.05.234.i.i        ; 2 uses
  %i.kc = call noundef i32 @llvm.fshl.i32(i32 %i.kb, i32 %i.kb, i32 11)
  %i.kd = mul i32 %i.kc, -1640531535
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 2
  %i.kf = load i8, ptr %i.jx, align 1, !alias.scope !2306, !noalias !2280, !noundef !16
  %i.kg = zext i8 %i.kf to i32
  %i.kh = mul i32 %i.kg, 374761393
  %i.ki = add i32 %i.kh, %i.kd                    ; 2 uses
  %i.kj = call noundef i32 @llvm.fshl.i32(i32 %i.ki, i32 %i.ki, i32 11)
  %i.kk = mul i32 %i.kj, -1640531535
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 3
  %i.km = load i8, ptr %i.ke, align 1, !alias.scope !2306, !noalias !2280, !noundef !16
  %i.kn = zext i8 %i.km to i32
  %i.ko = mul i32 %i.kn, 374761393
  %i.kp = add i32 %i.ko, %i.kk                    ; 2 uses
  %i.kq = call noundef i32 @llvm.fshl.i32(i32 %i.kp, i32 %i.kp, i32 11)
  %i.kr = mul i32 %i.kq, -1640531535
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 4 ; 2 uses
  %i.kt = load i8, ptr %i.kl, align 1, !alias.scope !2306, !noalias !2280, !noundef !16
  %i.ku = zext i8 %i.kt to i32
  %i.kv = mul i32 %i.ku, 374761393
  %i.kw = add i32 %i.kv, %i.kr                    ; 2 uses
  %i.kx = call noundef i32 @llvm.fshl.i32(i32 %i.kw, i32 %i.kw, i32 11)
  %i.ky = mul i32 %i.kx, -1640531535              ; 2 uses
  %i.kz = icmp eq ptr %i.ks, %i.ir
  br i1 %i.kz, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i

_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit: ; preds = %.lr.ph36.i.i.prol.loopexit, %.lr.ph36.i.i, %._crit_edge.i.i
  %.sroa.05.2.lcssa.i.i = phi i32 [ %.sroa.05.1.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa644.unr, %.lr.ph36.i.i.prol.loopexit ], [ %i.ky, %.lr.ph36.i.i ] ; 2 uses
  %i.la = lshr i32 %.sroa.05.2.lcssa.i.i, 15
  %i.lb = xor i32 %i.la, %.sroa.05.2.lcssa.i.i
  %i.lc = mul i32 %i.lb, -2048144777              ; 2 uses
  %i.ld = lshr i32 %i.lc, 13
  %i.le = xor i32 %i.ld, %i.lc
  %i.lf = mul i32 %i.le, -1028477379              ; 2 uses
  %i.lg = lshr i32 %i.lf, 16
  %i.lh = xor i32 %i.lg, %i.lf
  %.not124.i.i.i = icmp eq i32 %i.lh, %.sroa.099.0.copyload.i.i.i
  br i1 %.not124.i.i.i, label %bb.bw, label %bb.cf

bb.cf:                                            ; preds = %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2284
  store i64 16, ptr %i.o, align 8, !noalias !2284
  %i.li = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !2280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2284
  br label %bb.dc

bb.cg:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2281
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(19) %i.h, i8 0, i64 19, i1 false), !noalias !2281
  %.val122.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2279, !nonnull !16, !align !23, !noundef !16 ; 5 uses
  %i.lj = call { i64, ptr } @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRINtNtB9_3vec3VechEEENtNtB7_4read4Read4readCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val122.i.i.i, ptr noalias nofree noundef nonnull %i.h, i64 noundef 4), !noalias !2278 ; 2 uses
  %i.lk = extractvalue { i64, ptr } %i.lj, 0
  %i.ll = extractvalue { i64, ptr } %i.lj, 1      ; 3 uses
  %i.lm = ptrtoint ptr %i.ll to i64               ; 4 uses
  %i.ln = trunc nuw i64 %i.lk to i1
  br i1 %i.ln, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  switch i64 %i.lm, label %bb.ci [
    i64 0, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread8.i
    i64 4, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i.i
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.lo = icmp ugt ptr %i.ll, inttoptr (i64 4 to ptr)
  br i1 %i.lo, label %bb.ck, label %bb.cj, !prof !18

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.cj, %bb.ch
  %.sroa.076.0.copyload.i.i.i = load i32, ptr %i.h, align 4, !noalias !2281
  %i.lp = icmp eq i32 %.sroa.076.0.copyload.i.i.i, 407642370
  br i1 %i.lp, label %bb.cm, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.lq = sub nuw nsw i64 4, %i.lm
  %i.lr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lm
  %i.ls = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtB18_2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val122.i.i.i, ptr noalias nofree noundef nonnull %i.lr, i64 noundef range(i64 0, -9223372036854775808) %i.lq), !noalias !2278 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.ls, null
  br i1 %.not.i7.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i.i, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i

bb.ck:                                            ; preds = %bb.ci
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.lm, i64 noundef 4, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #34, !noalias !2278
  unreachable

bb.cl:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i.i
  %i.lt = call { i64, ptr } @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRINtNtB9_3vec3VechEEENtNtB7_4read4Read4readCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val122.i.i.i, ptr noalias nofree noundef nonnull %i.aa, i64 noundef 3), !noalias !2278 ; 2 uses
  %i.lu = extractvalue { i64, ptr } %i.lt, 0
  %i.lv = extractvalue { i64, ptr } %i.lt, 1      ; 2 uses
  %i.lw = ptrtoint ptr %i.lv to i64               ; 3 uses
  %i.lx = trunc nuw i64 %i.lu to i1
  br i1 %i.lx, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i, label %bb.cn

bb.cm:                                            ; preds = %bb.cp, %bb.cn, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2281
  call void @_RNvMs_NtNtCs6f1wo00zwKs_8lz4_flex5frame6headerNtB4_9FrameInfo9read_size(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 7), !noalias !2278
  %i.ly = load i64, ptr %i.g, align 8, !range !41, !noalias !2281, !noundef !16 ; 2 uses
  %.not117.i.i.i = icmp eq i64 %i.ly, -1
  %i.lz = load i64, ptr %i.ab, align 8, !noalias !2281 ; 5 uses
  br i1 %.not117.i.i.i, label %bb.cs, label %bb.cr

bb.cn:                                            ; preds = %bb.cl
  switch i64 %i.lw, label %bb.co [
    i64 0, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread8.i
    i64 7, label %bb.cm
  ]

bb.co:                                            ; preds = %bb.cn
  %i.ma = add i64 %i.lw, 4                        ; 3 uses
  %i.mb = icmp ugt i64 %i.ma, 7
  br i1 %i.mb, label %bb.cq, label %bb.cp, !prof !18

bb.cp:                                            ; preds = %bb.co
  %i.mc = sub nsw i64 3, %i.lw
  %i.md = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ma
  %i.me = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtB18_2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val122.i.i.i, ptr noalias nofree noundef nonnull %i.md, i64 noundef range(i64 0, -9223372036854775808) %i.mc), !noalias !2278 ; 2 uses
  %.not116.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not116.i.i.i, label %bb.cm, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i

bb.cq:                                            ; preds = %bb.co
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ma, i64 noundef 7, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #34, !noalias !2278
  unreachable

bb.cr:                                            ; preds = %bb.cm
  %.sroa.582.0.copyload.i.i.i = load i64, ptr %.sroa.582.0..sroa_idx.i.i.i, align 8, !noalias !2281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2281
  store i64 %i.ly, ptr %i.c, align 8, !noalias !2281
  store i64 %i.lz, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !noalias !2281
  store i64 %.sroa.582.0.copyload.i.i.i, ptr %.sroa.526.0..sroa_idx.i.i.i, align 8, !noalias !2281
  %i.mf = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2281
  br label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i

bb.cs:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2281
  switch i64 %i.lz, label %bb.ct [
    i64 7, label %bb.cw
    i64 4, label %bb.cw
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.mg = add i64 %i.lz, -7                       ; 2 uses
  %or.cond.i6.i.i = icmp ult i64 %i.mg, 13
  br i1 %or.cond.i6.i.i, label %bb.cv, label %bb.cu, !prof !35

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 7, i64 noundef %i.lz, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #34, !noalias !2278
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.mh = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtB18_2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val122.i.i.i, ptr noalias nofree noundef nonnull %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.mg), !noalias !2278 ; 2 uses
  %.not118.i.i.i = icmp eq ptr %i.mh, null
  br i1 %.not118.i.i.i, label %bb.cw, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i

bb.cw:                                            ; preds = %bb.cv, %bb.cs, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2281
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632.sroa.10.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2281
  call void @_RNvMs_NtNtCs6f1wo00zwKs_8lz4_flex5frame6headerNtB4_9FrameInfo4read(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.lz), !noalias !2278
  %i.mi = load i64, ptr %i.e, align 8, !range !21, !noalias !2281, !noundef !16 ; 3 uses
  %i.mj = icmp eq i64 %i.mi, 2
  %.sroa.094.0.copyload.i.i.i = load i64, ptr %i.ad, align 8, !noalias !2281 ; 3 uses
  %.sroa.495.0.copyload.i.i.i = load i32, ptr %.sroa.495.0..sroa_idx.i.i.i, align 8, !noalias !2281 ; 4 uses
  %.sroa.596.0.copyload.i.i.i = load i32, ptr %.sroa.596.0..sroa_idx.i.i.i, align 4, !noalias !2281 ; 3 uses
  %.sroa.697.0.copyload.i.i.i = load i8, ptr %.sroa.697.0..sroa_idx.i.i.i, align 8, !noalias !2281 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.632.sroa.10.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.798.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !2281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2281
  br i1 %i.mj, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.764.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.632.sroa.10.i.i.i, i64 7, i1 false), !noalias !2281
  store i64 %.sroa.094.0.copyload.i.i.i, ptr %i.b, align 8, !noalias !2281
  store i32 %.sroa.495.0.copyload.i.i.i, ptr %.sroa.461.0..sroa_idx.i4.i.i, align 8, !noalias !2281
  store i32 %.sroa.596.0.copyload.i.i.i, ptr %.sroa.562.0..sroa_idx.i5.i.i, align 4, !noalias !2281
  store i8 %.sroa.697.0.copyload.i.i.i, ptr %.sroa.663.0..sroa_idx.i.i.i, align 8, !noalias !2281
  %i.mk = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2281
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632.sroa.10.i.i.i)
  br label %bb.da

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.632.sroa.10.i.i.i, i64 7, i1 false), !noalias !2281
  store i64 %i.mi, ptr %i.f, align 8, !noalias !2281
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB4_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1d_6cursor6CursorRShEEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_endCsiAynQAjgDuT_10xet_client:bb.a
  call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr i8, ptr %i.ge, i64 %i.gd  ; 2 uses
  %i.gh = icmp ugt i64 %i.fz, 1
  br i1 %i.gh, label %._crit_edge.thread.i.i.i157.i.i.i, label %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsiAynQAjgDuT_10xet_client.exit.i154.i.i.i

._crit_edge.thread.i.i.i157.i.i.i:                ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i153.i.i.i
  %i.gi = add i64 %i.fz, -1                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gg, i8 0, i64 %i.gi, i1 false), !noalias !2374
  %i.gj = add i64 %i.gd, %i.gi                    ; 2 uses
  %scevgep.i.i.i158.i.i.i = getelementptr i8, ptr %i.ge, i64 %i.gj
  br label %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsiAynQAjgDuT_10xet_client.exit.i154.i.i.i

_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsiAynQAjgDuT_10xet_client.exit.i154.i.i.i: ; preds = %._crit_edge.thread.i.i.i157.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i153.i.i.i
  %.sroa.0.0.lcssa28.i.i.i155.i.i.i = phi ptr [ %scevgep.i.i.i158.i.i.i, %._crit_edge.thread.i.i.i157.i.i.i ], [ %i.gg, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i153.i.i.i ]
  %storemerge.lcssa27.i.i.i156.i.i.i = phi i64 [ %i.gj, %._crit_edge.thread.i.i.i157.i.i.i ], [ %i.gd, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client.exit.i.i.i153.i.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i.i155.i.i.i, align 1, !noalias !2374
  %i.gk = add i64 %storemerge.lcssa27.i.i.i156.i.i.i, 1 ; 2 uses
  store i64 %i.gk, ptr %i.ai, align 8, !alias.scope !2394
  br label %bb.bh

bb.bh:                                            ; preds = %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsiAynQAjgDuT_10xet_client.exit.i154.i.i.i, %bb.be
  %i.gl = phi i64 [ %i.fw, %bb.be ], [ %i.gk, %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsiAynQAjgDuT_10xet_client.exit.i154.i.i.i ] ; 2 uses
  %i.gm = icmp ult i64 %i.fv, %i.fu
  %.not.i152.i.i.i = icmp ugt i64 %i.fv, %i.gl
  %or.cond.i.i.i.i = or i1 %i.gm, %.not.i152.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.bi, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress22vec_resize_and_get_mut.exit160.i.i.i, !prof !28

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.fu, i64 noundef %i.fv, i64 noundef %i.gl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #34, !noalias !2374
  unreachable

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress22vec_resize_and_get_mut.exit160.i.i.i: ; preds = %bb.bh
  %i.gn = load ptr, ptr %i.av, align 8, !alias.scope !2391, !nonnull !16, !noundef !16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.fu
  %.val145.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2377, !nonnull !16, !align !23, !noundef !16
  %i.gp = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val145.i.i.i, ptr noalias nofree noundef nonnull %i.go, i64 noundef range(i64 0, -9223372036854775808) %i.df), !noalias !2374 ; 2 uses
  %.not125.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not125.i.i.i, label %bb.bk, label %bb.dc

bb.bj:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2378
  store i64 13, ptr %i.u, align 8, !noalias !2378
  %i.gq = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u), !noalias !2374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2378
  br label %bb.dc

bb.bk:                                            ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompress22vec_resize_and_get_mut.exit160.i.i.i
  %i.gr = load i8, ptr %.sroa.871.0..sroa_idx.i.i.i, align 1, !range !36, !alias.scope !2377, !noundef !16
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.bl, label %.loopexit25

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2378
  store i32 0, ptr %i.m, align 4, !noalias !2378
  %.val144.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2377, !nonnull !16, !align !23, !noundef !16
  %i.gt = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val144.i.i.i, ptr noalias nofree noundef nonnull %i.m, i64 noundef 4), !noalias !2374 ; 2 uses
  %.not126.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not126.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2378
  br label %bb.dc

bb.bn:                                            ; preds = %bb.bl
  %.sroa.081.0.copyload.i.i.i = load i32, ptr %i.m, align 4, !noalias !2378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2378
  %i.gu = load i64, ptr %i.x, align 8, !alias.scope !2377, !noundef !16 ; 4 uses
  %i.gv = add i64 %i.gu, %i.df                    ; 3 uses
  %i.gw = load i64, ptr %i.ai, align 8, !alias.scope !2377, !noundef !16 ; 2 uses
  %i.gx = icmp ult i64 %i.gv, %i.gu
  %.not127.i.i.i = icmp ugt i64 %i.gv, %i.gw
  %or.cond.i.i.i = or i1 %i.gx, %.not127.i.i.i
  br i1 %or.cond.i.i.i, label %bb.bo, label %bb.bp, !prof !28

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.gu, i64 noundef %i.gv, i64 noundef %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #34, !noalias !2374
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.gy = load ptr, ptr %i.av, align 8, !alias.scope !2377, !nonnull !16, !noundef !16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gu
  %i.ha = call fastcc noundef ptr @_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE20check_block_checksumCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gz, i64 noundef %i.df, i32 noundef %.sroa.081.0.copyload.i.i.i) #35, !noalias !2374 ; 2 uses
  %.not128.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not128.i.i.i, label %.loopexit25, label %bb.dc

bb.bq:                                            ; preds = %.loopexit25
  %i.hb = load i64, ptr %i.x, align 8, !alias.scope !2377, !noundef !16 ; 4 uses
  %i.hc = load i64, ptr %i.ai, align 8, !alias.scope !2377, !noundef !16 ; 2 uses
  %i.hd = icmp ult i64 %i.fp, %i.hb
  %.not139.i.i.i = icmp ugt i64 %i.fp, %i.hc
  %or.cond140.i.i.i = or i1 %i.hd, %.not139.i.i.i
  br i1 %or.cond140.i.i.i, label %bb.br, label %bb.bs, !prof !28

bb.br:                                            ; preds = %bb.bq
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.hb, i64 noundef %i.fp, i64 noundef %i.hc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #34, !noalias !2374
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.he = load ptr, ptr %i.av, align 8, !alias.scope !2377, !nonnull !16, !noundef !16
  %i.hf = sub nuw i64 %i.fp, %i.hb
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hb
  call fastcc void @_RNvXs5_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6HasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(56) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hg, i64 noundef %i.hf) #35, !noalias !2374
  br label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread16.i

bb.bt:                                            ; preds = %bb.x
  %i.hh = load i64, ptr %.sroa.467.0..sroa_idx.i.i.i, align 8, !alias.scope !2377, !noundef !16 ; 2 uses
  %i.hi = load i64, ptr %i.ak, align 8, !alias.scope !2377, !noundef !16 ; 2 uses
  %.not122.i.i.i = icmp eq i64 %i.hi, %i.hh
  br i1 %.not122.i.i.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.x
  %i.hj = load i8, ptr %i.as, align 2, !range !36, !alias.scope !2377, !noundef !16
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.bx, label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2378
  store i64 %i.hh, ptr %i.aq, align 8, !noalias !2378
  store i64 %i.hi, ptr %i.ar, align 8, !noalias !2378
  store i64 19, ptr %i.p, align 8, !noalias !2378
  %i.hl = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p), !noalias !2374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2378
  br label %bb.dc

bb.bw:                                            ; preds = %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, %bb.bu
  store i64 2, ptr %0, align 8, !alias.scope !2377
  br label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread16.i

bb.bx:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2378
  store i32 0, ptr %i.j, align 4, !noalias !2378
  %.val143.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2377, !nonnull !16, !align !23, !noundef !16
  %i.hm = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val143.i.i.i, ptr noalias nofree noundef nonnull %i.j, i64 noundef 4), !noalias !2374 ; 2 uses
  %.not123.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not123.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2378
  br label %bb.dc

bb.bz:                                            ; preds = %bb.bx
  %.sroa.099.0.copyload.i.i.i = load i32, ptr %i.j, align 4, !noalias !2378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2378
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  %i.hn = load i64, ptr %.sroa.072.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2395, !noalias !2374, !noundef !16 ; 7 uses
  %i.ho = icmp ult i64 %i.hn, 17
  br i1 %i.ho, label %bb.cb, label %bb.ca, !prof !35

bb.ca:                                            ; preds = %bb.bz
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hn, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #34, !noalias !2396
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.hp = load i64, ptr %i.at, align 8, !alias.scope !2395, !noalias !2374, !noundef !16 ; 2 uses
  %i.hq = load i32, ptr %i.au, align 8, !alias.scope !2395, !noalias !2374, !noundef !16
  call void @llvm.experimental.noalias.scope.decl(metadata !2397), !noalias !2374
  call void @llvm.experimental.noalias.scope.decl(metadata !2398), !noalias !2374
  %i.hr = icmp ult i64 %i.hp, 16
  br i1 %i.hr, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hs = load i32, ptr %i.aj, align 8, !alias.scope !2399, !noalias !2374, !noundef !16 ; 2 uses
  %i.ht = load i32, ptr %.sroa.072.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 4, !alias.scope !2399, !noalias !2374, !noundef !16 ; 2 uses
  %i.hu = load i32, ptr %.sroa.072.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2399, !noalias !2374, !noundef !16 ; 2 uses
  %i.hv = load i32, ptr %.sroa.072.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 4, !alias.scope !2399, !noalias !2374, !noundef !16 ; 2 uses
  %i.hw = call noundef i32 @llvm.fshl.i32(i32 %i.hs, i32 %i.hs, i32 1)
  %i.hx = call noundef i32 @llvm.fshl.i32(i32 %i.ht, i32 %i.ht, i32 7)
  %i.hy = call noundef i32 @llvm.fshl.i32(i32 %i.hu, i32 %i.hu, i32 12)
  %i.hz = call noundef i32 @llvm.fshl.i32(i32 %i.hv, i32 %i.hv, i32 18)
  %i.ia = add i32 %i.hx, %i.hw
  %i.ib = add i32 %i.ia, %i.hy
  %i.ic = add i32 %i.ib, %i.hz
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.id = add i32 %i.hq, 374761393
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sroa.05.0.i.i = phi i32 [ %i.id, %bb.cd ], [ %i.ic, %bb.cc ]
  %i.ie = trunc i64 %i.hp to i32
  %i.if = add i32 %.sroa.05.0.i.i, %i.ie          ; 3 uses
  %i.ig = icmp samesign ugt i64 %i.hn, 3
  br i1 %i.ig, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.ce
  %i.ih = add nsw i64 %i.hn, -4                   ; 2 uses
  %i.ii = lshr i64 %i.ih, 2
  %i.ij = add nuw nsw i64 %i.ii, 1
  %xtraiter = and i64 %i.ij, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.030.i.i.prol = phi ptr [ %i.ik, %.lr.ph.i.i.prol ], [ %.sroa.072.sroa.0.sroa.7.0..sroa_idx.i.i.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.5.029.i.i.prol = phi i64 [ %i.il, %.lr.ph.i.i.prol ], [ %i.hn, %.lr.ph.i.i.preheader ]
  %.sroa.05.128.i.i.prol = phi i32 [ %i.ip, %.lr.ph.i.i.prol ], [ %i.if, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.prol, i64 4 ; 3 uses
  %i.il = add nsw i64 %.sroa.5.029.i.i.prol, -4   ; 3 uses
  %.sroa.023.0.copyload.i.i.prol = load i32, ptr %.sroa.0.030.i.i.prol, align 4, !alias.scope !2400, !noalias !2374
  %i.im = mul i32 %.sroa.023.0.copyload.i.i.prol, -1028477379
  %i.in = add i32 %i.im, %.sroa.05.128.i.i.prol   ; 2 uses
  %i.io = call noundef i32 @llvm.fshl.i32(i32 %i.in, i32 %i.in, i32 17)
  %i.ip = mul i32 %i.io, 668265263                ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2358

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.030.i.i.unr = phi ptr [ %.sroa.072.sroa.0.sroa.7.0..sroa_idx.i.i.i, %.lr.ph.i.i.preheader ], [ %i.ik, %.lr.ph.i.i.prol ]
  %.sroa.5.029.i.i.unr = phi i64 [ %i.hn, %.lr.ph.i.i.preheader ], [ %i.il, %.lr.ph.i.i.prol ]
  %.sroa.05.128.i.i.unr = phi i32 [ %i.if, %.lr.ph.i.i.preheader ], [ %i.ip, %.lr.ph.i.i.prol ]
  %.lcssa643.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.ik, %.lr.ph.i.i.prol ]
  %.lcssa642.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.il, %.lr.ph.i.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.ip, %.lr.ph.i.i.prol ]
  %i.iq = icmp ult i64 %i.ih, 12
  br i1 %i.iq, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.ce
  %.sroa.05.1.lcssa.i.i = phi i32 [ %i.if, %bb.ce ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.jv, %.lr.ph.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i = phi i64 [ %i.hn, %bb.ce ], [ %.lcssa642.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.jr, %.lr.ph.i.i ] ; 4 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.072.sroa.0.sroa.7.0..sroa_idx.i.i.i, %bb.ce ], [ %.lcssa643.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.jq, %.lr.ph.i.i ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 %.sroa.5.0.lcssa.i.i
  %i.is = icmp samesign eq i64 %.sroa.5.0.lcssa.i.i, 0
  br i1 %i.is, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i.preheader

.lr.ph36.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %xtraiter764 = and i64 %.sroa.5.0.lcssa.i.i, 3  ; 2 uses
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %.lr.ph36.i.i.prol.loopexit, label %.lr.ph36.i.i.prol

.lr.ph36.i.i.prol:                                ; preds = %.lr.ph36.i.i.preheader, %.lr.ph36.i.i.prol
  %.sroa.05.234.i.i.prol = phi i32 [ %i.iz, %.lr.ph36.i.i.prol ], [ %.sroa.05.1.lcssa.i.i, %.lr.ph36.i.i.preheader ]
  %.sroa.024.033.i.i.prol = phi ptr [ %i.it, %.lr.ph36.i.i.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph36.i.i.preheader ] ; 2 uses
  %prol.iter766 = phi i64 [ %prol.iter766.next, %.lr.ph36.i.i.prol ], [ 0, %.lr.ph36.i.i.preheader ]
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i.prol, i64 1 ; 2 uses
  %i.iu = load i8, ptr %.sroa.024.033.i.i.prol, align 1, !alias.scope !2400, !noalias !2374, !noundef !16
  %i.iv = zext i8 %i.iu to i32
  %i.iw = mul i32 %i.iv, 374761393
  %i.ix = add i32 %i.iw, %.sroa.05.234.i.i.prol   ; 2 uses
  %i.iy = call noundef i32 @llvm.fshl.i32(i32 %i.ix, i32 %i.ix, i32 11)
  %i.iz = mul i32 %i.iy, -1640531535              ; 3 uses
  %prol.iter766.next = add i64 %prol.iter766, 1   ; 2 uses
  %prol.iter766.cmp.not = icmp eq i64 %prol.iter766.next, %xtraiter764
  br i1 %prol.iter766.cmp.not, label %.lr.ph36.i.i.prol.loopexit, label %.lr.ph36.i.i.prol, !llvm.loop !2359

.lr.ph36.i.i.prol.loopexit:                       ; preds = %.lr.ph36.i.i.prol, %.lr.ph36.i.i.preheader
  %.lcssa644.unr = phi i32 [ poison, %.lr.ph36.i.i.preheader ], [ %i.iz, %.lr.ph36.i.i.prol ]
  %.sroa.05.234.i.i.unr = phi i32 [ %.sroa.05.1.lcssa.i.i, %.lr.ph36.i.i.preheader ], [ %i.iz, %.lr.ph36.i.i.prol ]
  %.sroa.024.033.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph36.i.i.preheader ], [ %i.it, %.lr.ph36.i.i.prol ]
  %i.ja = icmp ult i64 %.sroa.5.0.lcssa.i.i, 4
  br i1 %i.ja, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.030.i.i = phi ptr [ %i.jq, %.lr.ph.i.i ], [ %.sroa.0.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.5.029.i.i = phi i64 [ %i.jr, %.lr.ph.i.i ], [ %.sroa.5.029.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.05.128.i.i = phi i32 [ %i.jv, %.lr.ph.i.i ], [ %.sroa.05.128.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 4
  %.sroa.023.0.copyload.i.i = load i32, ptr %.sroa.0.030.i.i, align 4, !alias.scope !2400, !noalias !2374
  %i.jc = mul i32 %.sroa.023.0.copyload.i.i, -1028477379
  %i.jd = add i32 %i.jc, %.sroa.05.128.i.i        ; 2 uses
  %i.je = call noundef i32 @llvm.fshl.i32(i32 %i.jd, i32 %i.jd, i32 17)
  %i.jf = mul i32 %i.je, 668265263
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 8
  %.sroa.023.0.copyload.i.i.1 = load i32, ptr %i.jb, align 4, !alias.scope !2400, !noalias !2374
  %i.jh = mul i32 %.sroa.023.0.copyload.i.i.1, -1028477379
  %i.ji = add i32 %i.jh, %i.jf                    ; 2 uses
  %i.jj = call noundef i32 @llvm.fshl.i32(i32 %i.ji, i32 %i.ji, i32 17)
  %i.jk = mul i32 %i.jj, 668265263
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 12
  %.sroa.023.0.copyload.i.i.2 = load i32, ptr %i.jg, align 4, !alias.scope !2400, !noalias !2374
  %i.jm = mul i32 %.sroa.023.0.copyload.i.i.2, -1028477379
  %i.jn = add i32 %i.jm, %i.jk                    ; 2 uses
  %i.jo = call noundef i32 @llvm.fshl.i32(i32 %i.jn, i32 %i.jn, i32 17)
  %i.jp = mul i32 %i.jo, 668265263
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 16 ; 2 uses
  %i.jr = add nsw i64 %.sroa.5.029.i.i, -16       ; 3 uses
  %.sroa.023.0.copyload.i.i.3 = load i32, ptr %i.jl, align 4, !alias.scope !2400, !noalias !2374
  %i.js = mul i32 %.sroa.023.0.copyload.i.i.3, -1028477379
  %i.jt = add i32 %i.js, %i.jp                    ; 2 uses
  %i.ju = call noundef i32 @llvm.fshl.i32(i32 %i.jt, i32 %i.jt, i32 17)
  %i.jv = mul i32 %i.ju, 668265263                ; 2 uses
  %i.jw = icmp ugt i64 %i.jr, 3
  br i1 %i.jw, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.i.i.prol.loopexit, %.lr.ph36.i.i
  %.sroa.05.234.i.i = phi i32 [ %i.ky, %.lr.ph36.i.i ], [ %.sroa.05.234.i.i.unr, %.lr.ph36.i.i.prol.loopexit ]
  %.sroa.024.033.i.i = phi ptr [ %i.ks, %.lr.ph36.i.i ], [ %.sroa.024.033.i.i.unr, %.lr.ph36.i.i.prol.loopexit ] ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 1
  %i.jy = load i8, ptr %.sroa.024.033.i.i, align 1, !alias.scope !2400, !noalias !2374, !noundef !16
  %i.jz = zext i8 %i.jy to i32
  %i.ka = mul i32 %i.jz, 374761393
  %i.kb = add i32 %i.ka, %.sroa.05.234.i.i        ; 2 uses
  %i.kc = call noundef i32 @llvm.fshl.i32(i32 %i.kb, i32 %i.kb, i32 11)
  %i.kd = mul i32 %i.kc, -1640531535
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 2
  %i.kf = load i8, ptr %i.jx, align 1, !alias.scope !2400, !noalias !2374, !noundef !16
  %i.kg = zext i8 %i.kf to i32
  %i.kh = mul i32 %i.kg, 374761393
  %i.ki = add i32 %i.kh, %i.kd                    ; 2 uses
  %i.kj = call noundef i32 @llvm.fshl.i32(i32 %i.ki, i32 %i.ki, i32 11)
  %i.kk = mul i32 %i.kj, -1640531535
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 3
  %i.km = load i8, ptr %i.ke, align 1, !alias.scope !2400, !noalias !2374, !noundef !16
  %i.kn = zext i8 %i.km to i32
  %i.ko = mul i32 %i.kn, 374761393
  %i.kp = add i32 %i.ko, %i.kk                    ; 2 uses
  %i.kq = call noundef i32 @llvm.fshl.i32(i32 %i.kp, i32 %i.kp, i32 11)
  %i.kr = mul i32 %i.kq, -1640531535
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 4 ; 2 uses
  %i.kt = load i8, ptr %i.kl, align 1, !alias.scope !2400, !noalias !2374, !noundef !16
  %i.ku = zext i8 %i.kt to i32
  %i.kv = mul i32 %i.ku, 374761393
  %i.kw = add i32 %i.kv, %i.kr                    ; 2 uses
  %i.kx = call noundef i32 @llvm.fshl.i32(i32 %i.kw, i32 %i.kw, i32 11)
  %i.ky = mul i32 %i.kx, -1640531535              ; 2 uses
  %i.kz = icmp eq ptr %i.ks, %i.ir
  br i1 %i.kz, label %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit, label %.lr.ph36.i.i

_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit: ; preds = %.lr.ph36.i.i.prol.loopexit, %.lr.ph36.i.i, %._crit_edge.i.i
  %.sroa.05.2.lcssa.i.i = phi i32 [ %.sroa.05.1.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa644.unr, %.lr.ph36.i.i.prol.loopexit ], [ %i.ky, %.lr.ph36.i.i ] ; 2 uses
  %i.la = lshr i32 %.sroa.05.2.lcssa.i.i, 15
  %i.lb = xor i32 %i.la, %.sroa.05.2.lcssa.i.i
  %i.lc = mul i32 %i.lb, -2048144777              ; 2 uses
  %i.ld = lshr i32 %i.lc, 13
  %i.le = xor i32 %i.ld, %i.lc
  %i.lf = mul i32 %i.le, -1028477379              ; 2 uses
  %i.lg = lshr i32 %i.lf, 16
  %i.lh = xor i32 %i.lg, %i.lf
  %.not124.i.i.i = icmp eq i32 %i.lh, %.sroa.099.0.copyload.i.i.i
  br i1 %.not124.i.i.i, label %bb.bw, label %bb.cf

bb.cf:                                            ; preds = %_RNvMs4_NtCsbwUtjJmvgNQ_9twox_hash8xxhash32NtB5_6Hasher9finish_32.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2378
  store i64 16, ptr %i.o, align 8, !noalias !2378
  %i.li = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !2374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2378
  br label %bb.dc

bb.cg:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2375
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(19) %i.h, i8 0, i64 19, i1 false), !noalias !2375
  %.val122.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2373, !nonnull !16, !align !23, !noundef !16 ; 5 uses
  %i.lj = call { i64, ptr } @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read4readCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val122.i.i.i, ptr noalias nofree noundef nonnull %i.h, i64 noundef 4), !noalias !2372 ; 2 uses
  %i.lk = extractvalue { i64, ptr } %i.lj, 0
  %i.ll = extractvalue { i64, ptr } %i.lj, 1      ; 3 uses
  %i.lm = ptrtoint ptr %i.ll to i64               ; 4 uses
  %i.ln = trunc nuw i64 %i.lk to i1
  br i1 %i.ln, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  switch i64 %i.lm, label %bb.ci [
    i64 0, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread8.i
    i64 4, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i.i
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.lo = icmp ugt ptr %i.ll, inttoptr (i64 4 to ptr)
  br i1 %i.lo, label %bb.ck, label %bb.cj, !prof !18

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.cj, %bb.ch
  %.sroa.076.0.copyload.i.i.i = load i32, ptr %i.h, align 4, !noalias !2375
  %i.lp = icmp eq i32 %.sroa.076.0.copyload.i.i.i, 407642370
  br i1 %i.lp, label %bb.cm, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.lq = sub nuw nsw i64 4, %i.lm
  %i.lr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lm
  %i.ls = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val122.i.i.i, ptr noalias nofree noundef nonnull %i.lr, i64 noundef range(i64 0, -9223372036854775808) %i.lq), !noalias !2372 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.ls, null
  br i1 %.not.i7.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i.i, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i

bb.ck:                                            ; preds = %bb.ci
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.lm, i64 noundef 4, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #34, !noalias !2372
  unreachable

bb.cl:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i.i
  %i.lt = call { i64, ptr } @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read4readCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val122.i.i.i, ptr noalias nofree noundef nonnull %i.aa, i64 noundef 3), !noalias !2372 ; 2 uses
  %i.lu = extractvalue { i64, ptr } %i.lt, 0
  %i.lv = extractvalue { i64, ptr } %i.lt, 1      ; 2 uses
  %i.lw = ptrtoint ptr %i.lv to i64               ; 3 uses
  %i.lx = trunc nuw i64 %i.lu to i1
  br i1 %i.lx, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i, label %bb.cn

bb.cm:                                            ; preds = %bb.cp, %bb.cn, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsiAynQAjgDuT_10xet_client.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2375
  call void @_RNvMs_NtNtCs6f1wo00zwKs_8lz4_flex5frame6headerNtB4_9FrameInfo9read_size(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 7), !noalias !2372
  %i.ly = load i64, ptr %i.g, align 8, !range !41, !noalias !2375, !noundef !16 ; 2 uses
  %.not117.i.i.i = icmp eq i64 %i.ly, -1
  %i.lz = load i64, ptr %i.ab, align 8, !noalias !2375 ; 5 uses
  br i1 %.not117.i.i.i, label %bb.cs, label %bb.cr

bb.cn:                                            ; preds = %bb.cl
  switch i64 %i.lw, label %bb.co [
    i64 0, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread8.i
    i64 7, label %bb.cm
  ]

bb.co:                                            ; preds = %bb.cn
  %i.ma = add i64 %i.lw, 4                        ; 3 uses
  %i.mb = icmp ugt i64 %i.ma, 7
  br i1 %i.mb, label %bb.cq, label %bb.cp, !prof !18

bb.cp:                                            ; preds = %bb.co
  %i.mc = sub nsw i64 3, %i.lw
  %i.md = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ma
  %i.me = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val122.i.i.i, ptr noalias nofree noundef nonnull %i.md, i64 noundef range(i64 0, -9223372036854775808) %i.mc), !noalias !2372 ; 2 uses
  %.not116.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not116.i.i.i, label %bb.cm, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i

bb.cq:                                            ; preds = %bb.co
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ma, i64 noundef 7, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #34, !noalias !2372
  unreachable

bb.cr:                                            ; preds = %bb.cm
  %.sroa.582.0.copyload.i.i.i = load i64, ptr %.sroa.582.0..sroa_idx.i.i.i, align 8, !noalias !2375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2375
  store i64 %i.ly, ptr %i.c, align 8, !noalias !2375
  store i64 %i.lz, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !noalias !2375
  store i64 %.sroa.582.0.copyload.i.i.i, ptr %.sroa.526.0..sroa_idx.i.i.i, align 8, !noalias !2375
  %i.mf = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2375
  br label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i

bb.cs:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2375
  switch i64 %i.lz, label %bb.ct [
    i64 7, label %bb.cw
    i64 4, label %bb.cw
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.mg = add i64 %i.lz, -7                       ; 2 uses
  %or.cond.i6.i.i = icmp ult i64 %i.mg, 13
  br i1 %or.cond.i6.i.i, label %bb.cv, label %bb.cu, !prof !35

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 7, i64 noundef %i.lz, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #34, !noalias !2372
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.mh = call noundef ptr @_RNvYINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read10read_exactCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val122.i.i.i, ptr noalias nofree noundef nonnull %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.mg), !noalias !2372 ; 2 uses
  %.not118.i.i.i = icmp eq ptr %i.mh, null
  br i1 %.not118.i.i.i, label %bb.cw, label %_RNvMNtNtCs6f1wo00zwKs_8lz4_flex5frame10decompressINtB2_12FrameDecoderQINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1b_6cursor6CursorRShEEE9read_moreCsiAynQAjgDuT_10xet_client.exit.thread.i

bb.cw:                                            ; preds = %bb.cv, %bb.cs, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2375
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632.sroa.10.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2375
  call void @_RNvMs_NtNtCs6f1wo00zwKs_8lz4_flex5frame6headerNtB4_9FrameInfo4read(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.lz), !noalias !2372
  %i.mi = load i64, ptr %i.e, align 8, !range !21, !noalias !2375, !noundef !16 ; 3 uses
  %i.mj = icmp eq i64 %i.mi, 2
  %.sroa.094.0.copyload.i.i.i = load i64, ptr %i.ad, align 8, !noalias !2375 ; 3 uses
  %.sroa.495.0.copyload.i.i.i = load i32, ptr %.sroa.495.0..sroa_idx.i.i.i, align 8, !noalias !2375 ; 4 uses
  %.sroa.596.0.copyload.i.i.i = load i32, ptr %.sroa.596.0..sroa_idx.i.i.i, align 4, !noalias !2375 ; 3 uses
  %.sroa.697.0.copyload.i.i.i = load i8, ptr %.sroa.697.0..sroa_idx.i.i.i, align 8, !noalias !2375 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.632.sroa.10.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.798.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !2375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2375
  br i1 %i.mj, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.764.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.632.sroa.10.i.i.i, i64 7, i1 false), !noalias !2375
  store i64 %.sroa.094.0.copyload.i.i.i, ptr %i.b, align 8, !noalias !2375
  store i32 %.sroa.495.0.copyload.i.i.i, ptr %.sroa.461.0..sroa_idx.i4.i.i, align 8, !noalias !2375
  store i32 %.sroa.596.0.copyload.i.i.i, ptr %.sroa.562.0..sroa_idx.i5.i.i, align 4, !noalias !2375
  store i8 %.sroa.697.0.copyload.i.i.i, ptr %.sroa.663.0..sroa_idx.i.i.i, align 8, !noalias !2375
  %i.mk = call noundef nonnull ptr @_RNvXNtCs6f1wo00zwKs_8lz4_flex5frameNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBD_7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2375
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632.sroa.10.i.i.i)
  br label %bb.da

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.632.sroa.10.i.i.i, i64 7, i1 false), !noalias !2375
  store i64 %i.mi, ptr %i.f, align 8, !noalias !2375
end_hunk_2
