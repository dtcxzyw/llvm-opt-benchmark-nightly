Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/lsp_server-845110c84ac35e73.lsp_server.ccb47bab1596fc87-cgu.14?download=true
inline.NumInlined: 175
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXNtNtCscvBHLZPbXnS_10serde_json5value3serNtB5_5ValueNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECshzDG46PUpLf_10lsp_server:bb.a

.loopexit:                                        ; preds = %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_mapCshzDG46PUpLf_10lsp_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not103, label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer14serialize_boolCshzDG46PUpLf_10lsp_server.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.thread, %.loopexit
  %.val43 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val43, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer14serialize_boolCshzDG46PUpLf_10lsp_server.exit

.loopexit93:                                      ; preds = %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECshzDG46PUpLf_10lsp_server.exit, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECshzDG46PUpLf_10lsp_server.exit.peel
  %.lcssa91 = phi ptr [ %i.af, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECshzDG46PUpLf_10lsp_server.exit.peel ], [ %i.am, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECshzDG46PUpLf_10lsp_server.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer14serialize_boolCshzDG46PUpLf_10lsp_server.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB8_11Deserialize11deserializeINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content19ContentDeserializerNtNtB1p_5error5ErrorEECshzDG46PUpLf_10lsp_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 !guid !111 {
bb.a:
  tail call void @_RINvXsr_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCscvBHLZPbXnS_10serde_json5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB1Z_5impls13OptionVisitorNtNtB1k_5value5ValueEECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB8_5value5ValueEECshzDG46PUpLf_10lsp_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 !guid !120 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !121, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !8, !alias.scope !121, !noundef !4
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !122, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !122
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !121
  %i.e = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !121 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !123, !nonnull !4, !align !5, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.f = load i8, ptr %3, align 8, !range !9, !alias.scope !126, !noundef !4
  %.not.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB8_9Serialize9serializeQINtNtB1q_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECshzDG46PUpLf_10lsp_server.exit.thread.i, label %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB8_9Serialize9serializeQINtNtB1q_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECshzDG46PUpLf_10lsp_server.exit.i

_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB8_9Serialize9serializeQINtNtB1q_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECshzDG46PUpLf_10lsp_server.exit.thread.i: ; preds = %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !125, !noalias !123, !nonnull !4, !align !5, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !127
  br label %bb.c

_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB8_9Serialize9serializeQINtNtB1q_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECshzDG46PUpLf_10lsp_server.exit.i: ; preds = %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit
  %i.g = tail call fastcc noundef align 8 ptr @_RINvXNtNtCscvBHLZPbXnS_10serde_json5value3serNtB5_5ValueNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB8_5value5ValueEECshzDG46PUpLf_10lsp_server.exit

bb.c:                                             ; preds = %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB8_9Serialize9serializeQINtNtB1q_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECshzDG46PUpLf_10lsp_server.exit.i, %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB8_9Serialize9serializeQINtNtB1q_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECshzDG46PUpLf_10lsp_server.exit.thread.i
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB8_5value5ValueEECshzDG46PUpLf_10lsp_server.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB8_5value5ValueEECshzDG46PUpLf_10lsp_server.exit: ; preds = %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB8_9Serialize9serializeQINtNtB1q_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECshzDG46PUpLf_10lsp_server.exit.i, %bb.c
  %.sroa.0.1.i = phi ptr [ null, %bb.c ], [ %i.g, %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB8_9Serialize9serializeQINtNtB1q_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECshzDG46PUpLf_10lsp_server.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeNtNtB8_5value5ValueECshzDG46PUpLf_10lsp_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 !guid !134 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !135, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !8, !alias.scope !135, !noundef !4
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !136, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !136
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !135
  %i.e = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !135 ; 0 uses
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !137, !nonnull !4, !align !5, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !137, !inline_history !133
  %i.f = tail call fastcc noundef align 8 ptr @_RINvXNtNtCscvBHLZPbXnS_10serde_json5value3serNtB5_5ValueNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias noundef align 8 dereferenceable(8) %i.a), !inline_history !133
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECshzDG46PUpLf_10lsp_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 !guid !141 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !142, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !8, !alias.scope !142, !noundef !4
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !143, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !143
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !142
  %i.e = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !142 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val3 = load ptr, ptr %i.f, align 8            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val4 = load i64, ptr %i.g, align 8
  %.val.i5 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !5, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.h = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val3, i64 noundef %.val4) ; 0 uses
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeNtNtCshzDG46PUpLf_10lsp_server3msg13ResponseErrorEB2Q_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %3) unnamed_addr #0 !guid !149 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !150, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !8, !alias.scope !150, !noundef !4
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !151, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !151
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !150
  %i.e = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !150 ; 0 uses
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !152, !nonnull !4, !align !5, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !152
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtCshzDG46PUpLf_10lsp_server3msgsa_1__NtB5_13ResponseErrorNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeNtNtCshzDG46PUpLf_10lsp_server3msg9RequestIdEB2Q_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 !guid !158 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !159, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !8, !alias.scope !159, !noundef !4
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !160, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !160
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !159
  %i.e = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !159 ; 0 uses
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !161, !nonnull !4, !align !5, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !161
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtCshzDG46PUpLf_10lsp_server3msgs0_1__NtB5_9RequestIdNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeReECshzDG46PUpLf_10lsp_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 !guid !165 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !166, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !8, !alias.scope !166, !noundef !4
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !167, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !167
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !166
  %i.e = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !166 ; 0 uses
  %.val3 = load ptr, ptr %3, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4 = load i64, ptr %i.f, align 8
  %.val.i5 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !5, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.g = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val3, i64 noundef %.val4) ; 0 uses
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryelECshzDG46PUpLf_10lsp_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 !guid !173 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !174, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !8, !alias.scope !174, !noundef !4
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !175, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !175
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !174
  %i.f = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !174 ; 0 uses
  %.val3 = load i32, ptr %3, align 4              ; 2 uses
  %.val.i4 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !5, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val9.i = load ptr, ptr %i.b, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.g = icmp sgt i32 %.val3, -1
  %.sroa.0.0.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %.val3, i1 false) ; 6 uses
  %i.h = icmp ugt i32 %.sroa.0.0.i.i.i.i.i, 9999
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit
  %.sroa.09.0.lcssa.i.i.i.i.i = phi i64 [ 11, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit ], [ 7, %.lr.ph.i.i.i.i.i ], [ 3, %.lr.ph.i.i.i.i.i.1 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit ], [ %i.k, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.i.i.i.i.i.1 ] ; 3 uses
  %i.i = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i, 99
  br i1 %i.i, label %bb.c, label %bb.d

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECshzDG46PUpLf_10lsp_server.exit
  %i.j = urem i32 %.sroa.0.0.i.i.i.i.i, 10000
  %i.k = udiv i32 %.sroa.0.0.i.i.i.i.i, 10000     ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i32 %i.j to i16 ; 2 uses
  %i.l = udiv i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.m = shl nuw nsw i16 %i.l, 1
  %i.n = zext nneg i16 %i.m to i64
  %i.o = urem i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.p = shl nuw nsw i16 %i.o, 1
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @23, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.t = load i16, ptr %i.r, align 1, !noalias !176
  store i16 %i.t, ptr %i.s, align 1, !alias.scope !176
  %i.u = getelementptr inbounds nuw i8, ptr @23, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.w = load i16, ptr %i.u, align 1, !noalias !176
  store i16 %i.w, ptr %i.v, align 1, !alias.scope !176
  %i.x = icmp ugt i32 %.sroa.0.0.i.i.i.i.i, 99999999
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %4 = urem i32 %i.k, 10000
  %5 = udiv i32 %.sroa.0.0.i.i.i.i.i, 100000000
  %.lhs.trunc.i.i.i.i.i.1 = trunc nuw nsw i32 %4 to i16 ; 2 uses
  %6 = udiv i16 %.lhs.trunc.i.i.i.i.i.1, 100
  %7 = shl nuw nsw i16 %6, 1
  %8 = zext nneg i16 %7 to i64
  %9 = urem i16 %.lhs.trunc.i.i.i.i.i.1, 100
  %10 = shl nuw nsw i16 %9, 1
  %11 = zext nneg i16 %10 to i64
  %12 = getelementptr inbounds nuw i8, ptr @23, i64 %8
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %14 = load i16, ptr %12, align 1, !noalias !176
  store i16 %14, ptr %13, align 1, !alias.scope !176
  %15 = getelementptr inbounds nuw i8, ptr @23, i64 %11
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %17 = load i16, ptr %15, align 1, !noalias !176
  store i16 %17, ptr %16, align 1, !alias.scope !176
  br label %._crit_edge.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i to i16 ; 2 uses
  %i.y = urem i16 %.lhs.trunc24.i.i.i.i.i, 100
  %i.z = shl nuw nsw i16 %i.y, 1
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = udiv i16 %.lhs.trunc24.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i = zext nneg i16 %i.ab to i32
  %i.ac = add i64 %.sroa.09.0.lcssa.i.i.i.i.i, -2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr @23, i64 %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac
  %i.af = load i16, ptr %i.ad, align 1, !noalias !176
  store i16 %i.af, ptr %i.ae, align 1, !alias.scope !176
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i = phi i64 [ %i.ac, %bb.c ], [ %.sroa.09.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i, %bb.c ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ag = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i, 10
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add i64 %.sroa.09.1.i.i.i.i.i, -2       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr @23, i64 %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.am = load i16, ptr %i.ak, align 1, !noalias !176
  store i16 %i.am, ptr %i.al, align 1, !alias.scope !176
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.an = add i64 %.sroa.09.1.i.i.i.i.i, -1       ; 2 uses
  %i.ao = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  %i.aq = or disjoint i8 %i.ao, 48
  store i8 %i.aq, ptr %i.ap, align 1, !alias.scope !176
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.09.2.i.i.i.i.i = phi i64 [ %i.an, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  br i1 %i.g, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valuelECshzDG46PUpLf_10lsp_server.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = add i64 %.sroa.09.2.i.i.i.i.i, -1       ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  store i8 45, ptr %i.as, align 1, !alias.scope !176
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valuelECshzDG46PUpLf_10lsp_server.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valuelECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.g, %bb.h
  %.sroa.09.3.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i, %bb.g ], [ %i.ar, %bb.h ] ; 2 uses
  %i.at = sub i64 11, %.sroa.09.3.i.i.i.i.i       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i
  %i.av = icmp ult i64 %i.at, 12
  tail call void @llvm.assume(i1 %i.av)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef range(i64 0, -9223372036854775808) %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer11collect_seqRINtNtCscdodAO9FK5_5alloc3vec3VecNtB7_5ValueEECshzDG46PUpLf_10lsp_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !196 {
bb.a:
  %.sroa.4.i = alloca [31 x i8], align 1          ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9 = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %.idx = shl nuw nsw i64 %.val9, 5
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB4_10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_seq(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 1, i64 %.val9)
  %i.i = load i64, ptr %i.d, align 8, !range !10, !noundef !4
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !5, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.n = icmp eq i64 %.val9, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYNtNtB1n_3ser10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer11collect_seqRINtNtCscdodAO9FK5_5alloc3vec3VecB1l_EE0E0CshzDG46PUpLf_10lsp_server.exit.i.i, %.lr.ph.i.i
  %i.q = phi ptr [ %.val, %.lr.ph.i.i ], [ %i.r, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYNtNtB1n_3ser10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer11collect_seqRINtNtCscdodAO9FK5_5alloc3vec3VecB1l_EE0E0CshzDG46PUpLf_10lsp_server.exit.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !199
  store ptr %i.q, ptr %i.c, align 8, !noalias !200
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !202
  invoke void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtB2_5ValueECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  %i.s = load i8, ptr %i.b, align 8, !range !9, !noalias !202, !noundef !4
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !202
  %i.u = load i64, ptr %i.o, align 8, !alias.scope !203, !noalias !204, !noundef !4 ; 3 uses
  %i.v = load i64, ptr %i.e, align 8, !range !205, !alias.scope !203, !noalias !204, !noundef !4
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.f, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYNtNtB1n_3ser10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer11collect_seqRINtNtCscdodAO9FK5_5alloc3vec3VecB1l_EE0E0CshzDG46PUpLf_10lsp_server.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCscvBHLZPbXnS_10serde_json5value5ValueE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYNtNtB1n_3ser10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer11collect_seqRINtNtCscdodAO9FK5_5alloc3vec3VecB1l_EE0E0CshzDG46PUpLf_10lsp_server.exit.i.i unwind label %bb.g, !noalias !206

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #13
          to label %.body unwind label %bb.h, !noalias !207

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12, !noalias !207
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYNtNtB1n_3ser10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer11collect_seqRINtNtCscdodAO9FK5_5alloc3vec3VecB1l_EE0E0CshzDG46PUpLf_10lsp_server.exit.i.i: ; preds = %bb.f, %bb.e
  %i.z = load ptr, ptr %i.p, align 8, !alias.scope !203, !noalias !204, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !207
  %i.ab = add i64 %i.u, 1
  store i64 %i.ab, ptr %i.o, align 8, !alias.scope !203, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !199
  %i.ac = icmp eq ptr %i.r, %i.h
  br i1 %i.ac, label %.loopexit, label %bb.d

bb.i:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !202, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !199
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  store i8 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeVecECshzDG46PUpLf_10lsp_server.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeVecECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.m

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYNtNtB1n_3ser10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer11collect_seqRINtNtCscdodAO9FK5_5alloc3vec3VecB1l_EE0E0CshzDG46PUpLf_10lsp_server.exit.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i8 4, ptr %0, align 8, !alias.scope !208
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i, i64 31, i1 false), !noalias !209
end_hunk_0
