Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.254?download=true
inline.NumInlined: 388
inline.NumDeleted: 167
begin_hunk_0_@_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetrys6_1__NtB5_27DistributedClusterTelemetryNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEBb_:bb.a
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !233, !noalias !234, !nonnull !8, !align !9, !noundef !8
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 1), !noalias !237
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryebECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.c, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoEEB3Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f) ; 2 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %bb.d, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.b, align 8, !range !181, !noundef !8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !nonnull !8, !align !9, !noundef !8
  %.val = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 1)
  br label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.d, %bb.a ], [ %i.g, %bb.c ], [ %i.e, %bb.b ], [ null, %bb.d ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetrys8_1__NtB5_19DistributedPeerInfoNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEBb_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !244, !noalias !245, !nonnull !8, !align !9, !noundef !8
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 1), !noalias !248
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.b, align 8
  %i.c = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryebECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d) ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.c, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry22DistributedPeerDetailsEEB3x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.f) ; 2 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %bb.d, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.b, align 8, !range !181, !noundef !8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !nonnull !8, !align !9, !noundef !8
  %.val = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 1)
  br label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.c, %bb.a ], [ %i.g, %bb.c ], [ %i.e, %bb.b ], [ null, %bb.d ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetrysa_1__NtB5_22DistributedPeerDetailsNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEBb_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !255, !noalias !256, !nonnull !8, !align !9, !noundef !8
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 1), !noalias !259
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.b, align 8
  %i.c = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.e = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsgGgPqgSfnMH_7storage5types9StateRoleEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d) ; 2 uses
  %.not25 = icmp eq ptr %i.e, null
  br i1 %.not25, label %bb.c, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryebECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f) ; 2 uses
  %.not26 = icmp eq ptr %i.g, null
  br i1 %.not26, label %bb.d, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h) ; 2 uses
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.e, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l) ; 2 uses
  %.not29 = icmp eq ptr %i.m, null
  br i1 %.not29, label %bb.g, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = call noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsgGgPqgSfnMH_7storage5types21ConsensusThreadStatusECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) ; 2 uses
  %.not30 = icmp eq ptr %i.o, null
  br i1 %.not30, label %bb.h, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.g
  %i.p = load i8, ptr %i.b, align 8, !range !181, !noundef !8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.a, align 8, !nonnull !8, !align !9, !noundef !8
  %.val = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 1)
  br label %_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit

_RNvXs7_NtCs8O45qwFIwQX_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3endCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.i, %bb.h, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0 = phi ptr [ %i.k, %bb.e ], [ %i.o, %bb.g ], [ %i.m, %bb.f ], [ %i.c, %bb.a ], [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ null, %bb.h ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal14swap_uncheckedCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 48038396025285291) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 8 dereferenceable(192) %i.b, i64 192, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.b, ptr noundef nonnull align 8 dereferenceable(192) %i.c, i64 192, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11search_poolNtB2_25SearchThreadPoolTelemetry7collect(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB2_14TableOfContent25search_pool_thread_counts(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB2_14TableOfContent16search_pool_mode(ptr noundef nonnull align 8 %1) ; 2 uses
  %. = select i1 %i.b, i64 7, i64 8
  %.1 = select i1 %i.b, ptr @48, ptr @47
  %i.c = extractvalue { i64, i64 } %i.a, 1
  %i.d = extractvalue { i64, i64 } %i.a, 0
  store ptr %.1, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %., ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.c, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetryNtB2_24DistributedTelemetryData19resolve_telemetries(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.472.i.i = alloca i64, align 8            ; 5 uses
  %.sroa.673.i.i = alloca i64, align 8            ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [56 x i8], align 8                ; 7 uses
  %i.n = alloca [192 x i8], align 8               ; 10 uses
  %.sroa.5.i.i = alloca [40 x i8], align 8        ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [192 x i8], align 8               ; 26 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 7 uses
  %i.q = alloca [40 x i8], align 8                ; 5 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [96 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [96 x i8], align 8               ; 10 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [24 x i8], align 8               ; 10 uses
  %i.an = alloca [40 x i8], align 8               ; 8 uses
  %i.ao = alloca [8 x i8], align 8                ; 6 uses
  %i.ap = alloca [48 x i8], align 8               ; 11 uses
  %i.aq = alloca [40 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [112 x i8], align 8              ; 6 uses
  %i.at = alloca [112 x i8], align 8              ; 8 uses
  %i.au = alloca [8 x i8], align 8                ; 10 uses
  %i.av = alloca [32 x i8], align 8               ; 8 uses
  %i.aw = alloca [56 x i8], align 8               ; 6 uses
  %i.ax = alloca [48 x i8], align 8               ; 11 uses
  %.sroa.08.sroa.3.i = alloca [24 x i8], align 8  ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 8 uses
  %i.ba = alloca [32 x i8], align 8               ; 6 uses
  %i.bb = alloca [56 x i8], align 8               ; 6 uses
  %.sroa.039.sroa.3 = alloca [24 x i8], align 8   ; 3 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [72 x i8], align 8               ; 14 uses
  %i.be = alloca [48 x i8], align 8               ; 12 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !260
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1h_INtNtBc_6option6OptionTyyEENCNvNtNtB1l_13telemetry_ops21distributed_telemetry16newest_telemetry0E0EB2l_6reduceNvYINtNtBc_3cmp11KeyAndValueB3e_B39_ENtB56_3Ord3maxEB1n_.exit.thread.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1h_INtNtBc_6option6OptionTyyEENCNvNtNtB1l_13telemetry_ops21distributed_telemetry16newest_telemetry0E0EB2l_6reduceNvYINtNtBc_3cmp11KeyAndValueB3e_B39_ENtB56_3Ord3maxEB1n_.exit.i.i

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1h_INtNtBc_6option6OptionTyyEENCNvNtNtB1l_13telemetry_ops21distributed_telemetry16newest_telemetry0E0EB2l_6reduceNvYINtNtBc_3cmp11KeyAndValueB3e_B39_ENtB56_3Ord3maxEB1n_.exit.thread.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !260
  br label %bb.d

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1h_INtNtBc_6option6OptionTyyEENCNvNtNtB1l_13telemetry_ops21distributed_telemetry16newest_telemetry0E0EB2l_6reduceNvYINtNtBc_3cmp11KeyAndValueB3e_B39_ENtB56_3Ord3maxEB1n_.exit.i.i: ; preds = %bb.a
  %.idx.i = mul nuw nsw i64 %i.bi, 1048
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 1048
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 456
  %i.bn = load i64, ptr %i.bm, align 8, !range !163, !alias.scope !263, !noalias !266, !noundef !8
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bn, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 504
  %i.bp = load i64, ptr %i.bo, align 8, !range !163, !alias.scope !263, !noalias !275
  %.not2.i.i.i.i.i.i = icmp ne i64 %i.bp, 2
  %or.cond.not.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not2.i.i.i.i.i.i, i1 false ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 552
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !263, !noalias !275
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 560
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !263, !noalias !275
  %.sroa.4.0.i.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i, i64 %i.br, i64 undef
  %.sroa.5.0.i.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i, i64 %i.bt, i64 undef
  %storemerge.i.i.i.i.i.i = zext i1 %or.cond.not.i.i.i.i.i to i64
  store i64 %storemerge.i.i.i.i.i.i, ptr %i.az, align 8, !noalias !276
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !noalias !276
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !noalias !276
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.bg, ptr %.sroa.711.0..sroa_idx.i.i.i, align 8, !noalias !276
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1n_INtNtBc_6option6OptionTyyEENCNvNtNtB1r_13telemetry_ops21distributed_telemetry16newest_telemetry0E0EB2r_4foldINtNtBc_3cmp11KeyAndValueB3k_B3f_ENvYB54_NtB57_3Ord3maxEB1t_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ba, ptr noundef nonnull readonly %i.bl, ptr noundef nonnull readonly %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.az)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1h_INtNtBc_6option6OptionTyyEENCNvNtNtB1l_13telemetry_ops21distributed_telemetry16newest_telemetry0E0EB2l_6reduceNvYINtNtBc_3cmp11KeyAndValueB3e_B39_ENtB56_3Ord3maxEB1n_.exit.i.i
  %.pr.i.i = load i64, ptr %i.ba, align 8, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !260
  %.not.i.i = icmp eq i64 %.pr.i.i, 2
  br i1 %.not.i.i, label %bb.d, label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataEEB1D_.exit: ; preds = %.body58, %bb.b
  %.sroa.022.0 = phi i8 [ %.sroa.022.1, %bb.b ], [ %.sroa.022.2, %.body58 ]
  %.pn52 = phi { ptr, i32 } [ %i.bv, %bb.b ], [ %.pn, %.body58 ] ; 2 uses
  %i.bu = trunc nuw i8 %.sroa.022.0 to i1
  br i1 %i.bu, label %bb.gw, label %.body

bb.b:                                             ; preds = %bb.go, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1h_INtNtBc_6option6OptionTyyEENCNvNtNtB1l_13telemetry_ops21distributed_telemetry16newest_telemetry0E0EB2l_6reduceNvYINtNtBc_3cmp11KeyAndValueB3e_B39_ENtB56_3Ord3maxEB1n_.exit.i.i, %bb.d, %bb.c
  %.sroa.022.1 = phi i8 [ %.sroa.022.3, %bb.go ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1h_INtNtBc_6option6OptionTyyEENCNvNtNtB1l_13telemetry_ops21distributed_telemetry16newest_telemetry0E0EB2l_6reduceNvYINtNtBc_3cmp11KeyAndValueB3e_B39_ENtB56_3Ord3maxEB1n_.exit.i.i ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataEEB1D_.exit

bb.c:                                             ; preds = %.noexc
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.46.0.copyload.i.i = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !260, !nonnull !8, !noundef !8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.bw = load ptr, ptr %i.bf, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bx = load i64, ptr %i.bh, align 8, !noundef !8
  %i.by = getelementptr inbounds nuw [1048 x i8], ptr %i.bw, i64 %i.bx
  invoke void @_RINvXs1c_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTyB15_EE9from_iterINtNtNtB2a_8adapters10filter_map9FilterMapINtNtNtB2c_5slice4iter4IterB16_ENCNvMNtNtB1a_13telemetry_ops21distributed_telemetryNtB4C_24DistributedTelemetryData19resolve_telemetriess_0EEB1c_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.be, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.by)
          to label %bb.l unwind label %bb.b

bb.d:                                             ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1h_INtNtBc_6option6OptionTyyEENCNvNtNtB1l_13telemetry_ops21distributed_telemetry16newest_telemetry0E0EB2l_6reduceNvYINtNtBc_3cmp11KeyAndValueB3e_B39_ENtB56_3Ord3maxEB1n_.exit.thread.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke void @_RINvMNtNtCsgGgPqgSfnMH_7storage15content_manager6errorsNtB3_12StorageError13service_errorReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 36)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.613.0.copyload = load ptr, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.635.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.816.0..sroa_idx, i64 40, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load <2 x i32>, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store <2 x i32> %i.ca, ptr %i.bz, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.613.0.copyload, ptr %.sroa.534.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsl8OoimOLbh_6qdrant.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

.body:                                            ; preds = %bb.gs, %bb.f, %bb.i, %bb.gw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataEEB1D_.exit
  %.pn54 = phi { ptr, i32 } [ %.pn52, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataEEB1D_.exit ], [ %.pn52, %bb.gw ], [ %i.cb, %bb.f ], [ %i.cd, %bb.i ], [ %i.wh, %bb.gs ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #19
          to label %common.resume unwind label %bb.gv

bb.i:                                             ; preds = %bb.gt, %bb.g
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataEEB1e_.exit90 unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsl8OoimOLbh_6qdrant.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body, %bb.gp, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.wf, %bb.gp ], [ %i.ce, %bb.j ], [ %.pn54, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataEEB1e_.exit90: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsl8OoimOLbh_6qdrant.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsl8OoimOLbh_6qdrant.exit95
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  ret void

end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetryNtB2_24DistributedTelemetryData19resolve_telemetries:bb.a

.split.us.i.i:                                    ; preds = %bb.ce, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEEB15_.exit.us.i.i
  %i.ng = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i.i, !noalias !390 ; 2 uses

bb.cf:                                            ; preds = %.split.us.i.i
  %i.nh = extractvalue { ptr, ptr } %i.ng, 0      ; 3 uses
  %.not40.us.i.i = icmp eq ptr %i.nh, null
  br i1 %.not40.us.i.i, label %.split110.us.i.i, label %select.unfold.us.i.i

select.unfold.us.i.i:                             ; preds = %bb.cf
  %i.ni = extractvalue { ptr, ptr } %i.ng, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ni) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.nj = load i64, ptr %i.nh, align 8, !noalias !390, !noundef !8
  %i.nk = load i8, ptr %i.ni, align 1, !range !396, !noalias !390, !noundef !8
  store i64 %i.nj, ptr %i.hb, align 8, !noalias !385
  store i8 %i.nk, ptr %i.hc, align 1, !noalias !385
  store i8 -1, ptr %i.hd, align 8, !noalias !385
  store i64 0, ptr %i.p, align 8, !noalias !385
  store i64 0, ptr %i.hf, align 8, !noalias !385
  store i64 0, ptr %i.hh, align 8, !noalias !385
  store i64 0, ptr %i.hj, align 8, !noalias !385
  store i64 0, ptr %i.hl, align 8, !noalias !385
  store ptr null, ptr %i.hn, align 8, !noalias !385
  store i64 -1, ptr %i.ho, align 8, !noalias !385
  store i8 2, ptr %.sroa.313.0..sroa_idx16.i.i, align 8, !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !385
  %i.nl = load i64, ptr %i.nh, align 8, !noalias !390, !noundef !8
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBW_(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r, i64 noundef %i.nl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.p)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i.i, !noalias !390

bb.cg:                                            ; preds = %select.unfold.us.i.i
  %i.nm = load i64, ptr %i.n, align 8, !range !163, !alias.scope !397, !noalias !385, !noundef !8
  %i.nn = icmp eq i64 %i.nm, 2
  br i1 %i.nn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEEB15_.exit.us.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.no = load ptr, ptr %i.hq, align 8, !alias.scope !400, !noalias !385, !noundef !8
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i.i.us.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i.i.us.i.i unwind label %.split112.us.i.i, !noalias !390

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i.i.us.i.i: ; preds = %bb.ci, %bb.ch
  %i.nq = load i64, ptr %i.hr, align 8, !range !156, !alias.scope !405, !noalias !385, !noundef !8 ; 3 uses
  %i.nr = icmp eq i64 %i.nq, -1
  br i1 %i.nr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEEB15_.exit.us.i.i, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i.i.us.i.i
  %i.ns = icmp ne i64 %i.nq, -9223372036854775805
  call void @llvm.assume(i1 %i.ns)
  %i.nt = icmp sgt i64 %i.nq, -1
  br i1 %i.nt, label %bb.ck, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEEB15_.exit.us.i.i

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsPYQCUnoTxQ_10collection9telemetry31ShardCleanStatusFailedTelemetryECsl8OoimOLbh_6qdrant.exit.i.i.i.i.us.i.i unwind label %.split115.us.i.i, !noalias !390

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsPYQCUnoTxQ_10collection9telemetry31ShardCleanStatusFailedTelemetryECsl8OoimOLbh_6qdrant.exit.i.i.i.i.us.i.i: ; preds = %bb.ck
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEEB15_.exit.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i.i, !noalias !390

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEEB15_.exit.us.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsPYQCUnoTxQ_10collection9telemetry31ShardCleanStatusFailedTelemetryECsl8OoimOLbh_6qdrant.exit.i.i.i.i.us.i.i, %bb.cj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i.i.us.i.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %.split.us.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsPYQCUnoTxQ_10collection9telemetry31ShardCleanStatusFailedTelemetryECsl8OoimOLbh_6qdrant.exit.i.i.i.i.us.i.i, %select.unfold.us.i.i, %.split.us.i.i
  %lpad.loopexit93.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread80.i.i

.split112.us.i.i:                                 ; preds = %bb.ci
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

.split115.us.i.i:                                 ; preds = %bb.ck
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.split.i.i:                                       ; preds = %bb.ce, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEEB15_.exit.i.i
  %i.nw = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i, !noalias !390 ; 2 uses

bb.cl:                                            ; preds = %.split.i.i
  %i.nx = extractvalue { ptr, ptr } %i.nw, 0      ; 6 uses
  %i.ny = extractvalue { ptr, ptr } %i.nw, 1      ; 3 uses
  %.not40.i.i = icmp eq ptr %i.nx, null
  br i1 %.not40.i.i, label %.split110.us.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ny) ]
  %i.nz = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.nx)
          to label %.noexc51.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i, !noalias !390 ; 2 uses

.noexc51.i.i:                                     ; preds = %bb.cm
  %i.oa = lshr i64 %i.nz, 57
  %i.ob = trunc nuw nsw i64 %i.oa to i8
  %i.oc = insertelement <16 x i8> poison, i8 %i.ob, i64 0
  %i.od = shufflevector <16 x i8> %i.oc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %.noexc51.i.i
  %.sroa.9.0.i.i.i.i.i70 = phi i64 [ 0, %.noexc51.i.i ], [ %i.ou, %bb.cp ]
  %.pn.i.i.i.i71 = phi i64 [ %i.nz, %.noexc51.i.i ], [ %i.ov, %bb.cp ]
  %.sroa.01.0.i.i.i.i.i72 = and i64 %.pn.i.i.i.i71, %i.gm ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.sroa.01.0.i.i.i.i.i72
  %.sroa.0.0.copyload.i24.i.i.i.i73 = load <16 x i8>, ptr %i.oe, align 1, !noalias !408 ; 2 uses
  %i.of = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i73, %i.od
  %i.og = bitcast <16 x i1> %i.of to i16          ; 2 uses
  %.not.i.not30.i.i.i.i74 = icmp eq i16 %i.og, 0
  br i1 %.not.i.not30.i.i.i.i74, label %._crit_edge.i.i.i.i77, label %.lr.ph.i.i.i60.i

.lr.ph.i.i.i60.i:                                 ; preds = %bb.cn, %bb.co
  %.sroa.06.0.i31.i.i.i.i75 = phi i16 [ %i.ot, %bb.co ], [ %i.og, %bb.cn ] ; 3 uses
  %i.oh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i75, i1 true)
  %i.oi = zext nneg i16 %i.oh to i64
  %i.oj = add i64 %.sroa.01.0.i.i.i.i.i72, %i.oi
  %i.ok = and i64 %i.oj, %i.gm
  %i.ol = sub nsw i64 0, %i.ok
  %i.om = getelementptr inbounds [16 x i8], ptr %i.gn, i64 %i.ol ; 2 uses
  %i.on = getelementptr inbounds i8, ptr %i.om, i64 -16
  %i.oo = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.nx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.on)
          to label %.noexc52.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !390

.noexc52.i.i:                                     ; preds = %.lr.ph.i.i.i60.i
  br i1 %i.oo, label %bb.dk, label %bb.co, !prof !6

._crit_edge.i.i.i.i77:                            ; preds = %bb.co, %bb.cn
  %i.op = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i73, splat (i8 -1)
  %i.oq = bitcast <16 x i1> %i.op to i16
  %i.or = icmp eq i16 %i.oq, 0
  br i1 %i.or, label %bb.cp, label %select.unfold.loopexit.i.i, !prof !28

bb.co:                                            ; preds = %.noexc52.i.i
  %i.os = add i16 %.sroa.06.0.i31.i.i.i.i75, -1
  %i.ot = and i16 %i.os, %.sroa.06.0.i31.i.i.i.i75 ; 2 uses
  %.not.i.not.i.i.i.i76 = icmp eq i16 %i.ot, 0
  br i1 %.not.i.not.i.i.i.i76, label %._crit_edge.i.i.i.i77, label %.lr.ph.i.i.i60.i

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i77
  %i.ou = add i64 %.sroa.9.0.i.i.i.i.i70, 16      ; 2 uses
  %i.ov = add i64 %.sroa.01.0.i.i.i.i.i72, %i.ou
  br label %bb.cn

.split110.us.i.i:                                 ; preds = %bb.cl, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !385
  %i.ow = load i32, ptr %i.nf, align 8, !noalias !390, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !385
  %i.ox = load i64, ptr %.sroa.02.0118.i.i, align 8, !range !163, !noalias !390, !noundef !8 ; 2 uses
  %.not41.i.i = icmp eq i64 %i.ox, 2
  br i1 %.not41.i.i, label %bb.cw, label %bb.cq

bb.cq:                                            ; preds = %.split110.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.472.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.673.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.oy = trunc nuw i64 %i.ox to i1
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.02.0118.i.i, i64 8 ; 2 uses
  br i1 %i.oy, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.pa = load i64, ptr %i.oz, align 8, !alias.scope !419, !noalias !421, !noundef !8
  br label %bb.cy

bb.cs:                                            ; preds = %bb.cq
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.02.0118.i.i, i64 23
  %i.pc = load i8, ptr %i.pb, align 1, !alias.scope !419, !noalias !421, !noundef !8
  %.not.i53.i.i = icmp sgt i8 %i.pc, -1
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.02.0118.i.i, i64 16
  %.val.i.i.i = load ptr, ptr %i.oz, align 8, !alias.scope !419, !noalias !421 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.pd, align 8, !alias.scope !419, !noalias !421 ; 2 uses
  br i1 %.not.i53.i.i, label %bb.ct, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %.not.i.i.i.i63.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i63.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pe = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.pf = atomicrmw add ptr %i.pe, i64 1 monotonic, align 8, !noalias !422
  %i.pg = icmp slt i64 %i.pf, 0
  br i1 %i.pg, label %bb.cv, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !28

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val21.i.i.i) #17
          to label %.noexc54.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !390

.noexc54.i.i:                                     ; preds = %bb.cv
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.cs, %bb.cu, %bb.ct
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.cu ], [ inttoptr (i64 16 to ptr), %bb.ct ], [ %.val.i.i.i, %bb.cs ]
  %4 = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  store i64 %4, ptr %.sroa.472.i.i, align 8, !alias.scope !416, !noalias !423
  br label %bb.cy

bb.cw:                                            ; preds = %.split110.us.i.i
  store i64 2, ptr %i.l, align 8, !noalias !385
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cy, %bb.cw
  %i.ph = phi i64 [ %storemerge.i.i.i, %bb.cy ], [ 2, %bb.cw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !385
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBW_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.dc unwind label %bb.cz, !noalias !390

bb.cy:                                            ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.cr
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sroa.673.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.sroa.472.i.i, %bb.cr ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.pa, %bb.cr ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 1, %bb.cr ] ; 2 uses
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i.sroa.phi.i.i, align 8, !alias.scope !416, !noalias !423
  store i64 %storemerge.i.i.i, ptr %i.l, align 8, !noalias !385
  %.sroa.472.i.i.0..sroa.472.i.i.0..sroa.472.i.i.0..sroa.472.i.0..sroa.472.i.0..sroa.472.0..sroa.472.0..sroa.472.0.copyload.i.i = load i64, ptr %.sroa.472.i.i, align 8, !noalias !385
  store i64 %.sroa.472.i.i.0..sroa.472.i.i.0..sroa.472.i.i.0..sroa.472.i.0..sroa.472.i.0..sroa.472.0..sroa.472.0..sroa.472.0.copyload.i.i, ptr %.sroa.472.0..sroa_idx.i.i, align 8, !noalias !385
  %.sroa.673.i.i.0..sroa.673.i.i.0..sroa.673.i.i.0..sroa.673.i.0..sroa.673.i.0..sroa.673.0..sroa.673.0..sroa.673.0.copyload.i.i = load i64, ptr %.sroa.673.i.i, align 8, !noalias !385
  store i64 %.sroa.673.i.i.0..sroa.673.i.i.0..sroa.673.i.i.0..sroa.673.i.0..sroa.673.i.0..sroa.673.0..sroa.673.0..sroa.673.0.copyload.i.i, ptr %.sroa.673.0..sroa_idx.i.i, align 8, !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.472.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.673.i.i)
  br label %bb.cx

bb.cz:                                            ; preds = %bb.dd, %bb.dc, %bb.cx
  %i.pi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.pj = icmp eq i64 %i.ph, 2
  br i1 %i.pj, label %.thread77.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pk = icmp eq i64 %i.ph, 0
  %i.pl = getelementptr inbounds nuw i8, ptr %i.l, i64 23
  %i.pm = load i8, ptr %i.pl, align 1, !alias.scope !424, !noalias !385
  %.not.i.i.i.i.i.i.i = icmp sgt i8 %i.pm, -1
  %or.cond.i.i.i.i = select i1 %i.pk, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.db, label %.thread77.i.i

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.472.0..sroa_idx.i.i)
          to label %.thread77.i.i unwind label %bb.dj, !noalias !390

bb.dc:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !385
  invoke void @_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map10IntoValuesyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryENtCs9XvERIT2X68_9itertools9Itertools13sorted_by_keyyNCNvB14_16aggregate_shardss0_0EB1a_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
          to label %bb.dd unwind label %bb.cz, !noalias !390

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !385
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB6_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.de unwind label %bb.cz, !noalias !390

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !385
  store i32 %i.ow, ptr %i.hs, align 8, !noalias !385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !385
  %i.pn = load i64, ptr %i.ha, align 8, !alias.scope !429, !noalias !432, !noundef !8 ; 3 uses
  %i.po = load i64, ptr %i.s, align 8, !range !64, !alias.scope !429, !noalias !432, !noundef !8
  %i.pp = icmp eq i64 %i.pn, %i.po
  br i1 %i.pp, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.di unwind label %bb.dg, !noalias !434

bb.dg:                                            ; preds = %bb.df
  %i.pq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m) #19
          to label %.thread77.i.i unwind label %bb.dh, !noalias !390

bb.dh:                                            ; preds = %bb.dg
  %i.pr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !390
  unreachable

bb.di:                                            ; preds = %bb.df, %bb.de
  %i.ps = load ptr, ptr %i.gz, align 8, !alias.scope !429, !noalias !432, !nonnull !8, !noundef !8 ; 3 uses
  %i.pt = getelementptr inbounds nuw [56 x i8], ptr %i.ps, i64 %i.pn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.pt, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !noalias !390
  %i.pu = add i64 %i.pn, 1                        ; 5 uses
  store i64 %i.pu, ptr %i.ha, align 8, !alias.scope !429, !noalias !432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !385
  %i.pv = icmp eq ptr %i.my, %i.mw
  br i1 %i.pv, label %._crit_edge.i.i79, label %.lr.ph.i.i69

bb.dj:                                            ; preds = %.thread80.i.i, %bb.ej, %bb.db, %.thread77.i.i
  %i.pw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !390
  unreachable

bb.dk:                                            ; preds = %.noexc52.i.i
  %i.px = getelementptr inbounds i8, ptr %i.om, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %.val.i.i = load ptr, ptr %i.px, align 8, !noalias !390, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.py = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.pz = load i64, ptr %i.py, align 8, !range !155, !alias.scope !435, !noalias !438, !noundef !8
  %.not.i.i.i.i = icmp eq i64 %i.pz, -1
  br i1 %.not.i.i.i.i, label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry16aggregate_shards0B9_.exit.thread.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.qa = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8, !alias.scope !435, !noalias !438, !nonnull !8, !noundef !8 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.qd = load i64, ptr %i.qc, align 8, !alias.scope !435, !noalias !438, !noundef !8 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.qd, 4
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 %.idx.i.i.i.i
  %i.qf = icmp eq i64 %i.qd, 0
  br i1 %i.qf, label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry16aggregate_shards0B9_.exit.thread.i.i, label %.lr.ph.i.i.i.i61.i

.lr.ph.i.i.i.i61.i:                               ; preds = %bb.dl, %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24get_collection_telemetry0B9_.exit.i.i.i.i.i
  %i.qg = phi ptr [ %i.qh, %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24get_collection_telemetry0B9_.exit.i.i.i.i.i ], [ %i.qb, %bb.dl ] ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16 ; 2 uses
  %.val4.i.i.i.i.i = load i64, ptr %i.qg, align 8, !range !7, !noalias !443, !noundef !8
  %i.qi = getelementptr i8, ptr %i.qg, i64 8
  %.val5.i.i.i.i.i = load ptr, ptr %i.qi, align 8, !noalias !443 ; 10 uses
  %i.qj = trunc nuw i64 %.val4.i.i.i.i.i to i1
  br i1 %i.qj, label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24get_collection_telemetry0B9_.exit.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i61.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i.i) ]
  %i.qk = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i, i64 808
  %i.ql = load i64, ptr %i.qk, align 8, !noalias !443, !noundef !8
  %i.qm = icmp eq i64 %i.ql, %i.mp
  br i1 %i.qm, label %bb.dn, label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24get_collection_telemetry0B9_.exit.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.qn = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i, i64 800
  %i.qo = load ptr, ptr %i.qn, align 8, !noalias !443, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.qo, ptr nonnull readonly %i.mo, i64 %i.mp), !noalias !447
  %i.qp = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.qp, label %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24get_collection_telemetry.exit.i.i.i, label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24get_collection_telemetry0B9_.exit.i.i.i.i.i

_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24get_collection_telemetry0B9_.exit.i.i.i.i.i: ; preds = %bb.dn, %bb.dm, %.lr.ph.i.i.i.i61.i
  %i.qq = icmp eq ptr %i.qh, %i.qe
  br i1 %i.qq, label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry16aggregate_shards0B9_.exit.thread.i.i, label %.lr.ph.i.i.i.i61.i

_RNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24get_collection_telemetry.exit.i.i.i: ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !448
  %i.qr = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i, i64 888 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !noalias !449, !noundef !8
  %.not16.i.i.i = icmp eq ptr %i.qs, null
  br i1 %.not16.i.i.i, label %bb.dz, label %bb.do

bb.do:                                            ; preds = %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24get_collection_telemetry.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.qt = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i, i64 912
  %i.qu = load i64, ptr %i.qt, align 8, !alias.scope !455, !noalias !458, !noundef !8
  %i.qv = icmp eq i64 %i.qu, 0
  br i1 %i.qv, label %select.unfold.i.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qw = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i, i64 920
  %i.qx = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRmECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.qw, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.nf)
          to label %.noexc56.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.i.i, !noalias !390 ; 2 uses

.noexc56.i.i:                                     ; preds = %bb.dp
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.qy = lshr i64 %i.qx, 57
  %i.qz = trunc nuw nsw i64 %i.qy to i8
  %i.ra = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i, i64 896
  %i.rb = load i64, ptr %i.ra, align 8, !alias.scope !467, !noalias !468, !noundef !8 ; 2 uses
  %i.rc = load ptr, ptr %i.qr, align 8, !alias.scope !467, !noalias !468, !nonnull !8, !noundef !8 ; 2 uses
  %i.rd = insertelement <16 x i8> poison, i8 %i.qz, i64 0
  %i.re = shufflevector <16 x i8> %i.rd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dq

bb.dq:                                            ; preds = %bb.ds, %.noexc56.i.i
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc56.i.i ], [ %i.rv, %bb.ds ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.qx, %.noexc56.i.i ], [ %i.rw, %bb.ds ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.rb ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.rf, align 1, !noalias !471 ; 2 uses
  %i.rg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, %i.re
  %i.rh = bitcast <16 x i1> %i.rg to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i = icmp eq i16 %i.rh, 0
  br i1 %.not.i.not30.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.dq, %bb.dr
  %.sroa.06.0.i31.i.i.i.i.i.i = phi i16 [ %i.ru, %bb.dr ], [ %i.rh, %bb.dq ] ; 3 uses
  %i.ri = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i, i1 true)
  %i.rj = zext nneg i16 %i.ri to i64
end_hunk_1
