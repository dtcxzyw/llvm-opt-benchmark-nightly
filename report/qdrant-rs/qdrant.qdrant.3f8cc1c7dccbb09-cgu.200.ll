Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.200?download=true
inline.NumInlined: 349
inline.NumDeleted: 211
begin_hunk_0_@_RINvXs0_NvXNvNtCs5QaNqjAn6vc_5shard10operationss0_1__NtBb_20FieldIndexOperationsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content19EnumRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorEECsl8OoimOLbh_6qdrant:bb.a
  %i.g = load i8, ptr %i.f, align 8, !range !23, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !align !25, !noundef !6 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsO_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22VariantRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCs607s0NAIaWN_7segment9json_path8JsonPathEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.j)
  %i.k = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.l = icmp eq i64 %i.k, -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.l, label %bb.j, label %bb.k

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXsO_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22VariantRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCs5QaNqjAn6vc_5shard10operations11CreateIndexEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.j)
  %i.n = load i64, ptr %i.b, align 8, !range !16, !noundef !6
  %i.o = icmp eq i64 %i.n, -3
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  store i64 -4, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink = phi i64 [ -4, %bb.j ], [ -3, %bb.k ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops1__NtBb_16SnapshotPriorityNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1w_7Visitor10visit_enumNtNtCscFkbjGNl4k7_16serde_urlencoded2de15ValueEnumAccessECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs3_NtCscFkbjGNl4k7_16serde_urlencoded2deNtB6_15ValueEnumAccessNtNtCs4NSHK7GLW4I_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops1__NtB2P_16SnapshotPriorityNtB15_11Deserialize11deserialize7___FieldEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store ptr %i.b, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 8, !range !24, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i8 %i.f, label %default.unreachable16 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

default.unreachable16:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.g, align 8
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %i.g, align 8
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i8 2, ptr %i.g, align 8
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldbECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i8 %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !499, !nonnull !6, !align !25, !noundef !6 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !23, !noalias !500, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !501
  store i8 101, ptr %i.a, align 1, !noalias !501
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !501
  %i.k = load i64, ptr %i.b, align 8, !range !22, !noalias !501, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %bb.b
  %.sroa.727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.727.0..sroa_idx.i, i64 24, i1 false), !noalias !500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !501
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !503
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 5), !noalias !504
  %i.l = load i64, ptr %i.e, align 8, !range !22, !noalias !503, !noundef !6 ; 2 uses
  %.not1.i.i = icmp eq i64 %i.l, -1
  br i1 %.not1.i.i, label %bb.f, label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.c
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx4.i, i64 24, i1 false), !noalias !500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !503
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !500
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !499, !noundef !6
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef align 8 dereferenceable(16) %i.g, i8 noundef 0, i32 noundef %i.n) #21, !noalias !500
  %i.o = load i64, ptr %i.f, align 8, !range !22, !noalias !500, !noundef !6
  %.not1.i = icmp eq i64 %i.o, -1
  br i1 %.not1.i, label %bb.i, label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i
  %.sroa.0.132.i = phi i64 [ %i.k, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i ], [ %i.l, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i ]
  store i64 %.sroa.0.132.i, ptr %0, align 8, !alias.scope !498
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.415.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !499
  br label %_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_innerbECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !503
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %..i.i.i = or i8 %.0.val, -12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !505
  store i8 %..i.i.i, ptr %i.c, align 1, !noalias !505
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !506
  %i.p = load i64, ptr %i.d, align 8, !range !22, !noalias !505, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !500
  br label %_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_innerbECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !500
  br label %bb.g

bb.j:                                             ; preds = %bb.g
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.425.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx7.i, i64 24, i1 false), !noalias !499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !505
  br label %_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_innerbECsl8OoimOLbh_6qdrant.exit.sink.split

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !505
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !499, !noundef !6
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !alias.scope !499
  br label %_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_innerbECsl8OoimOLbh_6qdrant.exit.sink.split

_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_innerbECsl8OoimOLbh_6qdrant.exit.sink.split: ; preds = %bb.j, %bb.k
  %.sink = phi i64 [ -1, %bb.k ], [ %i.p, %bb.j ]
  store i64 %.sink, ptr %0, align 8, !alias.scope !498
  br label %_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_innerbECsl8OoimOLbh_6qdrant.exit

_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_innerbECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_innerbECsl8OoimOLbh_6qdrant.exit.sink.split, %bb.e, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldyECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 5, 11) %3, i64 %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [9 x i8], align 1                 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !525, !nonnull !6, !align !25, !noundef !6 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i8, ptr %i.i, align 8, !range !23, !noalias !526, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !527
  %i.l = trunc nuw nsw i64 %3 to i32
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, i8 noundef 3, i32 noundef %i.l) #21, !noalias !528
  %i.m = load i64, ptr %i.e, align 8, !range !22, !noalias !527, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i, label %bb.c, label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %bb.b
  %.sroa.8.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx3.i, i64 24, i1 false), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !527
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !527
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 5, 11) %3), !noalias !529
  %i.n = load i64, ptr %i.d, align 8, !range !22, !noalias !527, !noundef !6 ; 2 uses
  %.not1.i.i = icmp eq i64 %i.n, -1
  br i1 %.not1.i.i, label %bb.f, label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.c
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx4.i, i64 24, i1 false), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !527
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !526
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !alias.scope !525, !noundef !6
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(16) %i.h, i8 noundef 0, i32 noundef %i.p) #21, !noalias !526
  %i.q = load i64, ptr %i.g, align 8, !range !22, !noalias !526, !noundef !6
  %.not1.i = icmp eq i64 %i.q, -1
  br i1 %.not1.i, label %bb.n, label %bb.m

bb.e:                                             ; preds = %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i
  %.sroa.0.115.i = phi i64 [ %i.m, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i ], [ %i.n, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i ]
  store i64 %.sroa.0.115.i, ptr %0, align 8, !alias.scope !524
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.412.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !530
  br label %_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_inneryECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !527
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !526
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.r = icmp ult i64 %.0.val, 4294967296
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !534
  store i8 27, ptr %i.c, align 1, !noalias !534
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store i64 0, ptr %i.s, align 1, !noalias !534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !534
  %i.t = call i64 @llvm.bswap.i64(i64 %.0.val)
  store i64 %i.t, ptr %i.b, align 8, !noalias !534
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %i.s, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !534
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 9), !noalias !536
  %i.u = load i64, ptr %i.a, align 8, !range !22, !noalias !534, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.v = trunc nuw i64 %.0.val to i32
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, i8 noundef 0, i32 noundef %i.v) #21, !noalias !537
  br label %_RINvXsL_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !538
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store i64 -1, ptr %i.f, align 8, !alias.scope !539, !noalias !526
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !534
  br label %_RINvXsL_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant.exit.i

_RINvXsL_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.l, %bb.i
  %i.w = load i64, ptr %i.f, align 8, !range !22, !noalias !526, !noundef !6
  %.not2.i = icmp eq i64 %i.w, -1
  br i1 %.not2.i, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !526
  br label %_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_inneryECsl8OoimOLbh_6qdrant.exit

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !526
  br label %bb.g

bb.o:                                             ; preds = %_RINvXsL_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !526
  br label %_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_inneryECsl8OoimOLbh_6qdrant.exit

bb.p:                                             ; preds = %_RINvXsL_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !526
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !525, !noundef !6
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !alias.scope !525
  store i64 -1, ptr %0, align 8, !alias.scope !524
  br label %_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_inneryECsl8OoimOLbh_6qdrant.exit

_RINvMs3_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE21serialize_field_inneryECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.e, %bb.m, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtCs5QaNqjAn6vc_5shard10operationss0_1__NtBa_20FieldIndexOperationsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1h_7Visitor8visit_u8NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
  ], !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !542
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !noalias !542
  store i8 1, ptr %i.a, align 8, !noalias !542
  call void @_RNvYNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error13invalid_valueCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull @48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !542
  br label %_RINvXNvXNvNtCs5QaNqjAn6vc_5shard10operationss0_1__NtB8_20FieldIndexOperationsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_u64NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.d, align 8, !alias.scope !542
  store i64 -1, ptr %0, align 8, !alias.scope !542
  br label %_RINvXNvXNvNtCs5QaNqjAn6vc_5shard10operationss0_1__NtB8_20FieldIndexOperationsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_u64NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.e, align 8, !alias.scope !542
  store i64 -1, ptr %0, align 8, !alias.scope !542
  br label %_RINvXNvXNvNtCs5QaNqjAn6vc_5shard10operationss0_1__NtB8_20FieldIndexOperationsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_u64NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit

_RINvXNvXNvNtCs5QaNqjAn6vc_5shard10operationss0_1__NtB8_20FieldIndexOperationsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_u64NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtCs5QaNqjAn6vc_5shard10operationss0_1__NtBa_20FieldIndexOperationsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1h_7Visitor8visit_u8NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
  ], !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !545
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !noalias !545
  store i8 1, ptr %i.a, align 8, !noalias !545
  call void @_RNvYNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error13invalid_valueCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull @48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
end_hunk_0
