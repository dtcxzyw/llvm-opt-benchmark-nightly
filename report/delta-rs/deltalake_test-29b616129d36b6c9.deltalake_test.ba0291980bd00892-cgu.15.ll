Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_test-29b616129d36b6c9.deltalake_test.ba0291980bd00892-cgu.15?download=true
inline.NumInlined: 425
inline.NumDeleted: 207
begin_hunk_0_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a

_RNvXsG_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.sroa.0.0.in.i = phi i1 [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ %i.ab, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.aj, %bb.i ], [ %i.al, %bb.j ], [ %i.an, %bb.k ], [ %i.ap, %bb.l ], [ %i.ar, %bb.m ], [ %i.at, %bb.n ], [ %i.av, %bb.o ], [ %i.ax, %bb.p ], [ %i.az, %bb.q ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !427
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.c, ptr %i.a, align 8, !noalias !427
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @204, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 9, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @202, ptr noalias noundef nonnull readonly captures(address, read_provenance) @206, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @203)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !427
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars9ArrayDataNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !431
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.a, align 8, !noalias !431
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @199, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !431
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.g = load i64, ptr %i.f, align 8, !range !23, !alias.scope !435, !noundef !3 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775803
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 5
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 16), !noalias !435
  br label %_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 20), !noalias !435
  br label %_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 22), !noalias !435
  br label %_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 15), !noalias !435
  br label %_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 21), !noalias !435
  br label %_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !436
  store ptr %i.f, ptr %i.e, align 8, !noalias !436
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 15, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !436
  br label %_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !436
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.r, ptr %i.d, align 8, !noalias !436
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 24, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !436
  br label %_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !436
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.t, ptr %i.c, align 8, !noalias !436
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 24, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !436
  br label %_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !436
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.v, ptr %i.b, align 8, !noalias !436
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !436
  br label %_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !436
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.x, ptr %i.a, align 8, !noalias !436
  %i.y = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !436
  br label %_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.m:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 10), !noalias !435
  br label %_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.0.0.in.i = phi i1 [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ %i.q, %bb.h ], [ %i.s, %bb.i ], [ %i.u, %bb.j ], [ %i.w, %bb.k ], [ %i.y, %bb.l ], [ %i.z, %bb.m ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBx_ENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !align !22, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !440
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !440
  store ptr %i.d, ptr %i.b, align 8, !noalias !440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !440
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.e, ptr %i.a, align 8, !noalias !440
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44) ; 0 uses
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44) ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !440
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1h_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_9ArrayTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 9, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1m_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 9, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 10, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtCs2HSpDNxY7OE_9hashbrown5tableINtB5_9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCs6Po7BT7Nknu_5alloc5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 72057594037927936) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i.i = alloca [88 x i8], align 8      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 4 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %..preheader.i_crit_edge, label %bb.b

..preheader.i_crit_edge:                          ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %i.e, %1                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %1 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.e, %1
  br i1 %i.k, label %.preheader.i, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %i.l = icmp eq i64 %i.n, %i.g
  br i1 %i.l, label %.preheader.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit.i
  %.sroa.0.0.i69 = phi i64 [ %i.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %.sroa.0.0.i69 ; 5 uses
  %i.n = add i64 %.sroa.0.0.i69, 1                ; 4 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.o, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(96) %i.r) #23
          to label %.body.i unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(96) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.g:                                             ; preds = %.lr.ph71
  %i.u = add i64 %.sroa.0.1.i70, 1                ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %common.resume, label %.lr.ph71

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.h ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.x = icmp eq i64 %i.n, %i.g
  br i1 %i.x, label %common.resume, label %.lr.ph71

.lr.ph71:                                         ; preds = %.body.i, %bb.g
  %.sroa.0.1.i70 = phi i64 [ %i.u, %bb.g ], [ %i.n, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %.sroa.0.1.i70
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(128) %i.y) #23
          to label %bb.g unwind label %bb.i

common.resume:                                    ; preds = %bb.g, %.body.i, %bb.k, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.k ], [ %i.ao, %bb.p ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.lr.ph71
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20
  unreachable

.preheader.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit.i, %bb.b, %..preheader.i_crit_edge
  %3 = phi ptr [ %.pre, %..preheader.i_crit_edge ], [ %i.i, %bb.b ], [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit.i ]
  %4 = phi i64 [ %i.e, %..preheader.i_crit_edge ], [ %1, %bb.b ], [ %1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %.not.i2 = icmp eq i64 %4, 0
  br i1 %.not.i2, label %_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.0.40..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 40
  %.sroa.0.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ap, %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %3, i64 %.sroa.0.08.i ; 5 uses
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.0.08.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !458, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  store i64 %i.ad, ptr %i.ae, align 8, !alias.scope !459
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_from(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ab)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !463
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ag), !noalias !464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !463
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %bb.m unwind label %bb.l, !noalias !464

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.am, %bb.n ], [ %i.ai, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #23
          to label %common.resume unwind label %bb.o, !noalias !464

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ak = load i8, ptr %i.aj, align 8, !range !7, !alias.scope !465, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !463
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al)
          to label %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.n, !noalias !464

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %bb.k unwind label %bb.o, !noalias !464

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20, !noalias !464
  unreachable

_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.40..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !463
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.af)
          to label %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.p

bb.p:                                             ; preds = %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i.i, i64 88, i1 false), !noalias !467
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store i8 %i.ak, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !468
  br label %common.resume

_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i.i, i64 88, i1 false), !noalias !467
  %.sroa.7.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store i8 %i.ak, ptr %.sroa.7.0..sroa_idx1.i.i.i, align 8, !alias.scope !468
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ap = add nuw nsw i64 %.sroa.0.08.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %4
  br i1 %exitcond.not.i, label %_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsfY7SmN0bPrO_14deltalake_test.exit, label %bb.j

_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test.exit.i, %.preheader.i
  %i.aq = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %4
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %1
  tail call void @_RNvXs1_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB9_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB5_10SpecExtendRBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBU_EE11spec_extendCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsS_NtNtCsbvkFyIu7lgC_4core3fmt3numnNtB7_5Debug3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsL_NtNtCsbvkFyIu7lgC_4core3fmt3numnNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs_NtNtCsbvkFyIu7lgC_4core3fmt3numnNtB6_7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsN_NtNtCsbvkFyIu7lgC_4core3fmt3numnNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [88 x i8], align 8            ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !473
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !473
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.d unwind label %bb.c, !noalias !474

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #23
          to label %.body unwind label %bb.f, !noalias !474

bb.c:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load i8, ptr %i.j, align 8, !range !7, !alias.scope !472, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !473
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l)
          to label %bb.h unwind label %bb.e, !noalias !474

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %bb.b unwind label %bb.f, !noalias !474

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20, !noalias !474
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.g ], [ %.pn.i, %bb.b ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #23
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %.sroa.0.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !472
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !473
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.f, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, i64 88, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.k, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4metas3_1__NtBG_20TableVersionMetaDataNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 27)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr nofree readonly captures(address, read_provenance) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [144 x i8], align 8               ; 6 uses
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.e = tail call noalias noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 729) 144, i64 noundef 8) #25 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE13new_uninit_inCsfY7SmN0bPrO_14deltalake_test.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #26
  unreachable

_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE13new_uninit_inCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !480
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.0.val)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE13new_uninit_inCsfY7SmN0bPrO_14deltalake_test.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !480
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.g)
          to label %bb.e unwind label %bb.d, !noalias !481

bb.c:                                             ; preds = %bb.f, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.h, %bb.d ]
end_hunk_0
