Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/perf-b8ae0e33403d20a0.perf.5b1007c131bc3bb7-cgu.07?download=true
inline.NumInlined: 201
inline.NumDeleted: 102
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsh_NtCseEeXhZwqjpo_16rustls_pki_types3pemNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !dbg !11255 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !11259, !DIExpression(), !11266)
    #dbg_value(ptr %1, !11260, !DIExpression(), !11266)
  %i.e = load i64, ptr %0, align 8, !dbg !11271, !range !3827, !noundef !1755
  switch i64 %i.e, label %default.unreachable3 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
  ], !dbg !11271

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11272
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11272
    #dbg_value(ptr %i.f, !11261, !DIExpression(), !11267)
  store ptr %i.f, ptr %i.d, align 8, !dbg !11272
    #dbg_value(ptr %i.d, !11261, !DIExpression(DW_OP_deref), !11267)
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 10, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @98), !dbg !11273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11274
  br label %bb.h, !dbg !11274

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11275
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11275
    #dbg_value(ptr %i.h, !11262, !DIExpression(), !11268)
  store ptr %i.h, ptr %i.c, align 8, !dbg !11275
    #dbg_value(ptr %i.c, !11262, !DIExpression(DW_OP_deref), !11268)
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 19, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @98), !dbg !11276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11274
  br label %bb.h, !dbg !11274

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11277
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11277
    #dbg_value(ptr %i.j, !11263, !DIExpression(), !11269)
  store ptr %i.j, ptr %i.b, align 8, !dbg !11277
    #dbg_value(ptr %i.b, !11263, !DIExpression(DW_OP_deref), !11269)
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103), !dbg !11278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11274
  br label %bb.h, !dbg !11274

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11279
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11279
    #dbg_value(ptr %i.l, !11264, !DIExpression(), !11270)
  store ptr %i.l, ptr %i.a, align 8, !dbg !11279
    #dbg_value(ptr %i.a, !11264, !DIExpression(DW_OP_deref), !11270)
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105), !dbg !11280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11274
  br label %bb.h, !dbg !11274

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 12), !dbg !11271
  br label %bb.h, !dbg !11271

bb.g:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 15), !dbg !11271
  br label %bb.h, !dbg !11271

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ], [ %i.o, %bb.g ]
  ret i1 %.sroa.0.0.in, !dbg !11281
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtCsB8MOEg02Qk_5quinn11recv_streamNtB5_9ReadErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !dbg !798 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !4672, !DIExpression(), !11282)
    #dbg_value(ptr %1, !4676, !DIExpression(), !11282)
  %i.c = load i64, ptr %0, align 8, !dbg !11285, !range !3778, !noundef !1755 ; 3 uses
  %i.d = icmp ne i64 %i.c, 11, !dbg !11285
  tail call void @llvm.assume(i1 %i.d), !dbg !11285
  %i.e = add nsw i64 %i.c, -10, !dbg !11285
  %i.f = icmp samesign ugt i64 %i.c, 9, !dbg !11285
  %i.g = select i1 %i.f, i64 %i.e, i64 1, !dbg !11285
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ], !dbg !11285

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !11285

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11286
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11286
    #dbg_value(ptr %i.h, !4677, !DIExpression(), !11283)
  store ptr %i.h, ptr %i.b, align 8, !dbg !11286
    #dbg_value(ptr %i.b, !4677, !DIExpression(DW_OP_deref), !11283)
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74), !dbg !11287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11288
  br label %bb.h, !dbg !11288

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11289
    #dbg_value(ptr %0, !4678, !DIExpression(), !11284)
  store ptr %0, ptr %i.a, align 8, !dbg !11289
    #dbg_value(ptr %i.a, !4678, !DIExpression(DW_OP_deref), !11284)
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76), !dbg !11290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11288
  br label %bb.h, !dbg !11288

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 12), !dbg !11285
  br label %bb.h, !dbg !11285

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 18), !dbg !11285
  br label %bb.h, !dbg !11285

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 15), !dbg !11285
  br label %bb.h, !dbg !11285

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ]
  ret i1 %.sroa.0.0.in, !dbg !11291
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXsl_NtCsB8MOEg02Qk_5quinn11recv_streamNtB5_9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noundef nonnull align 8 %0) unnamed_addr #7 !dbg !1277 {
bb.a:
    #dbg_value(ptr %0, !5336, !DIExpression(), !11292)
  %i.a = load i64, ptr %0, align 8, !dbg !11293, !range !3778, !noundef !1755 ; 2 uses
  %i.b = icmp ne i64 %i.a, 11, !dbg !11293
  tail call void @llvm.assume(i1 %i.b), !dbg !11293
  %i.c = icmp samesign ult i64 %i.a, 10, !dbg !11293
  %. = select i1 %i.c, ptr %0, ptr null, !dbg !11292
  %i.d = insertvalue { ptr, ptr } poison, ptr %., 0, !dbg !11294
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @27, 1, !dbg !11294
  ret { ptr, ptr } %i.e, !dbg !11294
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCsjx2R6KBUtVL_6rustls6suites20SupportedCipherSuiteNtB5_5Debug3fmtCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !11296 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !11312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11315)
    #dbg_value(ptr %0, !11316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11330)
    #dbg_value(ptr %0, !11331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11338)
    #dbg_value(i64 %1, !11312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11315)
    #dbg_value(i64 %1, !11316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11330)
    #dbg_value(i64 %1, !11331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11338)
    #dbg_value(ptr %2, !11313, !DIExpression(), !11315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11349
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !11350
    #dbg_value(i64 %1, !11333, !DIExpression(), !11339)
    #dbg_value(i64 %1, !11340, !DIExpression(), !11347)
    #dbg_value(ptr %0, !11334, !DIExpression(), !11348)
    #dbg_value(ptr %0, !11344, !DIExpression(), !11347)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !11351
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsjx2R6KBUtVL_6rustls6suites20SupportedCipherSuiteINtNtNtBa_5slice4iter4IterB14_EECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !11352
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !11353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11354
  ret i1 %i.d, !dbg !11355
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSRDNtNtCsjx2R6KBUtVL_6rustls6crypto16SupportedKxGroupEL_NtB5_5Debug3fmtCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !11357 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !11373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11376)
    #dbg_value(ptr %0, !11377, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11391)
    #dbg_value(ptr %0, !11392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11399)
    #dbg_value(i64 %1, !11373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11376)
    #dbg_value(i64 %1, !11377, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11391)
    #dbg_value(i64 %1, !11392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11399)
    #dbg_value(ptr %2, !11374, !DIExpression(), !11376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11410
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !11411
    #dbg_value(i64 %1, !11394, !DIExpression(), !11400)
    #dbg_value(i64 %1, !11401, !DIExpression(), !11408)
    #dbg_value(ptr %0, !11395, !DIExpression(), !11409)
    #dbg_value(ptr %0, !11405, !DIExpression(), !11408)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1, !dbg !11412
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRRDNtNtCsjx2R6KBUtVL_6rustls6crypto16SupportedKxGroupEL_INtNtNtBa_5slice4iter4IterB14_EECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !11413
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !11414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11415
  ret i1 %i.d, !dbg !11416
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11417 {
bb.a:
    #dbg_value(ptr poison, !11420, !DIExpression(), !11422)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11423
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11424 {
bb.a:
    #dbg_value(ptr poison, !11428, !DIExpression(), !11431)
    #dbg_declare(ptr poison, !11429, !DIExpression(), !11432)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @111, i64 16, i1 false), !dbg !11435
  ret void, !dbg !11436
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11437 {
bb.a:
    #dbg_value(ptr poison, !11440, !DIExpression(), !11442)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11443
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11444 {
bb.a:
    #dbg_value(ptr poison, !11448, !DIExpression(), !11451)
    #dbg_declare(ptr poison, !11449, !DIExpression(), !11452)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @112, i64 16, i1 false), !dbg !11455
  ret void, !dbg !11456
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !11457 {
bb.a:
    #dbg_value(ptr poison, !11460, !DIExpression(), !11462)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11463
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 !dbg !11464 {
bb.a:
    #dbg_value(ptr poison, !11468, !DIExpression(), !11471)
    #dbg_declare(ptr poison, !11469, !DIExpression(), !11472)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @113, i64 16, i1 false), !dbg !11475
  ret void, !dbg !11476
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11477 {
bb.a:
    #dbg_value(ptr poison, !11480, !DIExpression(), !11482)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11483
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11484 {
bb.a:
    #dbg_value(ptr poison, !11488, !DIExpression(), !11491)
    #dbg_declare(ptr poison, !11489, !DIExpression(), !11492)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @114, i64 16, i1 false), !dbg !11495
  ret void, !dbg !11496
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !11497 {
bb.a:
    #dbg_value(ptr poison, !11500, !DIExpression(), !11502)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11503
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 !dbg !11504 {
bb.a:
    #dbg_value(ptr poison, !11508, !DIExpression(), !11511)
    #dbg_declare(ptr poison, !11509, !DIExpression(), !11512)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @115, i64 16, i1 false), !dbg !11515
  ret void, !dbg !11516
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorENtNtBU_5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !11517 {
bb.a:
    #dbg_value(ptr poison, !11520, !DIExpression(), !11522)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11523
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorENtNtBU_5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 !dbg !11524 {
bb.a:
    #dbg_value(ptr poison, !11528, !DIExpression(), !11531)
    #dbg_declare(ptr poison, !11529, !DIExpression(), !11532)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @116, i64 16, i1 false), !dbg !11537
  ret void, !dbg !11538
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11539 {
bb.a:
    #dbg_value(ptr poison, !11542, !DIExpression(), !11544)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11545
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11546 {
bb.a:
    #dbg_value(ptr poison, !11550, !DIExpression(), !11553)
    #dbg_declare(ptr poison, !11551, !DIExpression(), !11554)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @117, i64 16, i1 false), !dbg !11557
  ret void, !dbg !11558
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11559 {
bb.a:
    #dbg_value(ptr poison, !11562, !DIExpression(), !11564)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11565
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11566 {
bb.a:
    #dbg_value(ptr poison, !11570, !DIExpression(), !11573)
    #dbg_declare(ptr poison, !11571, !DIExpression(), !11574)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @118, i64 16, i1 false), !dbg !11577
  ret void, !dbg !11578
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11579 {
bb.a:
    #dbg_value(ptr poison, !11582, !DIExpression(), !11584)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11585
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11586 {
bb.a:
    #dbg_value(ptr poison, !11590, !DIExpression(), !11593)
    #dbg_declare(ptr poison, !11591, !DIExpression(), !11594)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @119, i64 16, i1 false), !dbg !11597
  ret void, !dbg !11598
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11599 {
bb.a:
    #dbg_value(ptr poison, !11602, !DIExpression(), !11604)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11605
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11606 {
bb.a:
    #dbg_value(ptr poison, !11610, !DIExpression(), !11613)
    #dbg_declare(ptr poison, !11611, !DIExpression(), !11614)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @120, i64 16, i1 false), !dbg !11617
  ret void, !dbg !11618
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1a_5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11619 {
bb.a:
    #dbg_value(ptr poison, !11622, !DIExpression(), !11624)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11625
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1a_5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11626 {
bb.a:
    #dbg_value(ptr poison, !11630, !DIExpression(), !11633)
    #dbg_declare(ptr poison, !11631, !DIExpression(), !11634)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @121, i64 16, i1 false), !dbg !11637
  ret void, !dbg !11638
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorEENtNtB1a_5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11639 {
bb.a:
    #dbg_value(ptr poison, !11642, !DIExpression(), !11644)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11645
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorEENtNtB1a_5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11646 {
bb.a:
    #dbg_value(ptr poison, !11650, !DIExpression(), !11653)
    #dbg_declare(ptr poison, !11651, !DIExpression(), !11654)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @122, i64 16, i1 false), !dbg !11657
  ret void, !dbg !11658
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11659 {
bb.a:
    #dbg_value(ptr poison, !11662, !DIExpression(), !11664)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11665
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11666 {
bb.a:
    #dbg_value(ptr poison, !11670, !DIExpression(), !11673)
    #dbg_declare(ptr poison, !11671, !DIExpression(), !11674)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @123, i64 16, i1 false), !dbg !11677
  ret void, !dbg !11678
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11679 {
bb.a:
    #dbg_value(ptr poison, !11682, !DIExpression(), !11684)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11685
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11686 {
bb.a:
    #dbg_value(ptr poison, !11690, !DIExpression(), !11693)
    #dbg_declare(ptr poison, !11691, !DIExpression(), !11694)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @124, i64 16, i1 false), !dbg !11697
  ret void, !dbg !11698
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11699 {
bb.a:
    #dbg_value(ptr poison, !11702, !DIExpression(), !11704)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11705
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11706 {
bb.a:
    #dbg_value(ptr poison, !11710, !DIExpression(), !11713)
    #dbg_declare(ptr poison, !11711, !DIExpression(), !11714)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @125, i64 16, i1 false), !dbg !11717
  ret void, !dbg !11718
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !11719 {
bb.a:
    #dbg_value(ptr poison, !11722, !DIExpression(), !11724)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !11725
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !11726 {
bb.a:
    #dbg_value(ptr poison, !11730, !DIExpression(), !11733)
    #dbg_declare(ptr poison, !11731, !DIExpression(), !11734)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @126, i64 16, i1 false), !dbg !11737
  ret void, !dbg !11738
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write18write_all_vectoredCs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11743 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !12151, !DIExpression(), !11751)
    #dbg_value(ptr %1, !12144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12162)
    #dbg_value(i64 %2, !12144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12162)
    #dbg_value(ptr %0, !12143, !DIExpression(), !12162)
    #dbg_value(ptr poison, !12163, !DIExpression(), !11758)
    #dbg_value(i64 0, !12155, !DIExpression(), !11759)
    #dbg_value(i64 0, !12157, !DIExpression(), !11760)
    #dbg_value(i64 0, !12160, !DIExpression(), !11761)
    #dbg_value(i64 0, !12169, !DIExpression(), !11764)
    #dbg_value(i64 0, !12176, !DIExpression(), !11767)
    #dbg_value(i64 0, !12183, !DIExpression(), !11770)
    #dbg_value(ptr undef, !12151, !DIExpression(), !11759)
    #dbg_value(i64 1, !12190, !DIExpression(), !11773)
    #dbg_value(i64 0, !12156, !DIExpression(), !11774)
    #dbg_value(i64 0, !12194, !DIExpression(), !11778)
    #dbg_value(i64 0, !12208, !DIExpression(), !11782)
    #dbg_value(i64 0, !12215, !DIExpression(), !11786)
    #dbg_value(ptr %1, !12224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11789)
    #dbg_value(ptr %1, !12226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11795)
    #dbg_value(i64 %2, !12224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11789)
    #dbg_value(i64 %2, !12226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11795)
    #dbg_value(i64 %2, !12227, !DIExpression(), !11796)
    #dbg_value(i64 %2, !12231, !DIExpression(), !11799)
    #dbg_value(ptr %1, !12228, !DIExpression(), !11800)
    #dbg_value(ptr %1, !12232, !DIExpression(), !11799)
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !12278    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !12278
    #dbg_value(ptr %1, !12158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11801)
    #dbg_value(ptr %i.f, !12158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11801)
    #dbg_value(ptr undef, !12163, !DIExpression(), !11758)
    #dbg_value(ptr %1, !12164, !DIExpression(), !11802)
    #dbg_value(ptr %1, !12191, !DIExpression(), !11773)
    #dbg_value(ptr %i.f, !12165, !DIExpression(), !11803)
    #dbg_value(ptr poison, !12234, !DIExpression(), !11806)
    #dbg_value(ptr poison, !12235, !DIExpression(), !11807)
  %i.g = icmp eq i64 %2, 0, !dbg !12279
  br i1 %i.g, label %.loopexit, label %.lr.ph.preheader.i, !dbg !12280

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.h = add nsw i64 %.idx.i, -16, !dbg !12281
  %i.i = lshr exact i64 %i.h, 4, !dbg !12281
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !12281
  br label %.lr.ph.i, !dbg !12281

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.05.048.i = phi i64 [ %i.n, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.010.047.i = phi ptr [ %i.m, %bb.b ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
    #dbg_value(i64 0, !12183, !DIExpression(), !11770)
    #dbg_value(i64 %.sroa.05.048.i, !12215, !DIExpression(), !11786)
    #dbg_value(ptr %.sroa.010.047.i, !12158, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11801)
    #dbg_value(ptr %.sroa.010.047.i, !12159, !DIExpression(), !11810)
    #dbg_value(ptr %.sroa.010.047.i, !12243, !DIExpression(), !11813)
    #dbg_value(i64 0, !12239, !DIExpression(), !11814)
    #dbg_value(ptr %.sroa.010.047.i, !12245, !DIExpression(), !11817)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.010.047.i, i64 8, !dbg !12282
  %i.l = load i64, ptr %i.k, align 8, !dbg !12282, !noalias !12247, !noundef !1755
    #dbg_value(i64 %i.l, !12240, !DIExpression(), !11814)
  %.not = icmp eq i64 %i.l, 0, !dbg !12281
  br i1 %.not, label %bb.b, label %._crit_edge.i, !dbg !12281

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.047.i, i64 16, !dbg !12283 ; 2 uses
    #dbg_value(ptr %i.m, !12158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11801)
    #dbg_value(i64 0, !12155, !DIExpression(), !11759)
    #dbg_value(i64 0, !12157, !DIExpression(), !11760)
    #dbg_value(i64 0, !12160, !DIExpression(), !11761)
    #dbg_value(i64 0, !12169, !DIExpression(), !11764)
    #dbg_value(i64 0, !12176, !DIExpression(), !11767)
    #dbg_value(i64 0, !12183, !DIExpression(), !11770)
  %i.n = add nuw nsw i64 %.sroa.05.048.i, 1, !dbg !12284
    #dbg_value(i64 %i.n, !12215, !DIExpression(), !11786)
    #dbg_value(i64 %i.n, !12208, !DIExpression(), !11782)
    #dbg_value(i64 %i.n, !12194, !DIExpression(), !11778)
    #dbg_value(i64 %i.n, !12156, !DIExpression(), !11774)
    #dbg_value(ptr undef, !12163, !DIExpression(), !11758)
    #dbg_value(ptr %i.m, !12164, !DIExpression(), !11802)
    #dbg_value(ptr %i.m, !12191, !DIExpression(), !11773)
    #dbg_value(ptr %i.f, !12165, !DIExpression(), !11803)
    #dbg_value(ptr poison, !12234, !DIExpression(), !11806)
    #dbg_value(ptr poison, !12235, !DIExpression(), !11807)
  %i.o = icmp eq ptr %i.m, %i.f, !dbg !12279
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i, !dbg !12280

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i
  %.sroa.05.0.lcssa.i = phi i64 [ %.sroa.05.048.i, %.lr.ph.i ], [ %i.j, %bb.b ], !dbg !12285 ; 5 uses
    #dbg_value(ptr %1, !12204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11778)
    #dbg_value(ptr %1, !12212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11782)
    #dbg_value(i64 %2, !12204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11778)
    #dbg_value(i64 %2, !12212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11782)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !12144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12162)
    #dbg_value(i64 0, !12144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12162)
  %i.p = icmp ugt i64 %.sroa.05.0.lcssa.i, %2, !dbg !12286
  br i1 %i.p, label %bb.d, label %bb.c, !dbg !12286, !prof !12248

bb.c:                                             ; preds = %._crit_edge.i
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !12213, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !11820)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !12222, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !11786)
    #dbg_value(ptr %1, !12221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11786)
    #dbg_value(i64 %2, !12221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11786)
    #dbg_value(!DIArgList(ptr %1, i64 %.sroa.05.0.lcssa.i), !12144, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12162)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !12144, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12162)
    #dbg_value(ptr poison, !12252, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11823)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !12252, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11823)
  %i.q = icmp eq i64 %2, %.sroa.05.0.lcssa.i, !dbg !12287
  br i1 %i.q, label %.loopexit, label %.lr.ph, !dbg !12288

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.05.0.lcssa.i, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #26, !dbg !12289, !noalias !12247
  unreachable, !dbg !12289

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.05.0.lcssa.i, !dbg !12290
    #dbg_value(ptr %i.r, !12144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12162)
  %i.s = sub nuw nsw i64 %2, %.sroa.05.0.lcssa.i, !dbg !12291
    #dbg_value(i64 %i.s, !12213, !DIExpression(), !11820)
    #dbg_value(i64 %i.s, !12222, !DIExpression(), !11786)
    #dbg_value(i64 %i.s, !12252, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11823)
    #dbg_value(i64 %i.s, !12144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12162)
    #dbg_value(ptr %i.r, !12174, !DIExpression(), !11764)
    #dbg_value(ptr %i.r, !12181, !DIExpression(), !11824)
    #dbg_value(ptr poison, !12186, !DIExpression(), !11770)
    #dbg_value(ptr %i.r, !12144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12162)
    #dbg_value(i64 %i.s, !12144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12162)
    #dbg_value(ptr poison, !12256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12259)
    #dbg_value(i64 %i.s, !12256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12259)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.e, !dbg !12292

bb.e:                                             ; preds = %.lr.ph, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit24
  %.sroa.0.03683 = phi ptr [ %i.r, %.lr.ph ], [ %.sroa.0.13751, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit24 ] ; 10 uses
  %.sroa.8.082 = phi i64 [ %i.s, %.lr.ph ], [ %.sroa.8.149, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit24 ] ; 9 uses
    #dbg_value(ptr %.sroa.0.03683, !12144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12162)
    #dbg_value(i64 %.sroa.8.082, !12144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12293
  call void @llvm.experimental.noalias.scope.decl(metadata !12260), !dbg !12294
  call void @llvm.experimental.noalias.scope.decl(metadata !12261), !dbg !12294
    #dbg_value(ptr poison, !5193, !DIExpression(), !11831)
    #dbg_value(ptr poison, !5193, !DIExpression(), !11833)
    #dbg_value(ptr %0, !5162, !DIExpression(), !11834)
    #dbg_value(ptr %0, !5213, !DIExpression(), !11836)
    #dbg_value(ptr %0, !5213, !DIExpression(), !11838)
    #dbg_value(ptr %0, !5213, !DIExpression(), !11840)
    #dbg_value(ptr %.sroa.0.03683, !5163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11834)
    #dbg_value(ptr %.sroa.0.03683, !5215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11842)
    #dbg_value(ptr %.sroa.0.03683, !5220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11844)
    #dbg_value(ptr %.sroa.0.03683, !5222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11846)
    #dbg_value(ptr %.sroa.0.03683, !5220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11848)
    #dbg_value(ptr %.sroa.0.03683, !5222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11850)
    #dbg_value(ptr %.sroa.0.03683, !5220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11852)
    #dbg_value(ptr %.sroa.0.03683, !5222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11854)
    #dbg_value(i64 %.sroa.8.082, !5163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11834)
    #dbg_value(i64 %.sroa.8.082, !5215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11842)
    #dbg_value(i64 %.sroa.8.082, !5220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11844)
    #dbg_value(i64 %.sroa.8.082, !5222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11846)
    #dbg_value(i64 %.sroa.8.082, !5220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11848)
    #dbg_value(i64 %.sroa.8.082, !5222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11850)
    #dbg_value(i64 %.sroa.8.082, !5220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11852)
    #dbg_value(i64 %.sroa.8.082, !5222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11854)
    #dbg_value(i64 1, !5236, !DIExpression(), !11856)
    #dbg_value(i64 1, !5242, !DIExpression(), !11860)
    #dbg_value(i64 1, !5242, !DIExpression(), !11864)
    #dbg_value(i64 1, !5236, !DIExpression(), !11866)
    #dbg_value(i64 0, !5164, !DIExpression(), !11867)
    #dbg_value(i64 0, !5254, !DIExpression(), !11869)
    #dbg_value(i64 %.sroa.8.082, !5224, !DIExpression(), !11870)
    #dbg_value(i64 %.sroa.8.082, !5257, !DIExpression(), !11872)
    #dbg_value(i64 %.sroa.8.082, !5257, !DIExpression(), !11874)
    #dbg_value(ptr %.sroa.0.03683, !5225, !DIExpression(), !11875)
    #dbg_value(ptr %.sroa.0.03683, !5261, !DIExpression(), !11872)
  %.idx.i7 = shl i64 %.sroa.8.082, 4, !dbg !12295 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write18write_all_vectoredCs7OITKvp9Irj_4perf:bb.a
    #dbg_value(i64 %i.ec, !12169, !DIExpression(), !12059)
    #dbg_value(i64 %i.ec, !12176, !DIExpression(), !12061)
    #dbg_value(i64 %i.ec, !12183, !DIExpression(), !12063)
  %i.ed = add nuw nsw i64 %.sroa.05.048.i14, 1, !dbg !12394
    #dbg_value(i64 %i.ed, !12215, !DIExpression(), !12073)
    #dbg_value(i64 %i.ed, !12208, !DIExpression(), !12071)
    #dbg_value(i64 %i.ed, !12194, !DIExpression(), !12069)
    #dbg_value(i64 %i.ed, !12156, !DIExpression(), !12067)
    #dbg_value(ptr undef, !12163, !DIExpression(), !12083)
    #dbg_value(ptr %i.eb, !12164, !DIExpression(), !12084)
    #dbg_value(ptr %i.eb, !12191, !DIExpression(), !12066)
    #dbg_value(ptr %i.ac, !12165, !DIExpression(), !12085)
    #dbg_value(ptr poison, !12234, !DIExpression(), !12087)
    #dbg_value(ptr poison, !12235, !DIExpression(), !12088)
  %i.ee = icmp eq ptr %i.eb, %i.ac, !dbg !12395
  br i1 %i.ee, label %._crit_edge.i16, label %.lr.ph.i12, !dbg !12396

._crit_edge.i16:                                  ; preds = %bb.z, %.lr.ph.i12
  %.sroa.05.0.lcssa.i17 = phi i64 [ %.sroa.05.048.i14, %.lr.ph.i12 ], [ %i.dx, %bb.z ], !dbg !12397 ; 5 uses
  %.sroa.0.0.lcssa.i18 = phi i64 [ %.sroa.0.049.i13, %.lr.ph.i12 ], [ %i.ec, %bb.z ] ; 4 uses
    #dbg_value(ptr %.sroa.0.03683, !12204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12069)
    #dbg_value(ptr %.sroa.0.03683, !12212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12071)
    #dbg_value(i64 %.sroa.8.082, !12204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12069)
    #dbg_value(i64 %.sroa.8.082, !12212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12071)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !12144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12162)
    #dbg_value(i64 0, !12144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12162)
  %i.ef = icmp ugt i64 %.sroa.05.0.lcssa.i17, %.sroa.8.082, !dbg !12398
  br i1 %i.ef, label %.noexc21, label %bb.aa, !dbg !12398, !prof !12248

bb.aa:                                            ; preds = %._crit_edge.i16
  %i.eg = sub nuw nsw i64 %.sroa.8.082, %.sroa.05.0.lcssa.i17, !dbg !12399
    #dbg_value(i64 %i.eg, !12213, !DIExpression(), !12098)
    #dbg_value(i64 %i.eg, !12222, !DIExpression(), !12073)
    #dbg_value(ptr %.sroa.0.03683, !12221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12073)
    #dbg_value(i64 %.sroa.8.082, !12221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12073)
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.03683, i64 %.sroa.05.0.lcssa.i17, !dbg !12400 ; 4 uses
    #dbg_value(ptr %i.eh, !12144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12162)
    #dbg_value(i64 %i.eg, !12144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12162)
    #dbg_value(ptr poison, !12252, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12100)
    #dbg_value(i64 %i.eg, !12252, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12100)
  %i.ei = icmp eq i64 %.sroa.8.082, %.sroa.05.0.lcssa.i17, !dbg !12401
  br i1 %i.ei, label %.thread.i19, label %bb.ab, !dbg !12402

.noexc21:                                         ; preds = %._crit_edge.i16
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.05.0.lcssa.i17, i64 noundef %.sroa.8.082, i64 noundef %.sroa.8.082, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #26, !dbg !12403
  unreachable, !dbg !12403

.thread.i19:                                      ; preds = %bb.aa
    #dbg_value(ptr %i.eh, !12144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12162)
    #dbg_value(i64 %i.eg, !12144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12162)
  %i.ej = icmp eq i64 %.sroa.0.0.lcssa.i18, 0, !dbg !12404
  br i1 %i.ej, label %.loopexit.sink.split, label %.noexc23, !dbg !12404, !prof !3852

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr %i.eh, !12174, !DIExpression(), !12059)
    #dbg_value(ptr %i.eh, !12181, !DIExpression(), !12101)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8, !dbg !12405 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !dbg !12405, !noalias !12275, !noundef !1755 ; 2 uses
  %i.em = icmp ult i64 %i.el, %.sroa.0.0.lcssa.i18, !dbg !12405
  br i1 %i.em, label %.noexc22, label %bb.ac, !dbg !12405, !prof !3194

bb.ac:                                            ; preds = %bb.ab
  %i.en = sub nuw i64 %i.el, %.sroa.0.0.lcssa.i18, !dbg !12406
  store i64 %i.en, ptr %i.ek, align 8, !dbg !12406, !noalias !12275
  %i.eo = load ptr, ptr %i.eh, align 8, !dbg !12407, !noalias !12275, !noundef !1755
    #dbg_value(ptr %i.eo, !12186, !DIExpression(), !12063)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.0.0.lcssa.i18, !dbg !12408
  store ptr %i.ep, ptr %i.eh, align 8, !dbg !12409, !noalias !12275
  br label %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit24, !dbg !12410

.noexc22:                                         ; preds = %bb.ab
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @63, ptr noundef nonnull inttoptr (i64 71 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #26, !dbg !12411
  unreachable, !dbg !12411

.noexc23:                                         ; preds = %.thread.i19
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @66, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #26, !dbg !12412
  unreachable, !dbg !12412

.thread:                                          ; preds = %.noexc, %bb.x
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #23
          to label %common.resume unwind label %bb.af, !dbg !12413

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.dj, label %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit24.thread.thread, label %.loopexit.sink.split, !dbg !12387

.loopexit.sink.split:                             ; preds = %bb.y, %.split54, %.split53, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.thread.i19
  %.sroa.0.1.ph = phi ptr [ null, %.thread.i19 ], [ @128, %bb.y ], [ %i.da, %.split54 ], [ %i.da, %.split53 ], [ %i.da, %.split ], [ %i.da, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12413
  br label %.loopexit, !dbg !12414

.loopexit:                                        ; preds = %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit24, %.loopexit.sink.split, %bb.c, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %.sroa.0.1.ph, %.loopexit.sink.split ], [ null, %bb.c ], [ null, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit24 ], !dbg !12162
  ret ptr %.sroa.0.1, !dbg !12414

_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit24.thread.thread: ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split54
    #dbg_value(ptr %i.aa, !3582, !DIExpression(), !12103)
    #dbg_value(ptr poison, !3589, !DIExpression(), !12105)
    #dbg_value(ptr poison, !3596, !DIExpression(), !12107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12415, !noalias !12276
    #dbg_value(ptr %i.da, !3599, !DIExpression(), !12111)
    #dbg_declare(ptr poison, !3603, !DIExpression(), !12112)
    #dbg_value(i64 1, !3614, !DIExpression(), !12114)
    #dbg_value(i64 1, !3621, !DIExpression(), !12116)
    #dbg_value(i64 -1, !3626, !DIExpression(), !12118)
    #dbg_value(ptr %i.da, !3619, !DIExpression(), !12114)
    #dbg_value(i64 %i.dc, !3604, !DIExpression(), !12119)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7OITKvp9Irj_4perf.exit, !dbg !12416

bb.ad:                                            ; preds = %.split53
    #dbg_value(ptr %i.aa, !3582, !DIExpression(), !12103)
    #dbg_value(ptr poison, !3589, !DIExpression(), !12105)
    #dbg_value(ptr poison, !3596, !DIExpression(), !12107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12415, !noalias !12276
    #dbg_value(ptr %i.da, !3599, !DIExpression(), !12111)
    #dbg_declare(ptr poison, !3603, !DIExpression(), !12112)
    #dbg_value(i64 1, !3614, !DIExpression(), !12114)
    #dbg_value(i64 1, !3621, !DIExpression(), !12116)
    #dbg_value(i64 -1, !3626, !DIExpression(), !12118)
    #dbg_value(ptr %i.da, !3619, !DIExpression(), !12114)
    #dbg_value(i64 %i.dc, !3604, !DIExpression(), !12119)
    #dbg_value(i64 %i.dc, !3606, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !12120)
    #dbg_value(i64 %i.dc, !3638, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !12122)
  %i.eq = icmp ult ptr %i.da, inttoptr (i64 188978561024 to ptr), !dbg !12417
    #dbg_value(i8 poison, !3742, !DIExpression(), !12124)
    #dbg_value(ptr poison, !3751, !DIExpression(), !12125)
  %i.er = and i64 %i.dc, 1095216660480, !dbg !12418
  %i.es = icmp ne i64 %i.er, 1095216660480, !dbg !12418
  call void @llvm.assume(i1 %i.eq), !dbg !12419
  call void @llvm.assume(i1 %i.es), !dbg !12419
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7OITKvp9Irj_4perf.exit, !dbg !12420

bb.ae:                                            ; preds = %.split
    #dbg_value(ptr %i.aa, !3582, !DIExpression(), !12103)
    #dbg_value(ptr poison, !3589, !DIExpression(), !12105)
    #dbg_value(ptr poison, !3596, !DIExpression(), !12107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12415, !noalias !12276
    #dbg_value(ptr %i.da, !3599, !DIExpression(), !12111)
    #dbg_declare(ptr poison, !3603, !DIExpression(), !12112)
    #dbg_value(i64 1, !3614, !DIExpression(), !12114)
    #dbg_value(i64 1, !3621, !DIExpression(), !12116)
    #dbg_value(i64 -1, !3626, !DIExpression(), !12118)
    #dbg_value(ptr %i.da, !3619, !DIExpression(), !12114)
    #dbg_value(i64 %i.dc, !3604, !DIExpression(), !12119)
    #dbg_value(ptr %i.da, !3624, !DIExpression(), !12116)
    #dbg_value(ptr %i.da, !3629, !DIExpression(), !12118)
  %i.et = getelementptr i8, ptr %i.da, i64 -1, !dbg !12421 ; 2 uses
    #dbg_value(ptr %i.et, !3609, !DIExpression(), !12126)
    #dbg_declare(ptr poison, !3754, !DIExpression(), !12128)
    #dbg_value(ptr %i.et, !3757, !DIExpression(), !12129)
    #dbg_value(ptr %i.et, !3760, !DIExpression(), !12131)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ], !dbg !12422
  store ptr %i.et, ptr %i.ab, align 8, !dbg !12423, !alias.scope !12277, !noalias !12276
  store i8 3, ptr %i.d, align 8, !dbg !12424, !alias.scope !12277, !noalias !12276
    #dbg_value(ptr %i.d, !3766, !DIExpression(), !12135)
    #dbg_value(ptr %i.ab, !3771, !DIExpression(), !12137)
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab), !dbg !12425, !noalias !12276
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7OITKvp9Irj_4perf.exit, !dbg !12426

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7OITKvp9Irj_4perf.exit: ; preds = %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit24.thread.thread, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12427, !noalias !12276
  br label %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit24, !dbg !12413

_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit24: ; preds = %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7OITKvp9Irj_4perf.exit
  %.sroa.0.13751 = phi ptr [ %.sroa.0.03683, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7OITKvp9Irj_4perf.exit ], [ %i.eh, %bb.ac ]
  %.sroa.8.149 = phi i64 [ %.sroa.8.082, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7OITKvp9Irj_4perf.exit ], [ %i.eg, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12413
    #dbg_value(ptr %.sroa.0.13751, !12144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12162)
    #dbg_value(i64 %.sroa.8.149, !12144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12162)
    #dbg_value(ptr poison, !12256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12259)
    #dbg_value(i64 %.sroa.8.149, !12256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12259)
  %i.eu = icmp eq i64 %.sroa.8.149, 0, !dbg !12428
  br i1 %i.eu, label %.loopexit, label %bb.e, !dbg !12292

bb.af:                                            ; preds = %.thread
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !12429
  unreachable, !dbg !12429
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 !dbg !12433 {
_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7OITKvp9Irj_4perf.exit:
    #dbg_value(ptr %1, !12459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12462)
    #dbg_value(ptr %2, !12459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12462)
    #dbg_value(ptr %0, !12458, !DIExpression(), !12462)
    #dbg_value(ptr poison, !12464, !DIExpression(), !12441)
    #dbg_value(ptr poison, !12478, !DIExpression(), !12445)
    #dbg_value(ptr %2, !12480, !DIExpression(), !12446)
    #dbg_value(ptr poison, !12476, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12447)
    #dbg_value(ptr %2, !12476, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12447)
    #dbg_value(ptr poison, !12476, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12447)
    #dbg_value(ptr %2, !12476, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12447)
  %i.a = tail call noundef ptr @_RINvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !12483
  ret ptr %i.a, !dbg !12484
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !12485 {
bb.a:
    #dbg_value(ptr poison, !12488, !DIExpression(), !12490)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !12491
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8 %0) unnamed_addr #0 !dbg !12492 {
bb.a:
    #dbg_value(ptr %0, !12495, !DIExpression(), !12497)
  %i.a = tail call { ptr, ptr } @_RNvXsB_NtCsB8MOEg02Qk_5quinn11recv_streamNtB5_14ReadExactErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noundef nonnull align 8 %0), !dbg !12498
  ret { ptr, ptr } %i.a, !dbg !12499
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !12500 {
bb.a:
    #dbg_value(ptr poison, !12503, !DIExpression(), !12506)
    #dbg_value(ptr poison, !12504, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12506)
    #dbg_value(ptr poison, !12504, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12506)
  ret void, !dbg !12507
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !12508 {
bb.a:
    #dbg_value(ptr poison, !12512, !DIExpression(), !12515)
    #dbg_declare(ptr poison, !12513, !DIExpression(), !12516)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @54, i64 16, i1 false), !dbg !12519
  ret void, !dbg !12520
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !12521 {
bb.a:
    #dbg_value(ptr poison, !12524, !DIExpression(), !12526)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !12527
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8 %0) unnamed_addr #7 !dbg !12528 {
bb.a:
    #dbg_value(ptr %0, !12531, !DIExpression(), !12533)
    #dbg_value(ptr %0, !5336, !DIExpression(), !12530)
  %i.a = load i64, ptr %0, align 8, !dbg !12534, !range !3778, !noundef !1755 ; 2 uses
  %i.b = icmp ne i64 %i.a, 11, !dbg !12534
  tail call void @llvm.assume(i1 %i.b), !dbg !12534
  %i.c = icmp samesign ult i64 %i.a, 10, !dbg !12534
  %..i = select i1 %i.c, ptr %0, ptr null, !dbg !12535
  %i.d = insertvalue { ptr, ptr } poison, ptr %..i, 0, !dbg !12536
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @27, 1, !dbg !12536
  ret { ptr, ptr } %i.e, !dbg !12537
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !12538 {
bb.a:
    #dbg_value(ptr poison, !12541, !DIExpression(), !12544)
    #dbg_value(ptr poison, !12542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12544)
    #dbg_value(ptr poison, !12542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12544)
  ret void, !dbg !12545
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !12546 {
bb.a:
    #dbg_value(ptr poison, !12550, !DIExpression(), !12553)
    #dbg_declare(ptr poison, !12551, !DIExpression(), !12554)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @50, i64 16, i1 false), !dbg !12557
  ret void, !dbg !12558
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !12559 {
bb.a:
    #dbg_value(ptr poison, !12562, !DIExpression(), !12564)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !12565
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !12566 {
bb.a:
    #dbg_value(ptr poison, !12569, !DIExpression(), !12572)
    #dbg_value(ptr poison, !12570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12572)
    #dbg_value(ptr poison, !12570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12572)
  ret void, !dbg !12573
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !12574 {
bb.a:
    #dbg_value(ptr poison, !12578, !DIExpression(), !12581)
    #dbg_declare(ptr poison, !12579, !DIExpression(), !12582)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @51, i64 16, i1 false), !dbg !12585
  ret void, !dbg !12586
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !12587 {
bb.a:
    #dbg_value(ptr poison, !12590, !DIExpression(), !12592)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !12593
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs7OITKvp9Irj_4perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !12594 {
bb.a:
    #dbg_value(ptr poison, !12595, !DIExpression(), !12597)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !12598
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCs7OITKvp9Irj_4perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !12599 {
bb.a:
    #dbg_value(ptr poison, !12600, !DIExpression(), !12602)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !12603
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs7OITKvp9Irj_4perf(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !12604 {
bb.a:
    #dbg_value(ptr poison, !12607, !DIExpression(), !12610)
    #dbg_value(ptr poison, !12608, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12610)
    #dbg_value(ptr poison, !12608, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12610)
  ret void, !dbg !12611
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 !dbg !12612 {
bb.a:
    #dbg_value(ptr poison, !12616, !DIExpression(), !12619)
    #dbg_declare(ptr poison, !12617, !DIExpression(), !12620)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @55, i64 16, i1 false), !dbg !12623
  ret void, !dbg !12624
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !12625 {
bb.a:
    #dbg_value(ptr poison, !12628, !DIExpression(), !12630)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !12631
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs7OITKvp9Irj_4perf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !12632 {
bb.a:
    #dbg_value(ptr poison, !12635, !DIExpression(), !12638)
    #dbg_value(ptr poison, !12636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12638)
    #dbg_value(ptr poison, !12636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12638)
  ret void, !dbg !12639
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 !dbg !12640 {
bb.a:
    #dbg_value(ptr poison, !12644, !DIExpression(), !12647)
    #dbg_declare(ptr poison, !12645, !DIExpression(), !12648)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @52, i64 16, i1 false), !dbg !12651
  ret void, !dbg !12652
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCshovLROGBtMy_11quinn_proto6config11ConfigErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 !dbg !12653 {
bb.a:
    #dbg_value(ptr %0, !12657, !DIExpression(), !12661)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !12662
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCshovLROGBtMy_11quinn_proto8endpoint12ConnectErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 !dbg !12663 {
bb.a:
    #dbg_value(ptr %0, !12667, !DIExpression(), !12671)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !12672
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCshovLROGBtMy_11quinn_proto6crypto6rustls20NoInitialCipherSuiteNtNtCskKLDkoKarTP_4core5error5Error5causeCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #2 !dbg !12673 {
bb.a:
    #dbg_value(ptr %0, !12677, !DIExpression(), !12681)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !12682
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !12683 {
bb.a:
    #dbg_value(ptr poison, !12686, !DIExpression(), !12688)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !12689
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCs7OITKvp9Irj_4perf(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !12690 {
bb.a:
    #dbg_value(ptr poison, !12693, !DIExpression(), !12696)
    #dbg_value(ptr poison, !12694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12696)
    #dbg_value(ptr poison, !12694, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12696)
  ret void, !dbg !12697
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 !dbg !12698 {
bb.a:
    #dbg_value(ptr poison, !12702, !DIExpression(), !12705)
    #dbg_declare(ptr poison, !12703, !DIExpression(), !12706)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @53, i64 16, i1 false), !dbg !12709
  ret void, !dbg !12710
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCs7OITKvp9Irj_4perf(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 !dbg !12711 {
bb.a:
    #dbg_value(ptr poison, !12714, !DIExpression(), !12716)
  ret { ptr, i64 } { ptr @110, i64 40 }, !dbg !12717
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCs7OITKvp9Irj_4perf(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 !dbg !12718 {
bb.a:
    #dbg_value(ptr poison, !12721, !DIExpression(), !12723)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !12724
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCs7OITKvp9Irj_4perf(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !12725 {
bb.a:
    #dbg_value(ptr poison, !12728, !DIExpression(), !12731)
    #dbg_value(ptr poison, !12729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12731)
    #dbg_value(ptr poison, !12729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12731)
  ret void, !dbg !12732
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 !dbg !12733 {
bb.a:
    #dbg_value(ptr poison, !12737, !DIExpression(), !12740)
    #dbg_declare(ptr poison, !12738, !DIExpression(), !12741)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @56, i64 16, i1 false), !dbg !12746
  ret void, !dbg !12747
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsbHiBx3jRrxb_6anyhow5error23object_reallocate_boxedNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17object_drop_frontNtNtCsB8MOEg02Qk_5quinn11recv_stream9ReadErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsbHiBx3jRrxb_6anyhow5error23object_reallocate_boxedNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17object_drop_frontNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsbHiBx3jRrxb_6anyhow5error23object_reallocate_boxedNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17object_drop_frontNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsbHiBx3jRrxb_6anyhow5error23object_reallocate_boxedNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17object_drop_frontNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsbHiBx3jRrxb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17context_drop_restReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsbHiBx3jRrxb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17context_drop_restReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsbHiBx3jRrxb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17context_drop_restReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsbHiBx3jRrxb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17context_drop_restReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsbHiBx3jRrxb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17context_drop_restReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsbHiBx3jRrxb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorEECs7OITKvp9Irj_4perf(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbHiBx3jRrxb_6anyhow5error17context_drop_restReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorECs7OITKvp9Irj_4perf(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs0_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11recv_stream14ReadExactErrorENtNtCskKLDkoKarTP_4core5error5Error7provideCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs0_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsB8MOEg02Qk_5quinn11send_stream10WriteErrorENtNtCskKLDkoKarTP_4core5error5Error7provideCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs0_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCseEeXhZwqjpo_16rustls_pki_types3pem5ErrorENtNtCskKLDkoKarTP_4core5error5Error7provideCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs0_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorENtNtCskKLDkoKarTP_4core5error5Error7provideCs7OITKvp9Irj_4perf(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs0_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1a_3fmt5Debug3fmtCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1a_3fmt7Display3fmtCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYINtNtCsbHiBx3jRrxb_6anyhow5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_5error5Error5causeCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1a_5error5Error7provideCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs0_NtCsbHiBx3jRrxb_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorENtNtB1a_3fmt5Debug3fmtCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0
end_hunk_1
