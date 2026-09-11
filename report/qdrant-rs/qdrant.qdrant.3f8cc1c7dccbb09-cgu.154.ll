Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.154?download=true
inline.NumInlined: 331
inline.NumDeleted: 138
begin_hunk_0_@_RINvXNvNtNtCsPYQCUnoTxQ_10collection6shards10reshardings3_1__NtB5_10ReshardKeyNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant:bb.a
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(16) %2, i8 noundef 0, i32 noundef 1) #15, !noalias !218
  %i.af = load i64, ptr %i.g, align 8, !range !15, !noalias !218, !noundef !6 ; 2 uses
  %.not1.i.i38 = icmp eq i64 %i.af, -1
  br i1 %.not1.i.i38, label %bb.t, label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !221
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !218
  call void @_RINvXNvNtNtCsPYQCUnoTxQ_10collection10operations11cluster_opss19_1__NtB5_19ReshardingDirectionNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2), !noalias !223
  %i.ag = load i64, ptr %i.f, align 8, !range !15, !noalias !218, !noundef !6 ; 2 uses
  %.not2.i.i37 = icmp eq i64 %i.ag, -1
  br i1 %.not2.i.i37, label %bb.w, label %bb.u

bb.s:                                             ; preds = %bb.p
  %.sroa.948.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i28, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.948.0..sroa_idx50, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !218
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !218
  br label %bb.r

bb.u:                                             ; preds = %bb.r
  %.sroa.948.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i28, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.948.0..sroa_idx49, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !218
  br label %bb.v

bb.v:                                             ; preds = %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i30, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i35, %bb.u, %bb.s
  %.sroa.045.0.ph = phi i64 [ %i.ag, %bb.u ], [ %i.af, %bb.s ], [ %i.ad, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i30 ], [ %i.ae, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i35 ]
  store i64 %.sroa.045.0.ph, ptr %0, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.468.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i28, i64 24, i1 false)
  br label %bb.ad

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !218
  store i32 2, ptr %i.r, align 8, !alias.scope !224, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load i64, ptr %i.ah, align 8
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 7, i64 %.val) #15
  %i.ai = load i64, ptr %i.o, align 8, !range !15, !noundef !6
  %.not24 = icmp eq i64 %i.ai, -1
  br i1 %.not24, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val27 = load i32, ptr %i.aj, align 8
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldmECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef align 8 dereferenceable(16) %i.p, i32 %.val27) #15
  %i.ak = load i64, ptr %i.n, align 8, !range !15, !noundef !6
  %.not25 = icmp eq i64 %i.ak, -1
  br i1 %.not25, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #15
  %i.al = load i64, ptr %i.m, align 8, !range !15, !noundef !6
  %.not26 = icmp eq i64 %i.al, -1
  br i1 %.not26, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 -1, ptr %0, align 8, !alias.scope !226
  br label %bb.ad

bb.ad:                                            ; preds = %bb.b, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.l, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCsPYQCUnoTxQ_10collection6shards10reshardings_1__NtB5_12ReshardStateNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !242, !noalias !243, !nonnull !6, !align !9, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.b = load i64, ptr %.val.i.i, align 8, !range !11, !alias.scope !244, !noalias !245, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !244, !noalias !245, !noundef !6 ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = sub nsw i64 %i.b, %i.d
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_objectQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread.i.i, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_objectQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.i.i, !prof !12

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_objectQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread.i.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !247, !noalias !245, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store i8 123, ptr %i.j, align 1, !noalias !248
  %i.k = add nuw i64 %i.d, 1
  store i64 %i.k, ptr %i.c, align 8, !alias.scope !247, !noalias !245
  br label %bb.c

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_objectQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.a
  %i.l = tail call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileE14write_all_coldCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 1) #14, !noalias !249 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_objectQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.i.i
  %i.m = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.l), !noalias !249
  br label %bb.j

bb.c:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_objectQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread.i.i, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_objectQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.i.i
  store ptr %1, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.o) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q) ; 2 uses
  %.not22 = icmp eq ptr %i.r, null
  br i1 %.not22, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryemECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.s) ; 2 uses
  %.not23 = icmp eq ptr %i.t, null
  br i1 %.not23, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.w = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCsPYQCUnoTxQ_10collection10operations11cluster_ops19ReshardingDirectionECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.v) ; 2 uses
  %.not25 = icmp eq ptr %i.w, null
  br i1 %.not25, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.y = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding15ReshardingStageECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.x) ; 2 uses
  %.not26 = icmp eq ptr %i.y, null
  br i1 %.not26, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.a, align 8, !nonnull !6, !align !9, !noundef !6
  %i.aa = load i8, ptr %i.n, align 8, !range !10, !noundef !6
  %.val = load ptr, ptr %i.z, align 8
  %i.ab = call fastcc noundef align 8 ptr @_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant(ptr %.val, i8 noundef %i.aa) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0 = phi ptr [ %i.ab, %bb.i ], [ %i.m, %bb.b ], [ %i.w, %bb.g ], [ %i.p, %bb.c ], [ %i.r, %bb.d ], [ %i.t, %bb.e ], [ %i.u, %bb.f ], [ %i.y, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsPYQCUnoTxQ_10collection6shards8transfer1__NtB5_13ShardTransferNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.8.i.i = alloca [24 x i8], align 8        ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load i32, ptr %i.n, align 8, !range !17, !noundef !6 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  %. = add nuw nsw i32 %i.o, 5
  %i.p = load i64, ptr %1, align 8, !range !5, !noundef !6
  %.not24 = icmp ne i64 %i.p, -2                  ; 2 uses
  %.sroa.08.0 = zext i1 %.not24 to i32
  %i.q = add nuw nsw i32 %., %.sroa.08.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !277
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i8 noundef 5, i32 noundef %i.q) #15, !noalias !278
  %i.r = load i64, ptr %i.f, align 8, !range !15, !noalias !277, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.r, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !279
  %.sroa.1043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.1043.0.copyload = load i32, ptr %.sroa.1043.0..sroa_idx, align 8, !noalias !279
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.623.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !277
  store i64 %i.r, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.1043.0.copyload, ptr %.sroa.522.0..sroa_idx, align 8
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !277
  store ptr %2, ptr %i.m, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val38 = load i32, ptr %i.t, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i8, ptr %i.u, align 8, !range !16, !noalias !282, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !283
  store i8 104, ptr %i.a, align 1, !noalias !283
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  %i.x = load i64, ptr %i.b, align 8, !range !15, !noalias !283, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i: ; preds = %bb.d
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !283
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !285
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 8), !noalias !286
  %i.y = load i64, ptr %i.c, align 8, !range !15, !noalias !285, !noundef !6 ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.y, -1
  br i1 %.not1.i.i.i, label %bb.g, label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.e
  %.sroa.8.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx4.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !285
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !282
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef align 8 dereferenceable(16) %2, i8 noundef 0, i32 noundef 0) #15, !noalias !282
  %i.z = load i64, ptr %i.e, align 8, !range !15, !noalias !282, !noundef !6 ; 2 uses
  %.not1.i.i = icmp eq i64 %i.z, -1
  br i1 %.not1.i.i, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !285
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !282
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i8 noundef 0, i32 noundef %.val38) #15, !noalias !282
  %i.aa = load i64, ptr %i.d, align 8, !range !15, !noalias !282, !noundef !6 ; 2 uses
  %.not2.i.i = icmp eq i64 %i.aa, -1
  br i1 %.not2.i.i, label %bb.m, label %bb.k

bb.i:                                             ; preds = %bb.f
  %.sroa.9.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx48, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !282
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !282
  br label %bb.h

bb.k:                                             ; preds = %bb.h
  %.sroa.9.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx47, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !282
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i, %bb.k, %bb.i
  %.sroa.044.0.ph = phi i64 [ %i.aa, %bb.k ], [ %i.z, %bb.i ], [ %i.x, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i ], [ %i.y, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i ]
  store i64 %.sroa.044.0.ph, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.459.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, i64 24, i1 false)
  br label %bb.ae

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !282
  store i32 1, ptr %i.s, align 8, !alias.scope !287, !noalias !288
  br i1 %.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.val40 = load i32, ptr %i.ab, align 4
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionmEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, i32 1, i32 %.val40) #15
  %i.ac = load i64, ptr %i.l, align 8, !range !15, !noundef !6
  %.not28 = icmp eq i64 %i.ac, -1
  br i1 %.not28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ae

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val37 = load i64, ptr %i.ad, align 8
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, i64 %.val37) #15
  %i.ae = load i64, ptr %i.k, align 8, !range !15, !noundef !6
  %.not30 = icmp eq i64 %i.ae, -1
  br i1 %.not30, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.m
  store i32 2, ptr %i.s, align 8, !alias.scope !289, !noalias !290
  br label %bb.q

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val = load i64, ptr %i.af, align 8
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 2, i64 %.val) #15
  %i.ag = load i64, ptr %i.j, align 8, !range !15, !noundef !6
  %.not31 = icmp eq i64 %i.ag, -1
  br i1 %.not31, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ae

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 132
  %.val41 = load i8, ptr %i.ah, align 4
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldbECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, i8 %.val41) #15
  %i.ai = load i64, ptr %i.i, align 8, !range !15, !noundef !6
  %.not32 = icmp eq i64 %i.ai, -1
  br i1 %.not32, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 133
  %.val42 = load i8, ptr %i.aj, align 1
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19ShardTransferMethodEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, i8 %.val42) #15
  %i.ak = load i64, ptr %i.h, align 8, !range !15, !noundef !6
  %.not33 = icmp eq i64 %i.ak, -1
  br i1 %.not33, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not24, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) #15
  %i.al = load i64, ptr %i.g, align 8, !range !15, !noundef !6
  %.not35 = icmp eq i64 %i.al, -1
  br i1 %.not35, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac
  store i64 -1, ptr %0, align 8, !alias.scope !291
  br label %bb.ae

bb.ae:                                            ; preds = %bb.b, %bb.ab, %bb.o, %bb.y, %bb.w, %bb.u, %bb.s, %bb.l, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsPYQCUnoTxQ_10collection6shards8transfers0_1__NtB5_20ShardTransferRestartNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.8.i.i = alloca [24 x i8], align 8        ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = load i32, ptr %1, align 8, !range !17, !noundef !6 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !319
  %3 = or disjoint i32 %i.l, 4
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i8 noundef 5, i32 noundef %3) #15, !noalias !320
  %i.m = load i64, ptr %i.f, align 8, !range !15, !noalias !319, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !321
  %.sroa.1035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.1035.0.copyload = load i32, ptr %.sroa.1035.0..sroa_idx, align 8, !noalias !321
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.622.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !319
  store i64 %i.m, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.1035.0.copyload, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !319
  store ptr %2, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val31 = load i32, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !16, !noalias !324, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !325
  store i8 104, ptr %i.a, align 1, !noalias !325
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !325
  %i.s = load i64, ptr %i.b, align 8, !range !15, !noalias !325, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.s, -1
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i: ; preds = %bb.d
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !325
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !327
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 8), !noalias !328
  %i.t = load i64, ptr %i.c, align 8, !range !15, !noalias !327, !noundef !6 ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.t, -1
  br i1 %.not1.i.i.i, label %bb.g, label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.e
  %.sroa.8.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx4.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !327
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !324
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef align 8 dereferenceable(16) %2, i8 noundef 0, i32 noundef 0) #15, !noalias !324
  %i.u = load i64, ptr %i.e, align 8, !range !15, !noalias !324, !noundef !6 ; 2 uses
  %.not1.i.i = icmp eq i64 %i.u, -1
  br i1 %.not1.i.i, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !327
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !324
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i8 noundef 0, i32 noundef %.val31) #15, !noalias !324
  %i.v = load i64, ptr %i.d, align 8, !range !15, !noalias !324, !noundef !6 ; 2 uses
  %.not2.i.i = icmp eq i64 %i.v, -1
  br i1 %.not2.i.i, label %bb.m, label %bb.k

bb.i:                                             ; preds = %bb.f
  %.sroa.9.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx40, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !324
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !324
  br label %bb.h

bb.k:                                             ; preds = %bb.h
  %.sroa.9.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx39, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !324
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i, %bb.k, %bb.i
  %.sroa.036.0.ph = phi i64 [ %i.v, %bb.k ], [ %i.u, %bb.i ], [ %i.s, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i ], [ %i.t, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i ]
  store i64 %.sroa.036.0.ph, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.449.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, i64 24, i1 false)
  br label %bb.y

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !324
  store i32 1, ptr %i.n, align 8, !alias.scope !329, !noalias !330
  br i1 %.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val33 = load i32, ptr %i.w, align 4
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionmEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef align 8 dereferenceable(16) %i.k, i32 1, i32 %.val33) #15
  %i.x = load i64, ptr %i.j, align 8, !range !15, !noundef !6
  %.not25 = icmp eq i64 %i.x, -1
  br i1 %.not25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load i64, ptr %i.y, align 8
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, i64 %.val30) #15
  %i.z = load i64, ptr %i.i, align 8, !range !15, !noundef !6
  %.not27 = icmp eq i64 %i.z, -1
  br i1 %.not27, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.m
  store i32 2, ptr %i.n, align 8, !alias.scope !331, !noalias !332
  br label %bb.q

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.y

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.aa, align 8
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 2, i64 %.val) #15
  %i.ab = load i64, ptr %i.h, align 8, !range !15, !noundef !6
  %.not28 = icmp eq i64 %i.ab, -1
  br i1 %.not28, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val34 = load i8, ptr %i.ac, align 4
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19ShardTransferMethodECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(16) %i.k, i8 %.val34) #15
  %i.ad = load i64, ptr %i.g, align 8, !range !15, !noundef !6
  %.not29 = icmp eq i64 %i.ad, -1
  br i1 %.not29, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8, !alias.scope !333
  br label %bb.y

bb.y:                                             ; preds = %bb.b, %bb.w, %bb.u, %bb.s, %bb.o, %bb.l, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsPYQCUnoTxQ_10collection6shards8transfers2_1__NtB5_16ShardTransferKeyNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.8.i.i = alloca [24 x i8], align 8        ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = load i32, ptr %1, align 8, !range !17, !noundef !6 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !361
  %3 = add nuw nsw i32 %i.k, 3
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i8 noundef 5, i32 noundef %3) #15, !noalias !362
  %i.l = load i64, ptr %i.f, align 8, !range !15, !noalias !361, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.l, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !363
  %.sroa.1033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.1033.0.copyload = load i32, ptr %.sroa.1033.0..sroa_idx, align 8, !noalias !363
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.622.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !361
  store i64 %i.l, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.1033.0.copyload, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !361
  store ptr %2, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val30 = load i32, ptr %i.n, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i8, ptr %i.o, align 8, !range !16, !noalias !366, !noundef !6
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !367
  store i8 104, ptr %i.a, align 1, !noalias !367
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !367
  %i.r = load i64, ptr %i.b, align 8, !range !15, !noalias !367, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.r, -1
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i: ; preds = %bb.d
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !367
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !369
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 8), !noalias !370
  %i.s = load i64, ptr %i.c, align 8, !range !15, !noalias !369, !noundef !6 ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.s, -1
  br i1 %.not1.i.i.i, label %bb.g, label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.e
  %.sroa.8.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx4.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !369
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !366
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef align 8 dereferenceable(16) %2, i8 noundef 0, i32 noundef 0) #15, !noalias !366
  %i.t = load i64, ptr %i.e, align 8, !range !15, !noalias !366, !noundef !6 ; 2 uses
  %.not1.i.i = icmp eq i64 %i.t, -1
  br i1 %.not1.i.i, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !369
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !366
  call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i8 noundef 0, i32 noundef %.val30) #15, !noalias !366
  %i.u = load i64, ptr %i.d, align 8, !range !15, !noalias !366, !noundef !6 ; 2 uses
  %.not2.i.i = icmp eq i64 %i.u, -1
  br i1 %.not2.i.i, label %bb.m, label %bb.k

bb.i:                                             ; preds = %bb.f
  %.sroa.9.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx38, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !366
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !366
  br label %bb.h

bb.k:                                             ; preds = %bb.h
  %.sroa.9.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx37, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !366
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i, %bb.k, %bb.i
  %.sroa.034.0.ph = phi i64 [ %i.u, %bb.k ], [ %i.t, %bb.i ], [ %i.r, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.thread.i.i ], [ %i.s, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant.exit.i.i ]
  store i64 %.sroa.034.0.ph, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, i64 24, i1 false)
  br label %bb.w

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !366
  store i32 1, ptr %i.m, align 8, !alias.scope !371, !noalias !372
  br i1 %.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val32 = load i32, ptr %i.v, align 4
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionmEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef align 8 dereferenceable(16) %i.j, i32 1, i32 %.val32) #15
  %i.w = load i64, ptr %i.i, align 8, !range !15, !noundef !6
  %.not25 = icmp eq i64 %i.w, -1
  br i1 %.not25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val29 = load i64, ptr %i.x, align 8
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, i64 %.val29) #15
  %i.y = load i64, ptr %i.h, align 8, !range !15, !noundef !6
  %.not27 = icmp eq i64 %i.y, -1
  br i1 %.not27, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.m
  store i32 2, ptr %i.m, align 8, !alias.scope !373, !noalias !374
  br label %bb.q

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.z, align 8
  call fastcc void @_RINvXs4_NtCs8jn5zD2RXga_10serde_cbor3serINtB6_16StructSerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 2, i64 %.val) #15
  %i.aa = load i64, ptr %i.g, align 8, !range !15, !noundef !6
  %.not28 = icmp eq i64 %i.aa, -1
  br i1 %.not28, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8, !alias.scope !375
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.u, %bb.s, %bb.o, %bb.l, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCsPYQCUnoTxQ_10collection6shards8transfers4_1__NtB5_19ShardTransferMethodNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  switch i8 %i.a, label %default.unreachable13 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable13:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RINvNtCs8O45qwFIwQX_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef range(i64 4, 26) 14) ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit.sink.split, !prof !12

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvNtCs8O45qwFIwQX_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef range(i64 4, 26) 8) ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i1, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit.sink.split, !prof !12

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvNtCs8O45qwFIwQX_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef range(i64 4, 26) 9) ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.e, null
  br i1 %.not.i.i4, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit.sink.split, !prof !12
end_hunk_0
