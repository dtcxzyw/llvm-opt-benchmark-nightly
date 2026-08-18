inline.NumInlined: 12000
inline.NumDeleted: 3498
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvMs1_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_4Sbbf5writeQINtNtNtB8_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !102
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.aj, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RNCINvMs1_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB8_4Sbbf5writeQINtNtNtBa_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !98
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.214.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j), !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.r

bb.l:                                             ; preds = %_RINvXs3_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_17BloomFilterHeaderNtNtB8_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.ah = shl nuw nsw i64 %i.p, 5
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !103, !noalias !106, !nonnull !3, !align !42, !noundef !3
  %i.ai = call noundef ptr @_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef range(i64 0, 9223372036854775777) %i.ah), !noalias !110 ; 2 uses
  %.not.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i3, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !110
  store ptr %i.ai, ptr %i.c, align 8, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111
  store ptr %i.c, ptr %i.a, align 8, !noalias !111
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !111
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @67, ptr noundef nonnull %i.a)
          to label %bb.p unwind label %bb.n, !noalias !111

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %.val6.i.i = load ptr, ptr %i.c, align 8, !noalias !111, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val6.i.i) #50
          to label %common.resume unwind label %bb.o, !noalias !111

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !111
  unreachable

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.224.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.val.i3.i = load ptr, ptr %i.c, align 8, !noalias !111, !nonnull !3, !noundef !3
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val.i3.i), !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !110
  store i64 0, ptr %0, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store i64 8, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %_RNCINvMs1_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB8_4Sbbf5writeQINtNtNtBa_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE0Cs14kWLkQVSKO_14deltalake_core.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtNtCsdFjMDJQAyx6_10arrow_json6reader4tapeNtB6_11TapeDecoder9serializeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 288230376151711744) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 14 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.417 = alloca [24 x i8], align 8          ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 23 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %1, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.p, ptr %i.r, align 8
  %.idx = shl nuw nsw i64 %3, 5
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.t = icmp eq i64 %3, 0
  br i1 %i.t, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.05.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.05.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.05.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.o, %.lr.ph.i
  %i.x = phi ptr [ %2, %.lr.ph.i ], [ %i.y, %bb.o ] ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !114
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !128
  %i.z = load i8, ptr %i.x, align 8, !range !131, !alias.scope !132, !noalias !133, !noundef !3
  switch i8 %i.z, label %default.unreachable37 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

default.unreachable37:                            ; preds = %bb.c, %bb.ai, %bb.p
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @_RNvXs2_NtNtCsdFjMDJQAyx6_10arrow_json6reader10serializerQNtB5_14TapeSerializerNtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_unit(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !136
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer15SerializerErrorENCINvMs1_NtB2s_4tapeNtB3E_11TapeDecoder9serializeB1l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !137, !alias.scope !132, !noalias !133, !noundef !3
  %i.ac = trunc nuw i8 %i.ab to i1
  call void @_RNvXs2_NtNtCsdFjMDJQAyx6_10arrow_json6reader10serializerQNtB5_14TapeSerializerNtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_bool(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i1 noundef zeroext %i.ac), !noalias !136
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer15SerializerErrorENCINvMs1_NtB2s_4tapeNtB3E_11TapeDecoder9serializeB1l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.f:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @_RINvXs4_NtCseqDwI8vvjGQ_10serde_json6numberNtB6_6NumberNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer14TapeSerializerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !138
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer15SerializerErrorENCINvMs1_NtB2s_4tapeNtB3E_11TapeDecoder9serializeB1l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.g:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !132, !noalias !133, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !132, !noalias !133, !noundef !3
  call void @_RNvXs2_NtNtCsdFjMDJQAyx6_10arrow_json6reader10serializerQNtB5_14TapeSerializerNtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah), !noalias !136
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer15SerializerErrorENCINvMs1_NtB2s_4tapeNtB3E_11TapeDecoder9serializeB1l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @_RINvYQNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer14TapeSerializerNtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai), !noalias !138
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer15SerializerErrorENCINvMs1_NtB2s_4tapeNtB3E_11TapeDecoder9serializeB1l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !139
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !132, !noalias !133, !noundef !3 ; 2 uses
  call void @_RNvXs2_NtNtCsdFjMDJQAyx6_10arrow_json6reader10serializerQNtB5_14TapeSerializerNtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_map(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 1, i64 %i.ak), !noalias !140
  %i.al = load i64, ptr %i.f, align 8, !range !141, !noalias !139, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.al, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !142
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.an = load ptr, ptr %i.u, align 8, !noalias !139, !nonnull !3, !align !42, !noundef !3 ; 2 uses
  %i.ao = load i64, ptr %i.v, align 8, !noalias !139, !noundef !3 ; 2 uses
  store ptr %i.an, ptr %i.g, align 8, !noalias !139
  store i64 %i.ao, ptr %i.w, align 8, !noalias !139
  %i.ap = load ptr, ptr %i.am, align 8, !alias.scope !132, !noalias !133, !noundef !3 ; 3 uses
  %.not37.i.i.i.i = icmp ne ptr %i.ap, null       ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !132, !noalias !133
  %.sroa.04.sroa.5.sroa.6.0.i.i.i.i = select i1 %.not37.i.i.i.i, i64 %i.ar, i64 undef ; 2 uses
  %.sroa.04.sroa.0.0.i.i.i.i = zext i1 %.not37.i.i.i.i to i64 ; 2 uses
  %.sroa.04.sroa.5.sroa.6.0.i.i.i.i.a = select i1 %.not37.i.i.i.i, i64 %i.ak, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !139
  store i64 %.sroa.04.sroa.0.0.i.i.i.i, ptr %i.e, align 8, !noalias !139
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !139
  store ptr %i.ap, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !139
  store i64 %.sroa.04.sroa.5.sroa.6.0.i.i.i.i, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !139
  store i64 %.sroa.04.sroa.0.0.i.i.i.i, ptr %.sroa.05.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !139
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !139
  store ptr %i.ap, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !139
  store i64 %.sroa.04.sroa.5.sroa.6.0.i.i.i.i, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !139
  store i64 %.sroa.04.sroa.5.sroa.6.0.i.i.i.i.a, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !noalias !139
  %i.as = call { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !140 ; 2 uses
  %i.at = extractvalue { ptr, ptr } %i.as, 0      ; 2 uses
  %.not3840.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not3840.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.m
  %i.au = phi ptr [ %i.bb, %bb.m ], [ %i.at, %bb.k ]
  %i.av = phi { ptr, ptr } [ %i.ba, %bb.m ], [ %i.as, %bb.k ]
  %i.aw = extractvalue { ptr, ptr } %i.av, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call void @_RINvYNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer16ObjectSerializerNtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw), !noalias !140
  %i.ax = load i64, ptr %i.d, align 8, !range !141, !noalias !139, !noundef !3
  %.not39.i.i.i.i = icmp eq i64 %i.ax, -9223372036854775808
  br i1 %.not39.i.i.i.i, label %bb.m, label %bb.l

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.m
  %.pre.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !139
  %.pre41.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !139
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.k
  %i.ay = phi i64 [ %.pre41.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ao, %bb.k ]
  %i.az = phi ptr [ %.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.an, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !139
  call void @_RNvXs4_NtNtCsdFjMDJQAyx6_10arrow_json6reader10serializerNtB5_16ObjectSerializerNtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap3end(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef %i.ay), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !139
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer15SerializerErrorENCINvMs1_NtB2s_4tapeNtB3E_11TapeDecoder9serializeB1l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !139
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = call { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !140 ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0      ; 2 uses
  %.not38.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not38.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.n:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !139
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer15SerializerErrorENCINvMs1_NtB2s_4tapeNtB3E_11TapeDecoder9serializeB1l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer15SerializerErrorENCINvMs1_NtB2s_4tapeNtB3E_11TapeDecoder9serializeB1l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.n, %._crit_edge.i.i.i.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !128
  %i.bc = load i64, ptr %i.h, align 8, !range !141, !alias.scope !143, !noalias !146, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bc, -9223372036854775808
  br i1 %.not.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer15SerializerErrorENCINvMs1_NtB2s_4tapeNtB3E_11TapeDecoder9serializeB1l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !114
  %i.bd = icmp eq ptr %i.y, %i.s
  br i1 %i.bd, label %.loopexit, label %bb.c

bb.p:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !3, !noundef !3
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.n ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bi = load i8, ptr %i.bh, align 4, !range !148, !noundef !3
  switch i8 %i.bi, label %default.unreachable37 [
    i8 0, label %bb.aa
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.ad
    i8 4, label %bb.ae
    i8 5, label %bb.af
    i8 6, label %bb.ag
    i8 7, label %bb.ah
    i8 8, label %bb.ai
  ]

bb.q:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer15SerializerErrorENCINvMs1_NtB2s_4tapeNtB3E_11TapeDecoder9serializeB1l_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.417)
  store i64 %i.bc, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !149
  store i64 0, ptr %i.c, align 8, !noalias !149
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !149
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !149
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.bj, align 8, !noalias !149
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !149
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !149
  store ptr %i.c, ptr %i.b, align 8, !noalias !149
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @105, ptr %i.bk, align 8, !noalias !149
  %i.bl = invoke noundef zeroext i1 @_RNvXs_NtNtCsdFjMDJQAyx6_10arrow_json6reader10serializerNtB4_15SerializerErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.s unwind label %bb.r, !noalias !156

bb.r:                                             ; preds = %bb.t, %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #50
          to label %.body.i unwind label %bb.u, !noalias !156

bb.s:                                             ; preds = %bb.q
  br i1 %i.bl, label %bb.t, label %bb.v, !prof !4

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2177, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @117, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2179) #53
          to label %.noexc.i.i unwind label %bb.r, !noalias !156

.noexc.i.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !156
  unreachable

.body.i:                                          ; preds = %bb.r
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsdFjMDJQAyx6_10arrow_json6reader10serializer15SerializerErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #50
          to label %common.resume.i unwind label %bb.y, !noalias !157

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.417, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !149
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNCINvMs1_NtNtCsdFjMDJQAyx6_10arrow_json6reader4tapeNtB8_11TapeDecoder9serializeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEs_0Cs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.w, !noalias !157

bb.w:                                             ; preds = %bb.v
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.x, !noalias !157

bb.x:                                             ; preds = %bb.w
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !157
  unreachable

common.resume.i:                                  ; preds = %bb.w, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bm, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.y:                                             ; preds = %.body.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !157
  unreachable

_RNCINvMs1_NtNtCsdFjMDJQAyx6_10arrow_json6reader4tapeNtB8_11TapeDecoder9serializeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEs_0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.v
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.228.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.417, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.417)
  store i64 -9223372036854775798, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.z

.loopexit:                                        ; preds = %bb.o, %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !noundef !3
  %i.bt = add i64 %i.bs, %3
  store i64 %i.bt, ptr %i.br, align 8
  store i64 -9223372036854775788, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.z

bb.z:                                             ; preds = %.split, %.loopexit, %_RNCINvMs1_NtNtCsdFjMDJQAyx6_10arrow_json6reader4tapeNtB8_11TapeDecoder9serializeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEs_0Cs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.aa:                                            ; preds = %bb.p
  store ptr @13, ptr %i.l, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 6, ptr %i.bu, align 8
  br label %.split

bb.ab:                                            ; preds = %bb.p
  store ptr @14, ptr %i.l, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 4, ptr %i.bv, align 8
  br label %.split

bb.ac:                                            ; preds = %bb.p
  store ptr @15, ptr %i.l, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 6, ptr %i.bw, align 8
  br label %.split

bb.ad:                                            ; preds = %bb.p
  store ptr @16, ptr %i.l, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 5, ptr %i.bx, align 8
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvMs1_NtNtNtBa_4sync4mpsc7boundedINtB1l_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB3v_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !212
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.ai:                                            ; preds = %bb.n, %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.aj:                                            ; preds = %bb.af, %bb.ae
  store i8 1, ptr %.phi.trans.insert.i.i.i, align 16, !noalias !213
  %i.bm = trunc nuw i8 %i.az to i1
  br i1 %i.bm, label %bb.am, label %bb.an

.body.i.i.i:                                      ; preds = %bb.ai, %.body.i.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %.pn22.pn.i.i.i.i, %.body.i.i.i.i ], [ %i.bl, %bb.ai ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE13reserve_inner0EB2Y_(ptr noundef nonnull align 8 %i.r) #50
          to label %bb.i unwind label %bb.ak, !noalias !212

bb.ak:                                            ; preds = %.body.i.i.i
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !212
  unreachable

bb.al:                                            ; preds = %bb.k, %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B2x_.exit.i.i: ; preds = %bb.aa, %bb.u
  %.sink.i.i.i.i = phi i8 [ 4, %bb.aa ], [ 3, %bb.u ]
  store i8 %.sink.i.i.i.i, ptr %.phi.trans.insert.i.i.i, align 16, !noalias !213
  store i8 3, ptr %.phi.trans.insert.i.i, align 8, !noalias !209
  br label %bb.aw

bb.am:                                            ; preds = %bb.aj, %.thread25.i.i.i
  store i8 1, ptr %.phi.trans.insert.i.i, align 8, !noalias !209
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.u, align 16, !noalias !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.49.0..sroa_idx.i.i, i64 88, i1 false)
  br label %bb.aq

bb.an:                                            ; preds = %bb.aj
  %i.bp = load ptr, ptr %i.v, align 8, !noalias !209, !nonnull !3, !align !42, !noundef !3
  store i8 1, ptr %.phi.trans.insert.i.i, align 8, !noalias !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !202
  store i8 0, ptr %i.s, align 1, !noalias !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.u, i64 96, i1 false), !noalias !202
  invoke void @_RNvMs8_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB5_6PermitINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4sendB2v_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bp, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %bb.ap unwind label %bb.ao, !noalias !212

bb.ao:                                            ; preds = %bb.an
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !202
  br label %.body20.i.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !202
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.sroa.04.0.i.i = phi i64 [ %.sroa.08.0.copyload.i.i, %bb.am ], [ -9223372036854775710, %bb.ap ]
  store i8 0, ptr %i.s, align 1, !noalias !202
  br label %bb.aw

.body.i.i:                                        ; preds = %bb.al, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.i ], [ %i.bo, %bb.al ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0EB2Y_(ptr noundef nonnull align 8 %i.q) #50
          to label %.body20.i.i unwind label %bb.ar, !noalias !212

bb.ar:                                            ; preds = %bb.at, %.body.i.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !212
  unreachable

bb.as:                                            ; preds = %bb.at, %.body20.i.i
  store i8 0, ptr %i.s, align 1, !noalias !202
  store i8 2, ptr %i.p, align 8, !noalias !202
  br label %.body20

bb.at:                                            ; preds = %.body20.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB1V_(ptr noalias noundef align 16 dereferenceable(96) %i.u) #50
          to label %bb.as unwind label %bb.ar, !noalias !212

bb.au:                                            ; preds = %bb.g, %bb.f
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body20

.body20:                                          ; preds = %bb.as, %bb.au
  %eh.lpad-body21 = phi { ptr, i32 } [ %i.bs, %bb.au ], [ %.pn12.i.i, %bb.as ] ; 2 uses
  %i.bt = load i8, ptr %i.b, align 1, !range !159, !alias.scope !221, !noalias !224, !noundef !3
  %.not.i = icmp eq i8 %i.bt, 2
  br i1 %.not.i, label %.body, label %bb.av

bb.av:                                            ; preds = %.body20
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.body unwind label %bb.ay

bb.aw:                                            ; preds = %bb.aq, %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B2x_.exit.i.i
  %.sroa.029.0 = phi i64 [ -9223372036854775709, %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B2x_.exit.i.i ], [ %.sroa.04.0.i.i, %bb.aq ] ; 2 uses
  %storemerge.i.i = phi i8 [ 3, %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B2x_.exit.i.i ], [ 1, %bb.aq ]
  store i8 %storemerge.i.i, ptr %i.p, align 8, !noalias !202
  %i.bu = load i8, ptr %i.b, align 1, !range !159, !alias.scope !225, !noundef !3
  %.not.i23 = icmp eq i8 %i.bu, 2
  br i1 %.not.i23, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.av
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !224
  unreachable

bb.az:                                            ; preds = %bb.ax, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bb
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %.body20, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.az ], [ %eh.lpad-body21, %.body20 ], [ %eh.lpad-body21, %bb.av ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB2Y_(ptr noundef nonnull align 16 %i.c) #50
          to label %bb.bd unwind label %bb.bg

bb.ba:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !197
  %i.bx = icmp eq i64 %.sroa.029.0, -9223372036854775709
  br i1 %i.bx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias noundef nonnull %1)
          to label %bb.e unwind label %bb.az

bb.bc:                                            ; preds = %bb.ba
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.i.i, i64 88, i1 false)
  store i64 %.sroa.029.0, ptr %0, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB2Y_(ptr noundef nonnull align 16 %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtB4_4task4wake5WakerECs14kWLkQVSKO_14deltalake_core.exit28 unwind label %bb.be

bb.bd:                                            ; preds = %bb.be, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ca, %bb.be ]
  %.val11 = load ptr, ptr %i.e, align 8, !nonnull !3, !align !42, !noundef !3
  %.val12 = load ptr, ptr %i.j, align 8, !noundef !3
  %i.by = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !3, !noundef !3
  invoke void %i.bz(ptr noundef %.val12)
          to label %.thread unwind label %bb.bg, !inline_history !196

bb.be:                                            ; preds = %bb.bc
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtB4_4task4wake5WakerECs14kWLkQVSKO_14deltalake_core.exit28: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %i.e, align 8, !nonnull !3, !align !42, !noundef !3
  %.val10 = load ptr, ptr %i.j, align 8, !noundef !3
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !3, !noundef !3
  call void %i.cc(ptr noundef %.val10), !inline_history !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtB4_4task4wake5WakerECs14kWLkQVSKO_14deltalake_core.exit28, %bb.c
  ret void

bb.bg:                                            ; preds = %bb.bd, %bb.bh, %.body
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.thread:                                          ; preds = %bb.bd, %bb.bh
  %.pn.pn34 = phi { ptr, i32 } [ %.pn, %bb.bd ], [ %i.ce, %bb.bh ]
  resume { ptr, i32 } %.pn.pn34

bb.bh:                                            ; preds = %bb.a
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB2Y_(ptr noundef nonnull align 16 %2) #50
          to label %.thread unwind label %bb.bg
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvMs1_NtNtNtBa_4sync4mpsc7boundedINtB1l_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB25_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB32_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB4a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(400) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.04.i.i = alloca [112 x i8], align 16     ; 2 uses
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [400 x i8], align 16              ; 30 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1)
          to label %bb.b unwind label %bb.bh      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 4, ptr %i.i, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB3C_(ptr noundef nonnull align 16 %2)
  br label %bb.bf

bb.d:                                             ; preds = %bb.b
  %i.j = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.g, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %i.c, ptr noundef nonnull align 16 dereferenceable(400) %2, i64 400, i1 false)
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 393 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 8 uses
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 392 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 185
  %.sroa.731.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %.sroa.933.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %.sroa.1034.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  br label %bb.e

bb.e:                                             ; preds = %bb.bb, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !228
  %i.ac = load i8, ptr %i.o, align 8, !range !159, !noundef !3 ; 2 uses
  switch i8 %i.ac, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i
    i8 2, label %.noexc
  ], !prof !165

default.unreachable:                              ; preds = %bb.o, %bb.l, %bb.h, %.noexc, %bb.e
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e
  %i.ad = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.n)
          to label %.noexc16 unwind label %bb.az  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.noexc, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i: ; preds = %.noexc16, %bb.e
  %.sroa.0.0.i.i4.i = phi ptr [ %i.ad, %.noexc16 ], [ %i.n, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !range !137, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  store i8 1, ptr %i.af, align 1
  store i8 -128, ptr %i.ah, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i, %.noexc16, %bb.e
  %.sroa.3.0.i = phi i8 [ %i.ai, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i ], [ undef, %.noexc16 ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i8 [ %i.ag, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i ], [ 2, %.noexc16 ], [ %i.ac, %bb.e ]
  store i8 %.sroa.0.0.i, ptr %i.b, align 1, !noalias !228
  store i8 %.sroa.3.0.i, ptr %i.p, align 1, !noalias !228
  %i.aj = load i8, ptr %i.q, align 1, !range !166, !noalias !233, !noundef !3
  switch i8 %i.aj, label %default.unreachable [
    i8 0, label %.thread.i.i
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

.thread.i.i:                                      ; preds = %.noexc
  %i.ak = load ptr, ptr %i.u, align 16, !noalias !233, !nonnull !3, !align !42, !noundef !3 ; 2 uses
  store i8 1, ptr %i.t, align 8, !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, ptr noundef nonnull align 16 dereferenceable(128) %i.v, i64 128, i1 false), !noalias !233
  store ptr %i.ak, ptr %i.r, align 16, !noalias !233
  store i8 0, ptr %.phi.trans.insert.i.i, align 8, !noalias !233
  br label %.thread.i.i.i

.body23.i.i:                                      ; preds = %.body.i.i, %bb.ao
  %.pn15.i.i = phi { ptr, i32 } [ %i.br, %bb.ao ], [ %.pn.i.i, %.body.i.i ]
  %i.al = load i8, ptr %i.t, align 8, !range !137, !noalias !233, !noundef !3
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.at, label %bb.as

bb.f:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #49
          to label %.noexc18 unwind label %bb.au

.noexc18:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #49
          to label %.noexc19 unwind label %bb.au

.noexc19:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !166, !noalias !240
  switch i8 %.pre.i.i, label %default.unreachable [
    i8 0, label %..thread.i.i_crit_edge.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

..thread.i.i_crit_edge.i:                         ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.r, align 16, !noalias !240
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %..thread.i.i_crit_edge.i, %.thread.i.i
  %i.an = phi ptr [ %i.ak, %.thread.i.i ], [ %.pre.i, %..thread.i.i_crit_edge.i ] ; 3 uses
  store ptr %i.an, ptr %i.w, align 8, !noalias !240
  store ptr %i.an, ptr %i.s, align 16, !noalias !240
  store i64 1, ptr %.phi.trans.insert28.i.i, align 8, !noalias !240
  store i8 0, ptr %.phi.trans.insert.i.i.i, align 16, !noalias !240
  br label %.thread.i.i.i.i

bb.i:                                             ; preds = %.body.i.i.i
  store i8 2, ptr %.phi.trans.insert.i.i, align 8, !noalias !240
  br label %.body.i.i

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #49
          to label %.noexc.i.i unwind label %bb.al, !noalias !243

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #49
          to label %.noexc17.i.i unwind label %bb.al, !noalias !243

.noexc17.i.i:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.h
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 16, !range !178, !noalias !244
  switch i8 %.pre.i.i.i, label %default.unreachable [
    i8 0, label %..thread.i.i_crit_edge.i.i
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.y
  ]

..thread.i.i_crit_edge.i.i:                       ; preds = %bb.l
  %.pre27.i.i = load ptr, ptr %i.s, align 16, !noalias !244
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8, !noalias !244
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %..thread.i.i_crit_edge.i.i, %.thread.i.i.i
  %i.ao = phi i64 [ 1, %.thread.i.i.i ], [ %.pre29.i.i, %..thread.i.i_crit_edge.i.i ]
  %i.ap = phi ptr [ %i.an, %.thread.i.i.i ], [ %.pre27.i.i, %..thread.i.i_crit_edge.i.i ]
  store ptr %i.ap, ptr %i.x, align 16, !noalias !244
  store i64 %i.ao, ptr %i.y, align 8, !noalias !244
  store i8 0, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !244
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #49
          to label %.noexc.i.i.i unwind label %bb.ai, !noalias !247

.noexc.i.i.i:                                     ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #49
          to label %.noexc11.i.i.i unwind label %bb.ai, !noalias !247

.noexc11.i.i.i:                                   ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !166, !noalias !248
  switch i8 %.pre.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.r
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #49
          to label %.noexc.i.i.i.i unwind label %bb.t, !noalias !251

.noexc.i.i.i.i:                                   ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #49
          to label %.noexc26.i.i.i.i unwind label %bb.t, !noalias !251

.noexc26.i.i.i.i:                                 ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.o, %bb.o, %.thread.i.i.i.i
  %i.aq = invoke noundef zeroext i1 @_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNvNtCskQDtHcQtBkN_5tokio5trace10trace_leafENtNtB7_6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.u unwind label %bb.s, !noalias !243 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !248
  br label %.body.i.i.i.i

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %..i.i.i.i.i = select i1 %i.aq, i8 3, i8 1
  store i8 %..i.i.i.i.i, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !248
  br i1 %i.aq, label %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB17_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB24_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B3c_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = load i64, ptr %i.y, align 8, !noalias !244, !noundef !3 ; 3 uses
  %i.au = load ptr, ptr %i.x, align 16, !noalias !244, !nonnull !3, !align !42, !noundef !3
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !noalias !243, !nonnull !3, !noundef !3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 488
  %i.aw = load i64, ptr %i.av, align 8, !noalias !243, !noundef !3
  %i.ax = icmp ugt i64 %i.at, %i.aw
  br i1 %i.ax, label %.thread25.i.i.i, label %bb.w

.thread25.i.i.i:                                  ; preds = %bb.v
  store i8 1, ptr %.phi.trans.insert.i.i.i, align 16, !noalias !244
  br label %bb.am

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 448
  store ptr %i.ay, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !244
  store ptr null, ptr %.sroa.731.0..sroa_idx.i.i.i.i, align 16, !noalias !244
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !noalias !244
  store i64 %i.at, ptr %.sroa.933.0..sroa_idx.i.i.i.i, align 16, !noalias !244
  store i64 %i.at, ptr %.sroa.1034.0..sroa_idx.i.i.i.i, align 8, !noalias !244
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 16, !noalias !244
  br label %bb.y

.body.i.i.i.i:                                    ; preds = %bb.ah, %bb.ad, %bb.ac, %bb.z, %bb.t, %bb.s
  %.pn22.pn.i.i.i.i = phi { ptr, i32 } [ %i.as, %bb.t ], [ %i.ar, %bb.s ], [ %i.bd, %bb.ac ], [ %i.bb, %bb.z ], [ %i.bl, %bb.ah ], [ %i.bd, %bb.ad ]
  store i8 2, ptr %.phi.trans.insert.i.i.i, align 16, !noalias !244
  br label %.body.i.i.i

bb.x:                                             ; preds = %bb.z
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !243
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.l
  %i.ba = invoke noundef i8 @_RNvXs1_NtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noundef nonnull align 8 %.phi.trans.insert.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.aa unwind label %bb.z, !noalias !243 ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore7AcquireECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %.phi.trans.insert.i.i.i.i) #50
          to label %.body.i.i.i.i unwind label %bb.x, !noalias !243

bb.aa:                                            ; preds = %bb.y
  %i.bc = icmp eq i8 %i.ba, 2
  br i1 %i.bc, label %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB17_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB24_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B3c_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXs3_NtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %.phi.trans.insert.i.i.i.i)
          to label %bb.ae unwind label %bb.ac, !noalias !243

bb.ac:                                            ; preds = %bb.ab
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load ptr, ptr %.sroa.731.0..sroa_idx.i.i.i.i, align 16, !noalias !244, !align !42, !noundef !3 ; 2 uses
  %i.be = icmp eq ptr %.val2.i.i.i.i.i, null
  br i1 %i.be, label %.body.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val3.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !244
  %i.bf = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !243, !nonnull !3, !noundef !3
  invoke void %i.bg(ptr noundef %.val3.i.i.i.i.i)
          to label %.body.i.i.i.i unwind label %bb.ag, !noalias !243, !inline_history !187

bb.ae:                                            ; preds = %bb.ab
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.731.0..sroa_idx.i.i.i.i, align 16, !noalias !244, !align !42, !noundef !3 ; 2 uses
  %i.bh = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.bh, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val1.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !244
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !243, !nonnull !3, !noundef !3
  invoke void %i.bj(ptr noundef %.val1.i.i.i.i.i)
          to label %bb.aj unwind label %bb.ah, !noalias !243, !inline_history !188

bb.ag:                                            ; preds = %bb.ad
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !243
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.ai:                                            ; preds = %bb.n, %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.aj:                                            ; preds = %bb.af, %bb.ae
  store i8 1, ptr %.phi.trans.insert.i.i.i, align 16, !noalias !244
  %i.bn = trunc nuw i8 %i.ba to i1
  br i1 %i.bn, label %bb.am, label %bb.an

.body.i.i.i:                                      ; preds = %bb.ai, %.body.i.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %.pn22.pn.i.i.i.i, %.body.i.i.i.i ], [ %i.bm, %bb.ai ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE13reserve_inner0EB3C_(ptr noundef nonnull align 8 %i.s) #50
          to label %bb.i unwind label %bb.ak, !noalias !243

bb.ak:                                            ; preds = %.body.i.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !243
  unreachable

bb.al:                                            ; preds = %bb.k, %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB17_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB24_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B3c_.exit.i.i: ; preds = %bb.aa, %bb.u
  %.sink.i.i.i.i = phi i8 [ 4, %bb.aa ], [ 3, %bb.u ]
  store i8 %.sink.i.i.i.i, ptr %.phi.trans.insert.i.i.i, align 16, !noalias !244
  store i8 3, ptr %.phi.trans.insert.i.i, align 8, !noalias !240
  br label %bb.aw

bb.am:                                            ; preds = %bb.aj, %.thread25.i.i.i
  store i8 1, ptr %.phi.trans.insert.i.i, align 8, !noalias !240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.c, i64 112, i1 false)
  %3 = load <2 x i64>, ptr %.sroa.411.0..sroa_idx.i.i, align 16, !noalias !233
  br label %bb.aq

bb.an:                                            ; preds = %bb.aj
  %i.bq = load ptr, ptr %i.w, align 8, !noalias !240, !nonnull !3, !align !42, !noundef !3
  store i8 1, ptr %.phi.trans.insert.i.i, align 8, !noalias !240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !233
  store i8 0, ptr %i.t, align 8, !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, ptr noundef nonnull align 16 dereferenceable(128) %i.c, i64 128, i1 false), !noalias !233
  invoke void @_RNvMs8_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB5_6PermitINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB15_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB22_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4sendB3a_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bq, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.a)
          to label %bb.ap unwind label %bb.ao, !noalias !243

bb.ao:                                            ; preds = %bb.an
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !233
  br label %.body23.i.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !233
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %4 = phi <2 x i64> [ %3, %bb.am ], [ <i64 3, i64 undef>, %bb.ap ]
  store i8 0, ptr %i.t, align 8, !noalias !233
  br label %bb.aw

.body.i.i:                                        ; preds = %bb.al, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.i ], [ %i.bp, %bb.al ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0EB3C_(ptr noundef nonnull align 8 %i.r) #50
          to label %.body23.i.i unwind label %bb.ar, !noalias !243

bb.ar:                                            ; preds = %bb.at, %.body.i.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !243
  unreachable

bb.as:                                            ; preds = %bb.at, %.body23.i.i
  store i8 0, ptr %i.t, align 8, !noalias !233
  store i8 2, ptr %i.q, align 1, !noalias !233
  br label %.body20

bb.at:                                            ; preds = %.body23.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1s_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2z_(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.c) #50
          to label %bb.as unwind label %bb.ar, !noalias !243

bb.au:                                            ; preds = %bb.g, %bb.f
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body20

.body20:                                          ; preds = %bb.as, %bb.au
  %eh.lpad-body21 = phi { ptr, i32 } [ %i.bt, %bb.au ], [ %.pn15.i.i, %bb.as ] ; 2 uses
  %i.bu = load i8, ptr %i.b, align 1, !range !159, !alias.scope !252, !noalias !255, !noundef !3
  %.not.i = icmp eq i8 %i.bu, 2
  br i1 %.not.i, label %.body, label %bb.av

bb.av:                                            ; preds = %.body20
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.body unwind label %bb.ay

bb.aw:                                            ; preds = %bb.aq, %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB17_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB24_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B3c_.exit.i.i
  %storemerge.i.i = phi i8 [ 3, %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB17_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB24_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B3c_.exit.i.i ], [ 1, %bb.aq ]
  %5 = phi <2 x i64> [ <i64 4, i64 undef>, %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB17_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB24_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B3c_.exit.i.i ], [ %4, %bb.aq ] ; 2 uses
  store i8 %storemerge.i.i, ptr %i.q, align 1, !noalias !233
  %i.bv = load i8, ptr %i.b, align 1, !range !159, !alias.scope !256, !noundef !3
  %.not.i23 = icmp eq i8 %i.bv, 2
  br i1 %.not.i23, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.av
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !255
  unreachable

bb.az:                                            ; preds = %bb.ax, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bb
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %.body20, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.az ], [ %eh.lpad-body21, %.body20 ], [ %eh.lpad-body21, %bb.av ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB3C_(ptr noundef nonnull align 16 %i.c) #50
          to label %bb.bd unwind label %bb.bg

bb.ba:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !228
  %6 = extractelement <2 x i64> %5, i64 0
  %i.by = icmp eq i64 %6, 4
  br i1 %i.by, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias noundef nonnull %1)
          to label %bb.e unwind label %bb.az

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i.i, i64 112, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %5, ptr %.sroa.2.0..sroa_idx, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB3C_(ptr noundef nonnull align 16 %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtB4_4task4wake5WakerECs14kWLkQVSKO_14deltalake_core.exit28 unwind label %bb.be

bb.bd:                                            ; preds = %bb.be, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cb, %bb.be ]
  %.val11 = load ptr, ptr %i.e, align 8, !nonnull !3, !align !42, !noundef !3
  %.val12 = load ptr, ptr %i.k, align 8, !noundef !3
  %i.bz = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !3, !noundef !3
  invoke void %i.ca(ptr noundef %.val12)
          to label %.thread unwind label %bb.bg, !inline_history !196

bb.be:                                            ; preds = %bb.bc
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtB4_4task4wake5WakerECs14kWLkQVSKO_14deltalake_core.exit28: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %i.e, align 8, !nonnull !3, !align !42, !noundef !3
  %.val10 = load ptr, ptr %i.k, align 8, !noundef !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !3, !noundef !3
  call void %i.cd(ptr noundef %.val10), !inline_history !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtB4_4task4wake5WakerECs14kWLkQVSKO_14deltalake_core.exit28, %bb.c
  ret void

bb.bg:                                            ; preds = %bb.bd, %bb.bh, %.body
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.thread:                                          ; preds = %bb.bd, %bb.bh
  %.pn.pn34 = phi { ptr, i32 } [ %.pn, %bb.bd ], [ %i.cf, %bb.bh ]
  resume { ptr, i32 } %.pn.pn34

bb.bh:                                            ; preds = %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB3C_(ptr noundef nonnull align 16 %2) #50
          to label %.thread unwind label %bb.bg
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAlias7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [336 x i8], align 16              ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 10 uses
  %i.i = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.718 = alloca [40 x i8], align 8          ; 7 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [48 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [80 x i8], align 8                ; 4 uses
  %i.t = alloca [80 x i8], align 8                ; 2 uses
  %i.u = alloca [24 x i8], align 8                ; 2 uses
  %i.v = alloca [8 x i8], align 8                 ; 12 uses
  %i.w = alloca [24 x i8], align 8                ; 13 uses
  %i.x = alloca [56 x i8], align 8                ; 15 uses
  %i.y = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(56) %2, i64 56, i1 false), !alias.scope !259
  %.sink18.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sink18.i.sroa.gep86 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sink15.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sink15.i.sroa.gep87 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.z)
          to label %bb.b unwind label %.split143.thread

.body66.thread129:                                ; preds = %.body66.thread, %.body66
  %.sroa.032.0 = phi i1 [ %.sroa.031.2.a, %.body66 ], [ %.sroa.032.2127, %.body66.thread ]
  %.pn57 = phi { ptr, i32 } [ %.pn53, %.body66 ], [ %.pn55128, %.body66.thread ] ; 3 uses
  br i1 %.sroa.032.0, label %bb.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit84

.body66:                                          ; preds = %.body59
  br i1 %.sroa.032.4, label %.body66.thread, label %.body66.thread129

.split143.thread:                                 ; preds = %bb.bp, %bb.b, %bb.a
  %.sroa.032.3.ph = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.bp ]
  %lpad.thr_comm144 = landingpad { ptr, i32 }
          cleanup
  br label %.body66.thread

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  invoke void @_RNvNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder20unique_field_aliases(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae)
          to label %bb.c unwind label %.split143.thread

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !3 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ai, 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx ; 2 uses
  %.not3.not.not.i.not156 = icmp eq i64 %i.ai, 0
  br i1 %.not3.not.not.i.not156, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %.not3.not.not.i.not = icmp eq ptr %i.ak, %i.aj
  br i1 %.not3.not.not.i.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.al = phi ptr [ %i.ak, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %.val.i = load i64, ptr %i.al, align 8, !range !141, !noalias !266, !noundef !3
  %.not.i = icmp eq i64 %.val.i, -9223372036854775808
  br i1 %.not.i, label %bb.d, label %bb.f

.body59:                                          ; preds = %.thread107, %.thread107.thread, %bb.bv, %bb.p, %bb.e
  %.sroa.031.2.a = phi i1 [ false, %.thread107 ], [ false, %bb.p ], [ %.sroa.032.5, %bb.e ], [ false, %bb.bv ], [ false, %.thread107.thread ] ; 2 uses
  %.sroa.032.4 = phi i1 [ false, %.thread107 ], [ true, %bb.p ], [ true, %bb.e ], [ true, %bb.bv ], [ true, %.thread107.thread ]
  %.pn53 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp120, %.thread107 ], [ %i.bb, %bb.p ], [ %i.am, %bb.e ], [ %.pn49.pn.pn95, %bb.bv ], [ %.pn49.pn.pn95, %.thread107.thread ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.w) #50
          to label %.body66 unwind label %bb.bn

bb.e:                                             ; preds = %bb.bj, %bb.i, %bb.k, %bb.j, %bb.h, %bb.f
  %.sroa.032.5 = phi i1 [ false, %bb.bj ], [ true, %bb.f ], [ false, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body59

._crit_edge:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.an = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.z)
          to label %bb.h unwind label %bb.e

bb.g:                                             ; preds = %bb.r, %._crit_edge
  %i.ao = phi ptr [ %i.az, %bb.r ], [ %1, %._crit_edge ] ; 2 uses
  store ptr %i.ao, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ap)
          to label %bb.s unwind label %.thread91

bb.h:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.an, align 8, !nonnull !3, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema4iter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.as)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.r, i64 48, i1 false), !alias.scope !273, !noalias !277
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtNtB7_3map3MapIBN_IBX_IB1n_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBX_INtNtB1M_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2T_8dfschemaNtB5b_8DFSchema4iter0EEINtB5_7ZipImplBW_B2m_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.s, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB26_3zip3ZipINtNtNtB2a_5slice4iter4IterINtNtB2a_6option6OptionNtNtB6_6string6StringEEIB22_IB2Q_IB37_IB3y_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB37_INtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB4F_8dfschemaNtB6X_8DFSchema4iter0EENCINvMs8_NtNtBY_12logical_plan4planNtB7I_13SubqueryAlias7try_newB4B_E0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.t)
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs7_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_10Projection7try_new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u, ptr noundef nonnull %1)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  %i.at = load i64, ptr %i.q, align 8, !range !5, !noundef !3
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %bb.l
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store i64 1, ptr %i.e, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 11, ptr %i.ay, align 16
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !278
  %i.az = call noundef align 16 dereferenceable_or_null(336) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 336, i64 noundef range(i64 1, 17) 16) #45, !noalias !278 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.o, label %bb.r, !prof !4

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 336) #53
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(320) %i.ay)
          to label %.body59 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.r:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.az, ptr noundef nonnull align 16 dereferenceable(336) %i.e, i64 336, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

.thread107:                                       ; preds = %bb.bd
  %lpad.thr_comm.split-lp120 = landingpad { ptr, i32 }
          cleanup
  br label %.body59

.thread91:                                        ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.thread107.thread

bb.s:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.aq, align 8, !nonnull !3, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !3, !noundef !3
  %i.bj = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bm = load ptr, ptr %i.bh, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.bn = load i64, ptr %i.bl, align 8, !noundef !3 ; 2 uses
  store ptr %i.bm, ptr %i.p, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.bn, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bp = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bq)
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.w:                                             ; preds = %bb.t
  %i.bt = load ptr, ptr %i.br, align 8, !nonnull !3, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bx = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.by)
          to label %bb.z unwind label %bb.bs

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread107.thread

bb.z:                                             ; preds = %bb.x
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %bb.aa unwind label %bb.bs

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema23from_unqualified_fields(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.l, ptr noundef nonnull %i.bm, i64 noundef %i.bn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.k)
          to label %bb.ac unwind label %.split.thread

bb.ab:                                            ; preds = %.body
  br i1 %.sroa.027.2.lpad-body, label %bb.br, label %.thread107.thread

.split.thread:                                    ; preds = %bb.av, %bb.aa
  %lpad.thr_comm119 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

end_hunk_1
begin_hunk_2_@_RINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAlias7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core:bb.a
          to label %bb.bi unwind label %.thread107.thread152

.thread107.thread152:                             ; preds = %bb.ay
  %lpad.thr_comm.split-lp120153 = landingpad { ptr, i32 }
          cleanup
  br label %.thread107.thread

bb.az:                                            ; preds = %bb.ax
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.643.0.copyload = load i64, ptr %.sroa.643.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.dn, ptr %i.ds, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.643.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !288
  %i.dt = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 72, i64 noundef range(i64 1, 17) 8) #45, !noalias !288 ; 3 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ba, label %bb.bd, !prof !4

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #53
          to label %.noexc62 unwind label %bb.bb

.noexc62:                                         ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.ds)
          to label %.body unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.bd:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dt, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.dx = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false)
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.dx, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.dt, ptr %.sroa.526.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.m)
          to label %bb.be unwind label %.thread107

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit84 unwind label %bb.bg

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.be
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit78, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.bi:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.ea = load ptr, ptr %i.v, align 8, !alias.scope !297, !nonnull !3, !noundef !3
  %i.eb = atomicrmw sub ptr %i.ea, i64 1 release, align 8, !noalias !297
  %i.ec = icmp eq i64 %i.eb, 1
  br i1 %i.ec, label %bb.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.bk:                                            ; preds = %bb.av, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.thread107.thread unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bk
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.y

bb.bn:                                            ; preds = %bb.bx, %bb.bv, %bb.bu, %bb.bs, %.body66.thread, %bb.br, %.body, %.body59
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs14kWLkQVSKO_14deltalake_core.exit, %bb.bj, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body66.thread unwind label %bb.bq

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit78 unwind label %.split143.thread

bb.bq:                                            ; preds = %bb.bo
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.br:                                            ; preds = %.split.thread, %bb.ab
  %.pn118 = phi { ptr, i32 } [ %lpad.thr_comm119, %.split.thread ], [ %eh.lpad-body, %bb.ab ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.n) #50
          to label %.thread107.thread unwind label %bb.bn

bb.bs:                                            ; preds = %bb.z, %bb.x
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %bb.bt unwind label %bb.bn

bb.bt:                                            ; preds = %bb.v, %bb.bs
  %.pn49.pn.ph = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %lpad.thr_comm, %bb.bs ] ; 2 uses
  %i.ei = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !298
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.bu, label %.thread107.thread

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #52
          to label %.thread107.thread unwind label %bb.bn

.thread107.thread:                                ; preds = %bb.br, %bb.ab, %.thread107.thread152, %bb.bt, %bb.bu, %bb.y, %bb.bl, %.thread91
  %.pn49.pn.pn95 = phi { ptr, i32 } [ %i.bd, %.thread91 ], [ %lpad.thr_comm.split-lp120153, %.thread107.thread152 ], [ %.pn49.pn.ph, %bb.bt ], [ %.pn49.pn.ph, %bb.bu ], [ %lpad.thr_comm.split-lp, %bb.y ], [ %i.ed, %bb.bl ], [ %.pn118, %bb.br ], [ %eh.lpad-body, %bb.ab ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.ek = load ptr, ptr %i.v, align 8, !alias.scope !311, !nonnull !3, !noundef !3
  %i.el = atomicrmw sub ptr %i.ek, i64 1 release, align 8, !noalias !311
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.bv, label %.body59

bb.bv:                                            ; preds = %.thread107.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #52
          to label %.body59 unwind label %bb.bn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit78: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.x)
  br label %bb.bh

.body66.thread:                                   ; preds = %.split143.thread, %bb.bo, %.body66
  %.pn55128 = phi { ptr, i32 } [ %.pn53, %.body66 ], [ %i.eg, %bb.bo ], [ %lpad.thr_comm144, %.split143.thread ]
  %.sroa.032.2127 = phi i1 [ %.sroa.031.2.a, %.body66 ], [ false, %bb.bo ], [ %.sroa.032.3.ph, %.split143.thread ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.x) #50
          to label %.body66.thread129 unwind label %bb.bn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit84: ; preds = %bb.bf, %bb.bw, %bb.bx, %.body66.thread129
  %.pn5790 = phi { ptr, i32 } [ %i.dy, %bb.bf ], [ %.pn57, %.body66.thread129 ], [ %.pn57, %bb.bx ], [ %.pn57, %bb.bw ]
  resume { ptr, i32 } %.pn5790

bb.bw:                                            ; preds = %.body66.thread129
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.en = load ptr, ptr %i.y, align 8, !alias.scope !318, !nonnull !3, !noundef !3
  %i.eo = atomicrmw sub ptr %i.en, i64 1 release, align 8, !noalias !318
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit84

bb.bx:                                            ; preds = %bb.bw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit84 unwind label %bb.bn
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6Fields13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB1h_12arrow_reader18ArrowReaderBuilderINtB1f_11AsyncReaderNtNtB1f_5store19ParquetObjectReaderEE5builds_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %i.j, align 8
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.k, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8, !noalias !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !319
  store i64 0, ptr %i.f, align 8, !noalias !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !319
  store ptr %i.g, ptr %i.e, align 8, !noalias !319
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.l, align 8, !noalias !319
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val1
  store ptr %i.m, ptr %i.c, align 8, !noalias !319
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.o, align 8, !noalias !319
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.p, align 8, !noalias !319
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvMs_NtB28_6fieldsNtB2W_6Fields17try_filter_leavesNCINvB2T_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB4d_12arrow_reader18ArrowReaderBuilderINtB4b_11AsyncReaderNtNtB4b_5store19ParquetObjectReaderEE5builds_0E0Es_0EINtNtB6_6option6OptionB1w_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB28_5error10ArrowErrorENCINvXso_B7h_IB7f_INtNtB1B_3vec3VecB6N_EB81_EINtNtNtB4_6traits7collect12FromIteratorIB7f_B6N_B81_EE9from_iterBQ_E0B8K_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !319
  %i.q = load i64, ptr %i.d, align 8, !range !324, !noalias !319, !noundef !3 ; 2 uses
  %.not.i2 = icmp eq i64 %i.q, -9223372036854775788
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %.not.i2, label %bb.b, label %bb.j

common.resume:                                    ; preds = %bb.k, %bb.c, %.body.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.y, %bb.c ], [ %eh.lpad-body.i, %bb.h ], [ %i.aj, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !319
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !319, !nonnull !3, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !319, !noundef !3
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.x = invoke { ptr, i64 } @_RINvXs1g_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcSIBz_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1E_8adapters10filter_map9FilterMapINtNtNtB1G_5slice4iter4IterINtNtB1G_6option6OptionBJ_EENCINvMs_NtBR_6fieldsNtB4s_6Fields17try_filter_leavesNCINvB4p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5I_12arrow_reader18ArrowReaderBuilderINtB5G_11AsyncReaderNtNtB5G_5store19ParquetObjectReaderEE5builds_0E0Es0_0EECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.t, ptr noundef nonnull %i.w)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCINvMs_NtB2t_6fieldsNtB3i_6Fields17try_filter_leavesNCINvB3f_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB4z_12arrow_reader18ArrowReaderBuilderINtB4x_11AsyncReaderNtNtB4x_5store19ParquetObjectReaderEE5builds_0E0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectIB1S_SB1R_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !323 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %common.resume unwind label %bb.i, !noalias !323

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCINvMs_NtB2t_6fieldsNtB3i_6Fields17try_filter_leavesNCINvB3f_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB4z_12arrow_reader18ArrowReaderBuilderINtB4x_11AsyncReaderNtNtB4x_5store19ParquetObjectReaderEE5builds_0E0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectIB1S_SB1R_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  %i.z = extractvalue { ptr, i64 } %i.x, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.x, 1
  store ptr %i.z, ptr %i.b, align 8, !noalias !319
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !319
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBK_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.d, !noalias !323

bb.d:                                             ; preds = %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCINvMs_NtB2t_6fieldsNtB3i_6Fields17try_filter_leavesNCINvB3f_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB4z_12arrow_reader18ArrowReaderBuilderINtB4x_11AsyncReaderNtNtB4x_5store19ParquetObjectReaderEE5builds_0E0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectIB1S_SB1R_EECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.f, !noalias !323

bb.e:                                             ; preds = %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCINvMs_NtB2t_6fieldsNtB3i_6Fields17try_filter_leavesNCINvB3f_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB4z_12arrow_reader18ArrowReaderBuilderINtB4x_11AsyncReaderNtNtB4x_5store19ParquetObjectReaderEE5builds_0E0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectIB1S_SB1R_EECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsNtNtBL_5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g, !noalias !323

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !323
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.ac, %bb.d ] ; 2 uses
  %i.af = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !325
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %common.resume

bb.h:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #52
          to label %common.resume unwind label %bb.i, !noalias !323

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !323
  unreachable

bb.j:                                             ; preds = %bb.a
  %.sroa.6.8.copyload = load ptr, ptr %i.r, align 8, !noalias !332
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ai = load <2 x i64>, ptr %.sroa.9.8..sroa_idx, align 8, !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !333
  store i64 %i.q, ptr %i.h, align 8
  store ptr %.sroa.6.8.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  store <2 x i64> %i.ai, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #53
          to label %bb.l unwind label %bb.k, !noalias !333

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h) #50
          to label %common.resume unwind label %bb.m, !noalias !333

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !333
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsNtNtBL_5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  ret { ptr, i64 } %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCshmPyUV8PP35_6chrono8datetimeINtB6_8DateTimeNtNtNtB8_6offset3utc3UtcE17format_with_itemsNtNtNtB8_6format8strftime13StrftimeItemsNtB1D_4ItemECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @_RNvMNtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = load i32, ptr %i.c, align 4, !range !336, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load <2 x i32>, ptr %i.f, align 4
  store <2 x i32> %i.h, ptr %i.g, align 4
  store i32 1, ptr %i.b, align 4
  call void @_RINvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE15new_with_offsetNtNtNtB7_6offset3utc3UtcECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i32 noundef %i.e, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_2
begin_hunk_3_@_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types19TimestampSecondTypeECs14kWLkQVSKO_14deltalake_core:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ 1, %bb.g ], [ 0, %bb.f ]
  store i32 %storemerge, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types20Time64NanosecondTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @38, i64 24, i1 false)
  %i.b = sdiv i64 %1, 1000000000
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = srem i64 %1, 1000000000                  ; 2 uses
  %i.e = icmp ugt i32 %i.c, 86399
  %i.f = icmp slt i64 %i.d, 0
  %or.cond2 = or i1 %i.f, %i.e
  br i1 %or.cond2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i32 [ 1, %bb.c ], [ 0, %bb.a ]
  store i32 %storemerge, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = trunc nuw nsw i64 %i.d to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.i, align 4
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types21IntervalYearMonthTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @39, i64 24, i1 false)
  store i32 0, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types21Time32MillisecondTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @40, i64 24, i1 false)
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = sdiv i32 %i.b, 1000                      ; 2 uses
  %i.d = srem i32 %i.b, 1000
  %i.e = mul nsw i32 %i.d, 1000000                ; 2 uses
  %i.f = icmp ugt i32 %i.c, 86399
  %i.g = icmp ugt i32 %i.e, 1999999999
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i32 [ 1, %bb.c ], [ 0, %bb.a ]
  store i32 %storemerge, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.i, align 4
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types21Time64MicrosecondTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @41, i64 24, i1 false)
  %i.b = sdiv i64 %1, 1000000
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = srem i64 %1, 1000000
  %i.e = trunc nsw i64 %i.d to i32
  %i.f = mul nsw i32 %i.e, 1000                   ; 2 uses
  %i.g = icmp ugt i32 %i.c, 86399
  %i.h = icmp ugt i32 %i.f, 1999999999
  %or.cond1 = or i1 %i.g, %i.h
  br i1 %or.cond1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i32 [ 1, %bb.c ], [ 0, %bb.a ]
  store i32 %storemerge, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.j, align 4
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types22DurationNanosecondTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @42, i64 24, i1 false)
  store i32 0, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types23DurationMicrosecondTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @43, i64 24, i1 false)
  store i32 0, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types23DurationMillisecondTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @44, i64 24, i1 false)
  store i32 0, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types23TimestampNanosecondTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @45, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @45, i64 24, i1 false), !noalias !681
  %i.c = sdiv i64 %1, 1000000000
  %i.d = srem i64 %1, 1000000000                  ; 3 uses
  %.lobit.i.i33.i = ashr i64 %i.d, 63
  %.sroa.0.0.i.i34.i = add nsw i64 %.lobit.i.i33.i, %i.c ; 2 uses
  %i.e = sdiv i64 %.sroa.0.0.i.i34.i, 86400
  %i.f = srem i64 %.sroa.0.0.i.i34.i, 86400       ; 3 uses
  %.lobit.i.i.i35.i = ashr i64 %i.f, 63
  %.sroa.0.0.i.i.i36.i = add nsw i64 %.lobit.i.i.i35.i, %i.e
  %i.g = trunc nsw i64 %.sroa.0.0.i.i.i36.i to i32
  %i.h = add nsw i32 %i.g, 719163
  %i.i = invoke noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.h)
          to label %.noexc42.i unwind label %bb.c, !noalias !681

.noexc42.i:                                       ; preds = %bb.a
  %.not.i.i37.i = icmp eq i32 %i.i, 0             ; 2 uses
  br i1 %.not.i.i37.i, label %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc42.i
  %i.j = icmp slt i64 %i.f, 0
  %i.k = select i1 %i.j, i64 86400, i64 0
  %spec.select.i.i.i38.i = add nsw i64 %i.k, %i.f
  %i.l = icmp slt i64 %i.d, 0
  %i.m = select i1 %i.l, i64 1000000000, i64 0
  %spec.select.i.i39.i = add nsw i64 %i.m, %i.d
  %i.n = trunc nuw nsw i64 %spec.select.i.i39.i to i32
  %i.o = trunc nuw nsw i64 %spec.select.i.i.i38.i to i32
  br label %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %.body unwind label %bb.d, !noalias !681

_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i: ; preds = %bb.b, %.noexc42.i
  %.sroa.4.0.a = phi i32 [ undef, %.noexc42.i ], [ %i.n, %bb.b ]
  %.sroa.6.0 = phi i32 [ undef, %.noexc42.i ], [ %i.o, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !681
  unreachable

bb.e:                                             ; preds = %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.p, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !681
  br i1 %.not.i.i37.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.4.0.a, ptr %i.t, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ 1, %bb.g ], [ 0, %bb.f ]
  store i32 %storemerge, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types24IntervalMonthDayNanoTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @46, i64 24, i1 false)
  store i32 0, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types24TimestampMicrosecondTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @47, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @47, i64 24, i1 false), !noalias !684
  %i.c = sdiv i64 %1, 1000000
  %i.d = srem i64 %1, 1000000                     ; 3 uses
  %.lobit.i.i23.i = ashr i64 %i.d, 63
  %.sroa.0.0.i.i24.i = add nsw i64 %.lobit.i.i23.i, %i.c ; 2 uses
  %i.e = sdiv i64 %.sroa.0.0.i.i24.i, 86400
  %i.f = srem i64 %.sroa.0.0.i.i24.i, 86400       ; 3 uses
  %.lobit.i.i.i25.i = ashr i64 %i.f, 63
  %.sroa.0.0.i.i.i26.i = add nsw i64 %.lobit.i.i.i25.i, %i.e
  %i.g = trunc nsw i64 %.sroa.0.0.i.i.i26.i to i32
  %i.h = add nsw i32 %i.g, 719163
  %i.i = invoke noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.h)
          to label %.noexc32.i unwind label %bb.c, !noalias !684

.noexc32.i:                                       ; preds = %bb.a
  %.not.i.i27.i = icmp eq i32 %i.i, 0             ; 2 uses
  br i1 %.not.i.i27.i, label %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc32.i
  %i.j = icmp slt i64 %i.f, 0
  %i.k = select i1 %i.j, i64 86400, i64 0
  %spec.select.i.i.i28.i = add nsw i64 %i.k, %i.f
  %i.l = icmp slt i64 %i.d, 0
  %i.m = select i1 %i.l, i64 1000000, i64 0
  %spec.select.i.i29.i = add nsw i64 %i.m, %i.d
  %i.n = trunc nuw nsw i64 %spec.select.i.i29.i to i32
  %i.o = mul nuw nsw i32 %i.n, 1000
  %i.p = trunc nuw nsw i64 %spec.select.i.i.i28.i to i32
  br label %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %.body unwind label %bb.d, !noalias !684

_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i: ; preds = %bb.b, %.noexc32.i
  %.sroa.4.0.a = phi i32 [ undef, %.noexc32.i ], [ %i.o, %bb.b ]
  %.sroa.6.0 = phi i32 [ undef, %.noexc32.i ], [ %i.p, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !684
  unreachable

bb.e:                                             ; preds = %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.q, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !684
  br i1 %.not.i.i27.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.4.0.a, ptr %i.u, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i32 [ 1, %bb.g ], [ 0, %bb.f ]
  store i32 %storemerge, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types24TimestampMillisecondTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @48, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @48, i64 24, i1 false), !noalias !687
  %i.c = sdiv i64 %1, 1000
  %i.d = srem i64 %1, 1000                        ; 3 uses
  %.lobit.i.i12.i = ashr i64 %i.d, 63
  %.sroa.0.0.i.i13.i = add nsw i64 %.lobit.i.i12.i, %i.c ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  %i.f = select i1 %i.e, i64 1000, i64 0
  %spec.select.i.i14.i = add nsw i64 %i.f, %i.d
  %i.g = trunc nuw nsw i64 %spec.select.i.i14.i to i32
  %i.h = mul nuw nsw i32 %i.g, 1000000
  %i.i = sdiv i64 %.sroa.0.0.i.i13.i, 86400
  %i.j = srem i64 %.sroa.0.0.i.i13.i, 86400       ; 3 uses
  %.lobit.i.i.i15.i = ashr i64 %i.j, 63
  %.sroa.0.0.i.i.i16.i = add nsw i64 %.lobit.i.i.i15.i, %i.i ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %i.l = select i1 %i.k, i64 86400, i64 0
  %spec.select.i.i.i17.i = add nsw i64 %i.l, %i.j
  %i.m = add nsw i64 %.sroa.0.0.i.i.i16.i, -2146764485
  %or.cond.i.i18.i = icmp ult i64 %i.m, -4294967296
  br i1 %or.cond.i.i18.i, label %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = trunc i64 %.sroa.0.0.i.i.i16.i to i32
  %i.o = add i32 %i.n, 719163
  %i.p = invoke noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.o)
          to label %.noexc22.i unwind label %bb.d, !noalias !687

.noexc22.i:                                       ; preds = %bb.b
  %.not.i.i19.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i19.i, label %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i, label %bb.c

bb.c:                                             ; preds = %.noexc22.i
  %i.q = trunc nuw nsw i64 %spec.select.i.i.i17.i to i32
  br label %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %.body unwind label %bb.e, !noalias !687

_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i: ; preds = %bb.a, %.noexc22.i, %bb.c
  %.sroa.7.0 = phi i32 [ %i.h, %bb.c ], [ undef, %.noexc22.i ], [ undef, %bb.a ]
  %.sroa.5.0 = phi i32 [ %i.q, %bb.c ], [ undef, %.noexc22.i ], [ undef, %bb.a ]
  %.not = phi i1 [ false, %bb.c ], [ true, %.noexc22.i ], [ true, %bb.a ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !687
  unreachable

bb.f:                                             ; preds = %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.r, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !687
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0, ptr %i.v, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi i32 [ 1, %bb.h ], [ 0, %bb.g ]
  store i32 %storemerge, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types8Int8TypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 2, i64 24, i1 false)
  store i32 0, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types9Int16TypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 3, i64 24, i1 false)
  store i32 0, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types9Int32TypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 4, i64 24, i1 false)
  store i32 0, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types9Int64TypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 5, i64 24, i1 false)
  store i32 0, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types9UInt8TypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 6, i64 24, i1 false)
  store i32 0, ptr %0, align 4
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeANtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeaturej1_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !690, !alias.scope !691, !noundef !3
  %i.b = icmp slt i64 %i.a, -9223372036854775783
  br i1 %i.b, label %.split8.us, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
end_hunk_3
begin_hunk_4_@_RNvMs2_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayNtB5_11ScanContext8error_or:bb.a
bb.a:
  %.sroa.0.sroa.0 = alloca [112 x i8], align 8    ; 5 uses
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [88 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = load i64, ptr %i.g, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMse_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB6_22DataFusionErrorBuilder8error_oruECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerEEB1p_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #50
          to label %.body unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !range !35, !noundef !3
  %.not = icmp eq i64 %i.j, 20
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBY_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBY_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerEEB1p_.exit unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %.sroa.0.sroa.0.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.88..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0.sroa.0, i64 112, i1 false)
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.body:                                            ; preds = %bb.j, %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.n, %bb.j ], [ %i.l, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.d) #50
          to label %common.resume unwind label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerEEB1p_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerEEB1p_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.k ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20ScanFileContextInnerEEB1p_.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
  br label %bb.i

bb.m:                                             ; preds = %.body, %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3newCs14kWLkQVSKO_14deltalake_core() unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMNtNtCskQDtHcQtBkN_5tokio4task8join_setINtB2_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3newCs14kWLkQVSKO_14deltalake_core()
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCshmPyUV8PP35_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = sdiv i64 %1, 86400
  %i.b = srem i64 %1, 86400                       ; 3 uses
  %.lobit.i = ashr i64 %i.b, 63
  %.sroa.0.0.i = add nsw i64 %.lobit.i, %i.a      ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  %i.d = select i1 %i.c, i64 86400, i64 0
  %spec.select.i = add nsw i64 %i.d, %i.b
  %i.e = add nsw i64 %.sroa.0.0.i, -2146764485
  %or.cond = icmp ult i64 %i.e, -4294967296
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i64 %.sroa.0.0.i to i32
  %i.g = add i32 %i.f, 719163
  %i.h = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.g) ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = trunc nuw nsw i64 %spec.select.i to i32  ; 2 uses
  %i.j = icmp ugt i32 %2, 1999999999
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  store i32 0, ptr %0, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.g, %bb.d
  store i32 0, ptr %0, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.k = icmp samesign ult i32 %2, 1000000000
  %i.l = urem i32 %i.i, 60
  %i.m = icmp eq i32 %i.l, 59
  %or.cond3 = or i1 %i.k, %i.m
  br i1 %or.cond3, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  store i32 %i.h, ptr %0, align 4
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %.sroa.48.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.h, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB4_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1Y_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBe_6errors15DeltaTableErrorENtNtB1Y_6marker4SendEL_EEE3newBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %5, ptr noundef nonnull %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  %.sroa.15 = alloca [17 x i8], align 8           ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1S_yEEE3newB8_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef 100)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.f, %bb.c ]
  %.sroa.01.0 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB3B_(ptr nonnull %6, ptr nonnull %7) #50
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %i.h = load ptr, ptr %3, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1072
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !32581
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 1116
  %i.r = load <4 x i32>, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(17) %i.s, i64 17, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 1112
  %i.u = load <2 x i16>, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 1132
  %i.w = load i32, ptr %i.v, align 4, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 1096
  %i.y = load <4 x i32>, ptr %i.x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %2, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <4 x i32> %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i16> %i.u, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <4 x i32> %i.r, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.w, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15, i64 17, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ac, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %5, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %6, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %7, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.n, %bb.f, %bb.b, %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6stream21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2t_yEEEEBP_(ptr noalias noundef align 8 dereferenceable(32) %i.c) #50
          to label %bb.b unwind label %bb.j

bb.k:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef align 8 dereferenceable(40) %4) #50
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  br i1 %.sroa.01.0, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit9

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit9: ; preds = %bb.m, %bb.n, %bb.l
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !32586)
  call void @llvm.experimental.noalias.scope.decl(metadata !32589)
  %i.an = load ptr, ptr %i.d, align 8, !alias.scope !32592, !nonnull !3, !noundef !3
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !32592
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit9

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit9 unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files17df_logical_schema(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [128 x i8], align 8               ; 6 uses
  %i.i = alloca [128 x i8], align 8               ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [112 x i8], align 8               ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [96 x i8], align 8            ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.r = tail call noundef nonnull ptr @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtNtB7_6kernel8snapshot13EagerSnapshotNtB5_16DataFusionMixins12input_schema(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 3 uses
  store ptr %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  store ptr %i.ab, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB2B_6filter6FilterINtNtNtB2F_5slice4iter4IterB11_ENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files17df_logical_schema0EEE9from_iterB4r_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.d unwind label %bb.c

.body.thread46:                                   ; preds = %bb.al, %.body, %.body.thread, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body45, %.body.thread ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.ag, %bb.c ], [ %i.cz, %bb.al ]
  call void @llvm.experimental.noalias.scope.decl(metadata !32593)
  call void @llvm.experimental.noalias.scope.decl(metadata !32596)
  %i.ad = load ptr, ptr %i.q, align 8, !alias.scope !32599, !nonnull !3, !noundef !3
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !32599
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %.body.thread46
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread46

bb.d:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 696
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 704
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !3 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ak, 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx
end_hunk_4
