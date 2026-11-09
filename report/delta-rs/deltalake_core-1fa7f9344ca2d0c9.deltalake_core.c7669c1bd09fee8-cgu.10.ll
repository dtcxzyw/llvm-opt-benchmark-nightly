Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.10?download=true
inline.NumInlined: 7791
inline.NumDeleted: 3011
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBR_6string6StringEECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.g
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEEB3x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) unnamed_addr #0 !guid !13553 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13554)
  %i.a = load i8, ptr %0, align 8, !range !73, !alias.scope !13554, !noundef !32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #55, !noalias !13555
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !13554, !nonnull !32, !align !36, !noundef !32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !75, !alias.scope !13554, !noundef !32
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !13555, !nonnull !32, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !13555
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.e, align 1, !alias.scope !13554
  %i.h = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !13554 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13556)
  %.val.i4 = load ptr, ptr %i.d, align 8, !noalias !13556, !nonnull !32, !align !36, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !13556
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13558)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = load i8, ptr %i.i, align 8, !range !75, !alias.scope !13559, !noundef !32
  %.not.i.i = icmp eq i8 %i.j, 2
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.thread.i, label %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i

_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.thread.i: ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !13558, !noalias !13556, !nonnull !32, !align !36, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !13560
  br label %bb.f

_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i: ; preds = %bb.e
  %i.k = tail call noundef align 8 ptr @_RINvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts0_1__NtB5_13FileSelectionNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEBb_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEEB3C_.exit

bb.f:                                             ; preds = %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i, %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.thread.i
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEEB3C_.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEEB3C_.exit: ; preds = %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i, %bb.f
  %.sroa.0.1.i = phi ptr [ null, %bb.f ], [ %i.k, %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelEEB3x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %3) unnamed_addr #0 !guid !13569 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13570)
  %i.a = load i8, ptr %0, align 8, !range !73, !alias.scope !13570, !noundef !32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #55, !noalias !13571
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !13570, !nonnull !32, !align !36, !noundef !32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !75, !alias.scope !13570, !noundef !32
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !13571, !nonnull !32, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !13571
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.e, align 1, !alias.scope !13570
  %i.h = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !13570 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13572)
  %.val.i4 = load ptr, ptr %i.d, align 8, !noalias !13572, !nonnull !32, !align !36, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !13572
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13574)
  %i.i = load i8, ptr %3, align 1, !range !67, !alias.scope !13575, !noundef !32
  %.not.i.i = icmp eq i8 %i.i, 3
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.thread.i, label %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i

_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.thread.i: ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !13574, !noalias !13572, !nonnull !32, !align !36, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !13576
  br label %bb.f

_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i: ; preds = %bb.e
  %i.j = tail call noundef align 8 ptr @_RINvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionssm_1__NtB5_14IsolationLevelNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEBb_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.f, label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelEEB3C_.exit

bb.f:                                             ; preds = %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i, %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.thread.i
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelEEB3C_.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelEEB3C_.exit: ; preds = %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i, %bb.f
  %.sroa.0.1.i = phi ptr [ null, %bb.f ], [ %i.j, %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorEEB3x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 !guid !13585 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13586)
  %i.a = load i8, ptr %0, align 8, !range !73, !alias.scope !13586, !noundef !32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #55, !noalias !13587
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !13586, !nonnull !32, !align !36, !noundef !32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !75, !alias.scope !13586, !noundef !32
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !13587, !nonnull !32, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !13587
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.e, align 1, !alias.scope !13586
  %i.h = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !13586 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13588)
  %.val.i4 = load ptr, ptr %i.d, align 8, !noalias !13588, !nonnull !32, !align !36, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !13588
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13590)
  %i.i = load i64, ptr %3, align 8, !range !33, !alias.scope !13591, !noundef !32
  %.not.i.i = icmp eq i64 %i.i, -9223372036854775808
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.thread.i, label %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i

_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.thread.i: ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !13590, !noalias !13588, !nonnull !32, !align !36, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !13592
  br label %bb.f

_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i: ; preds = %bb.e
  %i.j = tail call noundef align 8 ptr @_RINvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionss4_1__NtB5_24DeletionVectorDescriptorNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEBb_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.f, label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorEEB3C_.exit

bb.f:                                             ; preds = %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i, %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.thread.i
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorEEB3C_.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorEEB3C_.exit: ; preds = %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i, %bb.f
  %.sroa.0.1.i = phi ptr [ null, %bb.f ], [ %i.j, %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorENtB8_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB1u_.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsbvkFyIu7lgC_4core6option6OptionbEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #0 !guid !13596 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13597)
  %i.a = load i8, ptr %0, align 8, !range !73, !alias.scope !13597, !noundef !32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #55, !noalias !13598
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !13597, !nonnull !32, !align !36, !noundef !32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !75, !alias.scope !13597, !noundef !32
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !13598, !nonnull !32, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !13598
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.e, align 1, !alias.scope !13597
  %i.h = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !13597 ; 0 uses
  %.val4 = load i8, ptr %3, align 1               ; 2 uses
  %.val.i5 = load ptr, ptr %i.d, align 8, !nonnull !32, !align !36, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val9.i = load ptr, ptr %i.d, align 8          ; 5 uses
  %.not.i.i = icmp eq i8 %.val4, 2
  br i1 %.not.i.i, label %bb.f, label %4

4:                                                ; preds = %bb.e
  %5 = trunc nuw i8 %.val4 to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  br i1 %5, label %.split.i.i.i.i.i.i, label %.split2.i.i.i.i.i.i

.split2.i.i.i.i.i.i:                              ; preds = %4
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef range(i64 0, -9223372036854775808) 5)
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionbEECs14kWLkQVSKO_14deltalake_core.exit

.split.i.i.i.i.i.i:                               ; preds = %4
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionbEECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionbEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionbEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.split2.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %bb.f
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsbvkFyIu7lgC_4core6option6OptionlEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !13604 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13605)
  %i.b = load i8, ptr %0, align 8, !range !73, !alias.scope !13605, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #55, !noalias !13606
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !13605, !nonnull !32, !align !36, !noundef !32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !75, !alias.scope !13605, !noundef !32
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !13606, !nonnull !32, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !13606
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.f, align 1, !alias.scope !13605
  %i.i = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !13605 ; 0 uses
  %.val4 = load i32, ptr %3, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val5 = load i32, ptr %i.j, align 4            ; 2 uses
  %.val.i6 = load ptr, ptr %i.e, align 8, !nonnull !32, !align !36, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val10.i = load ptr, ptr %i.e, align 8         ; 4 uses
  %i.k = trunc nuw i32 %.val4 to i1
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = icmp slt i32 %.val5, 0
  %.sroa.07.0.i.i.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %.val5, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.n = call noundef i64 @_RNvXst_CshiDJuw1g1VQ_4itoamNtB5_8Unsigned3fmt(i32 noundef %.sroa.07.0.i.i.i.i.i.i.i, ptr noalias noundef nonnull dereferenceable(10) %i.m) ; 5 uses
  %i.o = add i64 %i.n, 1
  br i1 %i.l, label %bb.g, label %_RINvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB6_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_somelECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.p = icmp ult i64 %i.n, 11
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 45, ptr %i.q, align 1, !alias.scope !13607
  br label %_RINvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB6_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_somelECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @352) #55
  unreachable

_RINvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB6_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_somelECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.h, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.h ], [ %i.o, %bb.f ] ; 2 uses
  %i.r = sub nuw i64 11, %.sroa.0.0.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionlEECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionlEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionlEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB6_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_somelECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.j
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsbvkFyIu7lgC_4core6option6OptionxEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !13613 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13614)
  %i.b = load i8, ptr %0, align 8, !range !73, !alias.scope !13614, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #55, !noalias !13615
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !13614, !nonnull !32, !align !36, !noundef !32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !75, !alias.scope !13614, !noundef !32
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !13615, !nonnull !32, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !13615
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.f, align 1, !alias.scope !13614
  %i.i = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !13614 ; 0 uses
  %.val4 = load i64, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val5 = load i64, ptr %i.j, align 8            ; 2 uses
  %.val.i6 = load ptr, ptr %i.e, align 8, !nonnull !32, !align !36, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val10.i = load ptr, ptr %i.e, align 8         ; 4 uses
  %i.k = trunc nuw i64 %.val4 to i1
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = icmp slt i64 %.val5, 0
  %.sroa.07.0.i.i.i.i.i.i.i = tail call i64 @llvm.abs.i64(i64 %.val5, i1 false)
  %i.m = call noundef i64 @_RNvXsu_CshiDJuw1g1VQ_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i.i.i.i.i.i.i, ptr noalias noundef nonnull dereferenceable(20) %i.a) ; 2 uses
  br i1 %i.l, label %bb.g, label %_RINvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB6_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_somexECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.n = add i64 %i.m, -1                         ; 4 uses
  %i.o = icmp ult i64 %i.n, 20
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 45, ptr %i.p, align 1, !alias.scope !13616
  br label %_RINvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB6_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_somexECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #55
  unreachable

_RINvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB6_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_somexECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.h, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.h ], [ %i.m, %bb.f ] ; 2 uses
  %i.q = sub nuw i64 20, %.sroa.0.0.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef range(i64 0, -9223372036854775808) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionxEECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionxEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionxEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB6_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_somexECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.j
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBR_6string6StringB3I_EECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !13657 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13658)
  %i.b = load i8, ptr %0, align 8, !range !73, !alias.scope !13658, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #55, !noalias !13659
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !13658, !nonnull !32, !align !36, !noundef !32 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !75, !alias.scope !13658, !noundef !32
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !13659, !nonnull !32, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !13659
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.f, align 1, !alias.scope !13658
  %i.i = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !13658 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13660)
  %.val.i4 = load ptr, ptr %i.e, align 8, !noalias !13660, !nonnull !32, !align !36, !noundef !32
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !13660
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13664)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13665
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13666)
end_hunk_0
