Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.023?download=true
inline.NumInlined: 4025
inline.NumDeleted: 1932
begin_hunk_0_@_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataEEB3x_:bb.a
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !7838
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !7840, !noalias !7839, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7841
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7843)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !7843, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7843
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7845)
  %i.e = load i64, ptr %3, align 8, !range !28, !alias.scope !7846, !noundef !10
  %.not.i.i = icmp eq i64 %i.e, -1
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i, label %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i

_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !7845, !noalias !7843, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !7847
  br label %bb.c

_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry1__NtB5_24DistributedTelemetryDataNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataEEB3C_.exit

bb.c:                                             ; preds = %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i, %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataEEB3C_.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataEEB3C_.exit: ; preds = %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i, %bb.c
  %.sroa.0.1.i = phi ptr [ null, %bb.c ], [ %i.f, %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry24DistributedTelemetryDataENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryEEB3x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7867)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !7867, !nonnull !10, !align !11, !noundef !10 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !20, !alias.scope !7867, !noundef !10
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !7868, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7868
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !7867
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !7869, !noalias !7868, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7870
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7871
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7872)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !7872, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7872
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7874)
  %i.e = load i64, ptr %3, align 8, !range !25, !alias.scope !7875, !noundef !10
  %.not.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i, label %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i

_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !7874, !noalias !7872, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !7876
  br label %bb.c

_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetrys6_1__NtB5_27DistributedClusterTelemetryNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryEEB3C_.exit

bb.c:                                             ; preds = %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i, %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryEEB3C_.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryEEB3C_.exit: ; preds = %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i, %bb.c
  %.sroa.0.1.i = phi ptr [ null, %bb.c ], [ %i.f, %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedClusterTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryEEB3x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7896)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !7896, !nonnull !10, !align !11, !noundef !10 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !20, !alias.scope !7896, !noundef !10
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !7897, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7897
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !7896
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !7898, !noalias !7897, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7899
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7900
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7901)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !7901, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7901
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7903)
  %i.e = load ptr, ptr %3, align 8, !alias.scope !7904, !noundef !10
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i, label %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i

_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !7903, !noalias !7901, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !7905
  br label %bb.c

_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware1__NtB5_17HardwareTelemetryNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryEEB3C_.exit

bb.c:                                             ; preds = %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i, %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryEEB3C_.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryEEB3C_.exit: ; preds = %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i, %bb.c
  %.sroa.0.1.i = phi ptr [ null, %bb.c ], [ %i.f, %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops8hardware17HardwareTelemetryENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeEEB3x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7925)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !7925, !nonnull !10, !align !11, !noundef !10 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !20, !alias.scope !7925, !noundef !10
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !7926, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7926
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !7925
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !7927, !noalias !7926, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7928
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7929
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7930)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !7930, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7930
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7932)
  %i.e = load i8, ptr %3, align 1, !range !20, !alias.scope !7933, !noundef !10
  %.not.i.i = icmp eq i8 %i.e, 2
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i, label %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i

_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !7932, !noalias !7930, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !7934
  br label %bb.c

_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service1__NtB5_13InferenceTypeNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEBb_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeEEB3C_.exit

bb.c:                                             ; preds = %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i, %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.thread.i
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeEEB3C_.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeEEB3C_.exit: ; preds = %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i, %bb.c
  %.sroa.0.1.i = phi ptr [ null, %bb.c ], [ %i.f, %_RINvXs3_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceTypeENtB8_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB1u_.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7949)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !7949, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !20, !alias.scope !7949, !noundef !10
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !7950, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7950
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !7949
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !7951, !noalias !7950, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7952
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7953
  %.val3 = load i8, ptr %3, align 1               ; 2 uses
  %.val.i4 = load ptr, ptr %i.a, align 8, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val9.i = load ptr, ptr %i.a, align 8          ; 5 uses
  %.not.i.i = icmp eq i8 %.val3, 2
  br i1 %.not.i.i, label %bb.c, label %4

4:                                                ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %5 = trunc nuw i8 %.val3 to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  br i1 %5, label %.split.i.i.i.i.i.i, label %.split2.i.i.i.i.i.i

.split2.i.i.i.i.i.i:                              ; preds = %4
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 5)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant.exit

.split.i.i.i.i.i.i:                               ; preds = %4
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant.exit: ; preds = %.split2.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %bb.c
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptiondEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7968)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !7968, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !alias.scope !7968, !noundef !10
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !7969, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7969
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !7968
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !7970, !noalias !7969, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7971
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7972
  %.val3 = load i64, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4 = load double, ptr %i.f, align 8         ; 2 uses
  %.val.i5 = load ptr, ptr %i.b, align 8, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val10.i = load ptr, ptr %i.b, align 8         ; 6 uses
  %i.g = trunc nuw i64 %.val3 to i1
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.h = tail call double @llvm.fabs.f64(double %.val4)
  %cond.i.i.i.i.i = fcmp ueq double %i.h, +inf
  br i1 %cond.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptiondEECsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = call { ptr, i64 } @_RINvMs2_Cs1XVLCUuSBg0_4zmijNtB6_6Buffer13format_finitedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, double noundef %.val4) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptiondEECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptiondEECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptiondEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d, %bb.e, %bb.f
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionfEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7987)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !7987, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !alias.scope !7987, !noundef !10
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !7988, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7988
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !7987
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !7989, !noalias !7988, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7990
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7991
  %.val3 = load i32, ptr %3, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val4 = load float, ptr %i.f, align 4          ; 2 uses
  %.val.i5 = load ptr, ptr %i.b, align 8, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val10.i = load ptr, ptr %i.b, align 8         ; 6 uses
  %i.g = trunc nuw i32 %.val3 to i1
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.h = tail call float @llvm.fabs.f32(float %.val4)
  %cond.i.i.i.i.i = fcmp ueq float %i.h, +inf
  br i1 %cond.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionfEECsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = call { ptr, i64 } @_RINvMs2_Cs1XVLCUuSBg0_4zmijNtB6_6Buffer13format_finitefECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, float noundef %.val4) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionfEECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionfEECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionfEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d, %bb.e, %bb.f
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionhEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8008)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !8008, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !alias.scope !8008, !noundef !10
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !8009, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8009
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !8008
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !8010, !noalias !8009, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8011
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8012
  %.val3 = load i8, ptr %3, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.val4 = load i8, ptr %i.f, align 1             ; 4 uses
  %.val.i5 = load ptr, ptr %i.b, align 8, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val10.i = load ptr, ptr %i.b, align 8         ; 4 uses
  %i.g = trunc nuw i8 %.val3 to i1
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8013)
  %i.h = icmp ugt i8 %.val4, 9
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = zext i8 %.val4 to i32                    ; 2 uses
  %i.j = mul nuw nsw i32 %i.i, 5243
  %i.k = lshr i32 %i.j, 19                        ; 2 uses
  %i.l = trunc nuw nsw i32 %i.k to i8
  %.neg.i.i.i.i.i.i.i = mul nsw i32 %i.k, -100
  %i.m = add nsw i32 %.neg.i.i.i.i.i.i.i, %i.i    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.o = shl nuw nsw i32 %i.m, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = icmp ult i32 %i.m, 100
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr @_RNvCs6kQH99PsUHL_4itoa13DECIMAL_PAIRS, i64 %i.p ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !noalias !8013, !noundef !10
  store i8 %i.s, ptr %i.n, align 1, !alias.scope !8013
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.v = load i8, ptr %i.u, align 1, !noalias !8013, !noundef !10
  store i8 %i.v, ptr %i.t, align 1, !alias.scope !8013
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.0.i.i.i.i.i.i.i = phi i8 [ %i.l, %bb.d ], [ %.val4, %bb.c ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 1, %bb.d ], [ 3, %bb.c ] ; 2 uses
  %i.w = icmp ne i8 %.sroa.06.0.i.i.i.i.i.i.i, 0
  %i.x = icmp eq i8 %.val4, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.x, %i.w
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %_RINvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB6_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_somehECsl8OoimOLbh_6qdrant.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i64 %.sroa.0.0.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  %i.aa = add nuw nsw i8 %.sroa.06.0.i.i.i.i.i.i.i, 48
  store i8 %i.aa, ptr %i.z, align 1, !alias.scope !8013
  br label %_RINvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB6_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer14serialize_somehECsl8OoimOLbh_6qdrant.exit.i.i

end_hunk_0
