Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.000?download=true
inline.NumInlined: 16983
inline.NumDeleted: 10604
begin_hunk_0_@_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_states0_1__NtB3a_12ReplicaStateNtB22_11Deserialize11deserialize9___VisitorECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 11, ptr %i.c, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @613, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @220)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 11, ptr %i.b, align 8
  %i.j = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @613, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @220)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  br label %bb.d

bb.h:                                             ; preds = %bb.e, %bb.f
  %.sink = phi ptr [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.n, align 8
  store i8 1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_enumQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5, ptr noundef nonnull %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = load i8, ptr %1, align 8, !range !10, !noundef !11
  switch i8 %i.d, label %bb.b [
    i8 12, label %bb.d
    i8 13, label %bb.d
    i8 21, label %bb.c
  ], !prof !53

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtNtCs5pRimKDHYSy_5serde7private2de7content18content_unexpected(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @615, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @220)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  switch i64 %i.h, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.g
  ], !prof !48

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.g
  %.sroa.09.0 = phi ptr [ %i.m, %bb.g ], [ null, %bb.a ], [ null, %bb.a ]
  %.sroa.03.0 = phi ptr [ %i.l, %bb.g ], [ %1, %bb.a ], [ %1, %bb.a ]
  tail call void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor10visit_enumINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content19EnumRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.03.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.09.0)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 11, ptr %i.c, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @613, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @220)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 11, ptr %i.b, align 8
  %i.j = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @613, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @220)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  br label %bb.d

bb.h:                                             ; preds = %bb.e, %bb.f
  %.sink = phi ptr [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_unitQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8
  %i.c = load i8, ptr %1, align 8, !range !10, !noundef !11
  %i.d = icmp eq i8 %i.c, 18
  br i1 %i.d, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor10visit_unitNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorE12invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer17deserialize_bytesINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtB3b_4UuidEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = load i8, ptr %1, align 8, !range !10, !noundef !11
  switch i8 %i.d, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.d
    i8 14, label %bb.e
    i8 15, label %bb.f
    i8 20, label %bb.g
  ], !prof !54

bb.b:                                             ; preds = %bb.a
  %i.e = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorE12invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @751)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i8 1, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !11
  tail call void @_RINvYINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtBa_4UuidENtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_strNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !11
  tail call void @_RINvYINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtBa_4UuidENtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_strNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !noundef !11
  tail call void @_RINvXs5_NtNtCs4R3jSB693Zs_4uuid8external13serde_supportINtB6_16UuidBytesVisitorNtBa_4UuidENtNtCs4NSHK7GLW4I_10serde_core2de7Visitor11visit_bytesNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !11, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !11
  tail call void @_RINvXs5_NtNtCs4R3jSB693Zs_4uuid8external13serde_supportINtB6_16UuidBytesVisitorNtBa_4UuidENtNtCs4NSHK7GLW4I_10serde_core2de7Visitor11visit_bytesNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.v)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7870)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7871
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.z
  store ptr %i.x, ptr %i.c, align 8, !noalias !7871
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !7871
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !noalias !7871
  call void @_RINvYINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtBa_4UuidENtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_seqQINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content18SeqRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.ad = load i8, ptr %0, align 8, !range !43, !alias.scope !7870, !noundef !11
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtB1f_4UuidENtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !noalias !7871, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %i.ab, align 8, !noalias !7871, !nonnull !11, !noundef !11 ; 2 uses
  %i.af = icmp eq ptr %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.af, label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtB1f_4UuidENtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.sink.split, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %.sroa.5.0.copyload.i = load i64, ptr %i.ac, align 8, !noalias !7871 ; 2 uses
  %i.ag = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.ah = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.ai = sub nuw i64 %i.ah, %i.ag
  %i.aj = lshr exact i64 %i.ai, 5
  %i.ak = add i64 %.sroa.5.0.copyload.i, %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7872
  store i64 %.sroa.5.0.copyload.i, ptr %i.b, align 8, !noalias !7872
  %i.al = call noundef nonnull align 8 ptr @_RNvYNtNtCs8O45qwFIwQX_10serde_json5error5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error14invalid_lengthCsl8OoimOLbh_6qdrant(i64 noundef %i.ak, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1107), !noalias !7873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7872
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !7870
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtB1f_4UuidENtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.sink.split

_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtB1f_4UuidENtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.sink.split: ; preds = %bb.h, %bb.i
  %.sink = phi i8 [ 1, %bb.i ], [ 0, %bb.h ]
  store i8 %.sink, ptr %0, align 8, !alias.scope !7870
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtB1f_4UuidENtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtB1f_4UuidENtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtB1f_4UuidENtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit.sink.split, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7871
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refINtNtNtCs4R3jSB693Zs_4uuid8external13serde_support16UuidBytesVisitorNtB1f_4UuidENtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer17deserialize_bytesQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8
  %i.c = load i8, ptr %1, align 8, !range !10, !noundef !11
  switch i8 %i.c, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.d
    i8 14, label %bb.e
    i8 15, label %bb.f
    i8 20, label %bb.g
  ], !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorE12invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !11
  tail call void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_strNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !11
  tail call void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor18visit_borrowed_strNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !11, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !11
  tail call void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor11visit_bytesNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !11
  tail call void @_RINvXs8_NtCs3cfoFdbzKJ1_12erased_serde2deQDNtB6_7VisitorEL_NtNtCs4NSHK7GLW4I_10serde_core2de7Visitor20visit_borrowed_bytesNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !11, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !11
  tail call fastcc void @_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer17deserialize_tupleQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8, !noalias !7880
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.b, align 8, !noalias !7880
  %i.c = load i8, ptr %1, align 8, !range !10, !alias.scope !7879, !noundef !11
  %i.d = icmp eq i8 %i.c, 20
  br i1 %i.d, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !7879, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7879, !noundef !11
  tail call fastcc void @_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %4), !noalias !7879
  br label %_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.a
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorE12invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !noalias !7878
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !7878
  store ptr null, ptr %0, align 8, !alias.scope !7878
  br label %_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant.exit

_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqQDNtNtCs3cfoFdbzKJ1_12erased_serde2de7VisitorEL_ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer18deserialize_optionINtNtB22_5impls13OptionVisitorINtCs3EstPQUvMw7_13ordered_float12OrderedFloatdEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !10, !noundef !11 ; 2 uses
  switch i8 %i.b, label %bb.b [
    i8 16, label %bb.o
    i8 17, label %bb.p
    i8 18, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7904)
  switch i8 %i.b, label %bb.m [
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
  ], !prof !12

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !7905, !noundef !11
  %i.e = uitofp i8 %i.d to double
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2, !alias.scope !7905, !noundef !11
  %i.h = uitofp i16 %i.g to double
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !7905, !noundef !11
  %i.k = uitofp i32 %i.j to double
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !7905, !noundef !11
  %i.n = uitofp i64 %i.m to double
  br label %bb.n

bb.g:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !7905, !noundef !11
  %i.q = sitofp i8 %i.p to double
  br label %bb.n

bb.h:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i16, ptr %i.r, align 2, !alias.scope !7905, !noundef !11
  %i.t = sitofp i16 %i.s to double
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !7905, !noundef !11
  %i.w = sitofp i32 %i.v to double
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !7905, !noundef !11
  %i.z = sitofp i64 %i.y to double
  br label %bb.n

bb.k:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !alias.scope !7905, !noundef !11 ; 2 uses
  %i.ac = bitcast float %i.ab to i32
  %.not.i.i.i.i = icmp sgt i32 %i.ac, -1
  %..i.i.i.i = select i1 %.not.i.i.i.i, double 1.000000e+00, double -1.000000e+00
  %i.ad = fpext float %i.ab to double
  %i.ae = tail call double @llvm.copysign.f64(double %i.ad, double %..i.i.i.i)
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load double, ptr %i.af, align 8, !alias.scope !7905, !noundef !11
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorE12invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2), !noalias !7906
end_hunk_0
begin_hunk_1_@_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorECsl8OoimOLbh_6qdrant:bb.a

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.x, align 8, !alias.scope !22849
  %.sroa.41.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %.sroa.41.0..sroa_idx.i3, align 8, !alias.scope !22849
  store i64 0, ptr %0, align 8, !alias.scope !22849
  br label %bb.ah

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.z = load i8, ptr %i.y, align 1, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.aa, align 8, !alias.scope !22850
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.z, ptr %.sroa.4.0..sroa_idx.i4, align 1, !alias.scope !22850
  store i64 0, ptr %0, align 8, !alias.scope !22850
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.ad, align 8, !alias.scope !22851
  %.sroa.41.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.ac, ptr %.sroa.41.0..sroa_idx.i5, align 2, !alias.scope !22851
  store i64 0, ptr %0, align 8, !alias.scope !22851
  br label %bb.ah

bb.i:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !noundef !11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 7, ptr %i.ag, align 8, !alias.scope !22852
  %.sroa.41.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.af, ptr %.sroa.41.0..sroa_idx.i6, align 4, !alias.scope !22852
  store i64 0, ptr %0, align 8, !alias.scope !22852
  br label %bb.ah

bb.j:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 8, ptr %i.aj, align 8, !alias.scope !22853
  %.sroa.41.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.41.0..sroa_idx.i7, align 8, !alias.scope !22853
  store i64 0, ptr %0, align 8, !alias.scope !22853
  br label %bb.ah

bb.k:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load float, ptr %i.ak, align 4, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 9, ptr %i.am, align 8, !alias.scope !22854
  %.sroa.41.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.al, ptr %.sroa.41.0..sroa_idx.i8, align 4, !alias.scope !22854
  store i64 0, ptr %0, align 8, !alias.scope !22854
  br label %bb.ah

bb.l:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load double, ptr %i.an, align 8, !noundef !11
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.ap, align 8, !alias.scope !22855
  %.sroa.41.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ao, ptr %.sroa.41.0..sroa_idx.i9, align 8, !alias.scope !22855
  store i64 0, ptr %0, align 8, !alias.scope !22855
  br label %bb.ah

bb.m:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !range !49, !noundef !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.as, align 8, !alias.scope !22856
  %.sroa.41.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ar, ptr %.sroa.41.0..sroa_idx.i10, align 4, !alias.scope !22856
  store i64 0, ptr %0, align 8, !alias.scope !22856
  br label %bb.ah

bb.n:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !11, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_strNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.aw)
  br label %bb.ah

bb.o:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_strNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef %i.ba)
  br label %bb.ah

bb.p:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !11, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor11visit_bytesNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.be)
  br label %bb.ah

bb.q:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !11, !noundef !11
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor11visit_bytesNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef range(i64 0, -9223372036854775808) %i.bi)
  br label %bb.ah

bb.r:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 14, ptr %i.bj, align 8, !alias.scope !22857
  %.sroa.41.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.41.0..sroa_idx.i11, align 8, !alias.scope !22857
  store i64 0, ptr %0, align 8, !alias.scope !22857
  br label %bb.ah

bb.s:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !11, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor10visit_someINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bl)
  br label %bb.ah

bb.t:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.bm, align 8, !alias.scope !22858
  store i64 0, ptr %0, align 8, !alias.scope !22858
  br label %bb.ah

bb.u:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !11, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor20visit_newtype_structINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo)
  br label %bb.ah

bb.v:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22859)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22860
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.bs
  store ptr %i.bq, ptr %i.h, align 8, !noalias !22860
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !noalias !22860
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.bv, align 8, !noalias !22860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22860
  call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_seqQINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content18SeqRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  %i.bw = load i64, ptr %0, align 8, !range !21, !alias.scope !22859, !noundef !11
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false), !noalias !22861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22860
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !22860, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %i.bu, align 8, !noalias !22860, !nonnull !11, !noundef !11 ; 2 uses
  %i.bz = icmp eq ptr %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.bz, label %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.x, !prof !14

bb.x:                                             ; preds = %bb.w
  %.sroa.5.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !22860 ; 2 uses
  %i.ca = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.cb = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.cc = sub nuw i64 %i.cb, %i.ca
  %i.cd = lshr exact i64 %i.cc, 5
  %i.ce = add i64 %.sroa.5.0.copyload.i, %i.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22862
  store i64 %.sroa.5.0.copyload.i, ptr %i.e, align 8, !noalias !22862
  invoke void @_RNvYNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error14invalid_lengthCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, i64 noundef %i.ce, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1107)
          to label %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i unwind label %bb.y, !noalias !22859

bb.y:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsadazKHFPhDw_11serde_value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #24
          to label %common.resume unwind label %bb.aa, !noalias !22859

_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22862
  %.pr.i = load i64, ptr %i.f, align 8, !noalias !22860
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !22861
  store i64 1, ptr %0, align 8, !alias.scope !22859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22860
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsadazKHFPhDw_11serde_value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g), !noalias !22859
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22860
  store i64 0, ptr %0, align 8, !alias.scope !22859
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.aa:                                            ; preds = %bb.y
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !22859
  unreachable

common.resume:                                    ; preds = %bb.ae, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.y ], [ %i.cy, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.v, %bb.z, %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !22860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22860
  br label %bb.ah

bb.ab:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22863)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22864
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.ci, i64 %i.ck
  store ptr %i.ci, ptr %i.d, align 8, !noalias !22864
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !noalias !22864
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false), !noalias !22864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22864
  call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_mapQINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content18MapRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.co = load i64, ptr %0, align 8, !range !21, !alias.scope !22863, !noundef !11
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_map_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i64 32, i1 false), !noalias !22865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22864
  %.sroa.0.0.copyload.i12 = load ptr, ptr %i.d, align 8, !noalias !22864, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.4.0.copyload.i13 = load ptr, ptr %i.cm, align 8, !noalias !22864, !nonnull !11, !noundef !11 ; 2 uses
  %i.cr = icmp eq ptr %.sroa.4.0.copyload.i13, %.sroa.0.0.copyload.i12
  br i1 %i.cr, label %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.51.0.copyload.i = load i64, ptr %i.cs, align 8, !noalias !22864 ; 2 uses
  %i.ct = ptrtoint ptr %.sroa.0.0.copyload.i12 to i64
  %i.cu = ptrtoint ptr %.sroa.4.0.copyload.i13 to i64
  %i.cv = sub nuw i64 %i.cu, %i.ct
  %i.cw = lshr exact i64 %i.cv, 6
  %i.cx = add i64 %.sroa.51.0.copyload.i, %i.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22866
  store i64 %.sroa.51.0.copyload.i, ptr %i.a, align 8, !noalias !22866
  invoke void @_RNvYNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error14invalid_lengthCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.cx, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1108)
          to label %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i unwind label %bb.ae, !noalias !22863

bb.ae:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsadazKHFPhDw_11serde_value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #24
          to label %common.resume unwind label %bb.ag, !noalias !22863

_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22866
  %.pr.i14 = load i64, ptr %i.b, align 8, !noalias !22864
  %.not.i15 = icmp eq i64 %.pr.i14, -1
  br i1 %.not.i15, label %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !22865
  store i64 1, ptr %0, align 8, !alias.scope !22863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22864
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsadazKHFPhDw_11serde_value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c), !noalias !22863
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_map_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22864
  store i64 0, ptr %0, align 8, !alias.scope !22863
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_map_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !22863
  unreachable

_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_map_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ab, %bb.af, %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22864
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_map_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit, %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB39_5ValueNtB22_11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.8 = alloca [64 x i8], align 8            ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i = alloca i32, align 4                ; 14 uses
  %i.n = alloca [72 x i8], align 8                ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.ah, %bb.a
  %.tr44 = phi ptr [ %1, %bb.a ], [ %i.cy, %bb.ah ] ; 27 uses
  %i.o = load i8, ptr %.tr44, align 8, !range !10, !noundef !11
  switch i8 %i.o, label %default.unreachable117 [
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
    i8 11, label %bb.o
    i8 12, label %bb.w
    i8 13, label %bb.aa
    i8 14, label %bb.ae
    i8 15, label %bb.af
    i8 16, label %bb.ag
    i8 17, label %bb.ah
    i8 18, label %bb.ai
    i8 19, label %bb.aj
    i8 20, label %bb.ak
    i8 21, label %bb.ba
  ]

default.unreachable117:                           ; preds = %tailrecurse
  unreachable

bb.b:                                             ; preds = %tailrecurse
  %i.p = getelementptr inbounds nuw i8, ptr %.tr44, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !43, !noundef !11
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !22926
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !22926
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %tailrecurse
  %i.r = getelementptr inbounds nuw i8, ptr %.tr44, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_u8NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i8 noundef %i.s)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %tailrecurse
  %i.t = getelementptr inbounds nuw i8, ptr %.tr44, i64 2
  %i.u = load i16, ptr %i.t, align 2, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u16NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i16 noundef %i.u)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %tailrecurse
  %i.v = getelementptr inbounds nuw i8, ptr %.tr44, i64 4
  %i.w = load i32, ptr %i.v, align 4, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u32NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i32 noundef %i.w)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %tailrecurse
  %i.x = getelementptr inbounds nuw i8, ptr %.tr44, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !11
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !22927
  %.sroa.4.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i1, align 8, !alias.scope !22927
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !22927
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %tailrecurse
  %i.z = getelementptr inbounds nuw i8, ptr %.tr44, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_i8NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i8 noundef %i.aa)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %tailrecurse
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr44, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i16NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i16 noundef %i.ac)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %tailrecurse
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr44, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i32NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i32 noundef %i.ae)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %tailrecurse
  %i.af = getelementptr inbounds nuw i8, ptr %.tr44, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !11 ; 2 uses
  %.lobit.i = lshr i64 %i.ag, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !22928
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.0..sroa_idx.i2, align 8, !alias.scope !22928
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i3, align 8, !alias.scope !22928
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %tailrecurse
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr44, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_f32NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, float noundef %i.ai)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %tailrecurse
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr44, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22929)
  %i.al = tail call double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp ueq double %i.al, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !22929
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.sroa.0.0.copyload8.i = load i64, ptr %.sroa.5.0..sroa_idx4.i, align 8, !alias.scope !22930, !noalias !22929
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5.sroa.5.0.copyload9.i = load double, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !22930, !noalias !22929
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.n:                                             ; preds = %bb.l
  store i64 -9223372036854775808, ptr %i.n, align 8, !noalias !22929
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22931)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n), !noalias !22932
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.m, %bb.n
  %.sroa.5.sroa.5.0.i = phi double [ %.sroa.5.sroa.5.0.copyload9.i, %bb.m ], [ %i.ak, %bb.n ]
  %.sroa.5.sroa.0.0.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i, %bb.m ], [ 2, %bb.n ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775808, %bb.m ], [ -9223372036854775806, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !22929
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !22929
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !22929
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !22929
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.o:                                             ; preds = %tailrecurse
  %i.an = getelementptr inbounds nuw i8, ptr %.tr44, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !range !49, !noundef !11 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22933)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i32 0, ptr %.sroa.0.i, align 4, !noalias !22933
  %i.ap = icmp samesign ult i32 %i.ao, 128
  br i1 %i.ap, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = icmp samesign ult i32 %i.ao, 2048
  %i.ar = trunc i32 %i.ao to i8
  %i.as = and i8 %i.ar, 63
  %i.at = or disjoint i8 %i.as, -128              ; 3 uses
  %i.au = lshr i32 %i.ao, 6
  %i.av = trunc i32 %i.au to i8                   ; 2 uses
  %i.aw = and i8 %i.av, 63
  %i.ax = or disjoint i8 %i.aw, -128              ; 2 uses
  %i.ay = lshr i32 %i.ao, 12
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %i.ba = and i8 %i.az, 63
  %i.bb = or disjoint i8 %i.ba, -128
  %i.bc = lshr i32 %i.ao, 18
  %i.bd = trunc nuw nsw i32 %i.bc to i8
  %i.be = or disjoint i8 %i.bd, -16
  br i1 %i.aq, label %bb.r, label %bb.s
end_hunk_1
begin_hunk_2_@_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorECsl8OoimOLbh_6qdrant:bb.a

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.x, align 8, !alias.scope !30528
  %.sroa.41.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %.sroa.41.0..sroa_idx.i3, align 8, !alias.scope !30528
  store i64 0, ptr %0, align 8, !alias.scope !30528
  br label %bb.ah

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.z = load i8, ptr %i.y, align 1, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.aa, align 8, !alias.scope !30529
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.z, ptr %.sroa.4.0..sroa_idx.i4, align 1, !alias.scope !30529
  store i64 0, ptr %0, align 8, !alias.scope !30529
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.ad, align 8, !alias.scope !30530
  %.sroa.41.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.ac, ptr %.sroa.41.0..sroa_idx.i5, align 2, !alias.scope !30530
  store i64 0, ptr %0, align 8, !alias.scope !30530
  br label %bb.ah

bb.i:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !noundef !11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 7, ptr %i.ag, align 8, !alias.scope !30531
  %.sroa.41.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.af, ptr %.sroa.41.0..sroa_idx.i6, align 4, !alias.scope !30531
  store i64 0, ptr %0, align 8, !alias.scope !30531
  br label %bb.ah

bb.j:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 8, ptr %i.aj, align 8, !alias.scope !30532
  %.sroa.41.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.41.0..sroa_idx.i7, align 8, !alias.scope !30532
  store i64 0, ptr %0, align 8, !alias.scope !30532
  br label %bb.ah

bb.k:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load float, ptr %i.ak, align 4, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 9, ptr %i.am, align 8, !alias.scope !30533
  %.sroa.41.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.al, ptr %.sroa.41.0..sroa_idx.i8, align 4, !alias.scope !30533
  store i64 0, ptr %0, align 8, !alias.scope !30533
  br label %bb.ah

bb.l:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load double, ptr %i.an, align 8, !noundef !11
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.ap, align 8, !alias.scope !30534
  %.sroa.41.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ao, ptr %.sroa.41.0..sroa_idx.i9, align 8, !alias.scope !30534
  store i64 0, ptr %0, align 8, !alias.scope !30534
  br label %bb.ah

bb.m:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !range !49, !noundef !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.as, align 8, !alias.scope !30535
  %.sroa.41.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ar, ptr %.sroa.41.0..sroa_idx.i10, align 4, !alias.scope !30535
  store i64 0, ptr %0, align 8, !alias.scope !30535
  br label %bb.ah

bb.n:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !11, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_strNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.aw)
  br label %bb.ah

bb.o:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_strNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef %i.ba)
  br label %bb.ah

bb.p:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !11, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor11visit_bytesNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.be)
  br label %bb.ah

bb.q:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !11, !noundef !11
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor11visit_bytesNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef range(i64 0, -9223372036854775808) %i.bi)
  br label %bb.ah

bb.r:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 14, ptr %i.bj, align 8, !alias.scope !30536
  %.sroa.41.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.41.0..sroa_idx.i11, align 8, !alias.scope !30536
  store i64 0, ptr %0, align 8, !alias.scope !30536
  br label %bb.ah

bb.s:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !11, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor10visit_someINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bl)
  br label %bb.ah

bb.t:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.bm, align 8, !alias.scope !30537
  store i64 0, ptr %0, align 8, !alias.scope !30537
  br label %bb.ah

bb.u:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !11, !noundef !11
  tail call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor20visit_newtype_structINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo)
  br label %bb.ah

bb.v:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !30539
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.bs
  store ptr %i.bq, ptr %i.h, align 8, !noalias !30539
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !noalias !30539
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.bv, align 8, !noalias !30539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30539
  call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_seqQINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content18SeqRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  %i.bw = load i64, ptr %0, align 8, !range !21, !alias.scope !30538, !noundef !11
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false), !noalias !30540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30539
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !30539, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %i.bu, align 8, !noalias !30539, !nonnull !11, !noundef !11 ; 2 uses
  %i.bz = icmp eq ptr %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.bz, label %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.x, !prof !14

bb.x:                                             ; preds = %bb.w
  %.sroa.5.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !30539 ; 2 uses
  %i.ca = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.cb = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.cc = sub nuw i64 %i.cb, %i.ca
  %i.cd = lshr exact i64 %i.cc, 5
  %i.ce = add i64 %.sroa.5.0.copyload.i, %i.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30541
  store i64 %.sroa.5.0.copyload.i, ptr %i.e, align 8, !noalias !30541
  invoke void @_RNvYNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error14invalid_lengthCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, i64 noundef %i.ce, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1107)
          to label %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i unwind label %bb.y, !noalias !30538

bb.y:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsadazKHFPhDw_11serde_value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #24
          to label %common.resume unwind label %bb.aa, !noalias !30538

_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30541
  %.pr.i = load i8, ptr %i.f, align 8, !noalias !30539
  %.not.i = icmp eq i8 %.pr.i, -1
  br i1 %.not.i, label %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !30540
  store i64 1, ptr %0, align 8, !alias.scope !30538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30539
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsadazKHFPhDw_11serde_value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g), !noalias !30538
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30539
  store i64 0, ptr %0, align 8, !alias.scope !30538
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.aa:                                            ; preds = %bb.y
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !30538
  unreachable

common.resume:                                    ; preds = %bb.ae, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.y ], [ %i.cy, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.v, %bb.z, %_RNvMsc_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30539
  br label %bb.ah

bb.ab:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30542)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30543
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.ci, i64 %i.ck
  store ptr %i.ci, ptr %i.d, align 8, !noalias !30543
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !noalias !30543
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false), !noalias !30543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30543
  call void @_RINvXs5_NtCsadazKHFPhDw_11serde_value2deNtB6_12ValueVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_mapQINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content18MapRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.co = load i64, ptr %0, align 8, !range !21, !alias.scope !30542, !noundef !11
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_map_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i64 32, i1 false), !noalias !30544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30543
  %.sroa.0.0.copyload.i12 = load ptr, ptr %i.d, align 8, !noalias !30543, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.4.0.copyload.i13 = load ptr, ptr %i.cm, align 8, !noalias !30543, !nonnull !11, !noundef !11 ; 2 uses
  %i.cr = icmp eq ptr %.sroa.4.0.copyload.i13, %.sroa.0.0.copyload.i12
  br i1 %i.cr, label %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.51.0.copyload.i = load i64, ptr %i.cs, align 8, !noalias !30543 ; 2 uses
  %i.ct = ptrtoint ptr %.sroa.0.0.copyload.i12 to i64
  %i.cu = ptrtoint ptr %.sroa.4.0.copyload.i13 to i64
  %i.cv = sub nuw i64 %i.cu, %i.ct
  %i.cw = lshr exact i64 %i.cv, 6
  %i.cx = add i64 %.sroa.51.0.copyload.i, %i.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30545
  store i64 %.sroa.51.0.copyload.i, ptr %i.a, align 8, !noalias !30545
  invoke void @_RNvYNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error14invalid_lengthCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.cx, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1108)
          to label %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i unwind label %bb.ae, !noalias !30542

bb.ae:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsadazKHFPhDw_11serde_value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #24
          to label %common.resume unwind label %bb.ag, !noalias !30542

_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30545
  %.pr.i14 = load i8, ptr %i.b, align 8, !noalias !30543
  %.not.i15 = icmp eq i8 %.pr.i14, -1
  br i1 %.not.i15, label %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !30544
  store i64 1, ptr %0, align 8, !alias.scope !30542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30543
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsadazKHFPhDw_11serde_value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c), !noalias !30542
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_map_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30543
  store i64 0, ptr %0, align 8, !alias.scope !30542
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_map_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !30542
  unreachable

_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_map_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ab, %bb.af, %_RNvMse_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorE3endCsl8OoimOLbh_6qdrant.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30543
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_map_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit, %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNtCsadazKHFPhDw_11serde_value2de12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB38_5ValueNtB21_11Deserialize11deserialize12ValueVisitorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.8 = alloca [64 x i8], align 8            ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i = alloca i32, align 4                ; 14 uses
  %i.n = alloca [72 x i8], align 8                ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.ah, %bb.a
  %.tr44 = phi ptr [ %1, %bb.a ], [ %i.cy, %bb.ah ] ; 27 uses
  %i.o = load i8, ptr %.tr44, align 8, !range !10, !noundef !11
  switch i8 %i.o, label %default.unreachable117 [
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
    i8 11, label %bb.o
    i8 12, label %bb.w
    i8 13, label %bb.aa
    i8 14, label %bb.ae
    i8 15, label %bb.af
    i8 16, label %bb.ag
    i8 17, label %bb.ah
    i8 18, label %bb.ai
    i8 19, label %bb.aj
    i8 20, label %bb.ak
    i8 21, label %bb.ba
  ]

default.unreachable117:                           ; preds = %tailrecurse
  unreachable

bb.b:                                             ; preds = %tailrecurse
  %i.p = getelementptr inbounds nuw i8, ptr %.tr44, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !43, !noundef !11
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !30605
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !30605
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %tailrecurse
  %i.r = getelementptr inbounds nuw i8, ptr %.tr44, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_u8NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i8 noundef %i.s)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %tailrecurse
  %i.t = getelementptr inbounds nuw i8, ptr %.tr44, i64 2
  %i.u = load i16, ptr %i.t, align 2, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u16NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i16 noundef %i.u)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %tailrecurse
  %i.v = getelementptr inbounds nuw i8, ptr %.tr44, i64 4
  %i.w = load i32, ptr %i.v, align 4, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u32NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i32 noundef %i.w)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %tailrecurse
  %i.x = getelementptr inbounds nuw i8, ptr %.tr44, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !11
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !30606
  %.sroa.4.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i1, align 8, !alias.scope !30606
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !30606
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %tailrecurse
  %i.z = getelementptr inbounds nuw i8, ptr %.tr44, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_i8NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i8 noundef %i.aa)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %tailrecurse
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr44, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i16NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i16 noundef %i.ac)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %tailrecurse
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr44, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i32NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, i32 noundef %i.ae)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %tailrecurse
  %i.af = getelementptr inbounds nuw i8, ptr %.tr44, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !11 ; 2 uses
  %.lobit.i = lshr i64 %i.ag, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !30607
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.0..sroa_idx.i2, align 8, !alias.scope !30607
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i3, align 8, !alias.scope !30607
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %tailrecurse
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr44, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !noundef !11
  tail call void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_f32NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, float noundef %i.ai)
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %tailrecurse
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr44, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30608)
  %i.al = tail call double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp ueq double %i.al, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !30608
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.sroa.0.0.copyload8.i = load i64, ptr %.sroa.5.0..sroa_idx4.i, align 8, !alias.scope !30609, !noalias !30608
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5.sroa.5.0.copyload9.i = load double, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !30609, !noalias !30608
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.n:                                             ; preds = %bb.l
  store i64 -9223372036854775808, ptr %i.n, align 8, !noalias !30608
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30610)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n), !noalias !30611
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.m, %bb.n
  %.sroa.5.sroa.5.0.i = phi double [ %.sroa.5.sroa.5.0.copyload9.i, %bb.m ], [ %i.ak, %bb.n ]
  %.sroa.5.sroa.0.0.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i, %bb.m ], [ 2, %bb.n ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775808, %bb.m ], [ -9223372036854775806, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !30608
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !30608
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !30608
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !30608
  br label %_RINvNtNtNtCs5pRimKDHYSy_5serde7private2de7content21visit_content_seq_refNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB1f_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant.exit

bb.o:                                             ; preds = %tailrecurse
  %i.an = getelementptr inbounds nuw i8, ptr %.tr44, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !range !49, !noundef !11 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30612)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i32 0, ptr %.sroa.0.i, align 4, !noalias !30612
  %i.ap = icmp samesign ult i32 %i.ao, 128
  br i1 %i.ap, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = icmp samesign ult i32 %i.ao, 2048
  %i.ar = trunc i32 %i.ao to i8
  %i.as = and i8 %i.ar, 63
  %i.at = or disjoint i8 %i.as, -128              ; 3 uses
  %i.au = lshr i32 %i.ao, 6
  %i.av = trunc i32 %i.au to i8                   ; 2 uses
  %i.aw = and i8 %i.av, 63
  %i.ax = or disjoint i8 %i.aw, -128              ; 2 uses
  %i.ay = lshr i32 %i.ao, 12
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %i.ba = and i8 %i.az, 63
  %i.bb = or disjoint i8 %i.ba, -128
  %i.bc = lshr i32 %i.ao, 18
  %i.bd = trunc nuw nsw i32 %i.bc to i8
  %i.be = or disjoint i8 %i.bd, -16
  br i1 %i.aq, label %bb.r, label %bb.s
end_hunk_2
begin_hunk_3_@_RINvXsj_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor11visit_bytesNtNtCs3cfoFdbzKJ1_12erased_serde5error5ErrorECsl8OoimOLbh_6qdrant:bb.a
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i8 14, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor11visit_bytesNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !21, !noundef !11
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !50, !noundef !11 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.i = icmp samesign ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 14, ptr %i.j, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor11visit_bytesNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !21, !noundef !11
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !50, !noundef !11 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.i = icmp samesign ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 14, ptr %i.j, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor20visit_newtype_structINtNtCsadazKHFPhDw_11serde_value2de17ValueDeserializerNtB2e_17DeserializerErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  tail call void @_RINvYINtNtCsadazKHFPhDw_11serde_value2de17ValueDeserializerNtB6_17DeserializerErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.b = load i64, ptr %0, align 8, !range !35, !noundef !11
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !39814
  %i.d = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #23, !noalias !39814 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentE3newCsl8OoimOLbh_6qdrant.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #24
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentE3newCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i8 19, ptr %i.c, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.41.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentE3newCsl8OoimOLbh_6qdrant.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor20visit_newtype_structINtNtCsb3nlOWP6RTB_9rmp_serde6decode15ExtDeserializerINtB2e_13ReadRefReaderShENtNtB2g_6config13DefaultConfigEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  tail call void @_RINvYINtNtCsb3nlOWP6RTB_9rmp_serde6decode15ExtDeserializerINtB6_13ReadRefReaderShENtNtB8_6config13DefaultConfigENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %1)
  %i.b = load i64, ptr %0, align 8, !range !21, !noundef !11
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !39817
  %i.e = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #23, !noalias !39817 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentE3newCsl8OoimOLbh_6qdrant.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #24
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentE3newCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i8 19, ptr %i.d, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.41.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentE3newCsl8OoimOLbh_6qdrant.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor20visit_newtype_structQDNtNtCs3cfoFdbzKJ1_12erased_serde2de12DeserializerEL_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  tail call void @_RINvYQDNtNtCs3cfoFdbzKJ1_12erased_serde2de12DeserializerEL_NtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs5pRimKDHYSy_5serde7private2de7content14ContentVisitorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %2)
  %i.b = load i8, ptr %0, align 8, !range !26, !noundef !11
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !39820
  %i.d = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #23, !noalias !39820 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentE3newCsl8OoimOLbh_6qdrant.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #24
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentE3newCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i8 19, ptr %0, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.41.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentE3newCsl8OoimOLbh_6qdrant.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs4NSHK7GLW4I_10serde_core2de7Visitor9visit_mapINtB8_13FlatMapAccessNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6 = alloca [48 x i8], align 8            ; 7 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.46 = alloca [31 x i8], align 1           ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.9 = alloca [7 x i8], align 1             ; 2 uses
  %.sroa.13 = alloca [48 x i8], align 8           ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64)
  %i.g = load i64, ptr %i.d, align 8, !range !21, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !50, !noundef !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.j, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.o, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.sroa.6.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.r, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvXs7_NtNtCs5pRimKDHYSy_5serde7private2deINtB6_13FlatMapAccessNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess13next_key_seedNtNtB6_7content14ContentVisitorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %i.p = load i8, ptr %i.c, align 8, !range !115, !noalias !39827, !noundef !11 ; 2 uses
  switch i8 %i.p, label %bb.f [
    i8 -2, label %bb.e
    i8 -1, label %.thread22
  ]

bb.e:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !39827, !nonnull !11, !align !30, !noundef !11
  br label %.thread

.thread22:                                        ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit27

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39827
  store i8 %i.p, ptr %i.b, align 8, !noalias !39827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx.i, i64 31, i1 false), !noalias !39827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39827
  invoke void @_RINvXs7_NtNtCs5pRimKDHYSy_5serde7private2deINtB6_13FlatMapAccessNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedNtNtB6_7content14ContentVisitorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.h unwind label %bb.g, !noalias !39828

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #24
          to label %.body unwind label %bb.j, !noalias !39828

bb.h:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.a, align 8, !range !26, !noalias !39827, !noundef !11
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !39827, !nonnull !11, !align !30, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39827
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39827
  br label %.thread

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !39828
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.i
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.ae, %bb.p ], [ %lpad.loopexit.split-lp37, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentB19_EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #24
          to label %common.resume unwind label %bb.t

.thread:                                          ; preds = %bb.e, %.noexc10
  %.sroa.10.0.ph = phi ptr [ %i.w, %.noexc10 ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit26

bb.k:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !39827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39827
  %.sroa.013.0.copyload = load i8, ptr %i.b, align 8, !noalias !39827 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, i64 7, i1 false)
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !39827 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false), !noalias !39827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39827
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  switch i8 %.sroa.013.0.copyload, label %bb.n [
    i8 -2, label %.loopexit26
    i8 -1, label %.loopexit27
  ]

.loopexit26:                                      ; preds = %bb.k, %.thread
  %.sroa.10.016 = phi ptr [ %.sroa.10.0.ph, %.thread ], [ %.sroa.5.0.copyload, %bb.k ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.016, ptr %i.y, align 8
  store i8 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentB19_EEECsl8OoimOLbh_6qdrant.exit unwind label %bb.l

end_hunk_3
