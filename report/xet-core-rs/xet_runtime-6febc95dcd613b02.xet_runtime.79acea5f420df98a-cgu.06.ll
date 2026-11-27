Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.06?download=true
inline.NumInlined: 340
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvXs5_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4jsonNtB6_10JsonFieldsNtB8_12FormatFields13format_fieldsRNtNtCs94TQx44N27d_12tracing_core4span6RecordECsarFSTFZzLuM_11xet_runtime:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9MapAccesspENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !12, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4
  call void @_RINvXs6_NtNtCs6SYjS1KFWza_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCsiWcPrHiWZDL_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !8, !noundef !4
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !5, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seedNtNtNtB8_5value2de13KeyClassifierECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9MapAccesspENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !12, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4
  call void @_RINvXsk_NtNtCsiWcPrHiWZDL_10serde_json5value2deNtB6_13KeyClassifierNtNtCs6SYjS1KFWza_10serde_core2de15DeserializeSeed11deserializeINtNtBa_2de6MapKeyNtNtBa_4read7StrReadEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !8, !noundef !4
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !5, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB8_5value5ValueEECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !531, !noundef !4 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !532 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !531, !nonnull !4, !noundef !4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !535, !noundef !4
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !536

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !537
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !529
  store i64 3, ptr %i.a, align 8, !noalias !529
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !529
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !529
  store i64 6, ptr %i.b, align 8, !noalias !529
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !529
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add nuw i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !538
  tail call fastcc void @_RINvXNtNtCsiWcPrHiWZDL_10serde_json5value2deNtB5_5ValueNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #24, !inline_history !528
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4jsonINtB5_19SerializableContextNtNtNtBb_8registry7sharded8RegistryNtB5_10JsonFieldsENtNtCs6SYjS1KFWza_10serde_core3ser9Serialize9serializeQINtNtCsiWcPrHiWZDL_10serde_json3ser10SerializerNtNtB9_6writer12WriteAdaptorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [656 x i8], align 8               ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [656 x i8], align 8               ; 4 uses
  %i.g = alloca [672 x i8], align 8               ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [40 x i8], align 8                ; 10 uses
  %i.j = alloca [40 x i8], align 8                ; 11 uses
  %i.k = alloca [672 x i8], align 8               ; 16 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = tail call noundef ptr @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 1), !noalias !553 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_seqCsarFSTFZzLuM_11xet_runtime.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.n), !noalias !553
  br label %_RNvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB5_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB5_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq3endCsarFSTFZzLuM_11xet_runtime.exit

_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_seqCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.p = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !554, !align !5, !noundef !4 ; 4 uses
  %.not.i12 = icmp eq ptr %i.q, null
  br i1 %.not.i12, label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_seqCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !555
  call void @_RNvXs0_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs94TQx44N27d_12tracing_core10subscriber10Subscriber12current_span(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %i.q), !noalias !555
  %i.r = load i64, ptr %i.e, align 8, !range !6, !noalias !555, !noundef !4
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !555
  call void @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryNtB6_10LookupSpan4spanCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noundef nonnull align 8 %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !555
  %i.u = load ptr, ptr %i.d, align 8, !noalias !555, !noundef !4
  %.not4.i = icmp eq ptr %i.u, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !555
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !554, !noundef !4
  call void @_RNvMs_NtCs8C3ZpOVqhBL_18tracing_subscriber8registryINtB4_7SpanRefNtNtB4_7sharded8RegistryE15try_with_filterCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, i64 noundef %i.w), !noalias !554
  %i.x = load ptr, ptr %i.m, align 8
  %.not5.i = icmp eq ptr %i.x, null
  br i1 %.not5.i, label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit, label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread45

_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread45: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !555
  br label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split

_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !555
  br label %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread

_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread: ; preds = %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split, %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_seqCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread

_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.e
  call void @_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE23lookup_current_filteredB6_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noundef nonnull align 8 %i.q) #19
  %.pr.pr = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %.pr.pr, null
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread45, %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  %i.y = load ptr, ptr %i.l, align 8, !nonnull !4, !align !5, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.aa = invoke noundef i64 @_RNvXs4_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData2id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCselt1T5Y3W0b_8smallvec8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECsarFSTFZzLuM_11xet_runtime.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread

.thread:                                          ; preds = %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit.thread, %_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14lookup_currentCsarFSTFZzLuM_11xet_runtime.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ab = call noundef ptr @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 1) ; 2 uses
  %.not.i13 = icmp eq ptr %i.ab, null
  br i1 %.not.i13, label %_RNvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB5_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB5_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq3endCsarFSTFZzLuM_11xet_runtime.exit, label %bb.i, !prof !13

bb.i:                                             ; preds = %.thread
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ab)
  br label %_RNvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB5_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB5_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq3endCsarFSTFZzLuM_11xet_runtime.exit

.body:                                            ; preds = %bb.t, %bb.q, %bb.l, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit21
  %.pn10 = phi { ptr, i32 } [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit21 ], [ %i.bf, %bb.q ], [ %i.ah, %bb.l ], [ %i.ad, %bb.j ], [ %i.bm, %bb.t ]
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.v

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCselt1T5Y3W0b_8smallvec8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECsarFSTFZzLuM_11xet_runtime.exit.i27, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCselt1T5Y3W0b_8smallvec8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.n, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !556
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  store i64 0, ptr %i.ag, align 8, !noalias !556
  store i64 0, ptr %i.b, align 8, !noalias !556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !556
  store ptr %i.y, ptr %i.a, align 8, !noalias !557
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !557
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.af, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !557
  invoke void @_RINvXst_Cselt1T5Y3W0b_8smallvecINtB6_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBJ_E6extendINtBM_5ScopeB1D_EECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.l, !noalias !556

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %i.b)
          to label %.body unwind label %bb.m, !noalias !556

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !556
  unreachable

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.f, ptr noundef nonnull align 8 dereferenceable(656) %i.b, i64 656, i1 false), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !556
  invoke void @_RNvXsM_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([672 x i8]) align 8 captures(none) dereferenceable(672) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(656) %i.f)
          to label %bb.o unwind label %bb.j

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(672) %i.k, ptr noundef nonnull align 8 dereferenceable(672) %i.g, i64 672, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 656 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 664 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.al = load i64, ptr %i.aj, align 8, !noundef !4
  %i.am = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 648 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.as = add i64 %i.am, -1                       ; 2 uses
  store i64 %i.as, ptr %i.ak, align 8
  %i.at = load i64, ptr %i.ao, align 8, !alias.scope !559, !noundef !4
  %i.au = icmp ugt i64 %i.at, 16
  %2 = load ptr, ptr %i.aq, align 8, !nonnull !4
  %.sink13.i.peel = select i1 %i.au, ptr %2, ptr %i.ap
  %3 = getelementptr inbounds nuw [40 x i8], ptr %.sink13.i.peel, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %4 = invoke noundef align 8 ptr @_RINvXs0_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4jsonINtB6_16SerializableSpanNtNtNtBc_8registry7sharded8RegistryNtB6_10JsonFieldsENtNtCs6SYjS1KFWza_10serde_core3ser9Serialize9serializeQINtNtCsiWcPrHiWZDL_10serde_json3ser10SerializerNtNtBa_6writer12WriteAdaptorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !560 ; 2 uses

_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit.peel: ; preds = %.lr.ph
  %.not8.peel = icmp eq ptr %4, null
  br i1 %.not8.peel, label %bb.p, label %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit.thread

bb.p:                                             ; preds = %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit25.peel unwind label %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit25.peel: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.av = load i64, ptr %i.aj, align 8, !noundef !4
  %i.aw = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit25.peel, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit25
  %i.ay = phi i64 [ %i.bk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit25 ], [ %i.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit25.peel ]
  %i.az = add i64 %i.ay, -1                       ; 2 uses
  store i64 %i.az, ptr %i.ak, align 8
  %i.ba = load i64, ptr %i.ao, align 8, !alias.scope !559, !noundef !4
  %i.bb = icmp ugt i64 %i.ba, 16
  %i.bc = load ptr, ptr %i.aq, align 8, !nonnull !4
  %.sink13.i = select i1 %i.bb, ptr %i.bc, ptr %i.ap
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %.sink13.i, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %i.be = invoke noundef ptr @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !561 ; 2 uses

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit25, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit25.peel, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsG_Cselt1T5Y3W0b_8smallvecINtB5_8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCselt1T5Y3W0b_8smallvec8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %i.k)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCselt1T5Y3W0b_8smallvec8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %._crit_edge
  invoke void @_RNvXsw_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %i.k)
          to label %bb.h unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit21: ; preds = %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp97, %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry13ScopeFromRootNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(672) %i.k) #21
          to label %.body unwind label %bb.v

.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.p, %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit.thread
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit21

.noexc:                                           ; preds = %.peel.next
  %.not.i17 = icmp eq ptr %i.be, null
  br i1 %.not.i17, label %_RINvYNtNtCsiWcPrHiWZDL_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorECsarFSTFZzLuM_11xet_runtime.exit.thread.i, label %.loopexit, !prof !562

.loopexit:                                        ; preds = %.noexc
  %i.bh = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.be)
          to label %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !561

_RINvYNtNtCsiWcPrHiWZDL_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorECsarFSTFZzLuM_11xet_runtime.exit.thread.i: ; preds = %.noexc
  %i.bi = invoke noundef align 8 ptr @_RINvXs0_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4jsonINtB6_16SerializableSpanNtNtNtBc_8registry7sharded8RegistryNtB6_10JsonFieldsENtNtCs6SYjS1KFWza_10serde_core3ser9Serialize9serializeQINtNtCsiWcPrHiWZDL_10serde_json3ser10SerializerNtNtBa_6writer12WriteAdaptorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !560 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvYNtNtCsiWcPrHiWZDL_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorECsarFSTFZzLuM_11xet_runtime.exit.thread.i, %.peel.next, %.lr.ph, %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit21 unwind label %bb.v

_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvYNtNtCsiWcPrHiWZDL_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorECsarFSTFZzLuM_11xet_runtime.exit.thread.i
  %.not8 = icmp eq ptr %i.bi, null
  br i1 %.not8, label %bb.s, label %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit.thread

_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit.thread: ; preds = %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit, %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit.peel, %.loopexit
  %.sroa.0.1.i52 = phi ptr [ %i.bh, %.loopexit ], [ %4, %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit.peel ], [ %i.bi, %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit23 unwind label %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit25 unwind label %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit25: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bj = load i64, ptr %i.aj, align 8, !noundef !4
  %i.bk = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %._crit_edge, label %.peel.next, !llvm.loop !552

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit23: ; preds = %_RINvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB6_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq17serialize_elementINtNtNtBV_6format4json16SerializableSpanNtNtNtBX_8registry7sharded8RegistryNtB3q_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsG_Cselt1T5Y3W0b_8smallvecINtB5_8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCselt1T5Y3W0b_8smallvec8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECsarFSTFZzLuM_11xet_runtime.exit.i27 unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit23
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %i.k)
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCselt1T5Y3W0b_8smallvec8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECsarFSTFZzLuM_11xet_runtime.exit.i27: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit23
  invoke void @_RNvXsw_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry13ScopeFromRootNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit31 unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry13ScopeFromRootNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit31: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCselt1T5Y3W0b_8smallvec8IntoIterAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECsarFSTFZzLuM_11xet_runtime.exit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB5_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB5_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq3endCsarFSTFZzLuM_11xet_runtime.exit

bb.v:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit21
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvXs2_NtCsiWcPrHiWZDL_10serde_json3serINtB5_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB5_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeSeq3endCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry13ScopeFromRootNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit31, %bb.i, %.thread
  %.sroa.0.1 = phi ptr [ null, %.thread ], [ %.sroa.0.1.i52, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry13ScopeFromRootNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit31 ], [ %i.ac, %bb.i ], [ %i.o, %bb.b ]
  ret ptr %.sroa.0.1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %.body
  resume { ptr, i32 } %.pn10
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockbE5force0E0CsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !5, !noundef !4 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !12, !noundef !4
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockbE5force0CsarFSTFZzLuM_11xet_runtime.exit, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #25
  unreachable

_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockbE5force0CsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.f = tail call noundef zeroext i1 %i.e(), !inline_history !563
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr %i.b, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockbE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsarFSTFZzLuM_11xet_runtime(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !569, !noalias !570, !align !5, !noundef !4 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !569, !noalias !570
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.c, align 4, !range !12, !noalias !571, !noundef !4
  %i.d = trunc nuw i8 %.val.i.i to i1
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockbE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsarFSTFZzLuM_11xet_runtime.exit, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #25, !noalias !571
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #25, !noalias !571
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockbE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !noalias !571, !nonnull !4, !noundef !4
  %i.f = tail call noundef zeroext i1 %i.e(), !noalias !571, !inline_history !568
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr %i.b, align 8, !noalias !571
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(40) %0, ptr %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryNtB6_10LookupSpan4spanCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noundef nonnull align 8 %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4
  %.not2 = icmp eq ptr %i.c, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCs8C3ZpOVqhBL_18tracing_subscriber8registryINtB4_7SpanRefNtNtB4_7sharded8RegistryE15try_with_filterCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, i64 noundef %.8.val)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_configNtB2_9XetConfig21with_high_performance(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([976 x i8]) align 8 captures(none) dereferenceable(976) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(976) initializes((232, 240), (736, 784)) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i64 100, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 736
  store i64 124, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 760
  store i64 124, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 744
  store i64 4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 768
  store i64 4, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 752
  store i64 16, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 776
  store i64 16, ptr %i.g, align 8
  %i.h = invoke noundef i64 @_RNvXs2_NtNtCsarFSTFZzLuM_11xet_runtime5utils9byte_sizeNtB5_8ByteSizeINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(976) %1) #21
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 880
  store i64 %i.h, ptr %i.j, align 8
  %i.k = invoke noundef i64 @_RNvXs2_NtNtCsarFSTFZzLuM_11xet_runtime5utils9byte_sizeNtB5_8ByteSizeINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 4)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 888
  store i64 %i.k, ptr %i.l, align 8
  %i.m = invoke noundef i64 @_RNvXs2_NtNtCsarFSTFZzLuM_11xet_runtime5utils9byte_sizeNtB5_8ByteSizeINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 4)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 896
  store i64 %i.m, ptr %i.n, align 8
end_hunk_0
