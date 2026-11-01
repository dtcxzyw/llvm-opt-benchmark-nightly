Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_metrics-417fafe6e713d5c1.libp2p_metrics.b9d19f8435db4bd8-cgu.8?download=true
inline.NumInlined: 270
inline.NumDeleted: 119
begin_hunk_0_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTdyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTdyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !7 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfX6MfzXxCho_14libp2p_metrics.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #28
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfX6MfzXxCho_14libp2p_metrics.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfX6MfzXxCho_14libp2p_metrics.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !7 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfX6MfzXxCho_14libp2p_metrics.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfX6MfzXxCho_14libp2p_metrics.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfX6MfzXxCho_14libp2p_metrics.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !10, !noundef !7
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfX6MfzXxCho_14libp2p_metrics4ping13FailureLabelsNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !597
  store ptr %i.b, ptr %i.a, align 8, !noalias !597
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !597
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfX6MfzXxCho_14libp2p_metrics4ping7FailureNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %.val = load i8, ptr %i.a, align 1, !range !14, !noundef !7 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfX6MfzXxCho_14libp2p_metrics4ping7FailureNtB6_5Debug3fmtBA_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfX6MfzXxCho_14libp2p_metrics4ping7FailureNtB6_5Debug3fmtBA_.50, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterNtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !10, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !601
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !601
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !601
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram20NativeHistogramStateNtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 27 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !7, !align !10, !noundef !7 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !605
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 137
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !605
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.n, ptr %i.a, align 8, !noalias !605
  store ptr %i.d, ptr %i.b, align 8, !noalias !605
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @44, ptr %i.o, align 8, !noalias !605
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.p, align 8, !noalias !605
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @64, ptr %i.q, align 8, !noalias !605
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.r, align 8, !noalias !605
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @44, ptr %i.s, align 8, !noalias !605
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.g, ptr %i.t, align 8, !noalias !605
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @45, ptr %i.u, align 8, !noalias !605
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.h, ptr %i.v, align 8, !noalias !605
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @64, ptr %i.w, align 8, !noalias !605
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.i, ptr %i.x, align 8, !noalias !605
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @65, ptr %i.y, align 8, !noalias !605
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.j, ptr %i.z, align 8, !noalias !605
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @66, ptr %i.aa, align 8, !noalias !605
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.k, ptr %i.ab, align 8, !noalias !605
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @44, ptr %i.ac, align 8, !noalias !605
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.l, ptr %i.ad, align 8, !noalias !605
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @67, ptr %i.ae, align 8, !noalias !605
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.m, ptr %i.af, align 8, !noalias !605
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @68, ptr %i.ag, align 8, !noalias !605
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.c, ptr %i.ah, align 8, !noalias !605
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @69, ptr %i.ai, align 8, !noalias !605
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.a, ptr %i.aj, align 8, !noalias !605
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @70, ptr %i.ak, align 8, !noalias !605
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @83, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !605
  ret i1 %i.al
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram5InnerNtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !10, !noundef !7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !609
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.a, align 8, !noalias !609
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 3, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 5, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 7, ptr noundef nonnull readonly align 8 dereferenceable(184) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !609
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramNtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !10, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !613
  store ptr %i.b, ptr %i.a, align 8, !noalias !613
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !613
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCsfX6MfzXxCho_14libp2p_metrics8identifyNtB5_5PeersNtNtCsf6yrgnUmEzM_17prometheus_client9collector9Collector6encode(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 16               ; 11 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 9 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [64 x i8], align 8                ; 8 uses
  %i.t = alloca [80 x i8], align 8                ; 11 uses
  %i.u = alloca [80 x i8], align 16               ; 11 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [40 x i8], align 8                ; 9 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [64 x i8], align 8                ; 8 uses
  %i.z = alloca [80 x i8], align 8                ; 11 uses
  %i.aa = alloca [80 x i8], align 16              ; 11 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [40 x i8], align 8               ; 9 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [64 x i8], align 8               ; 8 uses
  %i.af = alloca [80 x i8], align 8               ; 11 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [40 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [48 x i8], align 8               ; 11 uses
  %i.aq = alloca [48 x i8], align 8               ; 11 uses
  %i.ar = alloca [48 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.as = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @23) ; 2 uses
  %i.at = extractvalue { i64, i64 } %i.as, 0
  %i.au = extractvalue { i64, i64 } %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) @25, i64 32, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %i.at, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i64 %i.au, ptr %.sroa.524.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.av = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @23)
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit374: ; preds = %bb.dm, %.thread450, %bb.b
  %.sroa.018.0 = phi i8 [ %.sroa.018.1, %bb.b ], [ %.sroa.018.2, %.thread450 ], [ %.sroa.018.2, %bb.dm ]
  %.pn275.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.b ], [ %.pn275.pn.pn.pn, %.thread450 ], [ %.pn275.pn.pn.pn, %bb.dm ] ; 2 uses
  %i.aw = trunc nuw i8 %.sroa.018.0 to i1
  br i1 %i.aw, label %bb.dn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit376

bb.b:                                             ; preds = %bb.ch, %bb.a
  %.sroa.018.1 = phi i8 [ %.sroa.018.6.ph, %bb.ch ], [ 1, %bb.a ]
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit374

bb.c:                                             ; preds = %bb.a
  %i.ay = extractvalue { i64, i64 } %i.av, 0
  %i.az = extractvalue { i64, i64 } %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) @25, i64 32, i1 false)
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %i.ay, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 %i.az, ptr %.sroa.527.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.ba = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @23)
          to label %bb.e unwind label %bb.d       ; 2 uses

.thread450:                                       ; preds = %.thread455, %bb.d
  %.sroa.018.2 = phi i8 [ %.sroa.018.3, %bb.d ], [ %.sroa.018.4447, %.thread455 ] ; 2 uses
  %.sroa.016.0 = phi i8 [ %.sroa.016.1, %bb.d ], [ %.sroa.016.2448, %.thread455 ]
  %.pn275.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.d ], [ %.pn275.pn.pn449, %.thread455 ] ; 2 uses
  %i.bb = trunc nuw i8 %.sroa.016.0 to i1
  br i1 %i.bb, label %bb.dm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit374

bb.d:                                             ; preds = %bb.cg, %bb.c
  %.sroa.018.3 = phi i8 [ %.sroa.018.6.ph, %bb.cg ], [ 1, %bb.c ]
  %.sroa.016.1 = phi i8 [ %.sroa.016.4.ph, %bb.cg ], [ 1, %bb.c ]
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.thread450

bb.e:                                             ; preds = %bb.c
  %i.bd = extractvalue { i64, i64 } %i.ba, 0
  %i.be = extractvalue { i64, i64 } %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) @25, i64 32, i1 false)
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 %i.bd, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i64 %i.be, ptr %.sroa.530.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.bf = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEE4lockCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noundef nonnull align 8 %i.bg)
          to label %bb.f unwind label %.thread461

.thread461:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit333, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit315, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit291, %bb.al, %bb.af, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit287, %bb.ac, %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEECsfX6MfzXxCho_14libp2p_metrics.exit, %bb.t, %bb.e, %bb.r
  %.sroa.018.5.ph = phi i8 [ 1, %bb.r ], [ 1, %bb.e ], [ 1, %bb.t ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEECsfX6MfzXxCho_14libp2p_metrics.exit ], [ 0, %bb.w ], [ 0, %bb.ac ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit287 ], [ 0, %bb.af ], [ 0, %bb.al ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit291 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit315 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit333 ]
  %.sroa.016.3.ph = phi i8 [ 1, %bb.r ], [ 1, %bb.e ], [ 1, %bb.t ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEECsfX6MfzXxCho_14libp2p_metrics.exit ], [ 1, %bb.w ], [ 1, %bb.ac ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit287 ], [ 0, %bb.af ], [ 0, %bb.al ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit291 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit315 ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit333 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread455

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.bh = load i64, ptr %i.ao, align 8, !range !13, !alias.scope !727, !noundef !7
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %bb.k, !prof !5

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !728
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !727, !nonnull !7, !align !10, !noundef !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bm = load i8, ptr %i.bl, align 8, !range !11, !alias.scope !727, !noundef !7
  store ptr %i.bk, ptr %i.e, align 8, !noalias !728
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %i.bm, ptr %i.bn, align 8, !noalias !728
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29
          to label %bb.i unwind label %bb.h, !noalias !727

bb.h:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtBI_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEEECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #30
          to label %.thread455 unwind label %bb.j, !noalias !727

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !727
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !727, !nonnull !7, !align !10, !noundef !7 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bt = load i8, ptr %i.bs, align 8, !range !11, !alias.scope !727, !noundef !7 ; 2 uses
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bv)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread481:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cv, %bb.co, %bb.dl, %bb.dg
  %.pn275.pn = phi { ptr, i32 } [ %lpad.thr_comm486, %bb.dl ], [ %i.fb, %bb.co ], [ %lpad.thr_comm499, %bb.dg ], [ %i.ft, %bb.cv ], [ %lpad.loopexit.split-lp556, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEECsfX6MfzXxCho_14libp2p_metrics(ptr nonnull %i.br, i8 %i.bt) #30
          to label %.thread455 unwind label %bb.bg

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.7422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.6.0..sroa_idx384 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8386.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %.sroa.7391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.4429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.7432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.6395.0..sroa_idx396 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8398.0..sroa_idx399 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.4439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.7442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.6405.0..sroa_idx406 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8408.0..sroa_idx409 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.m

bb.m:                                             ; preds = %bb.db, %bb.l
  %i.cd = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.an)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ce = extractvalue { ptr, ptr } %i.cd, 0
  %i.cf = extractvalue { ptr, ptr } %i.cd, 1      ; 6 uses
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 552
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 560
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !7
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.cj
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENCNvXs2_NtCsfX6MfzXxCho_14libp2p_metrics8identifyNtB4k_5PeersNtNtCsf6yrgnUmEzM_17prometheus_client9collector9Collector6encode0EE9from_iterB4m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ck)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  br i1 %i.bu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cn = and i64 %i.cm, 9223372036854775807
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.r, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.cp = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #32
          to label %.noexc unwind label %.thread461

.noexc:                                           ; preds = %bb.r
  br i1 %i.cp, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.cl monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.s, %.noexc, %bb.q, %bb.p
  %i.cq = atomicrmw xchg ptr %i.br, i32 0 release, align 4
  %i.cr = icmp eq i32 %i.cq, 2
  br i1 %i.cr, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEECsfX6MfzXxCho_14libp2p_metrics.exit, !prof !5

bb.t:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.br)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEECsfX6MfzXxCho_14libp2p_metrics.exit unwind label %.thread461

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEECsfX6MfzXxCho_14libp2p_metrics.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvMs0_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17DescriptorEncoder17encode_descriptor(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 137, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, i8 noundef 1)
          to label %bb.u unwind label %.thread461

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEECsfX6MfzXxCho_14libp2p_metrics.exit
  %i.cs = load ptr, ptr %i.af, align 8, !noundef !7 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.cg

bb.w:                                             ; preds = %bb.u
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4197.0.copyload = load ptr, ptr %.sroa.4197.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5198.0.copyload = load ptr, ptr %.sroa.5198.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.6199.0.copyload = load i64, ptr %.sroa.6199.0..sroa_idx, align 8
  %.sroa.7200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.7200.0.copyload = load ptr, ptr %.sroa.7200.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.8201.0.copyload = load i64, ptr %.sroa.8201.0..sroa_idx, align 8
  %.sroa.9202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.cu = load <2 x ptr>, ptr %.sroa.9202.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringxNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.x unwind label %.thread461

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 7 uses
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.1077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 4 uses
  %2 = insertelement <2 x ptr> poison, ptr %i.cs, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %.sroa.4197.0.copyload, i64 1
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit341, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %bb.aa unwind label %bb.z

.body331:                                         ; preds = %bb.cb, %bb.cc, %bb.bw, %bb.bx, %bb.z, %bb.bt
  %.pn266 = phi { ptr, i32 } [ %i.ei, %bb.bt ], [ %i.ej, %bb.bw ], [ %i.cx, %bb.z ], [ %i.ej, %bb.bx ], [ %i.em, %bb.cc ], [ %i.em, %bb.cb ]
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %.thread455 unwind label %bb.bg

bb.z:                                             ; preds = %bb.y
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body331

bb.aa:                                            ; preds = %bb.y
  %i.cy = load i64, ptr %i.ad, align 8, !range !9, !noundef !7
  %.not260 = icmp eq i64 %i.cy, -1
  br i1 %.not260, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cz = load i64, ptr %i.cv, align 8, !noundef !7
  store ptr @36, ptr %i.ac, align 8
  store i64 8, ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4197.0.copyload), "nonnull"(ptr %.sroa.5198.0.copyload), "nonnull"(ptr %.sroa.7200.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %i.cz, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store <2 x ptr> %3, ptr %i.aa, align 16
  store ptr %.sroa.5198.0.copyload, ptr %.sroa.269.0..sroa_idx, align 16
  store i64 %.sroa.6199.0.copyload, ptr %.sroa.471.0..sroa_idx, align 8
  store ptr %.sroa.7200.0.copyload, ptr %.sroa.572.0..sroa_idx, align 16
  store i64 %.sroa.8201.0.copyload, ptr %.sroa.673.0..sroa_idx, align 8
  store <2 x ptr> %i.cu, ptr %.sroa.774.0..sroa_idx, align 16
  store ptr %i.ac, ptr %.sroa.976.0..sroa_idx, align 16
  store ptr @34, ptr %.sroa.1077.0..sroa_idx, align 8
  %i.da = invoke noundef zeroext i1 @_RINvMs1_NtNtCsf6yrgnUmEzM_17prometheus_client8encoding4textNtB6_13MetricEncoder12encode_gaugexECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %bb.bu unwind label %bb.bt

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit287 unwind label %.thread461

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit287: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvMs0_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17DescriptorEncoder17encode_descriptor(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 63, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, i8 noundef 1)
          to label %bb.ad unwind label %.thread461

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit287
  %i.db = load ptr, ptr %i.z, align 8, !noundef !7 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cg

bb.af:                                            ; preds = %bb.ad
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.4224.0.copyload = load ptr, ptr %.sroa.4224.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5225.0.copyload = load ptr, ptr %.sroa.5225.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.6226.0.copyload = load i64, ptr %.sroa.6226.0..sroa_idx, align 8
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.7227.0.copyload = load ptr, ptr %.sroa.7227.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.8228.0.copyload = load i64, ptr %.sroa.8228.0..sroa_idx, align 8
  %.sroa.9229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.dd = load <2 x ptr>, ptr %.sroa.9229.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringxNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.ag unwind label %.thread461

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.de = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 7 uses
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.9126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.10127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.df = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 4 uses
  %4 = insertelement <2 x ptr> poison, ptr %i.db, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %.sroa.4224.0.copyload, i64 1
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit323, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %bb.aj unwind label %bb.ai

.body313:                                         ; preds = %bb.bp, %bb.bq, %bb.bk, %bb.bl, %bb.ai, %bb.bh
  %.pn264 = phi { ptr, i32 } [ %i.eb, %bb.bh ], [ %i.ec, %bb.bk ], [ %i.dg, %bb.ai ], [ %i.ec, %bb.bl ], [ %i.ef, %bb.bq ], [ %i.ef, %bb.bp ]
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %.thread455 unwind label %bb.bg

bb.ai:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body313

bb.aj:                                            ; preds = %bb.ah
  %i.dh = load i64, ptr %i.x, align 8, !range !9, !noundef !7
  %.not261 = icmp eq i64 %i.dh, -1
  br i1 %.not261, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.di = load i64, ptr %i.de, align 8, !noundef !7
  store ptr @35, ptr %i.w, align 8
  store i64 14, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4224.0.copyload), "nonnull"(ptr %.sroa.5225.0.copyload), "nonnull"(ptr %.sroa.7227.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.di, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store <2 x ptr> %5, ptr %i.u, align 16
  store ptr %.sroa.5225.0.copyload, ptr %.sroa.2119.0..sroa_idx, align 16
  store i64 %.sroa.6226.0.copyload, ptr %.sroa.4121.0..sroa_idx, align 8
  store ptr %.sroa.7227.0.copyload, ptr %.sroa.5122.0..sroa_idx, align 16
  store i64 %.sroa.8228.0.copyload, ptr %.sroa.6123.0..sroa_idx, align 8
  store <2 x ptr> %i.dd, ptr %.sroa.7124.0..sroa_idx, align 16
  store ptr %i.w, ptr %.sroa.9126.0..sroa_idx, align 16
  store ptr @34, ptr %.sroa.10127.0..sroa_idx, align 8
  %i.dj = invoke noundef zeroext i1 @_RINvMs1_NtNtCsf6yrgnUmEzM_17prometheus_client8encoding4textNtB6_13MetricEncoder12encode_gaugexECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
          to label %bb.bi unwind label %bb.bh

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit291 unwind label %.thread461

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit291: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMs0_NtCsf6yrgnUmEzM_17prometheus_client8encodingNtB5_17DescriptorEncoder17encode_descriptor(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, i8 noundef 1)
          to label %bb.am unwind label %.thread461

bb.am:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit291
  %i.dk = load ptr, ptr %i.t, align 8, !noundef !7 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cg

bb.ao:                                            ; preds = %bb.am
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4251.0.copyload = load ptr, ptr %.sroa.4251.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5252.0.copyload = load ptr, ptr %.sroa.5252.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.6253.0.copyload = load i64, ptr %.sroa.6253.0..sroa_idx, align 8
  %.sroa.7254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.7254.0.copyload = load ptr, ptr %.sroa.7254.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.8255.0.copyload = load i64, ptr %.sroa.8255.0..sroa_idx, align 8
  %.sroa.9256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.dm = load <2 x ptr>, ptr %.sroa.9256.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringxNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 7 uses
  %.sroa.2169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.7174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.9176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.10177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  %6 = insertelement <2 x ptr> poison, ptr %i.dk, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %.sroa.4251.0.copyload, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit305, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %bb.ar unwind label %bb.aq

.body296:                                         ; preds = %bb.bc, %bb.bd, %bb.ax, %bb.ay, %bb.aq, %bb.au
  %.pn = phi { ptr, i32 } [ %i.dt, %bb.au ], [ %i.du, %bb.ax ], [ %i.dp, %bb.aq ], [ %i.du, %bb.ay ], [ %i.dx, %bb.bd ], [ %i.dx, %bb.bc ]
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit376 unwind label %bb.bg

bb.aq:                                            ; preds = %bb.ap
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body296

bb.ar:                                            ; preds = %bb.ap
  %i.dq = load i64, ptr %i.r, align 8, !range !9, !noundef !7
  %.not262 = icmp eq i64 %i.dq, -1
  br i1 %.not262, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit295, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.dr = load i64, ptr %i.dn, align 8, !noundef !7
  store ptr @33, ptr %i.q, align 8
  store i64 16, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4251.0.copyload), "nonnull"(ptr %.sroa.5252.0.copyload), "nonnull"(ptr %.sroa.7254.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %i.dr, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store <2 x ptr> %7, ptr %i.o, align 16
  store ptr %.sroa.5252.0.copyload, ptr %.sroa.2169.0..sroa_idx, align 16
  store i64 %.sroa.6253.0.copyload, ptr %.sroa.4171.0..sroa_idx, align 8
  store ptr %.sroa.7254.0.copyload, ptr %.sroa.5172.0..sroa_idx, align 16
  store i64 %.sroa.8255.0.copyload, ptr %.sroa.6173.0..sroa_idx, align 8
  store <2 x ptr> %i.dm, ptr %.sroa.7174.0..sroa_idx, align 16
  store ptr %i.q, ptr %.sroa.9176.0..sroa_idx, align 16
  store ptr @34, ptr %.sroa.10177.0..sroa_idx, align 8
  %i.ds = invoke noundef zeroext i1 @_RINvMs1_NtNtCsf6yrgnUmEzM_17prometheus_client8encoding4textNtB6_13MetricEncoder12encode_gaugexECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.av unwind label %bb.au

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit295: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.at

bb.at:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit346, %bb.ci, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit295
  %.sroa.0.0 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit295 ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit ], [ true, %bb.ci ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit346 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  ret i1 %.sroa.0.0

bb.au:                                            ; preds = %bb.as
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q) #30
          to label %.body296 unwind label %bb.bg

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.ds, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx)
          to label %bb.az unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx, align 8, !range !6, !alias.scope !729, !noundef !7 ; 2 uses
  %i.dv = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.dv, label %.body296, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val3.i.i.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !730, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !731
  br label %.body296

bb.az:                                            ; preds = %bb.aw
  %.val.i.i.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx, align 8, !range !6, !alias.scope !729, !noundef !7 ; 2 uses
  %i.dw = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.dw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val1.i.i.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !730, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !732
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit

bb.bb:                                            ; preds = %bb.av
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx)
          to label %bb.be unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i298 = load i64, ptr %.sroa.513.0..sroa_idx, align 8, !range !6, !alias.scope !733, !noundef !7 ; 2 uses
  %i.dy = icmp eq i64 %.val2.i.i.i.i.i298, 0
  br i1 %i.dy, label %.body296, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val3.i.i.i.i.i299 = load ptr, ptr %i.do, align 8, !alias.scope !734, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i299, i64 noundef %.val2.i.i.i.i.i298, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !735
  br label %.body296

bb.be:                                            ; preds = %bb.bb
  %.val.i.i.i.i.i301 = load i64, ptr %.sroa.513.0..sroa_idx, align 8, !range !6, !alias.scope !733, !noundef !7 ; 2 uses
  %i.dz = icmp eq i64 %.val.i.i.i.i.i301, 0
  br i1 %i.dz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit305, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val1.i.i.i.i.i302 = load ptr, ptr %i.do, align 8, !alias.scope !734, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i302, i64 noundef %.val.i.i.i.i.i301, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !736
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit305

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit305: ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.at

bb.bg:                                            ; preds = %bb.dn, %bb.dm, %.thread455, %bb.cv, %bb.co, %.body296, %.body313, %.body331, %.thread481, %bb.dl, %bb.dg, %bb.bt, %bb.bh, %bb.au
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bh:                                            ; preds = %bb.ak
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.w) #30
          to label %.body313 unwind label %bb.bg

bb.bi:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br i1 %i.dj, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx)
          to label %bb.bm unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i308 = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !range !6, !alias.scope !737, !noundef !7 ; 2 uses
  %i.ed = icmp eq i64 %.val2.i.i.i.i.i308, 0
  br i1 %i.ed, label %.body313, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.val3.i.i.i.i.i309 = load ptr, ptr %i.df, align 8, !alias.scope !738, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i309, i64 noundef %.val2.i.i.i.i.i308, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !739
  br label %.body313

bb.bm:                                            ; preds = %bb.bj
  %.val.i.i.i.i.i311 = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !range !6, !alias.scope !737, !noundef !7 ; 2 uses
  %i.ee = icmp eq i64 %.val.i.i.i.i.i311, 0
  br i1 %i.ee, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit315, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val1.i.i.i.i.i312 = load ptr, ptr %i.df, align 8, !alias.scope !738, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i312, i64 noundef %.val.i.i.i.i.i311, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !740
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit315

bb.bo:                                            ; preds = %bb.bi
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx)
          to label %bb.br unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i316 = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !range !6, !alias.scope !741, !noundef !7 ; 2 uses
  %i.eg = icmp eq i64 %.val2.i.i.i.i.i316, 0
  br i1 %i.eg, label %.body313, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.val3.i.i.i.i.i317 = load ptr, ptr %i.df, align 8, !alias.scope !742, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i317, i64 noundef %.val2.i.i.i.i.i316, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !743
  br label %.body313

bb.br:                                            ; preds = %bb.bo
  %.val.i.i.i.i.i319 = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !range !6, !alias.scope !741, !noundef !7 ; 2 uses
  %i.eh = icmp eq i64 %.val.i.i.i.i.i319, 0
  br i1 %i.eh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit323, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.val1.i.i.i.i.i320 = load ptr, ptr %i.df, align 8, !alias.scope !742, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i320, i64 noundef %.val.i.i.i.i.i319, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !744
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit323

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit323: ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ah

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit315: ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit325 unwind label %.thread461

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringxEECsfX6MfzXxCho_14libp2p_metrics.exit325: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics.exit315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cg

bb.bt:                                            ; preds = %bb.ab
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac) #30
          to label %.body331 unwind label %bb.bg

bb.bu:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br i1 %i.da, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.57.0..sroa_idx)
          to label %bb.by unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i326 = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !range !6, !alias.scope !745, !noundef !7 ; 2 uses
  %i.ek = icmp eq i64 %.val2.i.i.i.i.i326, 0
  br i1 %i.ek, label %.body331, label %bb.bx

end_hunk_0
