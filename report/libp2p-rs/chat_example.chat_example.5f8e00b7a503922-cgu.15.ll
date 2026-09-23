Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/chat_example.chat_example.5f8e00b7a503922-cgu.15?download=true
inline.NumInlined: 1111
inline.NumDeleted: 532
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRtNtB6_5Debug3fmtCsvMXERwWlfq_12chat_example:bb.a
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXso_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt.exit

_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRuNtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @464, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRxNtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !2412, !noalias !2413, !noundef !9 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsD_NtNtCskKLDkoKarTP_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsR_NtNtCskKLDkoKarTP_4core3fmt3numxNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsR_NtNtCskKLDkoKarTP_4core3fmt3numxNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsF_NtNtCskKLDkoKarTP_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsR_NtNtCskKLDkoKarTP_4core3fmt3numxNtB7_5Debug3fmt.exit

_RNvXsR_NtNtCskKLDkoKarTP_4core3fmt3numxNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !2417, !noalias !2418, !noundef !9 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt.exit

_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtNtB8_3num7nonzero7NonZerohENtB6_7Display3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %.val = load i8, ptr %i.b, align 1, !range !2421, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2422
  store i8 %.val, ptr %i.a, align 1, !noalias !2422
  %i.c = call noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2422
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtNtB8_3num7nonzero7NonZeromENtB6_7Display3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !39, !noundef !9
  %.val = load i32, ptr %i.b, align 4, !range !40, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2425
  store i32 %.val, ptr %i.a, align 4, !noalias !2425
  %i.c = call noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2425
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB6_7Display3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9
  %i.b = tail call noundef zeroext i1 @_RNvXs0_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtB6_7Display3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionNtB4_12ConnectionIdNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRQNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB6_7Display3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9
  %.val = load ptr, ptr %i.a, align 8, !nonnull !9, !align !11, !noundef !9
  %i.b = tail call noundef zeroext i1 @_RNvXs0_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRRNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB6_7Display3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2429, !noalias !2430, !nonnull !9, !align !11, !noundef !9
  %i.c = tail call noundef zeroext i1 @_RNvXs0_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !2429
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRReNtB6_7Display3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2434, !noalias !2435, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2434, !noalias !2435, !noundef !9
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !2434
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRdNtB6_7Display3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !9
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRjNtB6_7Display3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9
  %i.b = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1j_NtCskKLDkoKarTP_4core3fmtQjNtB6_7Display3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !11, !noundef !9
  %i.b = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCs1pSuea8KFR7_16libp2p_gossipsub8protocolNtB5_14ProtocolConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade14InboundUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE15upgrade_inboundCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [296 x i8], align 8               ; 4 uses
  %i.c = alloca [304 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i8, ptr %i.e, align 8, !range !41, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 %i.f, ptr %i.i, align 8
  %3 = load <3 x i64>, ptr %i.d, align 8
  %4 = shufflevector <3 x i64> %3, <3 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  store <4 x i64> %4, ptr %i.h, align 8
  invoke void @_RNvMs0_NtCsjYje7j88m19_18asynchronous_codec6framedINtB5_6FramedNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14GossipsubCodecE3newCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.u, %bb.g ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  %i.k = load i64, ptr %2, align 8, !range !14, !alias.scope !2461, !noundef !9
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit, label %bb.c

bb.c:                                             ; preds = %.body
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2464, !nonnull !9, !noundef !9
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !2464
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit unwind label %bb.o

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i8, ptr %i.q, align 8, !range !43, !noundef !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.c, ptr noundef nonnull align 8 dereferenceable(296) %i.b, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  store i8 %i.r, ptr %.sroa.45.0..sroa_idx, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !2465
  %i.s = tail call noundef align 8 dereferenceable_or_null(304) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 304, 825) 304, i64 noundef 8) #39, !noalias !2465 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.i, !prof !16

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 304) #37
          to label %.noexc9 unwind label %bb.g

.noexc9:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultTINtNtCsjYje7j88m19_18asynchronous_codec6framed6FramedNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14GossipsubCodecENtNtB3v_5types8PeerKindEzEEECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.c) #38
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.s, ptr noundef nonnull align 8 dereferenceable(304) %i.c, i64 304, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  %i.w = load i64, ptr %2, align 8, !range !14, !alias.scope !2469, !noundef !9
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2472, !nonnull !9, !noundef !9
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !2472
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11 unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit: ; preds = %bb.c, %.body, %bb.d, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %eh.lpad-body, %bb.d ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdEECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #38
          to label %common.resume unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11: ; preds = %bb.j, %bb.i, %bb.k
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdEECsvMXERwWlfq_12chat_example.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.m ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdEECsvMXERwWlfq_12chat_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.af = insertvalue { ptr, ptr } poison, ptr %i.s, 0
  %i.ag = insertvalue { ptr, ptr } %i.af, ptr @285, 1
  ret { ptr, ptr } %i.ag

bb.o:                                             ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs3LwfirTY3Ij_20netlink_packet_route4link15link_layer_typeNtB5_13LinkLayerTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !range !2473, !noundef !9
  switch i16 %i.a, label %bb.b [
    i16 0, label %bb.bp
    i16 1, label %bb.c
    i16 2, label %bb.d
    i16 3, label %bb.e
    i16 4, label %bb.f
    i16 5, label %bb.g
    i16 6, label %bb.h
    i16 7, label %bb.i
    i16 8, label %bb.j
    i16 15, label %bb.k
    i16 19, label %bb.l
    i16 23, label %bb.m
    i16 24, label %bb.n
    i16 27, label %bb.o
    i16 32, label %bb.p
    i16 256, label %bb.q
    i16 257, label %bb.r
    i16 258, label %bb.s
    i16 259, label %bb.t
    i16 260, label %bb.u
    i16 264, label %bb.v
    i16 270, label %bb.w
    i16 271, label %bb.x
    i16 272, label %bb.y
    i16 280, label %bb.z
    i16 512, label %bb.aa
    i16 513, label %bb.ab
    i16 516, label %bb.ac
    i16 517, label %bb.ad
    i16 518, label %bb.ae
    i16 519, label %bb.af
    i16 768, label %bb.ag
    i16 769, label %bb.ah
    i16 770, label %bb.ai
    i16 771, label %bb.aj
    i16 772, label %bb.ak
    i16 773, label %bb.al
    i16 774, label %bb.am
    i16 775, label %bb.an
    i16 776, label %bb.ao
    i16 777, label %bb.ap
    i16 778, label %bb.aq
    i16 779, label %bb.ar
    i16 780, label %bb.as
    i16 781, label %bb.at
    i16 782, label %bb.au
    i16 783, label %bb.av
    i16 784, label %bb.aw
    i16 785, label %bb.ax
    i16 786, label %bb.ay
    i16 787, label %bb.az
    i16 800, label %bb.ba
    i16 801, label %bb.bb
    i16 802, label %bb.bc
    i16 803, label %bb.bd
    i16 804, label %bb.be
    i16 805, label %bb.bf
    i16 820, label %bb.bg
    i16 821, label %bb.bh
    i16 822, label %bb.bi
    i16 823, label %bb.bj
    i16 824, label %bb.bk
    i16 825, label %bb.bl
    i16 826, label %bb.bm
    i16 -1, label %bb.bn
end_hunk_0
begin_hunk_1_@_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsY_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsK_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core3fmt3numoNtB4_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsM_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2640, !noundef !9 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2640, !nonnull !9, !noundef !9
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
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2640, !nonnull !9, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !2640
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !2646
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2647, !noalias !2646, !noundef !9 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2647, !noalias !2646, !nonnull !9, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !2647, !noalias !2646
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !2647, !noalias !2646
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14ProtocolConfigNtB4_19OutboundUpgradeSend16upgrade_outboundCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [296 x i8], align 8               ; 4 uses
  %i.c = alloca [304 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2676
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i8, ptr %i.e, align 8, !range !41, !alias.scope !2674, !noalias !2677, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !2677
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 %i.f, ptr %i.i, align 8, !noalias !2676
  %3 = load <3 x i64>, ptr %i.d, align 8, !alias.scope !2674, !noalias !2677
  %4 = shufflevector <3 x i64> %3, <3 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  store <4 x i64> %4, ptr %i.h, align 8, !noalias !2676
  invoke void @_RNvMs0_NtCsjYje7j88m19_18asynchronous_codec6framedINtB5_6FramedNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14GossipsubCodecE3newCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.a)
          to label %bb.e unwind label %bb.b, !noalias !2678

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.u, %bb.g ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2679)
  call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  %i.k = load i64, ptr %2, align 8, !range !14, !alias.scope !2682, !noalias !2683, !noundef !9
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit.i, label %bb.c

bb.c:                                             ; preds = %.body.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2686, !noalias !2683, !nonnull !9, !noundef !9
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !2687
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit.i unwind label %bb.o, !noalias !2683

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2676
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i8, ptr %i.q, align 8, !range !43, !alias.scope !2675, !noalias !2683, !noundef !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.c, ptr noundef nonnull align 8 dereferenceable(296) %i.b, i64 296, i1 false), !noalias !2676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2676
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  store i8 %i.r, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !2676
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !2688
  %i.s = tail call noundef align 8 dereferenceable_or_null(304) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 304, 825) 304, i64 noundef 8) #39, !noalias !2688 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.i, !prof !16

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 304) #37
          to label %.noexc9.i unwind label %bb.g, !noalias !2676

.noexc9.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultTINtNtCsjYje7j88m19_18asynchronous_codec6framed6FramedNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14GossipsubCodecENtNtB3v_5types8PeerKindEzEEECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.c) #38
          to label %.body.i unwind label %bb.h, !noalias !2676

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !2676
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.s, ptr noundef nonnull align 8 dereferenceable(304) %i.c, i64 304, i1 false), !noalias !2676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2676
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  %i.w = load i64, ptr %2, align 8, !range !14, !alias.scope !2692, !noalias !2683, !noundef !9
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2695, !noalias !2683, !nonnull !9, !noundef !9
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !2696
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11.i unwind label %bb.l, !noalias !2683

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit.i: ; preds = %bb.l, %bb.d, %bb.c, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %eh.lpad-body.i, %bb.d ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdEECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) #38
          to label %common.resume.i unwind label %bb.o, !noalias !2697

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11.i: ; preds = %bb.k, %bb.j, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %_RNvXs3_NtCs1pSuea8KFR7_16libp2p_gossipsub8protocolNtB5_14ProtocolConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade15OutboundUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE16upgrade_outboundCsvMXERwWlfq_12chat_example.exit unwind label %bb.m, !noalias !2697

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %common.resume.i unwind label %bb.n, !noalias !2697

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !2697
  unreachable

common.resume.i:                                  ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ad, %bb.m ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit.i, %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !2697
  unreachable

_RNvXs3_NtCs1pSuea8KFR7_16libp2p_gossipsub8protocolNtB5_14ProtocolConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade15OutboundUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE16upgrade_outboundCsvMXERwWlfq_12chat_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdECsvMXERwWlfq_12chat_example.exit11.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0), !noalias !2697
  %i.ag = insertvalue { ptr, ptr } poison, ptr %i.s, 0
  %i.ah = insertvalue { ptr, ptr } %i.ag, ptr @285, 1
  ret { ptr, ptr } %i.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB6_12framed_write12FramedWrite2INtNtB6_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEENtB4_7Decoder10decode_eofCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(1104) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEENtB2_7Decoder10decode_eofCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1064) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB6_12framed_write12FramedWrite2INtNtB6_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEENtB4_7Decoder6decodeCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(1104) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEENtB2_7Decoder6decodeCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1064) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB6_12framed_write12FramedWrite2INtNtB6_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEENtB4_7Decoder10decode_eofCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(384) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEENtB2_7Decoder10decode_eofCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB6_12framed_write12FramedWrite2INtNtB6_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEENtB4_7Decoder6decodeCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(384) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEENtB2_7Decoder6decodeCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_flagNtB4_9LinkFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @414, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXsa_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_18SubstreamRequestedINtCscu2bAJ62uie_6either6EitheruuEIB1c_INtNtB7_7upgrade11SendWrapperNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14ProtocolConfigEIB1P_NtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %.sroa.02 = alloca [104 x i8], align 8          ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 12 uses
  %i.d = alloca [104 x i8], align 8               ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %.sroa.736.0.copyload = load ptr, ptr %.sroa.736.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx37, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 8 ; 4 uses
  store i64 -2, ptr %0, align 8
  %i.e = icmp eq i64 %.sroa.0.0.copyload, -2
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsvMXERwWlfq_12chat_example.exit30, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.0..sroa_idx35, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.0..sroa_idx34, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.736.0.copyload, ptr %i.c, align 8
  %i.f = invoke noundef zeroext i1 @_RNvXs_NtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB4_5DelayNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.as
end_hunk_1
