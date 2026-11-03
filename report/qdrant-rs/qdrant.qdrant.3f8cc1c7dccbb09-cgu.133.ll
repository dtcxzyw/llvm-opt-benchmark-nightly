Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.133?download=true
inline.NumInlined: 536
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindENtB6_5Debug3fmtCsl8OoimOLbh_6qdrant:bb.a
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !381
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !381
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  %i.d = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCsexYYUdYSQU6_5alloc6borrow3CoweERNtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_B1G_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !381
  %i.e = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !381
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs8O45qwFIwQX_10serde_json5value5ValueENtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !386
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !386
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs8O45qwFIwQX_10serde_json5value5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  %i.d = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCsexYYUdYSQU6_5alloc6borrow3CoweERNtNtCs8O45qwFIwQX_10serde_json5value5ValueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_B1G_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !386
  %i.e = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !386
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1q_ENtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !391
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !391
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  %i.d = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsexYYUdYSQU6_5alloc6string6StringB12_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_B13_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !391
  %i.e = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !391
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1u_3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEENtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !396
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !396
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBR_3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  %i.d = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtB17_3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_B1G_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  %i.e = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !396
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriENtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !401
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !401
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  %i.d = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRyRNtNtCs577yCKf7gy3_4http3uri3UriINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryB15_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !401
  %i.e = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !401
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12PeerMetadataENtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !406
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !406
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12PeerMetadataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  %i.d = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRyRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12PeerMetadataINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryB15_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !406
  %i.e = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !406
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.f = icmp eq i64 %i.c, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !423 ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !alias.scope !423, !nonnull !5 ; 2 uses
  br i1 %i.f, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  %i.k = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !423
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.us.not.i.not = icmp eq ptr %i.l, null
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.split.i:                                         ; preds = %bb.b, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCs8O45qwFIwQX_10serde_json5value5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i
  %i.m = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %.not.not.not.i = icmp eq ptr %i.n, null        ; 3 uses
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %.split.i
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n), !noalias !424 ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ak, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %i.al, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !425 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.aj, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [96 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -96
  %i.ae = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsexYYUdYSQU6_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ad), !noalias !426
  br i1 %i.ae, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCs8O45qwFIwQX_10serde_json5value5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i, label %bb.e, !prof !9

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, !prof !8

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.d

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCs8O45qwFIwQX_10serde_json5value5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -72
  %i.an = call fastcc noundef zeroext i1 @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.am) #20
  br i1 %i.an, label %.split.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit: ; preds = %.split.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCs8O45qwFIwQX_10serde_json5value5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i, %._crit_edge.i.i.i.i.i, %.split.us.i
  %.not10.i = phi i1 [ %.not.us.not.i.not, %.split.us.i ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCs8O45qwFIwQX_10serde_json5value5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i ], [ %.not.not.not.i, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit
  %.sroa.0.0 = phi i1 [ %.not10.i, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %2 = alloca [40 x i8], align 8                  ; 7 uses
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %.not = icmp eq i64 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.g = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !462 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %.not20.not.i = icmp eq ptr %i.h, null
  br i1 %.not20.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = icmp eq i64 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !462 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !alias.scope !462, !nonnull !5 ; 2 uses
  br i1 %i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.backedge.i
  %i.n = phi ptr [ %i.bq, %.backedge.i ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %i.o = phi { ptr, ptr } [ %i.bp, %.backedge.i ], [ %i.g, %.lr.ph.i ]
  %i.p = extractvalue { ptr, ptr } %i.o, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.q = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n), !noalias !465 ; 2 uses
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.al, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.split.i ], [ %i.am, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.l ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !466 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.u
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ak, %bb.d ], [ %i.x, %bb.c ] ; 3 uses
  %i.y = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.l
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [104 x i8], ptr %i.m, i64 %i.ac ; 8 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -104
  %i.af = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsexYYUdYSQU6_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ae), !noalias !467
  br i1 %i.af, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.d, !prof !9

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, !prof !8

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.al = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.am = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.al
  br label %bb.c

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !470, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ad, i64 -64
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !469, !noalias !465, !noundef !5
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.f, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ad, i64 -72
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !469, !noalias !465, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !470, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.av, ptr nonnull %i.at, i64 %i.ao), !noalias !471
  %i.aw = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.aw, label %bb.g, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !470, !noundef !5
  %i.az = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !469, !noalias !465, !noundef !5
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !474, !noundef !5 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ad, i64 -32
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !475, !noalias !465, !noundef !5
  %.not.i.i.i.i.i = icmp eq i64 %i.bd, %i.bf
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds i8, ptr %i.ad, i64 -56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !476
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionNtNtNtBR_4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bh), !noalias !475
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.bi = icmp eq i64 %i.bd, 0
  %i.bj = getelementptr inbounds i8, ptr %i.ad, i64 -24
  %i.bk = getelementptr inbounds i8, ptr %i.ad, i64 -48
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !478 ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8, !alias.scope !478, !nonnull !5 ; 2 uses
  br i1 %i.bi, label %.split.us.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.us.i.i.i.i.i.i:                            ; preds = %bb.i
  %i.bn = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2), !noalias !478
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0
  %.not.us.not.i.not.i.i.i.i.not.i = icmp eq ptr %i.bo, null
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !476
  br i1 %.not.us.not.i.not.i.i.i.i.not.i, label %.backedge.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.backedge.i:                                      ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB33_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i, %.split.us.i.i.i.i.i.i
  %i.bp = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.bq = extractvalue { ptr, ptr } %i.bp, 0      ; 2 uses
  %.not.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.split.i

.split.i.i.i.i.i.i:                               ; preds = %bb.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionENCNvXs4_NtNtNtB1h_11collections4hash3mapINtB2V_7HashMapB1d_B1M_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  %i.br = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) ; 2 uses
  %i.bs = extractvalue { ptr, ptr } %i.br, 0      ; 3 uses
  %.not.not.not.i.i.i.i.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.not.not.i.i.i.i.not.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB33_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i, label %bb.j

bb.j:                                             ; preds = %.split.i.i.i.i.i.i
  %i.bt = extractvalue { ptr, ptr } %i.br, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  %.val6.i.i.i.i.i.i = load i64, ptr %i.bt, align 8 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %.val7.i.i.i.i.i.i = load i64, ptr %i.bu, align 8
  %i.bv = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs) ; 2 uses
  %i.bw = lshr i64 %i.bv, 57
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %i.by = insertelement <16 x i8> poison, i8 %i.bx, i64 0
  %i.bz = shufflevector <16 x i8> %i.by, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %i.cq, %bb.m ]
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %bb.j ], [ %i.cr, %bb.m ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %i.bl ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ca, align 1, !noalias !479 ; 2 uses
  %i.cb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i, %i.bz
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.k, %bb.l
  %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cp, %bb.l ], [ %i.cc, %bb.k ] ; 3 uses
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i, %i.ce
  %i.cg = and i64 %i.cf, %i.bl
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr inbounds [40 x i8], ptr %i.bm, i64 %i.ch ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -40
  %i.ck = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsG258MDvU3F_3std4path7PathBufINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cj), !noalias !480
  br i1 %i.ck, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionNtNtNtBS_4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i, label %bb.l, !prof !9

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.l, %bb.k
  %i.cl = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cm = bitcast <16 x i1> %i.cl to i16
  %i.cn = icmp eq i16 %i.cm, 0
  br i1 %i.cn, label %bb.m, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB33_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.thread8.i, !prof !8

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.co = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i, -1
  %i.cp = and i16 %i.co, %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cq = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.cr = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i, %i.cq
  br label %bb.k

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionNtNtNtBS_4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds i8, ptr %i.ci, i64 -16
  %.val4.i.i.i.i.i.i.i.i = load i64, ptr %i.cs, align 8, !range !481, !noundef !5
  %i.ct = icmp eq i64 %.val6.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i.i
  br i1 %i.ct, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionENCNvXs4_NtNtNtB1h_11collections4hash3mapINtB2V_7HashMapB1d_B1M_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB33_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.thread8.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionENCNvXs4_NtNtNtB1h_11collections4hash3mapINtB2V_7HashMapB1d_B1M_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionNtNtNtBS_4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i
  %i.cu = getelementptr i8, ptr %i.ci, i64 -8
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8
  %or.cond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val6.i.i.i.i.i.i, 0
  %i.cv = icmp ne i64 %.val7.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i
  %spec.select.i.i.not.i.i.i.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i.i.i.i.i, i1 %i.cv, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB33_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.thread8.i, label %.split.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB33_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.thread8.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionENCNvXs4_NtNtNtB1h_11collections4hash3mapINtB2V_7HashMapB1d_B1M_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionNtNtNtBS_4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !476
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB33_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %.split.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !476
  br label %.backedge.i

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.f, %bb.g, %bb.h, %.split.us.i.i.i.i.i.i, %.backedge.i, %._crit_edge.i.i.i.i.i, %bb.b, %.lr.ph.split.us.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB33_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.thread8.i
  %i.cw = phi i1 [ false, %.lr.ph.split.us.i ], [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB33_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.thread8.i ], [ true, %bb.b ], [ false, %._crit_edge.i.i.i.i.i ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.h ], [ false, %.split.us.i.i.i.i.i.i ], [ true, %.backedge.i ], [ false, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit
  %.sroa.0.0 = phi i1 [ %i.cw, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2B_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2J_3cmp9PartialEq2eq0E0INtNtNtB2J_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.f = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !5   ; 2 uses
  %i.k = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %.not.i.not.us = icmp eq ptr %i.l, null         ; 2 uses
  %brmerge = select i1 %i.f, i1 true, i1 %.not.i.not.us
  %not. = xor i1 %i.f, true
  %.not.i.not.us.mux = select i1 %not., i1 true, i1 %.not.i.not.us
  br i1 %brmerge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.split.backedge
  %i.m = phi ptr [ %i.cf, %.split.backedge ], [ %i.l, %bb.b ] ; 2 uses
  %i.n = phi { ptr, ptr } [ %i.ce, %.split.backedge ], [ %i.k, %bb.b ]
  %i.o = extractvalue { ptr, ptr } %i.n, 1        ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m), !noalias !508 ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.lr.ph ], [ %i.ak, %bb.e ]
  %.pn.i.i = phi i64 [ %i.p, %.lr.ph ], [ %i.al, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.i      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !509 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.aj, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [80 x i8], ptr %i.j, i64 %i.ab ; 11 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -80
  %i.ae = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsexYYUdYSQU6_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ad), !noalias !510
  br i1 %i.ae, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit, label %bb.d, !prof !9

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, !prof !8

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i, %i.ak
  br label %bb.c

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit: ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.experimental.noalias.scope.decl(metadata !513), !noalias !514
  call void @llvm.experimental.noalias.scope.decl(metadata !515), !noalias !514
  %i.an = load i8, ptr %i.o, align 8, !range !516, !alias.scope !517, !noalias !514, !noundef !5 ; 3 uses
  %.not.i.i2 = icmp eq i8 %i.an, -1
  %i.ao = load i8, ptr %i.am, align 8, !range !516, !alias.scope !518, !noalias !514, !noundef !5 ; 2 uses
  %i.ap = icmp eq i8 %i.ao, -1                    ; 2 uses
  br i1 %.not.i.i2, label %.split30, label %bb.f

bb.f:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit
  br i1 %i.ap, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, label %bb.g

.split30:                                         ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant.exit
  br i1 %i.ap, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !519), !noalias !514
  call void @llvm.experimental.noalias.scope.decl(metadata !520), !noalias !514
  %i.aq = icmp eq i8 %i.an, %i.ao
  br i1 %i.aq, label %bb.h, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.g
  switch i8 %i.an, label %default.unreachable [
    i8 0, label %.split29
    i8 1, label %.split28
    i8 2, label %.split27
    i8 3, label %bb.i
    i8 4, label %.split24
    i8 5, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit
    i8 6, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

.split29:                                         ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !521, !noalias !514, !noundef !5
  %i.at = getelementptr inbounds i8, ptr %i.ac, i64 -52
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !522, !noalias !514, !noundef !5
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.split28:                                         ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ax = load double, ptr %i.aw, align 8, !alias.scope !521, !noalias !514, !noundef !5
  %i.ay = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.az = load double, ptr %i.ay, align 8, !alias.scope !522, !noalias !514, !noundef !5
  %i.ba = fcmp oeq double %i.ax, %i.az
  br i1 %i.ba, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.split27:                                         ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !521, !noalias !514, !noundef !5
  %i.bd = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !522, !noalias !514, !noundef !5
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !521, !noalias !514, !noundef !5 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !522, !noalias !514, !noundef !5
  %i.bk = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bk, label %.split26, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.split24:                                         ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !range !15, !alias.scope !521, !noalias !514, !noundef !5
  %i.bn = getelementptr inbounds i8, ptr %i.ac, i64 -55
  %i.bo = load i8, ptr %i.bn, align 1, !range !15, !alias.scope !522, !noalias !514, !noundef !5
  %i.bp = icmp eq i8 %i.bm, %i.bo
  br i1 %i.bp, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.h
  %i.bq = getelementptr i8, ptr %i.o, i64 24
  %.val3.i.i = load i64, ptr %i.bq, align 8, !alias.scope !521, !noalias !514, !noundef !5 ; 2 uses
  %i.br = getelementptr i8, ptr %i.ac, i64 -32
  %.val5.i.i = load i64, ptr %i.br, align 8, !alias.scope !522, !noalias !514, !noundef !5
  %i.bs = icmp eq i64 %.val3.i.i, %.val5.i.i
  br i1 %i.bs, label %.split25, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.split25:                                         ; preds = %bb.j
  %i.bt = getelementptr i8, ptr %i.ac, i64 -40
  %.val4.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !522, !noalias !514, !nonnull !5, !noundef !5
  %i.bu = getelementptr i8, ptr %i.o, i64 16
  %.val.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !521, !noalias !514, !nonnull !5, !noundef !5
  %i.bv = call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i, ptr noundef nonnull %.val4.i.i, i64 noundef %.val3.i.i), !noalias !523, !inline_history !506
  br i1 %i.bv, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.split26:                                         ; preds = %bb.i
  %i.bw = getelementptr inbounds i8, ptr %i.ac, i64 -40
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !522, !noalias !514, !nonnull !5, !noundef !5
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !521, !noalias !514, !nonnull !5, !noundef !5
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.bz, ptr nonnull %i.bx, i64 %i.bh), !noalias !523, !inline_history !506
  %i.ca = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ca, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cc = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.cd = call noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cc), !noalias !514, !inline_history !507
  br i1 %i.cd, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.split.backedge:                                  ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit, %.split24, %.split25, %.split26, %.split27, %.split28, %.split29, %.split30
  %i.ce = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0      ; 2 uses
  %.not.i.not = icmp eq ptr %i.cf, null
  br i1 %.not.i.not, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, label %.lr.ph

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit: ; preds = %.split30, %.split29, %.split28, %.split27, %.split26, %.split25, %.split24, %bb.j, %bb.i, %bb.g, %bb.f, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit, %.split.backedge, %._crit_edge.i.i, %bb.b
  %.not.i.not15 = phi i1 [ false, %._crit_edge.i.i ], [ %.not.i.not.us.mux, %bb.b ], [ true, %.split.backedge ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.j ], [ false, %.split24 ], [ false, %.split25 ], [ false, %.split26 ], [ false, %.split27 ], [ false, %.split28 ], [ false, %.split29 ], [ false, %.split30 ], [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit
  %.sroa.0.0 = phi i1 [ %.not.i.not15, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringyENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.f = icmp eq i64 %i.c, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !535 ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !alias.scope !535, !nonnull !5 ; 2 uses
  br i1 %i.f, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  %i.k = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !535
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.us.not.i.not = icmp eq ptr %i.l, null
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1y_3all5checkTRBU_RyENCNvXs4_B6_INtB6_7HashMapBU_yENtNtB1G_3cmp9PartialEq2eq0E0INtNtNtB1G_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.split.i:                                         ; preds = %bb.b, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRyENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB20_7HashMapB1d_yENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i
  %i.m = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %.not.not.not.i = icmp eq ptr %i.n, null        ; 3 uses
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1y_3all5checkTRBU_RyENCNvXs4_B6_INtB6_7HashMapBU_yENtNtB1G_3cmp9PartialEq2eq0E0INtNtNtB1G_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %.split.i
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %.val6.i = load i64, ptr %i.o, align 8
  %i.p = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ak, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %i.al, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !536 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.aj, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.ae = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsexYYUdYSQU6_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !537
  br i1 %i.ae, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRyENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB20_7HashMapB1d_yENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i, label %bb.e, !prof !9

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1y_3all5checkTRBU_RyENCNvXs4_B6_INtB6_7HashMapBU_yENtNtB1G_3cmp9PartialEq2eq0E0INtNtNtB1G_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, !prof !8

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.d

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRyENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB20_7HashMapB1d_yENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %.val3.i.i.i = load i64, ptr %i.am, align 8, !noundef !5
  %.not8.i = icmp eq i64 %.val6.i, %.val3.i.i.i
  br i1 %.not8.i, label %.split.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1y_3all5checkTRBU_RyENCNvXs4_B6_INtB6_7HashMapBU_yENtNtB1G_3cmp9PartialEq2eq0E0INtNtNtB1G_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1y_3all5checkTRBU_RyENCNvXs4_B6_INtB6_7HashMapBU_yENtNtB1G_3cmp9PartialEq2eq0E0INtNtNtB1G_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit: ; preds = %.split.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRyENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB20_7HashMapB1d_yENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i, %._crit_edge.i.i.i.i.i, %.split.us.i
  %.not12.i = phi i1 [ %.not.us.not.i.not, %.split.us.i ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRyENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB20_7HashMapB1d_yENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i ], [ %.not.not.not.i, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1y_3all5checkTRBU_RyENCNvXs4_B6_INtB6_7HashMapBU_yENtNtB1G_3cmp9PartialEq2eq0E0INtNtNtB1G_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit
  %.sroa.0.0 = phi i1 [ %.not12.i, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1y_3all5checkTRBU_RyENCNvXs4_B6_INtB6_7HashMapBU_yENtNtB1G_3cmp9PartialEq2eq0E0INtNtNtB1G_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapmNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !562 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not13.not.i = icmp eq ptr %i.g, null
  br i1 %.not13.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = icmp eq i64 %i.c, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !562 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !alias.scope !562, !nonnull !5 ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.backedge.i
  %i.m = phi ptr [ %i.bq, %.backedge.i ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.n = phi { ptr, ptr } [ %i.bp, %.backedge.i ], [ %i.f, %.lr.ph.i ]
  %i.o = extractvalue { ptr, ptr } %i.n, 1        ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.p = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRmECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.m), !noalias !565 ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ak, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.split.i ], [ %i.al, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.k ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !566 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.aj, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.k
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.ab ; 5 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.ae = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownmINtB2_10EquivalentmE10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !567
  br i1 %i.ae, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapmNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getmECsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.d, !prof !9

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, !prof !8

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.c

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapmNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getmECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -24
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.an = load i64, ptr %i.o, align 8, !range !572, !alias.scope !573, !noundef !5 ; 5 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.an, -1
  %i.ao = load i64, ptr %i.am, align 8, !range !572, !alias.scope !574, !noalias !565, !noundef !5 ; 5 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %brmerge.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.ap
  br i1 %brmerge.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2p_7HashMapmB1f_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i, label %bb.f

bb.f:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapmNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getmECsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.aq = icmp ne i64 %i.an, -9223372036854775806
  call void @llvm.assume(i1 %i.aq)
  %i.ar = xor i64 %i.an, -9223372036854775808
  %i.as = icmp slt i64 %i.an, 0
  %i.at = select i1 %i.as, i64 %i.ar, i64 2       ; 2 uses
  %i.au = icmp ne i64 %i.ao, -9223372036854775806
  call void @llvm.assume(i1 %i.au)
  %i.av = xor i64 %i.ao, -9223372036854775808
  %i.aw = icmp slt i64 %i.ao, 0
  %i.ax = select i1 %i.aw, i64 %i.av, i64 2
  %i.ay = icmp eq i64 %i.at, %i.ax
  br i1 %i.ay, label %bb.g, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.f
  switch i64 %i.at, label %bb.h [
    i64 0, label %.backedge.i
    i64 1, label %.split31.i
    i64 2, label %bb.i
    i64 3, label %.backedge.i
    i64 4, label %.backedge.i
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

.split31.i:                                       ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !577, !noundef !5
  %i.bb = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !578, !noalias !565, !noundef !5
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %.backedge.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !577, !noundef !5 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !578, !noalias !565, !noundef !5
  %i.bi = icmp eq i64 %i.bf, %i.bh
  br i1 %i.bi, label %.split.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.split.i:                                         ; preds = %bb.i
  %i.bj = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !578, !noalias !565, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !577, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bm, ptr nonnull %i.bk, i64 %i.bf), !noalias !579
  %i.bn = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bn, label %.backedge.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2p_7HashMapmB1f_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapmNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getmECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.bo = and i64 %i.ao, %i.an
  %.mux.i.i.i.i.i = icmp eq i64 %i.bo, -1
  br i1 %.mux.i.i.i.i.i, label %.backedge.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.backedge.i:                                      ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2p_7HashMapmB1f_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i, %.split.i, %.split31.i, %bb.g, %bb.g, %bb.g
  %i.bp = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.bq = extractvalue { ptr, ptr } %i.bp, 0      ; 2 uses
  %.not.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.split.i

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f, %.split31.i, %bb.i, %.split.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2p_7HashMapmB1f_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i, %.backedge.i, %._crit_edge.i.i.i.i.i, %bb.b, %.lr.ph.split.us.i
  %i.br = phi i1 [ false, %.lr.ph.split.us.i ], [ true, %bb.b ], [ false, %._crit_edge.i.i.i.i.i ], [ false, %bb.i ], [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2p_7HashMapmB1f_ENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i ], [ true, %.backedge.i ], [ false, %bb.f ], [ false, %.split.i ], [ false, %.split31.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit
  %.sroa.0.0 = phi i1 [ %i.br, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant25ShardCleanStatusTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1X_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_ENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapylENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapylNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.f = icmp eq i64 %i.c, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !591 ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !alias.scope !591, !nonnull !5 ; 2 uses
  br i1 %i.f, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  %i.k = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterylENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !591
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.us.not.i.not = icmp eq ptr %i.l, null
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterylENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_3all5checkTRyRlENCNvXs4_B6_INtB6_7HashMapylENtNtB15_3cmp9PartialEq2eq0E0INtNtNtB15_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

.split.i:                                         ; preds = %bb.b, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRyRlENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB1p_7HashMapylENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i
  %i.m = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterylENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %.not.not.not.i = icmp eq ptr %i.n, null        ; 3 uses
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterylENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_3all5checkTRyRlENCNvXs4_B6_INtB6_7HashMapylENtNtB15_3cmp9PartialEq2eq0E0INtNtNtB15_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %.split.i
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %.val6.i = load i32, ptr %i.o, align 4
  %i.p = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ak, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %i.al, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !592 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.aj, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ae = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad), !noalias !593
  br i1 %i.ae, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRyRlENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB1p_7HashMapylENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i, label %bb.e, !prof !9

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterylENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_3all5checkTRyRlENCNvXs4_B6_INtB6_7HashMapylENtNtB15_3cmp9PartialEq2eq0E0INtNtNtB15_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit, !prof !8

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.d

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRyRlENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB1p_7HashMapylENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %.val3.i.i.i = load i32, ptr %i.am, align 4, !noundef !5
  %.not8.i = icmp eq i32 %.val6.i, %.val3.i.i.i
  br i1 %.not8.i, label %.split.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterylENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_3all5checkTRyRlENCNvXs4_B6_INtB6_7HashMapylENtNtB15_3cmp9PartialEq2eq0E0INtNtNtB15_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterylENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_3all5checkTRyRlENCNvXs4_B6_INtB6_7HashMapylENtNtB15_3cmp9PartialEq2eq0E0INtNtNtB15_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit: ; preds = %.split.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRyRlENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB1p_7HashMapylENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i, %._crit_edge.i.i.i.i.i, %.split.us.i
  %.not12.i = phi i1 [ %.not.us.not.i.not, %.split.us.i ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRyRlENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB1p_7HashMapylENtNtBe_3cmp9PartialEq2eq0E0Csl8OoimOLbh_6qdrant.exit.i ], [ %.not.not.not.i, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterylENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_3all5checkTRyRlENCNvXs4_B6_INtB6_7HashMapylENtNtB15_3cmp9PartialEq2eq0E0INtNtNtB15_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit
  %.sroa.0.0 = phi i1 [ %.not12.i, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterylENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_3all5checkTRyRlENCNvXs4_B6_INtB6_7HashMapylENtNtB15_3cmp9PartialEq2eq0E0INtNtNtB15_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !5 ; 2 uses
  %i.c = xor i64 %i.b, -9223372036854775808
  %i.d = icmp slt i64 %i.b, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 5          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !12, !noundef !5 ; 2 uses
  %i.g = xor i64 %i.f, -9223372036854775808
  %i.h = icmp slt i64 %i.f, 0
  %i.i = select i1 %i.h, i64 %i.g, i64 5
  %i.j = icmp eq i64 %i.e, %i.i
  br i1 %i.j, label %bb.b, label %_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.j
    i64 4, label %bb.l
    i64 5, label %bb.n
    i64 0, label %_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit
  ]

_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvYINtNtNtCshqfBqtY9aGF_8indexmap3map4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB24_3all5checkTRBL_RB1n_ENCNvXse_B8_INtB8_8IndexMapBL_B1n_ENtNtB2c_3cmp9PartialEq2eq0E0INtNtNtB2c_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit.i, %bb.n, %bb.l, %bb.j, %bb.e, %bb.b, %bb.a, %bb.m, %bb.k, %bb.g, %bb.h, %bb.i, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.d ], [ false, %bb.a ], [ true, %bb.b ], [ %i.x, %bb.g ], [ %i.aa, %bb.h ], [ %i.ad, %bb.i ], [ %i.an, %bb.k ], [ false, %bb.e ], [ %i.ax, %bb.m ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.n ], [ %.not13.lcssa, %_RINvYINtNtNtCshqfBqtY9aGF_8indexmap3map4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB24_3all5checkTRBL_RB1n_ENCNvXse_B8_INtB8_8IndexMapBL_B1n_ENtNtB2c_3cmp9PartialEq2eq0E0INtNtNtB2c_3ops12control_flow11ControlFlowuEECsl8OoimOLbh_6qdrant.exit.i ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable17:                            ; preds = %bb.f
  unreachable

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !15, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i8, ptr %i.m, align 8, !range !15, !noundef !5
  %i.o = icmp eq i8 %i.l, %i.n
  br label %_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !11, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !11, !noundef !5
  %.not = icmp eq i64 %i.q, %i.s
  br i1 %.not, label %bb.f, label %_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  switch i64 %i.q, label %default.unreachable17 [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.t, align 8, !noundef !5
  %i.w = load i64, ptr %i.u, align 8, !noundef !5
  %i.x = icmp eq i64 %i.v, %i.w
  br label %_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.t, align 8, !noundef !5
  %i.z = load i64, ptr %i.u, align 8, !noundef !5
  %i.aa = icmp eq i64 %i.y, %i.z
  br label %_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.f
  %i.ab = load double, ptr %i.t, align 8, !noundef !5
  %i.ac = load double, ptr %i.u, align 8, !noundef !5
  %i.ad = fcmp oeq double %i.ab, %i.ac
  br label %_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.k, label %_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5
end_hunk_0
