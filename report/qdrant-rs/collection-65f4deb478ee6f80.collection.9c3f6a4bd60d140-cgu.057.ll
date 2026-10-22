Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.057?download=true
inline.NumInlined: 407
inline.NumDeleted: 200
begin_hunk_0_@_RINvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtB5_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB27_4read7StrReadEEB7_:bb.a

bb.i:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !279
  call void @_RINvXse_NtCs8O45qwFIwQX_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtB37_14ShardingMethodNtB1n_11Deserialize11deserialize7___FieldEEB39_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !280
  %i.z = load i8, ptr %i.b, align 8, !range !11, !noalias !279, !noundef !6
  switch i8 %i.z, label %bb.k [
    i8 2, label %bb.j
    i8 0, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !279, !nonnull !6, !align !12, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !280
  br label %_RINvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtBb_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor10visit_enumINtNtCs8O45qwFIwQX_10serde_json2de17UnitVariantAccessNtNtB2S_4read7StrReadEEBd_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ad, align 1, !alias.scope !280
  br label %_RINvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtBb_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor10visit_enumINtNtCs8O45qwFIwQX_10serde_json2de17UnitVariantAccessNtNtB2S_4read7StrReadEEBd_.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ae, align 1, !alias.scope !280
  br label %_RINvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtBb_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor10visit_enumINtNtCs8O45qwFIwQX_10serde_json2de17UnitVariantAccessNtNtB2S_4read7StrReadEEBd_.exit.i

_RINvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtBb_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor10visit_enumINtNtCs8O45qwFIwQX_10serde_json2de17UnitVariantAccessNtNtB2S_4read7StrReadEEBd_.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %.sink.i.i = phi i8 [ 0, %bb.k ], [ 0, %bb.l ], [ 1, %bb.j ]
  store i8 %.sink.i.i, ptr %0, align 8, !alias.scope !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !279
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtB2r_14ShardingMethodNtB1j_11Deserialize11deserialize9___VisitorEB2t_.exit

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !276
  store i64 24, ptr %i.h, align 8, !noalias !276
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !276
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !281, !noundef !6
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !alias.scope !281
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !283
  call void @_RINvXsb_NtCs8O45qwFIwQX_10serde_json2deINtB6_13VariantAccessNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtB33_14ShardingMethodNtB1j_11Deserialize11deserialize7___FieldEEB35_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !284
  %i.aj = load i8, ptr %i.a, align 8, !range !11, !noalias !283, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !283, !nonnull !6, !align !12, !noundef !6 ; 3 uses
  switch i8 %i.aj, label %bb.o [
    i8 2, label %_RINvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtBb_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor10visit_enumINtNtCs8O45qwFIwQX_10serde_json2de13VariantAccessNtNtB2S_4read7StrReadEEBd_.exit.thread.i
    i8 0, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.am = call noundef align 8 ptr @_RNvXsc_NtCs8O45qwFIwQX_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.al), !noalias !284 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.am, null
  br i1 %.not6.i.i, label %bb.r, label %_RINvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtBb_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor10visit_enumINtNtCs8O45qwFIwQX_10serde_json2de13VariantAccessNtNtB2S_4read7StrReadEEBd_.exit.thread.i

bb.p:                                             ; preds = %bb.n
  %i.an = call noundef align 8 ptr @_RNvXsc_NtCs8O45qwFIwQX_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.al), !noalias !284 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.r, label %_RINvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtBb_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor10visit_enumINtNtCs8O45qwFIwQX_10serde_json2de13VariantAccessNtNtB2S_4read7StrReadEEBd_.exit.thread.i

_RINvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtBb_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor10visit_enumINtNtCs8O45qwFIwQX_10serde_json2de13VariantAccessNtNtB2S_4read7StrReadEEBd_.exit.thread.i: ; preds = %bb.p, %bb.o, %bb.n
  %.sink8.i.sink.i = phi ptr [ %i.al, %bb.n ], [ %i.am, %bb.o ], [ %i.an, %bb.p ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink8.i.sink.i, ptr %i.ao, align 8, !alias.scope !284
  store i8 1, ptr %0, align 8, !alias.scope !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  %i.ap = load i8, ptr %i.v, align 8, !alias.scope !275, !noundef !6
  %i.aq = add i8 %i.ap, 1
  store i8 %i.aq, ptr %i.v, align 8, !alias.scope !275
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtB2r_14ShardingMethodNtB1j_11Deserialize11deserialize9___VisitorEB2t_.exit

bb.q:                                             ; preds = %bb.m, %bb.b
  %.sink5.i = phi ptr [ %i.af, %bb.m ], [ %i.m, %bb.b ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink5.i, ptr %i.ar, align 8, !alias.scope !274
  store i8 1, ptr %0, align 8, !alias.scope !274
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtB2r_14ShardingMethodNtB1j_11Deserialize11deserialize9___VisitorEB2t_.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %.sink7.i = phi i8 [ 0, %bb.p ], [ 1, %bb.o ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink7.i, ptr %i.as, align 1, !alias.scope !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  %i.at = load i8, ptr %i.v, align 8, !alias.scope !275, !noundef !6
  %i.au = add i8 %i.at, 1
  store i8 %i.au, ptr %i.v, align 8, !alias.scope !275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !276
  call void @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !274
  %i.av = load i8, ptr %i.g, align 8, !range !19, !noalias !276, !noundef !6
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !276, !nonnull !6, !align !12, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !alias.scope !274
  store i8 1, ptr %0, align 8, !alias.scope !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !276
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtB2r_14ShardingMethodNtB1j_11Deserialize11deserialize9___VisitorEB2t_.exit

bb.t:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !range !19, !noalias !276, !noundef !6
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.u, label %bb.v, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.be = load i8, ptr %i.bd, align 2, !noalias !276
  %i.bf = icmp eq i8 %i.be, 125
  br i1 %i.bf, label %bb.w, label %bb.x, !prof !20

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !276
  store i64 3, ptr %i.e, align 8, !noalias !276
  %i.bg = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !276
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !alias.scope !274
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bi = load i64, ptr %i.ag, align 8, !alias.scope !285, !noundef !6
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.ag, align 8, !alias.scope !285
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !276
  store i64 10, ptr %i.f, align 8, !noalias !276
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8O45qwFIwQX_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !276
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !alias.scope !274
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.sink9.i = phi i8 [ 1, %bb.v ], [ 1, %bb.x ], [ 0, %bb.w ]
  store i8 %.sink9.i, ptr %0, align 8, !alias.scope !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !276
  br label %_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtB2r_14ShardingMethodNtB1j_11Deserialize11deserialize9___VisitorEB2t_.exit

_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtB2r_14ShardingMethodNtB1j_11Deserialize11deserialize9___VisitorEB2t_.exit: ; preds = %bb.f, %_RINvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtBb_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor10visit_enumINtNtCs8O45qwFIwQX_10serde_json2de17UnitVariantAccessNtNtB2S_4read7StrReadEEBd_.exit.i, %_RINvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtBb_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor10visit_enumINtNtCs8O45qwFIwQX_10serde_json2de13VariantAccessNtNtB2S_4read7StrReadEEBd_.exit.thread.i, %bb.q, %bb.s, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !276
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCsPYQCUnoTxQ_10collection6configs2_1__NtB5_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !19, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvNtCs8O45qwFIwQX_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 4, 7) 6) ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsPYQCUnoTxQ_10collection.exit, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsPYQCUnoTxQ_10collection.exit.sink.split, !prof !20

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvNtCs8O45qwFIwQX_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 4, 7) 4) ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsPYQCUnoTxQ_10collection.exit, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsPYQCUnoTxQ_10collection.exit.sink.split, !prof !20

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsPYQCUnoTxQ_10collection.exit.sink.split: ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink)
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsPYQCUnoTxQ_10collection.exit

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsPYQCUnoTxQ_10collection.exit: ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsPYQCUnoTxQ_10collection.exit.sink.split, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.f, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsPYQCUnoTxQ_10collection.exit.sink.split ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCsPYQCUnoTxQ_10collection6configs4_1__NtB5_16CollectionParamsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB29_4read7StrReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsPYQCUnoTxQ_10collection6configs4_1__NtB2t_16CollectionParamsNtB1j_11Deserialize11deserialize9___VisitorEB2v_(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @20, i64 noundef 10)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCsPYQCUnoTxQ_10collection6configs5_1__NtB5_16CollectionParamsNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !range !11, !noundef !6
  %.not = icmp eq i8 %i.c, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !range !21, !noundef !6
  %2 = trunc nuw i32 %i.e to i1
  %i.f = load i64, ptr %0, align 8, !range !5, !noundef !6
  %3 = trunc nuw i64 %i.f to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2, !range !22, !noundef !6
  %.not56.a = icmp eq i8 %i.h, -2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !5, !noundef !6
  %4 = trunc nuw i64 %i.j to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !294, !nonnull !6, !align !12, !noundef !6
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 1), !noalias !295
  store ptr %1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCsPYQCUnoTxQ_10collection10operations5types13VectorsConfigEB2T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.l) ; 2 uses
  %.not58.a = icmp eq ptr %i.m, null
  br i1 %.not58.a, label %bb.b, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n) ; 2 uses
  %.not59.a = icmp eq ptr %i.o, null
  br i1 %.not59.a, label %bb.c, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsPYQCUnoTxQ_10collection6config14ShardingMethodEEB3t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b) ; 2 uses
  %.not61.a = icmp eq ptr %i.p, null
  br i1 %.not61.a, label %bb.e, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.r = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.q) ; 2 uses
  %.not62.a = icmp eq ptr %i.r, null
  br i1 %.not62.a, label %bb.f, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.s) ; 2 uses
  %.not63.a = icmp eq ptr %i.t, null
  br i1 %.not63.a, label %bb.g, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.g:                                             ; preds = %bb.f
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionmEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d) ; 2 uses
  %.not65.a = icmp eq ptr %i.u, null
  br i1 %.not65.a, label %bb.i, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.i:                                             ; preds = %bb.g, %bb.h
  br i1 %3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionyEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 2 uses
  %.not67 = icmp eq ptr %i.v, null
  br i1 %.not67, label %bb.k, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 189
  %i.x = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionbEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.w) ; 2 uses
  %.not68 = icmp eq ptr %i.x, null
  br i1 %.not68, label %bb.l, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.l:                                             ; preds = %bb.k
  br i1 %.not56.a, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsPYQCUnoTxQ_10collection6config20PayloadStorageParamsEEB3t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.g) ; 2 uses
  %.not70 = icmp eq ptr %i.y, null
  br i1 %.not70, label %bb.n, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.n:                                             ; preds = %bb.l, %bb.m
  br i1 %4, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtNtBR_11collections5btree3map8BTreeMapNtNtBR_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEEB4y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i) ; 2 uses
  %.not72 = icmp eq ptr %i.z, null
  br i1 %.not72, label %bb.p, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.aa = load i8, ptr %i.k, align 8, !range !11, !noundef !6
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load ptr, ptr %i.a, align 8, !nonnull !6, !align !12, !noundef !6
  %.val = load ptr, ptr %i.ac, align 8, !nonnull !6, !noundef !6
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 1)
  br label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.q, %bb.p, %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o
  %.sroa.0.0 = phi ptr [ %i.x, %bb.k ], [ %i.z, %bb.o ], [ %i.y, %bb.m ], [ %i.m, %bb.a ], [ %i.o, %bb.b ], [ %i.p, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %i.u, %bb.h ], [ %i.v, %bb.j ], [ null, %bb.p ], [ null, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCsPYQCUnoTxQ_10collection6configs7_1__NtB5_20PayloadStorageParamsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsPYQCUnoTxQ_10collection6configs7_1__NtB2t_20PayloadStorageParamsNtB1j_11Deserialize11deserialize9___VisitorEB2v_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @23, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCsPYQCUnoTxQ_10collection6configs8_1__NtB5_20PayloadStorageParamsNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !range !23, !noundef !6
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %.thread18, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !310, !nonnull !6, !align !12, !noundef !6
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 1), !noalias !311
  store ptr %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.c, align 8
  %i.d = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types6MemoryEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0) ; 2 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.c, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

.thread18:                                        ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %.val.i.i14 = load ptr, ptr %1, align 8, !alias.scope !314, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 1), !noalias !315
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 1), !noalias !315
  br label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.c:                                             ; preds = %bb.b
  %.pr = load i8, ptr %i.c, align 8
  %i.e = icmp eq i8 %.pr, 0
  br i1 %i.e, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !6, !align !12, !noundef !6
  %.val = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 1)
  br label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.d, %bb.c, %.thread18, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %.thread18 ], [ null, %bb.c ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCsPYQCUnoTxQ_10collection6configs_1__NtB5_9WalConfigNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !324, !nonnull !6, !align !12, !noundef !6
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 1), !noalias !325
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.b, align 8
  %i.c = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryejECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryejECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d) ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.c, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryejECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 17, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) ; 2 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %bb.d, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.b, align 8, !range !11, !noundef !6
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !nonnull !6, !align !12, !noundef !6
  %.val = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 1)
  br label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit

_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.c, %bb.a ], [ %i.g, %bb.c ], [ %i.e, %bb.b ], [ null, %bb.d ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCsPYQCUnoTxQ_10collection6configsa_1__NtB5_24CollectionConfigInternalNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB2h_4read7StrReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([776 x i8]) align 8 captures(none) dereferenceable(776) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsPYQCUnoTxQ_10collection6configsa_1__NtB2t_24CollectionConfigInternalNtB1j_11Deserialize11deserialize9___VisitorEB2v_(ptr noalias nofree noundef nonnull sret([776 x i8]) align 8 captures(none) dereferenceable(776) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @33, i64 noundef 8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtB8_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  switch i64 %2, label %bb.e [
    i64 4, label %bb.b
    i64 6, label %bb.d
  ], !prof !326

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1869903201
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.e, align 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 1
  %i.g = xor i32 %i.f, 1953723747
  %i.h = getelementptr i8, ptr %1, i64 4
  %i.i = load i16, ptr %i.h, align 1
  %i.j = zext i16 %i.i to i32
  %i.k = xor i32 %i.j, 28015
  %i.l = or i32 %i.g, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %i.p = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8O45qwFIwQX_10serde_json5error5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15unknown_variantCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @8, i64 noundef 2)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.r, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 0, %bb.c ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvXNvNtCsPYQCUnoTxQ_10collection6configs4_1__NtB8_16CollectionParamsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1b_7Visitor9visit_strNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  switch i64 %2, label %bb.l [
    i64 7, label %bb.b
    i64 12, label %bb.c
    i64 15, label %bb.d
    i64 18, label %bb.e
    i64 24, label %bb.f
    i64 19, label %bb.g
    i64 21, label %bb.h
    i64 14, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = xor i32 %i.a, 1952671094
  %i.c = getelementptr i8, ptr %1, i64 3
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1936879476
  %i.f = or i32 %i.b, %i.e
  %i.g = icmp ne i32 %i.f, 0
end_hunk_0
begin_hunk_1_@_RNvXNvNtCsPYQCUnoTxQ_10collection6configs9_1__NtB4_20PayloadStorageParamsNtCscr48XpBcNGU_8schemars10JsonSchema11json_schema:bb.a

bb.q:                                             ; preds = %.body, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvNtCsPYQCUnoTxQ_10collection6configs9_1__NtB4_20PayloadStorageParamsNtCscr48XpBcNGU_8schemars10JsonSchema11schema_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !7, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 19
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.h, ptr noundef nonnull align 1 dereferenceable(20) @21, i64 20, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCsPYQCUnoTxQ_10collection6config1__NtB7_9WalConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBZ_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtB7_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB18_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCsPYQCUnoTxQ_10collection6configs4_1__NtB7_16CollectionParamsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1a_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCsPYQCUnoTxQ_10collection6configs7_1__NtB7_20PayloadStorageParamsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1e_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCsPYQCUnoTxQ_10collection6configsa_1__NtB7_24CollectionConfigInternalNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1i_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6config1__NtBa_9WalConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB12_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs1_1__NtBa_14ShardingMethodNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1b_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs4_1__NtBa_16CollectionParamsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1d_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 23)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configs7_1__NtBa_20PayloadStorageParamsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1h_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 27)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsPYQCUnoTxQ_10collection6configsa_1__NtBa_24CollectionConfigInternalNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1l_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 31)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCsPYQCUnoTxQ_10collection10operations11conversionsNtNtB9_6config20PayloadStorageParamsINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant20PayloadStorageParamsE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i32 noundef range(i32 0, 2) %1, i32 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions25convert_memory_from_proto(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, i32 noundef %1, i32 %2)
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !12, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !23, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtNtB9_6config16CollectionParamsINtB5_10DiffConfigNtB5_20CollectionParamsDiffE6update(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [80 x i8], align 8          ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [80 x i8], align 8            ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.f = load <2 x i32>, ptr %i.d, align 8        ; 2 uses
  %i.g = load <2 x i32>, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i32, ptr %i.h, align 8, !range !21, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.k = load i32, ptr %i.j, align 8, !range !21, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.val = load i32, ptr %i.m, align 4
  %.val34 = load i32, ptr %i.l, align 4
  %i.n = load i64, ptr %2, align 8, !range !5, !noundef !6 ; 2 uses
  %i.o = load i64, ptr %1, align 8, !range !5, !noundef !6
  %i.p = trunc nuw i64 %i.n to i1
  %.pn = select i1 %i.p, ptr %2, ptr %1
  %.sroa.39.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.39.0 = load i64, ptr %.sroa.39.0.in, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load i8, ptr %i.q, align 8, !range !11, !noundef !6 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 189
  %i.t = load i8, ptr %i.s, align 1, !range !11, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 190
  %i.v = load i8, ptr %i.u, align 2, !range !22, !noundef !6 ; 3 uses
  %.not29 = icmp eq i8 %i.v, -2
  %i.w = load i8, ptr %i.c, align 1, !range !22, !noundef !6 ; 4 uses
  %.not31 = icmp eq i8 %i.w, -2                   ; 2 uses
  br i1 %.not29, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not31, label %.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not31, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.b, %bb.c
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i8 %i.w, -1
  %spec.store.select = select i1 %.not32, i8 %i.v, i8 %i.w
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c, %bb.d
  %.sroa.019.1 = phi i8 [ %spec.store.select, %bb.d ], [ %i.v, %.thread ], [ %i.w, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.y = load i32, ptr %i.x, align 8, !range !29, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.aa = load i8, ptr %i.z, align 4, !range !11, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !5, !noundef !6
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ag = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]      ; 2 uses
  store i64 %i.ag, ptr %i.b, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !range !28, !noundef !6 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %bb.u unwind label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.am = load i64, ptr %i.al, align 8, !range !25, !alias.scope !546, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 158
  %i.ao = load i8, ptr %i.an, align 2, !range !27, !alias.scope !546, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.not.i = icmp eq i64 %i.ai, 2
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i, i64 80, i1 false), !noalias !547
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aq = load i32, ptr %i.ap, align 8, !range !26, !alias.scope !546, !noundef !6 ; 3 uses
  %.not29.i = icmp eq i32 %i.aq, -1
  br i1 %.not29.i, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %narrow33.i = call i32 @llvm.usub.sat.i32(i32 %i.aq, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 4 uses
  switch i32 %narrow33.i, label %default.unreachable [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
  ]

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !546
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.au = load i16, ptr %i.at, align 8, !alias.scope !546
  %i.av = zext i16 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 32
  %.sroa.424.sroa.0.0.insert.ext.i = zext i32 %i.as to i64
  %.sroa.424.sroa.0.0.insert.insert.i = or disjoint i64 %i.aw, %.sroa.424.sroa.0.0.insert.ext.i
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %.sroa.7.0.copyload18.i = load i64, ptr %i.ar, align 4, !alias.scope !546
  br label %bb.s

bb.o:                                             ; preds = %bb.l
  %.sroa.7.0.copyload20.i = load i64, ptr %i.ar, align 4, !alias.scope !546
  br label %bb.s

bb.p:                                             ; preds = %bb.l
  %.sroa.7.0.copyload22.i = load i64, ptr %i.ar, align 4, !alias.scope !546
  br label %bb.s

bb.q:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %3 = trunc nuw i64 %i.ag to i1
  br i1 %3, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEEB2o_.exit

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEEB2o_.exit unwind label %bb.v

bb.s:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.k
  %.sroa.55.0.i = phi i64 [ undef, %bb.k ], [ %.sroa.424.sroa.0.0.insert.insert.i, %bb.m ], [ %.sroa.7.0.copyload18.i, %bb.n ], [ %.sroa.7.0.copyload20.i, %bb.o ], [ %.sroa.7.0.copyload22.i, %bb.p ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 157
  %i.ba = load i8, ptr %i.az, align 1, !range !11, !alias.scope !546, !noundef !6
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 159
  %i.bc = load i8, ptr %i.bb, align 1, !range !23, !alias.scope !546, !noundef !6
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.be = load i8, ptr %i.bd, align 8, !range !24, !alias.scope !546, !noundef !6
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.bg = load i8, ptr %i.bf, align 4, !range !19, !alias.scope !546, !noundef !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.i, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.6.sroa.11.0 = phi i8 [ undef, %bb.u ], [ %i.be, %bb.s ]
  %.sroa.6.sroa.10.0 = phi i8 [ undef, %bb.u ], [ %i.bc, %bb.s ]
  %.sroa.6.sroa.9.0 = phi i8 [ undef, %bb.u ], [ %i.ao, %bb.s ]
  %.sroa.6.sroa.8.0 = phi i8 [ undef, %bb.u ], [ %i.ba, %bb.s ]
  %.sroa.6.sroa.7.0 = phi i8 [ undef, %bb.u ], [ %i.bg, %bb.s ]
  %.sroa.6.sroa.6.0 = phi i64 [ undef, %bb.u ], [ %.sroa.55.0.i, %bb.s ]
  %.sroa.6.sroa.5.0 = phi i32 [ undef, %bb.u ], [ %i.aq, %bb.s ]
  %.sroa.6.sroa.4.0 = phi i64 [ undef, %bb.u ], [ %i.am, %bb.s ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 24
  %.sroa.08.0 = or i64 %i.o, %i.n
  %i.bi = trunc nuw i32 %i.i to i1
  %.sroa.3.0 = select i1 %i.bi, i32 %.val, i32 %.val34
  %.sroa.07.0 = or i32 %i.k, %i.i
  %i.bj = icmp eq <2 x i32> %i.f, zeroinitializer
  %.not28 = icmp eq i8 %i.r, 2
  %spec.store.select1 = select i1 %.not28, i8 %i.t, i8 %i.r
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ai, ptr %i.bk, align 8
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 56, i1 false)
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.6.sroa.4.0, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx23.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.sroa.6.sroa.5.0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx23.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i64 %.sroa.6.sroa.6.0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx23.sroa_idx, align 4
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %.sroa.6.sroa.7.0, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx23.sroa_idx, align 4
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 %.sroa.6.sroa.8.0, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx23.sroa_idx, align 1
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 158
  store i8 %.sroa.6.sroa.9.0, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx23.sroa_idx, align 2
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 159
  store i8 %.sroa.6.sroa.10.0, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx23.sroa_idx, align 1
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx23.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %.sroa.6.sroa.11.0, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx23.sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.y, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i8 %i.aa, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bo = select <2 x i1> %i.bj, <2 x i32> %i.g, <2 x i32> %i.f
  store <2 x i32> %i.bo, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %.sroa.07.0, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %.sroa.3.0, ptr %i.bq, align 4
  store i64 %.sroa.08.0, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.39.0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 189
  store i8 %spec.store.select1, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i8 %.sroa.019.1, ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.u:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.v:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEEB2o_.exit: ; preds = %bb.q, %bb.r
  resume { ptr, i32 } %i.ax
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCsPYQCUnoTxQ_10collection6configNtB5_9WalConfigNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs6_NtCsPYQCUnoTxQ_10collection6configNtB5_9WalConfigNtNtCs1cB7FFWPEsq_9validator6traits12ValidateArgs18validate_with_args(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCsPYQCUnoTxQ_10collection6configNtB5_9WalConfigNtNtCs1cB7FFWPEsq_9validator6traits12ValidateArgs18validate_with_args(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 7 uses
  %i.e = alloca [96 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [96 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs0_NtCs1cB7FFWPEsq_9validator5typesNtB5_16ValidationErrors3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i)
  %i.j = invoke noundef zeroext i1 @_RNvYjINtNtNtCs1cB7FFWPEsq_9validator10validation5range13ValidateRangejE14validate_rangeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef 1, i64 1, i64 noundef 0, i64 undef, i64 noundef 0, i64 undef, i64 noundef 0, i64 undef)
          to label %bb.c unwind label %bb.o

bb.b:                                             ; preds = %bb.o, %bb.t, %bb.j
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm9, %bb.t ], [ %lpad.thr_comm.split-lp10, %bb.o ], [ %lpad.thr_comm, %bb.j ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsECsPYQCUnoTxQ_10collection.exit unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCs1cB7FFWPEsq_9validator5typesNtB2_15ValidationError3new(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 5)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @84, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 3, ptr %i.l, align 8
  store i64 -1, ptr %i.g, align 8
  invoke void @_RINvMNtCs1cB7FFWPEsq_9validator5typesNtB3_15ValidationError9add_paramlECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @85)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @86, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 5, ptr %i.n, align 8
  store i64 -1, ptr %i.f, align 8
  invoke void @_RINvMNtCs1cB7FFWPEsq_9validator5typesNtB3_15ValidationError9add_paramjECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  invoke void @_RNvMs0_NtCs1cB7FFWPEsq_9validator5typesNtB5_16ValidationErrors3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.e)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = invoke noundef zeroext i1 @_RNvYjINtNtNtCs1cB7FFWPEsq_9validator10validation5range13ValidateRangejE14validate_rangeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, i64 noundef 1, i64 1, i64 noundef 0, i64 undef, i64 noundef 0, i64 undef, i64 noundef 0, i64 undef)
          to label %bb.l unwind label %bb.o

bb.j:                                             ; preds = %bb.f, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1cB7FFWPEsq_9validator5types15ValidationErrorECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96) %i.h) #19
          to label %bb.b unwind label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.t, %bb.j
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.l:                                             ; preds = %bb.i
  br i1 %i.p, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCs1cB7FFWPEsq_9validator5typesNtB2_15ValidationError3new(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @84, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 3, ptr %i.s, align 8
  store i64 -1, ptr %i.c, align 8
  invoke void @_RINvMNtCs1cB7FFWPEsq_9validator5typesNtB3_15ValidationError9add_paramlECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @85)
end_hunk_1
