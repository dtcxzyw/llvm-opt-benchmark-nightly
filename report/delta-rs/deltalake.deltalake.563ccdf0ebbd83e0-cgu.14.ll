inline.NumInlined: 4294
inline.NumDeleted: 1503
begin_hunk_0_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake:bb.a
  %i.ak = tail call fastcc noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) #44, !noalias !1739 ; 0 uses
  %i.al = icmp eq i64 %.val10.i, 1
  %.val.i47135 = load ptr, ptr %1, align 8, !noalias !1728, !nonnull !12, !noundef !12 ; 2 uses
  br i1 %i.al, label %.loopexit118, label %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.lr.ph

_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.lr.ph: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.preheader
  %.sroa.075.0134 = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  br label %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i

.loopexit118.thread:                              ; preds = %bb.n
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i48, ptr noalias noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1738
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs7p2uQeJxui2_9deltalake.exit

_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.lr.ph, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.val.i47137 = phi ptr [ %.val.i47135, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.lr.ph ], [ %.val.i47, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.075.0136 = phi ptr [ %.sroa.075.0134, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.lr.ph ], [ %.sroa.075.0, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i47137, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1753, !inline_history !1754
  %i.am = tail call fastcc noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.075.0136, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) #44, !noalias !1739 ; 0 uses
  %.sroa.075.0 = getelementptr inbounds nuw i8, ptr %.sroa.075.0136, i64 32 ; 2 uses
  %i.an = icmp eq ptr %.sroa.075.0, %i.aj
  %.val.i47 = load ptr, ptr %1, align 8, !noalias !1728, !nonnull !12, !noundef !12 ; 2 uses
  br i1 %i.an, label %.loopexit118, label %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i

.loopexit118:                                     ; preds = %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.preheader
  %.val.i47.lcssa = phi ptr [ %.val.i47135, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.preheader ], [ %.val.i47, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ]
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i47.lcssa, ptr noalias noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1755
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %.val.i44 = load ptr, ptr %1, align 8, !alias.scope !1758, !noalias !1761, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i44, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1763
  %.not127 = icmp eq i64 %i.ap, 0                 ; 3 uses
  br i1 %.not127, label %bb.p, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs7p2uQeJxui2_9deltalake.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i44, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1763
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs7p2uQeJxui2_9deltalake.exit

_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs7p2uQeJxui2_9deltalake.exit: ; preds = %.loopexit118.thread, %bb.s, %.loopexit, %.loopexit118, %bb.l, %bb.k, %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_i64Cs7p2uQeJxui2_9deltalake.exit.i, %bb.e, %.split.i.i, %.split2.i.i, %bb.m, %bb.b
  ret ptr null

_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.p, %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !12 ; 3 uses
  %.not = icmp ne ptr %i.ar, null                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %.sroa.07.sroa.6.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.ap, i64 0
  %.sroa.07.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.at, i64 undef ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.07.sroa.6.0, ptr %i.d, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ar, ptr %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.07.sroa.6.0, ptr %.sroa.08.sroa.6.0..sroa_idx, align 8
  %.sroa.08.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8
  %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.ar, ptr %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.59.0..sroa_idx, align 8
  %i.au = call { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0      ; 3 uses
  %.not40.peel = icmp eq ptr %i.av, null
  br i1 %.not40.peel, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs7p2uQeJxui2_9deltalake.exit
  %i.aw = extractvalue { ptr, ptr } %i.au, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  %.val.i45.peel = load ptr, ptr %i.ax, align 8, !alias.scope !1764, !noalias !1767 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.av, i64 16
  %.val3.i.peel = load i64, ptr %i.ay, align 8, !alias.scope !1764, !noalias !1767
  br i1 %.not127, label %bb.r, label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit.peel.next

bb.r:                                             ; preds = %bb.q
  %.val.i53.peel = load ptr, ptr %1, align 8, !noalias !1770, !nonnull !12, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i53.peel, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1770
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit.peel.next

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit.peel.next: ; preds = %bb.q, %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.peel) ], !noalias !1773
  %i.az = call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i45.peel, i64 noundef %.val3.i.peel), !noalias !1770 ; 0 uses
  %.val.i50132 = load ptr, ptr %1, align 8, !noalias !1774, !nonnull !12, !align !13, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i50132, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1774
  %i.ba = call fastcc noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw, ptr noalias noundef align 8 dereferenceable(8) %1) #44, !noalias !1778 ; 0 uses
  %i.bb = call { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) ; 2 uses
  %i.bc = extractvalue { ptr, ptr } %i.bb, 0      ; 2 uses
  %.not40133 = icmp eq ptr %i.bc, null
  br i1 %.not40133, label %.loopexit.thread, label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit

.loopexit.thread:                                 ; preds = %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit, %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit.peel.next, %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit
  %i.bd = phi ptr [ %i.bl, %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit ], [ %i.bc, %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit.peel.next ] ; 2 uses
  %i.be = phi { ptr, ptr } [ %i.bk, %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit ], [ %i.bb, %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit.peel.next ]
  %i.bf = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %.val.i45 = load ptr, ptr %i.bg, align 8, !alias.scope !1779, !noalias !1767 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bd, i64 16
  %.val3.i = load i64, ptr %i.bh, align 8, !alias.scope !1779, !noalias !1767
  %.val.i53 = load ptr, ptr %1, align 8, !noalias !1781, !nonnull !12, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i53, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1781
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45) ], !noalias !1782
  %i.bi = call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i45, i64 noundef %.val3.i), !noalias !1781 ; 0 uses
  %.val.i50 = load ptr, ptr %1, align 8, !noalias !1774, !nonnull !12, !align !13, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i50, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1774
  %i.bj = call fastcc noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf, ptr noalias noundef align 8 dereferenceable(8) %1) #44, !noalias !1778 ; 0 uses
  %i.bk = call { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 2 uses
  %.not40 = icmp eq ptr %i.bl, null
  br i1 %.not40, label %.loopexit.thread, label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs7p2uQeJxui2_9deltalake.exit

.loopexit:                                        ; preds = %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not127, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs7p2uQeJxui2_9deltalake.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit.thread, %.loopexit
  %.val.i46 = load ptr, ptr %1, align 8, !noalias !1783, !nonnull !12, !align !13, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i46, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1783
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
define hidden void @_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas5_1__NtB5_9ArrayTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.l = alloca [16 x i8], align 8                ; 20 uses
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
end_hunk_0
begin_hunk_1_@_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB8_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB14_7Visitor11visit_bytesNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake:bb.a
  %i.aq = icmp eq i8 %i.ap, 117
  br i1 %i.aq, label %bb.s, label %bb.d

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !noundef !12
  %i.at = icmp eq i8 %i.as, 101
  br i1 %i.at, label %bb.t, label %bb.d

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.av = load i8, ptr %i.au, align 1, !noundef !12
  %i.aw = icmp eq i8 %i.av, 84
  br i1 %i.aw, label %bb.u, label %bb.d

bb.u:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !12
  %i.az = icmp eq i8 %i.ay, 121
  br i1 %i.az, label %bb.v, label %bb.d

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !12
  %i.bc = icmp eq i8 %i.bb, 112
  br i1 %i.bc, label %bb.w, label %bb.d

bb.w:                                             ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i8, ptr %i.bd, align 1, !noundef !12
  %i.bf = icmp eq i8 %i.be, 101
  br i1 %i.bf, label %bb.g, label %bb.d

bb.x:                                             ; preds = %bb.a
  %i.bg = load i8, ptr %1, align 1, !noundef !12
  %i.bh = icmp eq i8 %i.bg, 118
  br i1 %i.bh, label %bb.y, label %bb.d

bb.y:                                             ; preds = %bb.x
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !12
  %i.bk = icmp eq i8 %i.bj, 97
  br i1 %i.bk, label %bb.z, label %bb.d

bb.z:                                             ; preds = %bb.y
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !12
  %i.bn = icmp eq i8 %i.bm, 108
  br i1 %i.bn, label %bb.aa, label %bb.d

bb.aa:                                            ; preds = %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !12
  %i.bq = icmp eq i8 %i.bp, 117
  br i1 %i.bq, label %bb.ab, label %bb.d

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bs = load i8, ptr %i.br, align 1, !noundef !12
  %i.bt = icmp eq i8 %i.bs, 101
  br i1 %i.bt, label %bb.ac, label %bb.d

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !12
  %i.bw = icmp eq i8 %i.bv, 67
  br i1 %i.bw, label %bb.ad, label %bb.d

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.by = load i8, ptr %i.bx, align 1, !noundef !12
  %i.bz = icmp eq i8 %i.by, 111
  br i1 %i.bz, label %bb.ae, label %bb.d

bb.ae:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !12
  %i.cc = icmp eq i8 %i.cb, 110
  br i1 %i.cc, label %bb.af, label %bb.d

bb.af:                                            ; preds = %bb.ae
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i8, ptr %i.cd, align 1, !noundef !12
  %i.cf = icmp eq i8 %i.ce, 116
  br i1 %i.cf, label %bb.ag, label %bb.d

bb.ag:                                            ; preds = %bb.af
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !12
  %i.ci = icmp eq i8 %i.ch, 97
  br i1 %i.ci, label %bb.ah, label %bb.d

bb.ah:                                            ; preds = %bb.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !12
  %i.cl = icmp eq i8 %i.ck, 105
  br i1 %i.cl, label %bb.ai, label %bb.d

bb.ai:                                            ; preds = %bb.ah
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !12
  %i.co = icmp eq i8 %i.cn, 110
  br i1 %i.co, label %bb.aj, label %bb.d

bb.aj:                                            ; preds = %bb.ai
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !12
  %i.cr = icmp eq i8 %i.cq, 115
  br i1 %i.cr, label %bb.ak, label %bb.d

bb.ak:                                            ; preds = %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !12
  %i.cu = icmp eq i8 %i.ct, 78
  br i1 %i.cu, label %bb.al, label %bb.d

bb.al:                                            ; preds = %bb.ak
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !12
  %i.cx = icmp eq i8 %i.cw, 117
  br i1 %i.cx, label %bb.am, label %bb.d

bb.am:                                            ; preds = %bb.al
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cz = load i8, ptr %i.cy, align 1, !noundef !12
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = load i8, ptr %i.da, align 1, !noundef !12
  %i.dc = icmp eq i8 %i.cz, 108
  %i.dd = icmp eq i8 %i.db, 108
  %or.cond = and i1 %i.dc, %i.dd
  br i1 %or.cond, label %bb.g, label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvXNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas7_1__NtB8_7MapTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB14_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  switch i64 %2, label %bb.f [
    i64 4, label %bb.b
    i64 7, label %bb.c
    i64 9, label %bb.d
    i64 17, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1701869940
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %i.f = xor i32 %i.e, 1417241963
  %i.g = getelementptr i8, ptr %1, i64 3
  %i.h = load i32, ptr %i.g, align 1
  %i.i = xor i32 %i.h, 1701869908
  %i.j = or i32 %i.f, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.n = load i64, ptr %1, align 1
  %i.o = xor i64 %i.n, 8104601799168385398
  %i.p = getelementptr i8, ptr %1, i64 8
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = xor i64 %i.r, 101
  %i.t = or i64 %i.o, %i.s
  %i.u = icmp ne i64 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.x = load i128, ptr %1, align 1
  %i.y = xor i128 %i.x, 144165713450578011585577419422542094710
  %i.z = getelementptr i8, ptr %1, i64 16
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i128
  %i.ac = xor i128 %i.ab, 108
  %i.ad = or i128 %i.y, %i.ac
  %i.ae = icmp ne i128 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sink = phi i8 [ 2, %bb.d ], [ 4, %bb.f ], [ 1, %bb.c ], [ 0, %bb.b ], [ 3, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink, ptr %i.ah, align 1
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs1I_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtB9_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtB1K_3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 10 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2265)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2268
  call void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueE4iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0), !noalias !2265
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val.i = load i64, ptr %i.c, align 8, !noalias !2268, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2270)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !2273, !noalias !2274, !nonnull !12, !align !13, !noundef !12 ; 7 uses
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2276
  %.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs7p2uQeJxui2_9deltalake.exit.i, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs7p2uQeJxui2_9deltalake.exit.thread.i

_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2276
  %i.d = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !2277 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 3 uses
  %.not14.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i, label %_RINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapRNtNtBV_6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2o_B2K_EECs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.a
  %i.f = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !2277 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 3 uses
  %.not14.i.i44.i = icmp eq ptr %i.g, null
  br i1 %.not14.i.i44.i, label %.thread.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs7p2uQeJxui2_9deltalake.exit.thread.i
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val9.peel.i.i.i = load ptr, ptr %i.i, align 8, !noalias !2277
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %.val10.peel.i.i.i = load i64, ptr %i.j, align 8, !noalias !2277
  call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  br label %bb.c

bb.b:                                             ; preds = %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs7p2uQeJxui2_9deltalake.exit.i
  %i.k = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr i8, ptr %i.e, i64 8
  %.val9.peel.i.i46.i = load ptr, ptr %i.l, align 8, !noalias !2277
  %i.m = getelementptr i8, ptr %i.e, i64 16
  %.val10.peel.i.i47.i = load i64, ptr %i.m, align 8, !noalias !2277
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2288
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.preheader.i.i.i
  %.val10.peel.i.i50.i = phi i64 [ %.val10.peel.i.i47.i, %bb.b ], [ %.val10.peel.i.i.i, %.lr.ph.split.preheader.i.i.i ]
  %.val9.peel.i.i48.i = phi ptr [ %.val9.peel.i.i46.i, %bb.b ], [ %.val9.peel.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 2 uses
  %i.n = phi ptr [ %i.k, %bb.b ], [ %i.h, %.lr.ph.split.preheader.i.i.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.peel.i.i48.i) ]
  %i.o = call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val9.peel.i.i48.i, i64 noundef %.val10.peel.i.i50.i), !noalias !2294 ; 0 uses
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2295
  call void @llvm.experimental.noalias.scope.decl(metadata !2296)
  %i.p = load i8, ptr %i.n, align 8, !range !2299, !alias.scope !2300, !noalias !2301, !noundef !12 ; 2 uses
  %i.q = add nsw i8 %i.p, -6
  %i.r = icmp samesign ugt i8 %i.p, 5
  %narrow.i.i.i.i.i.i.peel.i.i.i = select i1 %i.r, i8 %i.q, i8 3
  switch i8 %narrow.i.i.i.i.i.i.peel.i.i.i, label %.loopexit.i.i.i [
    i8 0, label %bb.f
    i8 1, label %bb.e
    i8 2, label %bb.d
    i8 3, label %_RINvXs1J_NtNtCs1gOyXocuPRE_10serde_core3ser5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtB9_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.peel.i.i.i
  ]

_RINvXs1J_NtNtCs1gOyXocuPRE_10serde_core3ser5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtB9_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.peel.i.i.i: ; preds = %bb.c
  %i.s = call fastcc noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) #44, !noalias !2305 ; 2 uses
  %.not.i.i.i.i.peel.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.peel.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i, label %_RINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapRNtNtBV_6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2o_B2K_EECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !14, !alias.scope !2300, !noalias !2301, !noundef !12
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.split.i.i.i.i.i.i.i.i.peel.i.i.i, label %.split2.i.i.i.i.i.i.i.i.peel.i.i.i

.split2.i.i.i.i.i.i.i.i.peel.i.i.i:               ; preds = %bb.d
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef range(i64 0, -9223372036854775808) 5), !noalias !2306
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i

.split.i.i.i.i.i.i.i.i.peel.i.i.i:                ; preds = %bb.d
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !2306
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2300, !noalias !2301, !nonnull !12, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2300, !noalias !2301, !noundef !12
  %i.aa = call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z), !noalias !2307 ; 0 uses
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !2300, !noalias !2301, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2308
  %i.ad = icmp slt i64 %i.ac, 0
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.peel.i.i.i = call i64 @llvm.abs.i64(i64 %i.ac, i1 false)
  %i.ae = call noundef i64 @_RNvXsu_CshiDJuw1g1VQ_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i.i.i.i.i.i.i.i.i.peel.i.i.i, ptr noalias noundef nonnull dereferenceable(20) %i.a), !noalias !2306 ; 2 uses
  br i1 %i.ad, label %bb.g, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_i64Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.peel.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = add i64 %i.ae, -1                       ; 4 uses
  %i.ag = icmp ult i64 %i.af, 20
  br i1 %i.ag, label %bb.h, label %.loopexit17.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  store i8 45, ptr %i.ah, align 1, !alias.scope !2311, !noalias !2308
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_i64Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.peel.i.i.i

_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_i64Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.peel.i.i.i: ; preds = %bb.h, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.peel.i.i.i = phi i64 [ %i.af, %bb.h ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ai = sub nuw i64 20, %.sroa.0.0.i.i.i.i.i.i.i.i.i.peel.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.peel.i.i.i
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef range(i64 0, -9223372036854775808) %i.ai), !noalias !2306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2308
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i: ; preds = %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_i64Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.peel.i.i.i, %bb.e, %.split.i.i.i.i.i.i.i.i.peel.i.i.i, %.split2.i.i.i.i.i.i.i.i.peel.i.i.i, %_RINvXs1J_NtNtCs1gOyXocuPRE_10serde_core3ser5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtB9_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.peel.i.i.i
  %i.ak = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !2314 ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %.not.peel.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.peel.i.i.i, label %.thread.i, label %.lr.ph.split.peel.next.i.i.i

.lr.ph.split.peel.next.i.i.i:                     ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.am = phi ptr [ %i.bo, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.al, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i ] ; 2 uses
  %i.an = phi { ptr, ptr } [ %i.bn, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.ak, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i ]
  %i.ao = extractvalue { ptr, ptr } %i.an, 1      ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %.val9.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !2314 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.am, i64 16
  %.val10.i.i.i = load i64, ptr %i.aq, align 8, !noalias !2314
  call void @llvm.experimental.noalias.scope.decl(metadata !2315)
  call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2265, !noalias !2319, !nonnull !12, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2322
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  %i.ar = call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val9.i.i.i, i64 noundef %.val10.i.i.i), !noalias !2322 ; 0 uses
  %.val.i6.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2265, !noalias !2323, !nonnull !12, !align !13, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2324
  call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  %i.as = load i8, ptr %i.ao, align 8, !range !2299, !alias.scope !2331, !noalias !2332, !noundef !12 ; 2 uses
  %i.at = add nsw i8 %i.as, -6
  %i.au = icmp samesign ugt i8 %i.as, 5
  %narrow.i.i.i.i.i.i.i.i.i = select i1 %i.au, i8 %i.at, i8 3
  switch i8 %narrow.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i [
    i8 0, label %bb.i
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %_RINvXs1J_NtNtCs1gOyXocuPRE_10serde_core3ser5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtB9_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i
  ]

.loopexit.i.i.i:                                  ; preds = %.lr.ph.split.peel.next.i.i.i, %bb.c
  unreachable

bb.i:                                             ; preds = %.lr.ph.split.peel.next.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !2331, !noalias !2332, !noundef !12 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2333, !noalias !2334 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2335
  %i.ax = icmp slt i64 %i.aw, 0
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %i.aw, i1 false)
  %i.ay = call noundef i64 @_RNvXsu_CshiDJuw1g1VQ_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull dereferenceable(20) %i.a), !noalias !2336 ; 2 uses
  br i1 %i.ax, label %bb.j, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_i64Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.az = add i64 %i.ay, -1                       ; 4 uses
  %i.ba = icmp ult i64 %i.az, 20
  br i1 %i.ba, label %bb.k, label %.loopexit17.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  store i8 45, ptr %i.bb, align 1, !alias.scope !2311, !noalias !2335
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_i64Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i

.loopexit17.i.i.i:                                ; preds = %bb.j, %bb.g
  %.lcssa.i.i.i = phi i64 [ %i.af, %bb.g ], [ %i.az, %bb.j ]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i.i.i, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1884) #41, !noalias !2336
  unreachable

_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_i64Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.k ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bc = sub nuw i64 20, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val1.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef range(i64 0, -9223372036854775808) %i.bc), !noalias !2336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2335
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB3j_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.l:                                             ; preds = %.lr.ph.split.peel.next.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !2331, !noalias !2332, !nonnull !12, !noundef !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !2331, !noalias !2332, !noundef !12
end_hunk_1
begin_hunk_2_@_RINvXss_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake:bb.a

bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit128.i.i.i unwind label %bb.ci, !noalias !2948

bb.ci:                                            ; preds = %bb.ch
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.cj, !noalias !2948

bb.cj:                                            ; preds = %bb.ci
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !2948
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit128.i.i.i: ; preds = %bb.ch
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !2948
  br label %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i

bb.ck:                                            ; preds = %.thread.i.i.i, %.body120.i.i.i
  %.pn135.i.i.i = phi { ptr, i32 } [ %eh.lpad-body118.i.i.i, %.thread.i.i.i ], [ %.pn.ph.i.i.i, %.body120.i.i.i ]
  %.sroa.080.1134.i.i.i = phi i8 [ 1, %.thread.i.i.i ], [ %.sroa.080.1.ph.i.i.i, %.body120.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #39
          to label %.body124.i.i.i unwind label %bb.cb, !noalias !2948

bb.cl:                                            ; preds = %.body124.i.i.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #39
          to label %common.resume unwind label %bb.cb, !noalias !2948

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit128.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2909
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i

_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ca, %bb.bt
  %.sroa.066.0.i.i.i = phi i64 [ %i.go, %bb.bt ], [ %i.gq, %bb.ca ] ; 4 uses
  %.sroa.368.0.i.i.i = phi ptr [ %.sroa.368.0.copyload.i.i.i, %bb.bt ], [ %i.gt, %bb.ca ] ; 4 uses
  %.sroa.471.0.i.i.i = phi i64 [ %.sroa.471.0.copyload.i.i.i, %bb.bt ], [ %.sroa.693.0.copyload.i.i.i, %bb.ca ] ; 4 uses
  %.sroa.0.0.copyload13 = load i64, ptr %i.e, align 8, !noalias !2955 ; 3 uses
  %.sroa.22.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.22.0.copyload18 = load ptr, ptr %.sroa.22.0..sroa_idx17, align 8, !noalias !2955 ; 3 uses
  %.sroa.36.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.36.0.copyload24 = load i64, ptr %.sroa.36.0..sroa_idx23, align 8, !noalias !2955 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2909
  %i.hj = icmp eq i64 %.sroa.0.0.copyload13, -9223372036854775808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2909
  br i1 %i.hj, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i, label %bb.cm

bb.cm:                                            ; preds = %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i
  store i64 %.sroa.0.0.copyload13, ptr %i.j, align 8, !noalias !2956
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.22.0.copyload18, ptr %.sroa.22.0..sroa_idx, align 8, !noalias !2956
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.36.0.copyload24, ptr %.sroa.36.0..sroa_idx, align 8, !noalias !2956
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.066.0.i.i.i, ptr %.sroa.37.0..sroa_idx, align 8, !noalias !2956
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %.sroa.368.0.i.i.i, ptr %.sroa.39.0..sroa_idx, align 8, !noalias !2956
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.471.0.i.i.i, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !2956
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  %i.hk = icmp eq ptr %i.bc, %.sroa.0.0.i.i
  br i1 %i.hk, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i, label %bb.cn, !prof !28

bb.cn:                                            ; preds = %bb.cm
  %i.hl = ptrtoint ptr %.sroa.0.0.i.i to i64
  %i.hm = ptrtoint ptr %i.bc to i64
  %i.hn = sub nuw i64 %i.hm, %i.hl
  %i.ho = lshr exact i64 %i.hn, 6
  %i.hp = add nuw nsw i64 %i.ho, %.sroa.14.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2957
  store i64 %.sroa.14.0.i.i, ptr %i.b, align 8, !noalias !2957
  %i.hq = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef %i.hp, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @335)
          to label %bb.cp unwind label %bb.co, !noalias !2960

bb.co:                                            ; preds = %bb.cn
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema21StructTypeSerDeHelperECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.j) #39
          to label %common.resume unwind label %bb.cq, !noalias !2960

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2957
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema21StructTypeSerDeHelperECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.j), !noalias !2960
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i

bb.cq:                                            ; preds = %bb.co
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !2960
  unreachable

_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.cp, %bb.cm, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %.sroa.41.0 = phi i64 [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ %.sroa.471.0.i.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.471.0.i.i.i, %bb.cm ], [ %.sroa.471.0.i.i.i, %bb.cp ]
  %.sroa.39.0 = phi ptr [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ %.sroa.368.0.i.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.368.0.i.i.i, %bb.cm ], [ %.sroa.368.0.i.i.i, %bb.cp ]
  %.sroa.37.0 = phi i64 [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ %.sroa.066.0.i.i.i, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.066.0.i.i.i, %bb.cm ], [ %.sroa.066.0.i.i.i, %bb.cp ]
  %.sroa.36.0 = phi i64 [ undef, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ %.sroa.36.0.copyload24, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.36.0.copyload24, %bb.cm ], [ %.sroa.36.0.copyload24, %bb.cp ]
  %.sroa.22.0 = phi ptr [ %.sroa.22.2, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ %.sroa.22.0.copyload18, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.22.0.copyload18, %bb.cm ], [ %i.hq, %bb.cp ]
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ -9223372036854775808, %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtBb_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.0.0.copyload13, %bb.cm ], [ -9223372036854775808, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2907
  br label %_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB3c_21StructTypeSerDeHelperNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit

_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB3c_21StructTypeSerDeHelperNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.41.2 = phi i64 [ %.sroa.41.0, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.41.1, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.39.2 = phi ptr [ %.sroa.39.0, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.39.1, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.37.2 = phi i64 [ %.sroa.37.0, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.37.1, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.36.2 = phi i64 [ %.sroa.36.0, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.36.1, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.22.5 = phi ptr [ %.sroa.22.0, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.22.3, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %.sroa.0.5 = phi i64 [ %.sroa.0.0, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.0.3, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB1f_21StructTypeSerDeHelperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %i.ht = icmp eq i64 %.sroa.0.5, -9223372036854775808
  br i1 %i.ht, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB3c_21StructTypeSerDeHelperNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit.thread, %_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB3c_21StructTypeSerDeHelperNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit
  %.sroa.22.539 = phi ptr [ %i.u, %_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB3c_21StructTypeSerDeHelperNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit.thread ], [ %.sroa.22.5, %_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB3c_21StructTypeSerDeHelperNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit ]
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.22.539, ptr %i.hu, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.db

bb.cs:                                            ; preds = %_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas2_1__NtB3c_21StructTypeSerDeHelperNtB22_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake.exit
  store i64 %.sroa.0.5, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.22.5, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.36.2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store i64 %.sroa.37.2, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %.sroa.39.2, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %.sroa.41.2, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType7try_newINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB6_11StructFieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(none) dereferenceable(144) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cv, %bb.cs
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.dc

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.hw = load i64, ptr %i.r, align 16, !range !62, !noundef !12
  %i.hx = icmp eq i64 %i.hw, -9223372036854775808
  br i1 %i.hx, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.hy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.p, ptr noundef nonnull align 16 dereferenceable(96) %i.hy, i64 96, i1 false)
  %i.hz = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.p)
          to label %bb.da unwind label %bb.ct

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(144) %i.r, i64 144, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.da, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.cx
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %bb.db

bb.da:                                            ; preds = %bb.cv
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hz, ptr %i.ic, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.cx

bb.db:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.dc:                                            ; preds = %bb.ct
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBR_6string6StringNtNtB8_5value5ValueEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2961)
  %i.b = load i8, ptr %0, align 8, !range !14, !alias.scope !2961, !noalias !2964, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41, !noalias !2966
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2961, !noalias !2964, !nonnull !12, !align !13, !noundef !12 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !1395, !alias.scope !2961, !noalias !2964, !noundef !12
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2966, !nonnull !12, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2966
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.f, align 1, !alias.scope !2961, !noalias !2964
  %i.i = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !2961 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2967)
  %.val.i4 = load ptr, ptr %i.e, align 8, !noalias !2967, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2967
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2973)
  %i.j = load ptr, ptr %3, align 8, !alias.scope !2975, !noalias !2973, !noundef !12
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2982)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2985
  call void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE4iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !2989
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !2985, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2990)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2993, !noalias !2994, !nonnull !12, !align !13, !noundef !12 ; 5 uses
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2996
  %.not.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.split.preheader.i.i.i.i.i.i.i, label %.split.preheader.i.i.thread.i.i.i.i.i

.split.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.f
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !2996
  %i.l = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !2997 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 3 uses
  %.not.us.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.us.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread3.i, label %bb.h

.split.preheader.i.i.thread.i.i.i.i.i:            ; preds = %bb.f
  %i.n = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !2997 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 3 uses
  %.not.us.i.i39.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.us.i.i39.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.split.preheader.i.i.thread.i.i.i.i.i
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val9.peel.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !2997
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %.val10.peel.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !2997
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.split.preheader.i.i.i.i.i.i.i
  %i.s = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr i8, ptr %i.m, i64 8
  %.val9.peel.i.i42.i.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !2997
  %i.u = getelementptr i8, ptr %i.m, i64 16
  %.val10.peel.i.i43.i.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !2997
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3002
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.val10.peel.i.i46.i.i.i.i.i = phi i64 [ %.val10.peel.i.i43.i.i.i.i.i, %bb.h ], [ %.val10.peel.i.i.i.i.i.i.i, %bb.g ]
  %.val9.peel.i.i44.i.i.i.i.i = phi ptr [ %.val9.peel.i.i42.i.i.i.i.i, %bb.h ], [ %.val9.peel.i.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.v = phi ptr [ %i.s, %bb.h ], [ %i.p, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.peel.i.i44.i.i.i.i.i) ]
  %i.w = call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val9.peel.i.i44.i.i.i.i.i, i64 noundef %.val10.peel.i.i46.i.i.i.i.i), !noalias !3012 ; 0 uses
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3013
  %i.x = call fastcc noalias noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #44, !noalias !3014, !inline_history !3015 ; 2 uses
  %.not8.peel.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not8.peel.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.i

.split.i.i.i.i.i.i.i:                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i
  %i.y = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !3016 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.loopexit.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !3016 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %.val10.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !3016
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2989, !noalias !3017, !nonnull !12, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3020
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i) ]
  %i.ad = call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val9.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i), !noalias !3020 ; 0 uses
  %.val.i6.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2989, !noalias !3021, !nonnull !12, !align !13, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3022
  %i.ae = call fastcc noalias noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #44, !noalias !3023, !inline_history !3015 ; 2 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not8.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.i, !llvm.loop !3024

.thread.loopexit.i.i.i.i.i:                       ; preds = %.split.i.i.i.i.i.i.i
  %.val.i10.pre.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2989, !noalias !3025
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.thread.loopexit.i.i.i.i.i, %.split.preheader.i.i.thread.i.i.i.i.i
  %.val.i10.i.i.i.i.i = phi ptr [ %.val.i10.pre.i.i.i.i.i, %.thread.loopexit.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %.split.preheader.i.i.thread.i.i.i.i.i ]
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i10.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3028
  br label %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread3.i

_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2973, !noalias !2975, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !3029
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtB8_5value5ValueEEECs7p2uQeJxui2_9deltalake.exit

_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread3.i: ; preds = %.thread.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2985
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtB8_5value5ValueEEECs7p2uQeJxui2_9deltalake.exit

_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.x, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.peel.i.i.i.i.i.i.i ], [ %i.ae, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2985
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtB8_5value5ValueEEECs7p2uQeJxui2_9deltalake.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtBX_6string6StringNtNtB8_5value5ValueEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread.i, %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread3.i, %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.i ], [ null, %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread3.i ], [ null, %_RINvXs3_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtB8_9Serialize9serializeQINtNtB2X_3ser10SerializerQINtNtB2l_3vec3VechEEECs7p2uQeJxui2_9deltalake.exit.thread.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBR_6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  %i.a = load i8, ptr %0, align 8, !range !14, !alias.scope !3030, !noalias !3033, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41, !noalias !3035
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3030, !noalias !3033, !nonnull !12, !align !13, !noundef !12 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !1395, !alias.scope !3030, !noalias !3033, !noundef !12
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !3035, !nonnull !12, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3035
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.e, align 1, !alias.scope !3030, !noalias !3033
  %i.h = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !3030 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3036)
  %.val.i4 = load ptr, ptr %i.d, align 8, !noalias !3036, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3042)
  %i.i = load i64, ptr %3, align 8, !range !62, !alias.scope !3044, !noalias !3042, !noundef !12
  %.not.i.i = icmp eq i64 %i.i, -9223372036854775808
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i.i = load ptr, ptr %i.j, align 8, !alias.scope !3044, !noalias !3042, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val2.i.i = load i64, ptr %i.k, align 8, !alias.scope !3044, !noalias !3042, !noundef !12
  %i.l = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val1.i.i, i64 noundef %.val2.i.i), !noalias !3044 ; 0 uses
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3042, !noalias !3044, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !3045
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEECs7p2uQeJxui2_9deltalake.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.g
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14IsolationLevelEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %3) unnamed_addr #1 {
end_hunk_2
begin_hunk_3_@_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeNtNvXNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize1__NtB2U_7MetricsNtB1L_9Serialize9serializes_15___SerializeWithECs7p2uQeJxui2_9deltalake:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41, !noalias !3100
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3095, !noalias !3098, !nonnull !12, !align !13, !noundef !12 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !1395, !alias.scope !3095, !noalias !3098, !noundef !12
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNvXNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize1__NtB2Z_7MetricsNtB1R_9Serialize9serializes_15___SerializeWithECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !3100, !nonnull !12, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3100
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNvXNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize1__NtB2Z_7MetricsNtB1R_9Serialize9serializes_15___SerializeWithECs7p2uQeJxui2_9deltalake.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueNtNvXNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize1__NtB2Z_7MetricsNtB1R_9Serialize9serializes_15___SerializeWithECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.e, align 1, !alias.scope !3095, !noalias !3098
  %i.h = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !3095 ; 0 uses
  %.val.i4 = load ptr, ptr %i.d, align 8, !noalias !3101, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3101
  %i.i = tail call noundef align 8 ptr @_RINvXs_NvXNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize1__NtBa_7MetricsNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeNtB5_s_15___SerializeWithB1j_9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryebECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  %i.a = load i8, ptr %0, align 8, !range !14, !alias.scope !3104, !noalias !3107, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41, !noalias !3109
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3104, !noalias !3107, !nonnull !12, !align !13, !noundef !12 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !1395, !alias.scope !3104, !noalias !3107, !noundef !12
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !3109, !nonnull !12, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3109
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.e, align 1, !alias.scope !3104, !noalias !3107
  %i.h = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !3104 ; 0 uses
  %.val4 = load i8, ptr %3, align 1
  %.val.i5 = load ptr, ptr %i.d, align 8, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val9.i = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.i = trunc nuw i8 %.val4 to i1
  br i1 %i.i, label %.split.i.i.i.i, label %.split2.i.i.i.i

.split2.i.i.i.i:                                  ; preds = %bb.e
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef range(i64 0, -9223372036854775808) 5)
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valuebECs7p2uQeJxui2_9deltalake.exit

.split.i.i.i.i:                                   ; preds = %bb.e
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valuebECs7p2uQeJxui2_9deltalake.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valuebECs7p2uQeJxui2_9deltalake.exit: ; preds = %.split2.i.i.i.i, %.split.i.i.i.i
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryejECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3110)
  %i.b = load i8, ptr %0, align 8, !range !14, !alias.scope !3110, !noalias !3113, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41, !noalias !3115
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3110, !noalias !3113, !nonnull !12, !align !13, !noundef !12 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !1395, !alias.scope !3110, !noalias !3113, !noundef !12
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valuejECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !3115, !nonnull !12, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3115
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valuejECs7p2uQeJxui2_9deltalake.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valuejECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.f, align 1, !alias.scope !3110, !noalias !3113
  %i.i = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !3110 ; 0 uses
  %.val4 = load i64, ptr %3, align 8
  %.val.i5 = load ptr, ptr %i.e, align 8, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val9.i = load ptr, ptr %i.e, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call noundef i64 @_RNvXsu_CshiDJuw1g1VQ_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val4, ptr noalias noundef nonnull dereferenceable(20) %i.a) ; 2 uses
  %i.k = sub nuw i64 20, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeyECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3116)
  %i.b = load i8, ptr %0, align 8, !range !14, !alias.scope !3116, !noalias !3119, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41, !noalias !3121
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3116, !noalias !3119, !nonnull !12, !align !13, !noundef !12 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !1395, !alias.scope !3116, !noalias !3119, !noundef !12
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueyECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !3121, !nonnull !12, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3121
  br label %_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueyECs7p2uQeJxui2_9deltalake.exit

_RINvXs6_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_valueyECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.f, align 1, !alias.scope !3116, !noalias !3119
  %i.i = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !3116 ; 0 uses
  %.val4 = load i64, ptr %3, align 8
  %.val.i5 = load ptr, ptr %i.e, align 8, !nonnull !12, !align !13, !noundef !12
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val9.i = load ptr, ptr %i.e, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call noundef i64 @_RNvXsu_CshiDJuw1g1VQ_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val4, ptr noalias noundef nonnull dereferenceable(20) %i.a) ; 2 uses
  %i.k = sub nuw i64 20, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1y_5types3any5PyAnyENtNtB1y_3err5PyErrEENtNtNtNtBW_4iter6traits8iterator8Iterator6reduceNCNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_nexts_0EB3H_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3122, !noalias !3125, !nonnull !12, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3122, !noalias !3125, !nonnull !12, !noundef !12 ; 4 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1D_5types3any5PyAnyENtNtB1D_3err5PyErrEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1D_5types3any5PyAnyENtNtB1D_3err5PyErrEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1D_5types3any5PyAnyENtNtB1D_3err5PyErrEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !3122, !noalias !3125
  %.sroa.0.0.copyload3 = load i64, ptr %i.f, align 8, !noalias !3122 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload3, 2
  br i1 %.not, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1D_5types3any5PyAnyENtNtB1D_3err5PyErrEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1D_5types3any5PyAnyENtNtB1D_3err5PyErrEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx4, i64 56, i1 false)
  store i64 %.sroa.0.0.copyload3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1E_5types3any5PyAnyENtNtB1E_3err5PyErrEENtNtNtNtB12_4iter6traits8iterator8Iterator4foldBX_NCNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_nexts_0EB3P_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1D_5types3any5PyAnyENtNtB1D_3err5PyErrEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.a, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1D_5types3any5PyAnyENtNtB1D_3err5PyErrEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit
  store i64 2, ptr %0, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1D_5types3any5PyAnyENtNtB1D_3err5PyErrEENtNtNtB11_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1D_5types3any5PyAnyENtNtB1D_3err5PyErrEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB12_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapRNtNtB1N_6string6StringRNtNtB14_5value5ValueRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB3F_B42_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE4iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.promoted = load i8, ptr %i.c, align 1
  %i.d = load i8, ptr %0, align 8, !range !14
  %.fr22 = freeze i8 %i.d
  %i.e = trunc i8 %.fr22 to i1
  %i.f = load ptr, ptr %i.b, align 8, !nonnull !12, !align !13 ; 8 uses
  %i.g = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !3127 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.h, null           ; 2 uses
  br i1 %i.e, label %.split.us, label %.split.preheader, !prof !20

.split.preheader:                                 ; preds = %bb.a
  br i1 %.not.i.i.us, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB1B_3ser8CompoundQINtNtBZ_3vec3VechENtB4s_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapRBV_RB1x_RINtB6_7HashMapBV_B1x_EE0INtNtB2m_6result6ResultuNtNtB1B_5error5ErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %.split.preheader
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val9.i.i.peel = load ptr, ptr %i.j, align 8, !noalias !3127 ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 16
  %.val10.i.i.peel = load i64, ptr %i.k, align 8, !noalias !3127
  call void @llvm.experimental.noalias.scope.decl(metadata !3130)
  call void @llvm.experimental.noalias.scope.decl(metadata !3133)
  %i.l = icmp eq i8 %.promoted, 1
  br i1 %i.l, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.i.i.peel = load ptr, ptr %i.f, align 8, !noalias !3136, !nonnull !12, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3136
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.peel

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.peel: ; preds = %bb.c, %bb.b
  store i8 2, ptr %i.c, align 1, !alias.scope !3142, !noalias !3143
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.peel) ]
  %i.m = call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val9.i.i.peel, i64 noundef %.val10.i.i.peel), !noalias !3136 ; 0 uses
  %.val.i6.i.i.i.i.i.i.peel = load ptr, ptr %i.f, align 8, !noalias !3146, !nonnull !12, !align !13, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3146
  %i.n = call fastcc noalias noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #44, !noalias !3147, !inline_history !3015 ; 2 uses
  %.not8.i.i.peel = icmp eq ptr %i.n, null
  br i1 %.not8.i.i.peel, label %.split, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB1B_3ser8CompoundQINtNtBZ_3vec3VechENtB4s_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapRBV_RB1x_RINtB6_7HashMapBV_B1x_EE0INtNtB2m_6result6ResultuNtNtB1B_5error5ErrorEECs7p2uQeJxui2_9deltalake.exit

.split.us:                                        ; preds = %bb.a
  br i1 %.not.i.i.us, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB1B_3ser8CompoundQINtNtBZ_3vec3VechENtB4s_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapRBV_RB1x_RINtB6_7HashMapBV_B1x_EE0INtNtB2m_6result6ResultuNtNtB1B_5error5ErrorEECs7p2uQeJxui2_9deltalake.exit, label %.split21.us

.split21.us:                                      ; preds = %.split.us
  call void @llvm.experimental.noalias.scope.decl(metadata !3148)
  call void @llvm.experimental.noalias.scope.decl(metadata !3150)
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41, !noalias !3152
  unreachable

.split:                                           ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.peel, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i
  %i.o = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !3127 ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB1B_3ser8CompoundQINtNtBZ_3vec3VechENtB4s_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapRBV_RB1x_RINtB6_7HashMapBV_B1x_EE0INtNtB2m_6result6ResultuNtNtB1B_5error5ErrorEECs7p2uQeJxui2_9deltalake.exit, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.split
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.val9.i.i = load ptr, ptr %i.r, align 8, !noalias !3127 ; 2 uses
  %i.s = getelementptr i8, ptr %i.p, i64 16
  %.val10.i.i = load i64, ptr %i.s, align 8, !noalias !3127
  call void @llvm.experimental.noalias.scope.decl(metadata !3148)
  call void @llvm.experimental.noalias.scope.decl(metadata !3150)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !3152, !nonnull !12, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3152
  store i8 2, ptr %i.c, align 1, !alias.scope !3153, !noalias !3143
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i) ]
  %i.t = call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val9.i.i, i64 noundef %.val10.i.i), !noalias !3152 ; 0 uses
  %.val.i6.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !3154, !nonnull !12, !align !13, !noundef !12
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3154
  %i.u = call fastcc noalias noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #44, !noalias !3155, !inline_history !3015 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i, label %.split, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB1B_3ser8CompoundQINtNtBZ_3vec3VechENtB4s_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapRBV_RB1x_RINtB6_7HashMapBV_B1x_EE0INtNtB2m_6result6ResultuNtNtB1B_5error5ErrorEECs7p2uQeJxui2_9deltalake.exit, !llvm.loop !3156

_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB1B_3ser8CompoundQINtNtBZ_3vec3VechENtB4s_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapRBV_RB1x_RINtB6_7HashMapBV_B1x_EE0INtNtB2m_6result6ResultuNtNtB1B_5error5ErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.split, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i, %.split.us, %.split.preheader, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.peel
  %.sroa.0.0 = phi ptr [ null, %.split.preheader ], [ %i.n, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.peel ], [ null, %.split.us ], [ %i.u, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCs6sYutav3ODB_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i ], [ null, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtCs7p2uQeJxui2_9deltalake6schema5FieldNtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3_EEB7_(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 5 uses
  %.sroa.66.i.i.i = alloca [48 x i8], align 8     ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.10.i = alloca [48 x i8], align 8         ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !3157, !noalias !3160
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !3157, !noalias !3160, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !3157, !noalias !3160 ; 2 uses
  %i.l = icmp ult i64 %.sroa.55.0.copyload.i, 96076792050570582
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  store ptr %.sroa.44.0.copyload.i, ptr %i.k, align 8, !alias.scope !3165, !noalias !3167
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3165, !noalias !3167
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3165, !noalias !3167
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3165, !noalias !3167
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.a, ptr %i.n, align 8, !alias.scope !3169, !noalias !3170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8, !noalias !3171
  %i.o = invoke noundef i64 @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits10exact_sizeQINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB25_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1m_3VecB25_EE0ENtB2_17ExactSizeIterator3lenB29_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %.noexc unwind label %bb.n     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6expectCs7p2uQeJxui2_9deltalake.exit.i, !prof !20

bb.b:                                             ; preds = %.noexc
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 67, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #40
          to label %.noexc1 unwind label %bb.n

.noexc1:                                          ; preds = %bb.b
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6expectCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.noexc
  store i64 %i.o, ptr %i.i, align 8, !noalias !3171
  %i.q = call noundef ptr @PyList_New(i64 noundef %i.o) #43, !noalias !3175 ; 5 uses
  store ptr %i.q, ptr %i.h, align 8, !noalias !3171
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.h, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.q) #43, !noalias !3175
  br label %.body

bb.d:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6expectCs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvNtCsgbCypRs12E4_4pyo33err17panic_after_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #40
          to label %.noexc2 unwind label %bb.n

.noexc2:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6expectCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3171
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3171
  store ptr %i.j, ptr %i.f, align 8, !noalias !3171
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.t, align 8, !noalias !3171
  %i.u = icmp eq i64 %i.o, 0
  br i1 %i.u, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3176
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter6traits8iteratorQQINtNtNtBa_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB27_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1o_3VecB27_EE0ENtB6_8Iterator8try_foldiNCINvNvXs_NtBX_4takeINtB55_4TakepEB4x_8try_fold5checkINtNtBc_6result6ResultINtNtB31_8instance5BoundNtNtNtB31_5types3any5PyAnyENtNtB31_3err5PyErrEiIB5N_iB6X_ENCINvNtB6A_4list17try_new_from_iterBR_E0E0INtNtNtBc_3ops12control_flow11ControlFlowB7h_iEEB2b_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %.noexc.i unwind label %bb.c, !noalias !3175

.noexc.i:                                         ; preds = %bb.f
  %i.v = load i64, ptr %i.d, align 8, !range !212, !noalias !3176, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq i64 %i.v, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !3181 ; 3 uses
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeQQINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB24_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1l_3VecB24_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCINvNtNtB2Y_5types4list17try_new_from_iterBZ_E0INtNtBb_6result6ResultiNtNtB2Y_3err5PyErrEEB28_.exit.thread6.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeQQINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB24_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1l_3VecB24_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCINvNtNtB2Y_5types4list17try_new_from_iterBZ_E0INtNtBb_6result6ResultiNtNtB2Y_3err5PyErrEEB28_.exit.i

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeQQINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB24_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1l_3VecB24_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCINvNtNtB2Y_5types4list17try_new_from_iterBZ_E0INtNtBb_6result6ResultiNtNtB2Y_3err5PyErrEEB28_.exit.thread6.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3176
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.m, %bb.k
  unreachable

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeQQINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB24_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1l_3VecB24_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCINvNtNtB2Y_5types4list17try_new_from_iterBZ_E0INtNtBb_6result6ResultiNtNtB2Y_3err5PyErrEEB28_.exit.i: ; preds = %.noexc.i
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i, i64 48, i1 false), !noalias !3181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3176
  %i.y = trunc nuw i64 %i.v to i1
  br i1 %i.y, label %bb.o, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeQQINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB24_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1l_3VecB24_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCINvNtNtB2Y_5types4list17try_new_from_iterBZ_E0INtNtBb_6result6ResultiNtNtB2Y_3err5PyErrEEB28_.exit.thread6.i, %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeQQINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB24_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1l_3VecB24_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCINvNtNtB2Y_5types4list17try_new_from_iterBZ_E0INtNtBb_6result6ResultiNtNtB2Y_3err5PyErrEEB28_.exit.i
  %.sroa.7.15.i = phi i64 [ %i.x, %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeQQINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB24_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1l_3VecB24_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCINvNtNtB2Y_5types4list17try_new_from_iterBZ_E0INtNtBb_6result6ResultiNtNtB2Y_3err5PyErrEEB28_.exit.i ], [ %i.x, %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeQQINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB24_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1l_3VecB24_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCINvNtNtB2Y_5types4list17try_new_from_iterBZ_E0INtNtBb_6result6ResultiNtNtB2Y_3err5PyErrEEB28_.exit.thread6.i ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i64 %.sroa.7.15.i, ptr %i.g, align 8, !noalias !3171
end_hunk_3
begin_hunk_4_@_RNvMsZ_NtCs7p2uQeJxui2_9deltalake6schemaNtB5_5Field8___repr__:bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit107
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit107
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit110 unwind label %bb.al

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %.body, %bb.d, %bb.ar, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.bw, %bb.ar ], [ %i.bt, %bb.al ], [ %.pn85, %bb.d ], [ %.pn83, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit110: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %bb.an

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit113, %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.ao:                                            ; preds = %bb.ai, %bb.af, %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ap:                                            ; preds = %bb.ae, %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.045.0.copyload) #43
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.514)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit113 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit113: ; preds = %bb.aq
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %bb.an

bb.at:                                            ; preds = %bb.k, %bb.g
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.030.0.copyload) #43
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.an
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsZ_NtCs7p2uQeJxui2_9deltalake6schemaNtB5_5Field8metadata(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [64 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvMNtNtCsgbCypRs12E4_4pyo35types6moduleNtB3_8PyModule6importReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @252, i64 noundef 4)
  %i.o = load i64, ptr %i.l, align 8, !range !11, !noundef !12
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.036.0.copyload = load ptr, ptr %i.q, align 8 ; 5 uses
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.239.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.537.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.036.0.copyload, ptr %i.r, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store ptr %.sroa.036.0.copyload, ptr %i.m, align 8
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @286, i64 noundef 5)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.n, align 8, !range !11, !noundef !12
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.042.0.copyload = load ptr, ptr %i.v, align 8 ; 9 uses
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.245.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.543.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.042.0.copyload, ptr %i.w, align 8
  store i64 1, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.036.0.copyload) #43
  br label %bb.an

bb.g:                                             ; preds = %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i, %bb.i, %bb.h, %bb.ag
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.036.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5555
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.h
  %i.z = load i64, ptr %i.g, align 8, !range !11, !noalias !5555, !noundef !12
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !62, !noalias !5555, !noundef !12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j, !prof !20

bb.i:                                             ; preds = %.noexc
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !5555
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #40
          to label %.noexc118 unwind label %bb.g

.noexc118:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !5555, !nonnull !12, !noundef !12
  %i.ag = icmp samesign ugt i64 %i.ac, 127
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5555
  store i64 %i.ac, ptr %i.h, align 8, !noalias !5555
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ah, align 8, !noalias !5555
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.ai, align 8, !noalias !5555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5559
  store ptr %i.h, ptr %i.f, align 8, !noalias !5559
  %i.aj = invoke fastcc noundef align 8 ptr @_RINvXs1I_NtNtCs1gOyXocuPRE_10serde_core3ser5implsINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtB9_9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtB1K_3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef align 8 dereferenceable(8) %i.f)
          to label %bb.l unwind label %bb.k, !noalias !5563 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #39
          to label %.body unwind label %bb.p, !noalias !5563

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5559
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.n, !noalias !5563

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.o, !noalias !5563

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !5563
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread unwind label %bb.g

.thread:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5555
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !5563
  unreachable

bb.q:                                             ; preds = %bb.l
  %.sroa.0127.0.copyload = load i64, ptr %i.h, align 8, !noalias !5564 ; 2 uses
  %.sroa.6128.0.copyload = load ptr, ptr %i.ah, align 8, !noalias !5564 ; 2 uses
  %.sroa.9129.0.copyload = load i64, ptr %i.ai, align 8, !noalias !5564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5555
  %i.ao = icmp eq i64 %.sroa.0127.0.copyload, -9223372036854775808
  br i1 %i.ao, label %bb.r, label %bb.ag

bb.r:                                             ; preds = %.thread, %bb.q
  %.sroa.6128.0136 = phi ptr [ %i.aj, %.thread ], [ %.sroa.6128.0.copyload, %bb.q ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6128.0136) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5565)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.6128.0136, ptr %i.e, align 8, !noalias !5568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5570
  store i64 0, ptr %i.c, align 8, !noalias !5570
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5570
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !5570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5570
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.ap, align 8, !noalias !5570
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !5570
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !5570
  store ptr %i.c, ptr %i.b, align 8, !noalias !5570
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1777, ptr %i.aq, align 8, !noalias !5570
  %i.ar = invoke noundef zeroext i1 @_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.t unwind label %bb.s, !noalias !5574

bb.s:                                             ; preds = %bb.u, %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #39
          to label %.body.i unwind label %bb.v, !noalias !5574

bb.t:                                             ; preds = %bb.r
  br i1 %i.ar, label %bb.u, label %bb.w, !prof !20

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1778, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @246, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1780) #40
          to label %.noexc.i.i unwind label %bb.s, !noalias !5574

.noexc.i.i:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !5574
  unreachable

.body.i:                                          ; preds = %bb.y, %bb.s
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.s ], [ %i.aw, %bb.y ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #39
          to label %.body unwind label %bb.af, !noalias !5575

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !5568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5570
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5576
  %i.au = call noundef ptr @_rjem_malloc(i64 noundef range(i64 16, 305) 24) #43, !noalias !5576 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.x, label %bb.aa, !prof !20

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #40
          to label %.noexc.i unwind label %bb.y, !noalias !5575

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBP_5PyErr3newNtNtBR_10exceptions12PyValueErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #39
          to label %.body.i unwind label %bb.z, !noalias !5575

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !5575
  unreachable

bb.aa:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !5575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5568
  %i.ay = ptrtoint ptr %i.au to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !5579)
  call void @llvm.experimental.noalias.scope.decl(metadata !5582)
  %i.az = load i64, ptr %.sroa.6128.0136, align 8, !range !311, !alias.scope !5585, !noalias !5586, !noundef !12
  switch i64 %i.az, label %bb.am [
    i64 0, label %bb.ab
    i64 1, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6128.0136, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !5585, !noalias !5586, !noundef !12 ; 2 uses
  %i.bb = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.bb, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.6128.0136, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !5585, !noalias !5586, !nonnull !12, !noundef !12
  call void @_rjem_sdallocx(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i32 noundef 0) #43, !noalias !5589
  br label %bb.am

bb.ad:                                            ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.6128.0136, i64 8
  %.val2.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !5585, !noalias !5586, !nonnull !12, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr nonnull %.val2.i.i.i.i.i)
          to label %bb.am unwind label %bb.ae, !noalias !5586

bb.ae:                                            ; preds = %bb.ad
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_rjem_sdallocx(ptr noundef nonnull align 8 %.sroa.6128.0136, i64 noundef 40, i32 noundef 0) #43, !noalias !5586
  br label %.body

bb.af:                                            ; preds = %.body.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !5575
  unreachable

bb.ag:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.0127.0.copyload, ptr %i.i, align 8
  %.sroa.280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.6128.0.copyload, ptr %.sroa.280.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.9129.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  invoke void @_RNvXsj_NtNtCsgbCypRs12E4_4pyo35types5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB9_4call10PyCallArgs15call_positionalCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %.sroa.042.0.copyload)
          to label %bb.ah unwind label %bb.g

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bg = load i64, ptr %i.j, align 8, !range !11, !noundef !12
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.099.0.copyload = load ptr, ptr %i.bi, align 8 ; 4 uses
  br i1 %i.bh, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %.sroa.099.0.copyload, ptr %i.k, align 8
  call void @_Py_IncRef(ptr noundef nonnull %.sroa.099.0.copyload) #43
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.099.0.copyload, ptr %i.bj, align 8
end_hunk_4
