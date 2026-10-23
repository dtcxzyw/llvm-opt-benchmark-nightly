Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/libcst_native-f6ddb4b5b15f8b82.libcst_native.799f4444683a0d30-cgu.09?download=true
inline.NumInlined: 137
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs0_NtNtCsarohYtwVpE2_13libcst_native5nodes7codegenINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_2op5CommaENtB5_7Codegen7codegenB9_:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsarohYtwVpE2_13libcst_native5nodes7codegenINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_2op9SemicolonENtB5_7Codegen7codegenB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !3
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXNtNtCsarohYtwVpE2_13libcst_native5nodes2opNtB2_9SemicolonNtNtB4_7codegen7Codegen7codegen(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsarohYtwVpE2_13libcst_native5nodes7codegenINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_9statement14TypeParametersENtB5_7Codegen7codegenB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !3
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs2n_NtNtCsarohYtwVpE2_13libcst_native5nodes9statementNtB6_14TypeParametersNtNtB8_7codegen7Codegen7codegen(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB5_5TokenNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB5_7TokTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsarohYtwVpE2_13libcst_native, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsa_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_20TextPositionSnapshotNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.d, ptr %i.j, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsa_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_20TextPositionSnapshotNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionReENtNtB7_3fmt5Debug3fmtCsarohYtwVpE2_13libcst_native, ptr %.sroa.419.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.f, ptr %i.l, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_RNvXsM_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEENtNtBH_3fmt5Debug3fmtB1j_, ptr %.sroa.423.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.g, ptr %i.m, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr @_RNvXsM_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEENtNtBH_3fmt5Debug3fmtB1j_, ptr %.sroa.427.0..sroa_idx, align 8
  %i.n = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !align !4, !noundef !3
  %i.q = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.q
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptioncENtB6_5Debug3fmtCsarohYtwVpE2_13libcst_native(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !11, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.c = load i32, ptr %i.b, align 4, !range !145, !alias.scope !144, !noundef !3
  %.not.i = icmp eq i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !146
  store ptr %i.b, ptr %i.a, align 8, !noalias !146
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !146
  br label %_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptioncENtNtB7_3fmt5Debug3fmtCsarohYtwVpE2_13libcst_native.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 4), !noalias !144
  br label %_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptioncENtNtB7_3fmt5Debug3fmtCsarohYtwVpE2_13libcst_native.exit

_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptioncENtNtB7_3fmt5Debug3fmtCsarohYtwVpE2_13libcst_native.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_5Debug3fmtCsarohYtwVpE2_13libcst_native(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !149, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !149, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !149
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRcNtB6_5Debug3fmtCsarohYtwVpE2_13libcst_native(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !11, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXsj_NtCs4NRVxsYgnAr_4core3fmtcNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCsarohYtwVpE2_13libcst_native(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCsarohYtwVpE2_13libcst_native(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !152, !noundef !3 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core8TokErrorNtB6_7Display3fmtBC_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB5_8TokErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsarohYtwVpE2_13libcst_native(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_7Display3fmtCsarohYtwVpE2_13libcst_native(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB5_13TokenIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(288) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  %i.c = alloca [8 x i8], align 8                 ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 244 ; 3 uses
  %i.f = load i8, ptr %i.e, align 4, !range !5, !alias.scope !186, !noundef !3
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.bf, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !187
  call fastcc void @_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState10next_inner(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef align 8 dereferenceable(256) %1), !noalias !188
  %i.h = load i32, ptr %i.d, align 8, !range !7, !noalias !187, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i8, ptr %i.i, align 4, !range !12, !noalias !187, !noundef !3 ; 4 uses
  %i.k = icmp eq i8 %i.j, 15
  br i1 %i.k, label %.thread48, label %bb.e

.thread48:                                        ; preds = %bb.c
  store i8 1, ptr %i.e, align 4, !alias.scope !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  br label %._crit_edge.i

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 4, !alias.scope !186
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.9.0.copyload7 = load i8, ptr %.sroa.9.0..sroa_idx6, align 4, !noalias !186
  %.sroa.10.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %.sroa.10.sroa.0.0.copyload = load i24, ptr %.sroa.10.0..sroa_idx10, align 1, !noalias !186
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.10.sroa.6.0.copyload = load i64, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx10.sroa_idx, align 8, !noalias !186
  %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.10.sroa.7.0.copyload = load ptr, ptr %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx10.sroa_idx, align 8, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %.sroa.012.5.insert.ext = zext i24 %.sroa.10.sroa.0.0.copyload to i64
  %.sroa.012.5.insert.shift = shl nuw i64 %.sroa.012.5.insert.ext, 40
  %.sroa.012.0.insert.ext = zext nneg i32 %i.h to i64
  %.sroa.012.4.insert.ext = zext i8 %.sroa.9.0.copyload7 to i64
  %.sroa.012.4.insert.shift = shl nuw nsw i64 %.sroa.012.4.insert.ext, 32
  %.sroa.012.0.insert.insert = or disjoint i64 %.sroa.012.4.insert.shift, %.sroa.012.0.insert.ext
  %.sroa.012.4.insert.insert = or disjoint i64 %.sroa.012.0.insert.insert, %.sroa.012.5.insert.shift
  %i.l = inttoptr i64 %.sroa.012.4.insert.insert to ptr
  br label %_RNCNvXs4_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB7_13TokenIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  switch i8 %i.j, label %._crit_edge.i [
    i8 5, label %bb.f
    i8 6, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.o = load i64, ptr %i.n, align 8, !noalias !189, !noundef !3 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.q = load i64, ptr %i.p, align 8, !noalias !189, !noundef !3 ; 8 uses
  %i.r = sub i64 %i.o, %i.q                       ; 5 uses
  %i.s = load ptr, ptr %i.m, align 8, !noalias !189, !nonnull !3, !noundef !3 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load i64, ptr %i.t, align 8, !noalias !189, !noundef !3 ; 5 uses
  %.not.i.i = icmp ugt i64 %i.q, %i.o
  br i1 %.not.i.i, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i64 %i.o, %i.q
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not5.i.i = icmp ult i64 %i.r, %i.u
  br i1 %.not5.i.i, label %bb.j, label %.split.i.i

bb.i:                                             ; preds = %bb.j, %.split.i.i, %bb.g
  %i.w = icmp eq i64 %i.o, 0
  br i1 %i.w, label %bb.n, label %bb.k

.split.i.i:                                       ; preds = %bb.h
  %i.x = icmp eq i64 %i.r, %i.u
  br i1 %i.x, label %bb.i, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !190, !noalias !189, !noundef !3
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.i, label %bb.o

bb.k:                                             ; preds = %bb.i
  %.not6.i.i = icmp ult i64 %i.o, %i.u
  br i1 %.not6.i.i, label %bb.l, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.k
  %i.ab = icmp eq i64 %i.o, %i.u
  br i1 %i.ab, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !190, !noalias !189, !noundef !3
  %i.ae = icmp sgt i8 %i.ad, -65
  br i1 %i.ae, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !189, !noundef !3 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.thread, label %bb.v

bb.n:                                             ; preds = %bb.l, %.split7.i.i, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !189, !noundef !3 ; 2 uses
  %.not80.i = icmp eq i64 %i.ak, 0
  br i1 %.not80.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l, %.split7.i.i, %bb.j, %.split.i.i, %bb.f
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u, i64 noundef %i.r, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !189
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !noalias !189, !nonnull !3, !noundef !3
  %i.an = getelementptr [16 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -16
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !189, !nonnull !3, !noundef !3
  %i.aq = getelementptr i8, ptr %i.an, i64 -8
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !189, !noundef !3 ; 3 uses
  %i.as = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar), !noalias !189
  br i1 %i.as, label %bb.s, label %_RNCNvXs4_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB7_13TokenIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit

bb.q:                                             ; preds = %bb.s, %bb.n
  %i.at = phi i64 [ %.pre107.i, %bb.s ], [ 0, %bb.n ] ; 3 uses
  %.sroa.3.0.i = phi i64 [ %i.be, %bb.s ], [ %i.q, %bb.n ] ; 2 uses
  %.sroa.020.0.i = phi ptr [ %i.bf, %bb.s ], [ %i.ai, %bb.n ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !6, !alias.scope !191, !noalias !189, !noundef !3
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.r, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i

bb.r:                                             ; preds = %bb.q
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsarohYtwVpE2_13libcst_native(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au), !noalias !192
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i: ; preds = %bb.r, %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !191, !noalias !189, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.at ; 2 uses
  store ptr %i.ai, ptr %i.az, align 8, !noalias !192
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.q, ptr %i.ba, align 8, !noalias !189
  %i.bb = add i64 %i.at, 1
  store i64 %i.bb, ptr %i.aj, align 8, !alias.scope !191, !noalias !189
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !189, !noundef !3 ; 3 uses
  %.not81.i = icmp eq ptr %i.bd, null
  br i1 %.not81.i, label %._crit_edge.i, label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.be = sub nuw i64 %i.q, %i.ar
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %.pre107.i = load i64, ptr %i.aj, align 8, !alias.scope !191, !noalias !189
  br label %bb.q

bb.t:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !189, !noundef !3
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %._crit_edge.sink.split.i, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !189
  unreachable

._crit_edge.sink.split.i:                         ; preds = %bb.y, %bb.t
  %.sink129.i = phi ptr [ %i.cb, %bb.y ], [ %i.bd, %bb.t ] ; 2 uses
  %.sink127.i = phi ptr [ %i.ch, %bb.y ], [ %i.ai, %bb.t ]
  %.sink.i = phi i64 [ %i.cg, %bb.y ], [ %i.q, %bb.t ]
  %.sroa.416.0.ph.i = phi i64 [ undef, %bb.y ], [ %.sroa.3.0.i, %bb.t ]
  %.sroa.015.0.ph.i = phi ptr [ null, %bb.y ], [ %.sroa.020.0.i, %bb.t ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink129.i, i64 24
  store ptr %.sink127.i, ptr %i.bj, align 8, !noalias !189
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink129.i, i64 32
  store i64 %.sink.i, ptr %i.bk, align 8, !noalias !189
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.thread, %.thread48, %bb.v, %._crit_edge.sink.split.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i, %bb.e
  %.sroa.416.0.i = phi i64 [ undef, %bb.v ], [ undef, %bb.e ], [ %.sroa.3.0.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i ], [ %.sroa.416.0.ph.i, %._crit_edge.sink.split.i ], [ undef, %.thread48 ], [ undef, %.thread ]
  %.sroa.015.0.i = phi ptr [ null, %bb.v ], [ null, %bb.e ], [ %.sroa.020.0.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i ], [ %.sroa.015.0.ph.i, %._crit_edge.sink.split.i ], [ null, %.thread48 ], [ null, %.thread ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !189
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 6 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !189, !noundef !3 ; 3 uses
  %.not82.i = icmp eq ptr %i.bn, null
  br i1 %.not82.i, label %bb.ab, label %bb.aa

bb.v:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bp = add nsw i64 %i.ag, -1                   ; 4 uses
  store i64 %i.bp, ptr %i.af, align 8, !noalias !189
  %i.bq = load i64, ptr %i.bo, align 8, !range !6, !noalias !189, !noundef !3
  %i.br = icmp samesign ult i64 %i.bp, %i.bq
  call void @llvm.assume(i1 %i.br)
  %i.bs = icmp ult i64 %i.ag, 576460752303423489
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !189, !noundef !3 ; 3 uses
  %.not77.i = icmp eq ptr %i.bu, null
  br i1 %.not77.i, label %._crit_edge.i, label %bb.w

.thread:                                          ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !189, !noundef !3 ; 2 uses
  %.not77.i67 = icmp eq ptr %i.bw, null
  br i1 %.not77.i67, label %._crit_edge.i, label %.thread68

bb.w:                                             ; preds = %bb.v
  %.not78.i = icmp eq i64 %i.bp, 0
  br i1 %.not78.i, label %.thread68, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !189, !nonnull !3, !noundef !3
  %i.bz = getelementptr [16 x i8], ptr %i.by, i64 %i.bp
  %i.ca = getelementptr i8, ptr %i.bz, i64 -16
  br label %.thread68

.thread68:                                        ; preds = %.thread, %bb.x, %bb.w
  %i.cb = phi ptr [ %i.bu, %bb.x ], [ %i.bu, %bb.w ], [ %i.bw, %.thread ] ; 2 uses
  %.sroa.025.0.i = phi ptr [ %i.ca, %bb.x ], [ @3, %bb.w ], [ @3, %.thread ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !189, !noundef !3
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %.thread68
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !189, !noundef !3
  %i.ch = load ptr, ptr %.sroa.025.0.i, align 8, !noalias !189, !nonnull !3, !noundef !3
  br label %._crit_edge.sink.split.i

bb.z:                                             ; preds = %.thread68
  call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !189
end_hunk_0
