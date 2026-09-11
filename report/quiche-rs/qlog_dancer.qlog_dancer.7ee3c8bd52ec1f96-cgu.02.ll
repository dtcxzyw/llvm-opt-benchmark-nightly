Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.02?download=true
inline.NumInlined: 1765
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quic1__NtB5_10PacketTypeNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeNtNtNtCsenfyI6F4F2A_10serde_json5value3ser10SerializerECsaTqK2fWTXJW_11qlog_dancer:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8907, !noalias !8826
    #dbg_value(i64 %i.bq, !3354, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8804)
    #dbg_value(ptr %i.bt, !3354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8804)
    #dbg_value(ptr @8, !3394, !DIExpression(), !8785)
    #dbg_value(ptr @8, !3400, !DIExpression(), !8787)
    #dbg_value(ptr %i.bt, !3395, !DIExpression(), !8785)
    #dbg_value(ptr %i.bt, !3401, !DIExpression(), !8787)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bt, ptr noundef nonnull readonly align 1 dereferenceable(7) @8, i64 range(i64 2, 26) 7, i1 false), !dbg !8908, !noalias !8827
    #dbg_value(i64 7, !3354, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8804)
  br label %bb.r, !dbg !8811

bb.r:                                             ; preds = %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit28, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit24, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit20, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit16, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit12, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit8, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit4, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit
  %.sink31 = phi i64 [ %i.bq, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit28 ], [ %i.bi, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit24 ], [ %i.ba, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit20 ], [ %i.as, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit16 ], [ %i.ak, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit12 ], [ %i.ac, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ %i.u, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.m, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink30 = phi ptr [ %i.bt, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit28 ], [ %i.bl, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit24 ], [ %i.bd, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit20 ], [ %i.av, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit16 ], [ %i.an, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit12 ], [ %i.af, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ %i.x, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.p, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink = phi i64 [ 7, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit28 ], [ 15, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit24 ], [ 19, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit20 ], [ 5, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit16 ], [ 4, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit12 ], [ 4, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ 9, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ 7, %_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  store i64 -9223372036854775805, ptr %0, align 8, !dbg !8909, !noalias !2201
  %.sroa.4.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8909
  store i64 %.sink31, ptr %.sroa.4.0..sroa_idx.i25, align 8, !dbg !8909, !noalias !2201
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8909
  store ptr %.sink30, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i26, align 8, !dbg !8909, !noalias !2201
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8909
  store i64 %.sink, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i27, align 8, !dbg !8909, !noalias !2201
  ret void, !dbg !8910
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quic1__NtB5_10PacketTypeNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 !dbg !8911 {
bb.a:
    #dbg_value(ptr %0, !8970, !DIExpression(), !8973)
    #dbg_value(ptr %1, !8971, !DIExpression(), !8973)
  %i.a = load i8, ptr %0, align 1, !dbg !8974, !range !3311, !noundef !2201
    #dbg_value(ptr %1, !3463, !DIExpression(), !8913)
    #dbg_value(ptr %1, !3463, !DIExpression(), !8915)
    #dbg_value(ptr %1, !3463, !DIExpression(), !8917)
    #dbg_value(ptr %1, !3463, !DIExpression(), !8919)
    #dbg_value(ptr %1, !3463, !DIExpression(), !8921)
    #dbg_value(ptr %1, !3463, !DIExpression(), !8923)
    #dbg_value(ptr %1, !3463, !DIExpression(), !8925)
    #dbg_value(ptr %1, !3463, !DIExpression(), !8927)
    #dbg_value(ptr poison, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8913)
    #dbg_value(ptr poison, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8915)
    #dbg_value(ptr poison, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8917)
    #dbg_value(ptr poison, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8919)
    #dbg_value(ptr poison, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8921)
    #dbg_value(ptr poison, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8923)
    #dbg_value(ptr poison, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8925)
    #dbg_value(ptr poison, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8927)
    #dbg_value(i64 10, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8913)
    #dbg_value(i64 10, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8915)
    #dbg_value(i64 10, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8917)
    #dbg_value(i64 10, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8919)
    #dbg_value(i64 10, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8921)
    #dbg_value(i64 10, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8923)
    #dbg_value(i64 10, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8925)
    #dbg_value(i64 10, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8927)
    #dbg_value(ptr %1, !3471, !DIExpression(), !8929)
    #dbg_value(ptr %1, !3471, !DIExpression(), !8931)
    #dbg_value(ptr %1, !3471, !DIExpression(), !8933)
    #dbg_value(ptr %1, !3471, !DIExpression(), !8935)
    #dbg_value(ptr %1, !3471, !DIExpression(), !8937)
    #dbg_value(ptr %1, !3471, !DIExpression(), !8939)
    #dbg_value(ptr %1, !3471, !DIExpression(), !8941)
    #dbg_value(ptr %1, !3471, !DIExpression(), !8943)
    #dbg_declare(ptr poison, !3480, !DIExpression(), !8945)
    #dbg_declare(ptr poison, !3480, !DIExpression(), !8947)
    #dbg_declare(ptr poison, !3480, !DIExpression(), !8949)
    #dbg_declare(ptr poison, !3480, !DIExpression(), !8951)
    #dbg_declare(ptr poison, !3480, !DIExpression(), !8953)
    #dbg_declare(ptr poison, !3480, !DIExpression(), !8955)
    #dbg_declare(ptr poison, !3480, !DIExpression(), !8957)
    #dbg_declare(ptr poison, !3480, !DIExpression(), !8959)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8978 ; 8 uses
  switch i8 %i.a, label %default.unreachable31 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
  ], !dbg !8974

default.unreachable31:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(i32 0, !3468, !DIExpression(), !8913)
    #dbg_value(ptr @1, !3469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8913)
    #dbg_value(i64 7, !3469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8913)
    #dbg_value(ptr @1, !3474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8929)
    #dbg_value(i64 7, !3474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8929)
  %i.c = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef range(i64 2, 26) 7), !dbg !8979 ; 2 uses
    #dbg_value(ptr %i.c, !3498, !DIExpression(), !8960)
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !8980
  br i1 %.not.i.i, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, !dbg !8981, !prof !3502

bb.c:                                             ; preds = %bb.a
    #dbg_value(i32 1, !3468, !DIExpression(), !8915)
    #dbg_value(ptr @2, !3469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8915)
    #dbg_value(i64 9, !3469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8915)
    #dbg_value(ptr @2, !3474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8931)
    #dbg_value(i64 9, !3474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8931)
  %i.d = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef range(i64 2, 26) 9), !dbg !8982 ; 2 uses
    #dbg_value(ptr %i.d, !3498, !DIExpression(), !8961)
  %.not.i.i3 = icmp eq ptr %i.d, null, !dbg !8983
  br i1 %.not.i.i3, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, !dbg !8984, !prof !3502

bb.d:                                             ; preds = %bb.a
    #dbg_value(i32 2, !3468, !DIExpression(), !8917)
    #dbg_value(ptr @3, !3469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8917)
    #dbg_value(i64 4, !3469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8917)
    #dbg_value(ptr @3, !3474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8933)
    #dbg_value(i64 4, !3474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8933)
  %i.e = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef range(i64 2, 26) 4), !dbg !8985 ; 2 uses
    #dbg_value(ptr %i.e, !3498, !DIExpression(), !8962)
  %.not.i.i6 = icmp eq ptr %i.e, null, !dbg !8986
  br i1 %.not.i.i6, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, !dbg !8987, !prof !3502

bb.e:                                             ; preds = %bb.a
    #dbg_value(i32 3, !3468, !DIExpression(), !8919)
    #dbg_value(ptr @4, !3469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8919)
    #dbg_value(i64 4, !3469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8919)
    #dbg_value(ptr @4, !3474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8935)
    #dbg_value(i64 4, !3474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8935)
  %i.f = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef range(i64 2, 26) 4), !dbg !8988 ; 2 uses
    #dbg_value(ptr %i.f, !3498, !DIExpression(), !8963)
  %.not.i.i9 = icmp eq ptr %i.f, null, !dbg !8989
  br i1 %.not.i.i9, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, !dbg !8990, !prof !3502

bb.f:                                             ; preds = %bb.a
    #dbg_value(i32 4, !3468, !DIExpression(), !8921)
    #dbg_value(ptr @5, !3469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8921)
    #dbg_value(i64 5, !3469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8921)
    #dbg_value(ptr @5, !3474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8937)
    #dbg_value(i64 5, !3474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8937)
  %i.g = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef range(i64 2, 26) 5), !dbg !8991 ; 2 uses
    #dbg_value(ptr %i.g, !3498, !DIExpression(), !8964)
  %.not.i.i12 = icmp eq ptr %i.g, null, !dbg !8992
  br i1 %.not.i.i12, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, !dbg !8993, !prof !3502

bb.g:                                             ; preds = %bb.a
    #dbg_value(i32 5, !3468, !DIExpression(), !8923)
    #dbg_value(ptr @6, !3469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8923)
    #dbg_value(i64 19, !3469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8923)
    #dbg_value(ptr @6, !3474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8939)
    #dbg_value(i64 19, !3474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8939)
  %i.h = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 2, 26) 19), !dbg !8994 ; 2 uses
    #dbg_value(ptr %i.h, !3498, !DIExpression(), !8965)
  %.not.i.i15 = icmp eq ptr %i.h, null, !dbg !8995
  br i1 %.not.i.i15, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, !dbg !8996, !prof !3502

bb.h:                                             ; preds = %bb.a
    #dbg_value(i32 6, !3468, !DIExpression(), !8925)
    #dbg_value(ptr @7, !3469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8925)
    #dbg_value(i64 15, !3469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8925)
    #dbg_value(ptr @7, !3474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8941)
    #dbg_value(i64 15, !3474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8941)
  %i.i = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 2, 26) 15), !dbg !8997 ; 2 uses
    #dbg_value(ptr %i.i, !3498, !DIExpression(), !8966)
  %.not.i.i18 = icmp eq ptr %i.i, null, !dbg !8998
  br i1 %.not.i.i18, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, !dbg !8999, !prof !3502

bb.i:                                             ; preds = %bb.a
    #dbg_value(i32 7, !3468, !DIExpression(), !8927)
    #dbg_value(ptr @8, !3469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8927)
    #dbg_value(i64 7, !3469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8927)
    #dbg_value(ptr @8, !3474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8943)
    #dbg_value(i64 7, !3474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8943)
  %i.j = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 2, 26) 7), !dbg !9000 ; 2 uses
    #dbg_value(ptr %i.j, !3498, !DIExpression(), !8967)
  %.not.i.i21 = icmp eq ptr %i.j, null, !dbg !9001
  br i1 %.not.i.i21, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, !dbg !9002, !prof !3502

_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi ptr [ %i.i, %bb.h ], [ %i.h, %bb.g ], [ %i.g, %bb.f ], [ %i.f, %bb.e ], [ %i.e, %bb.d ], [ %i.d, %bb.c ], [ %i.c, %bb.b ], [ %i.j, %bb.i ]
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink), !dbg !9003
  br label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !9004

_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.h ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.i ], [ %i.k, %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer22serialize_unit_variantCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split ], !dbg !8974
  ret ptr %.sroa.0.0, !dbg !9004
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics0_1__NtB5_12PacketHeaderNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeNtNtNtCsenfyI6F4F2A_10serde_json5value3ser10SerializerECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9062 {
bb.a:
    #dbg_declare(ptr poison, !9224, !DIExpression(DW_OP_LLVM_fragment, 128, 640), !9229)
  %i.a = alloca [96 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !9168, !DIExpression(DW_OP_LLVM_fragment, 128, 640), !9230)
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 22 uses
    #dbg_value(ptr %1, !9164, !DIExpression(), !9231)
    #dbg_declare(ptr poison, !9165, !DIExpression(), !9228)
    #dbg_declare(ptr %i.c, !9166, !DIExpression(), !9232)
    #dbg_declare(ptr %i.b, !9225, !DIExpression(), !9233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9228
    #dbg_value(ptr %1, !9234, !DIExpression(), !9237)
    #dbg_value(ptr %1, !9238, !DIExpression(), !9241)
  %i.d = load i64, ptr %1, align 8, !dbg !9551, !range !3432, !noundef !2201 ; 2 uses
  %.not = icmp eq i64 %i.d, 0, !dbg !9552
  %. = add nuw nsw i64 %i.d, 1, !dbg !9228
    #dbg_value(ptr %1, !9243, !DIExpression(DW_OP_plus_uconst, 138, DW_OP_stack_value), !9247)
    #dbg_value(ptr %1, !9248, !DIExpression(DW_OP_plus_uconst, 138, DW_OP_stack_value), !9252)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 138, !dbg !9553 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !dbg !9553, !range !3599, !noundef !2201
  %.not192 = icmp ne i8 %i.f, 2, !dbg !9553       ; 2 uses
  %.sroa.06.0 = zext i1 %.not192 to i64, !dbg !9236
    #dbg_value(ptr %1, !9234, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !9255)
    #dbg_value(ptr %1, !9238, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !9258)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9554 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !9554, !range !3432, !noundef !2201 ; 2 uses
  %.not193.not = icmp eq i64 %i.h, 0, !dbg !9555
    #dbg_value(ptr %1, !9243, !DIExpression(DW_OP_plus_uconst, 139, DW_OP_stack_value), !9261)
    #dbg_value(ptr %1, !9248, !DIExpression(DW_OP_plus_uconst, 139, DW_OP_stack_value), !9264)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 139, !dbg !9556 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !dbg !9556, !range !3599, !noundef !2201
  %.not194 = icmp ne i8 %i.j, 2, !dbg !9556       ; 2 uses
  %.sroa.08.0 = zext i1 %.not194 to i64, !dbg !9236
    #dbg_value(ptr %1, !9265, !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value), !9269)
    #dbg_value(ptr %1, !9270, !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value), !9274)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 132, !dbg !9557 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !dbg !9557, !range !3608, !noundef !2201 ; 2 uses
  %i.m = trunc nuw i8 %i.l to i1, !dbg !9557
  %.sroa.09.0 = zext nneg i8 %i.l to i64, !dbg !9236
    #dbg_value(ptr %1, !9234, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9277)
    #dbg_value(ptr %1, !9238, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9280)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !9558 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !9558, !range !3432, !noundef !2201 ; 2 uses
  %.not195.not = icmp eq i64 %i.o, 0, !dbg !9559
    #dbg_value(ptr %1, !9281, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !9285)
    #dbg_value(ptr %1, !9286, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !9290)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !9560 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !9560, !align !3616, !noundef !2201
  %.not196 = icmp ne ptr %i.q, null, !dbg !9560   ; 2 uses
  %.sroa.011.0 = zext i1 %.not196 to i64, !dbg !9236
    #dbg_value(ptr %1, !9291, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !9295)
    #dbg_value(ptr %1, !9296, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !9300)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !9561 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !dbg !9561, !range !3623, !noundef !2201 ; 2 uses
  %.not197.not = icmp eq i16 %i.s, 0, !dbg !9562
  %.sroa.012.0 = zext nneg i16 %i.s to i64, !dbg !9236
    #dbg_value(ptr %1, !9302, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !9306)
    #dbg_value(ptr %1, !9307, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !9311)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !9563 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !9563, !range !2805, !noundef !2201
  %.not198 = icmp ne i64 %i.u, -1, !dbg !9563     ; 2 uses
  %.sroa.013.0 = zext i1 %.not198 to i64, !dbg !9236
    #dbg_value(ptr %1, !9265, !DIExpression(DW_OP_plus_uconst, 134, DW_OP_stack_value), !9314)
    #dbg_value(ptr %1, !9270, !DIExpression(DW_OP_plus_uconst, 134, DW_OP_stack_value), !9317)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 134, !dbg !9564 ; 2 uses
  %i.w = load i8, ptr %i.v, align 2, !dbg !9564, !range !3608, !noundef !2201 ; 2 uses
  %i.x = trunc nuw i8 %i.w to i1, !dbg !9564
  %.sroa.014.0 = zext nneg i8 %i.w to i64, !dbg !9236
    #dbg_value(ptr %1, !9265, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !9320)
    #dbg_value(ptr %1, !9270, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !9323)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !9565 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !dbg !9565, !range !3608, !noundef !2201 ; 2 uses
  %i.aa = trunc nuw i8 %i.z to i1, !dbg !9565
  %.sroa.015.0 = zext nneg i8 %i.z to i64, !dbg !9236
    #dbg_value(ptr %1, !9302, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9326)
    #dbg_value(ptr %1, !9307, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9329)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !9566 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !9566, !range !2805, !noundef !2201
  %.not199 = icmp ne i64 %i.ac, -1, !dbg !9566    ; 2 uses
  %.sroa.016.0 = zext i1 %.not199 to i64, !dbg !9236
    #dbg_value(ptr %1, !9302, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9332)
    #dbg_value(ptr %1, !9307, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9335)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !9567 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !9567, !range !2805, !noundef !2201
  %.not200 = icmp ne i64 %i.ae, -1, !dbg !9567    ; 2 uses
  %.sroa.017.0 = zext i1 %.not200 to i64, !dbg !9236
  %i.af = add nuw nsw i64 %., %i.h, !dbg !9228
  %i.ag = add nuw nsw i64 %i.af, %.sroa.06.0, !dbg !9228
  %i.ah = add nuw nsw i64 %i.ag, %.sroa.08.0, !dbg !9228
  %i.ai = add nuw nsw i64 %i.ah, %.sroa.09.0, !dbg !9228
  %i.aj = add nuw nsw i64 %i.ai, %i.o, !dbg !9228
  %i.ak = add nuw nsw i64 %i.aj, %.sroa.011.0, !dbg !9228
  %i.al = add nuw nsw i64 %i.ak, %.sroa.012.0, !dbg !9228
  %i.am = add nuw nsw i64 %i.al, %.sroa.013.0, !dbg !9228
  %i.an = add nuw nsw i64 %i.am, %.sroa.014.0, !dbg !9228
  %i.ao = add nuw nsw i64 %i.an, %.sroa.015.0, !dbg !9228
  %i.ap = add nuw nsw i64 %i.ao, %.sroa.016.0, !dbg !9228
  %i.aq = add nuw nsw i64 %i.ap, %.sroa.017.0, !dbg !9228
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 12, i64 noundef %i.aq), !dbg !9228
  %i.ar = load i64, ptr %i.b, align 8, !dbg !9568, !range !2805, !noundef !2201 ; 2 uses
  %i.as = icmp eq i64 %i.ar, -1, !dbg !9568
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9569
  %i.au = load ptr, ptr %i.at, align 8, !dbg !9569 ; 2 uses
  br i1 %i.as, label %bb.b, label %bb.c, !dbg !9570

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9571
    #dbg_value(ptr %i.au, !9167, !DIExpression(), !9336)
    #dbg_value(ptr %i.au, !9337, !DIExpression(), !9369)
    #dbg_value(ptr %i.au, !9338, !DIExpression(), !9370)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9572
  store ptr %i.au, ptr %i.av, align 8, !dbg !9572
  store i64 -1, ptr %0, align 8, !dbg !9572
  br label %bb.as, !dbg !9573

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 %i.ar, !9224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9372)
    #dbg_value(ptr %i.au, !9224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9372)
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9574
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5103.0..sroa_idx, i64 80, i1 false), !dbg !9574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9571
    #dbg_value(i64 %i.ar, !9168, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9373)
    #dbg_value(ptr %i.au, !9168, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9373)
  store i64 %i.ar, ptr %i.c, align 8, !dbg !9230
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9230
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !9230
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 140, !dbg !9232
  %i.ax = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCs3JBf551F2Kj_4qlog6events4quic10PacketTypeECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.aw)
          to label %bb.d unwind label %bb.av, !dbg !9232 ; 2 uses

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.ax, !9374, !DIExpression(), !9432)
  %.not201 = icmp eq ptr %i.ax, null, !dbg !9575
  br i1 %.not201, label %bb.e, label %bb.at, !dbg !9576

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %1, !9234, !DIExpression(), !9435)
    #dbg_value(ptr %1, !9238, !DIExpression(), !9438)
  br i1 %.not, label %bb.h, label %bb.f, !dbg !9577

bb.f:                                             ; preds = %bb.e
  %i.ay = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionyEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 17, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.g unwind label %bb.av, !dbg !9577 ; 2 uses

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.ay, !9374, !DIExpression(), !9441)
  %.not203 = icmp eq ptr %i.ay, null, !dbg !9578
  br i1 %.not203, label %bb.h, label %bb.at, !dbg !9579

bb.h:                                             ; preds = %bb.e, %bb.g
    #dbg_value(ptr %1, !9243, !DIExpression(DW_OP_plus_uconst, 138, DW_OP_stack_value), !9444)
    #dbg_value(ptr %1, !9248, !DIExpression(DW_OP_plus_uconst, 138, DW_OP_stack_value), !9447)
  br i1 %.not192, label %bb.i, label %bb.k, !dbg !9577

bb.i:                                             ; preds = %bb.h
  %i.az = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionbEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e)
          to label %bb.j unwind label %bb.av, !dbg !9577 ; 2 uses

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.az, !9374, !DIExpression(), !9450)
  %.not205 = icmp eq ptr %i.az, null, !dbg !9580
  br i1 %.not205, label %bb.k, label %bb.at, !dbg !9581

bb.k:                                             ; preds = %bb.h, %bb.j
    #dbg_value(ptr %1, !9234, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !9453)
    #dbg_value(ptr %1, !9238, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !9456)
  br i1 %.not193.not, label %bb.n, label %bb.l, !dbg !9577

bb.l:                                             ; preds = %bb.k
  %i.ba = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionyEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.m unwind label %bb.av, !dbg !9577 ; 2 uses

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.ba, !9374, !DIExpression(), !9459)
  %.not207 = icmp eq ptr %i.ba, null, !dbg !9582
  br i1 %.not207, label %bb.n, label %bb.at, !dbg !9583

bb.n:                                             ; preds = %bb.k, %bb.m
    #dbg_value(ptr %1, !9243, !DIExpression(DW_OP_plus_uconst, 139, DW_OP_stack_value), !9462)
    #dbg_value(ptr %1, !9248, !DIExpression(DW_OP_plus_uconst, 139, DW_OP_stack_value), !9465)
  br i1 %.not194, label %bb.o, label %bb.q, !dbg !9577

bb.o:                                             ; preds = %bb.n
  %i.bb = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionbEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i)
          to label %bb.p unwind label %bb.av, !dbg !9577 ; 2 uses

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr %i.bb, !9374, !DIExpression(), !9468)
  %.not209 = icmp eq ptr %i.bb, null, !dbg !9584
  br i1 %.not209, label %bb.q, label %bb.at, !dbg !9585

bb.q:                                             ; preds = %bb.n, %bb.p
    #dbg_value(ptr %1, !9265, !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value), !9471)
    #dbg_value(ptr %1, !9270, !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value), !9474)
  br i1 %i.m, label %bb.r, label %bb.t, !dbg !9577

bb.r:                                             ; preds = %bb.q
  %i.bc = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionhEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.k)
          to label %bb.s unwind label %bb.av, !dbg !9577 ; 2 uses

bb.s:                                             ; preds = %bb.r
    #dbg_value(ptr %i.bc, !9374, !DIExpression(), !9477)
  %.not210 = icmp eq ptr %i.bc, null, !dbg !9586
  br i1 %.not210, label %bb.t, label %bb.at, !dbg !9587

bb.t:                                             ; preds = %bb.q, %bb.s
    #dbg_value(ptr %1, !9234, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9480)
    #dbg_value(ptr %1, !9238, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !9483)
  br i1 %.not195.not, label %bb.w, label %bb.u, !dbg !9577

bb.u:                                             ; preds = %bb.t
  %i.bd = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionyEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.v unwind label %bb.av, !dbg !9577 ; 2 uses

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.bd, !9374, !DIExpression(), !9486)
  %.not212 = icmp eq ptr %i.bd, null, !dbg !9588
  br i1 %.not212, label %bb.w, label %bb.at, !dbg !9589

bb.w:                                             ; preds = %bb.t, %bb.v
    #dbg_value(ptr %1, !9281, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !9489)
    #dbg_value(ptr %1, !9286, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !9492)
  br i1 %.not196, label %bb.x, label %bb.z, !dbg !9577

bb.x:                                             ; preds = %bb.w
  %i.be = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCs3JBf551F2Kj_4qlog5TokenEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.y unwind label %bb.av, !dbg !9577 ; 2 uses

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr %i.be, !9374, !DIExpression(), !9495)
  %.not214 = icmp eq ptr %i.be, null, !dbg !9590
  br i1 %.not214, label %bb.z, label %bb.at, !dbg !9591

bb.z:                                             ; preds = %bb.w, %bb.y
    #dbg_value(ptr %1, !9291, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !9498)
    #dbg_value(ptr %1, !9296, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !9501)
  br i1 %.not197.not, label %bb.ac, label %bb.aa, !dbg !9577

bb.aa:                                            ; preds = %bb.z
  %i.bf = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptiontEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.r)
          to label %bb.ab unwind label %bb.av, !dbg !9577 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr %i.bf, !9374, !DIExpression(), !9504)
  %.not216 = icmp eq ptr %i.bf, null, !dbg !9592
  br i1 %.not216, label %bb.ac, label %bb.at, !dbg !9593

bb.ac:                                            ; preds = %bb.z, %bb.ab
    #dbg_value(ptr %1, !9302, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !9507)
    #dbg_value(ptr %1, !9307, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !9510)
  br i1 %.not198, label %bb.ad, label %bb.af, !dbg !9577

bb.ad:                                            ; preds = %bb.ac
  %i.bg = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.ae unwind label %bb.av, !dbg !9577 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(ptr %i.bg, !9374, !DIExpression(), !9513)
  %.not218 = icmp eq ptr %i.bg, null, !dbg !9594
  br i1 %.not218, label %bb.af, label %bb.at, !dbg !9595

bb.af:                                            ; preds = %bb.ac, %bb.ae
    #dbg_value(ptr %1, !9265, !DIExpression(DW_OP_plus_uconst, 134, DW_OP_stack_value), !9516)
    #dbg_value(ptr %1, !9270, !DIExpression(DW_OP_plus_uconst, 134, DW_OP_stack_value), !9519)
  br i1 %i.x, label %bb.ag, label %bb.ai, !dbg !9577

bb.ag:                                            ; preds = %bb.af
  %i.bh = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionhEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.v)
          to label %bb.ah unwind label %bb.av, !dbg !9577 ; 2 uses

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(ptr %i.bh, !9374, !DIExpression(), !9522)
  %.not219 = icmp eq ptr %i.bh, null, !dbg !9596
  br i1 %.not219, label %bb.ai, label %bb.at, !dbg !9597

bb.ai:                                            ; preds = %bb.af, %bb.ah
    #dbg_value(ptr %1, !9265, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !9525)
    #dbg_value(ptr %1, !9270, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !9528)
  br i1 %i.aa, label %bb.aj, label %bb.al, !dbg !9577

bb.aj:                                            ; preds = %bb.ai
  %i.bi = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionhEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.y)
          to label %bb.ak unwind label %bb.av, !dbg !9577 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(ptr %i.bi, !9374, !DIExpression(), !9531)
end_hunk_0
begin_hunk_1_@_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1k_1__NtB5_18StreamStateUpdatedNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeNtNtNtCsenfyI6F4F2A_10serde_json5value3ser10SerializerECsaTqK2fWTXJW_11qlog_dancer:bb.a

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %lpad.thr_comm, !dbg !22105

bb.t:                                             ; preds = %bb.c, %bb.o, %bb.l, %bb.f, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsenfyI6F4F2A_10serde_json5value3ser12SerializeMapECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #16
          to label %bb.s unwind label %bb.u, !dbg !22215

bb.u:                                             ; preds = %bb.t
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !22105
  unreachable, !dbg !22105
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1k_1__NtB5_18StreamStateUpdatedNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22252 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !22319, !DIExpression(), !22341)
    #dbg_value(ptr %1, !22320, !DIExpression(), !22341)
    #dbg_declare(ptr %i.a, !22321, !DIExpression(), !22342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22458
    #dbg_value(ptr %0, !22343, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !22346)
    #dbg_value(ptr %0, !22347, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !22350)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !22459 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2, !dbg !22459, !range !3599, !noundef !2201
    #dbg_value(ptr %0, !22351, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22355)
    #dbg_value(ptr %0, !22356, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22360)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22460 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !dbg !22460, !range !4962, !noundef !2201
  %.not63 = icmp eq i8 %i.e, -1, !dbg !22460
    #dbg_value(ptr %0, !22361, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !22365)
    #dbg_value(ptr %0, !22366, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !22370)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11, !dbg !22461 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !dbg !22461, !range !3599, !noundef !2201
  %.not64 = icmp eq i8 %i.g, 2, !dbg !22461
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22371), !dbg !22458
    #dbg_value(ptr %1, !3658, !DIExpression(), !22262)
    #dbg_value(ptr poison, !3672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22262)
    #dbg_value(i64 18, !3672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22262)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3673, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !22262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22372), !dbg !22462
    #dbg_value(i64 1, !3676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22266)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22266)
    #dbg_value(ptr %1, !3686, !DIExpression(), !22266)
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !22463, !alias.scope !22373, !noalias !22374, !nonnull !2201, !align !3616, !noundef !2201
    #dbg_value(ptr poison, !3695, !DIExpression(), !22270)
    #dbg_value(ptr poison, !3700, !DIExpression(), !22270)
    #dbg_value(ptr poison, !3705, !DIExpression(), !22272)
    #dbg_value(ptr @421, !3710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22272)
    #dbg_value(i64 1, !3710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22272)
    #dbg_value(ptr %.val.i.i, !3715, !DIExpression(), !22274)
    #dbg_value(ptr @421, !3721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22274)
    #dbg_value(i64 1, !3721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22274)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @421, i64 noundef range(i64 0, 21) 1), !dbg !22464, !noalias !22375
    #dbg_value(ptr %1, !22323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22376)
    #dbg_value(i8 1, !22323, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22376)
  store ptr %1, ptr %i.a, align 8, !dbg !22465
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22465 ; 2 uses
  store i8 1, ptr %i.h, align 8, !dbg !22465
    #dbg_value(ptr %i.a, !4069, !DIExpression(), !22276)
    #dbg_value(ptr @56, !4072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22276)
    #dbg_value(i64 9, !4072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22276)
    #dbg_value(ptr %0, !4073, !DIExpression(), !22276)
  %i.i = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeyECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0), !dbg !22466 ; 2 uses
    #dbg_value(ptr %i.i, !22377, !DIExpression(), !22397)
  %.not65 = icmp eq ptr %i.i, null, !dbg !22467
  br i1 %.not65, label %bb.b, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22468

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.c, 2, !dbg !22459
    #dbg_value(ptr %0, !22343, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !22400)
    #dbg_value(ptr %0, !22347, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !22403)
  br i1 %.not, label %bb.d, label %bb.c, !dbg !22469

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.a, !22404, !DIExpression(), !22296)
    #dbg_value(ptr @147, !22407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22296)
    #dbg_value(i64 11, !22407, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22296)
    #dbg_value(ptr %i.b, !22408, !DIExpression(), !22296)
  %i.j = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs3JBf551F2Kj_4qlog6events4quic10StreamTypeEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b), !dbg !22470 ; 2 uses
    #dbg_value(ptr %i.j, !22377, !DIExpression(), !22414)
  %.not66 = icmp eq ptr %i.j, null, !dbg !22471
  br i1 %.not66, label %bb.d, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22472

bb.d:                                             ; preds = %bb.b, %bb.c
    #dbg_value(ptr %0, !22351, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22417)
    #dbg_value(ptr %0, !22356, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22420)
  br i1 %.not63, label %bb.f, label %bb.e, !dbg !22469

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.a, !22421, !DIExpression(), !22299)
    #dbg_value(ptr @54, !22424, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22299)
    #dbg_value(i64 3, !22424, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22299)
    #dbg_value(ptr %i.d, !22425, !DIExpression(), !22299)
  %i.k = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs3JBf551F2Kj_4qlog6events4quic11StreamStateEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !dbg !22473 ; 2 uses
    #dbg_value(ptr %i.k, !22377, !DIExpression(), !22431)
  %.not67 = icmp eq ptr %i.k, null, !dbg !22474
  br i1 %.not67, label %bb.f, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22475

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !22342
    #dbg_value(ptr %i.a, !22432, !DIExpression(), !22302)
    #dbg_value(ptr @55, !22435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22302)
    #dbg_value(i64 3, !22435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22302)
    #dbg_value(ptr %i.l, !22436, !DIExpression(), !22302)
  %i.m = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCs3JBf551F2Kj_4qlog6events4quic11StreamStateECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.l), !dbg !22476 ; 2 uses
    #dbg_value(ptr %i.m, !22377, !DIExpression(), !22440)
  %.not68 = icmp eq ptr %i.m, null, !dbg !22477
  br i1 %.not68, label %bb.g, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22478

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %0, !22361, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !22443)
    #dbg_value(ptr %0, !22366, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !22446)
  br i1 %.not64, label %bb.i, label %bb.h, !dbg !22469

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %i.a, !22447, !DIExpression(), !22305)
    #dbg_value(ptr @115, !22450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22305)
    #dbg_value(i64 7, !22450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22305)
    #dbg_value(ptr %i.f, !22451, !DIExpression(), !22305)
  %i.n = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs3JBf551F2Kj_4qlog6events4quic13StreamTriggerEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f), !dbg !22479 ; 2 uses
    #dbg_value(ptr %i.n, !22377, !DIExpression(), !22457)
  %.not69 = icmp eq ptr %i.n, null, !dbg !22480
  br i1 %.not69, label %bb.i, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22481

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.o = load i8, ptr %i.h, align 8, !dbg !22342, !range !3599, !noundef !2201
    #dbg_value(ptr poison, !3766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22307)
    #dbg_value(i8 %i.o, !3766, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22307)
    #dbg_value(ptr poison, !3770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22309)
    #dbg_value(i8 %i.o, !3770, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22309)
    #dbg_value(ptr poison, !3772, !DIExpression(), !22310)
    #dbg_value(i8 %i.o, !3773, !DIExpression(), !22310)
  %i.p = icmp eq i8 %i.o, 0, !dbg !22482
  br i1 %i.p, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.j, !dbg !22482

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %i.a, align 8, !dbg !22342, !nonnull !2201, !align !3616, !noundef !2201
  %.val = load ptr, ptr %i.q, align 8, !dbg !22342, !nonnull !2201, !noundef !2201
    #dbg_value(ptr poison, !3775, !DIExpression(), !22312)
    #dbg_value(ptr poison, !3776, !DIExpression(), !22312)
    #dbg_value(ptr poison, !3705, !DIExpression(), !22314)
    #dbg_value(ptr @419, !3710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22314)
    #dbg_value(i64 1, !3710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22314)
    #dbg_value(ptr %.val, !3715, !DIExpression(), !22316)
    #dbg_value(ptr @419, !3721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22316)
    #dbg_value(i64 1, !3721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22316)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef range(i64 0, 21) 1), !dbg !22483
  br label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22484

_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.j, %bb.i, %bb.a, %bb.c, %bb.e, %bb.f, %bb.h
  %.sroa.0.0 = phi ptr [ %i.k, %bb.e ], [ %i.n, %bb.h ], [ %i.m, %bb.f ], [ %i.i, %bb.a ], [ %i.j, %bb.c ], [ null, %bb.i ], [ null, %bb.j ], !dbg !22458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22485
  ret ptr %.sroa.0.0, !dbg !22486
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1l_1__NtB5_18StreamStateUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 !dbg !22487 {
bb.a:
    #dbg_declare(ptr %1, !22490, !DIExpression(), !22492)
  tail call void @_RINvXsr_NtNtNtCsbmN5fM2HLz5_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1l_1__NtB39_18StreamStateUpdatedNtB1Z_11Deserialize11deserialize9___VisitorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @148, i64 noundef 5), !dbg !22492
  ret void, !dbg !22493
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1l_1__NtB5_18StreamStateUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !22494 {
bb.a:
    #dbg_value(ptr %1, !22501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22503)
    #dbg_value(i64 %2, !22501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22503)
    #dbg_value(ptr %1, !22504, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22497)
    #dbg_value(i64 %2, !22504, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22497)
    #dbg_value(ptr poison, !22507, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22497)
    #dbg_value(i64 18, !22507, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22497)
    #dbg_value(ptr poison, !22508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22497)
    #dbg_value(i64 5, !22508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22497)
    #dbg_declare(ptr poison, !22509, !DIExpression(), !22498)
  tail call void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1l_1__NtB3f_18StreamStateUpdatedNtB28_11Deserialize11deserialize9___VisitorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !22513
  ret void, !dbg !22514
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1m_1__NtB5_15FramesProcessedNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeNtNtNtCsenfyI6F4F2A_10serde_json5value3ser10SerializerECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22524 {
bb.a:
    #dbg_declare(ptr poison, !22556, !DIExpression(DW_OP_LLVM_fragment, 128, 640), !22561)
  %i.a = alloca [96 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !22548, !DIExpression(DW_OP_LLVM_fragment, 128, 640), !22562)
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
    #dbg_value(ptr %1, !22544, !DIExpression(), !22563)
    #dbg_declare(ptr poison, !22545, !DIExpression(), !22560)
    #dbg_declare(ptr %i.c, !22546, !DIExpression(), !22564)
    #dbg_declare(ptr %i.b, !22557, !DIExpression(), !22565)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22560
    #dbg_value(ptr %1, !22566, !DIExpression(), !22569)
    #dbg_value(ptr %1, !22570, !DIExpression(), !22573)
  %i.d = load i64, ptr %1, align 8, !dbg !22609, !range !3432, !noundef !2201 ; 2 uses
  %.not = icmp eq i64 %i.d, 0, !dbg !22610
  %. = add nuw nsw i64 %i.d, 1, !dbg !22560
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 15, i64 noundef %.), !dbg !22560
  %i.e = load i64, ptr %i.b, align 8, !dbg !22611, !range !2805, !noundef !2201 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1, !dbg !22611
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22612
  %i.h = load ptr, ptr %i.g, align 8, !dbg !22612 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !22613

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22614
    #dbg_value(ptr %i.h, !22547, !DIExpression(), !22575)
    #dbg_value(ptr %i.h, !22576, !DIExpression(), !22584)
    #dbg_value(ptr %i.h, !22577, !DIExpression(), !22585)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22615
  store ptr %i.h, ptr %i.i, align 8, !dbg !22615
  store i64 -1, ptr %0, align 8, !dbg !22615
  br label %bb.i, !dbg !22616

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 %i.e, !22556, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22587)
    #dbg_value(ptr %i.h, !22556, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22587)
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !22617
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !22562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.0..sroa_idx, i64 80, i1 false), !dbg !22617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22614
    #dbg_value(i64 %i.e, !22548, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22588)
    #dbg_value(ptr %i.h, !22548, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22588)
  store i64 %i.e, ptr %i.c, align 8, !dbg !22562
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !22562
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !22562
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22564
  %i.k = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.d unwind label %bb.l, !dbg !22564 ; 2 uses

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.k, !22589, !DIExpression(), !22599)
  %.not36 = icmp eq ptr %i.k, null, !dbg !22618
  br i1 %.not36, label %bb.e, label %bb.j, !dbg !22619

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %1, !22566, !DIExpression(), !22602)
    #dbg_value(ptr %1, !22570, !DIExpression(), !22605)
  br i1 %.not, label %bb.h, label %bb.f, !dbg !22620

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionyEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l, !dbg !22620 ; 2 uses

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.l, !22589, !DIExpression(), !22607)
  %.not38 = icmp eq ptr %i.l, null, !dbg !22621
  br i1 %.not38, label %bb.h, label %bb.j, !dbg !22622

bb.h:                                             ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !dbg !22564
  call void @_RNvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB5_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a), !dbg !22564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22623
  br label %bb.i, !dbg !22614

bb.i:                                             ; preds = %bb.b, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22614
  ret void, !dbg !22624

bb.j:                                             ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.k, %bb.d ], [ %i.l, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22625
  store ptr %.sink, ptr %i.m, align 8, !dbg !22625
  store i64 -1, ptr %0, align 8, !dbg !22625
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsenfyI6F4F2A_10serde_json5value3ser12SerializeMapECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c), !dbg !22614
  br label %bb.i, !dbg !22614

bb.k:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm, !dbg !22560

bb.l:                                             ; preds = %bb.c, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsenfyI6F4F2A_10serde_json5value3ser12SerializeMapECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #16
          to label %bb.k unwind label %bb.m, !dbg !22614

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !22560
  unreachable, !dbg !22560
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1m_1__NtB5_15FramesProcessedNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22635 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !22678, !DIExpression(), !22690)
    #dbg_value(ptr %1, !22679, !DIExpression(), !22690)
    #dbg_declare(ptr %i.a, !22680, !DIExpression(), !22691)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22726
    #dbg_value(ptr %0, !22692, !DIExpression(), !22695)
    #dbg_value(ptr %0, !22696, !DIExpression(), !22699)
  %i.b = load i64, ptr %0, align 8, !dbg !22727, !range !3432, !noundef !2201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22700), !dbg !22726
    #dbg_value(ptr %1, !3658, !DIExpression(), !22641)
    #dbg_value(ptr poison, !3672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22641)
    #dbg_value(i64 15, !3672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22641)
    #dbg_value(i64 poison, !3673, !DIExpression(), !22641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22701), !dbg !22728
    #dbg_value(i64 1, !3676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22645)
    #dbg_value(i64 poison, !3676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22645)
    #dbg_value(ptr %1, !3686, !DIExpression(), !22645)
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !22729, !alias.scope !22702, !noalias !22703, !nonnull !2201, !align !3616, !noundef !2201
    #dbg_value(ptr poison, !3695, !DIExpression(), !22649)
    #dbg_value(ptr poison, !3700, !DIExpression(), !22649)
    #dbg_value(ptr poison, !3705, !DIExpression(), !22651)
    #dbg_value(ptr @421, !3710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22651)
    #dbg_value(i64 1, !3710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22651)
    #dbg_value(ptr %.val.i.i, !3715, !DIExpression(), !22653)
    #dbg_value(ptr @421, !3721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22653)
    #dbg_value(i64 1, !3721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22653)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @421, i64 noundef range(i64 0, 21) 1), !dbg !22730, !noalias !22704
    #dbg_value(ptr %1, !22682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22705)
    #dbg_value(i8 1, !22682, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22705)
  store ptr %1, ptr %i.a, align 8, !dbg !22731
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22731 ; 2 uses
  store i8 1, ptr %i.c, align 8, !dbg !22731
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22691
    #dbg_value(ptr %i.a, !4989, !DIExpression(), !22655)
    #dbg_value(ptr @126, !4993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22655)
    #dbg_value(i64 6, !4993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22655)
    #dbg_value(ptr %i.d, !4994, !DIExpression(), !22655)
  %i.e = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeIBN_NtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !dbg !22732 ; 2 uses
    #dbg_value(ptr %i.e, !22706, !DIExpression(), !22716)
  %.not31 = icmp eq ptr %i.e, null, !dbg !22733
  br i1 %.not31, label %bb.b, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22734

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0, !dbg !22735
    #dbg_value(ptr %0, !22692, !DIExpression(), !22720)
    #dbg_value(ptr %0, !22696, !DIExpression(), !22723)
  br i1 %.not, label %bb.d, label %bb.c, !dbg !22736

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.a, !3727, !DIExpression(), !22664)
    #dbg_value(ptr @144, !3730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22664)
    #dbg_value(i64 14, !3730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22664)
    #dbg_value(ptr %0, !3731, !DIExpression(), !22664)
  %i.f = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionyEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !dbg !22737 ; 2 uses
    #dbg_value(ptr %i.f, !22706, !DIExpression(), !22725)
  %.not33 = icmp eq ptr %i.f, null, !dbg !22738
  br i1 %.not33, label %bb.d, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22739

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = load i8, ptr %i.c, align 8, !dbg !22691, !range !3599, !noundef !2201
    #dbg_value(ptr poison, !3766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22666)
    #dbg_value(i8 %i.g, !3766, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22666)
    #dbg_value(ptr poison, !3770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22668)
    #dbg_value(i8 %i.g, !3770, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22668)
    #dbg_value(ptr poison, !3772, !DIExpression(), !22669)
    #dbg_value(i8 %i.g, !3773, !DIExpression(), !22669)
  %i.h = icmp eq i8 %i.g, 0, !dbg !22740
  br i1 %i.h, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.e, !dbg !22740

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !dbg !22691, !nonnull !2201, !align !3616, !noundef !2201
  %.val = load ptr, ptr %i.i, align 8, !dbg !22691, !nonnull !2201, !noundef !2201
    #dbg_value(ptr poison, !3775, !DIExpression(), !22671)
    #dbg_value(ptr poison, !3776, !DIExpression(), !22671)
    #dbg_value(ptr poison, !3705, !DIExpression(), !22673)
    #dbg_value(ptr @419, !3710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22673)
    #dbg_value(i64 1, !3710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22673)
    #dbg_value(ptr %.val, !3715, !DIExpression(), !22675)
    #dbg_value(ptr @419, !3721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22675)
    #dbg_value(i64 1, !3721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22675)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef range(i64 0, 21) 1), !dbg !22741
  br label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22742

_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.e, %bb.d, %bb.a, %bb.c
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %i.f, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], !dbg !22726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22743
  ret ptr %.sroa.0.0, !dbg !22744
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1n_1__NtB5_15FramesProcessedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 !dbg !22745 {
bb.a:
    #dbg_declare(ptr %1, !22748, !DIExpression(), !22750)
  tail call void @_RINvXsr_NtNtNtCsbmN5fM2HLz5_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1n_1__NtB39_15FramesProcessedNtB1Z_11Deserialize11deserialize9___VisitorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @150, i64 noundef 2), !dbg !22750
  ret void, !dbg !22751
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1n_1__NtB5_15FramesProcessedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !22752 {
bb.a:
    #dbg_value(ptr %1, !22759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22761)
    #dbg_value(i64 %2, !22759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22761)
    #dbg_value(ptr %1, !22762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22755)
    #dbg_value(i64 %2, !22762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22755)
    #dbg_value(ptr poison, !22765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22755)
    #dbg_value(i64 15, !22765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22755)
    #dbg_value(ptr poison, !22766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22755)
    #dbg_value(i64 2, !22766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22755)
    #dbg_declare(ptr poison, !22767, !DIExpression(), !22756)
  tail call void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1n_1__NtB3f_15FramesProcessedNtB28_11Deserialize11deserialize9___VisitorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !22771
end_hunk_1
begin_hunk_2_@_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quicsM_1__NtB5_9QuicFrameNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeNtNtNtCsenfyI6F4F2A_10serde_json5value3ser10SerializerECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_declare(ptr poison, !31732, !DIExpression(), !32249)
    #dbg_declare(ptr %i.bn, !31734, !DIExpression(), !32250)
    #dbg_declare(ptr %i.bm, !32116, !DIExpression(), !32251)
    #dbg_declare(ptr %i.bk, !31744, !DIExpression(), !32252)
    #dbg_declare(ptr %i.bj, !32116, !DIExpression(), !32253)
    #dbg_declare(ptr %i.bh, !31759, !DIExpression(), !32254)
    #dbg_declare(ptr %i.bg, !32116, !DIExpression(), !32255)
    #dbg_declare(ptr %i.be, !31793, !DIExpression(), !32256)
    #dbg_declare(ptr %i.bd, !32116, !DIExpression(), !32257)
    #dbg_declare(ptr %i.bb, !31816, !DIExpression(), !32258)
    #dbg_declare(ptr %i.ba, !32116, !DIExpression(), !32259)
    #dbg_declare(ptr %i.ay, !31835, !DIExpression(), !32260)
    #dbg_declare(ptr %i.ax, !32116, !DIExpression(), !32261)
    #dbg_declare(ptr %i.av, !31848, !DIExpression(), !32262)
    #dbg_declare(ptr %i.au, !32116, !DIExpression(), !32263)
    #dbg_declare(ptr %i.as, !31863, !DIExpression(), !32264)
    #dbg_declare(ptr %i.ar, !32116, !DIExpression(), !32265)
    #dbg_declare(ptr %i.ap, !31884, !DIExpression(), !32266)
    #dbg_declare(ptr %i.ao, !32116, !DIExpression(), !32267)
    #dbg_declare(ptr %i.am, !31898, !DIExpression(), !32268)
    #dbg_declare(ptr %i.al, !32116, !DIExpression(), !32269)
    #dbg_declare(ptr %i.aj, !31914, !DIExpression(), !32270)
    #dbg_declare(ptr %i.ai, !32116, !DIExpression(), !32271)
    #dbg_declare(ptr %i.ag, !31929, !DIExpression(), !32272)
    #dbg_declare(ptr %i.af, !32116, !DIExpression(), !32273)
    #dbg_declare(ptr %i.ad, !31943, !DIExpression(), !32274)
    #dbg_declare(ptr %i.ac, !32116, !DIExpression(), !32275)
    #dbg_declare(ptr %i.aa, !31959, !DIExpression(), !32276)
    #dbg_declare(ptr %i.z, !32116, !DIExpression(), !32277)
    #dbg_declare(ptr %i.x, !31978, !DIExpression(), !32278)
    #dbg_declare(ptr %i.w, !32116, !DIExpression(), !32279)
    #dbg_declare(ptr %i.u, !32003, !DIExpression(), !32280)
    #dbg_declare(ptr %i.t, !32116, !DIExpression(), !32281)
    #dbg_declare(ptr %i.r, !32016, !DIExpression(), !32282)
    #dbg_declare(ptr %i.q, !32116, !DIExpression(), !32283)
    #dbg_declare(ptr %i.o, !32031, !DIExpression(), !32284)
    #dbg_declare(ptr %i.n, !32116, !DIExpression(), !32285)
    #dbg_declare(ptr %i.l, !32050, !DIExpression(), !32286)
    #dbg_declare(ptr %i.k, !32116, !DIExpression(), !32287)
    #dbg_declare(ptr %i.i, !32080, !DIExpression(), !32288)
    #dbg_declare(ptr %i.h, !32116, !DIExpression(), !32289)
    #dbg_declare(ptr %i.f, !32090, !DIExpression(), !32290)
    #dbg_declare(ptr %i.e, !32116, !DIExpression(), !32291)
    #dbg_declare(ptr %i.c, !32101, !DIExpression(), !32292)
    #dbg_declare(ptr %i.b, !32116, !DIExpression(), !32293)
  %i.bo = load i8, ptr %1, align 8, !dbg !32249, !range !3156, !noundef !2201
  switch i8 %i.bo, label %default.unreachable1695 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
  ], !dbg !32249

default.unreachable1695:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.bp, !31733, !DIExpression(), !32294)
    #dbg_value(ptr %i.bp, !32295, !DIExpression(), !32299)
    #dbg_value(ptr %i.bp, !32300, !DIExpression(), !32304)
    #dbg_value(ptr %i.bp, !32295, !DIExpression(), !32307)
    #dbg_value(ptr %i.bp, !32300, !DIExpression(), !32310)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !dbg !32224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !dbg !32224
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !33702, !align !3616, !noundef !2201
  %.not1392 = icmp eq ptr %i.bq, null, !dbg !33702 ; 2 uses
  %. = select i1 %.not1392, i64 1, i64 2, !dbg !32224
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %.), !dbg !32224
  %i.br = load i64, ptr %i.bm, align 8, !dbg !33703, !range !2805, !noundef !2201 ; 2 uses
  %i.bs = icmp eq i64 %i.br, -1, !dbg !33703
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !33704
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !33704 ; 2 uses
  br i1 %i.bs, label %bb.x, label %bb.y, !dbg !33705

bb.c:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.bv, !31743, !DIExpression(), !32311)
    #dbg_value(ptr %i.bv, !32295, !DIExpression(), !32314)
    #dbg_value(ptr %i.bv, !32300, !DIExpression(), !32317)
    #dbg_value(ptr %i.bv, !32295, !DIExpression(), !32320)
    #dbg_value(ptr %i.bv, !32300, !DIExpression(), !32323)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !33706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !33706
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !33707, !align !3616, !noundef !2201
  %.not1388 = icmp eq ptr %i.bw, null, !dbg !33707 ; 2 uses
  %.1397 = select i1 %.not1388, i64 1, i64 2, !dbg !33706
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %.1397), !dbg !33706
  %i.bx = load i64, ptr %i.bj, align 8, !dbg !33708, !range !2805, !noundef !2201 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1, !dbg !33708
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !33709
  %i.ca = load ptr, ptr %i.bz, align 8, !dbg !33709 ; 2 uses
  br i1 %i.by, label %bb.ak, label %bb.al, !dbg !33710

bb.d:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.cb, !31753, !DIExpression(), !32324)
    #dbg_value(ptr %i.cb, !32325, !DIExpression(), !32329)
    #dbg_value(ptr %i.cb, !32330, !DIExpression(), !32334)
    #dbg_value(ptr %i.cb, !32325, !DIExpression(), !32337)
    #dbg_value(ptr %i.cb, !32330, !DIExpression(), !32340)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.cc, !31754, !DIExpression(), !32324)
    #dbg_value(ptr %i.cc, !32341, !DIExpression(), !32345)
    #dbg_value(ptr %i.cc, !32346, !DIExpression(), !32350)
    #dbg_value(ptr %i.cc, !32341, !DIExpression(), !32353)
    #dbg_value(ptr %i.cc, !32346, !DIExpression(), !32356)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.cd, !31755, !DIExpression(), !32324)
    #dbg_value(ptr %i.cd, !32357, !DIExpression(), !32361)
    #dbg_value(ptr %i.cd, !32362, !DIExpression(), !32366)
    #dbg_value(ptr %i.cd, !32357, !DIExpression(), !32369)
    #dbg_value(ptr %i.cd, !32362, !DIExpression(), !32372)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.ce, !31756, !DIExpression(), !32324)
    #dbg_value(ptr %i.ce, !32357, !DIExpression(), !32375)
    #dbg_value(ptr %i.ce, !32362, !DIExpression(), !32378)
    #dbg_value(ptr %i.ce, !32357, !DIExpression(), !32381)
    #dbg_value(ptr %i.ce, !32362, !DIExpression(), !32384)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.cf, !31757, !DIExpression(), !32324)
    #dbg_value(ptr %i.cf, !32357, !DIExpression(), !32387)
    #dbg_value(ptr %i.cf, !32362, !DIExpression(), !32390)
    #dbg_value(ptr %i.cf, !32357, !DIExpression(), !32393)
    #dbg_value(ptr %i.cf, !32362, !DIExpression(), !32396)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.cg, !31758, !DIExpression(), !32324)
    #dbg_value(ptr %i.cg, !32295, !DIExpression(), !32399)
    #dbg_value(ptr %i.cg, !32300, !DIExpression(), !32402)
    #dbg_value(ptr %i.cg, !32295, !DIExpression(), !32405)
    #dbg_value(ptr %i.cg, !32300, !DIExpression(), !32408)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !33711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !33711
  %i.ch = load i32, ptr %i.cb, align 8, !dbg !33712, !range !4288, !noundef !2201 ; 2 uses
  %.not1369.not = icmp eq i32 %i.ch, 0, !dbg !33713
  %i.ci = load i64, ptr %i.cc, align 8, !dbg !33714, !range !2805, !noundef !2201
  %.not1370 = icmp ne i64 %i.ci, -1, !dbg !33714  ; 2 uses
  %.sroa.044.0 = zext i1 %.not1370 to i64, !dbg !33715
  %i.cj = load i64, ptr %i.cd, align 8, !dbg !33716, !range !3432, !noundef !2201 ; 2 uses
  %.not1371.not = icmp eq i64 %i.cj, 0, !dbg !33717
  %i.ck = load i64, ptr %i.ce, align 8, !dbg !33718, !range !3432, !noundef !2201 ; 2 uses
  %.not1372.not = icmp eq i64 %i.ck, 0, !dbg !33719
  %i.cl = load i64, ptr %i.cf, align 8, !dbg !33720, !range !3432, !noundef !2201 ; 2 uses
  %.not1373.not = icmp eq i64 %i.cl, 0, !dbg !33721
  %i.cm = load ptr, ptr %i.cg, align 8, !dbg !33722, !align !3616, !noundef !2201
  %.not1374 = icmp ne ptr %i.cm, null, !dbg !33722 ; 2 uses
  %.sroa.048.0 = zext i1 %.not1374 to i64, !dbg !33715
  %narrow = add nuw nsw i32 %i.ch, 1, !dbg !33711
  %i.cn = zext nneg i32 %narrow to i64, !dbg !33711
  %i.co = add nuw nsw i64 %i.cj, %i.cn, !dbg !33711
  %i.cp = add nuw nsw i64 %i.co, %.sroa.044.0, !dbg !33711
  %i.cq = add nuw nsw i64 %i.cp, %i.ck, !dbg !33711
  %i.cr = add nuw nsw i64 %i.cq, %i.cl, !dbg !33711
  %i.cs = add nuw nsw i64 %i.cr, %.sroa.048.0, !dbg !33711
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %i.cs), !dbg !33711
  %i.ct = load i64, ptr %i.bg, align 8, !dbg !33723, !range !2805, !noundef !2201 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, -1, !dbg !33723
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !33724
  %i.cw = load ptr, ptr %i.cv, align 8, !dbg !33724 ; 2 uses
  br i1 %i.cu, label %bb.au, label %bb.av, !dbg !33725

bb.e:                                             ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.cx, !31788, !DIExpression(), !32411)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !32249
    #dbg_value(ptr %i.cy, !31789, !DIExpression(), !32411)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.cz, !31790, !DIExpression(), !32411)
    #dbg_value(ptr %i.cz, !32357, !DIExpression(), !32414)
    #dbg_value(ptr %i.cz, !32362, !DIExpression(), !32417)
    #dbg_value(ptr %i.cz, !32357, !DIExpression(), !32420)
    #dbg_value(ptr %i.cz, !32362, !DIExpression(), !32423)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249
    #dbg_value(ptr %i.da, !31791, !DIExpression(), !32411)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.db, !31792, !DIExpression(), !32411)
    #dbg_value(ptr %i.db, !32295, !DIExpression(), !32426)
    #dbg_value(ptr %i.db, !32300, !DIExpression(), !32429)
    #dbg_value(ptr %i.db, !32295, !DIExpression(), !32432)
    #dbg_value(ptr %i.db, !32300, !DIExpression(), !32435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !33726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !33726
  %i.dc = load i64, ptr %i.cz, align 8, !dbg !33727, !range !3432, !noundef !2201 ; 2 uses
  %.not1359 = icmp eq i64 %i.dc, 0, !dbg !33728
  %i.dd = load ptr, ptr %i.db, align 8, !dbg !33729, !align !3616, !noundef !2201
  %.not1360 = icmp ne ptr %i.dd, null, !dbg !33729 ; 2 uses
  %.sroa.099.0 = zext i1 %.not1360 to i64, !dbg !33730
  %2 = or disjoint i64 %i.dc, 4, !dbg !33726
  %i.de = add nuw nsw i64 %2, %.sroa.099.0, !dbg !33726
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %i.de), !dbg !33726
  %i.df = load i64, ptr %i.bd, align 8, !dbg !33731, !range !2805, !noundef !2201 ; 2 uses
  %i.dg = icmp eq i64 %i.df, -1, !dbg !33731
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !33732
  %i.di = load ptr, ptr %i.dh, align 8, !dbg !33732 ; 2 uses
  br i1 %i.dg, label %bb.bt, label %bb.bu, !dbg !33733

bb.f:                                             ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.dj, !31812, !DIExpression(), !32436)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !32249
    #dbg_value(ptr %i.dk, !31813, !DIExpression(), !32436)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.dl, !31814, !DIExpression(), !32436)
    #dbg_value(ptr %i.dl, !32357, !DIExpression(), !32439)
    #dbg_value(ptr %i.dl, !32362, !DIExpression(), !32442)
    #dbg_value(ptr %i.dl, !32357, !DIExpression(), !32445)
    #dbg_value(ptr %i.dl, !32362, !DIExpression(), !32448)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.dm, !31815, !DIExpression(), !32436)
    #dbg_value(ptr %i.dm, !32295, !DIExpression(), !32451)
    #dbg_value(ptr %i.dm, !32300, !DIExpression(), !32454)
    #dbg_value(ptr %i.dm, !32295, !DIExpression(), !32457)
    #dbg_value(ptr %i.dm, !32300, !DIExpression(), !32460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !33734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !33734
  %i.dn = load i64, ptr %i.dl, align 8, !dbg !33735, !range !3432, !noundef !2201 ; 2 uses
  %.not1350 = icmp eq i64 %i.dn, 0, !dbg !33736
  %i.do = load ptr, ptr %i.dm, align 8, !dbg !33737, !align !3616, !noundef !2201
  %.not1351 = icmp ne ptr %i.do, null, !dbg !33737 ; 2 uses
  %.sroa.0135.0 = zext i1 %.not1351 to i64, !dbg !33738
  %3 = add nuw nsw i64 %i.dn, 3, !dbg !33734
  %i.dp = add nuw nsw i64 %3, %.sroa.0135.0, !dbg !33734
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %i.dp), !dbg !33734
  %i.dq = load i64, ptr %i.ba, align 8, !dbg !33739, !range !2805, !noundef !2201 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, -1, !dbg !33739
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !33740
  %i.dt = load ptr, ptr %i.ds, align 8, !dbg !33740 ; 2 uses
  br i1 %i.dr, label %bb.cm, label %bb.cn, !dbg !33741

bb.g:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.du, !31833, !DIExpression(), !32461)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.dv, !31834, !DIExpression(), !32461)
    #dbg_value(ptr %i.dv, !32295, !DIExpression(), !32464)
    #dbg_value(ptr %i.dv, !32300, !DIExpression(), !32467)
    #dbg_value(ptr %i.dv, !32295, !DIExpression(), !32470)
    #dbg_value(ptr %i.dv, !32300, !DIExpression(), !32473)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !33742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !33742
  %i.dw = load ptr, ptr %i.dv, align 8, !dbg !33743, !align !3616, !noundef !2201
  %.not1345 = icmp eq ptr %i.dw, null, !dbg !33743 ; 2 uses
  %.1401 = select i1 %.not1345, i64 2, i64 3, !dbg !33742
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %.1401), !dbg !33742
  %i.dx = load i64, ptr %i.ax, align 8, !dbg !33744, !range !2805, !noundef !2201 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, -1, !dbg !33744
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !33745
  %i.ea = load ptr, ptr %i.dz, align 8, !dbg !33745 ; 2 uses
  br i1 %i.dy, label %bb.dd, label %bb.de, !dbg !33746

bb.h:                                             ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249
    #dbg_value(ptr %i.eb, !31846, !DIExpression(), !32474)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.ec, !31847, !DIExpression(), !32474)
    #dbg_value(ptr %i.ec, !32295, !DIExpression(), !32477)
    #dbg_value(ptr %i.ec, !32300, !DIExpression(), !32480)
    #dbg_value(ptr %i.ec, !32295, !DIExpression(), !32483)
    #dbg_value(ptr %i.ec, !32300, !DIExpression(), !32486)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !33747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !33747
  %i.ed = load ptr, ptr %i.ec, align 8, !dbg !33748, !align !3616, !noundef !2201
  %.not1340 = icmp eq ptr %i.ed, null, !dbg !33748 ; 2 uses
  %.1402 = select i1 %.not1340, i64 2, i64 3, !dbg !33747
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %.1402), !dbg !33747
  %i.ee = load i64, ptr %i.au, align 8, !dbg !33749, !range !2805, !noundef !2201 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, -1, !dbg !33749
  %i.eg = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !33750
  %i.eh = load ptr, ptr %i.eg, align 8, !dbg !33750 ; 2 uses
  br i1 %i.ef, label %bb.dp, label %bb.dq, !dbg !33751

bb.i:                                             ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.ei, !31859, !DIExpression(), !32487)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.ej, !31860, !DIExpression(), !32487)
    #dbg_value(ptr %i.ej, !32357, !DIExpression(), !32490)
    #dbg_value(ptr %i.ej, !32362, !DIExpression(), !32493)
    #dbg_value(ptr %i.ej, !32357, !DIExpression(), !32496)
    #dbg_value(ptr %i.ej, !32362, !DIExpression(), !32499)
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.ek, !31861, !DIExpression(), !32487)
    #dbg_value(ptr %i.ek, !32500, !DIExpression(), !32504)
    #dbg_value(ptr %i.ek, !32505, !DIExpression(), !32509)
    #dbg_value(ptr %i.ek, !32500, !DIExpression(), !32512)
    #dbg_value(ptr %i.ek, !32505, !DIExpression(), !32515)
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.el, !31862, !DIExpression(), !32487)
    #dbg_value(ptr %i.el, !32295, !DIExpression(), !32518)
    #dbg_value(ptr %i.el, !32300, !DIExpression(), !32521)
    #dbg_value(ptr %i.el, !32295, !DIExpression(), !32524)
    #dbg_value(ptr %i.el, !32300, !DIExpression(), !32527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !33752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !33752
  %i.em = load i64, ptr %i.ej, align 8, !dbg !33753, !range !3432, !noundef !2201 ; 2 uses
  %.not1329 = icmp eq i64 %i.em, 0, !dbg !33754
  %i.en = load i8, ptr %i.ek, align 1, !dbg !33755, !range !3599, !noundef !2201
  %.not1330 = icmp ne i8 %i.en, 2, !dbg !33755    ; 2 uses
  %.sroa.0214.0 = zext i1 %.not1330 to i64, !dbg !33756
  %i.eo = load ptr, ptr %i.el, align 8, !dbg !33757, !align !3616, !noundef !2201
  %.not1331 = icmp ne ptr %i.eo, null, !dbg !33757 ; 2 uses
  %.sroa.0215.0 = zext i1 %.not1331 to i64, !dbg !33756
  %4 = or disjoint i64 %i.em, 2, !dbg !33752
  %i.ep = add nuw nsw i64 %4, %.sroa.0214.0, !dbg !33752
  %i.eq = add nuw nsw i64 %i.ep, %.sroa.0215.0, !dbg !33752
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %i.eq), !dbg !33752
  %i.er = load i64, ptr %i.ar, align 8, !dbg !33758, !range !2805, !noundef !2201 ; 2 uses
  %i.es = icmp eq i64 %i.er, -1, !dbg !33758
  %i.et = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !33759
  %i.eu = load ptr, ptr %i.et, align 8, !dbg !33759 ; 2 uses
  br i1 %i.es, label %bb.eb, label %bb.ec, !dbg !33760

bb.j:                                             ; preds = %bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.ev, !31882, !DIExpression(), !32528)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.ew, !31883, !DIExpression(), !32528)
    #dbg_value(ptr %i.ew, !32295, !DIExpression(), !32531)
    #dbg_value(ptr %i.ew, !32300, !DIExpression(), !32534)
    #dbg_value(ptr %i.ew, !32295, !DIExpression(), !32537)
    #dbg_value(ptr %i.ew, !32300, !DIExpression(), !32540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !33761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !33761
  %i.ex = load ptr, ptr %i.ew, align 8, !dbg !33762, !align !3616, !noundef !2201
  %.not1324 = icmp eq ptr %i.ex, null, !dbg !33762 ; 2 uses
  %.1404 = select i1 %.not1324, i64 2, i64 3, !dbg !33761
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %.1404), !dbg !33761
  %i.ey = load i64, ptr %i.ao, align 8, !dbg !33763, !range !2805, !noundef !2201 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, -1, !dbg !33763
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !33764
  %i.fb = load ptr, ptr %i.fa, align 8, !dbg !33764 ; 2 uses
  br i1 %i.ez, label %bb.et, label %bb.eu, !dbg !33765

bb.k:                                             ; preds = %bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.fc, !31895, !DIExpression(), !32541)
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249
    #dbg_value(ptr %i.fd, !31896, !DIExpression(), !32541)
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.fe, !31897, !DIExpression(), !32541)
    #dbg_value(ptr %i.fe, !32295, !DIExpression(), !32544)
    #dbg_value(ptr %i.fe, !32300, !DIExpression(), !32547)
    #dbg_value(ptr %i.fe, !32295, !DIExpression(), !32550)
    #dbg_value(ptr %i.fe, !32300, !DIExpression(), !32553)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !33766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !33766
  %i.ff = load ptr, ptr %i.fe, align 8, !dbg !33767, !align !3616, !noundef !2201
  %.not1318 = icmp eq ptr %i.ff, null, !dbg !33767 ; 2 uses
  %.1405 = select i1 %.not1318, i64 3, i64 4, !dbg !33766
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %.1405), !dbg !33766
  %i.fg = load i64, ptr %i.al, align 8, !dbg !33768, !range !2805, !noundef !2201 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, -1, !dbg !33768
  %i.fi = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !33769
  %i.fj = load ptr, ptr %i.fi, align 8, !dbg !33769 ; 2 uses
  br i1 %i.fh, label %bb.ff, label %bb.fg, !dbg !33770

bb.l:                                             ; preds = %bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !32249
    #dbg_value(ptr %i.fk, !31911, !DIExpression(), !32554)
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.fl, !31912, !DIExpression(), !32554)
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.fm, !31913, !DIExpression(), !32554)
    #dbg_value(ptr %i.fm, !32295, !DIExpression(), !32557)
    #dbg_value(ptr %i.fm, !32300, !DIExpression(), !32560)
    #dbg_value(ptr %i.fm, !32295, !DIExpression(), !32563)
    #dbg_value(ptr %i.fm, !32300, !DIExpression(), !32566)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !33771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !33771
  %i.fn = load ptr, ptr %i.fm, align 8, !dbg !33772, !align !3616, !noundef !2201
  %.not1312 = icmp eq ptr %i.fn, null, !dbg !33772 ; 2 uses
  %.1406 = select i1 %.not1312, i64 3, i64 4, !dbg !33771
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %.1406), !dbg !33771
  %i.fo = load i64, ptr %i.ai, align 8, !dbg !33773, !range !2805, !noundef !2201 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, -1, !dbg !33773
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !33774
  %i.fr = load ptr, ptr %i.fq, align 8, !dbg !33774 ; 2 uses
  br i1 %i.fp, label %bb.ft, label %bb.fu, !dbg !33775

bb.m:                                             ; preds = %bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.fs, !31927, !DIExpression(), !32567)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.ft, !31928, !DIExpression(), !32567)
    #dbg_value(ptr %i.ft, !32295, !DIExpression(), !32570)
    #dbg_value(ptr %i.ft, !32300, !DIExpression(), !32573)
    #dbg_value(ptr %i.ft, !32295, !DIExpression(), !32576)
    #dbg_value(ptr %i.ft, !32300, !DIExpression(), !32579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !33776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !33776
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !33777, !align !3616, !noundef !2201
  %.not1307 = icmp eq ptr %i.fu, null, !dbg !33777 ; 2 uses
  %.1407 = select i1 %.not1307, i64 2, i64 3, !dbg !33776
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %.1407), !dbg !33776
  %i.fv = load i64, ptr %i.af, align 8, !dbg !33778, !range !2805, !noundef !2201 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, -1, !dbg !33778
  %i.fx = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !33779
  %i.fy = load ptr, ptr %i.fx, align 8, !dbg !33779 ; 2 uses
  br i1 %i.fw, label %bb.gh, label %bb.gi, !dbg !33780

bb.n:                                             ; preds = %bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.fz, !31940, !DIExpression(), !32580)
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249
    #dbg_value(ptr %i.ga, !31941, !DIExpression(), !32580)
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.gb, !31942, !DIExpression(), !32580)
    #dbg_value(ptr %i.gb, !32295, !DIExpression(), !32583)
    #dbg_value(ptr %i.gb, !32300, !DIExpression(), !32586)
    #dbg_value(ptr %i.gb, !32295, !DIExpression(), !32589)
    #dbg_value(ptr %i.gb, !32300, !DIExpression(), !32592)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !33781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !33781
  %i.gc = load ptr, ptr %i.gb, align 8, !dbg !33782, !align !3616, !noundef !2201
  %.not1301 = icmp eq ptr %i.gc, null, !dbg !33782 ; 2 uses
  %.1408 = select i1 %.not1301, i64 3, i64 4, !dbg !33781
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %.1408), !dbg !33781
  %i.gd = load i64, ptr %i.ac, align 8, !dbg !33783, !range !2805, !noundef !2201 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, -1, !dbg !33783
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !33784
  %i.gg = load ptr, ptr %i.gf, align 8, !dbg !33784 ; 2 uses
  br i1 %i.ge, label %bb.gt, label %bb.gu, !dbg !33785

bb.o:                                             ; preds = %bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !32249
    #dbg_value(ptr %i.gh, !31956, !DIExpression(), !32593)
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.gi, !31957, !DIExpression(), !32593)
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.gj, !31958, !DIExpression(), !32593)
    #dbg_value(ptr %i.gj, !32295, !DIExpression(), !32596)
    #dbg_value(ptr %i.gj, !32300, !DIExpression(), !32599)
    #dbg_value(ptr %i.gj, !32295, !DIExpression(), !32602)
    #dbg_value(ptr %i.gj, !32300, !DIExpression(), !32605)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !33786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !33786
  %i.gk = load ptr, ptr %i.gj, align 8, !dbg !33787, !align !3616, !noundef !2201
  %.not1295 = icmp eq ptr %i.gk, null, !dbg !33787 ; 2 uses
  %.1409 = select i1 %.not1295, i64 3, i64 4, !dbg !33786
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %.1409), !dbg !33786
  %i.gl = load i64, ptr %i.z, align 8, !dbg !33788, !range !2805, !noundef !2201 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, -1, !dbg !33788
  %i.gn = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !33789
  %i.go = load ptr, ptr %i.gn, align 8, !dbg !33789 ; 2 uses
  br i1 %i.gm, label %bb.hh, label %bb.hi, !dbg !33790

bb.p:                                             ; preds = %bb.a
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.gp, !31972, !DIExpression(), !32606)
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249
    #dbg_value(ptr %i.gq, !31973, !DIExpression(), !32606)
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.gr, !31974, !DIExpression(), !32606)
    #dbg_value(ptr %i.gr, !32607, !DIExpression(), !32611)
    #dbg_value(ptr %i.gr, !32612, !DIExpression(), !32616)
    #dbg_value(ptr %i.gr, !32607, !DIExpression(), !32619)
    #dbg_value(ptr %i.gr, !32612, !DIExpression(), !32622)
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !32249
    #dbg_value(ptr %i.gs, !31975, !DIExpression(), !32606)
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.gt, !31976, !DIExpression(), !32606)
    #dbg_value(ptr %i.gt, !32623, !DIExpression(), !32627)
    #dbg_value(ptr %i.gt, !32628, !DIExpression(), !32632)
    #dbg_value(ptr %i.gt, !32623, !DIExpression(), !32635)
    #dbg_value(ptr %i.gt, !32628, !DIExpression(), !32638)
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.gu, !31977, !DIExpression(), !32606)
    #dbg_value(ptr %i.gu, !32295, !DIExpression(), !32641)
    #dbg_value(ptr %i.gu, !32300, !DIExpression(), !32644)
    #dbg_value(ptr %i.gu, !32295, !DIExpression(), !32647)
    #dbg_value(ptr %i.gu, !32300, !DIExpression(), !32650)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !33791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !33791
  %i.gv = load i8, ptr %i.gr, align 1, !dbg !33792, !range !3608, !noundef !2201
  %i.gw = trunc nuw i8 %i.gv to i1, !dbg !33792   ; 2 uses
  %i.gx = load i64, ptr %i.gt, align 8, !dbg !33793, !range !2805, !noundef !2201
  %.not1284 = icmp ne i64 %i.gx, -1, !dbg !33793  ; 2 uses
  %.sroa.0401.0 = zext i1 %.not1284 to i64, !dbg !33794
  %i.gy = load ptr, ptr %i.gu, align 8, !dbg !33795, !align !3616, !noundef !2201
  %.not1285 = icmp ne ptr %i.gy, null, !dbg !33795 ; 2 uses
  %.sroa.0402.0 = zext i1 %.not1285 to i64, !dbg !33794
  %i.gz = select i1 %i.gw, i64 5, i64 4, !dbg !33791
  %i.ha = add nuw nsw i64 %i.gz, %.sroa.0401.0, !dbg !33791
  %i.hb = add nuw nsw i64 %i.ha, %.sroa.0402.0, !dbg !33791
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 9, i64 noundef %i.hb), !dbg !33791
  %i.hc = load i64, ptr %i.w, align 8, !dbg !33796, !range !2805, !noundef !2201 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, -1, !dbg !33796
  %i.he = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !33797
  %i.hf = load ptr, ptr %i.he, align 8, !dbg !33797 ; 2 uses
  br i1 %i.hd, label %bb.hv, label %bb.hw, !dbg !33798

bb.q:                                             ; preds = %bb.a
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32249
    #dbg_value(ptr %i.hg, !32001, !DIExpression(), !32651)
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32249 ; 2 uses
    #dbg_value(ptr %i.hh, !32002, !DIExpression(), !32651)
    #dbg_value(ptr %i.hh, !32295, !DIExpression(), !32654)
    #dbg_value(ptr %i.hh, !32300, !DIExpression(), !32657)
    #dbg_value(ptr %i.hh, !32295, !DIExpression(), !32660)
    #dbg_value(ptr %i.hh, !32300, !DIExpression(), !32663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !33799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !33799
  %i.hi = load ptr, ptr %i.hh, align 8, !dbg !33800, !align !3616, !noundef !2201
end_hunk_2
