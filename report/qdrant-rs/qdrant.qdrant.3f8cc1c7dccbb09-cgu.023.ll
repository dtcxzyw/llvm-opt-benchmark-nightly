Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.023?download=true
inline.NumInlined: 4025
inline.NumDeleted: 1932
begin_hunk_0_@_RINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIBR_IBR_fEEECsl8OoimOLbh_6qdrant:bb.a
_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRINtNtCsexYYUdYSQU6_5alloc3vec3VecfEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2l_3ser10SerializerQIB1m_hEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB1m_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit
  %.sroa.0.0 = phi ptr [ %i.e, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit ], [ null, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split ], [ %i.k, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRINtNtCsexYYUdYSQU6_5alloc3vec3VecfEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2l_3ser10SerializerQIB1m_hEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB1m_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIBR_NtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9 = load i64, ptr %i.b, align 8, !noundef !10 ; 3 uses
  %.idx = mul nuw nsw i64 %.val9, 304
  %i.c = getelementptr inbounds nuw i8, ptr %.val8, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14720)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !14720, !noalias !14721, !nonnull !10, !align !11, !noundef !10 ; 2 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14722
  %i.d = icmp eq i64 %.val9, 0
  br i1 %i.d, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RINvXNvNtCs931dBByOpY6_6issues8solutions1_1__NtB5_17ImmediateSolutionNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %.val8, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !14723 ; 2 uses
  %.not6.peel.i.i = icmp eq ptr %i.e, null
  br i1 %.not6.peel.i.i, label %.peel.next.i.i.preheader, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

.peel.next.i.i.preheader:                         ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit
  %i.f = icmp eq i64 %.val9, 1
  %.val3035 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  br i1 %i.f, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2D_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB3O_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.lr.ph

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2D_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB3O_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.lr.ph: ; preds = %.peel.next.i.i.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.val8, i64 304
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2D_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB3O_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i

.peel.next.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2D_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB3O_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.j, i64 304 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c
  %.val30 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  br i1 %i.i, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2D_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB3O_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i, !llvm.loop !14718

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2D_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB3O_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2D_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB3O_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.lr.ph, %.peel.next.i.i
  %.val3036 = phi ptr [ %.val3035, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2D_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB3O_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.lr.ph ], [ %.val30, %.peel.next.i.i ]
  %i.j = phi ptr [ %i.g, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2D_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB3O_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.lr.ph ], [ %i.h, %.peel.next.i.i ] ; 2 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val3036, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14724
  %i.k = tail call noundef align 8 ptr @_RINvXNvNtCs931dBByOpY6_6issues8solutions1_1__NtB5_17ImmediateSolutionNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !14724 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.k, null
  br i1 %.not6.i.i, label %.peel.next.i.i, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit, !llvm.loop !14718

_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split: ; preds = %.peel.next.i.i, %.peel.next.i.i.preheader, %bb.a
  %.val30.sink = phi ptr [ %.val.i, %bb.a ], [ %.val3035, %.peel.next.i.i.preheader ], [ %.val30, %.peel.next.i.i ]
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val30.sink, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2D_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB3O_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit
  %.sroa.0.0 = phi ptr [ %i.e, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit ], [ null, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split ], [ %i.k, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs931dBByOpY6_6issues8solution17ImmediateSolutionINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB2D_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB3O_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIBR_NtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9 = load i64, ptr %i.b, align 8, !noundef !10 ; 3 uses
  %.idx = mul nuw nsw i64 %.val9, 72
  %i.c = getelementptr inbounds nuw i8, ptr %.val8, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14742)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !14742, !noalias !14743, !nonnull !10, !align !11, !noundef !10 ; 2 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14744
  %i.d = icmp eq i64 %.val9, 0
  br i1 %i.d, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RINvXNvNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappings3_1__NtB5_10KeyIdsPairNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val8, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !14745 ; 2 uses
  %.not6.peel.i.i = icmp eq ptr %i.e, null
  br i1 %.not6.peel.i.i, label %.peel.next.i.i.preheader, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

.peel.next.i.i.preheader:                         ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit
  %i.f = icmp eq i64 %.val9, 1
  %.val3035 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  br i1 %i.f, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB4g_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.lr.ph

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB4g_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.lr.ph: ; preds = %.peel.next.i.i.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.val8, i64 72
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB4g_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i

.peel.next.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB4g_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c
  %.val30 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  br i1 %i.i, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB4g_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i, !llvm.loop !14736

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB4g_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB4g_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.lr.ph, %.peel.next.i.i
  %.val3036 = phi ptr [ %.val3035, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB4g_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.lr.ph ], [ %.val30, %.peel.next.i.i ]
  %i.j = phi ptr [ %i.g, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB4g_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.lr.ph ], [ %i.h, %.peel.next.i.i ] ; 2 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val3036, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14746
  %i.k = tail call noundef align 8 ptr @_RINvXNvNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappings3_1__NtB5_10KeyIdsPairNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !14747 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.k, null
  br i1 %.not6.i.i, label %.peel.next.i.i, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit, !llvm.loop !14736

_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split: ; preds = %.peel.next.i.i, %.peel.next.i.i.preheader, %bb.a
  %.val30.sink = phi ptr [ %.val.i, %bb.a ], [ %.val3035, %.peel.next.i.i.preheader ], [ %.val30, %.peel.next.i.i ]
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val30.sink, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB4g_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit
  %.sroa.0.0 = phi ptr [ %i.e, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit ], [ null, %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit.sink.split ], [ %i.k, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB4g_B1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIBR_fEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9 = load i64, ptr %i.c, align 8, !noundef !10 ; 3 uses
  %.idx = shl nuw nsw i64 %.val9, 2
  %i.d = getelementptr inbounds nuw i8, ptr %.val8, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14763)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !14763, !noalias !14764, !nonnull !10, !align !11, !noundef !10 ; 8 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14765
  %i.e = icmp eq i64 %.val9, 0
  br i1 %i.e, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit.thread, label %.lr.ph.i.i

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.a
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14765
  br label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val8, i64 4
  %.val7.peel.i.i = load float, ptr %.val8, align 4, !noalias !14766 ; 2 uses
  %i.g = tail call float @llvm.fabs.f32(float %.val7.peel.i.i)
  %cond.i.i.i.i.i.i.peel.i.i = fcmp ueq float %i.g, +inf
  br i1 %cond.i.i.i.i.i.i.peel.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14767
  %i.h = call { ptr, i64 } @_RINvMs2_Cs1XVLCUuSBg0_4zmijNtB6_6Buffer13format_finitefECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, float noundef %.val7.peel.i.i), !noalias !14767 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !14767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14767
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !14767
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i: ; preds = %bb.c, %bb.b
  %i.k = icmp eq i64 %.val9, 1
  br i1 %i.k, label %.loopexit, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.i.i
  %i.l = phi ptr [ %i.m, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.i.i ], [ %i.f, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.val7.i.i = load float, ptr %i.l, align 4, !noalias !14766 ; 2 uses
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14768
  %i.n = call float @llvm.fabs.f32(float %.val7.i.i)
  %cond.i.i.i.i.i.i.i.i = fcmp ueq float %i.n, +inf
  br i1 %cond.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !14768
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.i.i

bb.e:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14768
  %i.o = call { ptr, i64 } @_RINvMs2_Cs1XVLCUuSBg0_4zmijNtB6_6Buffer13format_finitefECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, float noundef %.val7.i.i), !noalias !14768 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.q), !noalias !14768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14768
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.e, %bb.d
  %i.r = icmp eq ptr %i.m, %i.d
  br i1 %i.r, label %.loopexit, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, !llvm.loop !14762

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRfINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIB2Y_fEE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit.thread, %.loopexit
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14787)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !14787, !noalias !14788, !nonnull !10, !align !11, !noundef !10 ; 6 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14789
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit.thread, label %.lr.ph.i.i

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.a
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14789
  br label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val7.peel.i.i = load i8, ptr %1, align 1, !noalias !14790 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14791
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14792)
  %i.g = icmp ugt i8 %.val7.peel.i.i, 9
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = zext i8 %.val7.peel.i.i to i32           ; 2 uses
  %i.i = mul nuw nsw i32 %i.h, 5243
  %i.j = lshr i32 %i.i, 19                        ; 2 uses
  %i.k = trunc nuw nsw i32 %i.j to i8
  %.neg.i.i.i.i.i.i.i.i.peel.i.i = mul nsw i32 %i.j, -100
  %i.l = add nsw i32 %.neg.i.i.i.i.i.i.i.i.peel.i.i, %i.h ; 2 uses
  %i.m = shl nuw nsw i32 %i.l, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = icmp ult i32 %i.l, 100
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr @_RNvCs6kQH99PsUHL_4itoa13DECIMAL_PAIRS, i64 %i.n ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !noalias !14793, !noundef !10
  store i8 %i.q, ptr %i.d, align 1, !alias.scope !14792, !noalias !14791
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noalias !14793, !noundef !10
  store i8 %i.s, ptr %i.e, align 1, !alias.scope !14792, !noalias !14791
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.06.0.i.i.i.i.i.i.i.i.peel.i.i = phi i8 [ %i.k, %bb.b ], [ %.val7.peel.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.peel.i.i = phi i64 [ 1, %bb.b ], [ 3, %.lr.ph.i.i ] ; 2 uses
  %i.t = icmp ne i8 %.sroa.06.0.i.i.i.i.i.i.i.i.peel.i.i, 0
  %i.u = icmp eq i8 %.val7.peel.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.peel.i.i = or i1 %i.u, %i.t
  br i1 %or.cond.i.i.i.i.i.i.i.i.peel.i.i, label %bb.d, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.peel.i.i, -1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  %i.x = add nuw nsw i8 %.sroa.06.0.i.i.i.i.i.i.i.i.peel.i.i, 48
  store i8 %i.x, ptr %i.w, align 1, !alias.scope !14792, !noalias !14791
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i.i.i.i.i.i.i.peel.i.i = phi i64 [ %i.v, %bb.d ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.peel.i.i, %bb.c ] ; 2 uses
  %i.y = xor i64 %.sroa.0.1.i.i.i.i.i.i.i.i.peel.i.i, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.i.i.i.i.i.i.i.i.peel.i.i
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.y), !noalias !14791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14791
  %i.aa = icmp samesign eq i64 %2, 1
  br i1 %i.aa, label %.loopexit, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.i.i
  %i.ab = phi ptr [ %i.ac, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.i.i ], [ %i.f, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %.val7.i.i = load i8, ptr %i.ab, align 1, !noalias !14790 ; 4 uses
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14794
  call void @llvm.experimental.noalias.scope.decl(metadata !14795)
  %i.ad = icmp ugt i8 %.val7.i.i, 9
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.ae = zext i8 %.val7.i.i to i32               ; 2 uses
  %i.af = mul nuw nsw i32 %i.ae, 5243
  %i.ag = lshr i32 %i.af, 19                      ; 2 uses
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  %.neg.i.i.i.i.i.i.i.i.i.i = mul nsw i32 %i.ag, -100
  %i.ai = add nsw i32 %.neg.i.i.i.i.i.i.i.i.i.i, %i.ae ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = icmp ult i32 %i.ai, 100
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr @_RNvCs6kQH99PsUHL_4itoa13DECIMAL_PAIRS, i64 %i.ak ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !noalias !14796, !noundef !10
  store i8 %i.an, ptr %i.d, align 1, !alias.scope !14795, !noalias !14794
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !14796, !noundef !10
  store i8 %i.ap, ptr %i.e, align 1, !alias.scope !14795, !noalias !14794
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ah, %bb.e ], [ %.val7.i.i, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.e ], [ 3, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ] ; 2 uses
  %i.aq = icmp ne i8 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i, 0
  %i.ar = icmp eq i8 %.val7.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.ar, %i.aq
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.as = add nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  %i.au = add nuw nsw i8 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i, 48
  store i8 %i.au, ptr %i.at, align 1, !alias.scope !14795, !noalias !14794
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %bb.g ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.av = xor i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef range(i64 0, -9223372036854775808) %i.av), !noalias !14794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14794
  %i.ax = icmp eq ptr %i.ac, %i.b
  br i1 %i.ax, label %.loopexit, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, !llvm.loop !14786

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRShE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant.exit.thread, %.loopexit
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtBZ_3vec3VecNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9 = load i64, ptr %i.b, align 8, !noundef !10 ; 3 uses
  %.idx = mul nuw nsw i64 %.val9, 72
  %i.c = getelementptr inbounds nuw i8, ptr %.val8, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14846)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !14846, !noalias !14847, !nonnull !10, !align !11, !noundef !10 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14848)
  %i.d = load i64, ptr %.val.i, align 8, !range !12, !alias.scope !14848, !noalias !14849, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !14848, !noalias !14849, !noundef !10 ; 4 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = sub nsw i64 %i.d, %i.f
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter11begin_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread.i, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter11begin_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.i, !prof !13

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter11begin_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14850)
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !14851, !noalias !14852, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  store i8 91, ptr %i.l, align 1, !noalias !14853
  %i.m = add nuw i64 %i.f, 1
  store i64 %i.m, ptr %i.e, align 8, !alias.scope !14851, !noalias !14852
  br label %bb.c

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter11begin_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.a
  %i.n = tail call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileE14write_all_coldCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef range(i64 0, -9223372036854775808) 1) #13, !noalias !14854 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter11begin_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.i
  %i.o = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.n), !noalias !14854
  br label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter11begin_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.i, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter11begin_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread.i
  %i.p = icmp eq i64 %.val9, 0
  br i1 %i.p, label %bb.d, label %.thread31

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14855)
  %i.q = load i64, ptr %.val.i, align 8, !range !12, !alias.scope !14855, !noalias !14856, !noundef !10
  %i.r = load i64, ptr %i.e, align 8, !alias.scope !14855, !noalias !14856, !noundef !10 ; 4 uses
  %i.s = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = sub nsw i64 %i.q, %i.r
  %i.u = icmp ugt i64 %i.t, 1
  br i1 %i.u, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9end_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread.i, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9end_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.i, !prof !13

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9end_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14857)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !14858, !noalias !14859, !nonnull !10, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r
  store i8 93, ptr %i.x, align 1, !noalias !14860
  %i.y = add nuw i64 %i.r, 1
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !14858, !noalias !14859
  br label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9end_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d
  %i.z = tail call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileE14write_all_coldCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef range(i64 0, -9223372036854775808) 1) #13, !noalias !14854 ; 2 uses
  %.not10.i = icmp eq ptr %i.z, null
  br i1 %.not10.i, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit, label %bb.e, !prof !31

bb.e:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9end_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.i
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.z), !noalias !14854
  br label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

.thread31:                                        ; preds = %bb.c
  %i.ab = tail call noundef align 8 ptr @_RINvXNvNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappings3_1__NtB5_10KeyIdsPairNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val8, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !14861 ; 2 uses
  %.not6.peel.i.i = icmp eq ptr %i.ab, null
  br i1 %.not6.peel.i.i, label %.peel.next.i.i.preheader, label %_RNvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq3endCsl8OoimOLbh_6qdrant.exit

.peel.next.i.i.preheader:                         ; preds = %.thread31
  %i.ac = icmp eq i64 %.val9, 1
  %.val4259 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4259, i64 16 ; 2 uses
  br i1 %i.ac, label %.peel.next.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.peel.next.i.i.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %.val8, i64 72
  br label %bb.f

.peel.next.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping10KeyIdsPairINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB35_3ser10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtB4o_3vec3VecB1l_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  %.val42 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val42, i64 16 ; 2 uses
  br i1 %i.ag, label %.peel.next.i.i._crit_edge, label %bb.f, !llvm.loop !14824

bb.f:                                             ; preds = %.lr.ph, %.peel.next.i.i
end_hunk_0
