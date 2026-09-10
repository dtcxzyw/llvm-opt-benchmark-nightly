Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_server-9f9a063b6d2572a4.ruff_server.250241f5eb4d154d-cgu.12?download=true
inline.NumInlined: 1686
inline.NumDeleted: 620
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXsk_NtCs2AWtUsOyxgP_3std3envNtB5_8VarErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsq_NtCs4NRVxsYgnAr_4core3fmtOINtNtNtNtCsb0GAtLbz3Z0_12sharded_slab4sync5inner5alloc5TrackINtNtBE_5shard5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBE_3cfg13DefaultConfigEENtB5_5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = tail call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt17pointer_fmt_inner(i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtCsiFz2HvHapBs_4glob12PatternTokenNtB5_5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtCsiFz2HvHapBs_4glob12PatternTokenINtNtNtBa_5slice4iter4IterB14_EECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtCsiFz2HvHapBs_4glob13CharSpecifierNtB5_5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtCsiFz2HvHapBs_4glob13CharSpecifierINtNtNtBa_5slice4iter4IterB14_EECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB5_5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtNtBa_5slice4iter4IterB14_EECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesNtB5_5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs79ICTHwG85D_12regex_syntax3hir10PropertiesINtNtNtBa_5slice4iter4IterB14_EECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSRNtNtCs2AWtUsOyxgP_3std4path4PathNtB5_5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRRNtNtCs2AWtUsOyxgP_3std4path4PathINtNtNtBa_5slice4iter4IterB14_EECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSbNtB5_5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRbINtNtNtBa_5slice4iter4IterbEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtScNtB5_5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRcINtNtNtBa_5slice4iter4ItercEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtShNtB5_5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSjNtB5_5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXst_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_12DisplayValueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6format13TimingDisplayENtB5_5Value6recordCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @342)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_12DisplayValueRNtNtCshzDG46PUpLf_10lsp_server3msg9RequestIdENtB5_5Value6recordCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @343)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodENtB5_5Value6recordCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @344)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXst_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common21LspNotificationMethodENtB5_5Value6recordCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @345)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 15, 33) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.lr.ph, label %bb.b

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.m, %bb.b, %bb.o, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.dg, %bb.o ], [ %i.de, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.m ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.o, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.lr.ph: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2925)
  %i.g = load i8, ptr %0, align 1, !alias.scope !2924, !noalias !2925, !noundef !4 ; 5 uses
  %i.h = add nsw i64 %1, -1                       ; 2 uses
  %i.i = add nsw i64 %1, -4                       ; 3 uses
  %4 = add nsw i64 %1, -1                         ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !alias.scope !2924, !noalias !2926, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %6, %i.g
  br i1 %.not.i.not.i.i, label %7, label %bb.d

7:                                                ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.lr.ph
  %8 = icmp samesign ult i64 %i.i, %4
  br i1 %8, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.1, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.1: ; preds = %7
  %9 = add nsw i64 %1, -2                         ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !alias.scope !2924, !noalias !2926, !noundef !4 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %11, %i.g
  br i1 %.not.i.not.i.i.1, label %12, label %bb.d

12:                                               ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.1
  %13 = icmp samesign ult i64 %i.i, %9
  br i1 %13, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.2, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.2: ; preds = %12
  %14 = add nsw i64 %1, -3                        ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1, !alias.scope !2924, !noalias !2926, !noundef !4 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %16, %i.g
  br i1 %.not.i.not.i.i.2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.2
  %i.j = icmp samesign ult i64 %i.i, %14
  br i1 %i.j, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i: ; preds = %bb.c
  %i.k = add nsw i64 %1, -4                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !2924, !noalias !2926, !noundef !4 ; 2 uses
  %.not.i.not.i.i.a = icmp eq i8 %i.m, %i.g
  br i1 %.not.i.not.i.i.a, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit, label %bb.d

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.2, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.1, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.lr.ph
  %.lcssa37 = phi i64 [ %4, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.lr.ph ], [ %9, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.1 ], [ %14, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.2 ], [ %i.k, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i ] ; 6 uses
  %.lcssa35 = phi i8 [ %6, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.lr.ph ], [ %11, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.1 ], [ %16, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i.2 ], [ %i.m, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i ]
  %i.n = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.o = icmp ult i64 %3, %i.n
  br i1 %i.o, label %.lr.ph.split.us.i.i, label %bb.e

.lr.ph.split.us.i.i:                              ; preds = %bb.d
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 15, 33) %1), !alias.scope !2927, !noalias !2928
  %i.p = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.p, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.q = add nsw i64 %3, -1                       ; 2 uses
  %.not28.i.i31 = icmp ugt i64 %1, %i.q
  br i1 %.not28.i.i31, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i
  %i.r = phi i64 [ %i.u, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i ], [ %i.q, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i.preheader ]
  %.pn.i32 = phi ptr [ %i.s, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.pn.i32, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.s, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 15, 33) %1), !alias.scope !2927, !noalias !2928
  %i.t = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.t, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3aZOKTqqjPR_11ruff_server.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.u = add nsw i64 %i.r, -1                     ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.u
  br i1 %.not28.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.x = insertelement <16 x i8> poison, i8 %.lcssa35, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2927
  store ptr %2, ptr %i.a, align 8, !noalias !2927
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.aa, align 8, !noalias !2927
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.z, ptr %i.ab, align 8, !noalias !2927
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.ac, align 8, !noalias !2927
  %i.ad = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ad, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %bb.e
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.e ], [ %.sroa.014.2.3.i, %bb.i ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.by, %bb.i ] ; 2 uses
  %i.ae = add i64 %.sroa.06.0.lcssa.i, %i.n
  %i.af = icmp uge i64 %i.ae, %3
  %i.ag = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.sroa.06.098.i = phi i64 [ %i.by, %bb.i ], [ 0, %bb.e ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !2925, !noalias !2929
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.lcssa37
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.ai, align 1, !alias.scope !2925, !noalias !2929
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.w
  %i.ak = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.y
  %i.al = and <16 x i1> %i.aj, %i.ak
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.an, align 1, !alias.scope !2925, !noalias !2929
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.lcssa37
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.ao, align 1, !alias.scope !2925, !noalias !2929
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.w
  %i.aq = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.y
  %i.ar = and <16 x i1> %i.ap, %i.aq
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !2925, !noalias !2929
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.lcssa37
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !2925, !noalias !2929
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.w
  %i.aw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.y
  %i.ax = and <16 x i1> %i.av, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !2925, !noalias !2929
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.lcssa37
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !2925, !noalias !2929
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.w
  %i.bc = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.y
  %i.bd = and <16 x i1> %i.bb, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = icmp eq i16 %i.am, 0
  br i1 %i.bf, label %.preheader91.1.i, label %bb.j

.preheader91.1.i:                                 ; preds = %bb.j, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cd, %bb.j ] ; 3 uses
  %i.bg = icmp eq i16 %i.as, 0
  br i1 %i.bg, label %.preheader91.2.i, label %bb.f

bb.f:                                             ; preds = %.preheader91.1.i
  %i.bh = or disjoint i64 %.sroa.06.098.i, 16
  %i.bi = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bj = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bh, i16 noundef %i.as, i1 noundef zeroext %i.bi)
  %i.bk = zext i1 %i.bj to i8
  %i.bl = or i8 %.sroa.014.2.i, %i.bk
  br label %.preheader91.2.i

.preheader91.2.i:                                 ; preds = %bb.f, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.bl, %bb.f ] ; 3 uses
  %i.bm = icmp eq i16 %i.ay, 0
  br i1 %i.bm, label %.preheader91.3.i, label %bb.g

bb.g:                                             ; preds = %.preheader91.2.i
  %i.bn = or disjoint i64 %.sroa.06.098.i, 32
  %i.bo = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.bp = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bn, i16 noundef %i.ay, i1 noundef zeroext %i.bo)
  %i.bq = zext i1 %i.bp to i8
  %i.br = or i8 %.sroa.014.2.1.i, %i.bq
  br label %.preheader91.3.i

.preheader91.3.i:                                 ; preds = %bb.g, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.br, %bb.g ] ; 3 uses
  %i.bs = icmp eq i16 %i.be, 0
  br i1 %i.bs, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader91.3.i
  %i.bt = or disjoint i64 %.sroa.06.098.i, 48
  %i.bu = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.bv = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bt, i16 noundef %i.be, i1 noundef zeroext %i.bu)
  %i.bw = zext i1 %i.bv to i8
  %i.bx = or i8 %.sroa.014.2.2.i, %i.bw
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.bx, %bb.h ] ; 2 uses
  %i.by = add i64 %.sroa.06.098.i, 64             ; 3 uses
  %i.bz = add i64 %i.by, %i.ad
  %i.ca = icmp uge i64 %i.bz, %3
  %i.cb = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.cc = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.am, i1 noundef zeroext false)
  %i.cd = zext i1 %i.cc to i8
  br label %.preheader91.1.i

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.k ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ag, %.preheader.i ], [ %i.cx, %bb.k ]
  %i.ce = sub nuw i64 %3, %i.h
  %i.cf = add i64 %i.ce, -16                      ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 %i.cf ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.cg, align 1, !alias.scope !2925, !noalias !2930
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.lcssa37
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.ch, align 1, !alias.scope !2925, !noalias !2930
  %i.ci = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.w
  %i.cj = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.y
  %i.ck = and <16 x i1> %i.ci, %i.cj
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %i.cm = icmp eq i16 %i.cl, 0
  br i1 %i.cm, label %bb.m, label %bb.n

.lr.ph102.i:                                      ; preds = %.preheader.i, %bb.k
  %.sroa.06.1101.i = phi i64 [ %i.cu, %bb.k ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.cn, align 1, !alias.scope !2925, !noalias !2931
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.lcssa37
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.co, align 1, !alias.scope !2925, !noalias !2931
  %i.cp = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.w
  %i.cq = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.y
  %i.cr = and <16 x i1> %i.cp, %i.cq
  %i.cs = bitcast <16 x i1> %i.cr to i16          ; 2 uses
  %i.ct = icmp eq i16 %i.cs, 0
  br i1 %i.ct, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.cz, %bb.l ] ; 2 uses
  %i.cu = add i64 %.sroa.06.1101.i, 16            ; 2 uses
  %i.cv = add i64 %i.cu, %i.n
  %i.cw = icmp uge i64 %i.cv, %3
  %i.cx = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.cw, %i.cx
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i

bb.l:                                             ; preds = %.lr.ph102.i
  %i.cy = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.cs, i1 noundef zeroext false)
  %i.cz = zext i1 %i.cy to i8
  br label %bb.k

bb.m:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.dc, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2927
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.n:                                             ; preds = %._crit_edge.i
  %i.da = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cf, i16 noundef %i.cl, i1 noundef zeroext %.lcssa.i)
  %i.db = zext i1 %i.da to i8
  %i.dc = or i8 %.sroa.014.3.lcssa.i, %i.db
  br label %bb.m

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3aZOKTqqjPR_11ruff_server.exit.i.i, %bb.c, %12, %7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.dd = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %i.de = trunc nuw nsw i64 %i.dd to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.o:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.df = icmp eq i32 %bcmp, 0
  %i.dg = zext i1 %i.df to i8
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_12DisplayValueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6format13TimingDisplayENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsw_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6formatNtB5_13TimingDisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_12DisplayValueRNtNtCshzDG46PUpLf_10lsp_server3msg9RequestIdENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCshzDG46PUpLf_10lsp_server3msg9RequestIdNtB6_7Display3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  %i.a = tail call noundef zeroext i1 @_RNvXs1_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated6commonNtB5_16LspRequestMethodNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common21LspNotificationMethodENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  %i.a = tail call noundef zeroext i1 @_RNvXs5_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated6commonNtB5_21LspNotificationMethodNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !5, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !6, !alias.scope !2940, !noalias !2941, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2940, !noalias !2941, !nonnull !4, !noundef !4 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2940, !noalias !2941, !noundef !4 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !2940, !noalias !2941 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2942)
  %i.l = trunc nuw i8 %.promoted26 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit74

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !2943, !noalias !2944, !noundef !4
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !2945, !noundef !4 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit12.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !2945, !noundef !4
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !2945, !noundef !4
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !2945, !noundef !4
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit16.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit14.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3aZOKTqqjPR_11ruff_server.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !2942, !noalias !2941
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !4 ; 2 uses
end_hunk_0
