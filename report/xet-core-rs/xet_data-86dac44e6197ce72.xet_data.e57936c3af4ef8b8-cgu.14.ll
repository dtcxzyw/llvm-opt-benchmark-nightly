Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.14?download=true
inline.NumInlined: 1707
inline.NumDeleted: 828
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntrymjE6insertCsjHtSR7YjKD4_8xet_data:bb.a
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  store i64 %1, ptr %i.b, align 8
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntrymjE8into_mutCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmjNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs5jFM9WxmFav_14http_body_util11combinators7collectINtB2_7CollectINtNtB4_8box_body7BoxBodyNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB2M_6marker4SendNtB3j_4SyncEL_EEENtNtNtB2M_6future6future6Future4pollCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(144) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [72 x i8], align 8            ; 2 uses
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [96 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtCs5jFM9WxmFav_14http_body_util11combinators8box_bodyINtB5_7BoxBodyNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB2r_6marker4SendNtB2Y_4SyncEL_EENtCs73UZPzK6E9E_9http_body4Body10poll_frameCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !5483, !noundef !11
  %i.e = icmp eq i64 %i.d, 3
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx68, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %.sroa.0.0.copyload, label %bb.e [
    i64 -3, label %bb.c
    i64 -2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.019.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 -2, ptr %1, align 8
  %.not42 = icmp eq i64 %.sroa.019.0.copyload, -2
  br i1 %.not42, label %bb.m, label %bb.l, !prof !14

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload), "nonnull"(ptr %.sroa.3.0.copyload) ]
  store i64 -2, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.copyload, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.618.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, i64 72, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = load i64, ptr %1, align 8, !range !5484, !noundef !11
  %.not43 = icmp eq i64 %i.f, -2
  br i1 %.not43, label %bb.g, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  call void @_RNvMNtCs5jFM9WxmFav_14http_body_util9collectedINtB2_9CollectedNtNtCslc8SwK8fohf_5bytes5bytes5BytesE10push_frameCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtCs5jFM9WxmFav_14http_body_util11combinators8box_bodyINtB5_7BoxBodyNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB2r_6marker4SendNtB2Y_4SyncEL_EENtCs73UZPzK6E9E_9http_body4Body10poll_frameCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load i64, ptr %i.b, align 8, !range !5483, !noundef !11
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #18
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs73UZPzK6E9E_9http_body5frame5FrameNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(96) %i.a) #21
          to label %.thread45 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.l:                                             ; preds = %bb.c
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.521.0..sroa_idx, i64 120, i1 false)
  store i64 %.sroa.019.0.copyload, ptr %0, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #18
  unreachable

.thread45:                                        ; preds = %bb.i
  resume { ptr, i32 } %i.i

bb.n:                                             ; preds = %bb.k, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtCslc8SwK8fohf_5bytes5bytes5BytesNCNvXs_NtCs5jFM9WxmFav_14http_body_util4utilINtB2s_7BufListB1L_ENtNtNtB1P_3buf8buf_impl3Buf13has_remaining0E0INtB7_5FnMutTuB1K_EE8call_mutCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvYNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf13has_remainingCsjHtSR7YjKD4_8xet_data(ptr noundef nonnull align 8 %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRDNtNtCs6SYjS1KFWza_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !align !18, !noundef !11
  %i.d = tail call noundef zeroext i1 @_RNvXs1_NtCs6SYjS1KFWza_10serde_core2deDNtB5_8ExpectedEL_NtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCs7SkU8gPisFf_4redb5tableINtB5_5TableNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashBI_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !33, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 16, !noundef !11
  %.sroa.02.0.copyload = load i128, ptr %0, align 16
  %i.g = trunc i128 %.sroa.02.0.copyload to i1
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 16
  %.sroa.0.0 = select i1 %i.g, i64 %.sroa.53.0.copyload, i64 0
  tail call void @_RINvMsh_NtCs7SkU8gPisFf_4redb12transactionsNtB6_16WriteTransaction11close_tableNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashB1f_ECsjHtSR7YjKD4_8xet_data(ptr noundef nonnull align 16 %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %.sroa.0.0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCs7SkU8gPisFf_4redb5tableINtB5_5TableNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashNtBK_12FileShardRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !33, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 16, !noundef !11
  %.sroa.02.0.copyload = load i128, ptr %0, align 16
  %i.g = trunc i128 %.sroa.02.0.copyload to i1
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 16
  %.sroa.0.0 = select i1 %i.g, i64 %.sroa.53.0.copyload, i64 0
  tail call void @_RINvMsh_NtCs7SkU8gPisFf_4redb12transactionsNtB6_16WriteTransaction11close_tableNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashNtB1h_12FileShardRefECsjHtSR7YjKD4_8xet_data(ptr noundef nonnull align 16 %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %.sroa.0.0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedItermmINtNtNtBa_3vec9into_iter8IntoIterTmmEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %.promoted = load i32, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.promoted17 = load ptr, ptr %i.d, align 8      ; 4 uses
  switch i32 %.promoted, label %.preheader.peel [
    i32 2, label %bb.b
    i32 0, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit.thread11
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %.promoted17, %i.c
  br i1 %i.e, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit.thread11, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit.thread

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit.thread: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.promoted17, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !alias.scope !5504
  br label %.preheader.peel

.preheader.peel:                                  ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit.thread, %bb.a
  %.ph = phi ptr [ %i.f, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit.thread ], [ %.promoted17, %bb.a ] ; 4 uses
  %.sroa.6.010.in.ph = phi ptr [ %.promoted17, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit.thread ], [ %.sroa.5.0..sroa_idx, %bb.a ]
  %.sroa.6.010.peel = load i64, ptr %.sroa.6.010.in.ph, align 4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5508)
  %.not21.peel = icmp eq ptr %.ph, %i.c
  br i1 %.not21.peel, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader.peel
  %.sroa.6.4.extract.trunc.peel = trunc i64 %.sroa.6.010.peel to i32
  %i.g = getelementptr inbounds nuw i8, ptr %.ph, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !alias.scope !5509
  %i.h = load <2 x i32>, ptr %.ph, align 4, !noalias !5510
  %i.i = load i32, ptr %.ph, align 4, !noalias !5510, !noundef !11
  store <2 x i32> %i.h, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !5505
  %.not.peel = icmp eq i32 %i.i, %.sroa.6.4.extract.trunc.peel
  br i1 %.not.peel, label %.preheader, label %.loopexit28

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.j = phi ptr [ %i.k, %bb.e ], [ %i.g, %bb.c ] ; 4 uses
  %.sroa.6.010 = load i64, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5514)
  %.not21 = icmp eq ptr %i.j, %i.c
  br i1 %.not21, label %.loopexit, label %bb.e

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit.thread11: ; preds = %bb.a, %bb.b
  store i32 2, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit28, %.loopexit, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit.thread11
  %.sink = phi i32 [ 1, %.loopexit28 ], [ 1, %.loopexit ], [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data.exit.thread11 ]
  store i32 %.sink, ptr %0, align 4
  ret void

bb.e:                                             ; preds = %.preheader
  %.sroa.6.4.extract.trunc = trunc i64 %.sroa.6.010 to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !5515
  %i.l = load <2 x i32>, ptr %i.j, align 4, !noalias !5516
  %i.m = load i32, ptr %i.j, align 4, !noalias !5516, !noundef !11
  store <2 x i32> %i.l, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !5511
  %.not = icmp eq i32 %i.m, %.sroa.6.4.extract.trunc
  br i1 %.not, label %.preheader, label %.loopexit28, !llvm.loop !5503

.loopexit:                                        ; preds = %.preheader, %.preheader.peel
  %.sroa.6.010.lcssa = phi i64 [ %.sroa.6.010.peel, %.preheader.peel ], [ %.sroa.6.010, %.preheader ]
  store i32 0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.6.010.lcssa, ptr %i.n, align 4
  br label %bb.d

.loopexit28:                                      ; preds = %bb.e, %bb.c
  %.sroa.6.010.lcssa26 = phi i64 [ %.sroa.6.010.peel, %bb.c ], [ %.sroa.6.010, %bb.e ]
  store i32 1, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.6.010.lcssa26, ptr %i.o, align 4
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCs94TQx44N27d_12tracing_core5fieldReNtB5_5Value6recordCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  tail call void @_RNvXs5_NtCs94TQx44N27d_12tracing_core5fieldeNtB5_5Value6record(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsG258MDvU3F_3std4path7DisplayENtB5_5Value6recordCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !11, !nonnull !11
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Value6recordCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !11, !nonnull !11
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtB5_5Value6recordCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !11, !nonnull !11
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtB5_5Value6recordCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !11, !nonnull !11
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsG258MDvU3F_3std4path7DisplayENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7DisplayNtB6_7Display3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtB6_7Display3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtB6_7Display3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCs94TQx44N27d_12tracing_core5fieldINtB5_10DebugValueRINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEENtB5_5Value6recordCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !11, !nonnull !11
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCs94TQx44N27d_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsiAynQAjgDuT_10xet_client10cas_client13retry_wrapper12RetryWrapperENtB5_5Value6recordCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !11, !nonnull !11
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCs94TQx44N27d_12tracing_core5fieldINtB5_10DebugValueRTyyEENtB5_5Value6recordCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !11, !nonnull !11
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking8schedule16BlockingScheduleNtNtB8_4task8Schedule9yield_nowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB2l_17FileUploadSession17register_new_xorb00s0_0EEB2p_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(424), i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB2y_17FileUploadSession17register_new_xorb00s0_0EEB2C_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(424), i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB2j_21SessionShardInterface34upload_and_register_session_shards00EEB2p_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(448), i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB2w_21SessionShardInterface34upload_and_register_session_shards00EEB2C_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(448), i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB2m_17SingleFileCleaner22deduper_process_chunks00EEB2q_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(960), i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB2z_17SingleFileCleaner22deduper_process_chunks00EEB2D_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(960), i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvXs_NtNtCsjHtSR7YjKD4_8xet_data10processing23deduplication_interfaceNtB2l_24UploadSessionDataManagerNtNtNtB2p_13deduplication9interface26DeduplicationDataInterface27register_global_dedup_query00EEB2p_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(464), i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvXs_NtNtCsjHtSR7YjKD4_8xet_data10processing23deduplication_interfaceNtB2y_24UploadSessionDataManagerNtNtNtB2C_13deduplication9interface26DeduplicationDataInterface27register_global_dedup_query00EEB2C_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(464), i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB3q_17FileUploadSession17register_new_xorb00s0_0EEEEB3u_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB3D_17FileUploadSession17register_new_xorb00s0_0EEEEB3H_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB3o_21SessionShardInterface34upload_and_register_session_shards00EEEEB3u_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB3B_21SessionShardInterface34upload_and_register_session_shards00EEEEB3H_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3r_17SingleFileCleaner22deduper_process_chunks00EEEEB3v_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3E_17SingleFileCleaner22deduper_process_chunks00EEEEB3I_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvXs_NtNtCsjHtSR7YjKD4_8xet_data10processing23deduplication_interfaceNtB3q_24UploadSessionDataManagerNtNtNtB3u_13deduplication9interface26DeduplicationDataInterface27register_global_dedup_query00EEEEB3u_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvXs_NtNtCsjHtSR7YjKD4_8xet_data10processing23deduplication_interfaceNtB3D_24UploadSessionDataManagerNtNtNtB3H_13deduplication9interface26DeduplicationDataInterface27register_global_dedup_query00EEEEB3H_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockINtB2A_10RwTaskLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB3O_5error9CoreErrorE6updateNCNCNCNvMs0_B3K_NtB3K_16ShardFileManager15register_shards0s0_00NCB5O_s0_0E00EEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockINtB2N_10RwTaskLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB41_5error9CoreErrorE6updateNCNCNCNvMs0_B3X_NtB3X_16ShardFileManager15register_shards0s0_00NCB61_s0_0E00EEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils30run_constrained_with_semaphoreINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNCNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing11data_client16hash_files_async0000ENtNtB4Q_8xet_file11XetFileInfoNtNtB4S_5error9DataErrorINtNtNtNtB1q_4iter8adapters3map3MapINtNtNtB1W_3vec9into_iter8IntoIterNtNtB1W_6string6StringENCB4I_0EE00EEEB4S_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils30run_constrained_with_semaphoreINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNCNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing11data_client16hash_files_async0000ENtNtB53_8xet_file11XetFileInfoNtNtB55_5error9DataErrorINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB29_3vec9into_iter8IntoIterNtNtB29_6string6StringENCB4V_0EE00EEEB55_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!5294 = distinct !{!5294, !5293, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data: argument 0"}
!5295 = distinct !{!5295, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data"}
!5296 = distinct !{!5296, !5295, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5297 = distinct !{!5297, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data"}
!5298 = distinct !{!5298, !5297, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data: argument 0"}
!5299 = distinct !{!5299, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5300 = distinct !{!5300, !5299, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5301 = !{!5280}
!5302 = !{!5282}
!5303 = !{!5282, !5280}
!5304 = !{!5284}
!5305 = !{!5286}
!5306 = !{!5288}
!5307 = !{!5288, !5286}
!5308 = !{!5292, !5290, !5288, !5286}
!5309 = !{!5294}
!5310 = !{!5296}
!5311 = !{!5296, !5294}
!5312 = !{!5300, !5298, !5296, !5294}
!5313 = distinct !{!5313, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsjHtSR7YjKD4_8xet_data"}
!5314 = distinct !{!5314, !5313, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5315 = distinct !{!5315, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5316 = distinct !{!5316, !5315, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5317 = distinct !{!5317, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECsjHtSR7YjKD4_8xet_data"}
!5318 = distinct !{!5318, !5317, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5319 = distinct !{!5319, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data"}
!5320 = distinct !{!5320, !5319, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data: argument 0"}
!5321 = distinct !{!5321, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data"}
!5322 = distinct !{!5322, !5321, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5323 = distinct !{!5323, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data"}
!5324 = distinct !{!5324, !5323, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data: argument 0"}
!5325 = distinct !{!5325, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5326 = distinct !{!5326, !5325, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5327 = distinct !{!5327, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data"}
!5328 = distinct !{!5328, !5327, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data: argument 0"}
!5329 = distinct !{!5329, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data"}
!5330 = distinct !{!5330, !5329, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5331 = distinct !{!5331, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data"}
!5332 = distinct !{!5332, !5331, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data: argument 0"}
!5333 = distinct !{!5333, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5334 = distinct !{!5334, !5333, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5335 = !{!5314}
!5336 = !{!5316}
!5337 = !{!5316, !5314}
!5338 = !{!5318}
!5339 = !{!5320}
!5340 = !{!5322}
!5341 = !{!5322, !5320}
!5342 = !{!5326, !5324, !5322, !5320}
!5343 = !{!5328}
!5344 = !{!5330}
!5345 = !{!5330, !5328}
!5346 = !{!5334, !5332, !5330, !5328}
!5347 = distinct !{!5347, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleEECsjHtSR7YjKD4_8xet_data"}
!5348 = distinct !{!5348, !5347, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5349 = distinct !{!5349, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5350 = distinct !{!5350, !5349, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5351 = distinct !{!5351, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data"}
!5352 = distinct !{!5352, !5351, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data: argument 0"}
!5353 = distinct !{!5353, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data"}
!5354 = distinct !{!5354, !5353, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5355 = distinct !{!5355, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data"}
!5356 = distinct !{!5356, !5355, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data: argument 0"}
!5357 = distinct !{!5357, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5358 = distinct !{!5358, !5357, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5359 = distinct !{!5359, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data"}
!5360 = distinct !{!5360, !5359, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data: argument 0"}
!5361 = distinct !{!5361, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data"}
!5362 = distinct !{!5362, !5361, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5363 = distinct !{!5363, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data"}
!5364 = distinct !{!5364, !5363, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data: argument 0"}
!5365 = distinct !{!5365, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5366 = distinct !{!5366, !5365, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5367 = !{!5348}
!5368 = !{!5350}
!5369 = !{!5350, !5348}
!5370 = !{!5352}
!5371 = !{!5354}
!5372 = !{!5354, !5352}
!5373 = !{!5358, !5356, !5354, !5352}
!5374 = !{!5360}
!5375 = !{!5362}
!5376 = !{!5362, !5360}
!5377 = !{!5366, !5364, !5362, !5360}
!5378 = distinct !{!5378, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsjHtSR7YjKD4_8xet_data"}
!5379 = distinct !{!5379, !5378, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5380 = distinct !{!5380, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5381 = distinct !{!5381, !5380, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5382 = distinct !{!5382, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data"}
!5383 = distinct !{!5383, !5382, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data: argument 0"}
!5384 = distinct !{!5384, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data"}
!5385 = distinct !{!5385, !5384, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5386 = distinct !{!5386, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data"}
!5387 = distinct !{!5387, !5386, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data: argument 0"}
!5388 = distinct !{!5388, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5389 = distinct !{!5389, !5388, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5390 = distinct !{!5390, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data"}
!5391 = distinct !{!5391, !5390, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime4task24TaskHarnessScheduleHooksECsjHtSR7YjKD4_8xet_data: argument 0"}
!5392 = distinct !{!5392, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data"}
!5393 = distinct !{!5393, !5392, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3e_4SyncEL_EEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5394 = distinct !{!5394, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data"}
!5395 = distinct !{!5395, !5394, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2S_4SyncEL_EECsjHtSR7YjKD4_8xet_data: argument 0"}
!5396 = distinct !{!5396, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5397 = distinct !{!5397, !5396, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_ENtNtBP_4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5398 = !{!5379}
!5399 = !{!5381}
!5400 = !{!5381, !5379}
!5401 = !{!5383}
!5402 = !{!5385}
!5403 = !{!5385, !5383}
!5404 = !{!5389, !5387, !5385, !5383}
!5405 = !{!5391}
!5406 = !{!5393}
!5407 = !{!5393, !5391}
!5408 = !{!5397, !5395, !5393, !5391}
!5409 = distinct !{!5409, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjHtSR7YjKD4_8xet_data"}
!5410 = distinct !{!5410, !5409, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjHtSR7YjKD4_8xet_data: argument 0"}
!5411 = distinct !{!5411, !5409, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjHtSR7YjKD4_8xet_data: argument 1"}
!5412 = distinct !{!5412, i1 false, !"LVerDomain"}
!5413 = distinct !{!5413, !5412}
!5414 = distinct !{!5414, !5412}
!5415 = distinct !{!5415, !5425, !5426}
!5416 = distinct !{!5416, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjHtSR7YjKD4_8xet_data"}
!5417 = distinct !{!5417, !5416, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjHtSR7YjKD4_8xet_data: argument 0:It1"}
!5418 = distinct !{!5418, !5416, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsjHtSR7YjKD4_8xet_data: argument 1:It1"}
!5419 = distinct !{!5419, !5425}
!5420 = !{!5410}
!5421 = !{!5411}
!5422 = !{!5410, !5413}
!5423 = !{!5414}
!5424 = !{!5411, !5414}
!5425 = !{!"llvm.loop.isvectorized", i32 1}
!5426 = !{!"llvm.loop.unroll.runtime.disable"}
!5427 = !{!5417}
!5428 = !{!5418}
!5429 = distinct !{!5429, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsjHtSR7YjKD4_8xet_data"}
!5430 = distinct !{!5430, !5429, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5431 = distinct !{!5431, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5432 = distinct !{!5432, !5431, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5433 = distinct !{!5433, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEEECsjHtSR7YjKD4_8xet_data"}
!5434 = distinct !{!5434, !5433, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5435 = distinct !{!5435, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5436 = distinct !{!5436, !5435, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5437 = distinct !{!5437, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEEECsjHtSR7YjKD4_8xet_data"}
!5438 = distinct !{!5438, !5437, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5439 = distinct !{!5439, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5440 = distinct !{!5440, !5439, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5441 = !{!5432, !5430}
!5442 = !{!5434}
!5443 = !{!5436}
!5444 = !{!5436, !5434}
!5445 = !{!5438}
!5446 = !{!5440}
!5447 = !{!5440, !5438}
!5448 = distinct !{!5448, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsjHtSR7YjKD4_8xet_data"}
!5449 = distinct !{!5449, !5448, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5450 = distinct !{!5450, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5451 = distinct !{!5451, !5450, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5452 = distinct !{!5452, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEEECsjHtSR7YjKD4_8xet_data"}
!5453 = distinct !{!5453, !5452, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5454 = distinct !{!5454, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5455 = distinct !{!5455, !5454, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5456 = distinct !{!5456, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEEECsjHtSR7YjKD4_8xet_data"}
!5457 = distinct !{!5457, !5456, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5458 = distinct !{!5458, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5459 = distinct !{!5459, !5458, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5460 = !{!5451, !5449}
!5461 = !{!5453}
!5462 = !{!5455}
!5463 = !{!5455, !5453}
!5464 = !{!5457}
!5465 = !{!5459}
!5466 = !{!5459, !5457}
!5467 = distinct !{!5467, i1 true, !"_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntrymjE12insert_entryCsjHtSR7YjKD4_8xet_data"}
!5468 = distinct !{!5468, !5467, !"_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntrymjE12insert_entryCsjHtSR7YjKD4_8xet_data: argument 0"}
!5469 = distinct !{!5469, !5467, !"_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntrymjE12insert_entryCsjHtSR7YjKD4_8xet_data: argument 1"}
!5470 = !{!5468}
!5471 = !{!5469}
!5472 = !{!5468, !5469}
!5473 = distinct !{!5473, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data"}
!5474 = distinct !{!5474, !5473, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5475 = distinct !{!5475, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5476 = distinct !{!5476, !5475, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5477 = !{!5476, !5474}
!5478 = distinct !{!5478, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data"}
!5479 = distinct !{!5479, !5478, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data: argument 0"}
!5480 = distinct !{!5480, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!5481 = distinct !{!5481, !5480, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!5482 = !{!5481, !5479}
!5483 = !{i64 -3, i64 4}
!5484 = !{i64 -2, i64 3}
!5485 = distinct !{!5485, i1 true, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data"}
!5486 = distinct !{!5486, !5485, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data: argument 1"}
!5487 = distinct !{!5487, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_TmmEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECsjHtSR7YjKD4_8xet_data"}
!5488 = distinct !{!5488, !5487, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_TmmEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECsjHtSR7YjKD4_8xet_data: argument 0:Peel0"}
!5489 = distinct !{!5489, !5487, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_TmmEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECsjHtSR7YjKD4_8xet_data: argument 1:Peel0"}
!5490 = distinct !{!5490, i1 true, !"_RNCNvMs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmmEEE4peek0CsjHtSR7YjKD4_8xet_data"}
!5491 = distinct !{!5491, !5490, !"_RNCNvMs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmmEEE4peek0CsjHtSR7YjKD4_8xet_data: argument 1:Peel0"}
!5492 = distinct !{!5492, i1 true, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data"}
!5493 = distinct !{!5493, !5492, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data: argument 1:Peel0"}
!5494 = distinct !{!5494, i1 true, !"_RNCNvMs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmmEEE4peek0CsjHtSR7YjKD4_8xet_data"}
!5495 = distinct !{!5495, !5494, !"_RNCNvMs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmmEEE4peek0CsjHtSR7YjKD4_8xet_data: argument 0"}
!5496 = distinct !{!5496, i1 true, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data"}
!5497 = distinct !{!5497, !5496, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data: argument 0"}
!5498 = distinct !{!5498, i1 true, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_TmmEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECsjHtSR7YjKD4_8xet_data"}
!5499 = distinct !{!5499, !5498, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_TmmEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECsjHtSR7YjKD4_8xet_data: argument 0"}
!5500 = distinct !{!5500, !5498, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_TmmEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECsjHtSR7YjKD4_8xet_data: argument 1"}
!5501 = distinct !{!5501, !5494, !"_RNCNvMs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmmEEE4peek0CsjHtSR7YjKD4_8xet_data: argument 1"}
!5502 = distinct !{!5502, !5496, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data: argument 1"}
!5503 = distinct !{!5503, !5517}
!5504 = !{!5486}
!5505 = !{!5488}
!5506 = !{!5489}
!5507 = !{!5491}
!5508 = !{!5493}
!5509 = !{!5493, !5491, !5489}
!5510 = !{!5497, !5493, !5495, !5491, !5488, !5489}
!5511 = !{!5499}
!5512 = !{!5500}
!5513 = !{!5501}
!5514 = !{!5502}
!5515 = !{!5502, !5501, !5500}
!5516 = !{!5497, !5502, !5495, !5501, !5499, !5500}
!5517 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
