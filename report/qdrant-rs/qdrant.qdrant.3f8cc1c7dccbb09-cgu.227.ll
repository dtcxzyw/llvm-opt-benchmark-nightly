Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.227?download=true
inline.NumInlined: 683
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !172, !noundef !10
  %i.t = icmp eq i8 %i.q, %i.s
  br label %_RNvXsy_NtNtCsliWsDkOzYJy_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXsy_NtNtCsliWsDkOzYJy_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.shrunk.i.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !align !31, !noundef !10 ; 4 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !10, !align !31, !noundef !10 ; 4 uses
  %i.a = load ptr, ptr %.val, align 8, !noundef !10
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  %i.c = load ptr, ptr %.val1, align 8, !noundef !10
  %i.d = icmp eq ptr %i.c, null                   ; 3 uses
  %not..i.i.i = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !10
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !10
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.n, ptr %i.l, i64 %i.g)
  %i.o = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !172, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !172, !noundef !10
  %i.t = icmp eq i8 %i.q, %i.s
  br label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.shrunk.i.i.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXNtNtNtCsjZG7hsAZr3B_5tokio2io4util5writeINtB2_5WriteINtNtNtCsPYQCUnoTxQ_10collection6common14timeout_writer13TimeoutWriterNtNtB4_3mem12DuplexStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = load ptr, ptr %0, align 8, !nonnull !10, !align !31, !noundef !10
  %i.f = tail call { i64, ptr } @_RNvXs_NtNtCsPYQCUnoTxQ_10collection6common14timeout_writerINtB4_13TimeoutWriterNtNtNtNtCsjZG7hsAZr3B_5tokio2io4util3mem12DuplexStreamENtNtB1l_11async_write10AsyncWrite10poll_writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_apiNtB2_16recommend_pointsNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [168 x i8], align 8               ; 4 uses
  %i.e = alloca [168 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCsgoPClq0H8JF_9actix_web8resourceNtB3_8Resource3newReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 47)
  call void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 2, i64 24, i1 false)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource5guardNtNtB7_5guard11MethodGuardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource2toNvNvXNtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_apiNtB10_16recommend_pointsNtNtB7_7service18HttpServiceFactory8register16recommend_pointsTINtNtB7_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB12_14CollectionPathEINtNtB4q_4json4JsonNtNtNtCsPYQCUnoTxQ_10collection10operations5types16RecommendRequestEINtNtB4q_5query5QueryNtNtB12_11read_params10ReadParamsEIB3f_NtNtB16_8settings13ServiceConfigENtNtB14_4auth9ActixAuthNtNtB12_13routing_token17ActixRoutingTokenEEB16_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8ResourceNtNtB7_7service18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_apiNtB5_22recommend_point_groupsNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [168 x i8], align 8               ; 4 uses
  %i.e = alloca [168 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCsgoPClq0H8JF_9actix_web8resourceNtB3_8Resource3newReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 54)
  call void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 2, i64 24, i1 false)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource5guardNtNtB7_5guard11MethodGuardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource2toNvNvXs0_NtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_apiNtB13_22recommend_point_groupsNtNtB7_7service18HttpServiceFactory8register22recommend_point_groupsTINtNtB7_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB15_14CollectionPathEINtNtB4F_4json4JsonNtNtNtCsPYQCUnoTxQ_10collection10operations5types22RecommendGroupsRequestEINtNtB4F_5query5QueryNtNtB15_11read_params10ReadParamsEIB3u_NtNtB19_8settings13ServiceConfigENtNtB17_4auth9ActixAuthNtNtB15_13routing_token17ActixRoutingTokenEEB19_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8ResourceNtNtB7_7service18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs1_NtNtCs3WWrd2JY12C_5hyper5proto2h2INtB5_7SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtBU_3buf8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !61, !noundef !10
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef i64 @_RNvYNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEENtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !31, !noundef !10
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs577yCKf7gy3_4http6header5valueNtB5_11HeaderValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs577yCKf7gy3_4http6header5value18InvalidHeaderValueNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = tail call noundef zeroext i1 @_RNvXs9_NtNtCs577yCKf7gy3_4http6header5valueNtB5_18InvalidHeaderValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !31, !noundef !10
  %i.b = tail call noundef zeroext i1 @_RNvXs4_NtNtCsliWsDkOzYJy_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !31, !noundef !10
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCsliWsDkOzYJy_4http6header5valueNtB5_11HeaderValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs6EFb6a2W5dE_10actix_http6header9into_pairTReNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueENtB5_17TryIntoHeaderPair13try_into_pairCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 5 uses
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.745.0.copyload = load ptr, ptr %.sroa.745.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtNtCsliWsDkOzYJy_4http6header4nameNtB4_10HeaderName10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !39, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 2, ptr %i.h, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !2941, !nonnull !10, !noundef !10
  tail call void %i.j(ptr noundef %.sroa.11.0.copyload, ptr noundef %.sroa.745.0.copyload, i64 noundef %.sroa.9.0.copyload), !noalias !2941, !inline_history !2948
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit41

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.088.0.copyload = load ptr, ptr %i.k, align 8 ; 3 uses
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.489.0.copyload = load ptr, ptr %.sroa.489.0..sroa_idx, align 8 ; 2 uses
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.590.0.copyload = load i64, ptr %.sroa.590.0..sroa_idx, align 8 ; 2 uses
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.691.0.copyload = load ptr, ptr %.sroa.691.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %2 = and i64 %.sroa.13.0.copyload, 255
  %i.l = icmp eq i64 %2, 2
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = ptrtoint ptr %.sroa.0.0.copyload to i64
  store ptr %.sroa.088.0.copyload, ptr %0, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.489.0.copyload, ptr %.sroa.024.sroa.4.0..sroa_idx, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.590.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  %.sroa.024.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.691.0.copyload, ptr %.sroa.024.sroa.6.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.sroa.4.0..sroa.526.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.745.0.copyload, ptr %.sroa.526.sroa.4.0..sroa.526.0..sroa_idx.sroa_idx, align 8
  %.sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.9.0.copyload, ptr %.sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx, align 8
  %.sroa.526.sroa.6.0..sroa.526.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.11.0.copyload, ptr %.sroa.526.sroa.6.0..sroa.526.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.13.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit41

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit41: ; preds = %bb.g, %bb.c, %bb.f, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 2, ptr %i.n, align 8
  %i.o = icmp eq ptr %.sroa.088.0.copyload, null
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2949, !nonnull !10, !noundef !10
  tail call void %i.q(ptr noundef %.sroa.691.0.copyload, ptr noundef %.sroa.489.0.copyload, i64 noundef %.sroa.590.0.copyload), !inline_history !2962
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit41

bb.h:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread:                                          ; preds = %bb.i
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2963, !nonnull !10, !noundef !10
  invoke void %i.u(ptr noundef %.sroa.11.0.copyload, ptr noundef %.sroa.745.0.copyload, i64 noundef %.sroa.9.0.copyload)
          to label %.thread unwind label %bb.h, !inline_history !2970
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !2971
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !2971
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %..i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !2971, !noundef !10
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !10
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.aj, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8, !alias.scope !2974
  %.promoted22 = load i64, ptr %i.al, align 8, !alias.scope !2974
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !10
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !2977, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !2977, !noundef !10 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !2977, !noundef !10
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !2977
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !2977
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !2977
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !2974
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !2974
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bl, align 1, !alias.scope !2980
  %i.bm = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.bq, align 1, !alias.scope !2980
  %i.br = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11
  %i.bv = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
end_hunk_0
