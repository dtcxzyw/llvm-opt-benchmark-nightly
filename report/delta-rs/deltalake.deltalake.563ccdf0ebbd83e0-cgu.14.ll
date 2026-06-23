inline.NumInlined: 4294
inline.NumDeleted: 1503
begin_hunk_0_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake:bb.a
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs7p2uQeJxui2_9deltalake.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas0_1__NtB5_11StructFieldNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !1792, !noalias !1793, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1796
  store i8 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val30 = load i64, ptr %i.c, align 8
  %i.d = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 4), !noalias !1797 ; 0 uses
  %.val.i6.i.i = load ptr, ptr %1, align 8, !noalias !1804, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1804
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val30), !noalias !1804 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %.val.i = load ptr, ptr %1, align 8, !noalias !1808, !nonnull !12, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1808
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !1805, !noalias !1814
  %i.g = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 4), !noalias !1815 ; 0 uses
  %i.h = call fastcc noundef align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f) #44, !inline_history !1816 ; 2 uses
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = call noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryebECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  %i.l = load i8, ptr %i.a, align 8, !range !14, !alias.scope !1817, !noalias !1820, !noundef !12
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs7p2uQeJxui2_9deltalake.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  %i.n = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1828, !noalias !1829, !nonnull !12, !align !13, !noundef !12 ; 5 uses
  %i.o = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !range !1395, !alias.scope !1828, !noalias !1829, !noundef !12
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i33 = load ptr, ptr %i.n, align 8, !noalias !1832, !nonnull !12, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i33, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1832
  br label %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs7p2uQeJxui2_9deltalake.exit

_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.a
  %i.q = tail call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json3ser17invalid_raw_value(), !noalias !1833
  br label %bb.d

_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.c
  %i.r = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 8), !noalias !1834 ; 0 uses
  %.val.i4.i.i = load ptr, ptr %i.n, align 8, !noalias !1835, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1835
  %i.s = tail call fastcc noundef align 8 ptr @_RINvXs1I_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtB9_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtB1K_3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias noundef align 8 dereferenceable(8) %i.n) #44, !noalias !1838 ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %_RNvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct3endCs7p2uQeJxui2_9deltalake.exit, label %bb.d

_RNvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct3endCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs7p2uQeJxui2_9deltalake.exit
  %.val.i.i35 = load ptr, ptr %i.n, align 8, !noalias !1839, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i35, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1839
  br label %bb.d

bb.d:                                             ; preds = %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit, %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs7p2uQeJxui2_9deltalake.exit, %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs7p2uQeJxui2_9deltalake.exit.thread, %_RNvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct3endCs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct3endCs7p2uQeJxui2_9deltalake.exit ], [ %i.s, %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs7p2uQeJxui2_9deltalake.exit ], [ %i.h, %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit ], [ %i.q, %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECs7p2uQeJxui2_9deltalake.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB5_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB27_4read7StrReadEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB2t_11StructFieldNtB1j_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @58, i64 noundef 4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas4_1__NtB5_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !1850, !noalias !1851, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1854
  store i8 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26 = load i64, ptr %i.c, align 8
  %i.d = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 4), !noalias !1855 ; 0 uses
  %.val.i6.i.i = load ptr, ptr %1, align 8, !noalias !1862, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1862
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val26), !noalias !1862 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  %.val.i.i30 = load ptr, ptr %1, align 8, !noalias !1869, !nonnull !12, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i30, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1869, !inline_history !1873
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !1874, !noalias !1875
  %i.g = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 11), !noalias !1876, !inline_history !1873 ; 0 uses
  %.val.i3.i = load ptr, ptr %1, align 8, !noalias !1877, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i3.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  %i.h = load i8, ptr %i.f, align 8, !range !122, !alias.scope !1881, !noalias !1884, !noundef !12
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  tail call fastcc void @_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas8_1__NtB5_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(3) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %1)
  br label %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1881, !noalias !1884, !nonnull !12, !noundef !12
  %i.l = tail call fastcc noundef align 8 ptr @_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas4_1__NtB5_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(8) %1), !noalias !1886, !inline_history !1887
  br label %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1881, !noalias !1884, !nonnull !12, !noundef !12
  %i.o = tail call fastcc noundef align 8 ptr @_RINvXsr_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(8) %1), !noalias !1886, !inline_history !1887
  br label %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1881, !noalias !1884, !nonnull !12, !noundef !12
  %i.r = tail call fastcc noundef align 8 ptr @_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas6_1__NtB5_7MapTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(8) %1), !noalias !1886, !inline_history !1887
  br label %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 7), !noalias !1886, !inline_history !1887 ; 0 uses
  br label %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread

_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i31 = phi ptr [ %i.r, %bb.e ], [ %i.l, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i31, null
  br i1 %.not.i.i, label %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread, label %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit

_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.f, %bb.b, %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = call noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryebECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.t) ; 0 uses
  %.sroa.033.0.copyload = load i8, ptr %i.a, align 8
  %i.v = trunc nuw i8 %.sroa.033.0.copyload to i1
  %.sroa.434.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.w = icmp eq i8 %.sroa.434.0.copyload, 0
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond, label %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit, label %bb.g

bb.g:                                             ; preds = %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread
  %.sroa.536.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %.val.i.i29 = load ptr, ptr %.sroa.536.0.copyload, align 8, !noalias !1888, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i29, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1888
  br label %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit

_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread, %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i31, %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit ], [ null, %_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemasa_1__NtB5_8DataTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB5_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 13 uses
  %.sroa.078.i.i.i = alloca [40 x i8], align 8    ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 19 uses
  %i.m = alloca [24 x i8], align 8                ; 21 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.027.i.i.i = alloca [40 x i8], align 8    ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 12 uses
  %i.u = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  %i.v = load i8, ptr %1, align 8, !range !1231, !alias.scope !1896, !noalias !1893, !noundef !12
  switch i8 %i.v, label %bb.b [
    i8 20, label %bb.c
    i8 21, label %bb.ag
  ], !prof !1720

bb.b:                                             ; preds = %bb.a
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91), !noalias !1893
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8, !alias.scope !1893, !noalias !1896
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !1893, !noalias !1896
  br label %_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB3c_9ArrayTypeNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1896, !noalias !1893, !nonnull !12, !noundef !12 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1896, !noalias !1893, !noundef !12 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1901
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1906
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1908
  call void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z), !noalias !1917
  %i.ae = load i64, ptr %i.r, align 8, !range !62, !noalias !1908, !noundef !12 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -9223372036854775808
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !1918 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

common.resume.i:                                  ; preds = %.body.i3.i.i, %bb.da, %bb.cx, %bb.cu, %bb.cr, %.body.i.i.i, %bb.z, %bb.u, %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bm, %bb.z ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.bb, %bb.u ], [ %.pn.i.i.i, %bb.i ], [ %eh.lpad-body.i4.i.i, %.body.i3.i.i ], [ %.pn107.i.i.i, %bb.cr ], [ %i.hx, %bb.cu ], [ %.pn107.i.i.i, %bb.cx ], [ %i.ih, %bb.da ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1908
  br label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i

bb.f:                                             ; preds = %bb.d
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !1918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1908
  store i64 %i.ae, ptr %i.t, align 8, !noalias !1906
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ah, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.10.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1906
  %i.ai = icmp eq i64 %i.ab, 1
  br i1 %i.ai, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1919
  invoke fastcc void @_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %.noexc.i.i.i unwind label %bb.j, !noalias !1928

.noexc.i.i.i:                                     ; preds = %bb.g
  %i.ak = load i8, ptr %i.q, align 8, !range !314, !noalias !1919, !noundef !12 ; 2 uses
  %i.al = icmp eq i8 %i.ak, 5
  br i1 %i.al, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.am = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef 0, ptr noundef nonnull @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52), !noalias !1928
  br label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %bb.h, %bb.e
  %.sink.i.i.i = phi ptr [ %i.am, %bb.h ], [ %i.ah, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i.i, ptr %i.an, align 8, !alias.scope !1929, !noalias !1930
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !1929, !noalias !1930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1906
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i

bb.i:                                             ; preds = %bb.p, %bb.j
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.aw, %bb.p ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #39
          to label %common.resume.i unwind label %bb.w, !noalias !1928

bb.j:                                             ; preds = %bb.s, %bb.n, %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !1919, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1919
  br label %bb.o

bb.l:                                             ; preds = %.noexc.i.i.i
  %.sroa.748.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.748.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !1906
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.8.0.copyload.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !1931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1919
  store i8 %i.ak, ptr %i.s, align 8, !noalias !1906
  %.sroa.521.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i, ptr %.sroa.521.0..sroa_idx.i.i.i, align 8, !noalias !1906
  %i.ar = icmp eq i64 %i.ab, 2
  br i1 %i.ar, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1932
  invoke void @_RINvXs1_NtNtCs1gOyXocuPRE_10serde_core2de5implsbNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc45.i.i.i unwind label %bb.p, !noalias !1928

.noexc45.i.i.i:                                   ; preds = %bb.m
  %i.as = load i8, ptr %i.p, align 8, !range !14, !noalias !1932, !noundef !12
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.q, label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.n:                                             ; preds = %bb.f
  %i.au = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef 1, ptr noundef nonnull @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
          to label %bb.o unwind label %bb.j, !noalias !1928

bb.o:                                             ; preds = %bb.n, %bb.k
  %.sink92.i.i.i = phi ptr [ %i.au, %bb.n ], [ %i.aq, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink92.i.i.i, ptr %i.av, align 8, !alias.scope !1929, !noalias !1930
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !1929, !noalias !1930
  br label %bb.t

bb.p:                                             ; preds = %bb.r, %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s) #39
          to label %bb.i unwind label %bb.w, !noalias !1928

bb.q:                                             ; preds = %.noexc45.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1932, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1932
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.az = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef 2, ptr noundef nonnull @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
          to label %bb.s unwind label %bb.p, !noalias !1928

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink94.i.i.i = phi ptr [ %i.az, %bb.r ], [ %i.ay, %bb.q ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink94.i.i.i, ptr %i.ba, align 8, !alias.scope !1929, !noalias !1930
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !1929, !noalias !1930
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.t unwind label %bb.j, !noalias !1928

bb.t:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1906
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread20.i.i unwind label %bb.u, !noalias !1928

bb.u:                                             ; preds = %bb.t
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume.i unwind label %bb.v, !noalias !1928

bb.v:                                             ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1928
  unreachable

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread20.i.i: ; preds = %bb.t
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !1928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1906
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i

bb.w:                                             ; preds = %bb.p, %bb.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1928
  unreachable

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc45.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !range !14, !noalias !1932, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1932
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.027.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !1906
  %.sroa.027.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.027.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !noalias !1906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.027.i.i.i, i64 40, i1 false), !noalias !1930
  %.sroa.528.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.bf, ptr %.sroa.528.0..sroa_idx.i.i.i, align 8, !alias.scope !1929, !noalias !1930
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1906
  %.pr.pre.i.i = load i64, ptr %0, align 8, !alias.scope !1941, !noalias !1942
  %i.bg = icmp eq i64 %.pr.pre.i.i, -9223372036854775808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1906
  br i1 %i.bg, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i, label %bb.x

bb.x:                                             ; preds = %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !noalias !1942
  %i.bh = icmp eq i64 %i.ab, 3
  br i1 %i.bh, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i, label %bb.y, !prof !28

bb.y:                                             ; preds = %bb.x
  %i.bi = add nuw nsw i64 %i.ab, 576460752303423485
  %i.bj = and i64 %i.bi, 576460752303423487
  %i.bk = add nuw nsw i64 %i.bj, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1943
  store i64 3, ptr %i.o, align 8, !noalias !1943
  %i.bl = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef %i.bk, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @334)
          to label %bb.aa unwind label %bb.z, !noalias !1946

bb.z:                                             ; preds = %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.u) #39
          to label %common.resume.i unwind label %bb.af, !noalias !1946

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1943
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bn, align 8, !alias.scope !1941, !noalias !1942
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !1941, !noalias !1942
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.ab, !noalias !1946, !inline_history !300

bb.ab:                                            ; preds = %bb.aa
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %.body.i.i.i unwind label %bb.ac, !noalias !1946, !inline_history !300

bb.ac:                                            ; preds = %bb.ab
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1946, !inline_history !300
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ad, !noalias !1946, !inline_history !300

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ad, %bb.ab
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bq, %bb.ad ], [ %i.bo, %bb.ab ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.br) #39
          to label %common.resume.i unwind label %bb.ae, !noalias !1946, !inline_history !300

bb.ae:                                            ; preds = %.body.i.i.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1946, !inline_history !300
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt), !noalias !1946, !inline_history !300
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i

bb.af:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1946
  unreachable

_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.x, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread20.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1901
  br label %_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB3c_9ArrayTypeNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit

bb.ag:                                            ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1896, !noalias !1893, !nonnull !12, !noundef !12 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1896, !noalias !1893, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1950)
  %.idx.i.i = shl nuw nsw i64 %i.by, 6            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1956
  store i64 -9223372036854775808, ptr %i.m, align 8, !noalias !1956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1956
  %i.ca = icmp eq i64 %i.by, 0
  br i1 %i.ca, label %.thread.thread.i.i.i, label %.lr.ph.i.i.i

.thread.thread.i.i.i:                             ; preds = %bb.ag
  store i8 5, ptr %i.l, align 8, !noalias !1956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1956
  br label %bb.bs

.lr.ph.i.i.i:                                     ; preds = %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.589.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.690.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.639.0..sroa_idx40.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.741.0..sroa_idx42.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 10 uses
  %.sroa.586.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.687.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.622.0..sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx25.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i, -64
  %i.cf = lshr exact i64 %i.ce, 6
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.690.0.copyload189.i.i.i = phi ptr [ undef, %.lr.ph.i.i.i ], [ %.sroa.690.0.copyload188.i.i.i, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 12 uses
  %.sroa.044.0184.i.i.i = phi i8 [ 2, %.lr.ph.i.i.i ], [ %.sroa.044.1.i.i.i, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 4 uses
  %i.ch = phi ptr [ %i.bw, %.lr.ph.i.i.i ], [ %i.cj, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 14 uses
  %i.ci = phi i8 [ 5, %.lr.ph.i.i.i ], [ %i.fy, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 25 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 64 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1958
  call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  %i.cl = load i8, ptr %i.ch, align 8, !range !1231, !alias.scope !1982, !noalias !1983, !noundef !12
  switch i8 %i.cl, label %bb.ai [
    i8 1, label %bb.aj
    i8 4, label %bb.ak
    i8 12, label %bb.al
    i8 13, label %bb.aq
    i8 14, label %bb.av
    i8 15, label %bb.aw
  ], !prof !1984

bb.ai:                                            ; preds = %bb.ah
  %i.cm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ch, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97)
          to label %.noexc.i.i9.i unwind label %.loopexit.i.i.i, !noalias !1985

.noexc.i.i9.i:                                    ; preds = %bb.ai
  store ptr %i.cm, ptr %i.cc, align 8, !alias.scope !1986, !noalias !1987
  store i8 1, ptr %i.c, align 8, !alias.scope !1986, !noalias !1987
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1q_9ArrayTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !1982, !noalias !1983, !noundef !12
  %i.cp = call i8 @llvm.umin.i8(i8 %i.co, i8 3)
  store i8 %i.cp, ptr %i.cb, align 1, !alias.scope !1988, !noalias !1987
  store i8 0, ptr %i.c, align 8, !alias.scope !1988, !noalias !1987
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1q_9ArrayTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !1982, !noalias !1983, !noundef !12
  %.sink1.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cr, i64 3)
  %.sink.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.cb, align 1, !alias.scope !1993, !noalias !1987
  store i8 0, ptr %i.c, align 8, !alias.scope !1993, !noalias !1987
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1q_9ArrayTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ah
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !1982, !noalias !1983, !nonnull !12, !noundef !12 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !1982, !noalias !1983, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  switch i64 %i.cv, label %bb.ap [
    i64 4, label %bb.am
    i64 11, label %bb.an
    i64 12, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  %i.cw = load i32, ptr %i.ct, align 1
  %i.cx = icmp ne i32 %i.cw, 1701869940
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB8_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB16_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.da = load i64, ptr %i.ct, align 1
  %i.db = xor i64 %i.da, 6085610378390498405
  %i.dc = getelementptr i8, ptr %i.ct, i64 3
  %i.dd = load i64, ptr %i.dc, align 1
  %i.de = xor i64 %i.dd, 7309475598859920749
  %i.df = or i64 %i.db, %i.de
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB8_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB16_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.dj = load i64, ptr %i.ct, align 1
  %i.dk = xor i64 %i.dj, 8317701429086023523
  %i.dl = getelementptr i8, ptr %i.ct, i64 8
  %i.dm = load i32, ptr %i.dl, align 1
  %i.dn = zext i32 %i.dm to i64
  %i.do = xor i64 %i.dn, 1819047246
  %i.dp = or i64 %i.dk, %i.do
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB8_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB16_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  br label %_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB8_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB16_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB8_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB16_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %.sink.i2.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.an ], [ 3, %bb.ap ], [ 0, %bb.am ], [ 2, %bb.ao ]
  store i8 %.sink.i2.i.i.i.i.i.i.i.i.i, ptr %i.cb, align 1, !alias.scope !1999, !noalias !2000
  store i8 0, ptr %i.c, align 8, !alias.scope !1999, !noalias !2000
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1q_9ArrayTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !1982, !noalias !1983, !nonnull !12, !noundef !12 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !1982, !noalias !1983, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  switch i64 %i.dw, label %bb.au [
    i64 4, label %bb.ar
    i64 11, label %bb.as
    i64 12, label %bb.at
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.dx = load i32, ptr %i.du, align 1
  %i.dy = icmp ne i32 %i.dx, 1701869940
  %i.dz = zext i1 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBa_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB18_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.eb = load i64, ptr %i.du, align 1
  %i.ec = xor i64 %i.eb, 6085610378390498405
  %i.ed = getelementptr i8, ptr %i.du, i64 3
  %i.ee = load i64, ptr %i.ed, align 1
  %i.ef = xor i64 %i.ee, 7309475598859920749
  %i.eg = or i64 %i.ec, %i.ef
  %i.eh = icmp ne i64 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBa_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB18_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, label %bb.au

bb.at:                                            ; preds = %bb.aq
  %i.ek = load i64, ptr %i.du, align 1
  %i.el = xor i64 %i.ek, 8317701429086023523
  %i.em = getelementptr i8, ptr %i.du, i64 8
  %i.en = load i32, ptr %i.em, align 1
  %i.eo = zext i32 %i.en to i64
  %i.ep = xor i64 %i.eo, 1819047246
  %i.eq = or i64 %i.el, %i.ep
  %i.er = icmp ne i64 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBa_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB18_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  br label %_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBa_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB18_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i

_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBa_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB18_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.as ], [ 3, %bb.au ], [ 0, %bb.ar ], [ 2, %bb.at ]
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cb, align 1, !alias.scope !2008, !noalias !2009
  store i8 0, ptr %i.c, align 8, !alias.scope !2008, !noalias !2009
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1q_9ArrayTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.ah
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !1982, !noalias !1983, !nonnull !12, !noundef !12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1982, !noalias !1983, !noundef !12
  call fastcc void @_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB8_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB16_7Visitor11visit_bytesNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ev, i64 noundef %i.ex), !noalias !2012
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1q_9ArrayTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !1982, !noalias !1983, !nonnull !12, !noundef !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !1982, !noalias !1983, !noundef !12
  call fastcc void @_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB8_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB16_7Visitor11visit_bytesNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ez, i64 noundef range(i64 0, -9223372036854775808) %i.fb), !alias.scope !2013, !noalias !2012
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1q_9ArrayTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1q_9ArrayTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i: ; preds = %bb.aw, %bb.av, %_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBa_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB18_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, %_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB8_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB16_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, %bb.ak, %bb.aj, %.noexc.i.i9.i
  %i.fc = load i8, ptr %i.c, align 8, !range !14, !noalias !1958, !noundef !12
end_hunk_0
begin_hunk_1_@_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB5_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit132.i.i.i: ; preds = %bb.ct
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !1985
  br label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i

bb.cw:                                            ; preds = %.body127.i.i.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #39
          to label %bb.cr unwind label %bb.co, !noalias !1985

bb.cx:                                            ; preds = %bb.cr
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #39
          to label %common.resume.i unwind label %bb.co, !noalias !1985

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit132.i.i.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1956
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.cm, %bb.ce
  %.sroa.077.0.i.i.i = phi i8 [ %i.hm, %bb.cm ], [ %.sroa.044.0.lcssa251.i.i.i, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.078.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.078.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1956
  %.sroa.078.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.078.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.078.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !1956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.078.i.i.i, i64 40, i1 false), !noalias !2018
  %.sroa.579.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.077.0.i.i.i, ptr %.sroa.579.0..sroa_idx.i.i.i, align 8, !alias.scope !2017, !noalias !2018
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.078.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1956
  %.pre.i.i = load i64, ptr %0, align 8, !range !62, !alias.scope !2023, !noalias !2024
  %i.hz = icmp eq i64 %.pre.i.i, -9223372036854775808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1956
  br i1 %i.hz, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i, label %bb.cy

bb.cy:                                            ; preds = %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !noalias !2024
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2.i.i) ]
  %i.ia = icmp eq ptr %i.bz, %.sroa.0.2.i.i
  br i1 %i.ia, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i, label %bb.cz, !prof !28

bb.cz:                                            ; preds = %bb.cy
  %i.ib = ptrtoint ptr %.sroa.0.2.i.i to i64
  %i.ic = ptrtoint ptr %i.bz to i64
  %i.id = sub nuw i64 %i.ic, %i.ib
  %i.ie = lshr exact i64 %i.id, 6
  %i.if = add nuw nsw i64 %i.ie, %.sroa.15.2.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2025
  store i64 %.sroa.15.2.i.i, ptr %i.b, align 8, !noalias !2025
  %i.ig = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef %i.if, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @335)
          to label %bb.db unwind label %bb.da, !noalias !2028

bb.da:                                            ; preds = %bb.cz
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.n) #39
          to label %common.resume.i unwind label %bb.dg, !noalias !2028

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2025
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ig, ptr %i.ii, align 8, !alias.scope !2023, !noalias !2024
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2023, !noalias !2024
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i5.i.i unwind label %bb.dc, !noalias !2028, !inline_history !300

bb.dc:                                            ; preds = %bb.db
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.body.i3.i.i unwind label %bb.dd, !noalias !2028, !inline_history !300

bb.dd:                                            ; preds = %bb.dc
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !2028, !inline_history !300
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i5.i.i: ; preds = %bb.db
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs7p2uQeJxui2_9deltalake.exit.i4.i unwind label %bb.de, !noalias !2028, !inline_history !300

bb.de:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i5.i.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body.i3.i.i

.body.i3.i.i:                                     ; preds = %bb.de, %bb.dc
  %eh.lpad-body.i4.i.i = phi { ptr, i32 } [ %i.il, %bb.de ], [ %i.ij, %bb.dc ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.im) #39
          to label %common.resume.i unwind label %bb.df, !noalias !2028, !inline_history !300

bb.df:                                            ; preds = %.body.i3.i.i
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !2028, !inline_history !300
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs7p2uQeJxui2_9deltalake.exit.i4.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i5.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.io), !noalias !2028, !inline_history !300
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i

bb.dg:                                            ; preds = %bb.da
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !2028
  unreachable

_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECs7p2uQeJxui2_9deltalake.exit.i4.i, %bb.cy, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtBb_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1952
  br label %_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB3c_9ArrayTypeNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit

_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB3c_9ArrayTypeNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB1f_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas6_1__NtB5_7MapTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !2035, !noalias !2036, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2039
  store i8 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val30 = load i64, ptr %i.c, align 8
  %i.d = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 4), !noalias !2040 ; 0 uses
  %.val.i6.i.i = load ptr, ptr %1, align 8, !noalias !2047, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2047
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val30), !noalias !2047 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  %.val.i = load ptr, ptr %1, align 8, !noalias !2051, !nonnull !12, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2051
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !2048, !noalias !2057
  %i.g = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7), !noalias !2058 ; 0 uses
  %i.h = call fastcc noundef align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f) #44, !inline_history !1816 ; 2 uses
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit33, label %_RNvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct3endCs7p2uQeJxui2_9deltalake.exit

_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit33: ; preds = %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  %.val.i36 = load ptr, ptr %1, align 8, !noalias !2062, !nonnull !12, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i36, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2062
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !2059, !noalias !2068
  %i.j = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 9), !noalias !2069 ; 0 uses
  %i.k = call fastcc noundef align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i) #44, !inline_history !1816 ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.a, label %_RNvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct3endCs7p2uQeJxui2_9deltalake.exit

bb.a:                                             ; preds = %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = call noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryebECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 17, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.l) ; 0 uses
  %.sroa.039.0.copyload = load i8, ptr %i.a, align 8
  %i.n = trunc nuw i8 %.sroa.039.0.copyload to i1
  %.sroa.440.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.o = icmp eq i8 %.sroa.440.0.copyload, 0
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %_RNvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct3endCs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.542.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %.val.i.i35 = load ptr, ptr %.sroa.542.0.copyload, align 8, !noalias !2070, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i35, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2070
  br label %_RNvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct3endCs7p2uQeJxui2_9deltalake.exit

_RNvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct3endCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.a, %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit, %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit33
  %.sroa.0.0 = phi ptr [ %i.k, %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit33 ], [ %i.h, %_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB5_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 13 uses
  %.sroa.6.i.i.i = alloca [7 x i8], align 1       ; 6 uses
  %.sroa.0105.sroa.0.i.i.i = alloca [40 x i8], align 8 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 21 uses
  %i.n = alloca [16 x i8], align 8                ; 22 uses
  %i.o = alloca [24 x i8], align 8                ; 21 uses
  %i.p = alloca [64 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.041.i.i.i = alloca [56 x i8], align 8    ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 12 uses
  %i.y = alloca [64 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  %i.z = load i8, ptr %1, align 8, !range !1231, !alias.scope !2078, !noalias !2075, !noundef !12
  switch i8 %i.z, label %bb.b [
    i8 20, label %bb.c
    i8 21, label %bb.aj
  ], !prof !1720

bb.b:                                             ; preds = %bb.a
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92), !noalias !2075
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !2075, !noalias !2078
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2075, !noalias !2078
  br label %_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB3c_7MapTypeNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !2078, !noalias !2075, !nonnull !12, !noundef !12 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !2078, !noalias !2075, !noundef !12 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  %.idx.i.i = shl nuw nsw i64 %i.af, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2088
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2090
  call void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !2099
  %i.aj = load i64, ptr %i.u, align 8, !range !62, !noalias !2090, !noundef !12 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -9223372036854775808
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !2100 ; 2 uses
  br i1 %i.ak, label %bb.e, label %bb.f

common.resume.i:                                  ; preds = %bb.df, %bb.dc, %bb.cy, %bb.cv, %bb.ag, %bb.ac, %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.cd, %bb.ag ], [ %i.bs, %bb.ac ], [ %.pn58.i.i.i, %bb.i ], [ %.pn148.i.i.i, %bb.cv ], [ %i.hc, %bb.cy ], [ %.pn148.i.i.i, %bb.dc ], [ %i.hn, %bb.df ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2090
  br label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i

bb.f:                                             ; preds = %bb.d
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !2100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2090
  store i64 %i.aj, ptr %i.x, align 8, !noalias !2088
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.am, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !2088
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.10.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2088
  %i.an = icmp eq i64 %i.af, 1
  br i1 %i.an, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2101
  invoke fastcc void @_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %.noexc.i.i.i unwind label %bb.j, !noalias !2110

.noexc.i.i.i:                                     ; preds = %bb.g
  %i.ap = load i8, ptr %i.t, align 8, !range !314, !noalias !2101, !noundef !12 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 5
  br i1 %i.aq, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.ar = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef 0, ptr noundef nonnull @75, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52), !noalias !2110
  br label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %bb.h, %bb.e
  %.sink.i.i.i = phi ptr [ %i.ar, %bb.h ], [ %i.am, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i.i, ptr %i.as, align 8, !alias.scope !2111, !noalias !2112
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2111, !noalias !2112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2088
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1f_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i

bb.i:                                             ; preds = %bb.p, %bb.j
  %.pn58.i.i.i = phi { ptr, i32 } [ %i.at, %bb.j ], [ %.pn.i.i.i, %bb.p ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #39
          to label %common.resume.i unwind label %bb.aa, !noalias !2110

bb.j:                                             ; preds = %bb.z, %bb.n, %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !2101, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2101
  br label %bb.o

bb.l:                                             ; preds = %.noexc.i.i.i
  %.sroa.770.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.770.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !2088
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.8.0.copyload.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !2113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2101
  store i8 %i.ap, ptr %i.w, align 8, !noalias !2088
  %.sroa.521.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i, ptr %.sroa.521.0..sroa_idx.i.i.i, align 8, !noalias !2088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2088
  %i.aw = icmp eq i64 %i.af, 2
  br i1 %i.aw, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2114
  invoke fastcc void @_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %.noexc65.i.i.i unwind label %bb.q, !noalias !2110

.noexc65.i.i.i:                                   ; preds = %bb.m
  %i.ay = load i8, ptr %i.s, align 8, !range !314, !noalias !2114, !noundef !12 ; 2 uses
  %i.az = icmp eq i8 %i.ay, 5
  br i1 %i.az, label %bb.r, label %bb.s

bb.n:                                             ; preds = %bb.f
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef 1, ptr noundef nonnull @75, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
          to label %bb.o unwind label %bb.j, !noalias !2110

bb.o:                                             ; preds = %bb.n, %bb.k
  %.sink128.i.i.i = phi ptr [ %i.ba, %bb.n ], [ %i.av, %bb.k ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink128.i.i.i, ptr %i.bb, align 8, !alias.scope !2111, !noalias !2112
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2111, !noalias !2112
  br label %bb.ab

bb.p:                                             ; preds = %bb.w, %bb.q
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %i.bl, %bb.w ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #39
          to label %bb.i unwind label %bb.aa, !noalias !2110

bb.q:                                             ; preds = %bb.x, %bb.u, %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %.noexc65.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !2114, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2114
  br label %bb.v

bb.s:                                             ; preds = %.noexc65.i.i.i
  %.sroa.772.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.433.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.772.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !2088
  %.sroa.873.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.873.0.copyload.i.i.i = load ptr, ptr %.sroa.873.0..sroa_idx.i.i.i, align 8, !noalias !2123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2114
  store i8 %i.ay, ptr %i.v, align 8, !noalias !2088
  %.sroa.534.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.873.0.copyload.i.i.i, ptr %.sroa.534.0..sroa_idx.i.i.i, align 8, !noalias !2088
  %i.bf = icmp eq i64 %i.af, 3
  br i1 %i.bf, label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2124
  invoke void @_RINvXs1_NtNtCs1gOyXocuPRE_10serde_core2de5implsbNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax)
          to label %.noexc67.i.i.i unwind label %bb.w, !noalias !2110

.noexc67.i.i.i:                                   ; preds = %bb.t
  %i.bh = load i8, ptr %i.r, align 8, !range !14, !noalias !2124, !noundef !12
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.x, label %bb.y

bb.u:                                             ; preds = %bb.l
  %i.bj = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef 2, ptr noundef nonnull @75, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
          to label %bb.v unwind label %bb.q, !noalias !2110

bb.v:                                             ; preds = %bb.u, %bb.r
  %.sink130.i.i.i = phi ptr [ %i.bj, %bb.u ], [ %i.be, %bb.r ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink130.i.i.i, ptr %i.bk, align 8, !alias.scope !2111, !noalias !2112
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2111, !noalias !2112
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #39
          to label %bb.p unwind label %bb.aa, !noalias !2110

bb.x:                                             ; preds = %.noexc67.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !2124, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2124
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !alias.scope !2111, !noalias !2112
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2111, !noalias !2112
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %bb.z unwind label %bb.q, !noalias !2110

bb.y:                                             ; preds = %.noexc67.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !range !14, !noalias !2124, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2124
  br label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.z:                                             ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2088
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.ab unwind label %bb.j, !noalias !2110

bb.aa:                                            ; preds = %bb.w, %bb.p, %bb.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !2110
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2088
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread28.i.i unwind label %bb.ac, !noalias !2110

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume.i unwind label %bb.ad, !noalias !2110

bb.ad:                                            ; preds = %bb.ac
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !2110
  unreachable

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread28.i.i: ; preds = %bb.ab
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !2110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2088
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1f_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.y, %bb.s
  %.sroa.12.2.i.i = phi i64 [ 3, %bb.s ], [ 4, %bb.y ] ; 2 uses
  %.sroa.0.2.i.i = phi ptr [ %i.ax, %bb.s ], [ %i.bg, %bb.y ] ; 2 uses
  %i.bu = phi i8 [ 1, %bb.s ], [ %i.bq, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.041.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.041.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !2088
  %.sroa.041.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.041.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.041.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !noalias !2088
  %.sroa.041.40..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.041.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.041.40..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !2088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.041.i.i.i, i64 56, i1 false), !noalias !2112
  %.sroa.642.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.bu, ptr %.sroa.642.0..sroa_idx.i.i.i, align 8, !alias.scope !2111, !noalias !2112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.041.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2088
  %.pr.pre.i.i = load i64, ptr %0, align 8, !alias.scope !2133, !noalias !2134
  %i.bv = icmp eq i64 %.pr.pre.i.i, -9223372036854775808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2088
  br i1 %i.bv, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1f_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !noalias !2134
  %i.bw = icmp eq ptr %i.ag, %.sroa.0.2.i.i
  br i1 %i.bw, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1f_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i, label %bb.af, !prof !28

bb.af:                                            ; preds = %bb.ae
  %i.bx = ptrtoint ptr %.sroa.0.2.i.i to i64
  %i.by = ptrtoint ptr %i.ag to i64
  %i.bz = sub nuw i64 %i.by, %i.bx
  %i.ca = lshr exact i64 %i.bz, 5
  %i.cb = add nuw nsw i64 %i.ca, %.sroa.12.2.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2135
  store i64 %.sroa.12.2.i.i, ptr %i.q, align 8, !noalias !2135
  %i.cc = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef %i.cb, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @334)
          to label %bb.ah unwind label %bb.ag, !noalias !2138

bb.ag:                                            ; preds = %bb.af
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.y) #39
          to label %common.resume.i unwind label %bb.ai, !noalias !2138

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2135
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.ce, align 8, !alias.scope !2133, !noalias !2134
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2133, !noalias !2134
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.y), !noalias !2138
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1f_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !2138
  unreachable

_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1f_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ah, %bb.ae, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread28.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtBb_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2083
  br label %_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB3c_7MapTypeNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit

bb.aj:                                            ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !2078, !noalias !2075, !nonnull !12, !noundef !12 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !2078, !noalias !2075, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  %.idx.i2.i = shl nuw nsw i64 %i.cj, 6           ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i2.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2148
  store i64 -9223372036854775808, ptr %i.o, align 8, !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2148
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %.thread200.thread.i.i.i, label %.lr.ph.i.i.i

.thread200.thread.i.i.i:                          ; preds = %bb.aj
  store i8 5, ptr %i.m, align 8, !noalias !2148
  store i8 5, ptr %i.n, align 8, !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2148
  br label %bb.br

.lr.ph.i.i.i:                                     ; preds = %bb.aj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.5121.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.6122.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.660.0..sroa_idx61.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.762.0..sroa_idx63.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 12 uses
  %.sroa.5118.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.6119.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.643.0..sroa_idx44.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.745.0..sroa_idx46.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 13 uses
  %.sroa.5115.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.6116.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.626.0..sroa_idx27.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx29.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.cp = add nsw i64 %.idx.i2.i, -64
  %i.cq = lshr exact i64 %i.cp, 6
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.6119.0.copyload291.i.i.i = phi ptr [ undef, %.lr.ph.i.i.i ], [ %.sroa.6119.0.copyload290.i.i.i, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 16 uses
  %.sroa.6122.0.copyload272.i.i.i = phi ptr [ undef, %.lr.ph.i.i.i ], [ %.sroa.6122.0.copyload271.i.i.i, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 15 uses
  %.sroa.065.0266.i.i.i = phi i8 [ 2, %.lr.ph.i.i.i ], [ %.sroa.065.1.i.i.i, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 5 uses
  %i.cs = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %i.cv, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 14 uses
  %i.ct = phi i8 [ 5, %.lr.ph.i.i.i ], [ %i.er, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 31 uses
  %i.cu = phi i8 [ 5, %.lr.ph.i.i.i ], [ %i.eq, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 32 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2150
  call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  call void @llvm.experimental.noalias.scope.decl(metadata !2164)
  call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  %i.cx = load i8, ptr %i.cs, align 8, !range !1231, !alias.scope !2174, !noalias !2175, !noundef !12
  switch i8 %i.cx, label %bb.al [
    i8 1, label %bb.am
    i8 4, label %bb.an
    i8 12, label %bb.ao
    i8 13, label %bb.ap
    i8 14, label %bb.aq
    i8 15, label %bb.ar
  ], !prof !1984

bb.al:                                            ; preds = %bb.ak
  %i.cy = invoke fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cs, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @98)
          to label %.noexc.i.i5.i unwind label %.loopexit.i.i.i, !noalias !2176

.noexc.i.i5.i:                                    ; preds = %bb.al
  store ptr %i.cy, ptr %i.cn, align 8, !alias.scope !2177, !noalias !2178
  store i8 1, ptr %i.c, align 8, !alias.scope !2177, !noalias !2178
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1q_7MapTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !2174, !noalias !2175, !noundef !12
  %i.db = call i8 @llvm.umin.i8(i8 %i.da, i8 4)
  store i8 %i.db, ptr %i.cm, align 1, !alias.scope !2179, !noalias !2178
  store i8 0, ptr %i.c, align 8, !alias.scope !2179, !noalias !2178
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1q_7MapTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.ak
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !2174, !noalias !2175, !noundef !12
  %.sink1.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dd, i64 4)
  %.sink.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.cm, align 1, !alias.scope !2184, !noalias !2178
  store i8 0, ptr %i.c, align 8, !alias.scope !2184, !noalias !2178
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1q_7MapTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !2174, !noalias !2175, !nonnull !12, !noundef !12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !2174, !noalias !2175, !noundef !12
  call fastcc void @_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB8_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB14_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef %i.dh), !noalias !2187
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1q_7MapTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ak
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !2174, !noalias !2175, !nonnull !12, !noundef !12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !2174, !noalias !2175, !noundef !12
  call fastcc void @_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB8_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB14_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dj, i64 noundef %i.dl), !alias.scope !2188, !noalias !2187
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1q_7MapTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !2174, !noalias !2175, !nonnull !12, !noundef !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !2174, !noalias !2175, !noundef !12
  call fastcc void @_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB8_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB14_7Visitor11visit_bytesNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dp), !noalias !2187
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1q_7MapTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !2174, !noalias !2175, !nonnull !12, !noundef !12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !2174, !noalias !2175, !noundef !12
  call fastcc void @_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB8_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB14_7Visitor11visit_bytesNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef range(i64 0, -9223372036854775808) %i.dt), !alias.scope !2192, !noalias !2187
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1q_7MapTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1q_7MapTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %.noexc.i.i5.i
  %i.du = load i8, ptr %i.c, align 8, !range !14, !noalias !2150, !noundef !12
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.as, label %bb.at

.body176.i.i.i:                                   ; preds = %bb.cf, %bb.by, %.body.i.i.i, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %i.dw = phi i8 [ %i.ft, %bb.by ], [ %i.ft, %bb.cf ], [ %i.cu, %.body.i.i.i ], [ %.lcssa316.i.i.i, %.loopexit.i.i.i ], [ %i.dy, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %i.dx = phi i8 [ %i.fv, %bb.by ], [ %.lcssa418.i.i.i, %bb.cf ], [ %i.ct, %.body.i.i.i ], [ %.lcssa335.i.i.i, %.loopexit.i.i.i ], [ %i.dz, %.loopexit.split-lp.i.i.i ]
  %.sroa.0110.1.ph.i.i.i = phi i8 [ %.sroa.0110.5.i.i.i, %bb.by ], [ %.sroa.0110.8.i.i.i, %bb.cf ], [ 1, %.body.i.i.i ], [ 1, %.loopexit.i.i.i ], [ %.sroa.0110.2.ph.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.sroa.0112.1.ph.i.i.i = phi i8 [ %.sroa.0112.4.i.i.i, %bb.by ], [ %.sroa.0112.4.i.i.i, %bb.cf ], [ 1, %.body.i.i.i ], [ 1, %.loopexit.i.i.i ], [ %.sroa.0112.2.ph.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.pn143.ph.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.by ], [ %i.gc, %bb.cf ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.dx, 5
  br i1 %.not.i.i.i, label %bb.cr, label %bb.da

.loopexit.i.i.i:                                  ; preds = %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valuebECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit.i167.i.i.i, %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.al
  %.lcssa335.i.i.i = phi i8 [ %i.ct, %bb.al ], [ %i.ct, %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.ct, %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ 5, %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit.i167.i.i.i ], [ %i.ct, %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valuebECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ] ; 2 uses
  %.lcssa316.i.i.i = phi i8 [ %i.cu, %bb.al ], [ %i.cu, %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ 5, %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.cu, %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit.i167.i.i.i ], [ %i.cu, %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valuebECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ] ; 2 uses
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.6122.0.copyload272.i.i.i, ptr %.sroa.762.0..sroa_idx63.i.i.i, align 8, !noalias !2148
  store ptr %.sroa.6119.0.copyload291.i.i.i, ptr %.sroa.745.0..sroa_idx46.i.i.i, align 8, !noalias !2148
  store i8 %.lcssa335.i.i.i, ptr %i.m, align 8, !noalias !2148
  store i8 %.lcssa316.i.i.i, ptr %i.n, align 8, !noalias !2148
  br label %.body176.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.br, %bb.bm, %bb.bk, %bb.bg, %bb.ay
  %i.dy = phi i8 [ %i.fn, %bb.br ], [ %i.ft, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.cu, %bb.ay ], [ %i.cu, %bb.bk ], [ %i.cu, %bb.bm ], [ %i.cu, %bb.bg ]
  %i.dz = phi i8 [ %.lcssa419.i.i.i, %bb.br ], [ %.lcssa418.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.ct, %bb.ay ], [ %i.ct, %bb.bk ], [ %i.ct, %bb.bm ], [ %i.ct, %bb.bg ]
  %.sroa.0110.2.ph.i.i.i = phi i8 [ 1, %bb.br ], [ %.sroa.0110.8.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ 1, %bb.ay ], [ 1, %bb.bk ], [ 1, %bb.bm ], [ 1, %bb.bg ]
  %.sroa.0112.2.ph.i.i.i = phi i8 [ 1, %bb.br ], [ %.sroa.0112.4.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ 1, %bb.ay ], [ 1, %bb.bk ], [ 1, %bb.bm ], [ 1, %bb.bg ]
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body176.i.i.i

bb.as:                                            ; preds = %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1q_7MapTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  store ptr %.sroa.6122.0.copyload272.i.i.i, ptr %.sroa.762.0..sroa_idx63.i.i.i, align 8, !noalias !2148
  store ptr %.sroa.6119.0.copyload291.i.i.i, ptr %.sroa.745.0..sroa_idx46.i.i.i, align 8, !noalias !2148
  store i8 %i.ct, ptr %i.m, align 8, !noalias !2148
  store i8 %i.cu, ptr %i.n, align 8, !noalias !2148
  %i.ea = load ptr, ptr %i.cn, align 8, !noalias !2150, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2150
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !alias.scope !2196, !noalias !2197
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !2196, !noalias !2197
  br label %bb.cn

bb.at:                                            ; preds = %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB1q_7MapTypeNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  %i.ec = load i8, ptr %i.cm, align 1, !range !122, !noalias !2150, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2150
  switch i8 %i.ec, label %default.unreachable [
    i8 4, label %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i
    i8 0, label %bb.au
    i8 1, label %bb.av
    i8 2, label %bb.aw
    i8 3, label %bb.ax
  ]

.thread200.i.i.i:                                 ; preds = %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i
  store ptr %.sroa.6122.0.copyload271.i.i.i, ptr %.sroa.762.0..sroa_idx63.i.i.i, align 8, !noalias !2148
  store ptr %.sroa.6119.0.copyload290.i.i.i, ptr %.sroa.745.0..sroa_idx46.i.i.i, align 8, !noalias !2148
  %.pre.i.i.i = load i64, ptr %i.o, align 8, !range !62, !noalias !2148
  %i.ed = icmp eq i64 %.pre.i.i.i, -9223372036854775808
  store i8 %i.er, ptr %i.m, align 8, !noalias !2148
  store i8 %i.eq, ptr %i.n, align 8, !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2148
  br i1 %i.ed, label %bb.br, label %bb.bq

default.unreachable:                              ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.ee = load i64, ptr %i.o, align 8, !range !62, !noalias !2148, !noundef !12
  %.not142.i.i.i = icmp eq i64 %i.ee, -9223372036854775808
  br i1 %.not142.i.i.i, label %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.ay, !prof !28

bb.av:                                            ; preds = %bb.at
  %.not141.i.i.i = icmp eq i8 %i.cu, 5
  br i1 %.not141.i.i.i, label %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.bg, !prof !28

bb.aw:                                            ; preds = %bb.at
  %.not140.i.i.i = icmp eq i8 %i.ct, 5
  br i1 %.not140.i.i.i, label %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake.exit.i167.i.i.i, label %bb.bk, !prof !28

bb.ax:                                            ; preds = %bb.at
  %.not139.i.i.i = icmp eq i8 %.sroa.065.0266.i.i.i, 2
  br i1 %.not139.i.i.i, label %_RINvYINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valuebECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.bm, !prof !28
end_hunk_1
begin_hunk_2_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer16deserialize_enumNtNCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtB3c_13PrimitiveTypeNtB22_11Deserialize11deserialize09___VisitorECs7p2uQeJxui2_9deltalake:bb.a

bb.bj:                                            ; preds = %bb.am
  br i1 %.not.i.i, label %bb.ci, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cr = load i8, ptr %.sroa.09.0, align 8, !range !1231, !alias.scope !2622, !noalias !2571, !noundef !12
  %i.cs = icmp eq i8 %i.cr, 18
  br i1 %i.cs, label %bb.ci, label %bb.ch, !prof !28

bb.bl:                                            ; preds = %bb.ao
  %i.ct = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bm:                                            ; preds = %bb.ao, %bb.an
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.cv, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bn:                                            ; preds = %bb.aq
  %i.cw = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bo:                                            ; preds = %bb.aq, %bb.ap
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.cy, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bp:                                            ; preds = %bb.as
  %i.cz = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bq:                                            ; preds = %bb.as, %bb.ar
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.db, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.br:                                            ; preds = %bb.au
  %i.dc = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %i.dd, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bs:                                            ; preds = %bb.au, %bb.at
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.de, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bt:                                            ; preds = %bb.aw
  %i.df = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.df, ptr %i.dg, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bu:                                            ; preds = %bb.aw, %bb.av
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.dh, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bv:                                            ; preds = %bb.ay
  %i.di = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bw:                                            ; preds = %bb.ay, %bb.ax
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.dk, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bx:                                            ; preds = %bb.ba
  %i.dl = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.by:                                            ; preds = %bb.ba, %bb.az
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 6, ptr %i.dn, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.bz:                                            ; preds = %bb.bc
  %i.do = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.ca:                                            ; preds = %bb.bc, %bb.bb
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 7, ptr %i.dq, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.cb:                                            ; preds = %bb.be
  %i.dr = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dr, ptr %i.ds, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.cc:                                            ; preds = %bb.be, %bb.bd
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 8, ptr %i.dt, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.cd:                                            ; preds = %bb.bg
  %i.du = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.ce:                                            ; preds = %bb.bg, %bb.bf
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 9, ptr %i.dw, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.cf:                                            ; preds = %bb.bi
  %i.dx = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dx, ptr %i.dy, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.cg:                                            ; preds = %bb.bi, %bb.bh
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 10, ptr %i.dz, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.ch:                                            ; preds = %bb.bk
  %i.ea = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %.sroa.09.0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88), !noalias !2571
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.ci:                                            ; preds = %bb.bk, %bb.bj
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 11, ptr %i.ec, align 1, !alias.scope !2513, !noalias !2565
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.cj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 11, ptr %i.g, align 8
  %i.ed = call noundef nonnull align 8 ptr @_RNvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @85, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cm

bb.ck:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 11, ptr %i.f, align 8
  %i.ee = call noundef nonnull align 8 ptr @_RNvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @85, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.cm

bb.cl:                                            ; preds = %bb.c
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %.pre = load i8, ptr %i.eg, align 8, !range !1231, !alias.scope !2549, !noalias !2546
  br label %bb.d

bb.cm:                                            ; preds = %bb.cj, %bb.ck
  %.sink = phi ptr [ %i.ed, %bb.cj ], [ %i.ee, %bb.ck ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ei, align 8
  br label %_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

_RINvXs0_NCNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas9_1__NtBd_13PrimitiveTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize0NtB6_9___VisitorNtB1g_7Visitor10visit_enumINtNtNtNtCs6sYutav3ODB_5serde7private2de7content19EnumRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.al, %bb.cm, %bb.b
  %.sink.i.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.cm ], [ 1, %bb.al ], [ 1, %bb.bl ], [ 1, %bb.bn ], [ 1, %bb.bp ], [ 1, %bb.br ], [ 1, %bb.bt ], [ 1, %bb.bv ], [ 1, %bb.bx ], [ 1, %bb.bz ], [ 1, %bb.cb ], [ 1, %bb.cd ], [ 1, %bb.cf ], [ 1, %bb.ch ], [ 0, %bb.bm ], [ 0, %bb.bo ], [ 0, %bb.bq ], [ 0, %bb.bs ], [ 0, %bb.bu ], [ 0, %bb.bw ], [ 0, %bb.by ], [ 0, %bb.ca ], [ 0, %bb.cc ], [ 0, %bb.ce ], [ 0, %bb.cg ], [ 0, %bb.ci ]
  store i8 %.sink.i.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB22_5impls13StringVisitorECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_strNtNtB22_5impls13StringVisitorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsH_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 13 uses
  %.sroa.4111.i.i.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 15 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.769.i.i.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 18 uses
  %i.o = alloca [16 x i8], align 8                ; 20 uses
  %i.p = alloca [24 x i8], align 8                ; 21 uses
  %i.q = alloca [96 x i8], align 8                ; 12 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 12 uses
  %i.y = alloca [96 x i8], align 8                ; 12 uses
  %.sroa.47.sroa.7 = alloca [16 x i8], align 8    ; 7 uses
  %i.z = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !12, !noundef !12
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.dl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.ad, ptr %1, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !12
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2633)
  %i.ah = load i8, ptr %i.z, align 8, !range !1231, !alias.scope !2636, !noalias !2637, !noundef !12
  switch i8 %i.ah, label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread [
    i8 20, label %bb.c
    i8 21, label %bb.ad
  ], !prof !1720

_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.b
  %i.ai = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89), !noalias !2637
  br label %bb.dm

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !2636, !noalias !2637, !nonnull !12, !noundef !12 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !2636, !noalias !2637, !noundef !12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2645
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2649
  call void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak), !noalias !2658
  %i.ap = load i64, ptr %i.v, align 8, !range !62, !noalias !2649, !noundef !12 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, -9223372036854775808
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !2659 ; 2 uses
  br i1 %i.aq, label %bb.e, label %bb.f

common.resume.i.i.i:                              ; preds = %bb.di, %bb.df, %bb.db, %bb.cy, %bb.aa, %bb.v, %bb.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.aa ], [ %i.br, %bb.v ], [ %.pn.i.i.i.i.i, %bb.i ], [ %.pn158.i.i.i.i.i, %bb.cy ], [ %i.hw, %bb.db ], [ %.pn158.i.i.i.i.i, %bb.df ], [ %i.ii, %bb.di ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2649
  br label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2649
  store i64 %i.ap, ptr %i.x, align 8, !noalias !2645
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.as, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2645
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  store i64 %.sroa.10.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2645
  %i.at = icmp eq i64 %i.am, 1
  br i1 %i.at, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2660
  invoke fastcc void @_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %.noexc.i.i.i.i.i unwind label %bb.j, !noalias !2669

.noexc.i.i.i.i.i:                                 ; preds = %bb.g
  %i.av = load i8, ptr %i.u, align 8, !range !314, !noalias !2660, !noundef !12 ; 2 uses
  %i.aw = icmp eq i8 %i.av, 5
  br i1 %i.aw, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.ax = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef 0, ptr noundef nonnull @69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52), !noalias !2669
  br label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i: ; preds = %bb.h, %bb.e
  %.sink.i.i.i.i.i = phi ptr [ %i.ax, %bb.h ], [ %i.as, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2645
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1f_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.i:                                             ; preds = %bb.o, %bb.j
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ay, %bb.j ], [ %i.bg, %bb.o ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #39
          to label %common.resume.i.i.i unwind label %bb.x, !noalias !2669

bb.j:                                             ; preds = %bb.t, %bb.n, %bb.g
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %.noexc.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !2660, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2660
  br label %bb.u

bb.l:                                             ; preds = %.noexc.i.i.i.i.i
  %.sroa.762.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.420.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.762.0..sroa_idx.i.i.i.i.i, i64 7, i1 false), !noalias !2645
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.8.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2660
  store i8 %i.av, ptr %i.w, align 8, !noalias !2645
  %.sroa.521.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i.i, ptr %.sroa.521.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2645
  %i.bb = icmp eq i64 %i.am, 2
  br i1 %i.bb, label %.invoke.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2671
  invoke void @_RINvXs1_NtNtCs1gOyXocuPRE_10serde_core2de5implsbNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au)
          to label %.noexc58.i.i.i.i.i unwind label %bb.o, !noalias !2669

.noexc58.i.i.i.i.i:                               ; preds = %bb.m
  %i.bd = load i8, ptr %i.t, align 8, !range !14, !noalias !2671, !noundef !12
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.p, label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.bf = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef 1, ptr noundef nonnull @69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
          to label %bb.u unwind label %bb.j, !noalias !2669

bb.o:                                             ; preds = %.invoke.i.i.i.i.i, %bb.r, %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #39
          to label %bb.i unwind label %bb.x, !noalias !2669

bb.p:                                             ; preds = %.noexc58.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !2671, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2671
  br label %bb.t

bb.q:                                             ; preds = %.noexc58.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !range !14, !noalias !2671, !noundef !12 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2671
  %i.bl = icmp eq i64 %i.am, 3
  br i1 %i.bl, label %.invoke.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2680
  invoke void @_RINvXs3g_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtB9_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bc)
          to label %.noexc59.i.i.i.i.i unwind label %bb.o, !noalias !2669

.noexc59.i.i.i.i.i:                               ; preds = %bb.r
  %i.bm = load ptr, ptr %i.s, align 8, !noalias !2680, !noundef !12 ; 5 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !2689 ; 5 uses
  br i1 %i.bn, label %bb.s, label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.s:                                             ; preds = %.noexc59.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2680
  br label %bb.t

.invoke.i.i.i.i.i:                                ; preds = %bb.q, %bb.l
  %.sroa.12.2.i.i.i.i = phi i64 [ 2, %bb.l ], [ 3, %bb.q ]
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef %.sroa.12.2.i.i.i.i, ptr noundef nonnull @69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
          to label %bb.t unwind label %bb.o, !noalias !2669

bb.t:                                             ; preds = %.invoke.i.i.i.i.i, %bb.s, %bb.p
  %.sink123.sink.i.i.i.i.i = phi ptr [ %i.bq, %.invoke.i.i.i.i.i ], [ %i.bi, %bb.p ], [ %i.bp, %bb.s ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.u unwind label %bb.j, !noalias !2669

bb.u:                                             ; preds = %bb.k, %bb.n, %bb.t
  %.sroa.28.5 = phi ptr [ %.sink123.sink.i.i.i.i.i, %bb.t ], [ %i.bf, %bb.n ], [ %i.ba, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2645
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread24.i.i.i.i unwind label %bb.v, !noalias !2669

bb.v:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume.i.i.i unwind label %bb.w, !noalias !2669

bb.w:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !2669
  unreachable

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread24.i.i.i.i: ; preds = %bb.u
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !2669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2645
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1f_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.x:                                             ; preds = %bb.o, %bb.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !2669
  unreachable

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %.noexc59.i.i.i.i.i
  %.sroa.51.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4111.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.51.48..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2680
  %.sroa.034.i.i.i.i.i.sroa.0.0.copyload = load i64, ptr %i.x, align 8, !noalias !2645 ; 3 uses
  %.sroa.034.i.i.i.i.i.sroa.4.0.copyload = load ptr, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2645 ; 3 uses
  %i.bu = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2645 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !noalias !2689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2645
  %i.bv = icmp eq i64 %.sroa.034.i.i.i.i.i.sroa.0.0.copyload, -9223372036854775808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2645
  br i1 %i.bv, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1f_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  store i64 %.sroa.034.i.i.i.i.i.sroa.0.0.copyload, ptr %i.y, align 8, !noalias !2690
  %.sroa.28.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.sroa.034.i.i.i.i.i.sroa.4.0.copyload, ptr %.sroa.28.0..sroa_idx10, align 8, !noalias !2690
  %.sroa.47.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.bu, ptr %.sroa.47.0..sroa_idx15, align 8, !noalias !2690
  %.sroa.47.sroa.7.0..sroa.47.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.7.0..sroa.47.0..sroa_idx15.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.sroa.7, i64 16, i1 false), !noalias !2690
  %.sroa.4716.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.bm, ptr %.sroa.4716.0..sroa_idx19, align 8, !noalias !2690
  %.sroa.49.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store ptr %i.bp, ptr %.sroa.49.0..sroa_idx23, align 8, !noalias !2690
  %.sroa.51.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.51.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4111.i.i.i.i.i, i64 32, i1 false)
  %.sroa.52.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i8 %i.bk, ptr %.sroa.52.0..sroa_idx29, align 8, !noalias !2690
  %i.bw = icmp eq i64 %i.am, 4
  br i1 %i.bw, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1f_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.z, !prof !28

bb.z:                                             ; preds = %bb.y
  %i.bx = add nuw nsw i64 %i.am, 576460752303423484
  %i.by = and i64 %i.bx, 576460752303423487
  %i.bz = add nuw nsw i64 %i.by, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2691
  store i64 4, ptr %i.r, align 8, !noalias !2691
  %i.ca = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef %i.bz, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @334)
          to label %bb.ab unwind label %bb.aa, !noalias !2694

bb.aa:                                            ; preds = %bb.z
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.y) #39
          to label %common.resume.i.i.i unwind label %bb.ac, !noalias !2694

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2691
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.y), !noalias !2694
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1f_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !2694
  unreachable

_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1f_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.ab, %bb.y, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread24.i.i.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i
  %.sroa.47.sroa.0.1 = phi i64 [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i ], [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread24.i.i.i.i ], [ %i.bu, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.bu, %bb.y ], [ %i.bu, %bb.ab ]
  %.sroa.52.1 = phi i8 [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i ], [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread24.i.i.i.i ], [ %i.bk, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.bk, %bb.y ], [ %i.bk, %bb.ab ]
  %.sroa.49.1 = phi ptr [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i ], [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread24.i.i.i.i ], [ %i.bp, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.bp, %bb.y ], [ %i.bp, %bb.ab ]
  %.sroa.4716.1 = phi ptr [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i ], [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread24.i.i.i.i ], [ %i.bm, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.bm, %bb.y ], [ %i.bm, %bb.ab ]
  %.sroa.28.4 = phi ptr [ %.sink.i.i.i.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i ], [ %.sroa.28.5, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread24.i.i.i.i ], [ %.sroa.034.i.i.i.i.i.sroa.4.0.copyload, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %.sroa.034.i.i.i.i.i.sroa.4.0.copyload, %bb.y ], [ %i.ca, %bb.ab ]
  %.sroa.0.4 = phi i64 [ -9223372036854775808, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i ], [ -9223372036854775808, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread24.i.i.i.i ], [ -9223372036854775808, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %.sroa.034.i.i.i.i.i.sroa.0.0.copyload, %bb.y ], [ -9223372036854775808, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2641
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

bb.ad:                                            ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !2636, !noalias !2637, !nonnull !12, !noundef !12 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !2636, !noalias !2637, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2695)
  %.idx.i.i.i.i = shl nuw nsw i64 %i.cg, 6        ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i.i.i.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2700
  store i64 -9223372036854775808, ptr %i.p, align 8, !noalias !2700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2700
  store ptr null, ptr %i.n, align 8, !noalias !2700
  %i.ci = icmp eq i64 %i.cg, 0
  br i1 %i.ci, label %.thread211.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.thread211.thread.i.i.i.i.i:                      ; preds = %bb.ad
  store i8 5, ptr %i.o, align 8, !noalias !2700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2700
  br label %bb.bq

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ad
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5131.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.6132.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.666.0..sroa_idx67.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.769.0..sroa_idx70.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.5128.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.6129.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.643.0..sroa_idx44.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.745.0..sroa_idx46.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 11 uses
  %.sroa.5125.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.6126.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.626.0..sroa_idx27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.cm = add nsw i64 %.idx.i.i.i.i, -64
  %i.cn = lshr exact i64 %i.cm, 6
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.6129.0.copyload266.i.i.i.i.i = phi ptr [ undef, %.lr.ph.i.i.i.i.i ], [ %.sroa.6129.0.copyload265.i.i.i.i.i, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ] ; 14 uses
  %.sroa.048.0261.i.i.i.i.i = phi i8 [ 2, %.lr.ph.i.i.i.i.i ], [ %.sroa.048.1.i.i.i.i.i, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ] ; 5 uses
  %i.cp = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %i.cr, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ] ; 14 uses
  %i.cq = phi i8 [ 5, %.lr.ph.i.i.i.i.i ], [ %i.fn, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ] ; 25 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 64 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2704
  call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  call void @llvm.experimental.noalias.scope.decl(metadata !2718)
  call void @llvm.experimental.noalias.scope.decl(metadata !2721)
  call void @llvm.experimental.noalias.scope.decl(metadata !2723)
  call void @llvm.experimental.noalias.scope.decl(metadata !2726)
  %i.ct = load i8, ptr %i.cp, align 8, !range !1231, !alias.scope !2728, !noalias !2729, !noundef !12
  switch i8 %i.ct, label %bb.af [
    i8 1, label %bb.ag
    i8 4, label %bb.ah
    i8 12, label %bb.ai
    i8 13, label %bb.ao
    i8 14, label %bb.au
    i8 15, label %bb.av
  ], !prof !1984

bb.af:                                            ; preds = %bb.ae
  %i.cu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cp, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
          to label %.noexc.i.i5.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !2730

.noexc.i.i5.i.i.i:                                ; preds = %bb.af
  store ptr %i.cu, ptr %i.ck, align 8, !alias.scope !2731, !noalias !2732
  store i8 1, ptr %i.c, align 8, !alias.scope !2731, !noalias !2732
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1q_11StructFieldNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !2728, !noalias !2729, !noundef !12
  %i.cx = call i8 @llvm.umin.i8(i8 %i.cw, i8 4)
  store i8 %i.cx, ptr %i.cj, align 1, !alias.scope !2733, !noalias !2732
  store i8 0, ptr %i.c, align 8, !alias.scope !2733, !noalias !2732
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1q_11StructFieldNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !2728, !noalias !2729, !noundef !12
  %.sink1.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cz, i64 4)
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cj, align 1, !alias.scope !2738, !noalias !2732
  store i8 0, ptr %i.c, align 8, !alias.scope !2738, !noalias !2732
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1q_11StructFieldNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !2728, !noalias !2729, !nonnull !12, !noundef !12 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !2728, !noalias !2729, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  switch i64 %i.dd, label %bb.an [
    i64 4, label %bb.aj
    i64 8, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.de = load i32, ptr %i.db, align 1
  %i.df = icmp ne i32 %i.de, 1701667182
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB8_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = load i32, ptr %i.db, align 1
  %i.dj = icmp ne i32 %i.di, 1701869940
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB8_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.dm = load i64, ptr %i.db, align 1
  %i.dn = icmp ne i64 %i.dm, 7308324465885869422
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB8_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = load i64, ptr %i.db, align 1
  %i.dr = icmp ne i64 %i.dq, 7022344802737087853
  %i.ds = zext i1 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB8_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.ai
  br label %_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB8_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB8_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sink.i2.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.al ], [ 4, %bb.an ], [ 1, %bb.ak ], [ 0, %bb.aj ], [ 3, %bb.am ]
  store i8 %.sink.i2.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cj, align 1, !alias.scope !2744, !noalias !2745
  store i8 0, ptr %i.c, align 8, !alias.scope !2744, !noalias !2745
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1q_11StructFieldNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !2728, !noalias !2729, !nonnull !12, !noundef !12 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !2728, !noalias !2729, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !2747)
  call void @llvm.experimental.noalias.scope.decl(metadata !2750)
  switch i64 %i.dx, label %bb.at [
    i64 4, label %bb.ap
    i64 8, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dy = load i32, ptr %i.dv, align 1
  %i.dz = icmp ne i32 %i.dy, 1701667182
  %i.ea = zext i1 %i.dz to i32
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBa_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1b_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ec = load i32, ptr %i.dv, align 1
  %i.ed = icmp ne i32 %i.ec, 1701869940
  %i.ee = zext i1 %i.ed to i32
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBa_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1b_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.eg = load i64, ptr %i.dv, align 1
  %i.eh = icmp ne i64 %i.eg, 7308324465885869422
  %i.ei = zext i1 %i.eh to i32
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBa_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1b_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ek = load i64, ptr %i.dv, align 1
  %i.el = icmp ne i64 %i.ek, 7022344802737087853
  %i.em = zext i1 %i.el to i32
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBa_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1b_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.ao
  br label %_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBa_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1b_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBa_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1b_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.ar ], [ 4, %bb.at ], [ 1, %bb.aq ], [ 0, %bb.ap ], [ 3, %bb.as ]
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cj, align 1, !alias.scope !2753, !noalias !2754
  store i8 0, ptr %i.c, align 8, !alias.scope !2753, !noalias !2754
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1q_11StructFieldNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.ae
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !2728, !noalias !2729, !nonnull !12, !noundef !12
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !2728, !noalias !2729, !noundef !12
  call fastcc void @_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB8_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor11visit_bytesNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef %i.er), !noalias !2757
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1q_11StructFieldNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !2728, !noalias !2729, !nonnull !12, !noundef !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !2728, !noalias !2729, !noundef !12
  call fastcc void @_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB8_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor11visit_bytesNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef range(i64 0, -9223372036854775808) %i.ev), !alias.scope !2758, !noalias !2757
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1q_11StructFieldNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i

_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB1q_11StructFieldNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i: ; preds = %bb.av, %bb.au, %_RINvYNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBa_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1b_7Visitor18visit_borrowed_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB8_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ah, %bb.ag, %.noexc.i.i5.i.i.i
  %i.ew = load i8, ptr %i.c, align 8, !range !14, !noalias !2704, !noundef !12
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.aw, label %bb.ax

.body183.i.i.i.i.i:                               ; preds = %bb.ce, %bb.bx, %.body.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
end_hunk_2
