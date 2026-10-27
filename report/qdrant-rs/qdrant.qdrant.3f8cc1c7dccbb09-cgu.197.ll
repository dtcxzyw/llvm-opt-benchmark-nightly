Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.197?download=true
inline.NumInlined: 234
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsS_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtB5_22QuantizationConfigDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq:bb.a

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !range !21, !alias.scope !1079, !noundef !6 ; 2 uses
  %.not9.i = icmp eq i8 %i.bo, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bq = load i8, ptr %i.bp, align 1, !range !21, !alias.scope !1080, !noundef !6 ; 2 uses
  br i1 %.not9.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.br = icmp eq i8 %i.bo, %i.bq
  br label %_RNvXs5s_NtCs607s0NAIaWN_7segment5typesNtB6_24ScalarQuantizationConfigNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i8 %i.bq, -1
  br label %_RNvXs5s_NtCs607s0NAIaWN_7segment5typesNtB6_24ScalarQuantizationConfigNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.bv = load i8, ptr %i.bt, align 4, !range !19, !alias.scope !1081, !noundef !6 ; 2 uses
  %.not.i6 = icmp eq i8 %i.bv, 2
  %i.bw = load i8, ptr %i.bu, align 4, !range !19, !alias.scope !1082, !noundef !6 ; 2 uses
  br i1 %.not.i6, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = icmp eq i8 %i.bv, %i.bw
  br i1 %i.bx, label %bb.ai, label %_RNvXs5s_NtCs607s0NAIaWN_7segment5typesNtB6_24ScalarQuantizationConfigNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.af
  %i.by = icmp eq i8 %i.bw, 2
  br i1 %i.by, label %bb.ai, label %_RNvXs5s_NtCs607s0NAIaWN_7segment5typesNtB6_24ScalarQuantizationConfigNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ca = load i8, ptr %i.bz, align 1, !range !20, !alias.scope !1081, !noundef !6 ; 2 uses
  %.not4.i8 = icmp eq i8 %i.ca, -1
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.cc = load i8, ptr %i.cb, align 1, !range !20, !alias.scope !1082, !noundef !6 ; 2 uses
  br i1 %.not4.i8, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cd = icmp eq i8 %i.ca, %i.cc
  br i1 %i.cd, label %bb.al, label %_RNvXs5s_NtCs607s0NAIaWN_7segment5typesNtB6_24ScalarQuantizationConfigNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ce = icmp eq i8 %i.cc, -1
  br i1 %i.ce, label %bb.al, label %_RNvXs5s_NtCs607s0NAIaWN_7segment5typesNtB6_24ScalarQuantizationConfigNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.cg = load i8, ptr %i.cf, align 2, !range !21, !alias.scope !1081, !noundef !6 ; 2 uses
  %.not6.i = icmp eq i8 %i.cg, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ci = load i8, ptr %i.ch, align 2, !range !21, !alias.scope !1082, !noundef !6 ; 2 uses
  br i1 %.not6.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cj = icmp eq i8 %i.cg, %i.ci
  br label %_RNvXs5s_NtCs607s0NAIaWN_7segment5typesNtB6_24ScalarQuantizationConfigNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.al
  %i.ck = icmp eq i8 %i.ci, -1
  br label %_RNvXs5s_NtCs607s0NAIaWN_7segment5typesNtB6_24ScalarQuantizationConfigNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs4NSHK7GLW4I_10serde_core2deNtNvXs_NtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17raw_vectors_serdeNtBG_7ByteVecNtB4_11Deserialize11deserialize14ByteVecVisitorNtB4_8Expected3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXs_NtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17raw_vectors_serdeNtB7_7ByteVecNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB2_14ByteVecVisitorNtB1r_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer24serialize_struct_variantCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 20)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i32 noundef range(i32 1, 8) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 7, 22) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.j = load i8, ptr %i.i, align 1, !range !12, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 1)
  %i.l = load i64, ptr %i.h, align 8, !range !9, !noundef !6
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1105
  store i8 -95, ptr %i.c, align 1, !noalias !1105
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1105
  %i.m = load i64, ptr %i.d, align 8, !range !9, !noalias !1105, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.t

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !12, !noundef !6
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.o, label %bb.i

bb.g:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1105
  store i64 %i.m, ptr %0, align 8
  br label %bb.t

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1105
  br label %bb.f

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1108
  %i.q = trunc nuw nsw i64 %4 to i32
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i8 noundef 3, i32 noundef %i.q) #22, !noalias !1109
  %i.r = load i64, ptr %i.f, align 8, !range !9, !noalias !1108, !noundef !6
  %.not.i = icmp eq i64 %i.r, -1
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1108
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1108
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !1107
  %i.s = load i64, ptr %i.e, align 8, !range !9, !noalias !1108, !noundef !6
  %.not1.i = icmp eq i64 %i.s, -1
  br i1 %.not1.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !1110
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i64 -1, ptr %i.g, align 8, !alias.scope !1107
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1108
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit

bb.o:                                             ; preds = %bb.f
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i8 noundef 0, i32 noundef %2) #22
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.n, %bb.j, %bb.o
  %i.t = load i64, ptr %i.g, align 8, !range !9, !noundef !6
  %.not2 = icmp eq i64 %i.t, -1
  br i1 %.not2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.q:                                             ; preds = %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1111
  store i8 -94, ptr %i.a, align 1, !noalias !1111
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1111
  %i.u = load i64, ptr %i.b, align 8, !range !9, !noalias !1111, !noundef !6 ; 2 uses
  %.not.i.i.i4 = icmp eq i64 %i.u, -1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i.i4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.713.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.713.0..sroa_idx14, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1111
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1111
  store ptr %1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.w, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.s
  %.sink = phi i64 [ -1, %bb.s ], [ %i.u, %bb.r ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.d, %bb.g, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsl8OoimOLbh_6qdrant5actix3api9debug_apiNtB4_22update_debugger_configNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [168 x i8], align 8               ; 4 uses
  %i.e = alloca [168 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCsgoPClq0H8JF_9actix_web8resourceNtB3_8Resource3newReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 9)
  call void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 8, i64 24, i1 false)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource5guardNtNtB7_5guard11MethodGuardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource2toNvNvXs_NtNtNtCsl8OoimOLbh_6qdrant5actix3api9debug_apiNtB12_22update_debugger_configNtNtB7_7service18HttpServiceFactory8register22update_debugger_configTNtNtB16_4auth9ActixAuthINtNtB7_4data4DataNtNtNtB18_6common8debugger13DebuggerStateEINtNtNtB7_5types4json4JsonNtB44_16DebugConfigPatchEEEB18_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8ResourceNtNtB7_7service18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsea_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.a, -1
  %i.b = load i64, ptr %1, align 8, !range !7, !noundef !6
  %i.c = icmp eq i64 %i.b, -1                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %.split, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs607s0NAIaWN_7segment5types9ConditionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.l, ptr noundef nonnull %i.j, i64 noundef %i.e)
  br i1 %i.m, label %bb.e, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %.split, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !range !7, !noundef !6
  %.not7 = icmp eq i64 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !range !7, !noundef !6
  %i.r = icmp eq i64 %i.q, -1                     ; 2 uses
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.r, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.j, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1116, !noundef !6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1117, !noundef !6
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.i, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1117, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1116, !nonnull !6, !noundef !6
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs607s0NAIaWN_7segment5types9ConditionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t), !noalias !1118
  br i1 %i.ab, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1116, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1117, !noundef !6
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.j, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.j:                                             ; preds = %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !range !7, !noundef !6
  %.not9 = icmp eq i64 %i.ai, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !range !7, !noundef !6
  %i.al = icmp eq i64 %i.ak, -1                   ; 2 uses
  br i1 %.not9, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.al, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.m

bb.l:                                             ; preds = %bb.j
  br i1 %i.al, label %bb.n, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load i64, ptr %i.am, align 8, !noundef !6 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !6
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %.split14, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split14:                                         ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !6, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !6, !noundef !6
  %i.av = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs607s0NAIaWN_7segment5types9ConditionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.au, ptr noundef nonnull %i.as, i64 noundef %i.an)
  br i1 %i.av, label %bb.n, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %.split14, %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load i64, ptr %i.aw, align 8, !range !7, !noundef !6 ; 2 uses
  %.not11 = icmp eq i64 %i.ax, -1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.az = load i64, ptr %i.ay, align 8, !range !7, !noundef !6 ; 2 uses
  %i.ba = icmp eq i64 %i.az, -1
  %brmerge = or i1 %.not11, %i.ba
  %i.bb = and i64 %i.ax, %i.az
  %.mux = icmp eq i64 %i.bb, -1
  br i1 %brmerge, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.o

_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.n, %bb.i, %bb.h, %.split14, %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %.split, %bb.o, %bb.c, %bb.g, %bb.l, %bb.b, %bb.d, %bb.f, %bb.k, %bb.m, %bb.p
  %.sroa.0.0.shrunk = phi i1 [ %i.bl, %bb.p ], [ %.mux, %bb.n ], [ false, %bb.c ], [ false, %bb.i ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.l ], [ false, %bb.g ], [ false, %bb.o ], [ false, %.split ], [ false, %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit ], [ false, %.split14 ], [ false, %bb.h ]
  ret i1 %.sroa.0.0.shrunk

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !6 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bf = load i64, ptr %i.be, align 8, !noundef !6
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.p, label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !6, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !6, !noundef !6
  %i.bl = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs607s0NAIaWN_7segment5types9ConditionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bi, i64 noundef %i.bd)
  br label %_RNvXse1_NtCs607s0NAIaWN_7segment5typesNtB6_9MinShouldNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsk_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtB5_14HnswConfigDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = trunc nuw i64 %i.a to i1
  %i.d = load i64, ptr %1, align 8, !range !14, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1                 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %.split, label %bb.w

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.w, label %bb.d

.split:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.b, align 8, !noundef !6
  %i.h = load i64, ptr %i.f, align 8, !noundef !6
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.w

bb.d:                                             ; preds = %.split, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !14, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = trunc nuw i64 %i.k to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !14, !noundef !6
  %i.p = trunc nuw i64 %i.o to i1                 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_0
