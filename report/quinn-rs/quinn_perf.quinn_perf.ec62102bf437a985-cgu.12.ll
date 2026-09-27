Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_perf.quinn_perf.ec62102bf437a985-cgu.12?download=true
inline.NumInlined: 342
inline.NumDeleted: 207
begin_hunk_0_@_RNvXsk_NtCsB8MOEg02Qk_5quinn11recv_streamNtB5_9ReadErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 12), !dbg !12949
  br label %bb.h, !dbg !12949

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 18), !dbg !12949
  br label %bb.h, !dbg !12949

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 15), !dbg !12949
  br label %bb.h, !dbg !12949

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ]
  ret i1 %.sroa.0.0.in, !dbg !12955
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXsl_NtCsB8MOEg02Qk_5quinn11recv_streamNtB5_9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noundef nonnull align 8 %0) unnamed_addr #9 !dbg !1047 {
bb.a:
    #dbg_value(ptr %0, !5147, !DIExpression(), !12956)
  %i.a = load i64, ptr %0, align 8, !dbg !12957, !range !3693, !noundef !1326 ; 2 uses
  %i.b = icmp ne i64 %i.a, 11, !dbg !12957
  tail call void @llvm.assume(i1 %i.b), !dbg !12957
  %i.c = icmp samesign ult i64 %i.a, 10, !dbg !12957
  %. = select i1 %i.c, ptr %0, ptr null, !dbg !12956
  %i.d = insertvalue { ptr, ptr } poison, ptr %., 0, !dbg !12958
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @30, 1, !dbg !12958
  ret { ptr, ptr } %i.e, !dbg !12958
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsq_NtCskKLDkoKarTP_4core3fmtOINtNtNtNtCskXT5ShPYifM_12sharded_slab4sync5inner5alloc5TrackINtNtBE_5shard5ShardNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtBE_3cfg13DefaultConfigEENtB5_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !12959 {
bb.a:
    #dbg_value(ptr %0, !12975, !DIExpression(), !12980)
    #dbg_value(ptr %0, !12981, !DIExpression(), !12986)
    #dbg_value(ptr %1, !12976, !DIExpression(), !12980)
    #dbg_value(ptr %1, !12983, !DIExpression(), !12986)
  %i.a = load ptr, ptr %0, align 8, !dbg !13001, !noundef !1326
    #dbg_value(ptr poison, !12989, !DIExpression(), !12965)
    #dbg_value(ptr %1, !12993, !DIExpression(), !12965)
    #dbg_value(ptr %i.a, !12994, !DIExpression(), !12966)
    #dbg_value(ptr %i.a, !12997, !DIExpression(), !12969)
  %i.b = ptrtoint ptr %i.a to i64, !dbg !13002
    #dbg_value(i64 %i.b, !12995, !DIExpression(), !12970)
  %i.c = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt17pointer_fmt_inner(i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !13003
  ret i1 %i.c, !dbg !13004
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCsjx2R6KBUtVL_6rustls5enums11ContentTypeNtB5_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !13006 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !13022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13025)
    #dbg_value(ptr %0, !13026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13040)
    #dbg_value(ptr %0, !13041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13048)
    #dbg_value(i64 %1, !13022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13025)
    #dbg_value(i64 %1, !13026, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13040)
    #dbg_value(i64 %1, !13041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13048)
    #dbg_value(ptr %2, !13023, !DIExpression(), !13025)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13059
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13060
    #dbg_value(i64 %1, !13043, !DIExpression(), !13049)
    #dbg_value(i64 %1, !13050, !DIExpression(), !13057)
    #dbg_value(ptr %0, !13044, !DIExpression(), !13058)
    #dbg_value(ptr %0, !13054, !DIExpression(), !13057)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1, !dbg !13061
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsjx2R6KBUtVL_6rustls5enums11ContentTypeINtNtNtBa_5slice4iter4IterB14_EECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !13062
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !13063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13064
  ret i1 %i.d, !dbg !13065
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCsjx2R6KBUtVL_6rustls5enums13HandshakeTypeNtB5_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !13067 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !13083, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13086)
    #dbg_value(ptr %0, !13087, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13101)
    #dbg_value(ptr %0, !13102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13109)
    #dbg_value(i64 %1, !13083, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13086)
    #dbg_value(i64 %1, !13087, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13101)
    #dbg_value(i64 %1, !13102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13109)
    #dbg_value(ptr %2, !13084, !DIExpression(), !13086)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13120
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13121
    #dbg_value(i64 %1, !13104, !DIExpression(), !13110)
    #dbg_value(i64 %1, !13111, !DIExpression(), !13118)
    #dbg_value(ptr %0, !13105, !DIExpression(), !13119)
    #dbg_value(ptr %0, !13115, !DIExpression(), !13118)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1, !dbg !13122
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsjx2R6KBUtVL_6rustls5enums13HandshakeTypeINtNtNtBa_5slice4iter4IterB14_EECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !13123
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !13124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13125
  ret i1 %i.d, !dbg !13126
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSRDNtNtCsjx2R6KBUtVL_6rustls6crypto16SupportedKxGroupEL_NtB5_5Debug3fmtCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !13128 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !13144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13147)
    #dbg_value(ptr %0, !13148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13162)
    #dbg_value(ptr %0, !13163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13170)
    #dbg_value(i64 %1, !13144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13147)
    #dbg_value(i64 %1, !13148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13162)
    #dbg_value(i64 %1, !13163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13170)
    #dbg_value(ptr %2, !13145, !DIExpression(), !13147)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13181
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13182
    #dbg_value(i64 %1, !13165, !DIExpression(), !13171)
    #dbg_value(i64 %1, !13172, !DIExpression(), !13179)
    #dbg_value(ptr %0, !13166, !DIExpression(), !13180)
    #dbg_value(ptr %0, !13176, !DIExpression(), !13179)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1, !dbg !13183
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRRDNtNtCsjx2R6KBUtVL_6rustls6crypto16SupportedKxGroupEL_INtNtNtBa_5slice4iter4IterB14_EECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !13184
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !13185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13186
  ret i1 %i.d, !dbg !13187
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_12ConnectErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #8 !dbg !13190 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !13195, !DIExpression(), !13200)
    #dbg_value(ptr %1, !13196, !DIExpression(), !13200)
  %i.c = load i16, ptr %0, align 8, !dbg !13203, !range !3701, !noundef !1326 ; 3 uses
  %i.d = icmp ne i16 %i.c, 5, !dbg !13203
  tail call void @llvm.assume(i1 %i.d), !dbg !13203
  %i.e = add nsw i16 %i.c, -2, !dbg !13203
  %i.f = icmp samesign ugt i16 %i.c, 1, !dbg !13203
  %narrow = select i1 %i.f, i16 %i.e, i16 3, !dbg !13203
  switch i16 %narrow, label %bb.b [
    i16 0, label %bb.c
    i16 1, label %bb.d
    i16 2, label %bb.e
    i16 3, label %bb.f
    i16 4, label %bb.g
    i16 5, label %bb.h
  ], !dbg !13203

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !13203

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 16), !dbg !13203
  br label %bb.i, !dbg !13203

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 13), !dbg !13203
  br label %bb.i, !dbg !13203

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13204
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13204
    #dbg_value(ptr %i.i, !13197, !DIExpression(), !13201)
  store ptr %i.i, ptr %i.b, align 8, !dbg !13204
    #dbg_value(ptr %i.b, !13197, !DIExpression(DW_OP_deref), !13201)
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 17, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @122), !dbg !13205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13206
  br label %bb.i, !dbg !13206

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13207
    #dbg_value(ptr %0, !13198, !DIExpression(), !13202)
  store ptr %0, ptr %i.a, align 8, !dbg !13207
    #dbg_value(ptr %i.a, !13198, !DIExpression(DW_OP_deref), !13202)
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !dbg !13208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13206
  br label %bb.i, !dbg !13206

bb.g:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 21), !dbg !13203
  br label %bb.i, !dbg !13203

bb.h:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 18), !dbg !13203
  br label %bb.i, !dbg !13203

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.m, %bb.h ]
  ret i1 %.sroa.0.0.in, !dbg !13209
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYFENtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtNtNtCs7n8GKOt6esj_18tracing_subscriber3fmt6writer10MakeWriter15make_writer_forCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #1 !dbg !13210 {
bb.a:
    #dbg_value(ptr %0, !13225, !DIExpression(), !13230)
    #dbg_value(ptr %1, !13226, !DIExpression(), !13230)
  %.val = load ptr, ptr %0, align 8, !dbg !13245, !nonnull !1326, !noundef !1326
    #dbg_value(ptr poison, !13231, !DIExpression(), !13213)
    #dbg_value(ptr poison, !13239, !DIExpression(), !13216)
    #dbg_declare(ptr poison, !13241, !DIExpression(), !13217)
  %i.a = tail call noundef nonnull align 8 ptr %.val(), !dbg !13246, !inline_history !13218
  ret ptr %i.a, !dbg !13247
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13248 {
bb.a:
    #dbg_value(ptr poison, !13251, !DIExpression(), !13253)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13254
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13255 {
bb.a:
    #dbg_value(ptr poison, !13259, !DIExpression(), !13262)
    #dbg_declare(ptr poison, !13260, !DIExpression(), !13263)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @137, i64 16, i1 false), !dbg !13266
  ret void, !dbg !13267
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13268 {
bb.a:
    #dbg_value(ptr poison, !13271, !DIExpression(), !13273)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13274
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13275 {
bb.a:
    #dbg_value(ptr poison, !13279, !DIExpression(), !13282)
    #dbg_declare(ptr poison, !13280, !DIExpression(), !13283)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @138, i64 16, i1 false), !dbg !13286
  ret void, !dbg !13287
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !13288 {
bb.a:
    #dbg_value(ptr poison, !13291, !DIExpression(), !13293)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13294
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 !dbg !13295 {
bb.a:
    #dbg_value(ptr poison, !13299, !DIExpression(), !13302)
    #dbg_declare(ptr poison, !13300, !DIExpression(), !13303)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @139, i64 16, i1 false), !dbg !13306
  ret void, !dbg !13307
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13308 {
bb.a:
    #dbg_value(ptr poison, !13311, !DIExpression(), !13313)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13314
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13315 {
bb.a:
    #dbg_value(ptr poison, !13319, !DIExpression(), !13322)
    #dbg_declare(ptr poison, !13320, !DIExpression(), !13323)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @140, i64 16, i1 false), !dbg !13326
  ret void, !dbg !13327
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !13328 {
bb.a:
    #dbg_value(ptr poison, !13331, !DIExpression(), !13333)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13334
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 !dbg !13335 {
bb.a:
    #dbg_value(ptr poison, !13339, !DIExpression(), !13342)
    #dbg_declare(ptr poison, !13340, !DIExpression(), !13343)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @141, i64 16, i1 false), !dbg !13346
  ret void, !dbg !13347
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorENtNtBU_5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !13348 {
bb.a:
    #dbg_value(ptr poison, !13351, !DIExpression(), !13353)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13354
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorENtNtBU_5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 !dbg !13355 {
bb.a:
    #dbg_value(ptr poison, !13359, !DIExpression(), !13362)
    #dbg_declare(ptr poison, !13360, !DIExpression(), !13363)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @142, i64 16, i1 false), !dbg !13368
  ret void, !dbg !13369
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13370 {
bb.a:
    #dbg_value(ptr poison, !13373, !DIExpression(), !13375)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13376
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13377 {
bb.a:
    #dbg_value(ptr poison, !13381, !DIExpression(), !13384)
    #dbg_declare(ptr poison, !13382, !DIExpression(), !13385)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @143, i64 16, i1 false), !dbg !13388
  ret void, !dbg !13389
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13390 {
bb.a:
    #dbg_value(ptr poison, !13393, !DIExpression(), !13395)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13396
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13397 {
bb.a:
    #dbg_value(ptr poison, !13401, !DIExpression(), !13404)
    #dbg_declare(ptr poison, !13402, !DIExpression(), !13405)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @144, i64 16, i1 false), !dbg !13408
  ret void, !dbg !13409
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13410 {
bb.a:
    #dbg_value(ptr poison, !13413, !DIExpression(), !13415)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13416
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13417 {
bb.a:
    #dbg_value(ptr poison, !13421, !DIExpression(), !13424)
    #dbg_declare(ptr poison, !13422, !DIExpression(), !13425)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @145, i64 16, i1 false), !dbg !13428
  ret void, !dbg !13429
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13430 {
bb.a:
    #dbg_value(ptr poison, !13433, !DIExpression(), !13435)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13436
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13437 {
bb.a:
    #dbg_value(ptr poison, !13441, !DIExpression(), !13444)
    #dbg_declare(ptr poison, !13442, !DIExpression(), !13445)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @146, i64 16, i1 false), !dbg !13448
  ret void, !dbg !13449
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1a_5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13450 {
bb.a:
    #dbg_value(ptr poison, !13453, !DIExpression(), !13455)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13456
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1a_5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13457 {
bb.a:
    #dbg_value(ptr poison, !13461, !DIExpression(), !13464)
    #dbg_declare(ptr poison, !13462, !DIExpression(), !13465)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @147, i64 16, i1 false), !dbg !13468
  ret void, !dbg !13469
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorEENtNtB1a_5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13470 {
bb.a:
    #dbg_value(ptr poison, !13473, !DIExpression(), !13475)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13476
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorEENtNtB1a_5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13477 {
bb.a:
    #dbg_value(ptr poison, !13481, !DIExpression(), !13484)
    #dbg_declare(ptr poison, !13482, !DIExpression(), !13485)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @148, i64 16, i1 false), !dbg !13488
  ret void, !dbg !13489
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13490 {
bb.a:
    #dbg_value(ptr poison, !13493, !DIExpression(), !13495)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13496
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13497 {
bb.a:
    #dbg_value(ptr poison, !13501, !DIExpression(), !13504)
    #dbg_declare(ptr poison, !13502, !DIExpression(), !13505)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @149, i64 16, i1 false), !dbg !13508
  ret void, !dbg !13509
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13510 {
bb.a:
    #dbg_value(ptr poison, !13513, !DIExpression(), !13515)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13516
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13517 {
bb.a:
    #dbg_value(ptr poison, !13521, !DIExpression(), !13524)
    #dbg_declare(ptr poison, !13522, !DIExpression(), !13525)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @150, i64 16, i1 false), !dbg !13528
  ret void, !dbg !13529
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13530 {
bb.a:
    #dbg_value(ptr poison, !13533, !DIExpression(), !13535)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13536
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13537 {
bb.a:
    #dbg_value(ptr poison, !13541, !DIExpression(), !13544)
    #dbg_declare(ptr poison, !13542, !DIExpression(), !13545)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @151, i64 16, i1 false), !dbg !13548
  ret void, !dbg !13549
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCshovLROGBtMy_11quinn_proto6config11ConfigErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13550 {
bb.a:
    #dbg_value(ptr poison, !13553, !DIExpression(), !13555)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13556
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCshovLROGBtMy_11quinn_proto6config11ConfigErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13557 {
bb.a:
    #dbg_value(ptr poison, !13561, !DIExpression(), !13564)
    #dbg_declare(ptr poison, !13562, !DIExpression(), !13565)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @152, i64 16, i1 false), !dbg !13568
  ret void, !dbg !13569
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCshovLROGBtMy_11quinn_proto8endpoint12ConnectErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13570 {
bb.a:
    #dbg_value(ptr poison, !13573, !DIExpression(), !13575)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13576
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCshovLROGBtMy_11quinn_proto8endpoint12ConnectErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13577 {
bb.a:
    #dbg_value(ptr poison, !13581, !DIExpression(), !13584)
    #dbg_declare(ptr poison, !13582, !DIExpression(), !13585)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @153, i64 16, i1 false), !dbg !13588
  ret void, !dbg !13589
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13590 {
bb.a:
    #dbg_value(ptr poison, !13593, !DIExpression(), !13595)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13596
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteENtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13597 {
bb.a:
    #dbg_value(ptr poison, !13601, !DIExpression(), !13604)
    #dbg_declare(ptr poison, !13602, !DIExpression(), !13605)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @154, i64 16, i1 false), !dbg !13608
  ret void, !dbg !13609
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13610 {
bb.a:
    #dbg_value(ptr poison, !13613, !DIExpression(), !13615)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13616
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13617 {
bb.a:
    #dbg_value(ptr poison, !13621, !DIExpression(), !13624)
    #dbg_declare(ptr poison, !13622, !DIExpression(), !13625)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @155, i64 16, i1 false), !dbg !13628
  ret void, !dbg !13629
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layered7LayeredINtNtNtB9_6filter13layer_filters8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryENtNtB18_3env9EnvFilterB2c_EB2c_ENtNtB9_4util17SubscriberInitExt4initCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(1296) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13630 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !13662, !DIExpression(), !13666)
    #dbg_declare(ptr %0, !13667, !DIExpression(), !13643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13719, !noalias !13693
    #dbg_declare(ptr %0, !13694, !DIExpression(), !13648)
    #dbg_declare(ptr %0, !13703, !DIExpression(), !13651)
  call void @_RINvMs2_NtCsgb4gPAseikh_12tracing_core10dispatcherNtB6_8Dispatch3newINtNtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layered7LayeredINtNtNtB1b_6filter13layer_filters8FilteredINtNtNtB1b_3fmt9fmt_layer5LayerNtNtNtB1b_8registry7sharded8RegistryENtNtB2a_3env9EnvFilterB3g_EB3g_EECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1296) %0), !dbg !13720
  %i.c = call noundef zeroext i1 @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher18set_global_default(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !13721, !noalias !13693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13722, !noalias !13693
    #dbg_value(ptr poison, !13710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13656)
    #dbg_value(ptr @160, !13710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13656)
    #dbg_value(ptr @156, !13715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13656)
    #dbg_value(i64 39, !13715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13656)
    #dbg_declare(ptr %i.a, !13717, !DIExpression(), !13657)
  br i1 %i.c, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCs7n8GKOt6esj_18tracing_subscriber4util12TryInitErrorE6expectCskigd7sy4fqX_10quinn_perf.exit, !dbg !13723, !prof !4337

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr inttoptr (i64 1 to ptr), !13710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13656)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13724
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !dbg !13724
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13724
  store ptr @160, ptr %i.d, align 8, !dbg !13724
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 39, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #20
          to label %bb.d unwind label %bb.c, !dbg !13725

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7n8GKOt6esj_18tracing_subscriber4util12TryInitErrorECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %bb.f unwind label %bb.e, !dbg !13726

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !13727
  unreachable, !dbg !13727

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !13727

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCs7n8GKOt6esj_18tracing_subscriber4util12TryInitErrorE6expectCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.a
  ret void, !dbg !13728
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13729 {
bb.a:
    #dbg_value(ptr poison, !13732, !DIExpression(), !13734)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13735
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %0) unnamed_addr #1 !dbg !13736 {
bb.a:
    #dbg_value(ptr %0, !13739, !DIExpression(), !13741)
  %i.a = tail call { ptr, ptr } @_RNvXsB_NtCsB8MOEg02Qk_5quinn11recv_streamNtB5_14ReadExactErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noundef nonnull align 8 %0), !dbg !13742
  ret { ptr, ptr } %i.a, !dbg !13743
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !13744 {
bb.a:
    #dbg_value(ptr poison, !13747, !DIExpression(), !13750)
    #dbg_value(ptr poison, !13748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13750)
    #dbg_value(ptr poison, !13748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13750)
  ret void, !dbg !13751
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13752 {
bb.a:
    #dbg_value(ptr poison, !13756, !DIExpression(), !13759)
    #dbg_declare(ptr poison, !13757, !DIExpression(), !13760)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @72, i64 16, i1 false), !dbg !13763
  ret void, !dbg !13764
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13765 {
bb.a:
    #dbg_value(ptr poison, !13768, !DIExpression(), !13770)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13771
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %0) unnamed_addr #9 !dbg !13772 {
bb.a:
    #dbg_value(ptr %0, !13775, !DIExpression(), !13777)
    #dbg_value(ptr %0, !5147, !DIExpression(), !13774)
  %i.a = load i64, ptr %0, align 8, !dbg !13778, !range !3693, !noundef !1326 ; 2 uses
  %i.b = icmp ne i64 %i.a, 11, !dbg !13778
  tail call void @llvm.assume(i1 %i.b), !dbg !13778
  %i.c = icmp samesign ult i64 %i.a, 10, !dbg !13778
  %..i = select i1 %i.c, ptr %0, ptr null, !dbg !13779
  %i.d = insertvalue { ptr, ptr } poison, ptr %..i, 0, !dbg !13780
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @30, 1, !dbg !13780
  ret { ptr, ptr } %i.e, !dbg !13781
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !13782 {
bb.a:
    #dbg_value(ptr poison, !13785, !DIExpression(), !13788)
    #dbg_value(ptr poison, !13786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13788)
    #dbg_value(ptr poison, !13786, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13788)
  ret void, !dbg !13789
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13790 {
bb.a:
    #dbg_value(ptr poison, !13794, !DIExpression(), !13797)
    #dbg_declare(ptr poison, !13795, !DIExpression(), !13798)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @65, i64 16, i1 false), !dbg !13801
  ret void, !dbg !13802
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13803 {
bb.a:
    #dbg_value(ptr poison, !13806, !DIExpression(), !13808)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13809
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !13810 {
bb.a:
    #dbg_value(ptr poison, !13813, !DIExpression(), !13816)
    #dbg_value(ptr poison, !13814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13816)
    #dbg_value(ptr poison, !13814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13816)
  ret void, !dbg !13817
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13818 {
bb.a:
    #dbg_value(ptr poison, !13822, !DIExpression(), !13825)
    #dbg_declare(ptr poison, !13823, !DIExpression(), !13826)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @66, i64 16, i1 false), !dbg !13829
  ret void, !dbg !13830
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !13831 {
bb.a:
    #dbg_value(ptr poison, !13834, !DIExpression(), !13836)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13837
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !13838 {
bb.a:
    #dbg_value(ptr poison, !13839, !DIExpression(), !13841)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !13842
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !13843 {
bb.a:
    #dbg_value(ptr poison, !13844, !DIExpression(), !13846)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !13847
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !13848 {
bb.a:
    #dbg_value(ptr poison, !13851, !DIExpression(), !13854)
    #dbg_value(ptr poison, !13852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13854)
    #dbg_value(ptr poison, !13852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13854)
  ret void, !dbg !13855
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 !dbg !13856 {
bb.a:
    #dbg_value(ptr poison, !13860, !DIExpression(), !13863)
    #dbg_declare(ptr poison, !13861, !DIExpression(), !13864)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @73, i64 16, i1 false), !dbg !13867
  ret void, !dbg !13868
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsgb4gPAseikh_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 !dbg !13869 {
bb.a:
    #dbg_value(ptr poison, !13872, !DIExpression(), !13874)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13875
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsgb4gPAseikh_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCskigd7sy4fqX_10quinn_perf(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 !dbg !13876 {
bb.a:
    #dbg_value(ptr poison, !13879, !DIExpression(), !13881)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !13882
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsgb4gPAseikh_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskigd7sy4fqX_10quinn_perf(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !13883 {
bb.a:
    #dbg_value(ptr poison, !13886, !DIExpression(), !13889)
    #dbg_value(ptr poison, !13887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13889)
    #dbg_value(ptr poison, !13887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13889)
  ret void, !dbg !13890
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsgb4gPAseikh_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #5 !dbg !13891 {
bb.a:
    #dbg_value(ptr poison, !13895, !DIExpression(), !13898)
    #dbg_declare(ptr poison, !13896, !DIExpression(), !13899)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @161, i64 16, i1 false), !dbg !13904
  ret void, !dbg !13905
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !13906 {
bb.a:
    #dbg_value(ptr poison, !13909, !DIExpression(), !13911)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13912
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !13913 {
bb.a:
    #dbg_value(ptr poison, !13916, !DIExpression(), !13919)
    #dbg_value(ptr poison, !13917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13919)
    #dbg_value(ptr poison, !13917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13919)
  ret void, !dbg !13920
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 !dbg !13921 {
bb.a:
    #dbg_value(ptr poison, !13925, !DIExpression(), !13928)
    #dbg_declare(ptr poison, !13926, !DIExpression(), !13929)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @67, i64 16, i1 false), !dbg !13932
  ret void, !dbg !13933
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCshovLROGBtMy_11quinn_proto6config11ConfigErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 !dbg !13934 {
bb.a:
    #dbg_value(ptr poison, !13937, !DIExpression(), !13939)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13940
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCshovLROGBtMy_11quinn_proto6config11ConfigErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCskigd7sy4fqX_10quinn_perf(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 !dbg !13941 {
bb.a:
    #dbg_value(ptr poison, !13944, !DIExpression(), !13946)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !13947
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCshovLROGBtMy_11quinn_proto6config11ConfigErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskigd7sy4fqX_10quinn_perf(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !13948 {
bb.a:
    #dbg_value(ptr poison, !13951, !DIExpression(), !13954)
    #dbg_value(ptr poison, !13952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13954)
    #dbg_value(ptr poison, !13952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13954)
  ret void, !dbg !13955
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCshovLROGBtMy_11quinn_proto6config11ConfigErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #5 !dbg !13956 {
bb.a:
    #dbg_value(ptr poison, !13960, !DIExpression(), !13963)
    #dbg_declare(ptr poison, !13961, !DIExpression(), !13964)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @68, i64 16, i1 false), !dbg !13969
  ret void, !dbg !13970
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCshovLROGBtMy_11quinn_proto8endpoint12ConnectErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !13971 {
bb.a:
    #dbg_value(ptr poison, !13974, !DIExpression(), !13976)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !13977
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCshovLROGBtMy_11quinn_proto8endpoint12ConnectErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !13978 {
bb.a:
    #dbg_value(ptr poison, !13981, !DIExpression(), !13983)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !13984
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCshovLROGBtMy_11quinn_proto8endpoint12ConnectErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !13985 {
bb.a:
    #dbg_value(ptr poison, !13988, !DIExpression(), !13991)
    #dbg_value(ptr poison, !13989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13991)
    #dbg_value(ptr poison, !13989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13991)
  ret void, !dbg !13992
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCshovLROGBtMy_11quinn_proto8endpoint12ConnectErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 !dbg !13993 {
bb.a:
    #dbg_value(ptr poison, !13997, !DIExpression(), !14000)
    #dbg_declare(ptr poison, !13998, !DIExpression(), !14001)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @69, i64 16, i1 false), !dbg !14004
  ret void, !dbg !14005
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, ptr } @_RNvYNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber12downcast_rawCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #3 !dbg !14006 {
bb.a:
    #dbg_value(ptr %0, !14011, !DIExpression(), !14014)
    #dbg_declare(ptr %1, !14012, !DIExpression(), !14015)
    #dbg_value(ptr %1, !14016, !DIExpression(), !14020)
    #dbg_value(ptr poison, !14017, !DIExpression(), !14021)
  %i.a = load i128, ptr %1, align 8, !dbg !14023, !noundef !1326
  %i.b = icmp eq i128 %i.a, 80836727491600757328267517386437530728, !dbg !14023
  %. = zext i1 %i.b to i64, !dbg !14024
  %i.c = insertvalue { i64, ptr } poison, i64 %., 0, !dbg !14025
  %i.d = insertvalue { i64, ptr } %i.c, ptr %0, 1, !dbg !14025
  ret { i64, ptr } %i.d, !dbg !14025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i64 -2, 5) i64 @_RNvYNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber14max_level_hintCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !14026 {
bb.a:
    #dbg_value(ptr poison, !14029, !DIExpression(), !14031)
  ret i64 -2, !dbg !14032
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber20on_register_dispatchCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #2 !dbg !14033 {
bb.a:
    #dbg_value(ptr poison, !14036, !DIExpression(), !14039)
    #dbg_value(ptr poison, !14037, !DIExpression(), !14039)
  ret void, !dbg !14040
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber9drop_spanCskigd7sy4fqX_10quinn_perf(ptr nofree nonnull readnone align 8 captures(none) %0, i64 range(i64 1, 0) %1) unnamed_addr #2 !dbg !14041 {
bb.a:
    #dbg_value(ptr poison, !14044, !DIExpression(), !14047)
    #dbg_value(i64 poison, !14045, !DIExpression(), !14047)
  ret void, !dbg !14048
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 !dbg !14049 {
bb.a:
    #dbg_value(ptr poison, !14052, !DIExpression(), !14054)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !14055
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core5error5Error6sourceCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 !dbg !14056 {
bb.a:
    #dbg_value(ptr poison, !14059, !DIExpression(), !14061)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !14062
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core5error5Error7provideCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !14063 {
bb.a:
    #dbg_value(ptr poison, !14066, !DIExpression(), !14069)
    #dbg_value(ptr poison, !14067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14069)
    #dbg_value(ptr poison, !14067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14069)
  ret void, !dbg !14070
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #5 !dbg !14071 {
bb.a:
    #dbg_value(ptr poison, !14075, !DIExpression(), !14078)
    #dbg_declare(ptr poison, !14076, !DIExpression(), !14079)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @70, i64 16, i1 false), !dbg !14084
  ret void, !dbg !14085
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !14086 {
bb.a:
    #dbg_value(ptr poison, !14089, !DIExpression(), !14091)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !14092
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !14093 {
bb.a:
    #dbg_value(ptr poison, !14096, !DIExpression(), !14099)
    #dbg_value(ptr poison, !14097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14099)
    #dbg_value(ptr poison, !14097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14099)
  ret void, !dbg !14100
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 !dbg !14101 {
bb.a:
    #dbg_value(ptr poison, !14105, !DIExpression(), !14108)
    #dbg_declare(ptr poison, !14106, !DIExpression(), !14109)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @71, i64 16, i1 false), !dbg !14112
  ret void, !dbg !14113
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 !dbg !14114 {
bb.a:
    #dbg_value(ptr poison, !14117, !DIExpression(), !14119)
  ret { ptr, i64 } { ptr @136, i64 40 }, !dbg !14120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 !dbg !14121 {
bb.a:
    #dbg_value(ptr poison, !14124, !DIExpression(), !14126)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !14127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCskigd7sy4fqX_10quinn_perf(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !14128 {
bb.a:
    #dbg_value(ptr poison, !14131, !DIExpression(), !14134)
    #dbg_value(ptr poison, !14132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14134)
    #dbg_value(ptr poison, !14132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14134)
  ret void, !dbg !14135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #5 !dbg !14136 {
bb.a:
    #dbg_value(ptr poison, !14140, !DIExpression(), !14143)
    #dbg_declare(ptr poison, !14141, !DIExpression(), !14144)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @74, i64 16, i1 false), !dbg !14149
  ret void, !dbg !14150
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14154 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %1, !14266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14272)
    #dbg_value(ptr %1, !14273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14284)
    #dbg_value(ptr %1, !14285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14293)
    #dbg_value(ptr %1, !14294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14301)
    #dbg_value(i64 %2, !14266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14272)
    #dbg_value(i64 %2, !14273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14284)
    #dbg_value(i64 %2, !14285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14293)
    #dbg_value(i64 %2, !14294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14301)
    #dbg_value(ptr %0, !14265, !DIExpression(), !14272)
    #dbg_value(ptr %1, !14302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14307)
    #dbg_value(i64 %2, !14302, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14307)
  %i.c = icmp eq i64 %2, 0, !dbg !14411
  br i1 %i.c, label %.loopexit, label %.lr.ph, !dbg !14412

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b, !dbg !14412

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.0.042 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.122, %bb.l ] ; 3 uses
  %.sroa.6.041 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.120, %bb.l ] ; 6 uses
    #dbg_value(ptr %.sroa.0.042, !14294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14301)
    #dbg_value(i64 %.sroa.6.041, !14294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14413
  %i.f = call { i64, ptr } @_RNvXs3_NtNtNtCsG258MDvU3F_3std3sys5stdio4unixNtB5_6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.042, i64 noundef %.sroa.6.041), !dbg !14414 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !14414 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !14414 ; 13 uses
  store i64 %i.g, ptr %i.b, align 8, !dbg !14414
  store ptr %i.h, ptr %i.d, align 8, !dbg !14414
  %i.i = trunc nuw i64 %i.g to i1, !dbg !14415
  %i.j = ptrtoint ptr %i.h to i64, !dbg !14415    ; 8 uses
  br i1 %i.i, label %bb.c, label %bb.e, !dbg !14415

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !14308, !DIExpression(), !14167)
    #dbg_value(ptr poison, !14320, !DIExpression(), !14170)
    #dbg_value(ptr poison, !14320, !DIExpression(), !14172)
    #dbg_value(ptr poison, !14320, !DIExpression(), !14174)
    #dbg_value(ptr poison, !14327, !DIExpression(), !14183)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
    #dbg_value(ptr %i.h, !14349, !DIExpression(), !14192)
    #dbg_declare(ptr poison, !14354, !DIExpression(), !14193)
    #dbg_value(i64 1, !14363, !DIExpression(), !14196)
    #dbg_value(i64 1, !14366, !DIExpression(), !14199)
    #dbg_value(i64 -1, !14369, !DIExpression(), !14202)
    #dbg_value(ptr %i.h, !14364, !DIExpression(), !14196)
    #dbg_value(i64 %i.j, !14355, !DIExpression(), !14203)
  %i.k = and i64 %i.j, 3, !dbg !14416
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split29
    i64 0, label %.split30
    i64 1, label %.split
  ], !dbg !14417, !prof !3537

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %i.j, !14313, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14204)
    #dbg_value(i64 %i.j, !14373, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14209)
  %i.l = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.m, !dbg !14418

.noexc:                                           ; preds = %bb.d
  %i.m = lshr i64 %i.j, 32, !dbg !14419
    #dbg_value(i64 %i.m, !14373, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14209)
    #dbg_value(i64 %i.m, !14313, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14204)
  %i.n = trunc nuw i64 %i.m to i32, !dbg !14419
    #dbg_value(i32 %i.n, !14313, !DIExpression(), !14204)
    #dbg_value(i32 %i.n, !14373, !DIExpression(), !14209)
    #dbg_value(ptr %i.l, !14378, !DIExpression(), !14210)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !14420
  %i.p = load ptr, ptr %i.o, align 8, !dbg !14420, !nonnull !1326, !noundef !1326
  %i.q = invoke noundef zeroext i1 %i.p(i32 noundef %i.n)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.m, !dbg !14420, !inline_history !14211

.split29:                                         ; preds = %bb.c
  %i.r = lshr i64 %i.j, 32, !dbg !14421
    #dbg_value(i64 %i.r, !14357, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14212)
    #dbg_value(i64 %i.r, !3540, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14214)
  %i.s = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr), !dbg !14422
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8
  %spec.select.i.i.i = select i1 %i.s, i8 %switch.idx.cast.i.i.i, i8 -1, !dbg !14422 ; 2 uses
    #dbg_value(i8 %spec.select.i.i.i, !14392, !DIExpression(), !14219)
    #dbg_value(ptr poison, !14400, !DIExpression(), !14220)
  %i.t = icmp ne i8 %spec.select.i.i.i, -1, !dbg !14423
  call void @llvm.assume(i1 %i.t), !dbg !14424
    #dbg_value(i8 %spec.select.i.i.i, !14316, !DIExpression(), !14221)
    #dbg_value(ptr poison, !14324, !DIExpression(), !14222)
  %i.u = icmp eq i8 %spec.select.i.i.i, 35, !dbg !14425
  br i1 %i.u, label %bb.j, label %bb.g, !dbg !14426

.split30:                                         ; preds = %bb.c
    #dbg_value(ptr %i.h, !14317, !DIExpression(), !14223)
    #dbg_value(ptr %i.h, !14324, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !14224)
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !14427
  %i.w = load i8, ptr %i.v, align 8, !dbg !14427, !range !14404, !noundef !1326
  %i.x = icmp eq i8 %i.w, 35, !dbg !14427
  br i1 %i.x, label %.thread.thread, label %bb.g, !dbg !14426

.split:                                           ; preds = %bb.c
    #dbg_value(ptr %i.h, !14367, !DIExpression(), !14199)
    #dbg_value(ptr %i.h, !14370, !DIExpression(), !14202)
    #dbg_value(ptr %i.h, !14315, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !14225)
    #dbg_value(ptr %i.h, !14324, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_plus_uconst, 32, DW_OP_stack_value), !14226)
  %i.y = getelementptr i8, ptr %i.h, i64 31, !dbg !14428
  %i.z = load i8, ptr %i.y, align 8, !dbg !14428, !range !14404, !noundef !1326
  %i.aa = icmp eq i8 %i.z, 35, !dbg !14428
  br i1 %i.aa, label %bb.k, label %bb.g, !dbg !14426

bb.e:                                             ; preds = %bb.b
  %i.ab = icmp eq ptr %i.h, null, !dbg !14415
  br i1 %i.ab, label %bb.g, label %bb.f, !dbg !14415

bb.f:                                             ; preds = %bb.e
    #dbg_value(i64 %i.j, !14267, !DIExpression(), !14407)
    #dbg_value(i64 %i.j, !14279, !DIExpression(), !14284)
    #dbg_value(i64 %i.j, !14289, !DIExpression(), !14293)
    #dbg_value(i64 %i.j, !14297, !DIExpression(), !14301)
  %i.ac = icmp ult i64 %.sroa.6.041, %i.j, !dbg !14429
  br i1 %i.ac, label %bb.h, label %bb.i, !dbg !14429, !prof !4337

bb.g:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split29, %.split30, %bb.e
  %.sroa.07.0 = phi ptr [ @163, %bb.e ], [ %i.h, %.split30 ], [ %i.h, %.split29 ], [ %i.h, %.split ], [ %i.h, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], !dbg !14272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14430
  br label %.loopexit, !dbg !14431

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %.sroa.6.041, i64 noundef %.sroa.6.041, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #20, !dbg !14432
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ad = sub nuw nsw i64 %.sroa.6.041, %i.j, !dbg !14433
    #dbg_value(i64 %i.ad, !14290, !DIExpression(), !14408)
    #dbg_value(i64 %i.ad, !14298, !DIExpression(), !14301)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 %i.j, !dbg !14434
    #dbg_value(ptr %i.ae, !14294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14301)
    #dbg_value(ptr %i.ae, !14285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14293)
    #dbg_value(ptr %i.ae, !14273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14284)
    #dbg_value(ptr %i.ae, !14266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14272)
    #dbg_value(i64 %i.ad, !14294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14301)
    #dbg_value(i64 %i.ad, !14285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14293)
    #dbg_value(i64 %i.ad, !14273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14284)
    #dbg_value(i64 %i.ad, !14266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14272)
  br label %bb.l, !dbg !14430

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.q, label %.thread.thread, label %bb.g, !dbg !14426

.loopexit:                                        ; preds = %bb.l, %bb.a, %bb.g
  %.sroa.07.1 = phi ptr [ %.sroa.07.0, %bb.g ], [ null, %bb.a ], [ null, %bb.l ], !dbg !14272
  ret ptr %.sroa.07.1, !dbg !14431

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split30
    #dbg_value(ptr %.sroa.0.042, !14294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14301)
    #dbg_value(ptr %.sroa.0.042, !14285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14293)
    #dbg_value(ptr %.sroa.0.042, !14273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14284)
    #dbg_value(ptr %.sroa.0.042, !14266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14272)
    #dbg_value(i64 %.sroa.6.041, !14294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14301)
    #dbg_value(i64 %.sroa.6.041, !14285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14293)
    #dbg_value(i64 %.sroa.6.041, !14273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14284)
    #dbg_value(i64 %.sroa.6.041, !14266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14272)
    #dbg_value(ptr %i.d, !3484, !DIExpression(), !14228)
end_hunk_0
