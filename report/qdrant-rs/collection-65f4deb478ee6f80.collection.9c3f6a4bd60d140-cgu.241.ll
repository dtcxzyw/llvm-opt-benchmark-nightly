Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.241?download=true
inline.NumInlined: 233
inline.NumDeleted: 127
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [65 x i8] c">internal error: entered unreachable code: invalid Vector tag: \C0\00", align 1
@1 = private unnamed_addr constant [27 x i8] c"lib/api/src/grpc/qdrant.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1A\00\00\00\00\00\00\00T\14\00\00 \00\00\00" }>, align 8
@3 = private unnamed_addr constant [114 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/ringbuffer-0.16.0/src/with_const_generics.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"q\00\00\00\00\00\00\00\D0\00\00\00\05\00\00\00" }>, align 8
@5 = private unnamed_addr constant [34 x i8] c"const array ptr shouldn't be null!", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"q\00\00\00\00\00\00\00\D3\00\00\00\0A\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"q\00\00\00\00\00\00\00\DC\00\00\00\05\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"q\00\00\00\00\00\00\00\DF\00\00\00\0A\00\00\00" }>, align 8
@9 = private unnamed_addr constant [32 x i8] c"lib/segment/src/common/utils.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\1F\00\00\00\00\00\00\00?\00\00\00\13\00\00\00" }>, align 8
@11 = private unnamed_addr constant [3 x i8] c"ull", align 1
@12 = private unnamed_addr constant [3 x i8] c"rue", align 1
@13 = private unnamed_addr constant [4 x i8] c"alse", align 1
@14 = private unnamed_addr constant [4 x i8] c"null", align 1
@15 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_cbor-0.11.2/src/ser.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"a\00\00\00\00\00\00\00\9D\00\00\00\1D\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"a\00\00\00\00\00\00\00\A8\00\00\00\1D\00\00\00" }>, align 8
@18 = private unnamed_addr constant [1 x i8] c"\F6", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs607s0NAIaWN_7segment6common5utilsINtB3_14MaybeOneOrManyNtNtB7_5types9ConditionE9serializeINtNtNtNtCs5pRimKDHYSy_5serde7private3ser7content17ContentSerializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs4_NtNtNtCs5pRimKDHYSy_5serde7private3ser7contentINtB6_17ContentSerializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_someINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 14, ptr %0, align 8, !alias.scope !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs607s0NAIaWN_7segment6common5utilsINtB3_14MaybeOneOrManyNtNtB7_5types9ConditionE9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvYNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMNtNtCs607s0NAIaWN_7segment6common5utilsINtB3_14MaybeOneOrManyNtNtB7_5types9ConditionE9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef align 8 ptr @_RINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRINtNtBZ_3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_noneCsPYQCUnoTxQ_10collection.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.c = load i64, ptr %.val, align 8, !range !7, !alias.scope !30, !noalias !31, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !30, !noalias !31, !noundef !5 ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub nsw i64 %i.c, %i.e
  %i.h = icmp ugt i64 %i.g, 4
  br i1 %i.h, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_nullQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsPYQCUnoTxQ_10collection.exit.thread.i.i, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_nullQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsPYQCUnoTxQ_10collection.exit.i.i, !prof !8

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_nullQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsPYQCUnoTxQ_10collection.exit.thread.i.i: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !33, !noalias !31, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  store i32 1819047278, ptr %i.k, align 1, !noalias !33
  %i.l = add nuw i64 %i.e, 4
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !33, !noalias !31
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_noneCsPYQCUnoTxQ_10collection.exit

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_nullQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.c
  %i.m = tail call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileE14write_all_coldCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, 11) 4) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_noneCsPYQCUnoTxQ_10collection.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_nullQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsPYQCUnoTxQ_10collection.exit.i.i
  %i.n = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.m)
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_noneCsPYQCUnoTxQ_10collection.exit

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_noneCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.d, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_nullQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsPYQCUnoTxQ_10collection.exit.i.i, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_nullQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsPYQCUnoTxQ_10collection.exit.thread.i.i, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.n, %bb.d ], [ null, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_nullQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsPYQCUnoTxQ_10collection.exit.i.i ], [ null, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_nullQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsPYQCUnoTxQ_10collection.exit.thread.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs607s0NAIaWN_7segment6common5utilsINtB3_14MaybeOneOrManyNtNtB7_5types9ConditionE9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvYQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIBR_NtNtCs607s0NAIaWN_7segment5types9ConditionEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1), !noalias !37
  %i.c = load i64, ptr %i.a, align 8, !range !10, !noalias !38, !noundef !5
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !39
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_noneCsPYQCUnoTxQ_10collection.exit

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8, !alias.scope !37
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_noneCsPYQCUnoTxQ_10collection.exit

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_noneCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_noneCsPYQCUnoTxQ_10collection.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtB6_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.534 = alloca [24 x i8], align 8          ; 5 uses
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.517 = alloca [24 x i8], align 8          ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.i, align 4
  switch i32 %1, label %bb.b [
    i32 101, label %bb.c
    i32 102, label %bb.d
    i32 103, label %bb.e
  ], !prof !40

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 8, !range !11, !noundef !5
  %.not45 = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not45, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 3 uses
  %.not41 = icmp eq i64 %i.k, -1
  br i1 %.not41, label %bb.r, label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.l = load i64, ptr %0, align 8, !range !11, !noundef !5
  %.not = icmp eq i64 %i.l, -9223372036854775806
  br i1 %.not, label %bb.z, label %bb.y

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = invoke noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsPYQCUnoTxQ_10collection(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %bb.o       ; 2 uses

bb.g:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsPYQCUnoTxQ_10collection(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs0_0ECsPYQCUnoTxQ_10collection.exit, %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs_0ECsPYQCUnoTxQ_10collection.exit, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufE0ECsPYQCUnoTxQ_10collection.exit, %bb.g
  %.sroa.0.0 = phi ptr [ %i.o, %bb.g ], [ %i.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufE0ECsPYQCUnoTxQ_10collection.exit ], [ %i.y, %bb.s ], [ %i.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs_0ECsPYQCUnoTxQ_10collection.exit ], [ %i.ae, %bb.z ], [ %i.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs0_0ECsPYQCUnoTxQ_10collection.exit ]
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %0, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %.not46 = icmp eq ptr %i.m, null
  br i1 %.not46, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.thread54 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.j
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufE0ECsPYQCUnoTxQ_10collection.exit

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_output6VectorEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
          to label %bb.n unwind label %.thread

.thread:                                          ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.517, i64 24, i1 false)
  br label %.thread54

bb.n:                                             ; preds = %bb.m
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.517.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.517.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.517, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufE0ECsPYQCUnoTxQ_10collection.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufE0ECsPYQCUnoTxQ_10collection.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorECsPYQCUnoTxQ_10collection.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

.thread54:                                        ; preds = %bb.ac, %.thread64, %.thread59, %bb.k, %.thread, %bb.ag, %bb.x, %bb.o
  %.pn47.pn = phi { ptr, i32 } [ %i.t, %bb.o ], [ %i.ag, %bb.ac ], [ %i.ab, %bb.x ], [ %i.ai, %.thread64 ], [ %i.aj, %bb.ag ], [ %i.aa, %.thread59 ], [ %i.s, %.thread ], [ %i.q, %bb.k ]
  resume { ptr, i32 } %.pn47.pn

bb.o:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #17
          to label %.thread54 unwind label %bb.p

bb.p:                                             ; preds = %bb.ag, %bb.x, %bb.o
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.q:                                             ; preds = %bb.d
  %i.v = icmp ne i64 %i.k, -9223372036854775807
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp sgt i64 %i.k, -1
  br i1 %i.w, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 0, ptr %.sroa.525.0..sroa_idx, align 8
  %i.x = invoke noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SparseVectorQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsPYQCUnoTxQ_10collection(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.t unwind label %bb.x       ; 2 uses

bb.s:                                             ; preds = %bb.q
  %i.y = tail call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SparseVectorQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsPYQCUnoTxQ_10collection(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.h

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %0, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %.not42 = icmp eq ptr %i.x, null
  br i1 %.not42, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SparseVectorECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs_0ECsPYQCUnoTxQ_10collection.exit

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_output6VectorEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
          to label %bb.w unwind label %.thread59

.thread59:                                        ; preds = %bb.v
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %.thread54

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs_0ECsPYQCUnoTxQ_10collection.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs_0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.u, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.x:                                             ; preds = %bb.r
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SparseVectorECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #17
          to label %.thread54 unwind label %bb.p

bb.y:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.528.0..sroa_idx, align 8
  %i.ac = invoke noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16MultiDenseVectorQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsPYQCUnoTxQ_10collection(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.aa unwind label %bb.ag     ; 2 uses

bb.z:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = tail call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16MultiDenseVectorQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsPYQCUnoTxQ_10collection(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.h

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %0, ptr %i.af, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.not39 = icmp eq ptr %i.ac, null
  br i1 %.not39, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16MultiDenseVectorECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.thread54 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16MultiDenseVectorECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.ab
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs0_0ECsPYQCUnoTxQ_10collection.exit

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.534)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.534, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_output6VectorEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
          to label %bb.af unwind label %.thread64

.thread64:                                        ; preds = %bb.ae
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.534, i64 24, i1 false)
  br label %.thread54

bb.af:                                            ; preds = %bb.ae
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.534.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.534.0..sroa_idx35, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.534, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.534)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs0_0ECsPYQCUnoTxQ_10collection.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13vector_outputNtBK_6Vector5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs0_0ECsPYQCUnoTxQ_10collection.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16MultiDenseVectorECsPYQCUnoTxQ_10collection.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.ag:                                            ; preds = %bb.y
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16MultiDenseVectorECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %.thread54 unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs607s0NAIaWN_7segment6common5utilsINtB5_14MaybeOneOrManyNtNtB9_5types9ConditionE11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 27 uses
  %i.b = alloca [384 x i8], align 8               ; 4 uses
  %i.c = alloca [384 x i8], align 8               ; 4 uses
  %i.d = alloca [384 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store ptr null, ptr %i.aa, align 8
  call void @_RINvMCsll92OiJkphV_14serde_untaggedINtB3_19UntaggedEnumVisitorINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEE4unitNCINvMs_NtNtB2b_6common5utilsINtB33_14MaybeOneOrManyB27_E11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEE0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([384 x i8]) align 8 captures(none) dereferenceable(384) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvMCsll92OiJkphV_14serde_untaggedINtB3_19UntaggedEnumVisitorINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEE3seqNCINvMs_NtNtB2b_6common5utilsINtB32_14MaybeOneOrManyB27_E11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEEs_0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([384 x i8]) align 8 captures(none) dereferenceable(384) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RINvMCsll92OiJkphV_14serde_untaggedINtB3_19UntaggedEnumVisitorINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEE3mapNCINvMs_NtNtB2b_6common5utilsINtB32_14MaybeOneOrManyB27_E11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEEs0_0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([384 x i8]) align 8 captures(none) dereferenceable(384) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyINtCsll92OiJkphV_14serde_untagged19UntaggedEnumVisitorINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs607s0NAIaWN_7segment6common5utilsINtB5_14MaybeOneOrManyNtNtB9_5types9ConditionE11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorEECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 27 uses
  %i.b = alloca [384 x i8], align 8               ; 4 uses
  %i.c = alloca [384 x i8], align 8               ; 4 uses
  %i.d = alloca [384 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store ptr null, ptr %i.aa, align 8
  call void @_RINvMCsll92OiJkphV_14serde_untaggedINtB3_19UntaggedEnumVisitorINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEE4unitNCINvMs_NtNtB2b_6common5utilsINtB33_14MaybeOneOrManyB27_E11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorEE0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([384 x i8]) align 8 captures(none) dereferenceable(384) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvMCsll92OiJkphV_14serde_untaggedINtB3_19UntaggedEnumVisitorINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEE3seqNCINvMs_NtNtB2b_6common5utilsINtB32_14MaybeOneOrManyB27_E11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorEEs_0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([384 x i8]) align 8 captures(none) dereferenceable(384) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RINvMCsll92OiJkphV_14serde_untaggedINtB3_19UntaggedEnumVisitorINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEE3mapNCINvMs_NtNtB2b_6common5utilsINtB32_14MaybeOneOrManyB27_E11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorEEs0_0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([384 x i8]) align 8 captures(none) dereferenceable(384) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyINtCsll92OiJkphV_14serde_untagged19UntaggedEnumVisitorINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_0
