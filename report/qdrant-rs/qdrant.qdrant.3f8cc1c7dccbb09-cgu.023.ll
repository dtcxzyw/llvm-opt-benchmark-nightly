Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.023?download=true
inline.NumInlined: 4025
inline.NumDeleted: 1932
begin_hunk_0_@_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionuEECsl8OoimOLbh_6qdrant:bb.a
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8705
  %.val.i4 = load ptr, ptr %i.a, align 8, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val9.i = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8721)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !8721, !noalias !8722, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !alias.scope !8721, !noalias !8722, !noundef !10
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !8723, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8723
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !8721, !noalias !8722
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !8724, !noalias !8725, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8726
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8727
  %.val3 = load i64, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4 = load i64, ptr %i.f, align 8
  %.val.i5 = load ptr, ptr %i.b, align 8, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val10.i = load ptr, ptr %i.b, align 8         ; 4 uses
  %i.g = trunc nuw i64 %.val3 to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = call noundef i64 @_RNvXsu_Cs6kQH99PsUHL_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val4, ptr noalias nofree noundef nonnull dereferenceable(20) %i.a) ; 2 uses
  %i.i = sub nuw i64 20, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionyEECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionyEECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtCskKLDkoKarTP_4core6option6OptionyEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %bb.d
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8745)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !8745, !noalias !8746, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !20, !alias.scope !8745, !noalias !8746, !noundef !10
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !8747, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8747
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !8745, !noalias !8746
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !8748, !noalias !8749, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8750
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8751
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !8752, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8752
  %i.e = tail call noundef align 8 ptr @_RINvXs1X_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromENtB9_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8770)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !8770, !noalias !8771, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !20, !alias.scope !8770, !noalias !8771, !noundef !10
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !8772, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8772
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !8770, !noalias !8771
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !8773, !noalias !8774, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8775
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8776
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !8777, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8777
  %i.e = tail call noundef align 8 ptr @_RINvXs1Y_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyENtB9_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB2W_4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8823)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !8823, !noalias !8824, !nonnull !10, !align !11, !noundef !10 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !alias.scope !8823, !noalias !8824, !noundef !10
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !8825, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8825
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !8823, !noalias !8824
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !8826, !noalias !8827, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8828
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8829
  %.val.i3 = load ptr, ptr %i.b, align 8, !noalias !8830, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8832)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8833
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionNtNtNtBR_4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !8834
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val8.i.i.i = load i64, ptr %i.f, align 8, !noalias !8833, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8835)
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !8836, !noalias !8837, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8838
  %i.g = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.g, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.h = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !8839 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.peel.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.c

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8838
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !8840 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not.peel.i.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.peel.i.i17.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB31_4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEECsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.c:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.l = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i

bb.d:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %i.m = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8841
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ]
  %i.o = phi ptr [ %i.k, %bb.d ], [ %i.i, %bb.c ]
  %i.p = call noundef align 8 ptr @_RINvXsu_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsNtNtCsG258MDvU3F_3std4path7PathBufNtB8_9Serialize9serializeINtNtCs8O45qwFIwQX_10serde_json3ser16MapKeySerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1K_16CompactFormatterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !8842 ; 2 uses
  %.not.i.i.i.peel.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.peel.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1U_RINtNtNtNtB1q_11collections4hash3map7HashMapB1m_B1V_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB31_4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEECsl8OoimOLbh_6qdrant.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1U_RINtNtNtNtB1q_11collections4hash3map7HashMapB1m_B1V_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i
  %.val.i5.i.i.i.peel.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !8834, !noalias !8843, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.peel.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8844
  %i.q = call noundef align 8 ptr @_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types8manifests0_1__NtB5_11FileVersionNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !8845 ; 2 uses
  %.not7.peel.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not7.peel.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB31_4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEECsl8OoimOLbh_6qdrant.exit

.peel.next.i.i.i.i.i:                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1U_RINtNtNtNtB1q_11collections4hash3map7HashMapB1m_B1V_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1U_RINtNtNtNtB1q_11collections4hash3map7HashMapB1m_B1V_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.r = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !8846 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  %.val28.pre.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !8834, !noalias !8847 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val28.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8848
  %i.t = call noundef align 8 ptr @_RINvXsu_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsNtNtCsG258MDvU3F_3std4path7PathBufNtB8_9Serialize9serializeINtNtCs8O45qwFIwQX_10serde_json3ser16MapKeySerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1K_16CompactFormatterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !8849 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1U_RINtNtNtNtB1q_11collections4hash3map7HashMapB1m_B1V_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB31_4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEECsl8OoimOLbh_6qdrant.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1U_RINtNtNtNtB1q_11collections4hash3map7HashMapB1m_B1V_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i
  %i.u = extractvalue { ptr, ptr } %i.r, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %.val.i5.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !8834, !noalias !8850, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8851
  %i.v = call noundef align 8 ptr @_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types8manifests0_1__NtB5_11FileVersionNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !8852 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not7.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB31_4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEECsl8OoimOLbh_6qdrant.exit, !llvm.loop !8822

.loopexit.i.i.i:                                  ; preds = %.peel.next.i.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i
  %.val28.i.i.i = phi ptr [ %.val.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.val28.pre.i.i.i, %.peel.next.i.i.i.i.i ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val28.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB31_4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB31_4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1U_RINtNtNtNtB1q_11collections4hash3map7HashMapB1m_B1V_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1U_RINtNtNtNtB1q_11collections4hash3map7HashMapB1m_B1V_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i = phi ptr [ null, %.loopexit.i.i.i ], [ %i.p, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i ], [ %i.q, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1U_RINtNtNtNtB1q_11collections4hash3map7HashMapB1m_B1V_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i ], [ null, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i ], [ %i.t, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i ], [ %i.v, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsG258MDvU3F_3std4path7PathBufRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1U_RINtNtNtNtB1q_11collections4hash3map7HashMapB1m_B1V_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8833
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBR_6string6StringIB2O_B3H_IB2O_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8905)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !8905, !noalias !8906, !nonnull !10, !align !11, !noundef !10 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !alias.scope !8905, !noalias !8906, !noundef !10
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !8907, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8907
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !8905, !noalias !8906
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !8908, !noalias !8909, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8910
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8911
  %.val.i3 = load ptr, ptr %i.b, align 8, !noalias !8912, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8914)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8915
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapBN_IB1q_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEENtNtNtB1y_4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !8916
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val8.i.i.i = load i64, ptr %i.f, align 8, !noalias !8915, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8917)
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !8918, !noalias !8919, !nonnull !10, !align !11, !noundef !10 ; 8 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8920
  %.not.i.i.i = icmp eq i64 %.val8.i.i.i, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8920
  %i.g = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapBK_IB1n_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !8921 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 3 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.peel.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBX_6string6StringIB2T_B3M_IB2T_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEECsl8OoimOLbh_6qdrant.exit, label %bb.d

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.i = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapBK_IB1n_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !8921 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %.not.peel.i.i27.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.peel.i.i27.i.i.i, label %.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val8.peel.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !8921
  %i.m = getelementptr i8, ptr %i.j, i64 16
  %.val9.peel.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !8921
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i

bb.d:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.n = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = getelementptr i8, ptr %i.h, i64 8
  %.val8.peel.i.i30.i.i.i = load ptr, ptr %i.o, align 8, !noalias !8921
  %i.p = getelementptr i8, ptr %i.h, i64 16
  %.val9.peel.i.i31.i.i.i = load i64, ptr %i.p, align 8, !noalias !8921
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8922
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.val9.peel.i.i34.i.i.i = phi i64 [ %.val9.peel.i.i31.i.i.i, %bb.d ], [ %.val9.peel.i.i.i.i.i, %bb.c ]
  %.val8.peel.i.i32.i.i.i = phi ptr [ %.val8.peel.i.i30.i.i.i, %bb.d ], [ %.val8.peel.i.i.i.i.i, %bb.c ] ; 2 uses
  %i.q = phi ptr [ %i.n, %bb.d ], [ %i.k, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.peel.i.i32.i.i.i) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8923
  call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.peel.i.i32.i.i.i, i64 noundef %.val9.peel.i.i34.i.i.i)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8924
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8925
  %i.r = call fastcc noundef align 8 ptr @_RINvXs1I_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIBM_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEENtB9_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtB1J_3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14, !noalias !8926 ; 2 uses
  %.not7.peel.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.peel.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBX_6string6StringIB2T_B3M_IB2T_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEECsl8OoimOLbh_6qdrant.exit

.peel.next.i.i.i.i.i:                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.s = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapBK_IB1n_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !8927 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %.thread.loopexit.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %.val8.i.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !8927 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !8927
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !8916, !noalias !8928, !nonnull !10, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8929
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !8930, !noalias !8931, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.i.i) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8932
  call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.i.i.i.i.i, i64 noundef %.val9.i.i.i.i.i)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8933
  %.val.i5.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !8916, !noalias !8934, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8935
  %i.x = call fastcc noundef align 8 ptr @_RINvXs1I_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIBM_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEENtB9_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtB1J_3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14, !noalias !8936 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not7.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBX_6string6StringIB2T_B3M_IB2T_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEECsl8OoimOLbh_6qdrant.exit, !llvm.loop !8904

.thread.loopexit.i.i.i:                           ; preds = %.peel.next.i.i.i.i.i
  %.val22.pre.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !8916, !noalias !8937
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread.loopexit.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %.val22.i.i.i = phi ptr [ %.val22.pre.i.i.i, %.thread.loopexit.i.i.i ], [ %.val.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val22.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBX_6string6StringIB2T_B3M_IB2T_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBX_6string6StringIB2T_B3M_IB2T_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, %.thread.i.i.i
  %.sroa.0.1.i = phi ptr [ null, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.r, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i ], [ null, %.thread.i.i.i ], [ %i.x, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_lNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8915
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBR_6string6StringIB2O_B3H_IB2O_tNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8990)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !8990, !noalias !8991, !nonnull !10, !align !11, !noundef !10 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !alias.scope !8990, !noalias !8991, !noundef !10
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !8992, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8992
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !8990, !noalias !8991
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !8993, !noalias !8994, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8995
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8996
  %.val.i3 = load ptr, ptr %i.b, align 8, !noalias !8997, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !8997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8999)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9000
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapBN_IB1q_tNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEENtNtNtB1y_4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !9001
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val8.i.i.i = load i64, ptr %i.f, align 8, !noalias !9000, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9002)
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9003, !noalias !9004, !nonnull !10, !align !11, !noundef !10 ; 8 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9005
  %.not.i.i.i = icmp eq i64 %.val8.i.i.i, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9005
  %i.g = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapBK_IB1n_tNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9006 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 3 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.peel.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBX_6string6StringIB2T_B3M_IB2T_tNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEECsl8OoimOLbh_6qdrant.exit, label %bb.d

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.i = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapBK_IB1n_tNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9006 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %.not.peel.i.i27.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.peel.i.i27.i.i.i, label %.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val8.peel.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !9006
  %i.m = getelementptr i8, ptr %i.j, i64 16
  %.val9.peel.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !9006
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_IB20_tNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEEEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB50_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RIB20_B1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i

bb.d:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.n = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
end_hunk_0
begin_hunk_1_@_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBR_6string6StringNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEEB4a_:bb.a

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !9637, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9637
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !9635, !noalias !9636
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !9638, !noalias !9639, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9640
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9641
  %.val.i3 = load ptr, ptr %i.b, align 8, !noalias !9642, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9642
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9644)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9645
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterB1x_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !9646
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val8.i.i.i = load i64, ptr %i.f, align 8, !noalias !9645, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9647)
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9648, !noalias !9649, !nonnull !10, !align !11, !noundef !10 ; 8 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9650
  %.not.i.i.i = icmp eq i64 %.val8.i.i.i, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9650
  %i.g = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9651 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 3 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.peel.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEEB4f_.exit, label %bb.d

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.i = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9651 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %.not.peel.i.i27.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.peel.i.i27.i.i.i, label %.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val8.peel.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !9651
  %i.m = getelementptr i8, ptr %i.j, i64 16
  %.val9.peel.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !9651
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB48_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0B27_.exit.peel.i.i.i.i.i

bb.d:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.n = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = getelementptr i8, ptr %i.h, i64 8
  %.val8.peel.i.i30.i.i.i = load ptr, ptr %i.o, align 8, !noalias !9651
  %i.p = getelementptr i8, ptr %i.h, i64 16
  %.val9.peel.i.i31.i.i.i = load i64, ptr %i.p, align 8, !noalias !9651
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9652
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB48_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0B27_.exit.peel.i.i.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB48_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0B27_.exit.peel.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.val9.peel.i.i34.i.i.i = phi i64 [ %.val9.peel.i.i31.i.i.i, %bb.d ], [ %.val9.peel.i.i.i.i.i, %bb.c ]
  %.val8.peel.i.i32.i.i.i = phi ptr [ %.val8.peel.i.i30.i.i.i, %bb.d ], [ %.val8.peel.i.i.i.i.i, %bb.c ] ; 2 uses
  %i.q = phi ptr [ %i.n, %bb.d ], [ %i.k, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.peel.i.i32.i.i.i) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9653
  call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.peel.i.i32.i.i.i, i64 noundef %.val9.peel.i.i34.i.i.i)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9654
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9655
  %i.r = call noundef align 8 ptr @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetrys0_1__NtB5_30DistributedCollectionTelemetryNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !9656 ; 2 uses
  %.not7.peel.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.peel.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEEB4f_.exit

.peel.next.i.i.i.i.i:                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB48_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0B27_.exit.peel.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB48_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0B27_.exit.i.i.i.i.i
  %i.s = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9657 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %.thread.loopexit.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB48_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0B27_.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB48_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0B27_.exit.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %.val8.i.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !9657 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !9657
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9646, !noalias !9658, !nonnull !10, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9659
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9660, !noalias !9661, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.i.i) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9662
  call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.i.i.i.i.i, i64 noundef %.val9.i.i.i.i.i)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9663
  %.val.i5.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9646, !noalias !9664, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9665
  %i.x = call noundef align 8 ptr @_RINvXNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetrys0_1__NtB5_30DistributedCollectionTelemetryNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !9666 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not7.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEEB4f_.exit, !llvm.loop !9634

.thread.loopexit.i.i.i:                           ; preds = %.peel.next.i.i.i.i.i
  %.val22.pre.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9646, !noalias !9667
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread.loopexit.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %.val22.i.i.i = phi ptr [ %.val22.pre.i.i.i, %.thread.loopexit.i.i.i ], [ %.val.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val22.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEEB4f_.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEEB4f_.exit: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB48_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0B27_.exit.i.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB48_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0B27_.exit.peel.i.i.i.i.i, %.thread.i.i.i
  %.sroa.0.1.i = phi ptr [ null, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.r, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB48_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0B27_.exit.peel.i.i.i.i.i ], [ null, %.thread.i.i.i ], [ %i.x, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry30DistributedCollectionTelemetryEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB48_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0B27_.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9645
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3L_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9713)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !9713, !noalias !9714, !nonnull !10, !align !11, !noundef !10 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !alias.scope !9713, !noalias !9714, !noundef !10
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !9715, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9715
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !9713, !noalias !9714
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !9716, !noalias !9717, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9718
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9719
  %.val.i3 = load ptr, ptr %i.b, align 8, !noalias !9720, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9722)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9723
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBR_5types16PayloadIndexInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !9724
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val8.i.i.i = load i64, ptr %i.f, align 8, !noalias !9723, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9725)
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9726, !noalias !9727, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9728
  %i.g = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.g, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.h = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBO_5types16PayloadIndexInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9729 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.peel.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.c

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9728
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBO_5types16PayloadIndexInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9730 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not.peel.i.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.peel.i.i17.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.c:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.l = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i

bb.d:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %i.m = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9731
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ]
  %i.o = phi ptr [ %i.k, %bb.d ], [ %i.i, %bb.c ]
  %i.p = call noundef align 8 ptr @_RINvXs1_NtCs607s0NAIaWN_7segment9json_pathNtB6_8JsonPathNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeINtNtCs8O45qwFIwQX_10serde_json3ser16MapKeySerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1N_16CompactFormatterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !9732 ; 2 uses
  %.not.i.i.i.peel.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.peel.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types16PayloadIndexInfoEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB34_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types16PayloadIndexInfoEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB34_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i
  %.val.i5.i.i.i.peel.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9724, !noalias !9733, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.peel.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9734
  %i.q = call noundef align 8 ptr @_RINvXNvNtCs607s0NAIaWN_7segment5typess8_1__NtB5_16PayloadIndexInfoNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !9735 ; 2 uses
  %.not7.peel.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not7.peel.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit

.peel.next.i.i.i.i.i:                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types16PayloadIndexInfoEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB34_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types16PayloadIndexInfoEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB34_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.r = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBO_5types16PayloadIndexInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9736 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  %.val28.pre.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9724, !noalias !9737 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val28.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9738
  %i.t = call noundef align 8 ptr @_RINvXs1_NtCs607s0NAIaWN_7segment9json_pathNtB6_8JsonPathNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeINtNtCs8O45qwFIwQX_10serde_json3ser16MapKeySerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1N_16CompactFormatterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !9739 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types16PayloadIndexInfoEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB34_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types16PayloadIndexInfoEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB34_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i
  %i.u = extractvalue { ptr, ptr } %i.r, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %.val.i5.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9724, !noalias !9740, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9741
  %i.v = call noundef align 8 ptr @_RINvXNvNtCs607s0NAIaWN_7segment5typess8_1__NtB5_16PayloadIndexInfoNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !9742 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not7.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit, !llvm.loop !9712

.loopexit.i.i.i:                                  ; preds = %.peel.next.i.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i
  %.val28.i.i.i = phi ptr [ %.val.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.val28.pre.i.i.i, %.peel.next.i.i.i.i.i ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val28.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types16PayloadIndexInfoEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB34_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types16PayloadIndexInfoEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB34_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i = phi ptr [ null, %.loopexit.i.i.i ], [ %i.p, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i ], [ %i.q, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types16PayloadIndexInfoEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB34_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i ], [ null, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i ], [ %i.t, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i ], [ %i.v, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types16PayloadIndexInfoEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB34_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9723
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3L_5types18PayloadFieldSchemaEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9788)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !9788, !noalias !9789, !nonnull !10, !align !11, !noundef !10 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !alias.scope !9788, !noalias !9789, !noundef !10
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !9790, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9790
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !9788, !noalias !9789
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !9791, !noalias !9792, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9793
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9794
  %.val.i3 = load ptr, ptr %i.b, align 8, !noalias !9795, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9797)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9798
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBR_5types18PayloadFieldSchemaNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !9799
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val8.i.i.i = load i64, ptr %i.f, align 8, !noalias !9798, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9800)
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9801, !noalias !9802, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9803
  %i.g = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.g, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.h = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBO_5types18PayloadFieldSchemaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9804 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.peel.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.c

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9803
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBO_5types18PayloadFieldSchemaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9805 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not.peel.i.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.peel.i.i17.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types18PayloadFieldSchemaEECsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.c:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.l = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i

bb.d:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %i.m = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9806
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ]
  %i.o = phi ptr [ %i.k, %bb.d ], [ %i.i, %bb.c ]
  %i.p = call noundef align 8 ptr @_RINvXs1_NtCs607s0NAIaWN_7segment9json_pathNtB6_8JsonPathNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeINtNtCs8O45qwFIwQX_10serde_json3ser16MapKeySerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1N_16CompactFormatterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !9807 ; 2 uses
  %.not.i.i.i.peel.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.peel.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types18PayloadFieldSchemaEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB36_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types18PayloadFieldSchemaEECsl8OoimOLbh_6qdrant.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types18PayloadFieldSchemaEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB36_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i
  %.val.i5.i.i.i.peel.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9799, !noalias !9808, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.peel.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9809
  %i.q = call noundef align 8 ptr @_RINvXNvNtCs607s0NAIaWN_7segment5typess2L_1__NtB5_18PayloadFieldSchemaNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !9810 ; 2 uses
  %.not7.peel.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not7.peel.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types18PayloadFieldSchemaEECsl8OoimOLbh_6qdrant.exit

.peel.next.i.i.i.i.i:                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types18PayloadFieldSchemaEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB36_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types18PayloadFieldSchemaEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB36_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.r = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBO_5types18PayloadFieldSchemaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9811 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  %.val28.pre.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9799, !noalias !9812 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val28.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9813
  %i.t = call noundef align 8 ptr @_RINvXs1_NtCs607s0NAIaWN_7segment9json_pathNtB6_8JsonPathNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeINtNtCs8O45qwFIwQX_10serde_json3ser16MapKeySerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1N_16CompactFormatterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !9814 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types18PayloadFieldSchemaEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB36_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types18PayloadFieldSchemaEECsl8OoimOLbh_6qdrant.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types18PayloadFieldSchemaEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB36_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i
  %i.u = extractvalue { ptr, ptr } %i.r, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %.val.i5.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !9799, !noalias !9815, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9816
  %i.v = call noundef align 8 ptr @_RINvXNvNtCs607s0NAIaWN_7segment5typess2L_1__NtB5_18PayloadFieldSchemaNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !9817 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not7.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types18PayloadFieldSchemaEECsl8OoimOLbh_6qdrant.exit, !llvm.loop !9787

.loopexit.i.i.i:                                  ; preds = %.peel.next.i.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i
  %.val28.i.i.i = phi ptr [ %.val.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.val28.pre.i.i.i, %.peel.next.i.i.i.i.i ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val28.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types18PayloadFieldSchemaEECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB3Q_5types18PayloadFieldSchemaEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types18PayloadFieldSchemaEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB36_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types18PayloadFieldSchemaEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB36_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i = phi ptr [ null, %.loopexit.i.i.i ], [ %i.p, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i.i.i.i ], [ %i.q, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types18PayloadFieldSchemaEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB36_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i ], [ null, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i ], [ %i.t, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i ], [ %i.v, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtB1q_5types18PayloadFieldSchemaEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB36_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B25_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B26_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9798
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9835)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !9835, !noalias !9836, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !20, !alias.scope !9835, !noalias !9836, !noundef !10
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !9837, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9837
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !9835, !noalias !9836
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !9838, !noalias !9839, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9840
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9841
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !9842, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9842
  %i.e = tail call fastcc noundef align 8 ptr @_RINvXs1I_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtB9_9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #14
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9887)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !9887, !noalias !9888, !nonnull !10, !align !11, !noundef !10 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !20, !alias.scope !9887, !noalias !9888, !noundef !10
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !9889, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9889
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.d, align 8, !alias.scope !9887, !noalias !9888
  %.val8.i = load ptr, ptr %i.c, align 8, !alias.scope !9890, !noalias !9891, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9892
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9893
  %.val.i3 = load ptr, ptr %i.c, align 8, !noalias !9894, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9894
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9896)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9897
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !9898
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val8.i.i.i = load i64, ptr %i.g, align 8, !noalias !9897, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9899)
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9900, !noalias !9901, !nonnull !10, !align !11, !noundef !10 ; 8 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9902
  %.not.i.i.i = icmp eq i64 %.val8.i.i.i, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9902
  %i.h = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !9903 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.peel.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEECsl8OoimOLbh_6qdrant.exit, label %bb.c

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !9903 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not.peel.i.i27.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.peel.i.i27.i.i.i, label %.thread.i.i.i, label %.thread28.i.i.i

.thread28.i.i.i:                                  ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %.val8.peel.i.i29.i.i.i = load i64, ptr %i.k, align 8, !noalias !9903
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3e_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i

bb.c:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.m = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %.val8.peel.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !9903
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9904
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3e_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3e_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i: ; preds = %bb.c, %.thread28.i.i.i
  %.val8.peel.i.i30.i.i.i = phi i64 [ %.val8.peel.i.i29.i.i.i, %.thread28.i.i.i ], [ %.val8.peel.i.i.i.i.i, %bb.c ]
  %i.n = phi ptr [ %i.l, %.thread28.i.i.i ], [ %i.m, %bb.c ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9905
  %i.o = call noundef i64 @_RNvXsu_Cs6kQH99PsUHL_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val8.peel.i.i30.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(20) %i.a), !noalias !9904 ; 2 uses
  %i.p = sub nuw i64 20, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef range(i64 0, -9223372036854775808) %i.p), !noalias !9904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9905
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9904
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9906
  %i.r = call noundef align 8 ptr @_RINvXNvNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_states1_1__NtB5_12ReplicaStateNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !9907 ; 2 uses
  %.not7.peel.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.peel.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEECsl8OoimOLbh_6qdrant.exit

.peel.next.i.i.i.i.i:                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3e_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3e_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.s = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !9908 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %.thread.loopexit.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3e_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3e_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %.val8.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !9908
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9898, !noalias !9909, !nonnull !10, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9910
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9898, !noalias !9909, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9911
  %i.v = call noundef i64 @_RNvXsu_Cs6kQH99PsUHL_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val8.i.i.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(20) %i.a), !noalias !9910 ; 2 uses
  %i.w = sub nuw i64 20, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef range(i64 0, -9223372036854775808) %i.w), !noalias !9910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9911
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9910
  %.val.i5.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9898, !noalias !9912, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9913
  %i.y = call noundef align 8 ptr @_RINvXNvNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_states1_1__NtB5_12ReplicaStateNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !9914 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not7.i.i.i.i.i, label %.peel.next.i.i.i.i.i, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEECsl8OoimOLbh_6qdrant.exit, !llvm.loop !9886

.thread.loopexit.i.i.i:                           ; preds = %.peel.next.i.i.i.i.i
  %.val22.pre.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9898, !noalias !9915
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread.loopexit.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %.val22.i.i.i = phi ptr [ %.val22.pre.i.i.i, %.thread.loopexit.i.i.i ], [ %.val.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread.i.i.i ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val22.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3e_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3e_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i, %.thread.i.i.i
  %.sroa.0.1.i = phi ptr [ null, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.r, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3e_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i.i.i.i ], [ null, %.thread.i.i.i ], [ %i.y, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3e_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9897
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8O45qwFIwQX_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoEEB3Q_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9960)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !9960, !noalias !9961, !nonnull !10, !align !11, !noundef !10 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !20, !alias.scope !9960, !noalias !9961, !noundef !10
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !9962, !nonnull !10, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9962
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.d, align 8, !alias.scope !9960, !noalias !9961
  %.val8.i = load ptr, ptr %i.c, align 8, !alias.scope !9963, !noalias !9964, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9965
  tail call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9966
  %.val.i3 = load ptr, ptr %i.c, align 8, !noalias !9967, !nonnull !10, !align !11, !noundef !10
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9967
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9969)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9970
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterBW_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !9971
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val8.i.i.i = load i64, ptr %i.g, align 8, !noalias !9970, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9972)
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !9973, !noalias !9974, !nonnull !10, !align !11, !noundef !10 ; 8 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !9975
  %.not.i.i.i = icmp eq i64 %.val8.i.i.i, 0
end_hunk_1
begin_hunk_2_@_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter16write_byte_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant:bb.a

bb.f:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread.peel, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.peel
  %i.aw = icmp samesign eq i64 %3, 1
  br i1 %i.aw, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.f, %bb.m
  %.sroa.010.025 = phi ptr [ %i.ax, %bb.m ], [ %i.r, %bb.f ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.025, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14338)
  %i.ay = load i64, ptr %.val, align 8, !range !12, !alias.scope !14338, !noalias !14339, !noundef !10
  %i.az = load i64, ptr %i.c, align 8, !alias.scope !14338, !noalias !14339, !noundef !10 ; 4 uses
  %i.ba = icmp sgt i64 %i.az, -1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = sub nsw i64 %i.ay, %i.az
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %bb.g, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit, !prof !13

bb.g:                                             ; preds = %.peel.next
  call void @llvm.experimental.noalias.scope.decl(metadata !14340)
  %i.bd = load ptr, ptr %i.o, align 8, !alias.scope !14341, !noalias !14342, !nonnull !10, !noundef !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.az
  store i8 44, ptr %i.be, align 1, !noalias !14341
  %i.bf = add nuw i64 %i.az, 1
  store i64 %i.bf, ptr %i.c, align 8, !alias.scope !14341, !noalias !14342
  br label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit: ; preds = %.peel.next
  %i.bg = call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileE14write_all_coldCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1) #13 ; 2 uses
  %.not12 = icmp eq ptr %i.bg, null
  br i1 %.not12, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9end_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit

._crit_edge:                                      ; preds = %bb.m, %bb.f, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !14343)
  %i.bh = load i64, ptr %.val, align 8, !range !12, !alias.scope !14343, !noalias !14344, !noundef !10
  %i.bi = load i64, ptr %i.c, align 8, !alias.scope !14343, !noalias !14344, !noundef !10 ; 4 uses
  %i.bj = icmp sgt i64 %i.bi, -1
  call void @llvm.assume(i1 %i.bj)
  %i.bk = sub nsw i64 %i.bh, %i.bi
  %i.bl = icmp ugt i64 %i.bk, 1
  br i1 %i.bl, label %bb.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %._crit_edge
  %i.bm = call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileE14write_all_coldCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef range(i64 0, -9223372036854775808) 1) #13
  br label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9end_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !14345)
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !14346, !noalias !14347, !nonnull !10, !noundef !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi
  store i8 93, ptr %i.bp, align 1, !noalias !14346
  %i.bq = add nuw i64 %i.bi, 1
  store i64 %i.bq, ptr %i.c, align 8, !alias.scope !14346, !noalias !14347
  br label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9end_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.g, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit
  %i.br = load i8, ptr %.sroa.010.025, align 1, !noundef !10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !14348)
  %i.bs = icmp ugt i8 %i.br, 9
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread
  %i.bt = zext i8 %i.br to i32                    ; 2 uses
  %i.bu = mul nuw nsw i32 %i.bt, 5243
  %i.bv = lshr i32 %i.bu, 19                      ; 2 uses
  %i.bw = trunc nuw nsw i32 %i.bv to i8
  %.neg.i.i = mul nsw i32 %i.bv, -100
  %i.bx = add nsw i32 %.neg.i.i, %i.bt            ; 2 uses
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = icmp ult i32 %i.bx, 100
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr @_RNvCs6kQH99PsUHL_4itoa13DECIMAL_PAIRS, i64 %i.bz ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !14348, !noundef !10
  store i8 %i.cc, ptr %i.p, align 1, !alias.scope !14348
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !14348, !noundef !10
  store i8 %i.ce, ptr %i.q, align 1, !alias.scope !14348
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread
  %.sroa.06.0.i.i = phi i8 [ %i.bw, %bb.j ], [ %i.br, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.j ], [ 3, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread ] ; 2 uses
  %i.cf = icmp ne i8 %.sroa.06.0.i.i, 0
  %i.cg = icmp eq i8 %i.br, 0
  %or.cond.i.i = or i1 %i.cg, %i.cf
  br i1 %or.cond.i.i, label %bb.l, label %_RNvXsr_Cs6kQH99PsUHL_4itoahNtB5_8Unsigned3fmt.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ch = add nsw i64 %.sroa.0.0.i.i, -1          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch
  %i.cj = add nuw nsw i8 %.sroa.06.0.i.i, 48
  store i8 %i.cj, ptr %i.ci, align 1, !alias.scope !14348
  br label %_RNvXsr_Cs6kQH99PsUHL_4itoahNtB5_8Unsigned3fmt.exit.i

_RNvXsr_Cs6kQH99PsUHL_4itoahNtB5_8Unsigned3fmt.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.1.i.i = phi i64 [ %i.ch, %bb.l ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %i.ck = xor i64 %.sroa.0.1.i.i, 3               ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14349)
  %i.cm = load i64, ptr %.val, align 8, !range !12, !alias.scope !14349, !noalias !14334, !noundef !10
  %i.cn = load i64, ptr %i.c, align 8, !alias.scope !14349, !noalias !14334, !noundef !10 ; 4 uses
  %i.co = icmp sgt i64 %i.cn, -1
  call void @llvm.assume(i1 %i.co)
  %i.cp = sub nsw i64 %i.cm, %i.cn
  %i.cq = icmp ult i64 %i.ck, %i.cp
  br i1 %i.cq, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit, !prof !13

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %_RNvXsr_Cs6kQH99PsUHL_4itoahNtB5_8Unsigned3fmt.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14350)
  %i.cr = load ptr, ptr %i.o, align 8, !alias.scope !14351, !noalias !14337, !nonnull !10, !noundef !10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull readonly align 1 %i.cl, i64 range(i64 0, -9223372036854775808) %i.ck, i1 false), !noalias !14351
  %i.ct = add nuw i64 %i.cn, %i.ck
  store i64 %i.ct, ptr %i.c, align 8, !alias.scope !14351, !noalias !14337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXsr_Cs6kQH99PsUHL_4itoahNtB5_8Unsigned3fmt.exit.i
  %i.cu = call noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileE14write_all_coldCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef range(i64 0, -9223372036854775808) %i.ck) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not13 = icmp eq ptr %i.cu, null
  br i1 %.not13, label %bb.m, label %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9end_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit

bb.m:                                             ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.thread, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit
  %i.cv = icmp eq ptr %i.ax, %i.m
  br i1 %i.cv, label %._crit_edge, label %.peel.next, !llvm.loop !14326

_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9end_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.peel, %bb.i, %bb.h, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter11begin_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit
  %.sroa.0.1 = phi ptr [ %i.l, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter11begin_arrayQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit ], [ null, %bb.i ], [ %i.bm, %bb.h ], [ %i.as, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit.peel ], [ %i.cu, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8QINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit ], [ %i.bg, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsG258MDvU3F_3std2fs4FileEECsl8OoimOLbh_6qdrant.exit ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB2o_B2P_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val8 = load i64, ptr %i.b, align 8, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14374)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !14374, !noalias !14375, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14376
  %i.c = icmp eq i64 %.val8, 0
  br i1 %i.c, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !14377 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not.peel.i.i = icmp eq ptr %i.e, null
  br i1 %.not.peel.i.i, label %.loopexit, label %bb.b

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.a
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14376
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !14378 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not.peel.i.i17 = icmp eq ptr %i.g, null
  br i1 %.not.peel.i.i17, label %.loopexit30, label %bb.c

bb.b:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit
  %i.h = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i

bb.c:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread
  %i.i = extractvalue { ptr, ptr } %i.f, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14379
  br label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  %i.k = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  %i.l = call noundef align 8 ptr @_RINvXNtNtCs4R3jSB693Zs_4uuid8external13serde_supportNtB7_4UuidNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeINtNtCs8O45qwFIwQX_10serde_json3ser16MapKeySerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1T_16CompactFormatterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !14380 ; 2 uses
  %.not.i.i.i.peel.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.peel.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3h_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1M_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1N_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i, label %.loopexit30

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3h_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1M_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1N_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i
  %.val.i5.i.i.i.peel.i.i = load ptr, ptr %0, align 8, !noalias !14381, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.peel.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14381
  %i.m = call noundef align 8 ptr @_RINvXNvNtCs5QaNqjAn6vc_5shard16segment_manifest1__NtB5_20SegmentManifestStateNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !14382 ; 2 uses
  %.not7.peel.i.i = icmp eq ptr %i.m, null
  br i1 %.not7.peel.i.i, label %.peel.next.i.i, label %.loopexit30

.peel.next.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3h_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1M_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1N_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3h_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1M_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1N_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i
  %i.n = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !14377 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  %.val28.pre = load ptr, ptr %0, align 8         ; 2 uses
  br i1 %.not.i.i, label %.loopexit, label %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %.peel.next.i.i
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val28.pre, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14383
  %i.p = call noundef align 8 ptr @_RINvXNtNtCs4R3jSB693Zs_4uuid8external13serde_supportNtB7_4UuidNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeINtNtCs8O45qwFIwQX_10serde_json3ser16MapKeySerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1T_16CompactFormatterEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !14384 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3h_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1M_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1N_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i, label %.loopexit30

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3h_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1M_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1N_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.q = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %.val.i5.i.i.i.i.i = load ptr, ptr %0, align 8, !noalias !14385, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14385
  %i.r = call noundef align 8 ptr @_RINvXNvNtCs5QaNqjAn6vc_5shard16segment_manifest1__NtB5_20SegmentManifestStateNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !14386 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i, label %.peel.next.i.i, label %.loopexit30, !llvm.loop !14373

.loopexit:                                        ; preds = %.peel.next.i.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit
  %.val28 = phi ptr [ %.val.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit ], [ %.val28.pre, %.peel.next.i.i ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val28, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %.loopexit30

.loopexit30:                                      ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3h_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1M_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1N_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %.loopexit, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3h_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1M_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1N_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i
  %.sroa.0.0 = phi ptr [ null, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread ], [ %i.m, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3h_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1M_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1N_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i ], [ %i.l, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant.exit.i.i.i.peel.i.i ], [ null, %.loopexit ], [ %i.r, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3h_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1M_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1N_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i ], [ %i.p, %_RINvXs6_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeMap13serialize_keyRNtCs4R3jSB693Zs_4uuid4UuidECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapRNtNtBV_6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB2o_B2K_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val8 = load i64, ptr %i.b, align 8, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14416)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !14416, !noalias !14417, !nonnull !10, !align !11, !noundef !10 ; 8 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14418
  %.not = icmp eq i64 %.val8, 0
  br i1 %.not, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14418
  %i.c = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !14419 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 3 uses
  %.not.peel.i.i = icmp eq ptr %i.d, null
  br i1 %.not.peel.i.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtBY_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapRBU_RB1w_RINtB6_7HashMapBU_B1w_EE0INtNtB2J_6result6ResultuNtNtB3W_5error5ErrorEECsl8OoimOLbh_6qdrant.exit, label %bb.c

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.a
  %i.e = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !14419 ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 3 uses
  %.not.peel.i.i27 = icmp eq ptr %i.f, null
  br i1 %.not.peel.i.i27, label %.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val8.peel.i.i = load ptr, ptr %i.h, align 8, !noalias !14419
  %i.i = getelementptr i8, ptr %i.f, i64 16
  %.val9.peel.i.i = load i64, ptr %i.i, align 8, !noalias !14419
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3v_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i

bb.c:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit
  %i.j = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = getelementptr i8, ptr %i.d, i64 8
  %.val8.peel.i.i30 = load ptr, ptr %i.k, align 8, !noalias !14419
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %.val9.peel.i.i31 = load i64, ptr %i.l, align 8, !noalias !14419
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14420
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3v_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3v_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i: ; preds = %bb.b, %bb.c
  %.val9.peel.i.i34 = phi i64 [ %.val9.peel.i.i31, %bb.c ], [ %.val9.peel.i.i, %bb.b ]
  %.val8.peel.i.i32 = phi ptr [ %.val8.peel.i.i30, %bb.c ], [ %.val8.peel.i.i, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.peel.i.i32) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14421
  call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.peel.i.i32, i64 noundef %.val9.peel.i.i34)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14422
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14423
  %i.n = call noundef align 8 ptr @_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types8manifest1__NtB5_15SegmentManifestNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !14424 ; 2 uses
  %.not7.peel.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.peel.i.i, label %.peel.next.i.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtBY_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapRBU_RB1w_RINtB6_7HashMapBU_B1w_EE0INtNtB2J_6result6ResultuNtNtB3W_5error5ErrorEECsl8OoimOLbh_6qdrant.exit

.peel.next.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3v_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3v_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i
  %i.o = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !14419 ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %.thread.loopexit, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3v_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3v_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i: ; preds = %.peel.next.i.i
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.val8.i.i = load ptr, ptr %i.r, align 8, !noalias !14419 ; 2 uses
  %i.s = getelementptr i8, ptr %i.p, i64 16
  %.val9.i.i = load i64, ptr %i.s, align 8, !noalias !14419
  %.val.i.i.i.i.i.i = load ptr, ptr %0, align 8, !noalias !14425, !nonnull !10, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14425
  %.val9.i.i.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !14426, !noalias !14427, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14428
  call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val9.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.i.i, i64 noundef %.val9.i.i)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14429
  %.val.i5.i.i.i.i.i = load ptr, ptr %0, align 8, !noalias !14430, !nonnull !10, !align !11, !noundef !10
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14430
  %i.t = call noundef align 8 ptr @_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types8manifest1__NtB5_15SegmentManifestNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0), !noalias !14431 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.t, null
  br i1 %.not7.i.i, label %.peel.next.i.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtBY_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapRBU_RB1w_RINtB6_7HashMapBU_B1w_EE0INtNtB2J_6result6ResultuNtNtB3W_5error5ErrorEECsl8OoimOLbh_6qdrant.exit, !llvm.loop !14415

.thread.loopexit:                                 ; preds = %.peel.next.i.i
  %.val22.pre = load ptr, ptr %0, align 8
  br label %.thread

.thread:                                          ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread, %.thread.loopexit
  %.val22 = phi ptr [ %.val22.pre, %.thread.loopexit ], [ %.val.i, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtBY_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapRBU_RB1w_RINtB6_7HashMapBU_B1w_EE0INtNtB2J_6result6ResultuNtNtB3W_5error5ErrorEECsl8OoimOLbh_6qdrant.exit

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtBY_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapRBU_RB1w_RINtB6_7HashMapBU_B1w_EE0INtNtB2J_6result6ResultuNtNtB3W_5error5ErrorEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3v_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i, %.thread, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3v_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i
  %.sroa.0.0 = phi ptr [ null, %.thread ], [ %i.n, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3v_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i ], [ null, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit ], [ %i.t, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs607s0NAIaWN_7segment10data_types8manifest15SegmentManifestEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3v_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapRNtNtBV_6string6StringRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsRINtNtNtNtBV_11collections5btree3map8BTreeMapB2o_B2K_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14465)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !14465, !noalias !14464, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !14465, !noalias !14464, !noundef !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !14465, !noalias !14464, !noundef !10
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14464, !noalias !14465
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !14464, !noalias !14465
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.d, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !14464, !noalias !14465
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !14464, !noalias !14465
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !14464, !noalias !14465
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.d, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !14464, !noalias !14465
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink19.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sink.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  store i64 %.sink19.i, ptr %i.a, align 8, !alias.scope !14464, !noalias !14465
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i, ptr %i.g, align 8, !alias.scope !14464, !noalias !14465
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i, ptr %i.h, align 8, !alias.scope !14464, !noalias !14465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14466)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !14466, !noalias !14467, !nonnull !10, !align !11, !noundef !10 ; 8 uses
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14468
  %.not = icmp eq i64 %.sink.i, 0
  br i1 %.not, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14468
  %i.i = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !14469 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %.not.peel.i.i = icmp eq ptr %i.j, null
  br i1 %.not.peel.i.i, label %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtBc_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtBc_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapRBY_RB1j_RINtB6_8BTreeMapBY_B1j_EE0INtNtB2t_6result6ResultuNtNtB3G_5error5ErrorEECsl8OoimOLbh_6qdrant.exit, label %bb.e

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.c
  %i.k = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !14469 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %.not.peel.i.i29 = icmp eq ptr %i.l, null
  br i1 %.not.peel.i.i29, label %.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit.thread
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val8.peel.i.i = load ptr, ptr %i.n, align 8, !noalias !14469
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %.val9.peel.i.i = load i64, ptr %i.o, align 8, !noalias !14469
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3s_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i

bb.e:                                             ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant.exit
  %i.p = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = getelementptr i8, ptr %i.j, i64 8
  %.val8.peel.i.i32 = load ptr, ptr %i.q, align 8, !noalias !14469
  %i.r = getelementptr i8, ptr %i.j, i64 16
  %.val9.peel.i.i33 = load i64, ptr %i.r, align 8, !noalias !14469
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14470
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3s_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEINtNtBe_6result6ResultuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvYQINtNtB3s_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0Csl8OoimOLbh_6qdrant.exit.peel.i.i: ; preds = %bb.d, %bb.e
  %.val9.peel.i.i36 = phi i64 [ %.val9.peel.i.i33, %bb.e ], [ %.val9.peel.i.i, %bb.d ]
  %.val8.peel.i.i34 = phi ptr [ %.val8.peel.i.i32, %bb.e ], [ %.val8.peel.i.i, %bb.d ] ; 2 uses
  %i.s = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.peel.i.i34) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !14471
  call fastcc void @_RINvNtCs8O45qwFIwQX_10serde_json3ser27format_escaped_str_contentsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.peel.i.i34, i64 noundef %.val9.peel.i.i36)
end_hunk_2
