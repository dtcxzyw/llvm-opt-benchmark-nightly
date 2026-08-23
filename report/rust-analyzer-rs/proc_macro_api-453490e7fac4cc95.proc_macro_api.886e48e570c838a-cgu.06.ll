Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/proc_macro_api-453490e7fac4cc95.proc_macro_api.886e48e570c838a-cgu.06?download=true
inline.NumInlined: 176
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsJo5RpJFzwk_14proc_macro_api13ProcMacroKindNtB6_5Debug3fmtBy_:switch.lookup
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !76, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsJo5RpJFzwk_14proc_macro_api13ProcMacroKindNtB6_5Debug3fmtBy_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsJo5RpJFzwk_14proc_macro_api13ProcMacroKindNtB6_5Debug3fmtBy_.48, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_5Debug3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !26, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCshzWfHUSfYae_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRTNtNtCsbSS6DM8SDEO_5alloc6string6StringBx_ENtB6_5Debug3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !26, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !275
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !275
  store ptr %i.d, ptr %i.b, align 8, !noalias !275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !275
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.e, ptr %i.a, align 8, !noalias !275
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28) ; 0 uses
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28) ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !275
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsJo5RpJFzwk_14proc_macro_api13ProcMacroKindENtB6_5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !26, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !280
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !280
  store ptr %i.d, ptr %i.b, align 8, !noalias !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !280
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.e, ptr %i.a, align 8, !noalias !280
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28) ; 0 uses
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29) ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !280
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRjNtB6_5Debug3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !26, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !285, !noalias !288, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRmNtB6_5Debug3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !290, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !291, !noalias !294, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsu_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsw_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_5Debug3fmt.exit

_RNvXsW_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRuNtB6_5Debug3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !26, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1j_NtCshzWfHUSfYae_4core3fmtQNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !26, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_CsJo5RpJFzwk_14proc_macro_apiNtB5_11ServerErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 2)
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvXs3_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.j, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !296, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !296, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !296, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !296
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !299
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !302, !noalias !299, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !302, !noalias !299, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !302, !noalias !299
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !302, !noalias !299
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !26, !noundef !4
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsjQbM3MYDIrM_10serde_core2deNtNvXNvCsJo5RpJFzwk_14proc_macro_apis_1__NtBG_13ProcMacroKindNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBG_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB5_5Debug3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtNtBa_5slice4iter4IterB14_EECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSTNtNtCsbSS6DM8SDEO_5alloc6string6StringBw_ENtB5_5Debug3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCsbSS6DM8SDEO_5alloc6string6StringB15_EINtNtNtBa_5slice4iter4IterB14_EECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsJo5RpJFzwk_14proc_macro_api13ProcMacroKindENtB5_5Debug3fmtB1a_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsJo5RpJFzwk_14proc_macro_api13ProcMacroKindEINtNtNtBa_5slice4iter4IterB14_EEB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSmNtB5_5Debug3fmtCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRmINtNtNtBa_5slice4iter4ItermEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvYINtNtNtCslX2I8TqP5TK_8postcard3ser7flavors4CobsNtNtB5_9alloc_vec8AllocVecENtB5_6Flavor10try_extendCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, 11) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = icmp samesign eq i64 %2, 0
  br i1 %i.b, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRhINtNtBa_6result6ResultuNtNtCslX2I8TqP5TK_8postcard5error5ErrorENCNvYINtNtNtB2w_3ser7flavors4CobsNtNtB3e_9alloc_vec8AllocVecENtB3e_6Flavor10try_extend0E0B25_ECsJo5RpJFzwk_14proc_macro_api.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCslX2I8TqP5TK_8postcard5error5ErrorENCNvYINtNtNtB1N_3ser7flavors4CobsNtNtB2v_9alloc_vec8AllocVecENtB2v_6Flavor10try_extend0E0CsJo5RpJFzwk_14proc_macro_api.exit.i, %.lr.ph.i
  %i.h = phi ptr [ %1, %.lr.ph.i ], [ %i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCslX2I8TqP5TK_8postcard5error5ErrorENCNvYINtNtNtB1N_3ser7flavors4CobsNtNtB2v_9alloc_vec8AllocVecENtB2v_6Flavor10try_extend0E0CsJo5RpJFzwk_14proc_macro_api.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %.val6.i = load i8, ptr %i.h, align 1, !noalias !306, !noundef !4 ; 3 uses
  %i.j = icmp eq i8 %.val6.i, 0
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.d, align 8, !alias.scope !309, !noalias !313, !noundef !4
  %i.l = add i8 %i.k, 1                           ; 2 uses
end_hunk_0
